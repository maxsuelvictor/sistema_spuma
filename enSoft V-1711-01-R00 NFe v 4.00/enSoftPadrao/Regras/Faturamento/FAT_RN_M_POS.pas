unit FAT_RN_M_POS;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math, Vcl.Forms,Datasnap.DBClient;
procedure FatValidaPos;
implementation
Uses uDmGeral,enConstantes, uProxy;
procedure FatValidaPos;
Var
xMensErro:string;
begin
  xMensErro:='';

  if (dmGeral.FAT_CD_M_POS.FieldByName('id_posvenda').AsString=null) or
     (dmGeral.FAT_CD_M_POS.FieldByName('id_posvenda').AsString='') then
     begin
       xMensErro:= xMensErro + '.Código deve ser informado.'+ #13;
     end;

  if (dmGeral.FAT_CD_M_POS.FieldByName('id_empresa').AsString=null) or
     (dmGeral.FAT_CD_M_POS.FieldByName('id_empresa').AsString='') then
     begin
       xMensErro:= xMensErro + '.Empresa deve ser informado.'+ #13;
     end;

  if dmGeral.FAT_CD_M_POS.FieldByName('dta_posvenda').AsDateTime=0 then
     begin
       xMensErro:= xMensErro + 'Data de vencimento deve ser informada.'+ #13;
     end;

  if (dmGeral.FAT_CD_M_POS.FieldByName('id_cliente').AsString=null) or
     (dmGeral.FAT_CD_M_POS.FieldByName('id_cliente').AsString='') then
     begin
       xMensErro:= xMensErro + '.Cliente deve ser informado.'+ #13;
     end;

  if (dmGeral.FAT_CD_M_POS_ITE.FieldByName('reclamacao').AsString=null) or
     (dmGeral.FAT_CD_M_POS_ITE.FieldByName('reclamacao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Sugestão / Reclamação deve ser informado.'+ #13;
     end;

  if (dmGeral.FAT_CD_M_POS_ITE.FieldByName('solucao').AsString=null) or
     (dmGeral.FAT_CD_M_POS_ITE.FieldByName('solucao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Solução deve ser informada.'+ #13;
     end;

  if (dmGeral.FAT_CD_M_POS_ITE.FieldByName('avaliacao').AsString=null) or
     (dmGeral.FAT_CD_M_POS_ITE.FieldByName('avaliacao').AsString='') then
     begin
       xMensErro:= xMensErro + '.Avaliação deve ser informada.'+ #13;
     end;

  if (dmGeral.FAT_CD_M_POS.FieldByName('id_responsavel').AsString=null) or
     (dmGeral.FAT_CD_M_POS.FieldByName('id_responsavel').AsString='') then
     begin
       xMensErro:= xMensErro + '.Responsavel deve ser informado.'+ #13;
     end;

   if xMensErro<>'' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end;
end;

end.
