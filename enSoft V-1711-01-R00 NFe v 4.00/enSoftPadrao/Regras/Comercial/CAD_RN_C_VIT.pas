unit CAD_RN_C_VIT;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms;

procedure ValidaCAD_CD_C_VIT(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy, uDmCtc, CAD_UN_C_MAR;

Var
xMensErro:string;

procedure ValidaCAD_CD_C_VIT(DataSet: TDataSet);
begin
  xMensErro := '';
  if trim(dmgeral.CAD_CD_C_VIT.FieldByName('dta_visita').Text) = '' then
    xMensErro := xMensErro + '.Data Visita';

  if trim(dmgeral.CAD_CD_C_VIT.FieldByName('id_vendedor').Text) = '' then
    xMensErro := xMensErro + '.Vendedor';

  if trim(dmgeral.CAD_CD_C_VIT.FieldByName('doc_cnpj_cpf').Text) = '' then
    xMensErro := xMensErro + '.CPF/CNPJ';

  if trim(dmgeral.CAD_CD_C_VIT.FieldByName('id_veiculo').Text) = '' then
    xMensErro := xMensErro + '.Placa';

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

end.
