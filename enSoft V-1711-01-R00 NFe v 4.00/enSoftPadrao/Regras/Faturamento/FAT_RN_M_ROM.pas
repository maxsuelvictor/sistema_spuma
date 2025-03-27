unit FAT_RN_M_ROM;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Datasnap.DBClient;

procedure FatValidaRom;
procedure CalcTotal;
procedure FatMascaraRom;
procedure FatTesPermAltRom;
procedure FatTesPermExcRom;


implementation

uses uDmGeral, enConstantes;

procedure FatValidaRom;
var
  xMensErro: string;
begin
  xMensErro := '';

  if trim(dmgeral.FAT_CD_M_ROM.FieldByName('DTA_EMISSAO').Text) = '' then
    xMensErro:= xMensErro + '.Data emissão'+ #13;

  if trim(dmgeral.FAT_CD_M_ROM.FieldByName('dta_hor_ini_viagem').Text) = '' then
    xMensErro:= xMensErro + '.Data e horá do início da viagem'+ #13;

  if trim(dmgeral.FAT_CD_M_ROM.FieldByName('ID_RESPONSAVEL').Text) = '' then
    xMensErro:= xMensErro + '.Responsável'+ #13;

  if trim(dmgeral.FAT_CD_M_ROM.FieldByName('ID_MOTORISTA').Text) = '' then
    xMensErro:= xMensErro + '.Motorista'+ #13;

  if trim(dmgeral.FAT_CD_M_ROM.FieldByName('VEICULO').Text) = '' then
    xMensErro:= xMensErro + '.Veiculo'+ #13;

  if trim(dmgeral.FAT_CD_M_ROM.FieldByName('ID_PLACA').Text) = '' then
    xMensErro:= xMensErro + '.Placa'+ #13;

  dmgeral.FAT_CD_M_ROM_NFE.cancel;
  if dmgeral.FAT_CD_M_ROM_NFE.IsEmpty then
     xMensErro:= xMensErro + '.Nota Fiscal'+ #13;

  {  if (trim(dmgeral.FAT_CD_M_ROM_NFE.FieldByName('ID_FISCAL').Text) = '') or  then
    xMensErro:= xMensErro + '.Nota Fiscal'+ #13;

  if trim(dmgeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('ID_ITEM').Text) = '' then
    xMensErro:= xMensErro + '.Nota Fiscal'+ #13;                             }

  if trim(dmgeral.FAT_CD_M_ROM.FieldByName('TIPO').Text) = '' then
    xMensErro:= xMensErro + '.Tipo'+ #13;

  if xMensErro<>'' then
    begin
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
      abort;
    end;
end;
procedure CalcTotal;
var
Volume,ValorTotal,qtde: Currency;
begin
  Volume := 0;
  ValorTotal := 0;
  qtde := 0;
  dmgeral.FAT_CD_M_ROM_NFE.First;

  while not dmgeral.FAT_CD_M_ROM_NFE.Eof do
    begin
      ValorTotal := ValorTotal + dmgeral.FAT_CD_M_ROM_NFEint_vlrliquido.AsCurrency;
      dmgeral.FAT_CD_M_ROM_NFE_ITE.First;
      while not dmgeral.FAT_CD_M_ROM_NFE_ITE.Eof do
        begin
          volume := volume + dmgeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('PESO_LIQUIDO').AsCurrency;
          qtde := qtde + dmgeral.FAT_CD_M_ROM_NFE_ITE.FieldByName('QTDE').AsCurrency;
          dmgeral.FAT_CD_M_ROM_NFE_ITE.Next;

        end;
      dmgeral.FAT_CD_M_ROM_NFE.Next;
    end;

  dmgeral.FAT_CD_M_ROM.FieldByName('TOTAL_NOTAS').AsCurrency := ValorTotal;
  dmgeral.FAT_CD_M_ROM.FieldByName('VOL_CARGA').AsCurrency  := Volume;
  dmgeral.FAT_CD_M_ROM.FieldByName('qtde_carga').AsCurrency  := qtde;
end;
procedure FatMascaraRom;
begin
  dmGeral.FAT_CD_M_ROMtotal_notas.DisplayFormat := CMascaraValor;
  dmGeral.FAT_CD_M_ROMvol_carga.DisplayFormat := CMascaraValor;
end;


procedure FatTesPermAltRom;
var
  mens: String;
begin
   mens := '';

  {  STATUS
   0 - pendente
   1 - entregue parcial
   2 - entregue total
   3 - finalizado
  }

  if (dmGeral.FAT_CD_M_ROM.FieldByName('CANCELADO').AsBoolean = false) and
     (dmGeral.FAT_CD_M_ROM.FieldByName('STATUS').AsInteger = 1) then
     begin
       mens := mens + '.Manifesto de caga já foi Autorizado pela Sefaz.' + #13;
     end;

  if (dmGeral.FAT_CD_M_ROM.FieldByName('CANCELADO').AsBoolean) and
     (dmGeral.FAT_CD_M_ROM.FieldByName('STATUS').AsInteger = 1) then
     begin
       mens := mens + '.Manifesto de caga foi cancelado' + #13;
     end;

  if mens <> '' then
     begin
       ShowMessage('Alteração não permitida!' + #13 + mens);
       mens := '';
       abort;
     end;
end;

procedure FatTesPermExcRom;
var
  mens: String;
begin
   mens := '';

  {  STATUS
   0 - pendente
   1 - entregue parcial
   2 - entregue total
   3 - finalizado
  }

  if (dmGeral.FAT_CD_M_ROM.FieldByName('CANCELADO').AsBoolean = false) and
     (dmGeral.FAT_CD_M_ROM.FieldByName('STATUS').AsInteger = 1) then
     begin
       mens := mens + '.Manifesto de caga já foi Autorizado pela Sefaz.' + #13;
     end;

  if (dmGeral.FAT_CD_M_ROM.FieldByName('CANCELADO').AsBoolean) and
     (dmGeral.FAT_CD_M_ROM.FieldByName('STATUS').AsInteger = 1) then
     begin
       mens := mens + '.Manifesto de caga foi cancelado' + #13;
     end;

  if mens <> '' then
     begin
       ShowMessage('Exclusão não permitida!' + #13 + mens);
       mens := '';
       abort;
     end;
end;


end.
