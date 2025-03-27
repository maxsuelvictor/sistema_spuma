unit FIN_RN_M_CAR;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure FinValidaCar(DataSet:TDataSet);
procedure FinMascaraCar(DataSet:TDataSet);
procedure FinNovoCar(DataSet: TDataSet);
procedure FinCarCalcVlrLiqCar;
function  FinGeracaoAutomaticaCar(qtdeParcelas:integer;DiaFixo:Boolean):Boolean;
function  GerarDataParcela(dataBase:TDateTime;parcela:Integer):TDateTime;

implementation
Uses uDmGeral,enConstantes, uProxy;



function FinGeracaoAutomaticaCar(qtdeParcelas:integer;DiaFixo:Boolean):Boolean;
var
  SMPrincipal : TSMClient;
  i,retorno:integer;
  num_parcela,dia,codTitulo:string;
begin
  Result := true;
  i := 1;
  codTitulo := dmGeral.FIN_CD_M_CAR.FieldByName('ID_TITULO').AsString;

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    num_parcela :=
       SMPrincipal.enValorChave('FIN_TB_M_REC_NUM').ToString;
  finally
    FreeAndNil(SMPrincipal);
  end;


  dmGeral.BUS_CD_M_REC_2.Close;
  dmGeral.BUS_CD_M_REC_2.Data := dmGeral.BUS_CD_M_REC_2.DataRequest(VarArrayOf([0, '']));
  while (i<=qtdeParcelas) do
    begin
     dmgeral.BUS_CD_M_REC_2.Insert;

      if codTitulo = '' then
        begin
          SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
          try
             codTitulo :=
               IntToStr(SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT'));
          finally
            FreeAndNil(SMPrincipal);
          end;
        end;

      dmGeral.BUS_CD_M_REC_2.FieldByName('ID_TITULO').AsString := codTitulo;
      dmGeral.BUS_CD_M_REC_2.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.FIN_CD_M_CAR.FieldByName('ID_EMPRESA').AsInteger;
      dmGeral.BUS_CD_M_REC_2.FieldByName('ORIGEM').AsInteger          := 0;
      dmGeral.BUS_CD_M_REC_2.FieldByName('ID_FISCAL').AsInteger       :=
            dmGeral.FIN_CD_M_CAR.FieldByName('ID_FISCAL').AsInteger;
      dmGeral.BUS_CD_M_REC_2.FieldByName('TIPO_LANCAMENTO').AsInteger       :=
            dmGeral.FIN_CD_M_CAR.FieldByName('TIPO_LANCAMENTO').AsInteger;

      dmgeral.BUS_CD_M_REC_2.FieldByName('ID_CLIENTE').AsInteger :=
            dmgeral.FIN_CD_M_CAR.FieldByName('ID_CLIENTE').AsInteger;
      dmgeral.BUS_CD_M_REC_2.FieldByName('REV_LME').AsString :=
            dmgeral.FIN_CD_M_CAR.FieldByName('REV_LME').AsString;

      dmgeral.BUS_CD_M_REC_2.FieldByName('NUM_PARCELA').AsString :=
           num_parcela+'-'+IntToStr(i)+'/'+IntToStr(qtdeParcelas);


      dmgeral.BUS_CD_M_REC_2.FieldByName('DTA_EMISSAO').AsDateTime :=
            dmgeral.FIN_CD_M_CAR.FieldByName('DTA_EMISSAO').AsDateTime;

      dmgeral.BUS_CD_M_REC_2.FieldByName('DTA_ORIGINAL').AsDateTime :=
              GerarDataParcela(dmgeral.FIN_CD_M_CAR.FieldByName('DTA_ORIGINAL').AsDateTime,i);

      dmgeral.BUS_CD_M_REC_2.FieldByName('DTA_VENCIMENTO').AsDateTime :=
              GerarDataParcela(dmgeral.FIN_CD_M_CAR.FieldByName('DTA_VENCIMENTO').AsDateTime,i);


      dmgeral.BUS_CD_M_REC_2.FieldByName('ID_PLANO').AsString :=
            dmgeral.FIN_CD_M_CAR.FieldByName('ID_PLANO').AsString;
      dmgeral.BUS_CD_M_REC_2.FieldByName('ID_FORMA_PAG').AsInteger :=
            dmgeral.FIN_CD_M_CAR.FieldByName('ID_FORMA_PAG').AsInteger;
      

      dmgeral.BUS_CD_M_REC_2.FieldByName('HISTORICO').AsString :=
            dmgeral.FIN_CD_M_CAR.FieldByName('HISTORICO').AsString;
      dmgeral.BUS_CD_M_REC_2.FieldByName('VLR_ORIGINAL').AsCurrency :=
            dmGeral.FIN_CD_M_CAR.FieldByName('VLR_ORIGINAL').AsCurrency;
      dmgeral.BUS_CD_M_REC_2.FieldByName('VLR_PARCELA').AsCurrency :=
            dmgeral.FIN_CD_M_CAR.FieldByName('VLR_PARCELA').AsCurrency;
      dmgeral.BUS_CD_M_REC_2.FieldByName('VLR_SALDO').AsCurrency :=
            dmgeral.FIN_CD_M_CAR.FieldByName('VLR_SALDO').AsCurrency;


      dmgeral.BUS_CD_M_REC_2.FieldByName('CAR_TAXA').AsCurrency :=
            dmgeral.FIN_CD_M_CAR.FieldByName('CAR_TAXA').AsCurrency;

      dmgeral.BUS_CD_M_REC_2.FieldByName('CHE_CONTA').AsInteger :=
         dmGeral.FIN_CD_M_CAR.FieldByName('CHE_CONTA').AsInteger;
      dmgeral.BUS_CD_M_REC_2.FieldByName('CHE_CHEQUE').AsInteger :=
         dmGeral.FIN_CD_M_CAR.FieldByName('CHE_CHEQUE').AsInteger;
      dmgeral.BUS_CD_M_REC_2.FieldByName('CHE_BANCO').AsString :=
         dmGeral.FIN_CD_M_CAR.FieldByName('CHE_BANCO').AsString;
      dmgeral.BUS_CD_M_REC_2.FieldByName('CHE_EMITENTE').AsString :=
         dmGeral.FIN_CD_M_CAR.FieldByName('CHE_EMITENTE').AsString;
      dmgeral.BUS_CD_M_REC_2.FieldByName('CHE_AGENCIA').AsString :=
         dmGeral.FIN_CD_M_CAR.FieldByName('CHE_AGENCIA').AsString;
      dmgeral.BUS_CD_M_REC_2.Post;
      codTitulo := '';
       try
         retorno := dmGeral.BUS_CD_M_REC_2.ApplyUpdates(0);
         if retorno <> 0 then
            begin
              Showmessage('Falha na geração dos titulos de contas a receber.');
              Result := false;
              abort;
            end
         finally
         end;
     inc(i);
    end;

    Showmessage('Gravação realizada com sucesso.');
end;


function GerarDataParcela(dataBase:TDateTime;parcela:Integer):TDateTime;
VAR
  dia,mes,ano,ultDia,i:Integer;
begin
  dia := StrToInt(formatdatetime('dd', dataBase));
  mes := StrToInt(formatdatetime('mm', dataBase));
  ano := StrToInt(formatdatetime('yyyy', dataBase));

  i:=1;
  while i<parcela do
    begin
     mes := mes + 1;
     if mes>12 then
        begin
          mes := 1;
          ano := ano + 1;
        end;
     inc(i);
    end;

  ultDia := 31;
  if mes = 2 then
    begin
      if ( ano mod 4 ) = 0 then
        begin
          ultDia := 29;
        end
      else
        begin
          ultDia := 28;
        end;
    end;

  if mes in [4,6,9,11] then
    begin
     ultDia := 30;
    end;

  if dia>ultDia then
    begin
      dia := ultDia;
    end;
   Result := StrToDateTime(FormatFloat('00',dia)+'/'+FormatFloat('00',mes)+'/'+FormatFloat('0000',ano));
end;



procedure FinValidaCar(DataSet:TDataSet);
 var
  xMensErro:string;
 begin
  xMensErro:='';
  if dmGeral.FIN_CD_M_CAR.State in [dsInsert,dsEdit] then
     begin
        if (dmGeral.FIN_CD_M_CAR.FieldByName('ID_CLIENTE').AsString='') then
           begin
             xMensErro:= xMensErro + '.Cliente deve ser informado.'+ #13;
           end;

        if (dmGeral.FIN_CD_M_CAR.FieldByName('DTA_EMISSAO').AsString='') then
           begin
             xMensErro:= xMensErro + '.Data de emissao deve ser informado.'+ #13;
           end;

        if (dmGeral.FIN_CD_M_CAR.FieldByName('DTA_VENCIMENTO').AsString='') then
           begin
             xMensErro:= xMensErro + '.Data de vencimento deve ser informado.'+ #13;
           end;

        if (dmGeral.FIN_CD_M_CAR.FieldByName('ID_FORMA_PAG').AsString='') then
           begin
             xMensErro:= xMensErro + '.Forma de pagamento deve ser informado.'+ #13;
           end;

        if not (dmGeral.FIN_CD_M_CAR.FieldByName('VLR_ORIGINAL').AsCurrency > 0) then
           begin
             xMensErro:= xMensErro + '.Vlr. Venda tem que ser maior que zero.'+ #13;
           end;

        if xMensErro<>'' then
           begin
              raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
              abort;
           end;
     end;
end;

procedure FinMascaraCar(DataSet:TDataSet);
begin
   dmGeral.FIN_CD_M_CARvlr_parcela.DisplayFormat:=CMascaraValor;
   dmGeral.FIN_CD_M_CARcar_taxa.DisplayFormat:=CMascaraValor;
   dmGeral.FIN_CD_M_CARvlr_saldo.DisplayFormat:=CMascaraValor;
   dmGeral.FIN_CD_M_CARvlr_original.DisplayFormat:=CMascaraValor;
end;

procedure FinNovoCar(DataSet: TDataSet);
var
   SMPrincipal : TSMClient;
begin

   //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_CAR.FieldByName('ID_TITULO').AsInteger :=
         SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');

    dmGeral.FIN_CD_M_CAR.FieldByName('ID_EMPRESA').AsInteger :=
         dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmGeral.FIN_CD_M_CAR.FieldByName('DTA_EMISSAO').AsDateTime  := xDataSis;
  dmGeral.FIN_CD_M_CAR.FieldByName('DTA_VENCIMENTO').AsDateTime  := xDataSis;
  dmGeral.FIN_CD_M_CAR.FieldByName('DTA_ORIGINAL').AsDateTime  := xDataSis;
  dmGeral.FIN_CD_M_CAR.FieldByName('VLR_PARCELA').AsInteger  := 0;
  dmGeral.FIN_CD_M_CAR.FieldByName('VLR_ORIGINAL').AsInteger  := 0;
  dmGeral.FIN_CD_M_CAR.FieldByName('VLR_SALDO').AsInteger  := 0;
  dmGeral.FIN_CD_M_CAR.FieldByName('CAR_TAXA').AsInteger  := 0;
  dmGeral.FIN_CD_M_CAR.FieldByName('NUM_PARCELA').AsString  := '1';
  dmGeral.FIN_CD_M_CAR.FieldByName('HISTORICO').AsString  := '';
  dmGeral.FIN_CD_M_CAR.FieldByName('ORIGEM').AsInteger  := 0;
  dmGeral.FIN_CD_M_CAR.FieldByName('TIPO_LANCAMENTO').AsInteger  := 0;

  dmGeral.BusCodigoRevListMestre(true,false,'FIN_FM_M_CAR',xCodLme,xRevLme,dmGeral.FIN_CD_M_CAR);
end;

procedure FinCarCalcVlrLiqCar;
begin
  dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_CAR.FieldByName('ID_FORMA_PAG').AsString);

  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 3  then // Cartão de crédito
     begin
         dmGeral.FIN_CD_M_CAR.FieldByName('VLR_PARCELA').AsCurrency:=
         RoundTo((dmGeral.FIN_CD_M_CAR.FieldByName('VLR_ORIGINAL').AsCurrency*
                (100-dmGeral.FIN_CD_M_CAR.FieldByName('CAR_TAXA').AsCurrency)/100.0),-2);

         dmGeral.FIN_CD_M_CAR.FieldByName('VLR_SALDO').AsCurrency :=
          dmGeral.FIN_CD_M_CAR.FieldByName('VLR_PARCELA').AsCurrency;
     end

     else
        if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger <> 3  then // Não é Cartão de crédito
          begin
            dmGeral.FIN_CD_M_CAR.FieldByName('VLR_PARCELA').AsCurrency:=
            RoundTo((dmGeral.FIN_CD_M_CAR.FieldByName('VLR_ORIGINAL').AsCurrency),-2);

            dmGeral.FIN_CD_M_CAR.FieldByName('VLR_SALDO').AsCurrency :=
              dmGeral.FIN_CD_M_CAR.FieldByName('VLR_PARCELA').AsCurrency;
          end;


end;


end.
