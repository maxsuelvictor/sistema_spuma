unit PCP_RN_M_ORS;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Datasnap.DBClient;

procedure PcpValidaOrs;
procedure PcpValidaOrsFin;
procedure PcpValidaOrsTit;
procedure PcpNovoOrs(DataSet: TDataSet);
procedure PcpNovoOrsIte;
procedure PcpNovoOrsTit;
procedure MascaraOrsIte;
procedure MascaraOrsTit;

function  PCP_CD_M_ORS_TesTotItensXTotOrs: Boolean;
function  PCP_CD_M_ORS_ExisteCheque: boolean;
function  PCP_CD_M_ORS_TesTotFpgXTotOrs: Boolean;

procedure PcpImportarPedOrs(IdRom,IdPedido:Integer);
procedure PcpImportarPedTitOrs;

function PcpValidarRomOrs(origem:integer; BUS_CD_M_PCP_ROM: TClientDataSet): Boolean;



implementation
Uses uDmGeral,enConstantes, uProxy, PCP_UN_M_ORS;

procedure PcpNovoOrsTit;
var
  SMPrincipal: TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.PCP_CD_M_ORS_TIT.FieldByName('id_ors_tit').AsInteger := SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.PCP_CD_M_ORS_TIT.FieldByName('ID_FORMA_PAG').AsInteger    := 0;
  dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DIAS').AsInteger            := 0;
  dmGeral.PCP_CD_M_ORS_TIT.FieldByName('VLR_TITULO').AsCurrency     := 0;
  dmGeral.PCP_CD_M_ORS_TIT.FieldByName('CHE_BANCO').text            := '';
  dmGeral.PCP_CD_M_ORS_TIT.FieldByName('CHE_AGENCIA').text          := '';
  dmGeral.PCP_CD_M_ORS_TIT.FieldByName('CHE_CONTA').AsString        := '';
  dmGeral.PCP_CD_M_ORS_TIT.FieldByName('CHE_NUMERO').AsInteger      := 0;
  dmGeral.PCP_CD_M_ORS_TIT.FieldByName('CHE_EMITENTE').text         := '';
end;

procedure PcpValidaOrs;
var
  mens: String;
begin
  mens := '';

  if trim(dmGeral.PCP_CD_M_ORS.FieldByName('id_motorista').text) = '' then
     begin
       mens := mens + '.Motorista' + #13;
     end;

  if trim(dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').text) = '' then
     begin
       mens := mens + '.Pedido' + #13;
     end;

  if dmGeral.PCP_CD_M_ORS.FieldByName('dta_emissao').text = '' then
     begin
       mens := mens + '.Data de emissão' + #13;
     end;


  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       abort;
     end
  else
     begin
        dmGeral.PCP_CD_M_ORS_ITE.cancel;
        if dmGeral.PCP_CD_M_ORS_ITE.IsEmpty then
           begin
             mens := mens + 'Nenhum item foi inserido na ordem de faturamento.' + #13;
           end;

        if PCP_CD_M_ORS_TesTotItensXTotOrs then
           begin
             mens := mens + 'Valor líquido dos itens diferente do total da ordem de faturamento.' + #13;
           end;

        {dmGeral.PCP_CD_M_ORS_TIT.cancel;
        if (dmGeral.PCP_CD_M_ORS_TIT.IsEmpty)  then
           begin
             //if (dmGeral.CAD_CD_C_PAR_CTRped_ativa_titulos.AsBoolean) then
                 mens := mens + 'Nenhum título foi inserido na ordem de faturamento.' + #13
           end;}

        {if PCP_CD_M_ORS_ExisteCheque then
           begin
             mens := mens + 'Não é permitido informar forma de pagamento do tipo "Cheque".' + #13;
           end;}

       { if PCP_CD_M_ORS_TesTotFpgXTotOrs then
           begin
             mens := mens + 'Valor dos vencimentos diferente do total da ordem de faturamento.' + #13;
           end;}

        if mens <> '' then
           begin
             ShowMessage('Atenção:' + #13 + mens);
             mens := '';
             abort;
           end;
     end;
end;

procedure PcpValidaOrsTit;
var
  mens: String;
begin
  mens := '';

  if trim(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('id_ors_tit').text) = '' then
     begin
       mens := mens + '.Titulo' + #13;
     end;

  if dmGeral.PCP_CD_M_ORS_TIT.FieldByName('id_forma_pag').text = '' then
     begin
       mens := mens + '.Forma de Pagamento' + #13;
     end;

  if trim(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('vlr_titulo').text) = '' then
     begin
       mens := mens + '.Valor do título' + #13;
     end;

  if dmGeral.PCP_CD_M_ORS_TIT.FieldByName('dta_vencimento').text = '' then
     begin
       mens := mens + '.Data de Vencimento' + #13;
     end;

  dmGeral.BusFormaPgtos2(0,dmGeral.PCP_CD_M_ORS_TIT.FieldByName('id_forma_pag').AsString);
  if dmGeral.BUS_CD_C_FPG2.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
     begin
        if trim(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('che_banco').AsString) = '' then
           mens:= mens + '.Banco'+ #13;

        if trim(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('che_agencia').AsString) = '' then
           mens:= mens + '.Agência'+ #13;

        if trim(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('che_conta').AsString) = '' then
           mens:= mens + '.Conta'+ #13;

        if dmGeral.PCP_CD_M_ORS_TIT.FieldByName('che_numero').AsInteger = 0 then
           mens:= mens + '.Número'+ #13;

        if trim(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('che_emitente').AsString) = '' then
           mens:= mens + '.Emitente'+ #13;
     end;
  dmGeral.BUS_CD_C_FPG2.close;

 { if xMensErro<>'' then
     begin
        raise Exception.Create(enConstantes.MensErro + #13 + xMensErro + #13 +
                               'Caso deseje cancelar a alteração tecle <ESC>.');
        abort;
     end;}

  if mens <> '' then
     begin
       ShowMessage('Os campos abaixos devem ser preenchidos:' + #13 + mens);
       mens := '';
       abort;
     end;
end;

procedure PcpNovoOrsIte;
var
  SMPrincipal: TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.PCP_CD_M_ORS_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=
       SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure PcpNovoOrs(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.PCP_CD_M_ORS.FieldByName('ID_ORS').AsInteger :=
       SMPrincipal.enValorChave('PCP_TB_M_ORS');

    dmGeral.PCP_CD_M_ORS.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
    dmGeral.PCP_CD_M_ORS.FieldByName('DTA_EMISSAO').AsDateTime   := xDataSis;
    dmGeral.PCP_CD_M_ORS.FieldByName('HOR_EMISSAO').AsDateTime   := Time;
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmgeral.PCP_CD_M_ORS.FieldByName('ID_EMPRESA').AsInteger :=
               dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  dmgeral.PCP_CD_M_ORS.FieldByName('fin_gerado').AsBoolean := False;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_M_ORS',xCodLme,xRevLme,dmGeral.PCP_CD_M_ORS);
end;

procedure MascaraOrsIte;
begin
  dmGeral.PCP_CD_M_ORS_ITEvlr_unitario.DisplayFormat := CMascaraValor;
  dmGeral.PCP_CD_M_ORS_ITEvlr_bruto.DisplayFormat    := CMascaraValor;
  dmGeral.PCP_CD_M_ORS_ITEvlr_desconto.DisplayFormat := CMascaraValor;
  dmGeral.PCP_CD_M_ORS_ITEvlr_liquido.DisplayFormat  := CMascaraValor;
end;

procedure MascaraOrsTit;
begin
  dmGeral.PCP_CD_M_ORS_TITvlr_titulo.DisplayFormat :=CMascaraValor;
end;

function PcpValidarRomOrs(origem:integer;BUS_CD_M_PCP_ROM: TClientDataSet): Boolean;
begin
  result := true;
  if origem = 0 then
     begin
        if dmgeral.BUS_CD_M_PCP_ROM.FieldByName('ped_ite_qtde_total').AsCurrency = 0 then
           begin
             ShowMessage('Não será permitido fazer esta ordem de faturamento.' + #13 +
                         'O Relatório de Carga '+dmGeral.BUS_CD_M_PCP_ROM.FieldByName('id_rom').AsString +', não tem nenhum pedido informado.');
             result := false;
           end;

        if dmgeral.BUS_CD_M_PCP_ROM.FieldByName('lot_qtde_total').AsCurrency = 0 then
           begin
             ShowMessage('Não será permitido fazer esta ordem de faturamento.' + #13 +
                         'O Relatório de Carga ' +dmGeral.BUS_CD_M_PCP_ROM.FieldByName('id_rom').AsString + ', não tem nenhum lote informado.');
             result := false;
           end;

        if dmgeral.BUS_CD_M_PCP_ROM.FieldByName('ped_ite_qtde_total').AsCurrency <>
           dmgeral.BUS_CD_M_PCP_ROM.FieldByName('lot_qtde_total').AsCurrency then
           begin
             ShowMessage('Não será permitido fazer esta ordem de faturamento.');
             ShowMessage('No Relatório de Carga ' +dmGeral.BUS_CD_M_PCP_ROM.FieldByName('id_rom').AsString +', a quantidade total dos itens dos pedidos está ' +
                         'diferente do total da quantidade dos lotes.'+ #13 +
                         'Total qtde dos itens dos pedidos: ' + dmgeral.BUS_CD_M_PCP_ROM.FieldByName('ped_ite_qtde_total').AsString + #13 +
                         'Total qtde dos lotes: ' + dmgeral.BUS_CD_M_PCP_ROM.FieldByName('lot_qtde_total').AsString);
            result := false;
           end;
     end;
  if origem = 1 then
     begin
        if dmgeral.BUS_CD_M_PCP_ROM.FieldByName('ped_ite_qtde_total').AsCurrency <>
           dmgeral.BUS_CD_M_PCP_ROM.FieldByName('lot_qtde_total').AsCurrency then
           begin
             ShowMessage('Inconsistência no Relatório de Carga: ' +dmGeral.BUS_CD_M_PCP_ROM.FieldByName('id_rom').AsString + '!' + #13 +
                         'A quantidade total dos itens dos pedidos está ' +
                         'diferente do total da quantidade dos lotes.'+ #13 +
                         'Total qtde dos itens dos pedidos: ' + dmgeral.BUS_CD_M_PCP_ROM.FieldByName('ped_ite_qtde_total').AsString + #13 +
                         'Total qtde dos lotes: ' + dmgeral.BUS_CD_M_PCP_ROM.FieldByName('lot_qtde_total').AsString);
            result := false;
           end;
     end;
end;

procedure PcpImportarPedOrs(IdRom,IdPedido:Integer);
var
  seq: integer;
  QtdeTotPed,QtdeTotIteConf, vlr_liquido_com_especial:Currency;
  TotalLiqTemp, TotalLiqRest: Currency;
  qtdeTotItens, i: integer;
  EntrouPrimeiroIf : Boolean;
  VlrLiquidoItens: Currency;
begin
   { TODO -oMaxsuel -cCriação : Criado em 07/03/2016 }

   QtdeTotPed     := 0;
   QtdeTotIteConf := 0;

   try
    dmGeral.PCP_CD_M_ORS_ITE.OnNewRecord := nil;


    dmGeral.PCP_CD_M_ORS_ITE.EmptyDataSet;
    dmgeral.PCP_CD_M_ORS_ICO.EmptyDataSet;
    dmgeral.PCP_CD_M_ORS_TIT.EmptyDataSet;

    // Itens
    qtdeTotItens := dmGeral.BUS_CD_M_PED_ITE.RecordCount;
    i := 0;
    TotalLiqTemp := 0;
    TotalLiqRest := 0;

    EntrouPrimeiroIf := false;

    VlrLiquidoItens := 0;

    dmGeral.BUS_CD_M_PED_ITE.First;
    while not dmGeral.BUS_CD_M_PED_ITE.Eof do
        begin
          VlrLiquidoItens := VlrLiquidoItens + dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency;
          dmGeral.BUS_CD_M_PED_ITE.Next;
        end;


    dmGeral.BUS_CD_M_PED_ITE.First;
    while not dmGeral.BUS_CD_M_PED_ITE.Eof do
      begin
        inc(i);

        dmGeral.PCP_CD_M_ORS_ITE.Insert;
        dmgeral.PCP_CD_M_ORS_ITE.FieldByName('id_ors').AsInteger := dmgeral.PCP_CD_M_ORS.FieldByName('id_ors').AsInteger;
        dmgeral.PCP_CD_M_ORS_ITE.FieldByName('id_sequencia').AsInteger     := dmgeral.BUS_CD_M_PED_ITE.FieldByName('id_sequencia').AsInteger;
        dmgeral.PCP_CD_M_ORS_ITE.FieldByName('id_item').AsInteger          := dmGeral.BUS_CD_M_PED_ITE.FieldByName('id_item').AsInteger;
        dmgeral.PCP_CD_M_ORS_ITE.FieldByName('int_tipo_item').AsString     := dmGeral.BUS_CD_M_PED_ITE.FieldByName('int_tipo_item').AsString;
        dmgeral.PCP_CD_M_ORS_ITE.FieldByName('id_cor').AsInteger           := dmGeral.BUS_CD_M_PED_ITE.FieldByName('id_cor').AsInteger;
        dmgeral.PCP_CD_M_ORS_ITE.FieldByName('id_tamanho').AsInteger       := dmGeral.BUS_CD_M_PED_ITE.FieldByName('id_tamanho').AsInteger;
        dmgeral.PCP_CD_M_ORS_ITE.FieldByName('qtde').AsCurrency            := dmGeral.BUS_CD_M_PED_ITE.FieldByName('qtde').AsCurrency;

        QtdeTotPed     := QtdeTotPed + dmgeral.PCP_CD_M_ORS_ITE.FieldByName('qtde').AsCurrency;

        dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_unitario').AsCurrency    := dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_unitario').AsCurrency;
        dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_bruto').AsCurrency       := dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency;

        // If colocado em 31/10/2022, por Maxsuel Victor, para atender o pedido de Caio da Colchões Globo.
           // pois no pedido de venda o desconto especial não compõe mais o VLR_DESCONTO.

        // Eses primeiro if cai na situação de um pedido normal (sem desconto especial) ou na situação de antes , que o pedido
           // utilizava o valor liquido deduzido do valor de desconto especial.  até o dia 16/11/2022 (pela manhã, antes de ser atualizado
        if (dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_desc_especial').AsCurrency  = 0) or

           (dmGeral.BUS_CD_M_PED.FieldByName('vlr_liquido').AsCurrency = VlrLiquidoItens)

           {(   (dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_desc_especial').AsCurrency > 0) and
              (( dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency  -
                 dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_desc_basico').AsCurrency) <>
                  dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency)
           )

           or

          ( EntrouPrimeiroIf = true )


             { (dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency -
              (dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_desc_basico').AsCurrency + dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_desc_especial').AsCurrency)
               = dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency) )}
            then
           begin

              //EntrouPrimeiroIf := true;

              dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_desconto').AsCurrency    := dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_desconto').AsCurrency;
              dmgeral.PCP_CD_M_ORS_ITE.FieldByName('per_desconto').AsCurrency    := dmGeral.BUS_CD_M_PED_ITE.FieldByName('per_desconto').AsCurrency;
              dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_liquido').AsCurrency     := dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency;
           end
        else
            if (
                 (dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_desc_especial').AsCurrency > 0) and

                 (dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency -
                 (dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_desc_basico').AsCurrency + dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_desc_especial').AsCurrency)
                   <> dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency)
               )
            then

              begin
                if i <> qtdeTotItens then
                   begin
                      dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_desconto').AsCurrency    := dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency -
                                                                                             ( dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency -
                                                                                               roundTo(dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_desc_especial').AsCurrency,-4)) ;

                      vlr_liquido_com_especial := dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_liquido').AsCurrency -
                                                  roundTo(dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_desc_especial').AsCurrency,-2);

                      dmgeral.PCP_CD_M_ORS_ITE.FieldByName('per_desconto').AsCurrency    := 100 -
                                                                                            ( roundTo( (vlr_liquido_com_especial / dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_bruto').AsCurrency) * 100, -4) );

                      dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_liquido').AsCurrency     :=
                               (dmgeral.PCP_CD_M_ORS_ITE.FieldByName('qtde').AsCurrency *
                                dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_unitario').AsCurrency) - dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_desconto').AsCurrency;
                            //vlr_liquido_com_especial;
                      TotalLiqTemp := TotalLiqTemp + dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_liquido').AsCurrency;
                   end
                else
                   begin
                      TotalLiqRest := dmgeral.PCP_CD_M_ORS.FieldByName('vlr_liquido').AsCurrency -  TotalLiqTemp;

                      dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_desconto').AsCurrency    := dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency -
                                                                                             ( TotalLiqRest -
                                                                                               roundTo(dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_desc_especial').AsCurrency,-4)) ;

                      vlr_liquido_com_especial := TotalLiqRest;

                      dmgeral.PCP_CD_M_ORS_ITE.FieldByName('per_desconto').AsCurrency    := 100 -
                                                                                            ( roundTo( (vlr_liquido_com_especial / dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_bruto').AsCurrency) * 100, -4) );

                      dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_liquido').AsCurrency     := TotalLiqRest;
                   end;
              end;

        dmgeral.PCP_CD_M_ORS_ITE.FieldByName('int_nomeite').AsString       := dmGeral.BUS_CD_M_PED_ITE.FieldByName('int_nomeite').AsString;
        dmgeral.PCP_CD_M_ORS_ITE.FieldByName('int_nomecor').AsString       := dmGeral.BUS_CD_M_PED_ITE.FieldByName('int_nomecor').AsString;
        dmgeral.PCP_CD_M_ORS_ITE.FieldByName('int_nometam').AsString       := dmGeral.BUS_CD_M_PED_ITE.FieldByName('int_nometam').AsString;
        dmgeral.PCP_CD_M_ORS_ITE.FieldByName('id_sequencia_ped').AsInteger := dmGeral.BUS_CD_M_PED_ITE.FieldByName('id_sequencia').AsInteger;
        dmGeral.PCP_CD_M_ORS_ITE.Post;
        dmGeral.BUS_CD_M_PED_ITE.Next;
      end;

    seq := 0;

    PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.Close;
    PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.Data :=
        PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.DataRequest(
                 VarArrayOf([1, IdRom, IdPedido]));

    PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.First;
    while not PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.Eof do
      begin
        dmGeral.PCP_CD_M_ORS_ICO.Insert;
        dmgeral.PCP_CD_M_ORS_ICO.FieldByName('id_ors').AsInteger           := dmgeral.PCP_CD_M_ORS.FieldByName('id_ors').AsInteger;
        inc(seq);
        dmgeral.PCP_CD_M_ORS_ICO.FieldByName('id_sequencia').AsInteger     := seq;
        dmgeral.PCP_CD_M_ORS_ICO.FieldByName('id_item').AsInteger          := PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.FieldByName('id_item').AsInteger;
        dmgeral.PCP_CD_M_ORS_ICO.FieldByName('int_tipo_item').AsString     := PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.FieldByName('int_tipo_item').AsString;
        dmgeral.PCP_CD_M_ORS_ICO.FieldByName('id_cor').AsInteger           := PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.FieldByName('id_cor').AsInteger;
        dmgeral.PCP_CD_M_ORS_ICO.FieldByName('id_tamanho').AsInteger       := PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.FieldByName('id_tamanho').AsInteger;
        dmgeral.PCP_CD_M_ORS_ICO.FieldByName('int_nomeite').AsString       := PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.FieldByName('int_nomeite').AsString;
        dmgeral.PCP_CD_M_ORS_ICO.FieldByName('int_nomecor').AsString       := PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.FieldByName('int_nomecor').AsString;
        dmgeral.PCP_CD_M_ORS_ICO.FieldByName('int_nometam').AsString       := PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.FieldByName('int_nometam').AsString;

        dmgeral.PCP_CD_M_ORS_ICO.FieldByName('qtde').AsCurrency            := PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.FieldByName('qtde').AsCurrency;

        QtdeTotIteConf := QtdeTotIteConf + dmgeral.PCP_CD_M_ORS_ICO.FieldByName('qtde').AsCurrency;

        dmgeral.PCP_CD_M_ORS_ICO.FieldByName('vlr_unitario').AsCurrency    := PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.FieldByName('vlr_unitario').AsCurrency;
        dmgeral.PCP_CD_M_ORS_ICO.FieldByName('vlr_bruto').AsCurrency       := PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.FieldByName('vlr_liquido').AsCurrency;
        dmgeral.PCP_CD_M_ORS_ICO.FieldByName('vlr_desconto').AsCurrency    := 0;
        dmgeral.PCP_CD_M_ORS_ICO.FieldByName('per_desconto').AsCurrency    := 0;

        // Comentado em 31/10/2022 por Maxsuel Victor, este valor liquido abaixo já está imbutido com o VLR_DESC_ESPECIAL
        dmgeral.PCP_CD_M_ORS_ICO.FieldByName('vlr_liquido').AsCurrency     := PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.FieldByName('vlr_liquido').AsCurrency;
        dmGeral.PCP_CD_M_ORS_ICO.Post;
        PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.Next;
      end;
    PCP_FM_M_ORS.BUS_CD_M_ROM_PED_ICF.Close;



    if (QtdeTotIteConf > 0) and (QtdeTotPed <> QtdeTotIteConf) then
       begin
         ShowMessage('Os itens deste pedido não foram totalmente conferido!');

         while not dmGeral.PCP_CD_M_ORS_ITE.Eof do
           begin
             dmGeral.PCP_CD_M_ORS_ITE.Delete;
           end;

         while not dmGeral.PCP_CD_M_ORS_ICO.Eof do
           begin
             dmGeral.PCP_CD_M_ORS_ICO.Delete;
           end;

         dmgeral.PCP_CD_M_ORS.FieldByName('id_pedido').Text := '';
         dmgeral.PCP_CD_M_ORS.FieldByName('int_nomecli').AsString := '';
         dmgeral.PCP_CD_M_ORS.FieldByName('id_rom').AsString           := '';
         dmgeral.PCP_CD_M_ORS.FieldByName('int_dta_rom').AsString      := '';
         dmgeral.PCP_CD_M_ORS.FieldByName('int_nomeresp_rom').AsString := '';
         dmgeral.PCP_CD_M_ORS.FieldByName('id_tipo_mov_estoque').AsString := '';
         dmgeral.PCP_CD_M_ORS.FieldByName('id_almoxarifado').text :=          '';
         dmgeral.PCP_CD_M_ORS.FieldByName('vlr_desconto').AsCurrency := 0;
         dmgeral.PCP_CD_M_ORS.FieldByName('vlr_bruto').AsCurrency :=    0;
         dmgeral.PCP_CD_M_ORS.FieldByName('vlr_liquido').AsCurrency :=  0;
         abort;
       end
    else
       begin
          if (QtdeTotIteConf = 0) then
             begin
               ShowMessage('Os itens deste pedido não foram conferido!');

               while not dmGeral.PCP_CD_M_ORS_ITE.Eof do
                  begin
                    dmGeral.PCP_CD_M_ORS_ITE.Delete;
                  end;

               while not dmGeral.PCP_CD_M_ORS_ICO.Eof do
                 begin
                   dmGeral.PCP_CD_M_ORS_ICO.Delete;
                 end;

               dmgeral.PCP_CD_M_ORS.FieldByName('id_pedido').Text := '';
               dmgeral.PCP_CD_M_ORS.FieldByName('int_nomecli').AsString := '';
               dmgeral.PCP_CD_M_ORS.FieldByName('id_rom').AsString           := '';
               dmgeral.PCP_CD_M_ORS.FieldByName('int_dta_rom').AsString      := '';
               dmgeral.PCP_CD_M_ORS.FieldByName('int_nomeresp_rom').AsString := '';
               dmgeral.PCP_CD_M_ORS.FieldByName('id_tipo_mov_estoque').AsString := '';
               dmgeral.PCP_CD_M_ORS.FieldByName('id_almoxarifado').text :=          '';
               dmgeral.PCP_CD_M_ORS.FieldByName('vlr_desconto').AsCurrency := 0;
               dmgeral.PCP_CD_M_ORS.FieldByName('vlr_bruto').AsCurrency :=    0;
               dmgeral.PCP_CD_M_ORS.FieldByName('vlr_liquido').AsCurrency :=  0;
               abort;
             end;
       end;

    // Títulos
    dmGeral.PCP_CD_M_ORS_TIT.OnNewRecord := nil;

   // Código comentado por Maxsuel Victor em 09/04/2016
   // devido acordo com a Globo de ter a tela PCP_FM_M_ORS_FIN para poder gerar o financeiro.
     //Código foi descomentado por Luan em 13/04/2016, pois deixará de exstir PCP_FM_M_ORS_FIN
    dmGeral.BUS_CD_M_PED_TIT.First;
    while not dmGeral.BUS_CD_M_PED_TIT.Eof do
      begin
        dmGeral.PCP_CD_M_ORS_TIT.Insert;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('id_ors_tit').AsInteger       := dmgeral.BUS_CD_M_PED_TIT.FieldByName('id_titulo').AsInteger;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('ID_FORMA_PAG').AsInteger     := dmGeral.BUS_CD_M_PED_TIT.FieldByName('ID_FORMA_PAG').AsInteger;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('int_nomefpg').AsString       := dmGeral.BUS_CD_M_PED_TIT.FieldByName('int_nomefpg').AsString;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('dias').AsInteger             := dmGeral.BUS_CD_M_PED_TIT.FieldByName('dias').AsInteger;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('dta_vencimento').AsDateTime  := dmGeral.BUS_CD_M_PED_TIT.FieldByName('dta_vencimento').AsDateTime;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('che_banco').AsString         := dmGeral.BUS_CD_M_PED_TIT.FieldByName('che_banco').AsString;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('che_agencia').AsString       := dmGeral.BUS_CD_M_PED_TIT.FieldByName('che_agencia').AsString;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('che_conta').AsString         := dmGeral.BUS_CD_M_PED_TIT.FieldByName('che_conta').AsString;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('che_numero').AsInteger       := dmGeral.BUS_CD_M_PED_TIT.FieldByName('che_numero').AsInteger;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('che_emitente').AsString      := dmGeral.BUS_CD_M_PED_TIT.FieldByName('che_emitente').AsString;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('vlr_titulo').AsCurrency      := dmGeral.BUS_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency;
        dmGeral.PCP_CD_M_ORS_TIT.Post;
        dmGeral.BUS_CD_M_PED_TIT.Next;
      end;

   finally
      dmGeral.PCP_CD_M_ORS_ITE.OnNewRecord := dmGeral.PCP_CD_M_ORS_ITENewRecord;
      dmGeral.PCP_CD_M_ORS_TIT.OnNewRecord := dmGeral.PCP_CD_M_ORS_TITNewRecord;
   end;

end;

function  PCP_CD_M_ORS_TesTotItensXTotOrs: Boolean;
Var
  PonteiroItens : TBookmark;
  TotItens: Currency;
begin
  result := false;
  TotItens := 0;

  dmGeral.PCP_CD_M_ORS_ITE.cancel;

  PonteiroItens := dmGeral.PCP_CD_M_ORS_ITE.GetBookmark;
  dmGeral.PCP_CD_M_ORS_ITE.First;
  if not dmGeral.PCP_CD_M_ORS_ITE.IsEmpty then
     begin
        while not dmGeral.PCP_CD_M_ORS_ITE.eof do
          begin
            TotItens := TotItens + dmGeral.PCP_CD_M_ORS_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
            dmGeral.PCP_CD_M_ORS_ITE.Next;
          end;

        if TotItens <> dmGeral.PCP_CD_M_ORS.FieldByName('VLR_LIQUIDO').AsCurrency then
           begin
             result := true;
           end;
     end;
  dmGeral.PCP_CD_M_ORS_ITE.GotoBookmark(PonteiroItens);
  dmGeral.PCP_CD_M_ORS_ITE.edit;
end;

function  PCP_CD_M_ORS_TesTotFpgXTotOrs: Boolean;
Var
  PonteiroItens : TBookmark;
  TotFpg: Currency;
begin
  result := false;
  TotFpg := 0;

  dmGeral.PCP_CD_M_ORS_TIT.cancel;

  PonteiroItens := dmGeral.PCP_CD_M_ORS_TIT.GetBookmark;
  dmGeral.PCP_CD_M_ORS_TIT.First;
  if not dmGeral.PCP_CD_M_ORS_TIT.IsEmpty then
     begin
        while not dmGeral.PCP_CD_M_ORS_TIT.eof do
          begin
            TotFpg := TotFpg + dmGeral.PCP_CD_M_ORS_TIT.FieldByName('VLR_TITULO').AsCurrency;
            dmGeral.PCP_CD_M_ORS_TIT.Next;
          end;

        if TotFpg <> dmGeral.PCP_CD_M_ORS.FieldByName('VLR_LIQUIDO').AsCurrency then
           begin
             result := true;
           end;
     end;
  dmGeral.PCP_CD_M_ORS_TIT.GotoBookmark(PonteiroItens);
  dmGeral.PCP_CD_M_ORS_TIT.edit;
end;

function  PCP_CD_M_ORS_ExisteCheque: boolean;
Var
  PonteiroItens : TBookmark;
  TotFpg: Currency;
begin
  result := false;
  TotFpg := 0;

  dmGeral.PCP_CD_M_ORS_TIT.cancel;

  PonteiroItens := dmGeral.PCP_CD_M_ORS_TIT.GetBookmark;
  dmGeral.PCP_CD_M_ORS_TIT.First;
  if not dmGeral.PCP_CD_M_ORS_TIT.IsEmpty then
     begin
        while not dmGeral.PCP_CD_M_ORS_TIT.eof do
          begin
            dmGeral.BusFormaPgtos(0,dmGeral.PCP_CD_M_ORS_TIT.FieldByName('id_forma_pag').AsString);
            if dmGeral. BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger = 6 then // cheque
               begin
                 dmGeral.PCP_CD_M_ORS_TIT.Last;
                 result := true;
               end;
            dmGeral.PCP_CD_M_ORS_TIT.Next;
          end;
        dmGeral.PCP_CD_M_ORS_TIT.First;
     end;
  dmGeral.PCP_CD_M_ORS_TIT.GotoBookmark(PonteiroItens);
  dmGeral.PCP_CD_M_ORS_TIT.edit;
end;

procedure PcpImportarPedTitOrs;
begin
   try

    dmGeral.PCP_CD_M_ORS_TIT.OnNewRecord := nil;

    dmGeral.BUS_CD_M_PED_TIT.First;
    while not dmGeral.BUS_CD_M_PED_TIT.Eof do
      begin
        dmGeral.PCP_CD_M_ORS_TIT.Insert;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('id_ors_tit').AsInteger       := dmgeral.BUS_CD_M_PED_TIT.FieldByName('id_titulo').AsInteger;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('ID_FORMA_PAG').AsInteger     := dmGeral.BUS_CD_M_PED_TIT.FieldByName('ID_FORMA_PAG').AsInteger;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('int_nomefpg').AsString       := dmGeral.BUS_CD_M_PED_TIT.FieldByName('int_nomefpg').AsString;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('dias').AsInteger             := dmGeral.BUS_CD_M_PED_TIT.FieldByName('dias').AsInteger;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('dta_vencimento').AsDateTime  := dmGeral.BUS_CD_M_PED_TIT.FieldByName('dta_vencimento').AsDateTime;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('che_banco').AsString         := dmGeral.BUS_CD_M_PED_TIT.FieldByName('che_banco').AsString;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('che_agencia').AsString       := dmGeral.BUS_CD_M_PED_TIT.FieldByName('che_agencia').AsString;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('che_conta').AsString         := dmGeral.BUS_CD_M_PED_TIT.FieldByName('che_conta').AsString;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('che_numero').AsInteger       := dmGeral.BUS_CD_M_PED_TIT.FieldByName('che_numero').AsInteger;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('che_emitente').AsString      := dmGeral.BUS_CD_M_PED_TIT.FieldByName('che_emitente').AsString;
        dmgeral.PCP_CD_M_ORS_TIT.FieldByName('vlr_titulo').AsCurrency      := dmGeral.BUS_CD_M_PED_TIT.FieldByName('vlr_titulo').AsCurrency;
        dmGeral.PCP_CD_M_ORS_TIT.Post;
        dmGeral.BUS_CD_M_PED_TIT.Next;
      end;

   finally
      dmGeral.PCP_CD_M_ORS_TIT.OnNewRecord := dmGeral.PCP_CD_M_ORS_TITNewRecord;
   end;

end;

procedure PcpValidaOrsFin;
var
  mens: String;
begin
  dmGeral.PCP_CD_M_ORS_TIT.cancel;
  if (not dmGeral.BUS_CD_M_PED_TIT.IsEmpty) then
     begin
        if (dmGeral.PCP_CD_M_ORS_TIT.IsEmpty)  then
           begin
                 mens := mens + 'Nenhum título foi inserido na ordem de faturamento.' + #13
           end;

        if PCP_CD_M_ORS_TesTotFpgXTotOrs then
           begin
             mens := mens + 'Valor dos vencimentos diferente do total da ordem de faturamento.' + #13;
           end;
     end;

  if mens <> '' then
     begin
       ShowMessage('Atenção:' + #13 + mens);
       mens := '';
       abort;
     end
  else
     begin
       dmGeral.PCP_CD_M_ORS_TIT.First;
          while not dmGeral.PCP_CD_M_ORS_TIT.eof do
             begin
                dmGeral.BusFormaPgtos(0,dmGeral.PCP_CD_M_ORS_TIT.FieldByName('ID_FORMA_PAG').AsString);
                if not dmGeral.BUS_CD_C_FPG.IsEmpty then
                   begin
                     if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
                        begin
                          if (trim(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('che_banco').AsString)    = '') or
                             (trim(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('che_agencia').AsString)  = '') or
                             (trim(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('che_conta').AsString)    = '') or
                             (dmGeral.PCP_CD_M_ORS_TIT.FieldByName('che_numero').AsInteger        = 0)  or
                             (trim(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('che_emitente').AsString) = '') then
                             begin
                               dmGeral.BUS_CD_C_FPG.close;
                               Showmessage('Existe forma de pagamento do tipo "Cheque" que está sem informações do cheque!');
                               dmGeral.PCP_CD_M_ORS_TIT.First;
                               abort;
                             end;
                        end;
                    end;
                dmGeral.PCP_CD_M_ORS_TIT.Next;
             end;
          dmGeral.PCP_CD_M_ORS_TIT.First;
     end;
end;

end.



