unit FIN_RN_M_BOL;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,System.Classes,
     DataSnap.DBClient, Vcl.Forms, ComObj, Vcl.StdCtrls;

procedure ValidaBol;
procedure carregaInfconta(BUS_CD_C_CTC: TClientDataSet);
procedure GerarBoleto(Origem: integer; IdCliente: String; cdsTitulos,
                      BUS_CD_C_CTC: TClientDataSet;Reimprimir:Boolean; NossoNroBol: integer; LayoutBol: TMemo);

procedure EnviarBoleto(Origem: integer; cdsTitulos: TClientDataSet);
procedure montarMensagemEmail(var corpoMsg:String; cdsTitulos: TClientDataSet);

procedure GerarRemessa(cdsTitulos,BUS_CD_C_CTC: TClientDataSet;Diretorio,tipo_ocorrencia:string);
function BuscarNroParcela(const nro_parcela: string): String;

implementation

Uses uDmGeral,enConstantes, uProxy, FIN_UN_M_BOL, AcbrBoleto,ACBrBoletoConversao, ACBrUtil, enFunc;




procedure ValidaBol;
Var
xMensErro:string;
xHistorico:Integer;
begin
  xMensErro:='';

  if (FIN_FM_M_BOL.txtCliente.Text=null) or
     (FIN_FM_M_BOL.txtCliente.Text='') then
     begin
       xMensErro:= xMensErro + '.Cliente deve ser informado.'+ #13;
     end;

     if (FIN_FM_M_BOL.txtContaCorrente.Text=null) or
     (FIN_FM_M_BOL.txtContaCorrente.Text='') then
     begin
       xMensErro:= xMensErro + '.Conta Corrente deve ser informada.'+ #13;
     end;

     if FIN_FM_M_BOL.deInicial.Date=0 then
     begin
       xMensErro:= xMensErro + '.Data Inicial deve ser informada.'+ #13;
         FIN_FM_M_BOL.deInicial.SetFocus;
     end;

     if FIN_FM_M_BOL.deFinal.Date=0 then
     begin
       xMensErro:= xMensErro + '.Data Final deve ser informada.'+ #13;
     end;

     if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;


function StrToEnumerado(out ok: boolean; const s: string; const AString:
  array of string; const AEnumerados: array of variant): variant;
var
  i: integer;
begin
  result := -1;
  for i := Low(AString) to High(AString) do
    if AnsiSameText(s, AString[i]) then
      result := AEnumerados[i];
  ok := result <> -1;
  if not ok then
    result := AEnumerados[0];
end;


function strToTipoCobranca(out ok: boolean; const s: string): TACBrTipoCobranca;
begin
  result := StrToEnumerado(ok, s, ['0', '1', '2','3','4','5','6','7','8','9',
                                   '10','11','12','13','14','15','16','17','18','19' ],
                                  [ cobNenhum, cobBancoDoBrasil, cobSantander,
                                    cobCaixaEconomica, cobCaixaSicob, cobBradesco,
                                    cobItau, cobBancoMercantil, cobSicred, cobBancoob,
                                    cobBanrisul, cobBanestes, cobHSBC, cobBancoDoNordeste,
                                    cobBRB, cobBicBanco, cobBradescoSICOOB, cobBancoSafra,
                                    cobSafraBradesco, cobBancoCECRED]);
end;

function strToCaracteristica(out ok: boolean; const s: string): TACBrCaracTitulo;
begin
  result := StrToEnumerado(ok, s, ['0', '1', '2','3','4','5','6','7','8' ],
                                  [ tcSimples, tcVinculada, tcCaucionada, tcDescontada, tcVendor, tcDireta,
                                    tcSimplesRapComReg, tcCaucionadaRapComReg, tcDiretaEspecial ]);



end;

function strToRespEmissao(out ok: boolean; const s: string): TACBrResponEmissao;
begin
  result := StrToEnumerado(ok, s, ['0', '1', '2','3','4' ],
                                  [ tbCliEmite,tbBancoEmite,tbBancoReemite,tbBancoNaoReemite,tbBancoPreEmite ]);

end;

function strToTipoCarteira(out ok: boolean; const s: string): TACBrTipoCarteira;
begin
  result := StrToEnumerado(ok, s, ['0', '1','2' ],
                                  [ tctSimples, tctRegistrada,tctEletronica ]);

end;

function strToLayoutRemessa(out ok: boolean; const s: string): TACBrLayoutRemessa;
begin
  result := StrToEnumerado(ok, s, ['0', '1' ],
                                  [ c400, c240 ]);

end;


procedure carregaInfconta(BUS_CD_C_CTC: TClientDataSet);
Var
  iRet:Boolean;
begin
  with dmGeral.enBoleto.Banco do
     begin
       TipoCobranca            :=  strToTipoCobranca(iRet,BUS_CD_C_CTC.FieldByName('TIPO_COBRANCA').AsString);

     end;
  with dmGeral.enBoleto.Cedente do
     begin
       Agencia           := trim(BUS_CD_C_CTC.FieldByName('AGENCIA').AsString);
       AgenciaDigito     := trim(BUS_CD_C_CTC.FieldByName('AGENCIA_DIG').AsString);
       Bairro            := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_BAIRRO').AsString;
       CaracTitulo       := strToCaracteristica(iRet, BUS_CD_C_CTC.FieldByName('CARACT_TITULO').AsString);
       cep               := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CEP').AsString;
       cidade            := dmGeral.CAD_CD_C_PAR.FieldByName('INT_NOMECID').AsString;
       if (trim(BUS_CD_C_CTC.FieldByName('TIPO_COBRANCA').AsString) <> '') and (BUS_CD_C_CTC.FieldByName('TIPO_COBRANCA').AsInteger = 1) then // Banco do Brasil
          CNPJCPF           := BUS_CD_C_CTC.FieldByName('CNPJ_TITULAR').AsString
       else
          CNPJCPF        := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CNPJ').AsString;
       CodigoCedente     := trim(BUS_CD_C_CTC.FieldByName('CEDENTE_COD').AsString);
       CodigoTransmissao := '';
       Complemento       := '';
       Conta             := trim(BUS_CD_C_CTC.FieldByName('CONTA_CORRENTE').AsString);
       ContaDigito       := trim(BUS_CD_C_CTC.FieldByName('CONTA_CORRENTE_DIG').AsString);
       Convenio          := trim(BUS_CD_C_CTC.FieldByName('CONVENIO').AsString);
       Logradouro        := dmGeral.CAD_CD_C_PAR.FieldByName('emp_endereco').AsString + ' - ' +
                            dmGeral.CAD_CD_C_PAR.FieldByName('emp_numero').AsString;
       Modalidade        := BUS_CD_C_CTC.FieldByName('carteira_variacao').AsString;
       Nome              := BUS_CD_C_CTC.FieldByName('cedente_nom').AsString;
       {Nome              := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_RAZAO').AsString +' - '+
                            'CNPJ: ' + CNPJCPF+' - '+Logradouro+','+
                            dmGeral.CAD_CD_C_PAR.FieldByName('EMP_NUMERO').AsString+','+
                            dmGeral.CAD_CD_C_PAR.FieldByName('EMP_BAIRRO').AsString+'-'+
                            dmGeral.CAD_CD_C_PAR.FieldByName('INT_NOMECID').AsString+'-'+
                            dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').AsString;}

       NumeroRes         := '';
       ResponEmissao     := strToRespEmissao(iRet,BUS_CD_C_CTC.FieldByName('RESP_EMISSAO').AsString);
       Telefone          := '';
       TipoCarteira      := strToTipoCarteira(iRet,BUS_CD_C_CTC.FieldByName('TIPO_CARTEIRA').AsString);
       TipoInscricao     := pJuridica;
       UF                := dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').AsString;
     end;
end;



procedure montarMensagemEmail(var corpoMsg:String;cdsTitulos: TClientDataSet);
begin
   corpoMsg :=
      '<body> '+
      '  <font size="1" face="arial"> '+
      '    <center> '+
      '      (Mariores informações sobre os anexos no corpo do e-mail) '+
      '    </center> '+
      '  </font></br> '+

      '  <table border="2" bgcolor="F5FFFA" width="100%"> '+
      '  <tr><td> '+

      '     <center> '+
      '     <table border="0" bgcolor="F5FFFA" width="95%"> '+
      '     <tr><td> '+
      '         <font size="3" face="arial"> '+
      '            <p><b><center>Boleto Bancário</center></b></p> '+
      '         </font> '+

      '         <hr size=2 width="100%"/> '+

      '         <font size="2" face="arial"> '+
      '            <p>Prezado Cliente,</p> '+

      '            <p>Você está recebendo Boleto de número '+cdsTitulos.fieldByName('NUM_PARCELA').AsString+', valor de R$'+FormatCurr('###,###,###,###,##0.00',cdsTitulos.fieldByName('VLR_PARCELA').AsCurrency)+' e com vencimento '+cdsTitulos.fieldByName('DTA_VENCIMENTO').AsString+'</p>'+

      '            <p>Atenciosamente,</p>'+
      '            <p>'+UpperCase(dmGeral.CAD_CD_C_PAR.FieldByName('EMP_RAZAO').AsString)+'</p> '+
      '         </font> '+

      '        </td> '+
      '     </tr> '+
      '          </table> '+
      '          </center> '+
      '       </td> '+
      '     </tr> '+

      '   </table> '+

      '   <font size="1" face="arial"> '+
      '     Esse e-mail, bem como seu(s) anexo(s), foi gerado pelo sistema enSoft(www.e-north.com.br), '+
      '     parte integrante do pacote '+ copy(ExtractFileName(Application.ExeName),1,Length(ExtractFileName(Application.ExeName))-4)+'. '+
      '   </font> '+

      '</body> ';
end;




procedure EnviarBoleto(Origem: integer; cdsTitulos: TClientDataSet);
var
 // CobreBemX: Variant;
  EmailSacado: Variant;
  Path,BOL_MSG_1,BOL_MSG_2: String;
  JurMes:Extended;
  //Boleto: Variant;
  NumeroNF,NBol, Retorno: String;
  VlrTitulo: Currency;
  i,NossoNumeroBol: integer;
  Titulo : TACBrTitulo;
  iRet,TSL,SSL:Boolean;
  xLocalPag:String;

  Para,Assunto,CorpoMensagem: String;
  CorpoMsg: TStrings;
  CC: Tstrings;
begin
  {
    Origem:
       0 - FIN_FM_M_BOL     -> Emissão de Boleto

  }

  try
    dmGeral.enBoleto.ListadeBoletos.Clear;

    dmGeral.BUS_CD_C_CTC.Close;
    dmGeral.BUS_CD_C_CTC.Data :=
         dmGeral.BUS_CD_C_CTC.DataRequest(VarArrayOf([0,cdsTitulos.fieldByName('BOL_ID_CONTA').AsString]));


    carregaInfconta(dmGeral.BUS_CD_C_CTC);


    JurMes    := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TAX_JUROS_MENSAL').AsFloat;
    BOL_MSG_1 := dmGeral.BUS_CD_C_CTC.FieldByName('mensagem_1').AsString;
    BOL_MSG_2 := dmGeral.BUS_CD_C_CTC.FieldByName('mensagem_2').AsString;

    dmGeral.BusCliente(0,cdsTitulos.fieldByName('ID_CLIENTE').AsString);


    // Dados para o boleto ------------------------------------------------------

    Titulo := dmGeral.enBoleto.CriarTituloNaLista;
    with Titulo do
    begin
       Carteira          := dmGeral.BUS_CD_C_CTC.FieldByName('carteira').AsString;

       Vencimento        := cdsTitulos.fieldByName('DTA_VENCIMENTO').asDateTime;
       DataDocumento     := xDataSis;

       //NumeroDocumento   := NumeroNF + '/'+ BuscarNroParcela(cdsTitulos.FieldByName('NUM_PARCELA').AsString);
       NumeroDocumento   := cdsTitulos.FieldByName('NUM_PARCELA').AsString;

       EspecieDoc        := dmGeral.BUS_CD_C_CTC.FieldByName('especie_tit').AsString;
       if dmGeral.BUS_CD_C_CTC.FieldByName('aceite_tit').AsString = 'A' then
          Aceite := atSim
       else
          Aceite := atNao;
       EspecieMod        := 'R$';
       DataProcessamento := Now;
       NossoNumero       := cdsTitulos.fieldByName('BOL_NOSSO_NUMERO').AsString;
       ValorDocumento    := cdsTitulos.FieldByName('VLR_PARCELA').AsCurrency;
       Sacado.NomeSacado := dmGeral.BUS_CD_C_CLI.FieldByName('nome').AsString;
       Sacado.CNPJCPF    := OnlyNumber(dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString);
       Sacado.Logradouro := dmGeral.BUS_CD_C_CLI.FieldByName('ENDERECO').AsString;

       Sacado.Numero     := dmGeral.BUS_CD_C_CLI.FieldByName('NUMERO').AsString;
       Sacado.Bairro     := dmGeral.BUS_CD_C_CLI.FieldByName('BAIRRO').AsString;
       Sacado.Cidade     := dmGeral.BUS_CD_C_CLI.FieldByName('INT_NOMECID').AsString;
       Sacado.UF         := dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;
       Sacado.CEP        := OnlyNumber(dmGeral.BUS_CD_C_CLI.FieldByName('CEP').AsString);
       ValorAbatimento   := 0;

       xLocalPag := dmGeral.BUS_CD_C_CTC.FieldByName('msg_local_pagto').AsString;
       if xLocalPag ='' then
          xLocalPag := 'Até o vencimento pagável em qualquer banco do sistema de compenasação';

       LocalPagamento    := xLocalPag;
       ValorMoraJuros    := JurMes/30;
       ValorDesconto     := 0;
       ValorAbatimento   := 0;


       PercentualMulta   := 0;
       OcorrenciaOriginal.Tipo := toRemessaBaixar;
       Instrucao1        := 'Após o vencimento cobrar ' + formatfloat('##0.00',JurMes) +'% de juros ao mes. ' + #13 +
                             BOL_MSG_1 + ' ' + BOL_MSG_2;
       Instrucao2        := '';
       Mensagem.Text     := Instrucao1;
    end;


    try

      //dmGeral.BoletoRel.FastReportFile := ExtractFileDir(application.ExeName) + '\Report\Boleto.fr3';

      // Comentado por Maxsuel Victor em 08/07/2021
         // dmGeral.BoletoRel.FastReportFile := ExtractFileDir(application.ExeName) + '\Report\BoletoNovo.fr3';

      dmGeral.BoletoRel.FastReportFile := ExtractFileDir(application.ExeName) + '\Report\Boleto.fr3';


      TSL := false;
      SSL := false;
      if (not dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_TLS').IsNull) then
         begin
            TSL := dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_TLS').asBoolean;
         end;

      if (not dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_SSL').IsNull) then
         begin
            SSL := dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_SSL').asBoolean;
         end;

      Para := trim(cdsTitulos.FieldByName('INT_EMAILCLI').AsString);
      CC:=TstringList.Create;

      dmGeral.BusCliEmail(cdsTitulos.FieldByName('ID_CLIENTE').AsString);
      dmgeral.BUS_CD_C_CLI_EML.First;
      while not dmgeral.BUS_CD_C_CLI_EML.eof do
        begin
          CC.Add(dmgeral.BUS_CD_C_CLI_EML.FieldByName('EMAIL').AsString);
          dmgeral.BUS_CD_C_CLI_EML.Next;
        end;
      dmgeral.BUS_CD_C_CLI_EML.Close;
      Assunto := 'Boleto nº.'+ cdsTitulos.FieldByName('NUM_PARCELA').AsString;
      montarMensagemEmail(CorpoMensagem,cdsTitulos);
      CorpoMsg:=TStringList.Create;
      CorpoMsg.Add(CorpoMensagem);
      dmGeral.ACBrMail1.Host := trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP').asString);
      dmGeral.ACBrMail1.Port := trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_PORTA').asString);
      dmGeral.ACBrMail1.Username := Trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_USUARIO').asString);
      dmGeral.ACBrMail1.Password := Trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SENHA').asString);
      dmGeral.ACBrMail1.From := Trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_USUARIO').asString);
      dmGeral.ACBrMail1.Attempts := 1;
      dmGeral.ACBrMail1.SetSSL := SSL; // SSL - ConexÃ£o Segura
      dmGeral.ACBrMail1.SetTLS := TSL; // Auto TLS
      dmGeral.ACBrMail1.ReadingConfirmation := False; //Pede confirmaÃ§Ã£o de leitura do email
      dmGeral.ACBrMail1.UseThread := False;           //Aguarda Envio do Email(nÃ£o usa thread)
      dmGeral.ACBrMail1.FromName := '';//trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_USUARIO').asString);
      dmGeral.ACBrMail1.IsHTML := true;

      dmGeral.enBoleto.EnviarEmail( Para, Assunto,CorpoMsg
                                                     , True  // Enviar PDF junto
                                                     , CC    // Lista com emails que serÃ£o enviado cÃ³pias - TStrings
                                                     , nil);
      ShowMessage('Boletos enviados com sucesso.');
    except
       on e: Exception do
          begin
            ShowMessage('Erro ao tentar enviar Boletos por e-mail.');
          end;
    end;

  finally
    dmGeral.BUS_CD_C_CLI.Close;
    dmGeral.BUS_CD_C_CTC.Close;
  end;
end;







procedure GerarBoleto(Origem: integer; IdCliente: String; cdsTitulos,BUS_CD_C_CTC: TClientDataSet;Reimprimir:Boolean;
                      NossoNroBol: integer; LayoutBol: TMemo);
var
 // CobreBemX: Variant;
  EmailSacado: Variant;
  Path,BOL_MSG_1,BOL_MSG_2: String;
  JurMes:Extended;
  //Boleto: Variant;
  NumeroNF,NBol, Retorno: String;
  VlrTitulo: Currency;
  i,NossoNumeroBol: integer;
  Titulo : TACBrTitulo;
  iRet:Boolean;
  xLocalPag:String;
begin
  {
    Origem:
       1 - FAT_FM_M_CXA_NFE -> Controle de Caixa
       2 - FIN_FM_M_BOL     -> Emissão de Boleto
       3 - FIN_FM_M_RBX     -> Baixa de Contas a Receber
  }


  // Reimprimir , essa variável será utilizada pela tela de Títulos, quando o usuário quiser Reimprimir o boleto.
  // NossoNroBol, essa variável será utilizada pela tela de Títulos, quando o usuário quiser Reimprimir o boleto.
  // dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  try

  if BUS_CD_C_CTC.IsEmpty then
     begin
       ShowMessage('Conta corrente não encontrada.');
       exit;
     end;

  dmGeral.enBoleto.ListadeBoletos.Clear;

  carregaInfconta( BUS_CD_C_CTC );


  JurMes    := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TAX_JUROS_MENSAL').AsFloat;
  BOL_MSG_1 := BUS_CD_C_CTC.FieldByName('mensagem_1').AsString;
  BOL_MSG_2 := BUS_CD_C_CTC.FieldByName('mensagem_2').AsString;

  dmGeral.BusCliente(0,IdCliente);

  cdsTitulos.First;
  // Dados para o boleto ------------------------------------------------------
  i:=0;
  if not Reimprimir then
     begin
       NossoNumeroBol := BUS_CD_C_CTC.FieldByName('nnu_proximo').AsInteger;
       inc(i);
     end;
  cdsTitulos.IndexFieldNames := 'DTA_VENCIMENTO';
  cdsTitulos.First;
  while not cdsTitulos.Eof do
    begin
      NumeroNF  := cdsTitulos.FieldByName('INT_NUMERONF').AsString;
      VlrTitulo := cdsTitulos.FieldByName('VLR_PARCELA').AsCurrency;
      cdsTitulos.Edit;
      if not Reimprimir then
         begin
           cdsTitulos.fieldByName('BOL_ID_CONTA').AsInteger     := BUS_CD_C_CTC.fieldByName('ID_CONTA').AsInteger;
           cdsTitulos.fieldByName('BOL_BANCO').AsInteger        := BUS_CD_C_CTC.fieldByName('BANCO').AsInteger;
           cdsTitulos.FieldByName('NUM_PARCELA').AsString       := cdsTitulos.FieldByName('NUM_PARCELA').AsString;
           cdsTitulos.fieldByName('BOL_NOSSO_NUMERO').AsInteger := NossoNumeroBol;
           cdsTitulos.FieldByName('SEQ_NOSSO_NUMERO').AsInteger := i;
           inc(NossoNumeroBol);
           if NumeroNF<>'' then
            cdsTitulos.FieldByName('BOL_CHAVE').AsString         := NumeroNF + BuscarNroParcela(cdsTitulos.FieldByName('NUM_PARCELA').AsString)
           else if pos('-',cdsTitulos.FieldByName('NUM_PARCELA').AsString)>0 then
            cdsTitulos.FieldByName('BOL_CHAVE').AsString := copy(cdsTitulos.FieldByName('NUM_PARCELA').AsString,1,pos('-',cdsTitulos.FieldByName('NUM_PARCELA').AsString)-1)
                                                            + BuscarNroParcela(cdsTitulos.FieldByName('NUM_PARCELA').AsString)
           else
            cdsTitulos.FieldByName('BOL_CHAVE').AsString         := cdsTitulos.FieldByName('NUM_PARCELA').AsString;
         end
      else
         NossoNumeroBol := cdsTitulos.fieldByName('BOL_NOSSO_NUMERO').AsInteger;

      Titulo := dmGeral.enBoleto.CriarTituloNaLista;
      with Titulo do
      begin


         Carteira          := BUS_CD_C_CTC.FieldByName('carteira').AsString;

         Vencimento        := cdsTitulos.fieldByName('DTA_VENCIMENTO').asDateTime;
         DataDocumento     := xDataSis;



         //NumeroDocumento   := NumeroNF + '/'+ BuscarNroParcela(cdsTitulos.FieldByName('NUM_PARCELA').AsString);
         NumeroDocumento   := cdsTitulos.FieldByName('NUM_PARCELA').AsString;

         EspecieDoc        := BUS_CD_C_CTC.FieldByName('especie_tit').AsString;
         if BUS_CD_C_CTC.FieldByName('aceite_tit').AsString = 'A' then
            Aceite := atSim
         else
            Aceite := atNao;

         EspecieMod        := 'R$';
         DataProcessamento := Now;

         NossoNumero       := cdsTitulos.fieldByName('BOL_NOSSO_NUMERO').AsString;
         ValorDocumento    := VlrTitulo;
         Sacado.NomeSacado := dmGeral.BUS_CD_C_CLI.FieldByName('nome').AsString;
         Sacado.CNPJCPF    := OnlyNumber(dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString);
         Sacado.Logradouro := dmGeral.BUS_CD_C_CLI.FieldByName('ENDERECO').AsString;

         Sacado.Numero     := dmGeral.BUS_CD_C_CLI.FieldByName('NUMERO').AsString;
         Sacado.Bairro     := dmGeral.BUS_CD_C_CLI.FieldByName('BAIRRO').AsString;
         Sacado.Cidade     := dmGeral.BUS_CD_C_CLI.FieldByName('INT_NOMECID').AsString;
         Sacado.UF         := dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;
         Sacado.CEP        := OnlyNumber(dmGeral.BUS_CD_C_CLI.FieldByName('CEP').AsString);


         if length(trim(dmGeral.BUS_CD_C_CLI.FieldByName('aval_doc_cnpj_cpf').AsString)) = 11 then
            sacado.SacadoAvalista.Pessoa := pFisica;
         if length(trim(dmGeral.BUS_CD_C_CLI.FieldByName('aval_doc_cnpj_cpf').AsString)) = 14 then
            sacado.SacadoAvalista.Pessoa := pJuridica;

         sacado.SacadoAvalista.NomeAvalista := dmGeral.BUS_CD_C_CLI.FieldByName('aval_nome').AsString;
         sacado.SacadoAvalista.CNPJCPF := dmGeral.BUS_CD_C_CLI.FieldByName('aval_doc_cnpj_cpf').AsString;
         sacado.SacadoAvalista.Logradouro := dmGeral.BUS_CD_C_CLI.FieldByName('aval_logradouro').AsString;
         sacado.SacadoAvalista.Numero := dmGeral.BUS_CD_C_CLI.FieldByName('aval_nro').AsString;;
         sacado.SacadoAvalista.Bairro := dmGeral.BUS_CD_C_CLI.FieldByName('aval_bairro').AsString;
         sacado.SacadoAvalista.Cidade := dmGeral.BUS_CD_C_CLI.FieldByName('int_aval_nomecid').AsString;;
         sacado.SacadoAvalista.UF := dmGeral.BUS_CD_C_CLI.FieldByName('int_aval_uf').AsString;;
         sacado.SacadoAvalista.CEP := dmGeral.BUS_CD_C_CLI.FieldByName('aval_cep').AsString;
         sacado.SacadoAvalista.Email  := dmGeral.BUS_CD_C_CLI.FieldByName('aval_cep').AsString;

         ValorAbatimento   := 0;

         xLocalPag := BUS_CD_C_CTC.FieldByName('msg_local_pagto').AsString;
         if xLocalPag ='' then
            xLocalPag := 'Até o vencimento pagável em qualquer banco do sistema de compensação';

         LocalPagamento    := xLocalPag;
         if BUS_CD_C_CTC.FieldByName('imp_msg_juros_mora').AsBoolean then
            ValorMoraJuros    := VlrTitulo*((JurMes/100)/30);
         ValorDesconto     := 0;
         ValorAbatimento   := 0;

         //DataMoraJuros     := null;
         //DataDesconto      := null;
         //DataAbatimento    := null;
         //DataProtesto      := null;

         PercentualMulta   := BUS_CD_C_CTC.FieldByName('perc_multa').AsCurrency;
         OcorrenciaOriginal.Tipo := toRemessaBaixar;
         Instrucao1        := '';
         Instrucao2        := '';

         //Mensagem.Text     := 'Após o vencimento cobrar ' + formatfloat('##0.00',JurMes) +'% de juros ao mes. ' + #13 +
         //                      BOL_MSG_1 + ' ' + BOL_MSG_2;
         Mensagem.Text     := BOL_MSG_1 + #13 + BOL_MSG_2;

         // ACBrBoleto1.AdicionarMensagensPadroes(Titulo,Mensagem);
      end;

      cdsTitulos.Post;
      cdsTitulos.next;
    end;

   //dmGeral.BoletoRel.FastReportFile := ExtractFileDir(application.ExeName) + '\Report\Boleto.fr3';

   // Comentado por Maxsuel Victor em 08/07/2021
      // dmGeral.BoletoRel.FastReportFile := ExtractFileDir(application.ExeName) + '\Report\BoletoNovo.fr3';
   dmGeral.BoletoRel.FastReportFile := ExtractFileDir(application.ExeName) + '\Report\Boleto.fr3';

    if not Reimprimir then
     begin
        // Atualiza a tabela de Conta corrente.
       // if BUS_CD_C_CTC.FieldByName('NNU_PROXIMO').AsInteger <> CobreBemX.ProximoNossoNumero then
       //    begin
              BUS_CD_C_CTC.Edit;
              BUS_CD_C_CTC.FieldByName('NNU_PROXIMO').AsInteger := NossoNumeroBol;
              BUS_CD_C_CTC.Post;
       //    end;
     end;

   if BUS_CD_C_CTC.ApplyUpdates(0) <> 0 then
      begin
        ShowMessage('Erro ao tentar atualizar o campo "Próximo nosso número" na conta corrente.' + #13 +
                    'ATENÇÃO: Desconsidere os boletos gerado e tente novamente!');
        abort;
      end;

   dmGeral.enBoleto.Imprimir;



   dmGeral.enBoleto.ListadeBoletos.Clear;

   // CobreBemX.ImprimeBoletos;


   // Salvar dados do boleto nos Títulos da Nota Fiscal e nos Títulos da Fatura
  {
  for i := 0 to CobreBemX.DocumentosCobranca.Count - 1 do
      begin
        NBol := StringReplace(CobreBemX.DocumentosCobranca[i].NumeroDocumento,'/','',[rfReplaceAll]);
        if cdsTitulos.Locate('BOL_CHAVE',NBol,[]) then
           if cdsTitulos.fieldByName('BOL_NOSSO_NUMERO').AsString <> CobreBemX.DocumentosCobranca[i].NossoNumero then
              begin
                cdsTitulos.Edit;
                cdsTitulos.fieldByName('BOL_ID_CONTA').AsInteger     := BUS_CD_C_CTC.fieldByName('ID_CONTA').AsInteger;
                cdsTitulos.fieldByName('BOL_NOSSO_NUMERO').AsString  := CobreBemX.DocumentosCobranca[i].NossoNumero;
                cdsTitulos.Post;
              end;
      end; }




  try

    if Reimprimir then
       begin
         Showmessage('Boleto reimpresso com sucesso!');
         exit;
       end;


    if cdsTitulos.ApplyUpdates(0) <> 0 then
       begin
         ShowMessage('Erro ao tentar gravar os dados do boleto no título.' + #13 +
                     'ATENÇÃO: Desconsidere os boletos gerado e tente novamente!');
       end
    else
       begin
         Showmessage('Geração do boleto realizada com sucesso!');
       end;
  except
     on e: Exception do
        begin
          ShowMessage('Erro ao tentar atualizar a informação fiscal: ' + e.Message);
        end;
  end;

  finally
    dmGeral.BUS_CD_C_CLI.Close;
  end;
end;


procedure GerarRemessa(cdsTitulos,BUS_CD_C_CTC: TClientDataSet;Diretorio,tipo_ocorrencia:string);
var
 // Boleto: Variant;
  EmailSacado: Variant;
 // CobreBemX: Variant;
  Path: String;
  BOL_MSG_1,BOL_MSG_2: String;
  JurMes:Extended;
  ano,mes,dia: word;
  i: integer;
  TamNossoNumero:Integer;
  TamMasNossoNumero:Integer;
  Titulo : TACBrTitulo;
  iRet:boolean;
  cnpj_cpf,NomeArq:string;
begin
  decodedate(date,ano,mes,dia);


  dmGeral.enBoleto.LayoutRemessa := strToLayoutRemessa(iRet, Trim(BUS_CD_C_CTC.FieldByName('layout_remessa').AsString)) ;
  //dmGeral.enBoleto.DirArqRemessa := ExtractFilePath(Application.ExeName)+'Emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString +'\RemessaBoleto';
  dmGeral.enBoleto.DirArqRemessa := Diretorio;
//  dmGeral.enBoleto.Homologacao   := true;

  carregaInfconta( BUS_CD_C_CTC );



  JurMes    := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TAX_JUROS_MENSAL').AsFloat;
  BOL_MSG_1 := BUS_CD_C_CTC.FieldByName('mensagem_1').AsString;
  BOL_MSG_2 := BUS_CD_C_CTC.FieldByName('mensagem_2').AsString;



  cdsTitulos.First;
  // Dados para o boleto ------------------------------------------------------
  dmGeral.enBoleto.ListadeBoletos.Clear;



  i:= 0;
  cdsTitulos.IndexFieldNames := 'DTA_VENCIMENTO';
  cdsTitulos.First;
  try

  while not cdsTitulos.Eof do
    begin
      Titulo := dmGeral.enBoleto.CriarTituloNaLista;


      dmGeral.BusCliente(0,cdsTitulos.fieldByName('ID_CLIENTE').AsString);
      inc(i);



      with Titulo do
      begin
         Vencimento        := cdsTitulos.fieldByName('DTA_VENCIMENTO').asDateTime;
         DataDocumento     := xDataSis;
         NumeroDocumento   := cdsTitulos.FieldByName('NUM_PARCELA').AsString;
         //EspecieDoc        := 'DM';
         EspecieDoc        := BUS_CD_C_CTC.FieldByName('especie_tit').AsString;
         if BUS_CD_C_CTC.FieldByName('aceite_tit').AsString = 'A' then
            Aceite := atSim
         else
            Aceite := atNao;
         DataProcessamento := Now;

         Carteira          := BUS_CD_C_CTC.FieldByName('carteira').AsString;
         // Comentado por Maxsuel Victor, em 17/05/2017
            // NossoNumero       := cdsTitulos.FieldByName('BOL_CHAVE').AsString; //??
         NossoNumero       := cdsTitulos.FieldByName('BOL_NOSSO_NUMERO').AsString; //??

         ValorDocumento    := cdsTitulos.fieldByName('VLR_PARCELA').AsCurrency;
         Sacado.NomeSacado := dmGeral.BUS_CD_C_CLI.FieldByName('nome').AsString;

         if (dmGeral.BUS_CD_C_CLI.FieldByName('pessoa').AsString='0') then
           Sacado.Pessoa := pFisica
         else
           Sacado.Pessoa := pJuridica;

         Sacado.CNPJCPF    := OnlyNumber(dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString);
         Sacado.Logradouro := dmGeral.BUS_CD_C_CLI.FieldByName('ENDERECO').AsString;

         Sacado.Numero     := dmGeral.BUS_CD_C_CLI.FieldByName('NUMERO').AsString;
         Sacado.Bairro     := dmGeral.BUS_CD_C_CLI.FieldByName('BAIRRO').AsString;
         Sacado.Cidade     := dmGeral.BUS_CD_C_CLI.FieldByName('INT_NOMECID').AsString;
         Sacado.UF         := dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;
         Sacado.CEP        := OnlyNumber(dmGeral.BUS_CD_C_CLI.FieldByName('CEP').AsString);

         cnpj_cpf := dmGeral.BUS_CD_C_CLI.FieldByName('aval_doc_cnpj_cpf').AsString;
         if length(trim(cnpj_cpf)) = 11 then
            cnpj_cpf := '0000' + cnpj_cpf;
         if length(trim(cnpj_cpf)) = 14 then
            cnpj_cpf := '0' + cnpj_cpf;

         Mensagem.Text     := cnpj_cpf + dmGeral.BUS_CD_C_CLI.FieldByName('aval_nome').AsString;

         ValorAbatimento   := 0;
         // LocalPagamento    := 'Pagar preferêncialmente nas agências';
         LocalPagamento    := BUS_CD_C_CTC.FieldByName('MSG_LOCAL_PAGTO').AsString;

         ValorMoraJuros    := cdsTitulos.fieldByName('VLR_PARCELA').AsCurrency*(JurMes/100/30);
         ValorDesconto     := 0;
         ValorAbatimento   := 0;


         //DataMoraJuros     := null;
         //DataDesconto      := null;
         //DataAbatimento    := null;
         //DataProtesto      := null;

         PercentualMulta   := BUS_CD_C_CTC.FieldByName('perc_multa').AsCurrency;

         //Comentado por Maxsuel Victor em 18/05/2017
         //OcorrenciaOriginal.Tipo := toRemessaBaixar;

         if tipo_ocorrencia = '0' then
            OcorrenciaOriginal.Tipo := toRemessaRegistrar;
         if tipo_ocorrencia = '1' then
            OcorrenciaOriginal.Tipo := toRemessaBaixar;

         {Instrucao1        := 'Após o vencimento cobrar ' + formatfloat('##0.000',JurMes) +'% de juros ao mes. ' + #13 +
                               BOL_MSG_1 + ' ' + BOL_MSG_2;
         Instrucao2        := '';}

         // ajustado por Maxsuel Victor em 29-05-18, os campos instrução estava sendo preenchido de maneira incorreta e foi
         // corrigido
         Instrucao1        := '';
         Instrucao2        := '';
         if BUS_CD_C_CTC.FieldByName('protestar_negativar').AsInteger = 1 then
            begin

              Instrucao1        := '06';
              if length(BUS_CD_C_CTC.FieldByName('qtde_dias_protesto').AsString) = 1 then
                 Instrucao2        := '0' + BUS_CD_C_CTC.FieldByName('qtde_dias_protesto').AsString
              else
                 Instrucao2        := BUS_CD_C_CTC.FieldByName('qtde_dias_protesto').AsString;

              DataProtesto := cdsTitulos.fieldByName('DTA_VENCIMENTO').asDateTime +
                              BUS_CD_C_CTC.FieldByName('qtde_dias_protesto').AsInteger;
            end;
         if BUS_CD_C_CTC.FieldByName('protestar_negativar').AsInteger = 1 then
            Instrucao1        := '07';


         // ACBrBoleto1.AdicionarMensagensPadroes(Titulo,Mensagem);
      end;

      if cdsTitulos.FieldByName('BOL_NOSSO_NUMERO').asString <> '' then
         begin
          // Boleto.NossoNumero := cdsTitulos.FieldByName('BOL_NOSSO_NUMERO').asString;

         //  TamNossoNumero    := Length(Boleto.NossoNumero)-1;
         //  TamMasNossoNumero := (CobreBemX.MascaraNossoNumero + 1);
           if TamNossoNumero < TamMasNossoNumero then
              begin
           //     Boleto.CalculaDacNossoNumero := True;
              end;
        end;

      cdsTitulos.next;
    end;

  BUS_CD_C_CTC.Edit;
  BUS_CD_C_CTC.FieldByName('sequencia_remessa').AsInteger := BUS_CD_C_CTC.FieldByName('sequencia_remessa').AsInteger +1;
  BUS_CD_C_CTC.Post;

  NomeArq := dmGeral.enBoleto.GerarRemessa( BUS_CD_C_CTC.FieldByName('sequencia_remessa').AsInteger );
  if (NomeArq <> '') then
    begin
      if DirectoryExists( ExtractFileDir(NomeArq) ) then
       begin
        RenameFile(NomeArq,ExtractFileDir(NomeArq)+'\'+StrZero(dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,2,0)+ExtractFileName(NomeArq));
       end;
    end;

  cdsTitulos.IndexFieldNames := 'BOL_CHAVE';
  {
  for i := 0 to CobreBemX.DocumentosCobranca.Count - 1 do
      if cdsTitulos.FindKey([StrToInt(CobreBemX.DocumentosCobranca[i].NumeroDocumento)]) then
         if cdsTitulos.FieldByName('BOL_NOSSO_NUMERO').AsString <> CobreBemX.DocumentosCobranca[i].NossoNumero then
            begin
              cdsTitulos.Edit;
              cdsTitulos.FieldByName('BOL_NOSSO_NUMERO').AsString    := CobreBemX.DocumentosCobranca[i].NossoNumero;
              //cdsTitulos.FieldByName('BOL_ID_CONTA').AsInteger := xContaCorrente;
              cdsTitulos.Post;
            end;

  if BUS_CD_C_CTC.FieldByName('NNU_PROXIMO').AsInteger <> CobreBemX.ProximoNossoNumero then
     begin
        BUS_CD_C_CTC.Edit;
        BUS_CD_C_CTC.FieldByName('NNU_PROXIMO').AsInteger := CobreBemX.ProximoNossoNumero;
        BUS_CD_C_CTC.Post;
     end;
   }

  try
    cdsTitulos.First;

    while not cdsTitulos.eof do
       begin
         cdsTitulos.edit;
         cdsTitulos.FieldByName('bol_remessa_env').AsBoolean := true;
         cdsTitulos.FieldByName('bol_remessa_dta').AsDateTime := xDataSis;
         cdsTitulos.FieldByName('bol_remessa_id_func').AsInteger := xFuncionario;
         cdsTitulos.FieldByName('bol_remessa_nome_arq').AsString := NomeArq;
         cdsTitulos.Next;
       end;

    if BUS_CD_C_CTC.ApplyUpdates(0) <> 0 then
       begin
         ShowMessage('Erro ao tentar atualizar o campo "Próximo nosso número" na conta corrente.' + #13 +
                     'ATENÇÃO: Desconsidere os boletos gerado e tente novamente!');
       end;

    if cdsTitulos.ChangeCount > 0  then
       begin
         if cdsTitulos.ApplyUpdates(0) <> 0 then
            begin
              ShowMessage('Erro ao tentar atualizar os dados do boleto no título.');
            end
         else
            Showmessage('Geração da remessa realizada com sucesso!');
       end
    else
       Showmessage('Geração da remessa realizada com sucesso!');
  except
     on e: Exception do
        begin
          ShowMessage('Erro ao tentar atualizar a informação fiscal: ' + e.Message);
        end;
  end;

  finally
    //Titulo.Free;
    dmGeral.enBoleto.ListadeBoletos.Clear;
  end;


end;

function BuscarNroParcela(const nro_parcela: string): String;
var
  i: integer;
  PegueO_Proximo: boolean;
begin
  i := 1;
  result := '';

  PegueO_Proximo := false;

  if trim(nro_parcela) <> '' then
     begin
       while i <= length(nro_parcela) do
          begin
            if PegueO_Proximo = false then
               begin
                 if (copy(nro_parcela,i,1) = '-') or (copy(nro_parcela,i,1) = '/') then
                     begin
                       PegueO_Proximo := true;
                     end;
               end
            else
               begin
                 if (copy(nro_parcela,i,1) = '-') or (copy(nro_parcela,i,1) = '/') then
                    begin
                      i := length(nro_parcela);
                    end
                 else
                    begin
                      result := result + copy(nro_parcela,i,1);
                    end;
               end;
            i := i + 1;
          end;
     end;
end;



end.
