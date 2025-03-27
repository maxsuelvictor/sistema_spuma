unit CTC_RN_C_OCO;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.Forms;

procedure ValidaCTC_CD_C_OCO(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy, uDmCtc;

Var
xMensErro:string;

procedure ValidaCTC_CD_C_OCO(DataSet: TDataSet);
begin
  xMensErro := '';

  if trim(dmctc.CTC_CD_C_OCO.FieldByName('descricao').Text) = '' then
    xMensErro := xMensErro + '.Descrição';

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

end.
