unit CAD_RN_C_EQP;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms;

procedure NovoEqp(DataSet: TDataSet);
procedure ValidaEqp(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy, CAD_UN_C_EQP;

Var
xMensErro:string;

procedure NovoEqp(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    CAD_FM_C_EQP.CAD_CD_C_EQP.FieldByName('ID_EQUIPAMENTO').AsInteger :=
         SMPrincipal.enValorChave('CAD_TB_C_EQP');

    CAD_FM_C_EQP.CAD_CD_C_EQP.FieldByName('GARANTIA').AsBoolean := False;
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure ValidaEqp(DataSet: TDataSet);
begin
  xMensErro:='';

  if trim(CAD_FM_C_EQP.CAD_CD_C_EQP.FieldByName('GARANTIA').text) = '' then
    begin
      xMensErro:= xMensErro + '.Garantia' + #13;
    end;

  if (trim(CAD_FM_C_EQP.CAD_CD_C_EQP.FieldByName('SERIAL').text) = '') then
    begin
      xMensErro:= xMensErro + '.Serial' + #13;
    end;

  if (trim(CAD_FM_C_EQP.CAD_CD_C_EQP.FieldByName('DESCRICAO').text) = '') then
    begin
      xMensErro:= xMensErro + '.Descrição' + #13;
    end;

  if (trim(CAD_FM_C_EQP.CAD_CD_C_EQP.FieldByName('MODELO').text) = '') then
    begin
      xMensErro:= xMensErro + '.Modelo' + #13;
    end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

end.
