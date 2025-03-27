unit FAT_RN_M_PED;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Datasnap.DBClient{,enFunc};

procedure FatValidaPedidoIte(DataSet:TDataSet);
procedure FatValidaStatusPedido(DataSet:TDataSet);

procedure FatMascaraPedido(DataSet:TDataSet);
procedure FatMascaraPedidoIte(DataSet:TDataSet);
procedure FatNovoPedido(DataSet: TDataSet);
procedure FatNovoPedidoIte(DataSet: TDataSet);

procedure FAT_CD_M_PEDvlr_descontoChange;

procedure FatRatVlrEntreItensPedido(const lVlrTotDoc, lVlrMontante: Currency;
                                    lNomeCampoIte, lNomeCampoBaseIte,
                                    lNomeCampoPerIte: String);

//procedure FatRatVlrEntreItensPedido2(const lVlrTotDoc, lVlrMontante: Currency;
                                  //  lNomeCampoIte,lNomeCampoPerIte: String);

procedure FatRatVlrEntreItensPedido2(const lVlrTotDoc, lVlrMontante: Currency;
                                    lNomeCampoIte,lNomeCampoPerIte: String;var descAcimaMax:boolean;ativarVerDesc:boolean);


procedure FatMascaraPedidoTit(DataSet:TDataSet);
procedure FatNovoPedidoTit(DataSet: TDataSet);
function  FatExisteTitAprazo: boolean;
function  FatValidaTitPNF: Boolean;
procedure FAT_CD_M_PED_ITEid_itemChange(Sender: TField);
procedure FAT_CD_M_PED_ITEPER_DESCONTOChange(Sender: TField);
procedure FAT_CD_M_PED_ITEVLR_DESCONTOChange(Sender: TField);





function FAT_CD_M_PED_TesCampos: Boolean;
function FAT_CD_M_PED_ITE_TesCampos: Boolean;
function FAT_CD_M_PED_TesTotItensXTotPed: Boolean;
function FAT_CD_M_PED_TesTotFpgXTotPed: Boolean;
function FAT_CD_M_PED_TesPermExclusao: Boolean;





procedure fatPedCalcTotalItem;
procedure fatPedCalcTotal;
procedure fatPedVerifRestricoes;
function  FatValidEnviaLibPed(Letra: String): Boolean;
function  FatValidBloqueiaPed(Letra: String): Boolean;
procedure SetarIdSequencia;

procedure BusFuncionarioAtivo;


var
  prox_seq_ite:Integer;




implementation
Uses uDmGeral,enConstantes{, uProxy, FAT_RN_M_NFE}, enFunc;

procedure BusFuncionarioAtivo;
begin
  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([8,1,'']));
end;


procedure SetarIdSequencia;
var
  ult_sequencia:Integer;
begin

   ult_sequencia :=0;
   dmGeral.FAT_CD_M_PED_ITE.First;
   while not dmGeral.FAT_CD_M_PED_ITE.eof do
     begin
       if ult_sequencia<dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').AsInteger then
         ult_sequencia :=dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_SEQUENCIA').AsInteger;
       dmGeral.FAT_CD_M_PED_ITE.Next;
     end;
    prox_seq_ite := ult_sequencia+1;

end;


function FatValidEnviaLibPed(Letra: String): Boolean;
begin
   try
    result := false;

    dmGeral.CAD_CD_C_PAR_RST.Filtered := true;
    dmGeral.CAD_CD_C_PAR_RST.Filter   := ' letra_restricao = ''' + letra + '''';
    if not dmGeral.CAD_CD_C_PAR_RST.IsEmpty then
       if  dmGeral.CAD_CD_C_PAR_RST.FieldByName('tipo_restricao').AsInteger = 2 then // Envia para Liberação de Pedido de Venda
           begin
             result := true;
           end;
  finally
     dmGeral.CAD_CD_C_PAR_RST.Filtered := false;
  end;
end;

function  FatValidBloqueiaPed(Letra: String): Boolean;
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

procedure fatPedVerifRestricoes;
var

  lVlrTotTitPrazo: Currency;
begin

  { Restrições:
    A -	Sem Limite de Credito
    B -	Cliente Com Debito na Empresa
    C -	Produto com estoque negativo
    D -	Cliente com credito encerrado
    E - Pedido com preço alterado pelo vendedor
    F - Envia para Carga
    G - Pedido reaberto (Momento de cancalemento de nota fiscal de venda)
    H - Item com desconto acima do limite
  }

  { Caso a venda seja a prazo, o sistema irá somar as formas de pagamento
    que são a prazo e verifica se ultrapassou o limite do cliente.
  }
    dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString);

   if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ped_ver_limite').AsBoolean then
     begin
        if FatValidEnviaLibPed('A') then
           begin
              if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
                 begin
                   lVlrTotTitPrazo := 0;
                   //LPonteiroItens  := dmGeral.FAT_CD_M_PED_TIT.GetBookmark;
                   dmGeral.FAT_CD_M_PED_TIT.First;
                   while not dmGeral.FAT_CD_M_PED_TIT.eof do
                      begin
                        dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TITid_forma_pag.Text);
                        if dmGeral.BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1 then
                           begin
                             lVlrTotTitPrazo := lVlrTotTitPrazo + dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency;
                           end;
                        dmGeral.FAT_CD_M_PED_TIT.Next;
                      end;
                   //dmGeral.FAT_CD_M_PED_TIT.GotoBookmark(lPonteiroItens);
                   dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TITid_forma_pag.Text);

                   if lVlrTotTitPrazo > 0 then
                      begin
                        if dmGeral.VerifCliSemLimite(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString,lVlrTotTitPrazo) then
                           begin
                             if not (pos('A',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                                begin
                                  dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'A';
                                end;
                           end
                      end;
                 end;
           end;
     end;


  // Irá verificar se o cliente encontra-se em débito
  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
     begin
        if FatValidEnviaLibPed('B') then
           begin
             if dmGeral.VerifCliEmDeb(dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger,
                                     dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsString)then
               begin
                 if not (pos('B',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                    begin
                      dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'B';
                    end;
               end;
           end;
     end;



 { if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_aceita_est_negativo').AsBoolean then
     begin
       // Verifica se existe item com estoque negativo
       dmGeral.BusNotaFiscal(9,dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString,'S',dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString);

       if dmGeral.VerifEstNeg(dmGeral.FAT_CD_M_PED,dmGeral.FAT_CD_M_PED_ITE,dmGeral.BUS_CD_M_NFE_ITE) then
          begin
               if not (pos('C',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                  begin
                    dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'C';
                  end;
          end;
     end;}

  // Irá verificar se o cliente encontra-se com o credito encerrado
  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
     begin
        if FatValidEnviaLibPed('D') then
           begin
              dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsString);
              if dmGeral.BUS_CD_C_CLI.FieldByName('SITUACAO').AsInteger = 2 then
                 begin
                   if not (pos('D',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                      begin
                        dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'D';
                      end;
                 end;
              dmgeral.BUS_CD_C_CLI.close;
           end;
     end;


   if FatValidEnviaLibPed('E') then
      begin
        dmGeral.FAT_CD_M_PED_ITE.First;
        while not dmGeral.FAT_CD_M_PED_ITE.eof do
          begin
            if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency <>
               dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency then
               begin
                 if not (pos('E',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                    begin
                      dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'E';
                      dmGeral.FAT_CD_M_PED_ITE.Last;
                    end;
               end;
            dmGeral.FAT_CD_M_PED_ITE.Next;
          end;
      end;


   if FatValidEnviaLibPed('H') then
      begin
        dmGeral.FAT_CD_M_PED_ITE.First;
        while not dmGeral.FAT_CD_M_PED_ITE.eof do
            begin
              if (not dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').IsNull) then
                 begin
                  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency >
                     dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').AsCurrency then
                     begin
                       if not (pos('H',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                          begin
                            dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'H';
                          end;
                     end;
                 end;
              dmGeral.FAT_CD_M_PED_ITE.Next;
            end;
      end;


   if (dmGeral.FAT_CD_M_PED.FieldByName('ENVIA_CARGA').AsBoolean = True) then
     begin
       if not (pos('F',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
          begin
            dmGeral.FAT_CD_M_PEDtipo_restricao.text := dmGeral.FAT_CD_M_PEDtipo_restricao.text + 'F';
          end;
     end;
end;


procedure FatValidaStatusPedido(DataSet:TDataSet);
var
  result: Boolean;
begin
  result := true;
  if dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger <> 0 then
     begin
       case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
         1:
          begin
            ShowMessage('Este pedido de venda não pode ser alterado pois está com a situação "Reprovado".');
            result := false;
          end;
         2:
          begin
            ShowMessage('Este pedido de venda não pode ser alterado pois está com a situação "Em produção".');
            result := false;
          end;
         3:
          begin
            ShowMessage('Este pedido de venda não pode ser alterado pois está com a situação "Faturado".');
            result := false;
          end;
         4:
          begin
            ShowMessage('Este pedido de venda não pode ser alterado pois está com a situação "Cancelado".');
            result := false;
          end;
       end;
     end
  else
     begin
       {dmGeral.BusNotaFiscal(9,dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString,'S',dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString);
       if not dmGeral.BUS_CD_M_NFE.IsEmpty then
          begin
            if dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0 then
               begin
                 ShowMessage('Este pedido de venda não pode ser alterado pois a nota fiscal gerada já possui número.');
                 result := false;
               end;
            if dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '02' then
               begin
                 ShowMessage('Este pedido de venda não pode ser alterado pois a nota fiscal gerada está com a situação de cancelada.');
                 result := false;
               end;
          end;
       dmGeral.BUS_CD_M_NFE.Close;}
     end;
  if not result then
     begin
       abort;
     end;
end;

procedure FatMascaraPedido(DataSet:TDataSet);
begin
  dmGeral.FAT_CD_M_PEDhor_pedido.DisplayFormat       :=CMascaraHora;
  dmGeral.FAT_CD_M_PEDVLR_BRUTO.DisplayFormat       :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDVLR_DESCONTO.DisplayFormat    :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDVLR_LIQUIDO.DisplayFormat     :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDPER_DESCONTO.DisplayFormat    :=CMascaraValor;
  dmGeral.FAT_CD_M_PEDCUBAGEM.DisplayFormat         :=CMascaraVlrMerc;
end;

procedure FatMascaraPedidoIte(DataSet:TDataSet);
begin
  dmGeral.FAT_CD_M_PED_ITEVLR_UNITARIO.DisplayFormat    :=CMascaraValor;
  dmGeral.FAT_CD_M_PED_ITEVLR_BRUTO.DisplayFormat       :=CMascaraValor;
  dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.DisplayFormat    :=CMascaraValor;
  dmGeral.FAT_CD_M_PED_ITEVLR_LIQUIDO.DisplayFormat     :=CMascaraValor;
  dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.DisplayFormat    :=CMascaraValor;
end;

procedure FatNovoPedido(DataSet: TDataSet);
begin
  dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  //dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').AsInteger := 0;
  if dmGeral.CAD_CD_C_PAR_CTRUTILIZA_ALMOXARIFADO.AsBoolean then
      begin
        if not dmGeral.CAD_CD_C_PAR_CTRID_ALM_PADRAO.AsInteger > 0 then
           begin
             ShowMessage('O sistema está configurado para utilizar almoxarifado mas o código do almoxarifado padrão não foi encontrado nos parâmetros!');
             abort;
           end;
        dmGeral.FAT_CD_M_PED.FieldByName('ID_ALMOXARIFADO').AsInteger :=
                dmGeral.CAD_CD_C_PAR_CTRID_ALM_PADRAO.AsInteger;
      end;


  dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger :=
         dmGeral.enValorChave('FAT_TB_M_PED');


  dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').text          := '';
  dmGeral.FAT_CD_M_PED.FieldByName('HOR_PEDIDO').AsDateTime         := now;
  dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime         := now;
  dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger            := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger  := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('PCP_ID_OPR').AsInteger          := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency          := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency       := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('PER_DESCONTO').AsCurrency       := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency        := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('ORIGEM').AsInteger              := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('DISPOSITIVO').AsString          := TEnorth.NomeComputador();
  dmGeral.FAT_CD_M_PED.FieldByName('GPS_LATITUDE').AsFloat          := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('GPS_LONGITUDE').AsFloat         := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('ENVIA_CARGA').AsBoolean         := true;
  dmGeral.FAT_CD_M_PED.FieldByName('CONFERIDO').AsBoolean           := false;
  dmGeral.FAT_CD_M_PED.FieldByName('OFFLINE').AsBoolean             := True;
  dmGeral.FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger      := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('PED_EXCLUIDO').AsBoolean        := false;
 // dmGeral.BusCodigoRevListMestre(true,false,'FAT_FM_M_PED',xCodLme,xRevLme,dmGeral.FAT_CD_M_PED);

  prox_seq_ite := 1;
end;

procedure FatValidaPedidoIte(DataSet:TDataSet);
begin
   if dmGeral.FAT_CD_M_PED_ITE.State in [dsInsert,dsEdit] then
     begin
        if not FAT_CD_M_PED_ITE_TesCampos then
           begin
             abort;
           end;
     end;
end;

procedure FatNovoPedidoIte(DataSet: TDataSet);
begin

  {  dmGeral.FAT_CD_M_PED_ITEid_sequencia.AsInteger :=
         dmGeral.enValorChave('FAT_TB_M_PED_ITE');

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_PEDIDO').AsInteger :=
   dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger;    }

  dmGeral.FAT_CD_M_PED_ITEid_sequencia.AsInteger := prox_seq_ite;
  inc(prox_seq_ite);

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger           := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger       := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat               := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE_CONFERIDA').AsFloat     := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('vlr_unitario_orig').AsCurrency := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency       := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency     := 0;

end;

procedure FAT_CD_M_PED_ITEid_itemChange(Sender: TField);
begin
  dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text);
  dmGeral.CalcPrecoItem(1,dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text,
                        dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').Text,
                        dmGeral.FAT_CD_M_PED_ITE,false,false,
                        dmGeral.FAT_CD_M_PED.FieldByName('DIAS_CPG_PRAZO').AsInteger);
end;

procedure FAT_CD_M_PED_ITEPER_DESCONTOChange(Sender: TField);
begin
  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency > 0 then
      begin
        if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency > 0 then
           begin
              dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := nil;
              dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := nil;

              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                 roundTo((dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency *
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency) / 100,-2);
              dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                 (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;

              dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTOChange;
              dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEPER_DESCONTOChange;
           end;
      end
   else
      begin
        dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := nil;
        dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := nil;

        dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
        dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;

        dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTOChange;
        dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEPER_DESCONTOChange;
      end;
  fatPedCalcTotalItem;
end;

procedure FAT_CD_M_PED_ITEVLR_DESCONTOChange(Sender: TField);
begin
  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
     begin
       if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency > 0 then
          begin
             dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := nil;

             dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                   (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                    dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;

             dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEPER_DESCONTOChange;
          end;
     end
  else
     begin
       dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := nil;
       dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := nil;

       dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
       dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;

       dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEPER_DESCONTOChange;
       dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTOChange;
     end;
  fatPedCalcTotalItem;
end;


function  FatExisteTitAprazo: boolean;
begin
  { TODO -oMaxsuel -cInclusão :
   Criado em 28/02/2016
   Verifica se existe título a prazo. }
  result := false;
  dmGeral.FAT_CD_M_PED_TIT.cancel;
  dmGeral.FAT_CD_M_PED_TIT.First;
  if not dmGeral.FAT_CD_M_PED_TIT.IsEmpty then
     begin
        while not dmGeral.FAT_CD_M_PED_TIT.eof do
          begin
            dmgeral.BusFormaPgtos2(0,dmGeral.FAT_CD_M_PED_TIT.FieldByName('id_forma_pag').AsString);
            if not ( dmGeral.BUS_CD_C_FPG2.FieldByName('doc_impresso').AsInteger in [0,3,5]) then
               begin
                 result := true;
                 dmGeral.FAT_CD_M_PED_TIT.Last;
               end;
            dmGeral.FAT_CD_M_PED_TIT.Next;
          end;
        dmGeral.FAT_CD_M_PED_TIT.First;
     end;
end;

procedure fatPedCalcTotalItem;
begin

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency:=
   RoundTo((dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat*
    dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency),-2);

  // Maxsuel Victor em 17-03-2015
 // Este if foi inserido para poder atender a questão do PERC de promoção
 // pois no momento em que o usuário digita o item o sistema já mostra o
 // percentual de desconto.
 if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency > 0) then
     begin
       //Este if foi retirado pois evitava que o valor desconto fosse recalculado
       //se alterasse qtde do item.Responsavel:Luan.Data:11-06-2016
      // if (dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency > 0) and
         // (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency = 0)   then
         // begin
          dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := nil;
            dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                   (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency *
                            dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESCONTO').AsCurrency) / 100;
          dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEVLR_DESCONTOChange;
          //end;
     end;

  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency:=
   RoundTo( (dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency-
      dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency),-2);
end;

procedure fatPedCalcTotal;
Var
  PonteiroItens : TBookmark;
begin
  //Totaliza o Orçamento
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency    := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('PER_DESCONTO').AsCurrency := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency  := 0;
  dmGeral.FAT_CD_M_PED.FieldByName('CUBAGEM').AsCurrency      := 0;


  PonteiroItens := dmGeral.FAT_CD_M_PED_ITE.GetBookmark;
  dmGeral.FAT_CD_M_PED_ITE.First;
  if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
     begin
        while not dmGeral.FAT_CD_M_PED_ITE.eof do
          begin
            dmGeral.BusItens(0,dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString);

            dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency :=

                  dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency +
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;

            dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency :=

                  dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency+
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

            dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency :=

                  dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency +
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

            if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
               begin
                 dmGeral.FAT_CD_M_PED.FieldByName('CUBAGEM').AsFloat      :=
                         dmGeral.FAT_CD_M_PED.FieldByName('CUBAGEM').AsFloat +
                         (dmGeral.BUS_CD_C_ITE.FieldByName('CUBAGEM').AsFloat *
                          dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat);
               end;

            dmGeral.FAT_CD_M_PED_ITE.Next;
          end;

        if dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency > 0 then
           begin
             dmGeral.FAT_CD_M_PED.FieldByName('PER_DESCONTO').AsCurrency :=
                (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency * 100) /
                 dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency;
           end;
     end;
  dmGeral.FAT_CD_M_PED_ITE.GotoBookmark(PonteiroItens);
end;

function FAT_CD_M_PED_ITE_TesCampos: Boolean;
var
  mens: String;
begin
  result := true;

  mens := '';

  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsCurrency = 0 then
     begin
       mens := mens + '.Código do item' + #13;
     end;

  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('QTDE').AsFloat = 0 then
     begin
       mens := mens + '.Qtde' + #13;
     end;

  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency = 0 then
     begin
       mens := mens + '.Valor unitário' + #13;
     end;

  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency = 0 then
     begin
       mens := mens + '.Valor bruto' + #13;
     end;

  if dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
     begin
       mens := mens + '.Valor total' + #13;
     end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
     begin
       if dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_COR').text = '' then
          begin
            mens := mens + '.Cor' + #13;
          end;
     end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
     begin
       if dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_TAMANHO').text = '' then
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

function FAT_CD_M_PED_TesCampos: Boolean;
var
  mens: String;
begin
   result := true;

   mens := '';

   if dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsInteger = 0 then
     begin
       mens := mens + '.Código da empresa' + #13;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger = 0 then
     begin
       mens := mens + '.Código do pedido' + #13;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').text = '' then
     begin
       mens := mens + '.Data do pedido' + #13;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').AsInteger = 0 then
     begin
       mens := mens + '.Código do cliente' + #13;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_CONDICAO_PAG').AsInteger = 0 then
     begin
       mens := mens + '.Condição de pagamento' + #13;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_VENDEDOR').AsInteger = 0 then
     begin
       mens := mens + '.Vendedor' + #13;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('ID_TIPO_MOV_ESTOQUE').AsInteger = 0 then
     begin
       mens := mens + '.Tipo de estoque' + #13;
     end;

  if trim(dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').text) = '' then
     begin
       mens := mens + '.Situação' + #13;
     end;

  if trim(dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').Text) = '' then
     begin
       mens := mens + '.Situação aprovação' + #13;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency = 0 then
     begin
       mens := mens + '.Vlr bruto' + #13;
     end;

  if dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency = 0 then
     begin
       mens := mens + '.Vlr líquido' + #13;
     end;

  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       result := false;
     end
  else
     begin

        dmGeral.FAT_CD_M_PED_ITE.cancel;
        if dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
           begin
             mens := mens + 'Nenhum item foi inserido no pedido de venda.' + #13;
           end;

        if FAT_CD_M_PED_TesTotItensXTotPed then
           begin
             mens := mens + 'Valor líquido dos itens diferente do total do pedido de venda.' + #13;
           end;

        dmGeral.FAT_CD_M_PED_TIT.cancel;
        if (dmGeral.FAT_CD_M_PED_TIT.IsEmpty)  then
           begin
             if (dmGeral.CAD_CD_C_PAR_CTRped_ativa_titulos.AsBoolean) then
                 mens := mens + 'Nenhum título foi inserido no pedido de venda.' + #13
           end
        else
           begin
             if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_CRITICA_CHQ').AsBoolean then
                begin
                   dmGeral.FAT_CD_M_PED_TIT.First;
                   while not dmGeral.FAT_CD_M_PED_TIT.eof do
                       begin
                          dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_FORMA_PAG').AsString);
                          if not dmGeral.BUS_CD_C_FPG.IsEmpty then
                             begin
                               if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
                                  begin
                                    if (trim(dmGeral.FAT_CD_M_PED_TIT.FieldByName('che_banco').AsString)    = '') or
                                       (trim(dmGeral.FAT_CD_M_PED_TIT.FieldByName('che_agencia').AsString)  = '') or
                                       (trim(dmGeral.FAT_CD_M_PED_TIT.FieldByName('che_conta').AsString)    = '') or
                                       (dmGeral.FAT_CD_M_PED_TIT.FieldByName('che_numero').AsInteger        = 0)  or
                                       (trim(dmGeral.FAT_CD_M_PED_TIT.FieldByName('che_emitente').AsString) = '') then
                                       begin
                                         dmGeral.BUS_CD_C_FPG.close;
                                         mens := mens + 'Existe forma de pagamento do tipo "Cheque" que está sem informações do cheque!';
                                       end;
                                  end;
                               dmGeral.BUS_CD_C_FPG.close;
                              end;
                          dmGeral.FAT_CD_M_PED_TIT.Next;
                       end;
                   dmGeral.FAT_CD_M_PED_TIT.First;
                end;
           end;

        if FAT_CD_M_PED_TesTotFpgXTotPed then
           begin
             mens := mens + 'Valor dos vencimentos diferente do total do pedido de venda.' + #13;
           end;

        if mens <> '' then
           begin
             ShowMessage('Atenção:' + #13 + mens);
             mens := '';
             result := false;
           end
     end;
end;

function FAT_CD_M_PED_TesTotItensXTotPed: Boolean;
Var
  PonteiroItens : TBookmark;
  TotItens: Currency;
begin
  result := false;
  TotItens := 0;

  dmGeral.FAT_CD_M_PED_ITE.cancel;

  PonteiroItens := dmGeral.FAT_CD_M_PED_ITE.GetBookmark;
  dmGeral.FAT_CD_M_PED_ITE.First;
  if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
     begin
        while not dmGeral.FAT_CD_M_PED_ITE.eof do
          begin
            TotItens := TotItens + dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
            dmGeral.FAT_CD_M_PED_ITE.Next;
          end;

        if TotItens <> dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency then
           begin
             result := true;
           end;
     end;
  dmGeral.FAT_CD_M_PED_ITE.GotoBookmark(PonteiroItens);
  dmGeral.FAT_CD_M_PED_ITE.edit;
end;

function FAT_CD_M_PED_TesTotFpgXTotPed: Boolean;
Var
  PonteiroItens : TBookmark;
  TotFpg: Currency;
begin
  result := false;
  TotFpg := 0;

  dmGeral.FAT_CD_M_PED_TIT.cancel;

  PonteiroItens := dmGeral.FAT_CD_M_PED_TIT.GetBookmark;
  dmGeral.FAT_CD_M_PED_TIT.First;
  if not dmGeral.FAT_CD_M_PED_TIT.IsEmpty then
     begin
        while not dmGeral.FAT_CD_M_PED_TIT.eof do
          begin
            TotFpg := TotFpg + dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency;
            dmGeral.FAT_CD_M_PED_TIT.Next;
          end;

        if TotFpg <> dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency then
           begin
             result := true;
           end;
     end;
  dmGeral.FAT_CD_M_PED_TIT.GotoBookmark(PonteiroItens);
  dmGeral.FAT_CD_M_PED_TIT.edit;
end;

function FAT_CD_M_PED_TesPermExclusao: Boolean;
var
  mens: String;
begin
   result := true;

   mens := '';

   if dmGeral.FAT_CD_M_PED.IsEmpty then
      begin
        ShowMessage('Registro não encontrado para exclusão.');
        result := false;
      end;

   if dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger <> 0 then
      begin
         case dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger of
           1:
            begin
              mens := mens + '.Pedido de venda "reprovado".' + #13;
            end;
           2:
            begin
              mens := mens + '.Pedido de venda "Em produção".' + #13;
            end;
           3:
            begin
              mens := mens + '.Pedido de venda "Faturado".' + #13;
            end;
           4:
            begin
              mens := mens + '.Pedido de venda "Cancelado".' + #13;
            end;
         end;
      end
   else
      begin
        { dmGeral.BusNotaFiscal(9,dmGeral.FAT_CD_M_PED.FieldByName('ID_EMPRESA').AsString,'S',dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsString);
         if not dmGeral.BUS_CD_M_NFE.IsEmpty then
            begin
              if dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0 then
                 begin
                   ShowMessage('A nota fiscal deste pedido de venda já possui número.');
                 end;
              if dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '02' then
                 begin
                   ShowMessage('A nota fiscal deste pedido de venda foi cancelada.');
                 end;
            end;
         dmGeral.BUS_CD_M_NFE.Close;}
      end;

  if mens <> '' then
     begin
       ShowMessage('Exclusão não permitida!' + #13 + mens);
       mens := '';
       result := false;
     end;
end;

procedure FatMascaraPedidoTit(DataSet:TDataSet);
begin
  dmGeral.FAT_CD_M_PED_TITVLR_TITULO.DisplayFormat := CMascaraValor;
end;

procedure FatNovoPedidoTit(DataSet: TDataSet);
begin

  {dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_TITULO').AsInteger :=
                      dmGeral.enValorChave('FAT_TB_M_PED_TIT');

  dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_PEDIDO').AsInteger :=
      dmGeral.FAT_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger;  }

  dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_TITULO').AsInteger :=
          dmGeral.FAT_CD_M_PED_TIT.RecordCount+1;
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('ID_FORMA_PAG').AsInteger    := 0;
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('DIAS').AsInteger            := 0;
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime := now;
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency     := 0;
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_BANCO').text            := '';
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_AGENCIA').text          := '';
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_CONTA').AsString        := '';
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_NUMERO').AsInteger      := 0;
  dmGeral.FAT_CD_M_PED_TIT.FieldByName('CHE_EMITENTE').text         := '';
  //dmGeral.FAT_CD_M_PED_TIT.FieldByName('BOL_NOSSO_NUMERO').text     := '0';
end;


function FatValidaTitPNF: Boolean;
Var
  PonteiroItens : TBookmark;
  TotFpg: Currency;
begin
  result := true;
  TotFpg := 0;

  dmGeral.FAT_CD_M_PED_TIT.cancel;


  dmGeral.FAT_CD_M_PED_TIT.First;
  if not dmGeral.FAT_CD_M_PED_TIT.IsEmpty then
     begin
        while not dmGeral.FAT_CD_M_PED_TIT.eof do
          begin
            TotFpg := TotFpg + dmGeral.FAT_CD_M_PED_TIT.FieldByName('VLR_TITULO').AsCurrency;
            dmGeral.FAT_CD_M_PED_TIT.Next;
          end;

        if TotFpg <> dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency then
           begin
             result := false;
           end;
     end;
end;





procedure FAT_CD_M_PEDvlr_descontoChange;
var
  lPonteiroItens : TBookmark;
  lTotDescItens: Currency;
begin
  if dmGeral.FAT_CD_M_PED.FieldByName('origem').AsString = '2' then
     begin
        lTotDescItens:= 0;

        {dmGeral.FAT_CD_M_PED_ITE.Cancel;
        if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
           begin
             dmGeral.FAT_CD_M_PED_ITE.First;
             while not dmGeral.FAT_CD_M_PED_ITE.eof do
                begin
                  lTotDescItens := lTotDescItens +
                                   dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
                  dmGeral.FAT_CD_M_PED_ITE.Next;
                end;
           end; }

        try
           dmGeral.FAT_CD_M_PED_ITE.AfterPost := nil;
           dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := nil;

      //  if lTotDescItens <> dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency then
      //     begin
             FatRatVlrEntreItensPedido(dmGeral.FAT_CD_M_PEDvlr_liquido.AsCurrency, dmGeral.FAT_CD_M_PEDvlr_desconto.AsCurrency, 'VLR_DESCONTO', '', '');
      //     end;
        FatPedCalcTotal;
        finally
           dmGeral.FAT_CD_M_PED_ITE.afterpost            :=  dmGeral.FAT_CD_M_PED_ITEAfterPost;
           dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEvlr_descontoChange;
        end;
     end;

end;

procedure FatRatVlrEntreItensPedido(const lVlrTotDoc, lVlrMontante: Currency;
                                    lNomeCampoIte, lNomeCampoBaseIte,
                                    lNomeCampoPerIte: String);
var
  lPonteiroItens: TBookmark;
  lPercTemp, lPercAcum: Currency;
  lQtdeReg, lNroReg: Integer;
  { TODO -oMaxsuel -cCriação :
    Criado em 29/02/2016
    Método usado pela rotina de pedido cupom (FAT_FM_M_PNF) }
begin

  // lVlrTotDoc    = Ao valor liquido da Nota Fiscal
  // lVlrMontante  = Equivale ao valor do campo que chama esse método, ex:  VLR_SEGURO=150,00 , VLR_OUTRAS_DESP=85,48 ...
  // lNomeCampoIte = refere-se ao nome do campo exemplo:  FRE_VALOR, VLR_SEGURO, VLR_OUTRAS_DESP ...
  // lNomeCampoBaseIte = refere-se ao nome do campo do item que vai guardar o valor base
  // lNomeCampoPerIte = refere-se ao nome do campo do item que vai guardar o percentual exe:  FRE_PERCENTUAL

  dmGeral.FAT_CD_M_PED_ITE.cancel;

  lQtdeReg  := dmGeral.FAT_CD_M_PED_ITE.RecordCount;
  lNroReg   := 0;
  lPercAcum := 0;
  if lVlrMontante > 0 then
     begin
        dmGeral.FAT_CD_M_PED_ITE.First;
        if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
           begin
              while not dmGeral.FAT_CD_M_PED_ITE.eof do
                begin
                  dmGeral.FAT_CD_M_PED_ITE.edit;
                  inc(lNroReg);
                  if lNroReg < lQtdeReg then
                     begin
                        lPercTemp := roundTo((100 * dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency) /  lVlrTotDoc,-2);
                     end
                  else
                     begin
                       lPercTemp := 100 - lPercAcum;
                     end;
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency := roundTo((lPercTemp * lVlrMontante) / 100,-2);
                  if lNomeCampoIte = 'VLR_DESCONTO' then
                     begin
                       dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency -
                               dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency;
                     end;
                  if trim(lNomeCampoBaseIte) <> '' then
                     begin
                       dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoBaseIte).AsCurrency :=
                         dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                     end;
                  if trim(lNomeCampoPerIte) <> '' then
                     begin
                       dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := lPercTemp;
                     end;
                  lPercAcum := lPercAcum + lPercTemp;
                  //FAT_CD_M_NFE_ITE.post;
                  dmGeral.FAT_CD_M_PED_ITE.Next;
                end;
           end;
        dmGeral.FAT_CD_M_PED_ITE.First;
     end
  else
     begin
       dmGeral.FAT_CD_M_PED_ITE.First;
       if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
          begin

             while not dmGeral.FAT_CD_M_PED_ITE.eof do
               begin
                 dmGeral.FAT_CD_M_PED_ITE.edit;
                 inc(lNroReg);
                 dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency := 0;
                 if lNomeCampoIte = 'VLR_DESCONTO' then
                    begin
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                    end;
                 if trim(lNomeCampoBaseIte) <> '' then
                    begin
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoBaseIte).AsCurrency := 0;
                    end;

                 if trim(lNomeCampoPerIte) <> '' then
                    begin
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := 0;
                    end;
                 dmGeral.FAT_CD_M_PED_ITE.Post;
                 dmGeral.FAT_CD_M_PED_ITE.Next;
               end;
           end;
       dmGeral.FAT_CD_M_PED_ITE.First;
     end;
end;


procedure FatRatVlrEntreItensPedido2(const lVlrTotDoc, lVlrMontante: Currency;
                                    lNomeCampoIte,lNomeCampoPerIte: String;var descAcimaMax:boolean;ativarVerDesc:boolean);
var
  lPonteiroItens: TBookmark;
  lPercTemp, lPercAcum: Currency;
  lQtdeReg, lNroReg: Integer;
  { TODO -oMaxsuel -cCriação :
    Criado em 29/02/2016
    Método usado pela rotina de pedido cupom (FAT_FM_M_PNF) }
begin

  // lVlrTotDoc    = Ao valor liquido da Nota Fiscal
  // lVlrMontante  = Equivale ao valor do campo que chama esse método, ex:  VLR_SEGURO=150,00 , VLR_OUTRAS_DESP=85,48 ...
  // lNomeCampoIte = refere-se ao nome do campo exemplo:  FRE_VALOR, VLR_SEGURO, VLR_OUTRAS_DESP ...
  // lNomeCampoBaseIte = refere-se ao nome do campo do item que vai guardar o valor base
  // lNomeCampoPerIte = refere-se ao nome do campo do item que vai guardar o percentual exe:  FRE_PERCENTUAL
  descAcimaMax := false;
  dmGeral.FAT_CD_M_PED_ITE.cancel;

  lQtdeReg  := dmGeral.FAT_CD_M_PED_ITE.RecordCount;
  lNroReg   := 0;
  lPercAcum := 0;
  if lVlrMontante > 0 then
     begin
        dmGeral.FAT_CD_M_PED_ITE.First;
        if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
           begin
              while not dmGeral.FAT_CD_M_PED_ITE.eof do
                begin
                  dmGeral.FAT_CD_M_PED_ITE.edit;
                  inc(lNroReg);
                  if lNroReg < lQtdeReg then
                     begin
                        lPercTemp := roundTo((100 * dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency) /  lVlrTotDoc,-2);
                     end
                  else
                     begin
                       lPercTemp := 100 - lPercAcum;
                     end;
                  dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency := roundTo((lPercTemp * lVlrMontante) / 100,-2);
                  if lNomeCampoIte = 'VLR_DESCONTO' then
                     begin
                       dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                               dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency -
                               dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency;
                     end;
                  if trim(lNomeCampoPerIte) <> '' then
                     begin
                       //dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := roundTo((dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency/
                                                                                         // dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency)*100,-2);

                       dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := roundTo((lVlrMontante/lVlrTotDoc)*100,-2);
                       if ativarVerDesc then
                         begin

                          if ((not dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').IsNull) and
                             (dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency >
                              dmGeral.FAT_CD_M_PED_ITE.FieldByName('PER_DESC_MAX').AsCurrency)) then
                             begin
                               descAcimaMax := true;
                             end;
                         end;
                     end;

                  lPercAcum := lPercAcum + lPercTemp;
                  dmGeral.FAT_CD_M_PED_ITE.Post;
                  dmGeral.FAT_CD_M_PED_ITE.Next;
                end;
           end;
        dmGeral.FAT_CD_M_PED_ITE.First;
     end
  else
     begin
       dmGeral.FAT_CD_M_PED_ITE.First;
       if not dmGeral.FAT_CD_M_PED_ITE.IsEmpty then
          begin

             while not dmGeral.FAT_CD_M_PED_ITE.eof do
               begin
                 dmGeral.FAT_CD_M_PED_ITE.edit;
                 inc(lNroReg);
                 dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoIte).AsCurrency := 0;
                 if lNomeCampoIte = 'VLR_DESCONTO' then
                    begin
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                              dmGeral.FAT_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency;
                    end;

                 if trim(lNomeCampoPerIte) <> '' then
                    begin
                      dmGeral.FAT_CD_M_PED_ITE.FieldByName(lNomeCampoPerIte).AsCurrency := 0;
                    end;
                 dmGeral.FAT_CD_M_PED_ITE.Post;
                 dmGeral.FAT_CD_M_PED_ITE.Next;
               end;
           end;
       dmGeral.FAT_CD_M_PED_ITE.First;
     end;
end;

end.
