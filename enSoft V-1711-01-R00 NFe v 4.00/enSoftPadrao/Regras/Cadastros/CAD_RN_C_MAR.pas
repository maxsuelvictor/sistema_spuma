unit CAD_RN_C_MAR;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms;

procedure ValidaCAD_CD_C_MAR(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy, uDmCtc, CAD_UN_C_MAR;

Var
xMensErro:string;

procedure ValidaCAD_CD_C_MAR(DataSet: TDataSet);
begin
  xMensErro := '';

  if trim(CAD_FM_C_MAR.CAD_CD_C_MAR.FieldByName('descricao').Text) = '' then
    xMensErro := xMensErro + '.Descrição';

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

end.
