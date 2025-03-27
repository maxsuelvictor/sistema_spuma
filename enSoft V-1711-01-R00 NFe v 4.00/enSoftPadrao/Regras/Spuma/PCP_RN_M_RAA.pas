unit PCP_RN_M_RAA;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;


procedure PcpNovoRaa;
procedure PcpValidaRaa;
procedure PcpValidaRaaIte;


implementation
Uses uDmGeral,enConstantes, uProxy;


procedure PcpNovoRaa;
var
  SMPrincipal: TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.PCP_CD_M_RAA.FieldByName('ID_RAA').AsInteger :=
       SMPrincipal.enValorChave('PCP_TB_M_RAA');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.PCP_CD_M_RAA.FieldByName('ID_EMPRESA').AsInteger :=
               dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  dmGeral.PCP_CD_M_RAA.FieldByName('dta_emissao').AsDateTime := xDataSis;
  dmGeral.PCP_CD_M_RAA.FieldByName('resultado').AsInteger := 1;
  dmGeral.PCP_CD_M_RAA.FieldByName('incorpora_item').AsInteger := 0;

  dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_1').AsInteger := 0;
  dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_2').AsInteger := 0;
  dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_3').AsInteger := 0;
  dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_4').AsInteger := 0;
  dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_5').AsInteger := 0;
  dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_6').AsInteger := 0;
  dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_7').AsInteger := 0;
  dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_8').AsInteger := 0;


  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_M_RAA',xCodLme,xRevLme,dmGeral.PCP_CD_M_RAA);
end;


procedure PcpValidaRaa;
var
  xMensErro:string;
begin
  xMensErro:='';

 if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('ID_EMPRESA').text) = '') then
     xMensErro := xMensErro + '.Empresa' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('NRO_RAA').text) = '') then
     xMensErro := xMensErro + '.Nro RAA' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('ID_ITEM').text) = '') then
     xMensErro := xMensErro + '.Produto' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('DTA_EMISSAO').text) = '') then
     xMensErro := xMensErro + '.Data emissão' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('DTA_RECEBIMENTO_ITEM').text) = '') then
     xMensErro := xMensErro + '.Data de recebimento' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('CODIGO_FABRICA').text) = '') then
     xMensErro := xMensErro + '.Código de fábrica' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('ID_FORNECEDOR').text) = '') then
     xMensErro := xMensErro + '.Fornecedor' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('ID_FABRICANTE').text) = '') then
     xMensErro := xMensErro + '.Fabricante' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('QTDE_AMOSTRA').text) = '') then
     xMensErro := xMensErro + '.Quantidade de amostra' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('ID_SETOR').text) = '') then
     xMensErro := xMensErro + '.Setor' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('incorpora_item').text) = '') then
     xMensErro := xMensErro + '.Incorpora item' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_1').text) = '') then
     xMensErro := xMensErro + '.Pergunta: Quantidade da amostra é suficiente para os testes?' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_2').text) = '') then
     xMensErro := xMensErro + '.Pergunta: Qualidade do produto esta de acordo com o solicitado?' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_3').text) = '') then
     xMensErro := xMensErro + '.Pergunta: O material atendeu as expectativas?' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_4').text) = '') then
     xMensErro := xMensErro + '.Pergunta: O material precisa de alguma adaptação?' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_5').text) = '') then
     xMensErro := xMensErro + '.Pergunta: Necessita de mais amostra para concluir os testes?' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_6').text) = '') then
     xMensErro := xMensErro + '.Pergunta: Necessidade de análise em laboratório?' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_7').text) = '') then
     xMensErro := xMensErro + '.Pergunta: Espessura X Largura X Comprimento estão de acordo com o especificado?' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('PERGUNTA_8').text) = '') then
     xMensErro := xMensErro + '.Pergunta: Gramatura/peso estão de acordo com o especificado?' + #13;

  if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('RESULTADO').text) = '') then
     xMensErro := xMensErro + '.Resultado' + #13;

  if (dmGeral.PCP_CD_M_RAA.FieldByName('RESULTADO').AsInteger = 1) then
     begin
       if (trim(dmGeral.PCP_CD_M_RAA.FieldByName('INCORPORA_ITEM').text) = '') or
               (dmGeral.PCP_CD_M_RAA.FieldByName('INCORPORA_ITEM').IsNull) then
                     xMensErro := xMensErro + '.Incorpora o item' + #10 + #13;
     end;

  if xMensErro <> '' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro)
  else
     begin
       if dmGeral.PCP_CD_M_RAA.FieldByName('DTA_EMISSAO').AsDateTime <
          dmGeral.PCP_CD_M_RAA.FieldByName('DTA_RECEBIMENTO_ITEM').AsDateTime then
          begin
            xMensErro := xMensErro + '.Data da emissão não pode ser menor que a data do recebimento' + #13;
          end;
       if dmGeral.PCP_CD_M_RAA.FieldByName('DTA_ANALISE').text <> '' then
          begin
            if dmGeral.PCP_CD_M_RAA.FieldByName('DTA_RECEBIMENTO_ITEM').AsDateTime >
               dmGeral.PCP_CD_M_RAA.FieldByName('DTA_ANALISE').AsDateTime then
               begin
                 xMensErro := xMensErro + '.Data de recebimento não pode ser maior que a data de análise' + #10 + #13;
               end;
          end;

       if dmGeral.PCP_CD_M_RAA.FieldByName('QTDE_AMOSTRA').AsFloat >
          dmGeral.PCP_CD_M_RAA.FieldByName('QTDE_NF').AsFloat then
          begin
            xMensErro := xMensErro + '.Qtde da amostra não pode ser maior que a qtde que veio na nota fiscal' + #10 + #13;
          end;

       if xMensErro <> '' then
          raise Exception.Create(enConstantes.AtencaoErro + #13 + xMensErro);
     end;
end;


procedure PcpValidaRaaIte;
begin

end;


end.




