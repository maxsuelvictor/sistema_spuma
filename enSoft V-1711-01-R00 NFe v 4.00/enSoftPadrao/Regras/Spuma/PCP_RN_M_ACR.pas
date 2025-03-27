unit PCP_RN_M_ACR;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure PcpNovoAcr(DataSet: TDataSet);
procedure PcpNovoAcrIte(DataSet: TDataSet);
procedure PcpNovoAcrItePcn(DataSet: TDataSet);
procedure PcpNovoAcrItePcr(DataSet: TDataSet);
procedure PcpNovoAcrItePrc(DataSet: TDataSet);
procedure PcpValidaAcr(DataSet: TDataSet);
procedure PcpValidaAcrIte(DataSet: TDataSet);
procedure PcpValidarOutrosIte;
procedure PcpValidaAcrItePrc;
procedure PCP_CD_M_ACR_PRCsituacaoChange;
procedure PcpVerificarAtendimentoConcluidoAcr;

function montarNroProtocolo(const id_empresa: integer; DataSistema: TDateTime): String;

implementation
Uses uDmGeral,enConstantes, uProxy, enFunc;

function montarNroProtocolo(const id_empresa: integer; DataSistema: TDateTime): String;
var
  Ano_da_empresa, Mes_da_empresa, dia_da_semana: String;
  empresa : string;
  dia,mes,ano: word;
  seq: integer;
begin
  seq := dmgeral.PCP_CD_M_ACR.FieldByName('ID_ACR').AsInteger;

  empresa := inttostr(id_empresa);
  if length(empresa) = 1 then
     begin
       empresa := '0'+empresa;
     end;
  DecodeDate(DataSistema,ano,mes,dia);

  dia_da_semana := IntToStr(dia);
  result := '';

       Ano_da_empresa := dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ANO_CORRENTE').AsString;
       Mes_da_empresa := dmgeral.CAD_CD_C_PAR_CTR.FieldByName('MES_CORRENTE').AsString;

       if length(Mes_da_empresa) = 1 then
          begin
            Mes_da_empresa := '0' + Mes_da_empresa;
          end;

       if length(dia_da_semana) = 1 then
          begin
            dia_da_semana := '0' + dia_da_semana;
          end;

       result :=  Ano_da_empresa+ Mes_da_empresa+ dia_da_semana + empresa + IntToStr(seq);
end;

procedure PcpNovoAcr(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.PCP_CD_M_ACR.FieldByName('id_acr').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_M_ACR');
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmGeral.PCP_CD_M_ACR.FieldByName('id_empresa').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger;
  dmGeral.PCP_CD_M_ACR.FieldByName('data_atendimento').AsDateTime := xDataSis;
  dmGeral.PCP_CD_M_ACR.FieldByName('hora_atendimento').Text := TimeToStr(Now);

  dmGeral.PCP_CD_M_ACR.FieldByName('id_atendente').AsInteger := xFuncionario;
  dmGeral.PCP_CD_M_ACR.FieldByName('atendimento_concluido').AsInteger := 0;

  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, xFuncionario]));
  dmGeral.PCP_CD_M_ACR.FieldByName('int_nomeate').AsString :=
          dmGeral.BUS_CD_C_FUN.FieldByName('Nome').AsString;

  dmGeral.PCP_CD_M_ACR.FieldByName('nro_protocolo').AsString :=
          montarNroProtocolo(dmGeral.PCP_CD_M_ACR.FieldByName('id_empresa').AsInteger,
                             dmGeral.PCP_CD_M_ACR.FieldByName('data_atendimento').AsDateTime);

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_M_ACR',xCodLme,xRevLme,dmGeral.PCP_CD_M_ACR);
end;

procedure PcpVerificarAtendimentoConcluidoAcr;
var
  status:integer;
begin
  status := 0;
  dmGeral.PCP_CD_M_ACR_ITE.First;
  while ((not dmGeral.PCP_CD_M_ACR_ITE.EOF) and (status=0)) do
    begin
      dmGeral.PCP_CD_M_ACR_PRC.First;
      while ((not dmgeral.PCP_CD_M_ACR_PRC.EOF) and (status=0)) do
       begin
         if (dmGeral.PCP_CD_M_ACR_PRC.FieldByName('SITUACAO').AsInteger = 1) then
           begin
             status:=1;
           end;

         dmGeral.PCP_CD_M_ACR_PRC.Next;
       end;
      dmGeral.PCP_CD_M_ACR_ITE.Next;
    end;
   dmGeral.PCP_CD_M_ACR.FieldByName('ATENDIMENTO_CONCLUIDO').AsInteger := status;
end;

procedure PcpNovoAcrIte(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_acr_p').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_M_ACR_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('garantia').AsBoolean := False;
end;

procedure PcpNovoAcrItePcn(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.PCP_CD_M_ACR_PCN.FieldByName('id_acr_pn').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_M_ACR_ITE_PCN');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure PcpNovoAcrItePcr(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.PCP_CD_M_ACR_PCR.FieldByName('id_acr_ph').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_M_ACR_ITE_PCR');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure PcpNovoAcrItePrc(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.PCP_CD_M_ACR_PRC.FieldByName('id_acr_pr').AsInteger   :=
         SMPrincipal.enValorChave('PCP_TB_M_ACR_ITE_PRC');

    dmGeral.PCP_CD_M_ACR_PRC.FieldByName('situacao').AsInteger    := 0;
    dmGeral.PCP_CD_M_ACR_PRC.FieldByName('int_desc_sit').AsString := 'Em aberto';
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmGeral.PCP_CD_M_ACR_PRC.FieldByName('situacao').AsInteger := 0;
end;

procedure PcpValidaAcr(DataSet: TDataSet);
var
  xMensErro: string;
  xTamDoc: Integer;
begin
  xMensErro := '';

    if (dmGeral.PCP_CD_M_ACR.FieldByName('nro_protocolo').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Nº do Protocolo deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_ACR.FieldByName('nro_protocolo').FocusControl;
     end;

   // comentado a pedido de Allison , dia 06/02/17 por Maxsuel

  {  if (dmGeral.PCP_CD_M_ACR.FieldByName('data_atendimento').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Data do Atendimento deve ser informada.'+ #13;
       dmGeral.PCP_CD_M_ACR.FieldByName('data_atendimento').FocusControl;
     end;

   if (dmGeral.PCP_CD_M_ACR.FieldByName('hora_atendimento').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Hora do Atendimento deve ser informada.'+ #13;
       dmGeral.PCP_CD_M_ACR.FieldByName('hora_atendimento').FocusControl;
     end;  }

  if (dmGeral.PCP_CD_M_ACR.FieldByName('id_atendente').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Nome do Atendente deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_ACR.FieldByName('id_atendente').FocusControl;
     end;

  if (dmGeral.PCP_CD_M_ACR.FieldByName('tipo_cliente').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Identificação do Cliente deve ser informada.'+ #13;
       dmGeral.PCP_CD_M_ACR.FieldByName('tipo_cliente').FocusControl;
     end;

  if (dmGeral.PCP_CD_M_ACR.FieldByName('tipo_cliente').AsInteger = 0) or
     (dmGeral.PCP_CD_M_ACR.FieldByName('tipo_cliente').AsInteger = 2) then
     begin
        if (dmGeral.PCP_CD_M_ACR.FieldByName('id_busca_clirep').AsString = '') then
           begin
             xMensErro:= xMensErro + '.Código deve ser informado.'+ #13;
             dmGeral.PCP_CD_M_ACR.FieldByName('id_busca_clirep').FocusControl;
           end;
     end;

  if trim(dmGeral.PCP_CD_M_ACR.FieldByName('cnpj_cpf_consumidor').text) <> '' then
     begin
       xTamDoc := Length(trim(dmGeral.PCP_CD_M_ACR.FieldByName('cnpj_cpf_consumidor').text));
       if Length(trim(dmGeral.PCP_CD_M_ACR.FieldByName('cnpj_cpf_consumidor').text)) = 11 then
          begin
            if VerCPF(trim(dmGeral.PCP_CD_M_ACR.FieldByName('cnpj_cpf_consumidor').text)) = False then
               xMensErro:= xMensErro + '.CPF Inválido.'+ #13;
          end
       else if Length(trim(dmGeral.PCP_CD_M_ACR.FieldByName('cnpj_cpf_consumidor').text)) = 14 then
          begin
            if VerCNPJ(trim(dmGeral.PCP_CD_M_ACR.FieldByName('cnpj_cpf_consumidor').text)) = False then
               xMensErro:= xMensErro + '.CPF Inválido.'+ #13;
          end
       else
          begin
               xMensErro:= xMensErro + '.Doc CPF/CNPJ Inválido.'+ #13;
          end;

       if (DataSet.State in [dsInsert]) Then
          begin
            dmGeral.BUS_CD_M_ACR.Close;
            dmGeral.BUS_CD_M_ACR.Data :=
            dmGeral.BUS_CD_M_ACR.DataRequest(
                    VarArrayOf([2, dmGeral.PCP_CD_M_ACR.FieldByName('cnpj_cpf_consumidor').text]));
            if not dmGeral.BUS_CD_M_ACR.IsEmpty then
               begin
                 xMensErro:= xMensErro + '.CNPJ/CPF já cadastrado.'+ #13;
               end;
          end;
     end;

  if (dmGeral.PCP_CD_M_ACR.FieldByName('nome_consumidor').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Nome deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_ACR.FieldByName('nome_consumidor').FocusControl;
     end;
  {
  if (dmGeral.PCP_CD_M_ACR.FieldByName('endereco_consumidor').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Endereço deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_ACR.FieldByName('endereco_consumidor').FocusControl;
     end;

   if (dmGeral.PCP_CD_M_ACR.FieldByName('nro_end_consumidor').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Nº do Endereço deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_ACR.FieldByName('nro_end_consumidor').FocusControl;
     end;

   if (dmGeral.PCP_CD_M_ACR.FieldByName('bairro_consumidor').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Bairro deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_ACR.FieldByName('bairro_consumidor').FocusControl;
     end;  }

   if (dmGeral.PCP_CD_M_ACR.FieldByName('id_cidade').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Cidade deve ser informada.'+ #13;
       dmGeral.PCP_CD_M_ACR.FieldByName('id_cidade').FocusControl;
     end;
   {
   if (dmGeral.PCP_CD_M_ACR.FieldByName('cep_consumidor').AsString = '') then
     begin
       xMensErro:= xMensErro + '.CEP deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_ACR.FieldByName('cep_consumidor').FocusControl;
     end;

   if (dmGeral.PCP_CD_M_ACR.FieldByName('numero_nf').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Nº da Nota deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_ACR.FieldByName('numero_nf').FocusControl;
     end;

   if (dmGeral.PCP_CD_M_ACR.FieldByName('dta_nf').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Data da Nota deve ser informada.'+ #13;
       dmGeral.PCP_CD_M_ACR.FieldByName('dta_nf').FocusControl;
     end;    }

   if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure PcpValidaAcrIte(DataSet: TDataSet);
var
   xMensErro: string;
begin
   xMensErro := '';

   if (dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_item').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Item deve ser informado.'+ #13;
       dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_item').FocusControl;
     end;

  // comentado a pedido de Allison , dia 06/02/17 por Maxsuel

  { if (dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_fabricacao').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Data de Fabricação deve ser informada.'+ #13;
       dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_fabricacao').FocusControl;
     end;

   if (dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_validade').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Data de Validade deve ser informada.'+ #13;
       dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_validade').FocusControl;
     end;

   if (dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_venda').AsString = '') then
     begin
       xMensErro:= xMensErro + '.Data de Venda deve ser informada.'+ #13;
       dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_venda').FocusControl;
     end;

   if (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('garantia').text) = '') then
     begin
       xMensErro:= xMensErro + '.Garantia deve ser informada.'+ #13;
       dmGeral.PCP_CD_M_ACR_ITE.FieldByName('garantia').FocusControl;
     end;

   if (dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_fabricacao').AsString <> '') and
      (dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_validade').AsString <> '') and
      (dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_venda').AsString <> '') then
      begin
        if dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_fabricacao').AsDateTime >
           dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_validade').AsDateTime then
           begin
             ShowMessage('Data de Fabricação não pode ser maior que a Data de Validade.');
             dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_fabricacao').FocusControl;
             Abort;
           end;

        if dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_fabricacao').AsDateTime >
           dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_venda').AsDateTime then
           begin
             ShowMessage('Data de Fabricação não pode ser maior que a Data de Venda.');
             dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_fabricacao').FocusControl;
             Abort;
           end;

        if dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_venda').AsDateTime >
           dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_validade').AsDateTime then
           begin
             ShowMessage('Data de Venda não pode ser maior que a Data de Validade.');
             dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_venda').FocusControl;
             Abort;
           end;

        if dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_venda').AsDateTime >
           dmGeral.PCP_CD_M_ACR.FieldByName('data_atendimento').AsDateTime then
           begin
             ShowMessage('Data de Venda não pode ser maior que a Data de Atendimento.');
             dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_venda').FocusControl;
             Abort;
           end;

        if dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_validade').AsDateTime <
           dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_fabricacao').AsDateTime then
           begin
             ShowMessage('Data de Validade não pode ser menor que a Data de Fabricação.');
             dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_validade').FocusControl;
             Abort;
           end;
      end;    }




   if xMensErro <> '' then
      begin
        raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
        Abort;
      end;
end;

procedure PcpValidaAcrItePrc;
var
   xMensErro: string;
begin
   xMensErro := '';

    // comentado a pedido de Allison , dia 06/02/17 por Maxsuel

   {if trim(dmGeral.PCP_CD_M_ACR_PRC.FieldByName('id_resp_reg_acao').text) = '' then
      begin
        xMensErro:= xMensErro + '.Responsável pela análise'+ #13;
        dmGeral.PCP_CD_M_ACR_PRC.FieldByName('id_resp_reg_acao').FocusControl;
      end;

   if trim(dmGeral.PCP_CD_M_ACR_PRC.FieldByName('data_reg_acao').text) = '' then
     begin
       xMensErro:= xMensErro + '.Data da ação'+ #13;
       dmGeral.PCP_CD_M_ACR_PRC.FieldByName('data_reg_acao').FocusControl;
     end;

   if trim(dmGeral.PCP_CD_M_ACR_PRC.FieldByName('evento_ocorrido_reg_acao').text) = '' then
      begin
        xMensErro:= xMensErro + '.Evento ocorrido'+ #13;
        dmGeral.PCP_CD_M_ACR_PRC.FieldByName('evento_ocorrido_reg_acao').FocusControl;
      end;

   if (trim(dmGeral.PCP_CD_M_ACR_PRC.FieldByName('data_reg_acao').text) <> '') and
      (trim(dmGeral.PCP_CD_M_ACR.FieldByName('data_atendimento').text) <> '') then
     begin
       if dmGeral.PCP_CD_M_ACR_PRC.FieldByName('data_reg_acao').AsDateTime <
          dmGeral.PCP_CD_M_ACR.FieldByName('data_atendimento').AsDateTime then
          begin
             xMensErro:= xMensErro + '.Data da ação não pode ser menor que a data do atendimento'+ #13;
                         dmGeral.PCP_CD_M_ACR_PRC.FieldByName('data_reg_acao').FocusControl;
          end;
     end;  }

   if xMensErro <> '' then
      begin
        raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
        Abort;
      end;
end;

procedure PCP_CD_M_ACR_PRCsituacaoChange;
begin
  if dmGeral.PCP_CD_M_ACR_PRC.FieldByName('situacao').AsInteger = 0 then
     dmGeral.PCP_CD_M_ACR_PRC.FieldByName('int_desc_sit').AsString := 'Em aberto'
  else
     if dmGeral.PCP_CD_M_ACR_PRC.FieldByName('situacao').AsInteger = 1 then
        dmGeral.PCP_CD_M_ACR_PRC.FieldByName('int_desc_sit').AsString := 'Concluído';
end;

procedure PcpValidarOutrosIte;
var
   xMensErro: string;
   codigo: string;
begin
  xMensErro := '';
  try
    dmGeral.PCP_CD_M_ACR_ITE.BeforePost := nil;

  dmGeral.PCP_CD_M_ACR_ITE.first;
  while not dmGeral.PCP_CD_M_ACR_ITE.eof do
     begin
         // comentado a pedido de Allison , dia 06/02/17 por Maxsuel
         {if (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_monitor_abert').AsString) = '' )  and
             (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_monitor_encer').AsString) <> '') then
             begin
               xMensErro := xMensErro + '.Monitoramento: Data de abertura precisa ser preenchida, pois a data do encerramento foi informada' + #13;
               codigo :=  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_item').AsString;
               dmGeral.PCP_CD_M_ACR_ITE.Last;
             end;}

          if (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_monitor_abert').AsString) <> '' ) and
             (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_monitor_encer').AsString) <> '') then
             begin
               // comentado a pedido de Allison , dia 06/02/17 por Maxsuel
               { if dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_monitor_abert').AsDateTime >
                   dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_monitor_encer').AsDateTime then
                   begin
                     xMensErro := xMensErro + '.Monitoramento: Data de abertura não pode ser maior que a data do encerramento.' + #13;

                     codigo :=  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_item').AsString;
                     dmGeral.PCP_CD_M_ACR_ITE.Last;
                   end;

                if (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_monitor_abert').AsString) <> '' ) and
                  (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('hora_monitor_abert').AsString) = '') then
                   begin
                     xMensErro := xMensErro + '.Monitoramento: A hora da abertura deve ser preenhida' +#13;

                     codigo :=  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_item').AsString;
                     dmGeral.PCP_CD_M_ACR_ITE.Last;
                   end;

                if (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_monitor_encer').AsString) <> '' ) and
                  (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('hora_monitor_encer').AsString) = '') then
                   begin
                     xMensErro := xMensErro + '.Monitoramento: A hora do encerramento deve ser preenhida.' + #13;

                     codigo :=  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_item').AsString;
                      dmGeral.PCP_CD_M_ACR_ITE.Last;
                   end;}
             end
          else
             begin
               {if (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_monitor_abert').AsString) <> '' ) and
                  (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('hora_monitor_abert').AsString) = '') then
                   begin
                     xMensErro := xMensErro + '.Monitoramento: A hora da abertura deve ser preenhida' +#13;

                     codigo :=  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_item').AsString;
                     dmGeral.PCP_CD_M_ACR_ITE.Last;
                   end;

                if (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_monitor_encer').AsString) <> '' ) and
                  (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('hora_monitor_encer').AsString) = '') then
                   begin
                     xMensErro := xMensErro + '.Monitoramento: A hora do encerramento deve ser preenhida.' + #13;

                     codigo :=  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_item').AsString;
                      dmGeral.PCP_CD_M_ACR_ITE.Last;
                   end;

                if (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_monitor_abert').AsString) = '' ) and
                  (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('hora_monitor_abert').AsString) <> '') then
                   begin
                     xMensErro := xMensErro + '.Monitoramento: A data da abertura deve ser preenhida' +#13;

                     codigo :=  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_item').AsString;
                     dmGeral.PCP_CD_M_ACR_ITE.Last;
                   end;

                if (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_monitor_encer').AsString) = '' ) and
                  (trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('hora_monitor_encer').AsString) <> '') then
                   begin
                     xMensErro := xMensErro + '.Monitoramento: A data do encerramento deve ser preenhida.' + #13;

                     codigo :=  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_item').AsString;
                      dmGeral.PCP_CD_M_ACR_ITE.Last;
                   end;}
             end;
        dmGeral.PCP_CD_M_ACR_ITE.Next;
     end;
   if xMensErro <> '' then
      begin
        dmGeral.PCP_CD_M_ACR_ITE.edit;
        dmGeral.PCP_CD_M_ACR_ITE.FieldByName('data_monitor_abert').FocusControl;
        raise Exception.Create(enConstantes.MensErro + #13 + xMensErro+#13 + 'Item: ' + codigo);
        Abort;
      end;
  finally
     dmGeral.PCP_CD_M_ACR_ITE.BeforePost := dmGeral.PCP_CD_M_ACR_ITEBeforePost;
  end;

end;


end.
