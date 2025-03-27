unit FAT_RN_M_IQM;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Datasnap.DBClient;

procedure FatNovoIqm(DataSet: TDataSet);
procedure FAT_CD_M_IQMnumero_nfChange;
procedure FatNovoIqmIte(DataSet:TDataSet);

procedure FatOutrasValIqm;

procedure FatValidaIqm(DataSet:TDataSet);
procedure FatValidaIqmIte(DataSet:TDataSet);
procedure FatValidaIqmIteAna;
procedure FAT_CD_M_IQMBeforeEdit;
function  FatVefifNFeDup: Boolean;
procedure FAT_CD_M_IQM_ITEqtd_ncChange;
procedure FatVerifInconsIqmIte;


implementation
Uses uDmGeral, enConstantes, uProxy, enFunc;

procedure FatNovoIqm(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FAT_CD_M_IQM.FieldByName('ID_IQM').AsInteger :=
         SMPrincipal.enValorChave('FAT_TB_M_IQM');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FAT_CD_M_IQM.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  dmGeral.FAT_CD_M_IQM.FieldByName('SITUACAO').AsInteger := 0;
end;

procedure FAT_CD_M_IQMnumero_nfChange;
begin


end;

procedure FatNovoIqmIte(DataSet:TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=
         SMPrincipal.enValorChave('FAT_TB_M_IQM_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, xFuncionario]));
  dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_RESPONSAVEL').AsString :=
          dmGeral.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsString;
  dmGeral.FAT_CD_M_IQM_ITE.FieldByName('INT_NOMERES').AsString :=
          dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;

  dmGeral.FAT_CD_M_IQM_ITE.FieldByName('id_cor').AsFloat      := 0;
  dmGeral.FAT_CD_M_IQM_ITE.FieldByName('id_tamanho').AsFloat  := 0;

  dmGeral.FAT_CD_M_IQM_ITE.FieldByName('qtd_nc').AsFloat      := 0;
  dmGeral.FAT_CD_M_IQM_ITE.FieldByName('per_lot_rec').AsFloat := 0;

end;

procedure FatValidaIqm(DataSet:TDataSet);
var
  xMensErro: string;
  xTamDoc: Integer;
begin
  xMensErro := '';

  if (dmGeral.FAT_CD_M_IQM.FieldByName('id_emitente').AsString = '') then
      begin
        xMensErro:= xMensErro + '.Fornecedor deve ser informado.'+ #13;
      end;

  if (dmGeral.FAT_CD_M_IQM.FieldByName('dta_recebimento').AsString = '') then
      begin
        xMensErro:= xMensErro + '.Data de recebimento.'+ #13;
      end;

  if (dmGeral.FAT_CD_M_IQM.FieldByName('dta_emissao_nf').AsString = '') then
      begin
        xMensErro:= xMensErro + '.Emissão da nota fiscal.'+ #13;
      end;

  if (dmGeral.FAT_CD_M_IQM.FieldByName('numero_nf').AsString = '') then
      begin
        xMensErro:= xMensErro + '.Número da nota fiscal.'+ #13;
      end;

  if (dmGeral.FAT_CD_M_IQM.FieldByName('serie').AsString = '') then
      begin
        xMensErro:= xMensErro + '.Série'+ #13;
      end;

  if (dmGeral.FAT_CD_M_IQM.FieldByName('dta_recebimento').AsString <> '') or
     (dmGeral.FAT_CD_M_IQM.FieldByName('dta_emissao_nf').AsString <> '') then
      begin
          if (dmGeral.FAT_CD_M_IQM.FieldByName('dta_recebimento').AsDateTime <
              dmGeral.FAT_CD_M_IQM.FieldByName('dta_emissao_nf').AsDateTime) then
              begin
                xMensErro:= xMensErro + '.Data de recebimento não pode ser menor que a data da emissão da nota fiscal'+ #13;
              end;
      end;

  if FatVefifNFeDup then
     begin
       xMensErro:= xMensErro + 'Já existe inspeção lançada para este fornecedor+número+série+sub-série de nota fiscal' + #13;
     end;

  if xMensErro <> '' then
     begin
       dmGeral.FAT_CD_M_IQM.FieldByName('id_emitente').FocusControl;
       raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
     end;
end;

procedure FatValidaIqmIte(DataSet:TDataSet);
var
   xMensErro: string;
begin
   xMensErro := '';

   if (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('id_item').AsString = '') or
      (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('id_busca_item').AsString = '')  then
     begin
       xMensErro:= xMensErro + '.Item deve ser informado.'+ #13;
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('id_item').FocusControl;
     end;

   if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
     begin
       if dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_COR').Asinteger = 0 then
          begin
            xMensErro := xMensErro + '.Cor' + #13;
          end;
     end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
     begin
       if dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_TAMANHO').AsInteger = 0 then
          begin
            xMensErro := xMensErro + '.Tamanho' + #13;
          end;
     end;

   if (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('qtde').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Quantidade deve ser informada.'+ #13;
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('qtde').FocusControl;
     end;

   if (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('dta_inspecao').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Data da Inspeção deve ser informada.'+ #13;
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('dta_inspecao').FocusControl;
     end;

   if (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('cnd_comercial').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Condições Comerciais deve ser informada.'+ #13;
       dmGeral.FAT_CD_M_IQM_ITE.FieldByName('cnd_comercial').FocusControl;
     end;

   if (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('qtd_pc_nf').AsString = '') then
      begin
        xMensErro:= xMensErro + '.Qtde Pedido Compra x Nota Fiscal deve ser informada.'+ #13;
        dmGeral.FAT_CD_M_IQM_ITE.FieldByName('qtd_pc_nf').FocusControl;
      end;

   if (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('qualidade').AsString = '') then
      begin
        xMensErro:= xMensErro + '.Qualidade deve ser informada.'+ #13;
        dmGeral.FAT_CD_M_IQM_ITE.FieldByName('qualidade').FocusControl;
      end;

   if (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('pres_produto').AsString = '') then
      begin
        xMensErro:= xMensErro + '.Preservação do Produto deve ser informada.'+ #13;
        dmGeral.FAT_CD_M_IQM_ITE.FieldByName('pres_produto').FocusControl;
      end;

   if (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('cert_qualidade').AsString = '') then
      begin
        xMensErro:= xMensErro + '.Certificado de Qualidade deve ser informada.'+ #13;
        dmGeral.FAT_CD_M_IQM_ITE.FieldByName('cert_qualidade').FocusControl;
      end;

   dmGeral.BusItens(0,dmGeral.FAT_CD_M_IQM_ITE.FieldByName('ID_ITEM').AsString);
   if (not dmGeral.BUS_CD_C_ITE.IsEmpty) then
     begin
       if (dmGeral.BUS_CD_C_ITE.FieldByName('LOTE_FABRIC_OBRIGATORIO').AsInteger = 1) then
         begin
           if (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('NRO_LOTE_FABRIC_PRODUTO').AsString = '') then
              begin
                xMensErro := xMensErro + '.Lote do fabricante deve ser informada.'+#13;
              end;
         end;

       if (dmGeral.BUS_CD_C_ITE.FieldByName('SGQ_CRITICA_LAUDO_FAB').AsBoolean = True) then
         begin
           if (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('NUMERO_LAUDO').AsString = '') then
              begin
                xMensErro := xMensErro + '.Laudo do fabricante deve ser informada.'+#13;
              end;
         end;
     end;

   if xMensErro <> '' then
      begin
        raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
        Abort;
      end;
end;

procedure FAT_CD_M_IQM_ITEqtd_ncChange;
var
  valor: Extended;
begin
  dmGeral.FAT_CD_M_IQM_ITE.FieldByName('PER_LOT_REC').AsFloat := 0;

  if dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTD_NC').AsFloat > 0 then
     begin
       valor := roundTo((dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTD_NC').AsFloat * 100) /
                 dmGeral.FAT_CD_M_IQM_ITE.FieldByName('QTDE').AsFloat,-2);

       dmGeral.FAT_CD_M_IQM_ITEper_lot_rec.AsFloat := valor;

     end;
end;

procedure FatValidaIqmIteAna;
var
   xMensErro: string;
begin
   xMensErro := '';

   if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DTA_EMISSAO').text = '') then
       begin
         xMensErro := xMensErro + '.Data de emissão.'+ #13;
         dmGeral.FAT_CD_M_IQM_ITE.FieldByName('id_item').FocusControl;
       end
   else
       begin
         if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DTA_EMISSAO').AsDateTime  <
             dmGeral.FAT_CD_M_IQM.FieldByName('DTA_EMISSAO_NF').AsDateTime)  then
             begin
               xMensErro := xMensErro + '.Data do plano de ação não pode ser menor que a data da emisssão da nota fiscal'+ #13;
             end;

         if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DATA_INF_FORN').text <> '') then
             begin
               if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DTA_EMISSAO').AsDateTime >
                   dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DATA_INF_FORN').AsDateTime)  then
                   begin
                     xMensErro := xMensErro + '.Data do plano de ação não pode ser maior que a data do fornecedor'+ #13;
                   end;
             end;

         if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DATA_ANALISE').text <> '') then
             begin
               if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DTA_EMISSAO').AsDateTime >
                   dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('DATA_ANALISE').AsDateTime)  then
                   begin
                     xMensErro := xMensErro + '.Data do plano de ação não pode ser maior que a data da análise'+ #13;
                   end;
             end;
       end;

   if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ESPECIFICADO').AsString = '') then
       begin
         xMensErro:= xMensErro + '.Especificado'+ #13;
       end;

   if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ENCONTRADO').AsString = '') then
       begin
         xMensErro:= xMensErro + '.Encontrado'+ #13;
       end;

   if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ID_RESPONSAVEL').AsString = '') then
       begin
         xMensErro:= xMensErro + '.Responsável'+ #13;
       end;

   if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('ID_SETOR').AsString = '') then
       begin
         xMensErro:= xMensErro + '.Setor'+ #13;
       end;

   if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('qtde_devolvida').text = '') then
       begin
         xMensErro:= xMensErro + '.Qtde devolvida'+ #13;
       end
   else
       begin
         if dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('qtde_devolvida').AsFloat >
            dmGeral.FAT_CD_M_IQM_ITE.FieldByName('qtde').AsFloat then
             begin
               xMensErro:= xMensErro + '.Quantidade devolvida não pode ser maior que a quantidade que veio na nota fiscal'+ #13;
             end;
       end;

   if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('causa_do_problema_forn').text = '') then
       begin
         xMensErro:= xMensErro + '.Causa do problema'+ #13;
       end;

   if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('resolucao_problema_forn').text = '') then
       begin
         xMensErro:= xMensErro + '.Resolução do problema'+ #13;
       end;

   if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('responsavel_forn').text = '') then
       begin
         xMensErro:= xMensErro + '.Responsável do fornecedor'+ #13;
       end;

   if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('cargo_resp_forn').text = '') then
       begin
         xMensErro:= xMensErro + '.Cargo'+ #13;
       end;

   if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('cargo_resp_forn').text = '') then
       begin
         xMensErro:= xMensErro + '.Cargo'+ #13;
       end;

   if (dmGeral.FAT_CD_M_IQM_ITE_ANA.FieldByName('data_inf_forn').text = '') then
       begin
         xMensErro:= xMensErro + '.Data'+ #13;
       end;

   if xMensErro <> '' then
      begin
        raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
        Abort;
      end;
end;


procedure FatVerifInconsIqmIte;
var
  xMens: string;
  Itens: String;
  ComIncons: Boolean;
begin
  xMens := '';

  try
  dmGeral.FAT_CD_M_IQM.BeforePost := nil;

  dmGeral.FAT_CD_M_IQM_ITE.Cancel;
  dmGeral.FAT_CD_M_IQM_ITE.First;
  while not dmGeral.FAT_CD_M_IQM_ITE.eof do
      begin
        ComIncons := false;

        if (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('id_item').text = '')        or
           (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('qtde').text           = '') or
           (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('cnd_comercial').text  = '') or
           (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('qtd_pc_nf').text      = '') or
           (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('qualidade').text      = '') or
           (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('pres_produto').text   = '') or
           (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('cert_qualidade').text = '') or
           (dmGeral.FAT_CD_M_IQM_ITE.FieldByName('dta_inspecao').text   = '') then
           begin
             ComIncons := true;
           end;

        if ComIncons then
           begin
             xMens := xMens + 'Item: ' + dmGeral.FAT_CD_M_IQM_ITE.FieldByName('id_item').text + #13;
           end;

        dmGeral.FAT_CD_M_IQM_ITE.Next;
      end;

   if xMens <> '' then
      begin
        ShowMessage('Existe item com campos a preencher:' + #13 + xMens);
        Abort;
      end;
  finally
    dmGeral.FAT_CD_M_IQM.BeforePost := dmGeral.FAT_CD_M_IQMBeforePost;
  end;

end;

procedure FAT_CD_M_IQMBeforeEdit;
begin
  if dmGeral.FAT_CD_M_IQMsituacao.AsInteger = 1 then
     begin
       Showmessage('Esta inspeção não pode ser alterada pois já foi importada.');
       abort;
     end;
end;

procedure FatOutrasValIqm;
var
  xMensErro: String;
begin
  xMensErro := '';
  dmGeral.FAT_CD_M_IQM_ITE.cancel;
  if dmGeral.FAT_CD_M_IQM_ITE.IsEmpty then
     begin
       xMensErro := xMensErro + 'Nenhum item foi inserido na inspeção de itens' + #13;
     end;

  try

  finally

  end;

  if xMensErro<>'' then
     begin
       raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
       abort;
     end;
end;

function  FatVefifNFeDup: Boolean;
begin
  result := false;

  if (dmGeral.FAT_CD_M_IQMid_emitente.Text <> '') and
     (dmGeral.FAT_CD_M_IQMnumero_nf.Text <> '') and
     (dmGeral.FAT_CD_M_IQMserie.Text <> '') then
     begin
       dmGeral.BUS_CD_M_IQM.Close;
       dmGeral.BUS_CD_M_IQM.Data :=
               dmGeral.BUS_CD_M_IQM.DataRequest(
                  VarArrayOf([91, dmGeral.FAT_CD_M_IQMid_iqm.Text,
                                  dmGeral.FAT_CD_M_IQMid_emitente.Text,
                                  dmGeral.FAT_CD_M_IQMnumero_nf.Text,
                                  dmGeral.FAT_CD_M_IQMserie.Text,
                                  dmGeral.FAT_CD_M_IQMsub_serie.Text]));

       if dmGeral.BUS_CD_M_IQM.RecordCount > 0 then
          begin
            result := true;
          end;
     end;

end;

end.
