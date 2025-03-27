unit FAT_RN_M_CXA;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,Datasnap.DBClient,System.UITypes, Math,frxClass, Vcl.Forms;

procedure FatTotaisVendasCxa(var VendasAvista,VendasAprazo,TotalVendas: String);
procedure FatAtuDadosTelaCxa;
function  FatVerifDadosNfCxa(tipo: integer): Boolean;
function  FatVerifDadosTrans: Boolean;
procedure FatValidaCxaNfeMaq(cdsTemp: TClientDataSet);
procedure FatAtualMaqNfsTit(IdEmpresa,IdFiscal: integer; cdsTemp: TClientDataSet);
procedure FatGerarPreVendaCxa;
procedure FatDesfazerPreVendaCxa;

procedure FatProcessarCupomCxa;
function  FatVerifEnSoftXCupomCxa: Boolean;
procedure FatEncerrPedNfe;
//procedure FatGerarNfeDeEcfCxa(IdFiscal: integer); Esse metodo não é mais utilizado.Responsavel:Luan.Data:07/05/2016

procedure FatGerarCuponsGerConWin(IdAbertura: integer);



// FIN_FM_M_CTA_ABE
Function FatAtuDadosCarCtaAbe(cdsResCartao,cdsDetBxaCartao,cdsDetNotaCreCartao,cdsDetNFCartao,cdsCartao:TClientDataSet): String;
function FatValidaCtaAber(cdsResCartao,cdsDetBxaCartao,cdsDetNFCartao,cdsCartao:TClientDataSet): Boolean;
procedure BUS_CD_M_CXA_RES_CARnum_loteChange;


implementation

Uses uDmGeral,uProxy, FAT_RN_M_NFE, FAT_UN_M_CXA_NFE_FPG, enConstantes,enFunc,
  FAT_UN_M_CXA_NFE;

procedure FatTotaisVendasCxa(var VendasAvista,VendasAprazo,TotalVendas: String);
var
   totAvista,totAprazo,TotGeral: Currency;
begin
  try
    totAvista := 0;
    totAprazo := 0;
    TotGeral  := 0;

    dmGeral.BUS_CD_M_NFE_CXA.Filtered := true;
    dmGeral.BUS_CD_M_NFE_CXA.Filter := ' TIPO_NF = ''S'' AND INT_CLASSE = ''SP10'' ';

    if not dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
       begin
         while not dmGeral.BUS_CD_M_NFE_CXA.eof do
            begin
               while not dmGeral.BUS_CD_M_NFE_TIT_CXA.Eof do
                  begin
                    if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('INT_TIPOPGTO').AsInteger  = 0 then
                       begin
                         totAvista := totAvista + dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('VLR_TITULO').AsCurrency;
                       end;

                    if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('INT_TIPOPGTO').AsInteger  = 1 then
                       begin
                         totAprazo := totAprazo + dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('VLR_TITULO').AsCurrency;
                       end;
                    dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                  end;
               dmGeral.BUS_CD_M_NFE_CXA.Next;
            end;
       end;
    dmGeral.BUS_CD_M_NFE_CXA.First;
    dmGeral.BUS_CD_M_NFE_TIT_CXA.First;

    TotGeral     := totAvista + totAprazo;

    VendasAvista := FormatCurr('###,###,###,###,##0.00',totAvista);
    VendasAprazo := FormatCurr('###,###,###,###,##0.00',totAprazo);
    TotalVendas  := FormatCurr('###,###,###,###,##0.00',totAvista + totAprazo);
  finally
    dmGeral.BUS_CD_M_NFE_CXA.Filtered := false;
  end;
end;



procedure FatAtuDadosTelaCxa;
begin
   dmGeral.BUS_CD_M_NFE_CXA.Close;
   dmGeral.BUS_CD_M_NFE_CXA.Data :=
        dmGeral.BUS_CD_M_NFE_CXA.DataRequest(
                 VarArrayOf([96,0,'','','']));

   dmGeral.BUS_CD_M_PAG_DIA.close;
   dmGeral.BUS_CD_M_PAG_DIA.Data :=
        dmGeral.BUS_CD_M_PAG_DIA.DataRequest(
                 VarArrayOf([0,'','','']));

   dmGeral.BUS_CD_M_REC_DIA.close;
   dmGeral.BUS_CD_M_REC_DIA.Data :=
        dmGeral.BUS_CD_M_REC_DIA.DataRequest(
                 VarArrayOf([0,'','','']));


  if not dmGeral.FIN_CD_M_CXA.IsEmpty then
     begin
       dmGeral.BUS_CD_M_NFE_CXA.Close;
       dmGeral.BUS_CD_M_NFE_CXA.Data :=
            dmGeral.BUS_CD_M_NFE_CXA.DataRequest(
                     VarArrayOf([96,1,''''+ dmGeral.CAD_CD_C_PARid_empresa.AsString +'''',
                                   dmGeral.FIN_CD_M_CXA.FieldByName('dta_abertura').AsString,
                                   dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString]));

       dmGeral.BUS_CD_M_NFE_TIT_CXA.IndexFieldNames := 'DTA_VENCIMENTO';

       dmGeral.BUS_CD_M_PAG_DIA.close;
       dmGeral.BUS_CD_M_PAG_DIA.Data :=
            dmGeral.BUS_CD_M_PAG_DIA.DataRequest(
                     VarArrayOf([1,dmGeral.CAD_CD_C_PARid_empresa.AsString,
                                 dmGeral.FIN_CD_M_CXA.FieldByName('dta_abertura').AsString,
                                 dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString]));

       dmGeral.BUS_CD_M_REC_DIA.close;
       dmGeral.BUS_CD_M_REC_DIA.Data :=
            dmGeral.BUS_CD_M_REC_DIA.DataRequest(
                     VarArrayOf([1,dmGeral.CAD_CD_C_PARid_empresa.AsString,
                                 dmGeral.FIN_CD_M_CXA.FieldByName('dta_abertura').AsString,
                                 dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString]));
     end;
end;


function  FatVerifDadosNfCxa(tipo: integer): Boolean;
var
   VlrTotalLiqPedidos, diferenca: Currency;
begin
   result := true;

   { tipo  1 - Teste para Nfe
           2 - Teste para Cupom Fiscal }

   if tipo = 1 then
      begin
         if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
            begin
              ShowMessage('Não existe registro de nota fiscal.');
              result := false;
              exit;
            end;

         if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean then
            begin
              ShowMessage('Nota fiscal com pré-venda.');
              result := false;
              exit;
            end;

         if (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) and
            (FAT_FM_M_CXA_NFE.miFaturaSemPedido.Checked = false) and
            (FAT_FM_M_CXA_NFE.cxanfe_GeraNFCe = false)
              then
            begin
               if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_atualiza_fin_base_prod').AsBoolean then
                  begin
                     if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'S') AND
                        (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0) then
                         begin
                           if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_1').AsInteger = 0) and
                              (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_2').AsInteger = 0) and
                              (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_3').AsInteger = 0) and
                              (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_4').AsInteger = 0) and
                              (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_5').AsInteger = 0) then
                               begin
                                 ShowMessage('É preciso que informe o nro do(s) pedido(s) da produção.');
                                 result := false;
                                 exit;
                               end
                           else
                               begin
                                 if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_prod_1').AsInteger = 0) then
                                     begin
                                       ShowMessage('O campo Pedido 1 da produção é obrigatório.');
                                       result := false;
                                       exit;
                                     end;

                                 VlrTotalLiqPedidos :=
                                    dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_1').AsCurrency +
                                    dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_2').AsCurrency +
                                    dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_3').AsCurrency +
                                    dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_4').AsCurrency +
                                    dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido_ped_prod_5').AsCurrency;

                                 diferenca := VlrTotalLiqPedidos - dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido').AsCurrency;

                                 if VlrTotalLiqPedidos = 0 then
                                    begin
                                       ShowMessage('Pedido(s) da produção sem valor.');
                                       result := false;
                                       exit;
                                     end;

                                 if ( (diferenca < 0) and (diferenca < -0.05) ) or
                                    ( (diferenca > 0) and (diferenca >  0.05) )  then
                                    begin
                                       // Pra Globo basta verificar a ocorrencia do primeiro registro pois quando e boleto as
                                       //  demais formas de pagamento sempre é boleto.
                                       if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_docimpresso').AsInteger = 4 then // Boleto
                                          begin
                                             ShowMessage('O valor da Nota fiscal está diferente do total do(s) pedido(s) da produção.' + #13+
                                                         'Diferença de : R$ ' + FormatCurr('###,###,##0.00',diferenca) );
                                             result := false;
                                             exit;
                                          end;
                                    end;
                               end;
                         end;
                  end;
            end;

         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'S') or
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'R') then
             begin
               if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 1)   and   // Jurídica
                  (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CONTRIBUINTE').AsInteger = 0 {Contribuinte de ICMS}) then
                  begin
                    if (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString) = '') then
                        begin
                          ShowMessage('O campo "Inscrição estadual" do cadastro deste cliente está vazio.');
                          result := false;
                          exit;
                        end;

                    if (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString) = 'ISENTO') then
                        begin
                          ShowMessage('O campo "Inscrição estadual" do cadastro deste cliente não pode ter o valor ISENTO.');
                          result := false;
                          exit;
                        end;
                     //Mariel retirou esse trecho para analise futura
                    {if (not StrToInt(trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString)) > 0)) then
                        begin
                          ShowMessage('O campo "Inscrição estadual" do cadastro deste cliente está vazio.');
                          result := false;
                          exit;
                        end;}
                  end;
              if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 0)   and   // Física
                 (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CONTRIBUINTE').AsInteger = 0 {Contribuinte de ICMS}) then
                  begin
                    dmGeral.BusCliente(0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMITENTE').AsString);
                    if trim(dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IP').AsString) = '' then
                        begin
                          ShowMessage('O campo "Inscrição do produtor" do cadastro deste cliente está vazio.');
                          result := false;
                          exit;
                        end;
                    dmGeral.BUS_CD_C_CLI.Close;
                  end;
             end;

         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'E') or
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'D') then
             begin
               if length(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CNPJCPF').AsString) = 14 then  // Jurídica
                  if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_doc_ie').AsString) = '' then
                     begin
                       ShowMessage('O campo "Inscrição estadual" do cadastro deste fornecedor está vazio.');
                       result := false;
                       exit;
                     end;
             end;

         dmGeral.BusCondPgto(0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_condicao_pag').AsString);
         if (dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger in [0,1]) then // Se a condição de pagamento for a vista ou a prazo
           begin
             if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_ativa_titulos').AsBoolean) and

                (not ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ind_nf').AsString ='2') and
                      (dmGeral.BUS_CD_M_NFE_TIT_CXA.RecordCount=0))) then
                 begin
                    dmGeral.BUS_CD_M_NFE_TIT_CXA.Cancel;
                    if dmGeral.BUS_CD_M_NFE_TIT_CXA.IsEmpty then
                       begin
                         ShowMessage('Nennhum forma de pagamento foi informada na nota fiscal!');
                         result := false;
                         exit;
                       end;

                     if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_CRITICA_CHQ').AsBoolean then
                        begin
                          dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                          while not dmGeral.BUS_CD_M_NFE_TIT_CXA.eof do
                             begin
                                dmGeral.BusFormaPgtos(0,dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_FORMA_PAG').AsString);
                                if not dmGeral.BUS_CD_C_FPG.IsEmpty then
                                   begin
                                     if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
                                        begin
                                          if (trim(dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('che_banco').AsString)    = '') or
                                             (trim(dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('che_agencia').AsString)  = '') or
                                             (trim(dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('che_conta').AsString)    = '') or
                                             (dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('che_numero').AsInteger        = 0)  or
                                             (trim(dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('che_emitente').AsString) = '') then
                                             begin
                                               ShowMessage('Existe forma de pagamento do tipo "Cheque" que está sem informações do cheque!');
                                               result := false;
                                               exit;
                                             end;
                                        end
                                    end;
                                dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                             end;
                        end;
                  end;
           end;
      end;

   if tipo = 2 then  // Teste para cupom fiscal
      begin

         if not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean) then
            begin
              ShowMessage('Nota fiscal não é pré-venda.');
              result := false;
              exit;
            end;
      end;

   if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
      (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) then
      begin
        ShowMessage('Nota fiscal já processada.');
        result := false;
        exit;
      end;

   if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02' then
      begin
        ShowMessage('Nota fiscal já foi cancelada.');
        result := false;
        exit;
      end;

   if dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime <
      dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime then
      begin
        ShowMessage('Operação não permitida! A data do seu caixa é menor que a data de emissão da nota fiscal selecionada.' + #13 +
                    'Verifique a data do seu caixa.');
        result := false;
        exit;
      end;
end;

function  FatVerifDadosTrans: Boolean;
var
  ExisteDig: Boolean;
  mens: String;
begin

  result    := true;
  ExisteDig := false;
  mens      := '';

  if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_transportadora').AsString) = '' then
     ExisteDig := true;

  if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_placa').AsString) = '' then
     ExisteDig := true;

  if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_uf').AsString) = '' then
     ExisteDig := true;

  if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_rntc').AsString) = '' then
     ExisteDig := true;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_qtde_vol').AsFloat = 0 then
     ExisteDig := true;

  if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_especie').AsString) = '' then
     ExisteDig := true;

  if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_marca').AsString) = '' then
     ExisteDig := true;

  if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_num_vol').AsString) = '' then
     ExisteDig := true;

  if ExisteDig then
     begin
        if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_transportadora').AsString) = '' then
           mens := Mens + '.Transportador'+ #13;

        if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_placa').AsString) = '' then
           mens := Mens + '.Placa'+ #13;

        if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_uf').AsString) = '' then
           mens := Mens + '.UF'+ #13;

        if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_rntc').AsString) = '' then
           mens := Mens + '.RNTC'+ #13;

        if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_qtde_vol').AsFloat = 0 then
           mens := Mens + '.Qtde'+ #13;

        if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_especie').AsString) = '' then
           mens := Mens + '.Espécie'+ #13;

        if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_marca').AsString) = '' then
           mens := Mens + '.Marca'+ #13;

        if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_num_vol').AsString) = '' then
           mens := Mens + '.Volume'+ #13;

        if trim(mens) <> '' then
           begin
             mens := 'Inconsistência nos campos: ' + #13 + mens;
             ShowMessage(mens);
             result := false;
           end;
     end;

end;

procedure FatValidaCxaNfeMaq(cdsTemp: TClientDataSet);
var
  xMensErro: string;
begin

  xMensErro := '';

  cdsTemp.Cancel;
  if cdsTemp.IsEmpty then
     begin
       xMensErro := 'Não há cartão na nota fiscal.' + #13;
     end
  else
     begin
       cdsTemp.First;
       while not cdsTemp.Eof do
             begin
                if cdsTemp.FieldByName('ID_MAQUINETA').Text = ''  then
                   begin
                     xMensErro := 'Informe a maquineta de cada cartão.' + #13;
                     cdsTemp.Last;
                   end;
                cdsTemp.Next;
             end;
       cdsTemp.First;
     end;

  if xMensErro<>'' then
     begin
        raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
        abort;
     end;

end;

procedure FatAtualMaqNfsTit(IdEmpresa,IdFiscal: integer; cdsTemp: TClientDataSet);
var
  SMPrincipal: TSMClient;
  retorno: String;
begin

   { TODO -oMaxsuel -cCriação : Método criado em 04/09/2015. }


    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
    try
      retorno   := SMPrincipal.enAtualMaqNfsTit(IdEmpresa,IdFiscal,cdsTemp.Data);

      if retorno <> 'OK' then
         begin
           ShowMessage(Retorno);
           abort;
         end;
    finally
      FreeAndNil(SMPrincipal);
    end;
end;

procedure FatGerarPreVendaCxa;
var
  SMPrincipal: TSMClient;
  id_fiscal,retorno: String;
begin
    // Geração da Pré-Venda
    if ((trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString) <> '') and
        (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString) <> '0')) then
       begin
         ShowMessage('O registro selecionado já tem número da nota fiscal.');
         abort;
       end;

    if MessageDlg('Deseja realmente gerar a pré-venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin

        id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsString;

        if not FAT_RN_M_CXA.FatVerifDadosNfCxa(1) then // Deve ser 1 mesmo.
           begin
             abort;
           end;

        if trim(dmGeral.FIN_CD_M_CXA.FieldByName('ecf_serial_impressora').AsString) = '' then
           begin
             Showmessage('Impressora fiscal não encontrada.');
             abort;
           end;

        dmGeral.BUS_CD_M_NFE_CXA.Filtered := true;
        dmGeral.BUS_CD_M_NFE_CXA.Filter   := ' PREVENDA = TRUE AND NUMERO = 0 AND STATUS = 0 ';
        if not dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
           begin
             Showmessage('É preciso que resolva a nota fiscal com pré-venda pendente.');
             dmGeral.BUS_CD_M_NFE_CXA.Filtered := false;
             abort;
           end;
        dmGeral.BUS_CD_M_NFE_CXA.Filtered := false;


        dmGeral.BUS_CD_C_ECF.Close;
        dmGeral.BUS_CD_C_ECF.Data :=
                dmGeral.BUS_CD_C_ECF.DataRequest(VarArrayOf([0,
                        dmGeral.FIN_CD_M_CXA.FieldByName('ecf_serial_impressora').AsString]));


        dmGeral.BUS_CD_C_ECF_FPG.Close;
        dmGeral.BUS_CD_C_ECF_FPG.Data :=
                dmGeral.BUS_CD_C_ECF_FPG.DataRequest(VarArrayOf([0,
                        dmGeral.FIN_CD_M_CXA.FieldByName('ecf_serial_impressora').AsString]));

        if trim(dmGeral.BUS_CD_C_ECF.FieldByName('PAF_SERIAL_PV').AsString) = '' then
           begin
             ShowMessage('O nro PAF SERIAL PV não foi encontrado no cadastro da ECF.' + #13 +
                         'Impressora fiscal: ' + dmGeral.BUS_CD_C_ECF.FieldByName('ECF_SERIAL_IMPRESSORA').AsString);
             abort;
           end;

        dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);

        dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
        while not dmGeral.BUS_CD_M_NFE_TIT_CXA.Eof do
             begin
               if not dmGeral.BUS_CD_C_ECF_FPG.Locate('ID_FORMA_PAG',dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_FORMA_PAG').AsInteger,[]) then
                  begin
                    ShowMessage('A forma de pagamento da nota fiscal não foi encontrado no cadastro da ECF.' + #13 +
                                 dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_FORMA_PAG').text + ' - ' +
                                 dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('INT_NOMEFPG').text);
                    dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                    abort;
                  end
               else
                  begin
                    if dmGeral.BUS_CD_C_ECF_FPG.FieldByName('ID_FORMA_PAG_ECF').text = '' then
                       begin
                         ShowMessage('Está faltando o código da forma de pagamento da ECF na forma de pagamento da nota fiscal: ' + #13 +
                                     dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('ID_FORMA_PAG').text + ' - ' +
                                     dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('INT_NOMEFPG').text + #13 +
                                     'Verifique o cadastro da ECF.');
                         abort;
                       end;
                  end;
               dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
             end;

        // Maxsuel Victor 22/09/2015
        // Se alterar algum código aqui , verificar se é necessário fazer pra Pré-Venda, pois o código
        // abaixo existe no momento da geração da pré-venda também.

        FAT_RN_M_NFE.FatRecalTributItens(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
        FAT_RN_M_NFE.FatFormarNfeObs(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
        fatNfeCalcTotal(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
        dmGeral.BUS_CD_M_NFE_CXA.Post;
        dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);

        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          retorno   := SMPrincipal.enGerarPreVenda(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsString,
                                                   dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString,
                                                   dmGeral.BUS_CD_C_ECF.FieldByName('PAF_SERIAL_PV').AsString,
                                                   dmGeral.BUS_CD_C_ECF.FieldByName('ecf_serial_impressora').AsString,
                                                   dmGeral.BUS_CD_C_ECF.FieldByName('ecf_marca_impressora').AsString,
                                                   dmGeral.BUS_CD_C_ECF.FieldByName('ecf_modelo_impressora').AsString,
                                                   dmGeral.BUS_CD_C_ECF.FieldByName('ecf_caixa').AsString);
          if retorno <> 'OK' then
             begin
               ShowMessage(Retorno);
               abort;
             end;

        FAT_RN_M_CXA.FatAtuDadosTelaCxa;
        dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
        finally
          FreeAndNil(SMPrincipal);
        end;
        // ---------------------------------------------------------------------
      end;
end;


procedure FatDesfazerPreVendaCxa;
var
  SMPrincipal: TSMClient;
  id_fiscal,retorno: String;
begin


    if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
      begin
        ShowMessage('Não existe registro de nota fiscal.');
        exit;
      end;


    if (not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean=true)) then
       begin
         ShowMessage('A nota não é pré-venda.');
         abort;
       end;

    if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger>0) then
       begin
         ShowMessage('A nota possui número.');
         abort;
       end;


   dmgeral.CD_BR_CUPOM_MESTRE.Close;
       dmgeral.CD_BR_CUPOM_MESTRE.Data :=
           dmgeral.CD_BR_CUPOM_MESTRE.DataRequest(VarArrayOf([8,
                     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ecf_prevenda').AsString]));
   if not dmgeral.CD_BR_CUPOM_MESTRE.IsEmpty then
     begin
        ShowMessage('Há cupom correspondente com pré-venda.');
        dmgeral.CD_BR_CUPOM_MESTRE.Close;
        abort;
     end;


    if MessageDlg('Deseja realmente desfazer a pré-venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsString;

        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          retorno   := SMPrincipal.enDesfazerPreVenda(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsString);
          if retorno <> 'OK' then
             begin
               ShowMessage(Retorno);
               abort;
             end;

        FAT_RN_M_CXA.FatAtuDadosTelaCxa;
        dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
        finally
          FreeAndNil(SMPrincipal);
        end;
        // ---------------------------------------------------------------------
      end;
end;

procedure FatProcessarCupomCxa;
var
  id_fiscal,Mens_Erro: String;
  TesteOk, CupomCancelado: Boolean;
  NroCupom: integer;
  ReabrePed: String;
  vlrTotalTit:currency;
  SMPrincipal: TSMClient;
  PathImg:string;
  LogoEmpresa: TfrxPictureView;
begin
  try

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger >0) then
     begin
       ShowMessage('Operação não permitida, pois a nota é do tipo garantia.');
       exit;
     end;

  id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
  FAT_RN_M_CXA.FatAtuDadosTelaCxa;

  // Finalizar o cupom fiscal
  dmGeral.BUS_CD_M_NFE_CXA.Filtered := true;
  dmGeral.BUS_CD_M_NFE_CXA.Filter   := ' PREVENDA = TRUE AND NUMERO = 0 AND STATUS = 0' ;

  if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       ShowMessage('Não existe registro(pré-venda) para poder finalizar como Cupom Fiscal.');
       dmGeral.BUS_CD_M_NFE_CXA.Filtered := false;
       exit;
     end;

  dmGeral.BUS_CD_M_NFE_CXA.Filtered := false;

  dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);

  if not FAT_RN_M_CXA.FatVerifDadosNfCxa(2) then
     begin
       exit;
     end;

  if not dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
        id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;

        TesteOk   := true;

        Mens_Erro := '';

        CupomCancelado := false;

        NroCupom := 0;

        dmGeral.CD_BR_PREVENDA.Close;
        dmGeral.CD_BR_PREVENDA.Data :=
          dmGeral.CD_BR_PREVENDA.DataRequest(VarArrayOf([1,
                  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ECF_PREVENDA').AsString]));


        if  (NOT (dmGeral.CD_BR_PREVENDA.FieldByName('N_CUPOM').AsInteger >0))  then
           begin
             // 'Cupom não emitido'
             TesteOK := False;
             Mens_Erro := Mens_Erro + '.Cupom não emitido' + #13;
           end
        else
          begin
             NroCupom := dmGeral.CD_BR_PREVENDA.FieldByName('N_CUPOM').AsInteger;
          end;

        if dmGeral.CD_BR_PREVENDA.FieldByName('CANCELADO').AsString = 'S' then
           begin
             // 'Cupom cancelado'
             //TesteOK   := False;
             //Mens_Erro := Mens_Erro + '.Cupom cancelado' + #13;

             CupomCancelado := true;
           end;

        if (dmGeral.CD_BR_PREVENDA.FieldByName('CCF').AsInteger = 0) then
            begin
              //  'Nota fiscal sem o nro do cupom fiscal
              //  'Clique no botão "Atualizar Tela", e tente novamente!'
              TesteOK := False;
              Mens_Erro := Mens_Erro + '.Número do cupom fiscal não foi gerado' + #13;
            end;
        {else
            begin
              NroCupom := dmGeral.CD_BR_PREVENDA.FieldByName('CCF').AsInteger;
            end;}

        if TesteOK = true then
           begin
             if not FatVerifEnSoftXCupomCxa then
                begin
                  abort;
                end;

             ReabrePed := '';
             if CupomCancelado then
                begin
                  {if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0 then
                     begin
                       ReabrePed := 'N';
                       if MessageDlg('Deseja reabrir o pedido de venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                          begin
                            ReabrePed := 'S';
                          end;
                     end; }
                   if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0)  then
                      begin

                         ReabrePed := 'S';
                         dmGeral.BUS_CD_M_NFE.Close;
                         dmGeral.BUS_CD_M_NFE.Data :=
                         dmGeral.BUS_CD_M_NFE.DataRequest(
                            VarArrayOf([15,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger]));
                         dmGeral.BUS_CD_M_NFE.First;
                         if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                            begin
                              while not dmGeral.BUS_CD_M_NFE.Eof do
                                 begin
                                   if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                                         dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                                      begin
                                        if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                           (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                            (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                            (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                            (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                               ReabrePed := 'N';

                                      end;
                                   dmGeral.BUS_CD_M_NFE.Next;
                                 end;
                            end;
                         dmGeral.BUS_CD_M_NFE.close;

                         if ReabrePed = 'S' then
                            begin
                             if MessageDlg('Deseja reabrir pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                begin
                                  ReabrePed := 'S';
                                end
                             else
                                begin
                                   ReabrePed := 'N';
                                end;
                            end
                         else
                            begin
                              ShowMessage('Não será possivel reabrir pedido pois há notas faturadas.');
                            end;
                      end;




                  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0 then
                     begin
                       ReabrePed := 'S';
                       dmGeral.BUS_CD_M_NFE.Close;
                       dmGeral.BUS_CD_M_NFE.Data :=
                       dmGeral.BUS_CD_M_NFE.DataRequest(
                          VarArrayOf([13,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger]));
                       dmGeral.BUS_CD_M_NFE.First;
                       if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                          begin
                            while not dmGeral.BUS_CD_M_NFE.Eof do
                               begin
                                 if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                                       dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                                    begin
                                       if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                          (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                           (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                           (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                           (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0))) then
                                            ReabrePed := 'N';
                                    end;
                                 dmGeral.BUS_CD_M_NFE.Next;
                               end;
                          end;
                       dmGeral.BUS_CD_M_NFE.close;

                       if ReabrePed = 'S' then
                          begin
                           if MessageDlg('Deseja reabrir ordem serviço?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                              begin
                                ReabrePed := 'S';
                              end
                           else
                              begin
                                 ReabrePed := 'N';
                              end;
                          end
                       else
                          begin
                            ShowMessage('Não será possivel reabrir OS pois há notas faturadas.');
                          end;
                     end;
                end;

             SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
             try
               SMPrincipal.enFinalizarCupomCxa(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger,
                                               NroCupom,
                                               CupomCancelado,
                                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ECF_PREVENDA').AsString,
                                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ecf_serial_impressora').AsString,
                                               dmGeral.FIN_CD_M_CXA.FieldByName('dta_abertura').AsDateTime,ReabrePed);
             finally
                 FreeAndNil(SMPrincipal);
             end;




             if (dmGeral.BUS_CD_M_NFE_TIT_CXA.RecordCount>0) then
               begin

                 vlrTotalTit :=0;
                 dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                 while not dmGeral.BUS_CD_M_NFE_TIT_CXA.eof do
                   begin
                     if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('INT_DOCIMPRESSO').AsInteger in [3,5,6] then
                       begin
                         vlrTotalTit :=vlrTotalTit + dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('VLR_TITULO').AsCurrency;
                       end;
                     dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                   end;

                 if vlrTotalTit > 0 then
                   begin
                      if MessageDlg('Deseja imprimir o recibo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                        begin
                            try

                             dmGeral.BUS_CD_M_NFE_CXA.Filtered := true;
                             dmGeral.BUS_CD_M_NFE_CXA.Filter := 'id_fiscal ='+id_fiscal;

                             dmGeral.BUS_CD_M_NFE_TIT_CXA.Filtered := true;
                             dmGeral.BUS_CD_M_NFE_TIT_CXA.Filter := 'int_docimpresso = 3 or int_docimpresso = 5 or int_docimpresso = 6';

                             dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
                             FAT_FM_M_CXA_NFE.FAT_FR_M_CXA_RVS.Variables['vlr_total_tit'] := QuotedStr(FormatCurr('###,###,##0.00' ,vlrTotalTit));
                             FAT_FM_M_CXA_NFE.FAT_FR_M_CXA_RVS.Variables['ft_vlrExtenso'] := QuotedStr(Extenso(vlrTotalTit));

                             if FileExists(PathImg) then
                                begin
                                   LogoEmpresa := TfrxPictureView(FAT_FM_M_CXA_NFE.FAT_FR_M_CXA_RVS.FindObject('imgEmpresa1'));
                                   if Assigned(LogoEmpresa) then
                                      LogoEmpresa.Picture.LoadFromFile(PathImg);

                                   LogoEmpresa := TfrxPictureView(FAT_FM_M_CXA_NFE.FAT_FR_M_CXA_RVS.FindObject('imgEmpresa2'));
                                   if Assigned(LogoEmpresa) then
                                      LogoEmpresa.Picture.LoadFromFile(PathImg);
                                end;
                             dmGeral.BusCodigoRevListMestre(true,false,FAT_FM_M_CXA_NFE.FAT_FR_M_CXA_RVS.Name,xCodLme,xRevLme,nil);
                             FAT_FM_M_CXA_NFE.FAT_FR_M_CXA_RVS.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                             FAT_FM_M_CXA_NFE.FAT_FR_M_CXA_RVS.Variables['Opcoes'] := QuotedStr('');
                             FAT_FM_M_CXA_NFE.FAT_FR_M_CXA_RVS.PrepareReport();
                             FAT_FM_M_CXA_NFE.FAT_FR_M_CXA_RVS.ShowReport();
                            finally
                                dmGeral.BUS_CD_M_NFE_CXA.Filtered := false;
                                dmGeral.BUS_CD_M_NFE_TIT_CXA.Filtered := false;
                            end;
                        end;
                   end;
               end;


           end
        else
           begin
             if Mens_Erro <> '' then
                begin
                  ShowMessage('Erro ao tentar faturar a pré-venda! ' + #13 +
                               'Id fiscal: ' +  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString      + #13 +
                               'Pré-venda: ' +  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ECF_PREVENDA').AsString  + #13 +
                               'Erro(s)....: ' + #13 +
                               Mens_Erro);
                end;
           end;
     end;
  finally
      dmGeral.BUS_CD_M_NFE_CXA.Filtered := false;
      id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
      FAT_RN_M_CXA.FatAtuDadosTelaCxa;
      dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
  end;
end;

function  FatVerifEnSoftXCupomCxa: Boolean;
var
  TotVenctosGerConWin,  TotVenctosNF: Currency;
begin
  result := true;

  TotVenctosGerConWin := 0;
  TotVenctosNF        := 0;

  // Busca as formas de pagamento do cupom fiscal em questão
  // agrupando por código de forma de pagemento da ECF
  dmGeral.BUS_CD_BR_PREVENDA.Close;
  dmGeral.BUS_CD_BR_PREVENDA.Data :=
          dmGeral.BUS_CD_BR_PREVENDA.DataRequest(VarArrayOf([
                 dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ecf_prevenda').AsString]));
  if not dmGeral.BUS_CD_BR_PREVENDA.IsEmpty then
     begin
       while not dmGeral.BUS_CD_BR_PREVENDA.eof do
          begin
            TotVenctosGerConWin := TotVenctosGerConWin +
                              dmGeral.BUS_CD_BR_PREVENDA.FieldByName('VALOR').AsCurrency;
            dmGeral.BUS_CD_BR_PREVENDA.Next;
          end;
       dmGeral.BUS_CD_BR_PREVENDA.First;
     end;


  // Verifica se as formas de pagamento da ECF está relacionada com o cadastro de tipo de título do enLoja
  dmGeral.BUS_CD_C_ECF_FPG.Close;
  dmGeral.BUS_CD_C_ECF_FPG.Data :=
  dmGeral.BUS_CD_C_ECF_FPG.DataRequest(VarArrayOf([0,
                           dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ecf_serial_impressora').AsString]));

  while not dmGeral.BUS_CD_BR_PREVENDA.Eof do
     begin
       if not dmGeral.BUS_CD_C_ECF_FPG.Locate('ID_FORMA_PAG_ECF',dmGeral.BUS_CD_BR_PREVENDA.FieldByName('COD_FORMA_PAG').AsInteger,[]) then
          begin
             ShowMessage('A forma de pagamento da ECF abaixo precisa estar relacionada com alguma forma de pagamento(correspondente) do sistema enLoja.' + #13 +
                         'Forma de pagamento ECF: ' + dmGeral.BUS_CD_BR_PREVENDA.FieldByName('COD_FORMA_PAG').text + #13 +
                         'Verique o cadastro da ECF.');
             result := false;
             abort;
          end;
       dmGeral.BUS_CD_BR_PREVENDA.Next;
    end;
  dmGeral.BUS_CD_BR_PREVENDA.First;


  // Busca as formas de pagamento da NF agrupando por código de forma de pagemento da ECF
  dmGeral.BUS_CD_M_NFE_TIT_GRP.Close;
  dmGeral.BUS_CD_M_NFE_TIT_GRP.Data :=
          dmGeral.BUS_CD_M_NFE_TIT_GRP.DataRequest(VarArrayOf([
                 dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ecf_serial_impressora').AsString,
                 dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString]));

  if not dmGeral.BUS_CD_M_NFE_TIT_GRP.IsEmpty then
     begin
       while not dmGeral.BUS_CD_M_NFE_TIT_GRP.Eof do
          begin

             TotVenctosNF := TotVenctosNF +
                             dmGeral.BUS_CD_M_NFE_TIT_GRP.FieldByName('VLR_TITULO').AsCurrency;

             dmGeral.BUS_CD_M_NFE_TIT_GRP.Next;
          end;
       dmGeral.BUS_CD_M_NFE_TIT_GRP.First;
     end;

  if TotVenctosNF <> TotVenctosGerConWin then
     begin
       ShowMessage('Total de vencimentos da NF está diferente do total dos vencimentos do GerConWin.' + #13 +
                   'Total Nota......: ' + formatcurr('R$ ###,###,##0.00', TotVenctosNF) + #13 +
                   'Total GerConWin : ' + formatcurr('R$ ###,###,##0.00', TotVenctosGerConWin));


       result := false;
       abort;
     end;
end;

procedure FatEncerrPedNfe;
begin
   dmGeral.BUS_CD_M_NFE_CXA.Edit;
   dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString        := 'X';
   dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger     := 0;
   dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean    := true;
   dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger      := 1;
   dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime :=
           dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;
   dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_DOCUMENTO').AsDateTime :=
           dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;
   dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ABERTURA').AsInteger :=
           dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsInteger;

   if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'S') and
      (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0)  then
     begin
       dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger  :=
           dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger;
     end
   else
     begin
       dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger  :=
           dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger;
     end;

   FAT_RN_M_NFE.FatGravarNumParcNfe(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_TIT_CXA);
   try
      dmGeral.BUS_CD_M_NFE_CXA.Post;
      dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
   except
     on e: Exception do
        begin
          ShowMessage('Erro ao tentar encerrar a nota fiscal: ' + e.Message);
        end;
   end;
end;



{procedure FatGerarNfeDeEcfCxa(IdFiscal: integer);
var
  SMPrincipal: TSMClient;
  id_fiscal_ori, retorno: String;

begin

  retorno := '';

  if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       ShowMessage('Não existe registro de nota fiscal.');
       exit;
     end;

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger = 0) or
     (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 0) then
     begin
       ShowMessage('O registro selecionado para gerar a Nfe não foi finalizado ainda.');
       exit;
     end;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_ecf').AsInteger <> 1  then
     begin
       ShowMessage('A nota origem deve ser um Cupom Fiscal.');
       exit;
     end;

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02') then
     begin
       ShowMessage('Operação não permitada! O cupom fiscal foi cancelado.');
       exit;
     end;

  id_fiscal_ori := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    retorno   := SMPrincipal.enGerarNfe(IdFiscal,0);
    if retorno <> 'OK' then
       begin
         ShowMessage(Retorno);
         abort;
       end;
    FAT_RN_M_CXA.FatAtuDadosTelaCxa;
    dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal_ori,[]);

  finally
    FreeAndNil(SMPrincipal);
  end;
end;   }

procedure FatGerarCuponsGerConWin(IdAbertura: integer);
var
  SMPrincipal: TSMClient;
begin

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    SMPrincipal.enGerCupomGerConWin(IdAbertura);
  finally
    FreeAndNil(SMPrincipal);
  end;

end;

function FatAtuDadosCarCtaAbe(cdsResCartao,cdsDetBxaCartao,cdsDetNotaCreCartao,cdsDetNFCartao,cdsCartao:TClientDataSet):String;
begin

   cdsCartao.First; // cds com os cartões das notas fiscais e baixa do contas a receber
   while not cdsCartao.eof do
      begin
        if cdsCartao.FieldByName('TIPO').Text = 'NF' then
           begin
              if cdsDetNFCartao.Locate('ID_FISCAL;ID_FORMA_PAG',VarArrayOf([cdsCartao.FieldByName('ID_FISCAL').AsInteger,
                                                                              cdsCartao.FieldByName('ID_FORMA_PAG').AsInteger]),[]) then
                 begin
                   if cdsResCartao.Locate('ID_FORMA_PAG',cdsCartao.FieldByName('ID_FORMA_PAG').AsInteger,[]) then
                      begin
                        cdsCartao.Edit;
                        cdsCartao.FieldByName('CAR_TAXA_OPE').AsFloat          := cdsDetNFCartao.FieldByName('TAXA').AsFloat;
                        cdsCartao.FieldByName('car_n_lote').AsString           := cdsResCartao.FieldByName('NUM_LOTE').AsString;
                        cdsCartao.FieldByName('car_n_lote_id_resp').AsInteger  := dmGeral.FIN_CD_M_CXA.FieldByName('ID_FUNCIONARIO').AsInteger;
                        cdsCartao.FieldByName('car_n_lote_id_conta').AsInteger := dmGeral.FIN_CD_M_CXA.FieldByName('ID_CONTA').AsInteger;

                        if cdsDetNFCartao.FieldByName('dias_acres_vencto').AsInteger > 0 then
                           begin
                              cdsCartao.FieldByName('dta_vencimento').AsDateTime :=
                                  cdsCartao.FieldByName('dta_vencimento').AsDateTime +
                                      cdsDetNFCartao.FieldByName('dias_acres_vencto').AsInteger;
                           end;

                        cdsCartao.Post;
                      end
                 end;
           end;

        if cdsCartao.FieldByName('TIPO').Text = 'BXA' then
           begin
              if cdsDetBxaCartao.Locate('ID_BAIXA;ID_FORMA_PAG',VarArrayOf([cdsCartao.FieldByName('ID_BAIXA').AsInteger,
                                                                              cdsCartao.FieldByName('ID_FORMA_PAG').AsInteger]),[]) then
                 begin
                   if cdsResCartao.Locate('ID_FORMA_PAG',cdsCartao.FieldByName('ID_FORMA_PAG').AsInteger,[]) then
                      begin
                        cdsCartao.Edit;
                        cdsCartao.FieldByName('CAR_TAXA_OPE').AsFloat          := cdsDetBxaCartao.FieldByName('TAXA').AsFloat;
                        cdsCartao.FieldByName('car_n_lote').AsBCD              := cdsResCartao.FieldByName('NUM_LOTE').AsString;
                        cdsCartao.FieldByName('car_n_lote_id_resp').AsInteger  := dmGeral.FIN_CD_M_CXA.FieldByName('ID_FUNCIONARIO').AsInteger;
                        cdsCartao.FieldByName('car_n_lote_id_conta').AsInteger := dmGeral.FIN_CD_M_CXA.FieldByName('ID_CONTA').AsInteger;
                        if cdsDetBxaCartao.FieldByName('dias_acres_vencto').AsInteger > 0 then
                           begin
                              cdsCartao.FieldByName('dta_vencimento').AsDateTime :=
                                  cdsCartao.FieldByName('dta_vencimento').AsDateTime +
                                      cdsDetBxaCartao.FieldByName('dias_acres_vencto').AsInteger;
                           end;

                        cdsCartao.Post;
                      end
                 end;
           end;

        if cdsCartao.FieldByName('TIPO').Text = 'CRE' then
           begin
              if cdsDetNotaCreCartao.Locate('ID_CREDITO;ID_FORMA_PAG',VarArrayOf([cdsCartao.FieldByName('ID_CREDITO').AsInteger,
                                                                                  cdsCartao.FieldByName('ID_FORMA_PAG').AsInteger]),[]) then
                 begin
                   if cdsResCartao.Locate('ID_FORMA_PAG',cdsCartao.FieldByName('ID_FORMA_PAG').AsInteger,[]) then
                      begin
                        cdsCartao.Edit;
                        cdsCartao.FieldByName('CAR_TAXA_OPE').AsFloat          := cdsDetNotaCreCartao.FieldByName('TAXA').AsFloat;
                        cdsCartao.FieldByName('car_n_lote').AsBCD              := cdsResCartao.FieldByName('NUM_LOTE').AsString;
                        cdsCartao.FieldByName('car_n_lote_id_resp').AsInteger  := dmGeral.FIN_CD_M_CXA.FieldByName('ID_FUNCIONARIO').AsInteger;
                        cdsCartao.FieldByName('car_n_lote_id_conta').AsInteger := dmGeral.FIN_CD_M_CXA.FieldByName('ID_CONTA').AsInteger;
                        if cdsDetNotaCreCartao.FieldByName('dias_acres_vencto').AsInteger > 0 then
                           begin
                              cdsCartao.FieldByName('dta_vencimento').AsDateTime :=
                                  cdsCartao.FieldByName('dta_vencimento').AsDateTime +
                                      cdsDetNotaCreCartao.FieldByName('dias_acres_vencto').AsInteger;
                           end;

                        cdsCartao.Post;
                      end
                 end;
           end;
        cdsCartao.Next;
      end;
   cdsResCartao.First;         // Totais por cartão.
   cdsDetNFCartao.First;       // cds com os cartões por nota fiscal
   cdsDetBxaCartao.First;      // cds com os cartões por baixa do contas a receber
   cdsDetNotaCreCartao.First;  // cds com os cartões de Nota de Credito
   cdsCartao.First;            // cds com o cartões da venda do dia
end;

function FatValidaCtaAber(cdsResCartao,cdsDetBxaCartao,cdsDetNFCartao,cdsCartao:TClientDataSet): Boolean;
var
  mens: String;
  SMPrincipal : TSMClient;
begin

  result := true;

  mens   := '';
{  try
    dmGeral.BUS_CD_M_NFE_CXA.Filtered := true;
    dmGeral.BUS_CD_M_NFE_CXA.Filter :=  ' ID_EMPRESA = ' +
                                           dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString +
                                        ' AND NUMERO > 0 and STATUS = 0 and NFE_COD_SIT = ''00'' ';
    if not dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
       begin
         Showmessage('Não é permitido fechar caixa com nota fiscal pendente com número.' + #13 +
                     'É preciso que resolva essa situação de nota fiscal.');
         abort;
       end;
  finally
    dmGeral.BUS_CD_M_NFE_CXA.Filtered := false;
    dmGeral.BUS_CD_M_NFE_CXA.First;
  end;   }

  try
    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

    mens := SMPrincipal.enVerifNfePendente(dmGeral.FIN_CD_M_CXA.FieldByName('ID_EMPRESA').AsString,
                                           dmGeral.FIN_CD_M_CXA.FieldByName('ID_FUNCIONARIO').AsString);
    if trim(mens) <> '' then
       begin
         Showmessage('Existe nota fiscais com número e que continua em aberto!' + #13 +
                     'Ajuda1: Pode ser nota fiscal que tenha esquecido de concluir o faturamento;' + #13 +
                     'Ajuda2: Pode ser nota fiscal que precisa ser inutilizada;');
         ShowMessage('Nota fiscais a resolver: ' + #13 + mens);
         result := false;
         exit;
       end;

  finally
     FreeAndNil(SMPrincipal);
  end;

   // Comentado por Maxsuel Victor , 13/08/2016 a pedido de Mariel, pois isso funcionava mais para
   // a situação do ex-Cliente Mercadinho.
  {dmGeral.CD_BR_CUPOM_MESTRE.Close;
  dmGeral.CD_BR_CUPOM_MESTRE.Data :=
          dmGeral.CD_BR_CUPOM_MESTRE.DataRequest(VarArrayOf([6,
                 dmGeral.FIN_CD_M_CXA.FieldByName('ECF_SERIAL_IMPRESSORA').AsString,
                 dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsString]));
  if not dmGeral.CD_BR_CUPOM_MESTRE.IsEmpty then
     begin
       Showmessage('Existe cupom fiscal que não foi importado para o sistema enSoft.' + #13 +
                   'Ajuda1: Acesse a tela de emissão de notas fiscais e clique no botão "Atualizar tela".');
       result := false;
       exit;
     end;}

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cxa_inf_lote_car_fech').AsBoolean then
     begin
       // 1º Teste
       if not cdsResCartao.IsEmpty then
          begin
            cdsResCartao.First;
            while not cdsResCartao.eof do
               begin
                 if trim(cdsResCartao.FieldByName('NUM_LOTE').AsString) = '' then
                    begin
                      mens := 'Na Aba "Totais por Cartão" existe cartão sem o número de lote.' +#13;
                      cdsResCartao.Last;
                    end;
                 cdsResCartao.Next;
               end;
            cdsResCartao.First;
          end;
      end;

   dmGeral.BUS_CD_M_NFE_TIT_MAQ.Close;
   dmGeral.BUS_CD_M_NFE_TIT_MAQ.Data :=
          dmGeral.BUS_CD_M_NFE_TIT_MAQ.DataRequest(VarArrayOf([0,
                 dmGeral.FIN_CD_M_CXA.FieldByName('ID_EMPRESA').AsString,
                 dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').AsString]));
   if not dmGeral.BUS_CD_M_NFE_TIT_MAQ.IsEmpty then
      begin
        mens := 'Nota Fiscais sem maquineta informada: ' +#13;
        dmGeral.BUS_CD_M_NFE_TIT_MAQ.First;
        while not dmGeral.BUS_CD_M_NFE_TIT_MAQ.eof do
           begin
             mens := mens + 'Nota Fiscal: ' + dmGeral.BUS_CD_M_NFE_TIT_MAQ.FieldByName('NUMERO').AsString + ' - ' +
                          'Cartão: ' + dmGeral.BUS_CD_M_NFE_TIT_MAQ.FieldByName('int_nomefpg').AsString + #13;
             dmGeral.BUS_CD_M_NFE_TIT_MAQ.Next;
           end;
        dmGeral.BUS_CD_M_NFE_TIT_MAQ.close;
      end;

   if mens <> '' then
      begin
        Showmessage('Existe inconsistências:' + #13 + mens);
        result := false;
        exit;
      end;

   if not cdsDetNFCartao.IsEmpty then
      begin
        cdsDetNFCartao.First;
        while not cdsDetNFCartao.eof do
           begin
             if cdsDetNFCartao.FieldByName('FAIXA').AsString = 'SEM FAIXA' then
                begin
                  mens := 'Existe cartão sem faixa! Acesse a aba "Detalhe" para detectar o cartão com esta inconsistência.' +#13;
                  cdsDetNFCartao.Last;
                end
             else
                if cdsDetNFCartao.FieldByName('TAXA').AsFloat = 0 then
                   begin
                     mens := 'Existe cartão com taxa igual a 0! Acesse a aba "Detalhe" para detectar o cartão com esta inconsistência' +#13;
                     cdsDetNFCartao.Last;
                   end;
             cdsDetNFCartao.Next;
           end;
        cdsDetNFCartao.First;
      end;

   if mens <> '' then
      begin
        Showmessage('Existe inconsistências:' + #13 + mens);
        result := false;
        exit;
      end;

   // 2º Teste
   mens  := '';

   cdsDetNFCartao.First; // cds com os cartões por nota fiscal
   while not cdsDetNFCartao.eof do
      begin
        if cdsCartao.Locate('ID_FISCAL;ID_FORMA_PAG',VarArrayOf([cdsDetNFCartao.FieldByName('ID_FISCAL').AsInteger,
                                                                  cdsDetNFCartao.FieldByName('ID_FORMA_PAG').AsInteger]),[]) then
           begin
             if not cdsResCartao.Locate('ID_FORMA_PAG',cdsCartao.FieldByName('ID_FORMA_PAG').AsInteger,[]) then
                begin
                  mens := 'Cartão: ' + cdsCartao.FieldByName('ID_MOV_CARTAO').AsString + ' - ' +
                          'Id Fiscal: ' + cdsCartao.FieldByName('ID_VENDA').AsString + ' - ' +
                          'Vencimento: ' + cdsCartao.FieldByName('DTA_CREDITO').AsString + ' - ' +
                          'Valor: ' + cdsCartao.FieldByName('VLR_LIQUIDO').AsString;
                end;
           end;
        cdsDetNFCartao.Next;
      end;
   cdsDetNFCartao.First;

   if mens <> '' then
      begin
        Showmessage('Existe cartão que não foi encontrado na aba "Total de cartões"' + #13 + mens);
        result := false;
      end;
end;

procedure BUS_CD_M_CXA_RES_CARnum_loteChange;
begin
   { if dmGeral.BUS_CD_M_CXA_RES_CAR.FieldByName('NUM_LOTE').AsExtended < 0 then
     begin
       ShowMessage('Não é permitido valor menor que 0.');
       dmGeral.BUS_CD_M_CXA_RES_CAR.FieldByName('NUM_LOTE').OnChange   := nil;
       dmGeral.BUS_CD_M_CXA_RES_CAR.FieldByName('NUM_LOTE').AsExtended := 0;
       dmGeral.BUS_CD_M_CXA_RES_CAR.FieldByName('NUM_LOTE').OnChange := dmGeral.BUS_CD_M_CXA_RES_CARnum_loteChange;
       abort;
     end;    }
  if dmGeral.BUS_CD_M_CXA_RES_CAR.FieldByName('NUM_LOTE').text <> '' then
     begin
       if (dmGeral.BUS_CD_M_CXA_RES_CAR.FieldByName('id_forma_pag').Text = '') then
          begin
             ShowMessage('Digitação não permitida.');
             dmGeral.BUS_CD_M_CXA_RES_CAR.Cancel;
             abort;
          end;
     end;
end;

end.




