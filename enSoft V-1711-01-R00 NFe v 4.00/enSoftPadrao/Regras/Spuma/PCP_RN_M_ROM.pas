unit PCP_RN_M_ROM;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure PcpValidaRom;
procedure PcpMascaraRom(DataSet:TDataSet);
procedure PcpNovoRom(DataSet: TDataSet);
procedure PcpNovoRomPedIcf(DataSet: TDataSet);
procedure PcpValidaRomPedIcf;
procedure PcpValidaRomIcf;
procedure PcpVerifQtdeRomIcf;
procedure PcpRetirarRomPedIcf;

procedure AtualizarTotaisRom;

procedure PcpNovoRomIcf(DataSet: TDataSet);

procedure PcpCalculaQtdeTotalPedRom;
procedure PcpCalculaQtdeTotalLotRom;



implementation
Uses uDmGeral,enConstantes, uProxy;


procedure PcpValidaRomPedIcf;
var
  xMensErro : string;
begin
  xMensErro:='';

  if trim(dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('id_sequencia').text) = '' then
     begin
       xMensErro:= xMensErro + '.Sequência ' + #13;
     end;

  {if trim(dmGeral.PCP_CD_M_ROM_PED.FieldByName('id_pedido').text) = '' then
     begin
       xMensErro:= xMensErro + '.Pedido ' + #13;
     end;

  if trim(dmGeral.PCP_CD_M_ROM_LOT.FieldByName('nro_lote_caminhao').text) = '' then
     begin
       xMensErro:= xMensErro + '.Lote ' + #13;
     end;

  if trim(dmGeral.PCP_CD_M_ROM_LOT.FieldByName('qtde').text) = '' then
     begin
       xMensErro:= xMensErro + '.Quantidade do Lote ' + #13;
     end;  }

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure PcpValidaRomIcf;
var
  xMensErro : string;
begin
  xMensErro:='';

  if trim(dmGeral.PCP_CD_M_ROM_ICF.FieldByName('id_pedido').text) = '' then
     begin
       xMensErro:= xMensErro + '.Pedido ' + #13;
     end;

  if xMensErro<>'' then
     begin
       dmGeral.PCP_CD_M_ROM.cancel;
       dmGeral.PCP_CD_M_ROM_ICF.cancel;
       dmGeral.PCP_CD_M_ROM_PED_ICF.cancel;

       dmGeral.PCP_CD_M_ROM.edit;

       raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
     end;

  PcpVerifQtdeRomIcf;
end;

procedure PcpVerifQtdeRomIcf;
var
  xMensErro : string;
begin
  xMensErro:='';

   if (dmGeral.PCP_CD_M_ROM.FieldByName('ped_ite_qtde_total').AsCurrency) <>  (dmGeral.PCP_CD_M_ROM_ICF.RecordCount) then
     begin
       { if (dmGeral.PCP_CD_M_ROM.FieldByName('ped_ite_qtde_total').AsCurrency) > (dmGeral.PCP_CD_M_ROM_ICF.RecordCount) then
            begin
              xMensErro:= xMensErro + 'Quantidade total de itens dos pedidos está maior que a quantidade dos itens conferidos.' + #13 +
                          'Qtde total dos itens dos pedidos: ' + dmGeral.PCP_CD_M_ROM.FieldByName('ped_ite_qtde_total').AsString + #13 +
                          'Qtde total dos itens conferidos: ' + inttostr(dmGeral.PCP_CD_M_ROM_ICF.RecordCount) + #13;
            end; }

        if (dmGeral.PCP_CD_M_ROM.FieldByName('ped_ite_qtde_total').AsCurrency) < (dmGeral.PCP_CD_M_ROM_ICF.RecordCount) then
            begin
              xMensErro:= xMensErro + 'É preciso que resolva a seguinte inconsistência:' + #13 +
                          'Quantidade de itens conferido está maior que a quantidade total de itens dos pedidos.' + #13 +
                          'Qtde total dos itens dos pedidos: ' + dmGeral.PCP_CD_M_ROM.FieldByName('ped_ite_qtde_total').AsString + #13 +
                          'Qtde total dos itens conferidos: ' + inttostr(dmGeral.PCP_CD_M_ROM_ICF.RecordCount) + #13;
            end;
     end;


  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure PcpRetirarRomPedIcf;
begin
  dmGeral.PCP_CD_M_ROM_PED.First;

  while not dmGeral.PCP_CD_M_ROM_PED.eof do
     begin
       if dmGeral.PCP_CD_M_ROM_PED_ICF.Locate('cod_barra',dmGeral.PCP_CD_M_ROM_ICF.FieldByName('cod_barra').AsString,[]) then
          begin
            dmGeral.PCP_CD_M_ROM_PED_ICF.delete;
          end;
       dmGeral.PCP_CD_M_ROM_PED.Next;
     end;

  dmGeral.PCP_CD_M_ROM_PED.First;
end;


procedure PcpNovoRomPedIcf(DataSet: TDataSet);
begin
  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_COR').AsInteger := 0;
  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_TAMANHO').AsInteger := 0;
  dmGeral.PCP_CD_M_ROM_PED_ICF.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;

end;

procedure PcpCalculaQtdeTotalPedRom;
var
  codigo:string;
  qtde_total:currency;
begin
  qtde_total := 0;
  codigo := dmGeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').AsString;
  if (dmGeral.PCP_CD_M_ROM_PED.RecordCount >0) then
    begin
     dmGeral.PCP_CD_M_ROM_PED.First;
     while not dmGeral.PCP_CD_M_ROM_PED.Eof do
       begin
        dmGeral.PCP_CD_M_ROM_PED_ITE.First;
        while (not dmGeral.PCP_CD_M_ROM_PED_ITE.Eof) do
          begin
             qtde_total := qtde_total + dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE').AsFloat;
             dmGeral.PCP_CD_M_ROM_PED_ITE.Next;
          end;
        dmGeral.PCP_CD_M_ROM_PED.Next;
       end;
      dmgeral.PCP_CD_M_ROM_PED.Locate('ID_PEDIDO',CODIGO,[]);
      dmGeral.PCP_CD_M_ROM_PED_ITE.First;
    end;

  dmGeral.PCP_CD_M_ROM.FieldByName('ped_ite_qtde_total').AsCurrency := qtde_total;
end;

procedure PcpCalculaQtdeTotalLotRom;
var
  codigo:string;
  qtde_total:currency;
begin
   qtde_total := 0;
   if (dmGeral.PCP_CD_M_ROM_LOT.RecordCount >0) then
     begin
       codigo := dmGeral.PCP_CD_M_ROM_LOT.FieldByName('nro_lote_caminhao').AsString;

       dmGeral.PCP_CD_M_ROM_LOT.First;
       while(not dmGeral.PCP_CD_M_ROM_LOT.Eof) do
         begin
           qtde_total := qtde_total + dmGeral.PCP_CD_M_ROM_LOT.FieldByName('QTDE').AsFloat;
           dmGeral.PCP_CD_M_ROM_LOT.Next;
         end;
       dmgeral.PCP_CD_M_ROM_LOT.Locate('NRO_LOTE_CAMINHAO',CODIGO,[]);
     end;

   dmGeral.PCP_CD_M_ROM.FieldByName('lot_qtde_total').AsCurrency := qtde_total;
end;


procedure PcpValidaRom;
var
  xMensErro : string;
begin
  xMensErro:='';

  if trim(dmGeral.PCP_CD_M_ROM.FieldByName('id_motorista').text) = '' then
     begin
       xMensErro:= xMensErro + '.Motorista ' + #13;
     end;

 {  if (dmGeral.PCP_CD_M_ROM.FieldByName('ped_ite_qtde_total').AsCurrency) <>  (dmGeral.PCP_CD_M_ROM_ICF.RecordCount) then
     begin
        if (dmGeral.PCP_CD_M_ROM.FieldByName('ped_ite_qtde_total').AsCurrency) > (dmGeral.PCP_CD_M_ROM_ICF.RecordCount) then
            begin
              xMensErro:= xMensErro + 'Quantidade total de itens dos pedidos está maior que a quantidade dos itens conferidos.' + #13 +
                          'Qtde total dos itens dos pedidos: ' + dmGeral.PCP_CD_M_ROM.FieldByName('ped_ite_qtde_total').AsString + #13 +
                          'Qtde total dos itens conferidos: ' + inttostr(dmGeral.PCP_CD_M_ROM_ICF.RecordCount) + #13;
            end;

        if (dmGeral.PCP_CD_M_ROM.FieldByName('ped_ite_qtde_total').AsCurrency) < (dmGeral.PCP_CD_M_ROM_ICF.RecordCount) then
            begin
              xMensErro:= xMensErro + 'Quantidade total de itens dos pedidos está menor que a quantidade dos itens conferidos.' + #13 +
                          'Qtde total dos itens dos pedidos: ' + dmGeral.PCP_CD_M_ROM.FieldByName('ped_ite_qtde_total').AsString + #13 +
                          'Qtde total dos itens conferidos: ' + inttostr(dmGeral.PCP_CD_M_ROM_ICF.RecordCount) + #13;
            end;
     end; }
  {if trim(dmGeral.PCP_CD_M_ROM_PED.FieldByName('id_pedido').text) = '' then
     begin
       xMensErro:= xMensErro + '.Pedido ' + #13;
     end;

  if trim(dmGeral.PCP_CD_M_ROM_LOT.FieldByName('nro_lote_caminhao').text) = '' then
     begin
       xMensErro:= xMensErro + '.Lote ' + #13;
     end;

  if trim(dmGeral.PCP_CD_M_ROM_LOT.FieldByName('qtde').text) = '' then
     begin
       xMensErro:= xMensErro + '.Quantidade do Lote ' + #13;
     end;  }

  if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;

procedure AtualizarTotaisRom;
begin
  dmGeral.PCP_CD_M_ROM.FieldByName('qtde_total_ite_conf').AsCurrency := dmGeral.PCP_CD_M_ROM_ICF.RecordCount;
end;

procedure PcpMascaraRom(DataSet:TDataSet);
begin

end;

procedure PcpNovoRom(DataSet: TDataSet);
begin

end;

procedure PcpNovoRomIcf(DataSet: TDataSet);
begin
  dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_COR').AsInteger := 0;
  dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_TAMANHO').AsInteger := 0;
  dmGeral.PCP_CD_M_ROM_ICF.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
end;


end.
