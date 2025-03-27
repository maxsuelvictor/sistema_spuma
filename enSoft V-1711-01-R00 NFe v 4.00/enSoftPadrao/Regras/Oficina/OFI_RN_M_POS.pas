unit OFI_RN_M_POS;

interface

procedure OfiNovaPos;
procedure OfiValidaPos;


implementation

uses uProxy, uDmGeral,System.SysUtils, enConstantes;

procedure OfiNovaPos;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.OFI_CD_M_POS.FieldByName('ID_POSVENDA').AsInteger :=
         SMPrincipal.enValorChave('OFI_TB_M_POS');
  finally
    FreeAndNil(SMPrincipal);
  end;

   dmGeral.OFI_CD_M_POS.FieldByName('DTA_POSVENDA').AsDateTime := xDataSis;
   dmGeral.OFI_CD_M_POS.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
   dmGeral.OFI_CD_M_POS.FieldByName('ID_EMPRESA').AsInteger :=
            dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
end;

procedure OfiValidaPos;
var
  xMensErro:string;
begin
  xMensErro:='';

  if (dmGeral.OFI_CD_M_POS.FieldByName('id_posvenda').AsString='') then
    begin
      xMensErro:= xMensErro + '.Nº Pós-Venda deve ser informado.'+ #13;
    end;

  if (dmGeral.OFI_CD_M_POS.FieldByName('dta_posvenda').AsString='') then
    begin
      xMensErro:= xMensErro + '.Data de Pós-Venda deve ser informado.'+ #13;
    end;

  if (dmGeral.OFI_CD_M_POS.FieldByName('hor_posvenda').AsString='') then
    begin
      xMensErro:= xMensErro + '.Horário de Pós-Venda deve ser informado.'+ #13;
    end;

  if (dmGeral.OFI_CD_M_POS.FieldByName('id_empresa').AsString='') then
    begin
      xMensErro:= xMensErro + '.Empresa deve ser informado.'+ #13;
    end;

  if (dmGeral.OFI_CD_M_POS.FieldByName('id_responsavel').AsString='') then
    begin
      xMensErro:= xMensErro + '.Responsável deve ser informado.'+ #13;
    end;

  if (dmGeral.OFI_CD_M_POS.FieldByName('id_ordem').AsString='') then
    begin
      xMensErro:= xMensErro + '.Orçamento deve ser informado.'+ #13;
    end;

  if (dmGeral.OFI_CD_M_POS.FieldByName('situacao').AsString='') then
    begin
      xMensErro:= xMensErro + '.Situação deve ser informado.'+ #13;
    end;

  if (dmGeral.OFI_CD_M_POS.FieldByName('situacao').AsString <> '') and
     (dmGeral.OFI_CD_M_POS.FieldByName('situacao').AsInteger = 1) and
     (dmGeral.OFI_CD_M_POS.FieldByName('solucao').AsString = '')  then
    begin
      xMensErro:= xMensErro + '.Solução deve ser informado.'+ #13;
    end;

  if xMensErro<>'' then
    begin
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
      abort;
    end;

end;

end.
