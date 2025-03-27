unit FAT_RN_M_PCA;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

function FatValidaPcaPed: boolean;


implementation
Uses uDmGeral,enConstantes, uProxy;


function FatValidaPcaPed: boolean;
var
  xMensErro: string;
begin
  xMensErro := '';

  if trim(dmgeral.FAT_CD_M_PCA_PED.FieldByName('id_pedido').Text) = '' then
    xMensErro:= xMensErro + '.Código do pedido'+ #13;


  if xMensErro<>'' then
    begin
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
      abort;
    end;
end;

end.
