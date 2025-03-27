unit CAD_RN_C_RVD;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms,Datasnap.DBClient;

procedure ValidaCAD_CD_C_RVD(CAD_CD_C_RVD: TClientDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy;

Var
xMensErro:string;

procedure ValidaCAD_CD_C_RVD;
begin
  xMensErro := '';

  if trim(CAD_CD_C_RVD.FieldByName('descricao').Text) = '' then
    xMensErro := xMensErro + '.Descrição';

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

end.
