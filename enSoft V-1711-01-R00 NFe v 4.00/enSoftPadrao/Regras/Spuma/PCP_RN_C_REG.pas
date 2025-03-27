unit PCP_RN_C_REG;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;


procedure PcpNovoRegIte;
procedure PcpValidaRegIte;
procedure PcpPreencherRegIte;

implementation
Uses uDmSgq,enConstantes;


procedure PcpNovoRegIte;
begin
  { TODO -oMaxsuel -cCriação : Criado em 13/10/17 }

  dmSgq.PCP_CD_C_REG_ITE.FieldByName('tipo').AsString := '';

  dmSgq.PCP_CD_C_REG_ITE.FieldByName('per_desconto').AsCurrency := 0;

end;

procedure PcpValidaRegIte;
var
  xMensErro:string;
begin
  xMensErro:='';

  if trim(dmSgq.PCP_CD_C_REG_ITE.FieldByName('tipo').AsString) = '' then
     begin
       xMensErro:= xMensErro +  '.Início do contrato do item' + #13;
     end;

  if dmSgq.PCP_CD_C_REG_ITE.FieldByName('tipo').AsInteger = 0 then
     begin
       if trim(dmSgq.PCP_CD_C_REG_ITE.FieldByName('id_grupo').AsString) = '' then
          begin
            xMensErro:= xMensErro +  '.Código do Grupo' + #13;
          end;
     end;

  if dmSgq.PCP_CD_C_REG_ITE.FieldByName('tipo').AsInteger = 1 then
     begin
        if trim(dmSgq.PCP_CD_C_REG_ITE.FieldByName('id_item').AsString) = '' then
          begin
            xMensErro:= xMensErro +  '.Código do item' + #13;
          end;
     end;

  if xMensErro<>'' then
    raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure PcpPreencherRegIte;
begin
  if dmSgq.PCP_CD_C_REG_ITE.FieldByName('tipo').AsInteger = 0 then
     begin
       dmSgq.PCP_CD_C_REG_ITE.FieldByName('id_item').AsInteger := 0;
     end;

  if dmSgq.PCP_CD_C_REG_ITE.FieldByName('tipo').AsInteger = 1 then
     begin
       dmSgq.PCP_CD_C_REG_ITE.FieldByName('id_grupo').AsString := ' ';
     end;
end;

end.
