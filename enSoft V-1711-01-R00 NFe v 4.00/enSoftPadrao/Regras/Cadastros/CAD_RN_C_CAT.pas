unit CAD_RN_C_CAT;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms;

procedure ValidaCAD_CD_C_CAT(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy, uDmCtc, CAD_UN_C_CAT;

Var
xMensErro:string;

procedure ValidaCAD_CD_C_CAT(DataSet: TDataSet);
begin
  xMensErro := '';

  if trim(CAD_FM_C_CAT.CAD_CD_C_CAT.FieldByName('descricao').Text) = '' then
    xMensErro := xMensErro + '.Descrição';

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

end.
