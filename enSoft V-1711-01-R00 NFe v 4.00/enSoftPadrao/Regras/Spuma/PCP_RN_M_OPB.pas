unit PCP_RN_M_OPB;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;


procedure PcpValidaOpbBlo;
procedure PcpNovoBloco;

implementation
Uses uDmGeral,enConstantes, uProxy;


procedure PcpValidaOpbBlo;
var
  xMensErro:string;
begin

  xMensErro:='';

  if dmGeral.PCP_CD_M_OPB_BLO.State in [dsInsert,dsEdit] then
     begin
        if (dmGeral.PCP_CD_M_OPB_BLO.FieldByName('id_item_bloco').AsString='') then
           begin
             xMensErro:= xMensErro + '.O Bloco deve ser informado.'+ #13;
           end;

        if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
           begin
             if (dmGeral.PCP_CD_M_OPB_BLO.FieldByName('id_cor').AsString='') then
                 begin
                   xMensErro:= xMensErro + '.Cor.'+ #13;
                 end;
           end;

        if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
           begin
              if (dmGeral.PCP_CD_M_OPB_BLO.FieldByName('id_tamanho').AsString='') then
                 begin
                   xMensErro:= xMensErro + '.Tamanho.'+ #13;
                 end;
           end;

        if (dmGeral.PCP_CD_M_OPB_BLO.FieldByName('bloco_aprovado').AsString='') then
           begin
             xMensErro:= xMensErro + '.Aprovação do bloco.'+ #13;
           end;


       if (dmGeral.PCP_CD_M_OPB_BLO.FieldByName('dta_emissao').AsString='') then
           begin
             xMensErro:= xMensErro + '.Data da criação do bloco.'+ #13;
           end
       else
           begin
             if (dmGeral.PCP_CD_M_OPB_BLO.FieldByName('dta_emissao').AsDateTime) >
                (dmGeral.PCP_CD_M_OPB.FieldByName('dta_emissao').AsDateTime) then
                 begin
                    xMensErro:= xMensErro + '.Data da criação do bloco não pode ser maior que a data da Ordem de Produção do bloco.'+ #13;
                 end;
           end;

       if (dmGeral.PCP_CD_M_OPB_BLO.FieldByName('hor_emissao').AsString='') then
           begin
             xMensErro:= xMensErro + '.Hora da criação do bloco.'+ #13;
           end;

       if (dmGeral.PCP_CD_M_OPB_BLO.FieldByName('num_lote').AsString='') then
           begin
             xMensErro:= xMensErro + '.Nro de lote do bloco.'+ #13;
           end;

       if xMensErro<>'' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end
       else
          begin
             dmGeral.BUS_CD_M_OPB.Close;
             dmGeral.BUS_CD_M_OPB.Data :=
                 dmGeral.BUS_CD_M_OPB.DataRequest(VarArrayOf([4, dmGeral.PCP_CD_M_OPB.FieldByName('ID_EMPRESA').AsString,
                                                                 dmGeral.PCP_CD_M_OPB_BLO.FieldByName('NUM_LOTE').AsString]));
          end;
     end;
end;

procedure PcpNovoBloco;
begin
  dmGeral.PCP_CD_M_OPB_BLO.FieldByName('bloco_aprovado').AsBoolean := true;
  dmGeral.PCP_CD_M_OPB_BLO.FieldByName('id_cor').AsInteger := 1;
  dmGeral.BusCor(0,dmGeral.PCP_CD_M_OPB_BLO.FieldByName('id_cor').AsString);
  dmGeral.PCP_CD_M_OPB_BLO.FieldByName('int_nomecor').AsString :=
          dmGeral.BUS_CD_C_COR.FieldByName('descricao').AsString;
  dmGeral.CAD_CD_C_COR.close;
  dmGeral.PCP_CD_M_OPB_BLO.FieldByName('dta_emissao').AsDateTime := time;
  dmGeral.PCP_CD_M_OPB_BLO.FieldByName('hor_emissao').AsDateTime := time;
end;

end.
