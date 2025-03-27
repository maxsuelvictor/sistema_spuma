unit OFI_RN_M_AGE;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure OfiNovaAge;
procedure OfiValidaAge;

implementation
Uses uDmGeral,enConstantes, uProxy;

procedure OfiNovaAge;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.OFI_CD_M_AGE.FieldByName('ID_AGENDA').AsInteger :=
         SMPrincipal.enValorChave('OFI_TB_M_AGE');

    dmGeral.OFI_CD_M_AGE.FieldByName('ID_EMPRESA').AsInteger :=
         dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  finally
    FreeAndNil(SMPrincipal);
  end;

end;

procedure OfiValidaAge;
var
  xMensErro:string;
begin
  xMensErro:='';


  if (dmGeral.OFI_CD_M_AGE.FieldByName('placa').AsString='') then
     begin
       xMensErro:= xMensErro + '.Placa deve ser informada.'+ #13;
       dmGeral.OFI_CD_M_AGE.FieldByName('placa').FocusControl;
     end;

  if (dmGeral.OFI_CD_M_AGE.FieldByName('nome_cliente').AsString='') then
     begin
       xMensErro:= xMensErro + '.Nome do cliente deve ser informado.'+ #13;
       dmGeral.OFI_CD_M_AGE.FieldByName('nome_cliente').FocusControl;
     end;

  if (dmGeral.OFI_CD_M_AGE.FieldByName('dta_agenda').AsString='') then
     begin
       xMensErro:= xMensErro + '.Data deve ser informado.'+ #13;
       dmGeral.OFI_CD_M_AGE.FieldByName('dta_agenda').FocusControl;
     end;
  if trim(dmGeral.OFI_CD_M_AGE.FieldByName('hora').AsString)='' then
     begin
       xMensErro:= xMensErro + '.Hora deve ser informado.'+ #13;
       dmGeral.OFI_CD_M_AGE.FieldByName('hora').FocusControl;
     end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);


end;

end.
