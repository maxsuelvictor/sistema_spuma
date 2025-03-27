unit OFI_RN_M_FEV;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Datasnap.DBClient,Vcl.Controls;

procedure OfiNovoOrvTit;
procedure OfiMascaraOrvTit;
procedure OfiValidaOrvTit(DataSet: TDataSet);

procedure OfiNovoOrvTitServ;
procedure OfiMascaraOrvTitServ;
procedure OfiValidaOrvTitServ(DataSet: TDataSet);

//procedure GerarFPG_Entrada(id_forma_fpg: string; valor: Currency);
//procedure GerarFPG_Doc(id_forma_fpg: String; qtde_parcelas: integer;  valor: Currency;  cds: TClientDataSet);
procedure OfiCalculaVlrTotalFev;
procedure OfiVerificaCamposTitulos;
function OfiVerificarVlrTituloFev:Boolean;
//function OfiVerificarVlrTituloFev1:Boolean;

//procedure OFI_CD_M_ORVvlr_desc_produtosChange;
//procedure OFI_CD_M_ORVvlr_desc_servicosChange;
//procedure OFI_CD_M_ORVvlr_desc_terceiroChange;

//procedure OFI_CD_M_ORVper_desc_produtosChange;
//procedure OFI_CD_M_ORVper_desc_servicosChange;
//procedure OFI_CD_M_ORVper_desc_terceiroChange;

//procedure OfiVerificarDadosChequeFev(var valido:Boolean);
procedure OfiVerificarDadosChequeFev(cdsTitNovoCheque,cdsTit: TClientDataSet;var valido:Boolean);
procedure OfiInserirTitNotaCreditoFev(cdsTit:TClientDataSet;credito:currency);//Gera Titulo de Nota de Credito.Criado em 01/09/2015.Responsavel:Luan


implementation
Uses uDmGeral,enConstantes, uProxy;



procedure OfiNovoOrvTit;
var
  SMPrincipal: TSMClient;
begin
   SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
   try
     dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_TITULO').AsInteger := SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
   finally
     FreeAndNil(SMPrincipal);
   end;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DIAS').AsInteger := 0;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime := xDataSis;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('VLR_TITULO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_NUMERO').AsInteger := 0;
end;

procedure OfiMascaraOrvTit;
begin
   dmGeral.OFI_CD_M_ORV_TITvlr_titulo.DisplayFormat := CMascaraValor;
end;

procedure OfiValidaOrvTit(DataSet: TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';

   dmGeral.BusFormaPgtos(0,dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_FORMA_PAG').AsString);

   if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('id_forma_pag').AsString='') then
     begin
       xMensErro:= xMensErro + '.Forma de Pagamento deve ser informada.'+ #13;
     end;

  if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('dias').AsString='') then
     begin
       xMensErro:= xMensErro + '.Dias deve ser informado.'+ #13;
     end;

  if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('dta_vencimento').AsString='') then
     begin
       xMensErro:= xMensErro + '.Data de Vencimento deve ser informada.'+ #13;
     end
  else if (abs(dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime -
        dmGeral.OFI_CD_M_ORV.FieldByName('DTA_EMISSAO').AsDateTime)> 1825)  then
     begin
         xMensErro:= xMensErro +'.Data de vencimento não pode ser menor ou maior em mais de 5 anos da data de emissão.'+ #13;
     end;

  if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('VLR_TITULO').IsNull) or
     (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('VLR_TITULO').AsString = '') or
     (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('VLR_TITULO').AsCurrency <= 0) then
     begin
       xMensErro:= xMensErro + '.Valor do Título deve ser maior que zero.'+ #13;
     end;


  if ((dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_CRITICA_CHQ').AsBoolean = True)) then
     begin
      if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('che_banco').AsString='') then
        begin
         xMensErro:= xMensErro + '.Banco deve ser informado.'+ #13;
        end;

      if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('che_agencia').AsString='') then
        begin
         xMensErro:= xMensErro + '.Agencia deve ser informado.'+ #13;
        end;

      if (dmGeral.BUS_CD_C_FPG.FieldByName('GERA_CAIXA_BANCO').AsBoolean = True) then
        begin
         if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('che_conta').AsString='') then
           begin
            xMensErro:= xMensErro + '.Conta deve ser informado.'+ #13;
           end;
        end;

      if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('che_numero').AsString='') then
        begin
         xMensErro:= xMensErro + '.Cheque deve ser informado.'+ #13;
        end;

      if (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('che_emitente').AsString='') then
        begin
         xMensErro:= xMensErro + '.Emitente deve ser informado.'+ #13;
        end;
     end;
  if xMensErro<>'' then
        begin
           raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
           abort;
     end;
end;


procedure OfiInserirTitNotaCreditoFev(cdsTit:TClientDataSet;credito:currency);
var
  id_titulo:integer;
begin
   id_titulo := 0;
   cdsTit.Cancel;
   if (cdsTit.RecordCount > 0) then
     begin
       cdsTit.First;
       while ((not cdsTit.Eof) and (id_titulo = 0)) do
         begin
           dmGeral.BusFormaPgtos(0,cdsTit.FieldByName('ID_FORMA_PAG').AsString);
           if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString = '7') then
              begin
                id_titulo := cdsTit.FieldByName('ID_TITULO').AsInteger;
              end
           else
              begin
                cdsTit.Next;
              end;
         end;
     end;

   if (id_titulo = 0) then
     begin
       if (credito > 0) then
          begin
            cdsTit.Insert;
            cdsTit.FieldByName('ID_FORMA_PAG').AsInteger :=
                dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ORV_ID_FORMA_PAG_RCR').AsInteger;
            dmGeral.BusFormaPgtos(0,cdsTit.FieldByName('ID_FORMA_PAG').AsString);
            cdsTit.FieldByName('INT_NOMEFPG').AsString :=
                    dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
            cdsTit.FieldByName('VLR_TITULO').AsCurrency := credito;
            cdsTit.Post;
          end;
     end
   else
     begin
       if (credito > 0) then
          begin
           cdsTit.Edit;
           cdsTit.FieldByName('VLR_TITULO').AsCurrency := credito;
           cdsTit.Post;
          end
       else
          begin
            cdsTit.Delete;
          end;
     end;
end;


procedure OfiNovoOrvTitServ;
var
  SMPrincipal: TSMClient;
begin
   SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
   try
     dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('ID_TITULO').AsInteger := SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
   finally
     FreeAndNil(SMPrincipal);
   end;
  dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('DIAS').AsInteger := 0;
  dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('DTA_VENCIMENTO').AsDateTime := xDataSis;
  dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('VLR_TITULO').AsCurrency := 0;
  dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('CHE_NUMERO').AsInteger := 0;
end;

procedure OfiMascaraOrvTitServ;
begin
   dmGeral.OFI_CD_M_ORV_TIT_SERvlr_titulo.DisplayFormat := CMascaraValor;
end;

procedure OfiValidaOrvTitServ(DataSet: TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';

   dmGeral.BusFormaPgtos(0,dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('ID_FORMA_PAG').AsString);

   if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('id_forma_pag').AsString='') then
     begin
       xMensErro:= xMensErro + '.Forma de Pagamento deve ser informada.'+ #13;
     end;

  if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('dias').AsString='') then
     begin
       xMensErro:= xMensErro + '.Dias deve ser informado.'+ #13;
     end;

  if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('dta_vencimento').AsString='') then
     begin
       xMensErro:= xMensErro + '.Data de Vencimento deve ser informada.'+ #13;
     end;

  if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('VLR_TITULO').IsNull) or
     (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('VLR_TITULO').AsString = '') or
     (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('VLR_TITULO').AsCurrency <= 0) then
     begin
       xMensErro:= xMensErro + '.Valor do Título deve ser maior que zero.'+ #13;
     end;


  if ((dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_CRITICA_CHQ').AsBoolean = True)) then
     begin
      if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('che_banco').AsString='') then
        begin
         xMensErro:= xMensErro + '.Banco deve ser informado.'+ #13;
        end;

      if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('che_agencia').AsString='') then
        begin
         xMensErro:= xMensErro + '.Agencia deve ser informado.'+ #13;
        end;

      if (dmGeral.BUS_CD_C_FPG.FieldByName('GERA_CAIXA_BANCO').AsBoolean = True) then
        begin
         if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('che_conta').AsString='') then
           begin
            xMensErro:= xMensErro + '.Conta deve ser informado.'+ #13;
           end;
        end;

      if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('che_numero').AsString='') then
        begin
         xMensErro:= xMensErro + '.Cheque deve ser informado.'+ #13;
        end;

      if (dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('che_emitente').AsString='') then
        begin
         xMensErro:= xMensErro + '.Emitente deve ser informado.'+ #13;
        end;
     end;
  if xMensErro<>'' then
        begin
           raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
           abort;
     end;

end;

function OfiVerificarVlrTituloFev:Boolean;
var
  valor_total_tit_pec_ser,valor_total_tit_servicos:currency;
  valor_ser_pago_pec_ser,valor_ser_pago_servicos:currency;
begin
   valor_total_tit_pec_ser := 0;
   valor_total_tit_servicos := 0;
   Result := false;
   if (dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean = True) and
      (dmGeral.OFI_CD_M_ORV.FieldByName('orv_gera_fin_separado').AsBoolean) then
     begin
       valor_ser_pago_pec_ser := dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency +
                           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency {-
                           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_PRODUTOS').AsCurrency};
     end
   else
     begin
        valor_ser_pago_pec_ser := dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency +
                           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency +
                           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency +
                           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency {-
                           dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency};
     end;

   dmGeral.OFI_CD_M_ORV_TIT.Cancel;
   if (not dmGeral.OFI_CD_M_ORV_TIT.IsEmpty) then
     begin
       valor_total_tit_pec_ser:=0;
       dmGeral.OFI_CD_M_ORV_TIT.First;
       while (not dmGeral.OFI_CD_M_ORV_TIT.EOF) do
         begin
           valor_total_tit_pec_ser := valor_total_tit_pec_ser + dmGeral.OFI_CD_M_ORV_TIT.FieldByName('VLR_TITULO').AsCurrency;
           dmGeral.OFI_CD_M_ORV_TIT.Next;
         end;
     end;

   if (valor_total_tit_pec_ser = valor_ser_pago_pec_ser) then
     begin
       Result := true;
       if (dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean = False) then
         begin
           exit;
         end;
     end
   else
     begin
       Result := false;
       if (dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean = True) and
           (dmGeral.OFI_CD_M_ORV.FieldByName('orv_gera_fin_separado').AsBoolean) then
         begin
          ShowMessage('O valor total dos titulos não é igual ao valor líquido das peças.');
         end
       else
         begin
          ShowMessage('O valor total dos titulos não é igual ao valor total líquido da ordem.');
         end;
       exit;
     end;

   // if colocado por Maxsuel Victor em 16/06/2017
   if dmGeral.OFI_CD_M_ORV.FieldByName('orv_gera_fin_separado').AsBoolean then
      begin
         valor_ser_pago_servicos := dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency +
                                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency -
                                     dmGeral.OFI_CD_M_ORV.FieldByName('ISS_VALOR_RETIDO').AsCurrency; {-
                                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CRED_SERVICOS').AsCurrency};

         dmGeral.OFI_CD_M_ORV_TIT_SER.Cancel;
         if (not dmGeral.OFI_CD_M_ORV_TIT_SER.IsEmpty) then
           begin
             valor_total_tit_servicos:=0;
             dmGeral.OFI_CD_M_ORV_TIT_SER.First;
             while (not dmGeral.OFI_CD_M_ORV_TIT_SER.EOF) do
               begin
                 valor_total_tit_servicos := valor_total_tit_servicos + dmGeral.OFI_CD_M_ORV_TIT_SER.FieldByName('VLR_TITULO').AsCurrency;
                 dmGeral.OFI_CD_M_ORV_TIT_SER.Next;
               end;
           end;

         if (valor_total_tit_servicos = valor_ser_pago_servicos) then
           begin
             Result := true;
           end
         else
           begin
             Result := false;
             ShowMessage('O valor total dos titulos não é igual ao valor líquido dos serviços.');
             exit;
           end;
      end;
end;



procedure OfiVerificarDadosChequeFev(cdsTitNovoCheque,cdsTit: TClientDataSet;var valido:Boolean);
var
  id_titulo:string;
  id_forma_pag:string;
  forma_pag:string;
  dias:integer;
  vencimento:TDateTime;
  che_banco,che_agencia:string;
  che_conta,che_numero:integer;
  che_emitente:string;
  valor:currency;

  che_banco1,che_agencia1:string;

  chaveNovoChe,chaveChe:currency;

  modo_insert:boolean;
begin
  modo_insert := false;
  if (cdsTitNovoCheque.State in [dsInsert]) then
     begin
       modo_insert := true;
     end;

  valido := True;
  id_titulo := cdsTitNovoCheque.FieldByName('ID_TITULO').AsString;
  id_forma_pag := cdsTitNovoCheque.FieldByName('ID_FORMA_PAG').AsString;
  forma_pag := cdsTitNovoCheque.FieldByName('INT_NOMEFPG').AsString;
  dias := cdsTitNovoCheque.FieldByName('DIAS').AsInteger;
  vencimento := cdsTitNovoCheque.FieldByName('DTA_VENCIMENTO').AsDateTime;
  che_banco := trim(cdsTitNovoCheque.FieldByName('CHE_BANCO').AsString);
  che_agencia := trim(cdsTitNovoCheque.FieldByName('CHE_AGENCIA').AsString);
  che_conta := cdsTitNovoCheque.FieldByName('CHE_CONTA').AsInteger;
  che_numero := cdsTitNovoCheque.FieldByName('CHE_NUMERO').AsInteger;
  che_emitente := cdsTitNovoCheque.FieldByName('CHE_EMITENTE').AsString;
  valor := cdsTitNovoCheque.FieldByName('VLR_TITULO').AsCurrency;
  chaveNovoChe := che_banco.ToInteger(trim(che_banco)) + che_agencia.ToInteger(trim(che_agencia)) +
                     che_conta + che_numero;
  cdsTitNovoCheque.Cancel;
  if (cdsTitNovoCheque.RecordCount > 0) then
    begin

     cdsTitNovoCheque.First;
     while (not cdsTitNovoCheque.Eof) and (valido = true) do
       begin
         dmGeral.BusFormaPgtos(0,cdsTitNovoCheque.FieldByName('ID_FORMA_PAG').AsString);

        if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6) and
           (trim(cdsTitNovoCheque.FieldByName('CHE_BANCO').AsString) <> '') and
           (trim(cdsTitNovoCheque.FieldByName('CHE_AGENCIA').AsString) <> '') and
           (cdsTitNovoCheque.FieldByName('CHE_CONTA').AsString <> '') and
           (cdsTitNovoCheque.FieldByName('CHE_NUMERO').AsString <> '') then
            begin
              che_banco1 := trim(cdsTitNovoCheque.FieldByName('CHE_BANCO').AsString);
              che_agencia1 := trim(cdsTitNovoCheque.FieldByName('CHE_AGENCIA').AsString);
              chaveChe := che_banco1.ToInteger(che_banco1) +
                          che_agencia1.ToInteger(che_agencia1) +
                          cdsTitNovoCheque.FieldByName('CHE_CONTA').AsInteger +
                          cdsTitNovoCheque.FieldByName('CHE_NUMERO').AsInteger;

              if ((chaveNovoChe = chaveChe) and ((modo_insert = true) or ((id_titulo <> cdsTitNovoCheque.FieldByName('ID_TITULO').AsString) and (modo_insert = false))))  then
                begin
                 valido := False;
                end;
            end;
        cdsTitNovoCheque.Next;
       end;
   end;

   if ((valido = True) and (dmGeral.OFI_CD_M_ORV.FieldByName('SEPARA_PROD_SERV').AsBoolean = True)) then
     begin
      if (cdsTit.RecordCount > 0) then
       begin
        cdsTit.First;
        while (not cdsTit.Eof) and (valido = true) do
          begin
            dmGeral.BusFormaPgtos(0,cdsTit.FieldByName('ID_FORMA_PAG').AsString);

            if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6) and
               (trim(cdsTit.FieldByName('CHE_BANCO').AsString) <> '') and
               (trim(cdsTit.FieldByName('CHE_AGENCIA').AsString) <> '') and
               (cdsTit.FieldByName('CHE_CONTA').AsString <> '') and
               (cdsTit.FieldByName('CHE_NUMERO').AsString <> '') then
              begin
                che_banco1 := trim(cdsTit.FieldByName('CHE_BANCO').AsString);
                che_agencia1 := trim(cdsTit.FieldByName('CHE_AGENCIA').AsString);
                chaveChe := che_banco1.ToInteger(che_banco1) +
                          che_agencia1.ToInteger(che_agencia1) +
                          cdsTit.FieldByName('CHE_CONTA').AsInteger +
                          cdsTit.FieldByName('CHE_NUMERO').AsInteger;

                if (chaveNovoChe = chaveChe) then
                  begin
                   valido := False;
                  end;
              end;
            cdsTit.Next;
          end;
       end;
    end;

  if (valido = True) then
    begin
      dmGeral.BUS_CD_M_REC.Close;
      dmGeral.BUS_CD_M_REC.Data :=
      dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([13,dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').AsString,
                                                  che_numero,che_conta,che_banco,che_agencia]));

      if not dmGeral.BUS_CD_M_REC.IsEmpty then
        begin
          valido := False;
        end;
    end;

  if (modo_insert = False) then
     begin
       cdsTitNovoCheque.locate('ID_TITULO',id_titulo,[]);
       cdsTitNovoCheque.Edit;
     end;

  if (modo_insert = True) then
     begin
       cdsTitNovoCheque.Insert;
     end;

  cdsTitNovoCheque.FieldByName('ID_FORMA_PAG').AsString := id_forma_pag;
  cdsTitNovoCheque.FieldByName('INT_NOMEFPG').AsString := forma_pag;
  cdsTitNovoCheque.FieldByName('DIAS').AsInteger := dias;
  cdsTitNovoCheque.FieldByName('DTA_VENCIMENTO').AsDateTime := vencimento;
  cdsTitNovoCheque.FieldByName('CHE_BANCO').AsString := che_banco;
  cdsTitNovoCheque.FieldByName('CHE_AGENCIA').AsString := che_agencia;
  cdsTitNovoCheque.FieldByName('CHE_CONTA').AsInteger := che_conta;
  cdsTitNovoCheque.FieldByName('CHE_NUMERO').AsInteger := che_numero;
  cdsTitNovoCheque.FieldByName('CHE_EMITENTE').AsString := che_emitente;
  cdsTitNovoCheque.FieldByName('VLR_TITULO').AsCurrency := valor;

end;



{procedure OfiVerificarDadosChequeFev(var valido:Boolean);
var
  id_titulo:string;
  id_forma_pag:string;
  forma_pag:string;
  dias:integer;
  vencimento:TDateTime;
  che_banco,che_agencia:string;
  che_conta,che_numero:integer;
  che_emitente:string;
  valor:currency;

  che_banco1,che_agencia1:string;

  chaveNovoChe,chaveChe:currency;

  modo_insert:boolean;
begin
  modo_insert := false;
  if (dmGeral.OFI_CD_M_ORV_TIT.State in [dsInsert]) then
     begin
       modo_insert := true;
     end;

  valido := True;
  if (dmGeral.OFI_CD_M_ORV_TIT.RecordCount > 0) then
    begin
     id_titulo := dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_TITULO').AsString;
     id_forma_pag := dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_FORMA_PAG').AsString;
     forma_pag := dmGeral.OFI_CD_M_ORV_TIT.FieldByName('INT_NOMEFPG').AsString;
     dias := dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DIAS').AsInteger;
     vencimento := dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime;
     che_banco := trim(dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_BANCO').AsString);
     che_agencia := trim(dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_AGENCIA').AsString);
     che_conta := dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_CONTA').AsInteger;
     che_numero := dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_NUMERO').AsInteger;
     che_emitente := dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_EMITENTE').AsString;
     valor := dmGeral.OFI_CD_M_ORV_TIT.FieldByName('VLR_TITULO').AsCurrency;

     chaveNovoChe := che_banco.ToInteger(trim(che_banco)) + che_agencia.ToInteger(trim(che_agencia)) +
                     che_conta + che_numero;
     dmGeral.OFI_CD_M_ORV_TIT.Cancel;
     dmGeral.OFI_CD_M_ORV_TIT.First;
     while (not dmGeral.OFI_CD_M_ORV_TIT.Eof) and (valido = true) do
       begin
         dmGeral.BusFormaPgtos(0,dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_FORMA_PAG').AsString);

        if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6) and
           (trim(dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_BANCO').AsString) <> '') and
           (trim(dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_AGENCIA').AsString) <> '') and
           (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_CONTA').AsString <> '') and
           (dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_NUMERO').AsString <> '') then
            begin
              che_banco1 := trim(dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_BANCO').AsString);
              che_agencia1 := trim(dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_AGENCIA').AsString);
              chaveChe := che_banco1.ToInteger(che_banco1) +
                          che_agencia1.ToInteger(che_agencia1) +
                          dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_CONTA').AsInteger +
                          dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_NUMERO').AsInteger;

              if ((chaveNovoChe = chaveChe) and ((modo_insert = true) or ((id_titulo <> dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_TITULO').AsString) and (modo_insert = false))))  then
                begin
                 valido := False;
                end;
            end;
        dmGeral.OFI_CD_M_ORV_TIT.Next;
       end;
   end;

  dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
  dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([13,dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').AsString,
                                                  che_numero,che_conta,che_banco,che_agencia]));

  if not dmGeral.BUS_CD_M_REC.IsEmpty then
    begin
      valido := False;
    end;

  if (modo_insert = False) then
     begin
       dmGeral.OFI_CD_M_ORV_TIT.locate('ID_TITULO',id_titulo,[]);
       dmGeral.OFI_CD_M_ORV_TIT.Edit;
     end;

  if (modo_insert = True) then
     begin
       dmGeral.OFI_CD_M_ORV_TIT.Insert;
     end;

  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_FORMA_PAG').AsString := id_forma_pag;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('INT_NOMEFPG').AsString := forma_pag;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DIAS').AsInteger := dias;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime := vencimento;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_BANCO').AsString := che_banco;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_AGENCIA').AsString := che_agencia;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_CONTA').AsInteger := che_conta;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_NUMERO').AsInteger := che_numero;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_EMITENTE').AsString := che_emitente;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('VLR_TITULO').AsCurrency := valor;

end;  }

{procedure OFI_CD_M_ORVvlr_desc_produtosChange;
begin
    dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := nil;
    dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := nil;

   if dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').IsNull or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsString = '') or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency < 0) then
    begin
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := 0;
    end;


  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency >
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency) then
    begin
      ShowMessage('O valor desconto tem que ser menor ou igual ao valor de produtos.');
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := 0;
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').FocusControl;

    end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency > 0) then
     begin
      dmgeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency:=
                                                (dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency/
                                                 dmgeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency)*100;
     end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency = 0) then
     begin
       dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
     end;

  dmgeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency := dmgeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency -
                                                  dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency;

   OFI_RN_M_FEV.OfiCalculaVlrTotalFev;

   dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_produtosChange;
   dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_produtosChange;
end; }

{procedure OFI_CD_M_ORVvlr_desc_servicosChange;
begin
    dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := nil;
    dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := nil;

    if dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').IsNull or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsString = '') or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency < 0) then
    begin
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := 0;
    end;


  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency >
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency) then
    begin
      ShowMessage('O valor desconto tem que ser menor ou igual ao valor de serviços.');
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := 0;
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').FocusControl;

    end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency > 0) then
    begin
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency:=
                                                (dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency/
                                                 dmgeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency)*100;
    end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency = 0) then
    begin
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
    end;

  dmgeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency := dmgeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency -
                                                  dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency;

   OFI_RN_M_FEV.OfiCalculaVlrTotalFev;

   dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_servicosChange;
   dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_servicosChange;

end; }

{procedure OFI_CD_M_ORVvlr_desc_terceiroChange;
begin
    dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := nil;
    dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := nil;

   if dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').IsNull or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsString = '') or
     (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency < 0) then
    begin
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := 0;
    end;


  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency >
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency) then
    begin
      ShowMessage('O valor desconto tem que ser menor ou igual ao valor de terceiros.');
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := 0;
      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').FocusControl;
    end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency > 0) then
     begin
      dmgeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency:=
                                                (dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency/
                                                 dmgeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency)*100;
     end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency = 0) then
     begin
       dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;
     end;



  dmgeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency := dmgeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency -
                                                  dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency;

  OFI_RN_M_FEV.OfiCalculaVlrTotalFev;

   dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVper_desc_terceiroChange;
   dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_terceiroChange;

end; }

{procedure OFI_CD_M_ORVper_desc_produtosChange;
begin
   dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := nil;
   dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := nil;

  if dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').IsNull or
     (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsString = '') or
     (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency < 0) then
    begin
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
    end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency = 0) and
      (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency > 0) then
    begin
      ShowMessage('o valor total dos produtos é zero.');
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
       dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').FocusControl;
    end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency >100) then
    begin
      ShowMessage('A porcentagem de desconto tem que ser até 100%.');
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency := 0;
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').FocusControl;
    end;

  dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency:=
                                                (dmgeral.OFI_CD_M_ORV.FieldByName('PER_DESC_PRODUTOS').AsCurrency)*
                                                (dmgeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency)/100;

  dmgeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency := dmgeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency -
                                                  dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency;

  OFI_RN_M_FEV.OfiCalculaVlrTotalFev;

  dmGeral.OFI_CD_M_ORVper_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_produtosChange;
  dmGeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_produtosChange;
end;}

{procedure OFI_CD_M_ORVper_desc_servicosChange;
begin
    dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := nil;
    dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := nil;

   if dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').IsNull or
     (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsString = '') or
     (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency < 0) then
    begin
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
    end;

   if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency = 0) and
      (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency > 0) then
    begin
      ShowMessage('o valor total dos serviços é zero.');
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
       dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').FocusControl;
    end;


  if (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency >100) then
    begin
      ShowMessage('A porcentagem de desconto tem que ser até 100%.');
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency := 0;
       dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').FocusControl;
    end;

  dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := (dmgeral.OFI_CD_M_ORV.FieldByName('PER_DESC_SERVICOS').AsCurrency)*
                                                (dmgeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency)/100;

  dmgeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency := dmgeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency -
                                                   dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency;
   OFI_RN_M_FEV.OfiCalculaVlrTotalFev;

    dmGeral.OFI_CD_M_ORVper_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVper_desc_servicosChange;
   dmGeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_servicosChange;
end;  }

{procedure OFI_CD_M_ORVper_desc_terceiroChange;
begin
  dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := nil;
  dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := nil;

  if dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').IsNull or
     (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsString = '') or
     (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency < 0) then
    begin
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;
    end;

  if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency = 0) and
      (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency > 0) then
    begin
      ShowMessage('o valor total dos terceiros é zero.');
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;
       dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').FocusControl;
    end;

   if (dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency > 100) then
    begin
      ShowMessage('A porcentagem de desconto tem que ser até 100%.');
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency := 0;
      dmGeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').FocusControl;
    end;

   dmgeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := (dmgeral.OFI_CD_M_ORV.FieldByName('PER_DESC_TERCEIRO').AsCurrency)*
                                                (dmgeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency)/100;

   dmgeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency := dmgeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency -
                                                 dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency;

    OFI_RN_M_FEV.OfiCalculaVlrTotalFev;

   dmGeral.OFI_CD_M_ORVper_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVper_desc_terceiroChange;
   dmGeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange := dmGeral.OFI_CD_M_ORVvlr_desc_terceiroChange;
end;}

{function OfiVerificarVlrTituloFev1:Boolean;
var
  valor_total_tit:currency;
  valor_ser_pago:currency;
begin
   Result := false;
   valor_total_tit := 0;
   valor_ser_pago := dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency -
                     dmGeral.OFI_CD_M_ORV.FieldByName('VLR_CREDITO').AsCurrency;

   dmGeral.OFI_CD_M_ORV_TIT.Cancel;
   if (not dmGeral.OFI_CD_M_ORV_TIT.IsEmpty) then
     begin
       valor_total_tit:=0;
       dmGeral.OFI_CD_M_ORV_TIT.First;
       while (not dmGeral.OFI_CD_M_ORV_TIT.EOF) do
         begin
           valor_total_tit := valor_total_tit + dmGeral.OFI_CD_M_ORV_TIT.FieldByName('VLR_TITULO').AsCurrency;
           dmGeral.OFI_CD_M_ORV_TIT.Next;
         end;
     end;

   if (valor_total_tit = valor_ser_pago) then
     begin
       Result := true;
     end;
end;}

procedure OfiVerificaCamposTitulos;
begin
  dmGeral.OFI_CD_M_ORV_TIT.Cancel;
  if (dmGeral.OFI_CD_M_ORV_TIT.RecordCount > 0) then
    begin
      dmGeral.OFI_CD_M_ORV_TIT.First;
      while (not dmGeral.OFI_CD_M_ORV_TIT.Eof) do
        begin
         dmGeral.OFI_CD_M_ORV_TIT.Edit;
         dmGeral.OFI_CD_M_ORV_TIT.Post;
         dmGeral.OFI_CD_M_ORV_TIT.Next;
        end;
    end;

  dmGeral.OFI_CD_M_ORV_TIT_SER.Cancel;
  if (dmGeral.OFI_CD_M_ORV_TIT_SER.RecordCount > 0) then
    begin
      dmGeral.OFI_CD_M_ORV_TIT_SER.First;
      while (not dmGeral.OFI_CD_M_ORV_TIT_SER.Eof) do
        begin
         dmGeral.OFI_CD_M_ORV_TIT_SER.Edit;
         dmGeral.OFI_CD_M_ORV_TIT_SER.Post;
         dmGeral.OFI_CD_M_ORV_TIT_SER.Next;
        end;
    end;
end;



{procedure GerarFPG_Entrada(id_forma_fpg: string; valor: Currency);
var
  SMPrincipal: TSMClient;
begin

  //dmGeral.OFI_CD_M_ORV_TIT.Cancel;
  if not dmGeral.OFI_CD_M_ORV_TIT.IsEmpty then
     begin
       ShowMessage('Não é possível gerar a "entrada" pois já existe vencimento lançado.');
       dmGeral.OFI_CD_M_ORV_TIT.edit;
       abort;
     end;

  dmGeral.OFI_CD_M_ORV_TIT.Insert;

  // O id_titulo está no OnNewRecord do cds.

  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_FORMA_PAG').AsInteger    := strtoint(id_forma_fpg);
  dmGeral.BusFormaPgtos(0,dmGeral.OFI_CD_M_ORV_TIT.FieldByName('ID_FORMA_PAG').text);
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('int_nomefpg').AsString      := dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DIAS').AsInteger            := 0;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime := xDataSis;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('VLR_TITULO').AsCurrency     := valor;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_BANCO').text            := '0';
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_AGENCIA').text          := '0';
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_CONTA').AsInteger       := 0;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_NUMERO').AsInteger      := 0;
  dmGeral.OFI_CD_M_ORV_TIT.FieldByName('CHE_EMITENTE').text         := '';
  dmGeral.OFI_CD_M_ORV_TIT.Post;
  dmGeral.OFI_CD_M_ORV_TIT.Edit;
end;}


{procedure GerarFPG_Doc(id_forma_fpg: String; qtde_parcelas: integer;  valor: Currency;
  cds: TClientDataSet);
var
  SMPrincipal: TSMClient;
  i: integer;
  lTotFpgInserido, lSoma, lVlrParcela, lVlrRestante, lVlrUltParc: Currency;
begin

  lTotFpgInserido := 0;
  lVlrParcela     := 0;
  lSoma           := 0;

  cds.Cancel;
  if not cds.IsEmpty then
     begin
       if MessageDlg('Existe forma de pagamento já lançado!' + #13 +
                     'Deseja refazer?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          begin
            cds.First;
            while not cds.eof do
               begin
                 lTotFpgInserido :=  lTotFpgInserido + cds.fieldbyname('VLR_TITULO').AsCurrency;
                 cds.Next;
               end;
          end
       else
          begin
            cds.First;
            while not cds.eof do
               begin
                 cds.delete;
               end;
          end;
     end;


  if lTotFpgInserido > 0 then
     begin
       lVlrRestante := Valor - lTotFpgInserido;
       lVlrParcela :=  RoundTo(lVlrRestante / qtde_parcelas,-2);
       for i := 1 to qtde_parcelas do
          begin
             if i <> qtde_parcelas then
                begin
                  lSoma := lSoma + lVlrParcela
                end
             else
                begin
                  lVlrUltParc := RoundTo(lVlrRestante - lSoma,-2);
                end;
          end;
     end
  else
     begin
       lVlrParcela :=  RoundTo(Valor / qtde_parcelas,-2);
       for i := 1 to qtde_parcelas do
          begin
             if i <> qtde_parcelas then
                begin
                  lSoma := lSoma + lVlrParcela
                end
             else
                begin
                  lVlrUltParc := RoundTo(Valor - lSoma,-2);
                end;
          end;
     end;



  for i := 1 to qtde_parcelas do
      begin
        cds.Insert;

        // O id_titulo é gerado no OnNewRecord do cds.

        cds.FieldByName('ID_FORMA_PAG').AsInteger    := strtoint(id_forma_fpg);
        dmGeral.BusFormaPgtos(0,cds.FieldByName('ID_FORMA_PAG').text);
        cds.FieldByName('int_nomefpg').AsString      := dmgeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
        cds.FieldByName('DIAS').AsInteger            := 0;
        cds.FieldByName('DTA_VENCIMENTO').AsDateTime := (xDataSis + (i * 30));

        if i < qtde_parcelas then
           begin
             cds.FieldByName('VLR_TITULO').AsCurrency     := lVlrParcela;
           end
        else
           begin
             cds.FieldByName('VLR_TITULO').AsCurrency     := lVlrUltParc;
           end;
        cds.FieldByName('CHE_BANCO').text            := '0';
        cds.FieldByName('CHE_AGENCIA').text          := '0';
        cds.FieldByName('CHE_CONTA').AsInteger       := 0;
        cds.FieldByName('CHE_NUMERO').AsInteger      := 0;
        cds.FieldByName('CHE_EMITENTE').text         := '';
        cds.Post;
      end;
  cds.Edit;
end; }

procedure OfiCalculaVlrTotalFev;
begin
     dmgeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency := dmgeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency +
                                     dmgeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency +
                                     dmgeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency +
                                     dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESPESAS').AsCurrency;
end;


end.
