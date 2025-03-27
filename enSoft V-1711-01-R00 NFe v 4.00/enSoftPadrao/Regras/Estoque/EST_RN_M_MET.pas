unit EST_RN_M_MET;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;


procedure EstValidaMetIte;
procedure EstValidaMet;

implementation
Uses uDmGeral,enConstantes, uProxy, FAT_RN_M_NFE;


procedure EstValidaMet;
var
   xMensErro:string;
begin
   if dmGeral.EST_CD_M_MET.State in [dsInsert,dsEdit] then
     begin
        if (dmGeral.EST_CD_M_MET.FieldByName('data').AsString= '  /  /    ') then
           begin
             xMensErro:= xMensErro + '.Data deve ser informado.'+ #13;
           end;

       if (dmGeral.EST_CD_M_MET.FieldByName('id_tipo_mov_estoque').AsString='') then
           begin
             xMensErro:= xMensErro + '.Tipo de estoque deve ser informada.'+ #13;
           end;


        if xMensErro<>'' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end;
     end;
end;



procedure EstValidaMetIte;
var
  xMensErro:string;
begin
  xMensErro:='';

  if dmGeral.EST_CD_M_MET_ITE.State in [dsInsert,dsEdit] then
     begin
        if (dmGeral.EST_CD_M_MET_ITE.FieldByName('id_item').AsString='') then
           begin
             xMensErro:= xMensErro + '.Item deve ser informado.'+ #13;
           end;

        if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
           begin
             if (dmGeral.EST_CD_M_MET_ITE.FieldByName('id_cor').AsString='') then
                 begin
                   xMensErro:= xMensErro + '.Cor deve ser informada.'+ #13;
                 end;
           end;

        if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
           begin
              if (dmGeral.EST_CD_M_MET_ITE.FieldByName('id_tamanho').AsString='') then
                 begin
                   xMensErro:= xMensErro + '.Tamanho deve ser informado.'+ #13;
                 end;
           end;

        if (dmGeral.EST_CD_M_MET_ITE.FieldByName('qtde').AsFloat=0) then
           begin
             xMensErro:= xMensErro + '.Qtde deve ser informado.'+ #13;
           end;

        {if not FAT_RN_M_NFE.FatTestaQtdeIte(3,dmGeral.EST_CD_M_MAL,dmGeral.EST_CD_M_MAL_ITE) then
           begin
             xMensErro:= xMensErro + '.Produto sem saldo no estoque'+ #13;
             dmGeral.EST_CD_M_MET_ITE.FieldByName('qtde').FocusControl;
           end; }

        if xMensErro<>'' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end;
     end;
end;


end.
