unit FIN_RN_M_PAG;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math, Vcl.Forms,Datasnap.DBClient;

procedure FinValidaPag(DataSet:TDataSet);
procedure FinMascaraPag(DataSet:TDataSet);
procedure FatNovoPag(DataSet: TDataSet);
procedure FatNovoBusPag(DataSet: TDataSet);
function  FatExisteFinBxaNfe(cdsPai,cdsTitulos: TClientDataSet):Boolean;
procedure PagModificaVlrParcela(Sender: TField);
function  FinPermiteAltPag: Integer;
function  FinPermiteExcPag: Boolean;

procedure FIN_CD_M_PAGdta_originalChange;

function FinGeracaoAutomaticaPag(qtdeParcelas:integer;DiaFixo:Boolean):String;
function GerarDataParcela(dataBase:TDateTime;parcela:Integer):TDateTime;

var
  VerificarData:Boolean;

implementation
Uses uDmGeral,enConstantes, uProxy;


function FinGeracaoAutomaticaPag(qtdeParcelas:integer;DiaFixo:Boolean):String;
var
  SMPrincipal : TSMClient;
  i,retorno:integer;
  num_parcela,dia:string;
begin

  i := 1;
  num_parcela := trim(dmGeral.FIN_CD_M_PAG.FieldByName('NUM_PARCELA').AsString);
  if trim(dmGeral.FIN_CD_M_PAG.FieldByName('NUM_PARCELA').AsString) = '' then
    begin
      SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
      try
        num_parcela :=
           SMPrincipal.enValorChave('FIN_TB_M_PAG_NUM').ToString;

      finally
        FreeAndNil(SMPrincipal);
      end;
    end;
  dmgeral.FIN_CD_M_PAG.FieldByName('NUM_PARCELA').AsString := num_parcela;
  Result := num_parcela+'-1/'+IntToStr(qtdeParcelas);
  dmGeral.BUS_CD_M_PAG.Close;
  dmGeral.BUS_CD_M_PAG.Data := dmGeral.BUS_CD_M_PAG.DataRequest(VarArrayOf([0, '']));
  while (i<=qtdeParcelas) do
    begin
     dmgeral.BUS_CD_M_PAG.Insert;

      SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
      try
        dmgeral.BUS_CD_M_PAG.FieldByName('ID_TITULO').AsInteger :=
            SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
      finally
        FreeAndNil(SMPrincipal);
      end;
      dmGeral.BUS_CD_M_PAG.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.FIN_CD_M_PAG.FieldByName('ID_EMPRESA').AsInteger;
      dmGeral.BUS_CD_M_PAG.FieldByName('ORIGEM').AsInteger          := 5;
      dmGeral.BUS_CD_M_PAG.FieldByName('ID_FISCAL').AsInteger       :=
            dmGeral.FIN_CD_M_PAG.FieldByName('ID_FISCAL').AsInteger;
      dmGeral.BUS_CD_M_PAG.FieldByName('TIPO_LANCAMENTO').AsInteger       :=
            dmGeral.FIN_CD_M_PAG.FieldByName('TIPO_LANCAMENTO').AsInteger;

      dmgeral.BUS_CD_M_PAG.FieldByName('ID_FORNECEDOR').AsInteger :=
            dmgeral.FIN_CD_M_PAG.FieldByName('ID_FORNECEDOR').AsInteger;
      dmgeral.BUS_CD_M_PAG.FieldByName('REV_LME').AsString :=
            dmgeral.FIN_CD_M_PAG.FieldByName('REV_LME').AsString;

      dmgeral.BUS_CD_M_PAG.FieldByName('NUM_PARCELA').AsString :=
            dmgeral.FIN_CD_M_PAG.FieldByName('NUM_PARCELA').AsString+'-'+
            IntToStr(i)+'/'+IntToStr(qtdeParcelas);

      dmgeral.BUS_CD_M_PAG.FieldByName('ID_OBRA').AsInteger :=
            dmgeral.FIN_CD_M_PAG.FieldByName('ID_OBRA').AsInteger;
      dmgeral.BUS_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime :=
            dmgeral.FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime;

      if DiaFixo = false then
        begin
         dmgeral.BUS_CD_M_PAG.FieldByName('DTA_ORIGINAL').AsDateTime :=
            dmgeral.FIN_CD_M_PAG.FieldByName('DTA_ORIGINAL').AsDateTime +(i-1)*30;
         dmgeral.BUS_CD_M_PAG.FieldByName('DTA_VENCIMENTO').AsDateTime :=
            dmgeral.FIN_CD_M_PAG.FieldByName('DTA_VENCIMENTO').AsDateTime +(i-1)*30;
        end
      else
        begin
            dmgeral.BUS_CD_M_PAG.FieldByName('DTA_ORIGINAL').AsDateTime :=
              GerarDataParcela(dmgeral.FIN_CD_M_PAG.FieldByName('DTA_ORIGINAL').AsDateTime,i);

            dmgeral.BUS_CD_M_PAG.FieldByName('DTA_VENCIMENTO').AsDateTime :=
              GerarDataParcela(dmgeral.FIN_CD_M_PAG.FieldByName('DTA_VENCIMENTO').AsDateTime,i);
        end;

      dmgeral.BUS_CD_M_PAG.FieldByName('ID_PLANO').AsString :=
            dmgeral.FIN_CD_M_PAG.FieldByName('ID_PLANO').AsString;
      dmgeral.BUS_CD_M_PAG.FieldByName('ID_FORMA_PAG').AsInteger :=
            dmgeral.FIN_CD_M_PAG.FieldByName('ID_FORMA_PAG').AsInteger;
      dmgeral.BUS_CD_M_PAG.FieldByName('ID_LOCAL_TITULO').AsInteger :=
            dmgeral.FIN_CD_M_PAG.FieldByName('ID_LOCAL_TITULO').AsInteger;
      dmgeral.BUS_CD_M_PAG.FieldByName('ID_CCUSTO').AsInteger :=
            dmgeral.FIN_CD_M_PAG.FieldByName('ID_CCUSTO').AsInteger;
      dmgeral.BUS_CD_M_PAG.FieldByName('HISTORICO').AsString :=
            dmgeral.FIN_CD_M_PAG.FieldByName('HISTORICO').AsString;
      dmgeral.BUS_CD_M_PAG.FieldByName('VLR_ORIGINAL').AsCurrency :=
            dmGeral.FIN_CD_M_PAG.FieldByName('VLR_ORIGINAL').AsCurrency;
      dmgeral.BUS_CD_M_PAG.FieldByName('VLR_PARCELA').AsCurrency :=
            dmgeral.FIN_CD_M_PAG.FieldByName('VLR_PARCELA').AsCurrency;
      dmgeral.BUS_CD_M_PAG.FieldByName('VLR_SALDO').AsCurrency :=
            dmgeral.FIN_CD_M_PAG.FieldByName('VLR_SALDO').AsCurrency;
      dmgeral.BUS_CD_M_PAG.FieldByName('PER_MULTA').AsCurrency :=
            dmgeral.FIN_CD_M_PAG.FieldByName('PER_MULTA').AsCurrency;

      dmgeral.BUS_CD_M_PAG.FieldByName('PRE_CONTA').AsInteger :=
         dmGeral.FIN_CD_M_PAG.FieldByName('PRE_CONTA').AsInteger;
      dmgeral.BUS_CD_M_PAG.FieldByName('PRE_CHEQUE').AsInteger :=
         dmGeral.FIN_CD_M_PAG.FieldByName('PRE_CHEQUE').AsInteger;
      dmgeral.BUS_CD_M_PAG.FieldByName('PRE_BANCO').AsString :=
         dmGeral.FIN_CD_M_PAG.FieldByName('PRE_BANCO').AsString;
      dmgeral.BUS_CD_M_PAG.FieldByName('PRE_EMITENTE').AsString :=
         dmGeral.FIN_CD_M_PAG.FieldByName('PRE_EMITENTE').AsString;
      dmgeral.BUS_CD_M_PAG.FieldByName('PRE_AGENCIA').AsString :=
         dmGeral.FIN_CD_M_PAG.FieldByName('PRE_AGENCIA').AsString;
      dmgeral.BUS_CD_M_PAG.Post;

     inc(i);
    end;
    try
        retorno := dmGeral.BUS_CD_M_PAG.ApplyUpdates(0);
     if retorno = 0 then
        begin
          dmgeral.BUS_CD_M_PAG.Close;
          Showmessage('Gravação realizada com sucesso.');
        end
     finally
       if retorno <> 0 then
         begin
          Showmessage('Falha na geração dos titulos de contas a pagar.');
          abort;
         end;
     end;

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


procedure FinValidaPag(DataSet:TDataSet);
Var
xMensErro:string;
xHistorico:Integer;
begin
  xMensErro:='';

  if (dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean) and (
     (dmGeral.FIN_CD_M_PAG.FieldByName('id_obra').AsString=null) or
     (dmGeral.FIN_CD_M_PAG.FieldByName('id_obra').AsString='') ) then
     begin
       xMensErro:= xMensErro + '.Obra deve ser informada.'+ #13;
     end;

  if (dmGeral.FIN_CD_M_PAG.FieldByName('id_fornecedor').AsString=null) or
     (dmGeral.FIN_CD_M_PAG.FieldByName('id_fornecedor').AsString='') then
     begin
       xMensErro:= xMensErro + '.Fornecedor deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_PAG.FieldByName('id_fornecedor').FocusControl;
     end;

  dmGeral.BUS_CD_C_FOR.Close;
  dmGeral.BUS_CD_C_FOR.Data :=
  dmGeral.BUS_CD_C_FOR.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_fornecedor').AsString]));
  if dmGeral.BUS_CD_C_FOR.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Fornecedor não cadastrado.'+ #13;
     end;
  if dmGeral.BUS_CD_C_FOR.FieldByName('ATIVO').AsBoolean=false then
     begin
       xMensErro:= xMensErro + '.Fornecedor inativo.'+ #13;
     end;

  if dmGeral.FIN_CD_M_PAG.FieldByName('dta_emissao').AsDateTime=0 then
     begin
       xMensErro:= xMensErro + 'Data de emissão deve ser informada.'+ #13;
     end;
  if dmGeral.FIN_CD_M_PAG.FieldByName('dta_original').AsDateTime=0 then
     begin
       xMensErro:= xMensErro + 'Data de vencimento deve ser informada.'+ #13;
     end;
  if dmGeral.FIN_CD_M_PAG.FieldByName('dta_vencimento').AsDateTime=0 then
     begin
       xMensErro:= xMensErro + 'Previsão de baixa deve ser informada.'+ #13;
     end;
  if dmGeral.FIN_CD_M_PAG.FieldByName('Historico').AsString='' then
     begin
       xMensErro:= xMensErro + 'Histórico deve ser informado.'+ #13;
     end;

  xHistorico :=Length(Trim(dmGeral.FIN_CD_M_PAG.FieldByName('Historico').AsString));

  if (xHistorico<10) then
     begin
       xMensErro:= xMensErro + 'Histórico deve ter no minimo 10 caracteres.'+ #13;
     end;

  if (dmGeral.FIN_CD_M_PAG.FieldByName('id_local_titulo').AsString=null) or
     (dmGeral.FIN_CD_M_PAG.FieldByName('id_local_titulo').AsString='') then
     begin
       xMensErro:= xMensErro + '.Local do titulo deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_PAG.FieldByName('id_local_titulo').FocusControl;
     end;
  dmGeral.BUS_CD_C_LTO.Close;
  dmGeral.BUS_CD_C_LTO.Data :=
  dmGeral.BUS_CD_C_LTO.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_local_titulo').AsString]));
  if dmGeral.BUS_CD_C_LTO.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Local do titulo não cadastrado.'+ #13;
     end;

  if (dmGeral.FIN_CD_M_PAG.FieldByName('id_forma_pag').AsString=null) or
     (dmGeral.FIN_CD_M_PAG.FieldByName('id_forma_pag').AsString='') then
     begin
       xMensErro:= xMensErro + '.Forma de pagamento deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_PAG.FieldByName('id_forma_pag').FocusControl;
     end;
  dmGeral.BUS_CD_C_FPG.Close;
  dmGeral.BUS_CD_C_FPG.Data :=
  dmGeral.BUS_CD_C_FPG.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_forma_pag').AsString]));
  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Forma de pagamento não cadastrado.'+ #13;
     end;

  if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger=6 then
     begin
       if (dmGeral.FIN_CD_M_PAG.FieldByName('pre_conta').AsString='') or
          (dmGeral.FIN_CD_M_PAG.FieldByName('pre_cheque').AsString='') or
          (dmGeral.FIN_CD_M_PAG.FieldByName('pre_banco').AsString='') or
          (dmGeral.FIN_CD_M_PAG.FieldByName('pre_emitente').AsString='') or
          (dmGeral.FIN_CD_M_PAG.FieldByName('pre_agencia').AsString='') then
           xMensErro:= xMensErro + '.Você deve informa os dados do cheque.'+ #13;
     end;

  if (dmGeral.FIN_CD_M_PAG.FieldByName('id_plano').AsString=null) or
     (dmGeral.FIN_CD_M_PAG.FieldByName('id_plano').AsString='') then
     begin
       xMensErro:= xMensErro + '.Plano de contas deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_PAG.FieldByName('id_plano').FocusControl;
     end;
  dmGeral.BUS_CD_C_PCT.Close;
  dmGeral.BUS_CD_C_PCT.Data :=
  dmGeral.BUS_CD_C_PCT.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_plano').AsString]));
  if dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Plano de contas não cadastrado.'+ #13;
     end;
  if dmGeral.BUS_CD_C_PCT.FieldByName('Tipo').AsInteger=1 then
     begin
       xMensErro:= xMensErro + '.Plano de contas deve ser analitico.'+ #13;
     end;
  if dmGeral.BUS_CD_C_PCT.FieldByName('Tipo_desp').AsInteger=1 then
     begin
       xMensErro:= xMensErro + '.Plano de contas não pode ser receita.'+ #13;
     end;

  if (dmGeral.FIN_CD_M_PAG.FieldByName('id_ccusto').AsString=null) or
     (dmGeral.FIN_CD_M_PAG.FieldByName('id_ccusto').AsString='') then
     begin
       xMensErro:= xMensErro + '.Centro de custo deve ser informado.'+ #13;
       dmGeral.FIN_CD_M_PAG.FieldByName('id_ccusto').FocusControl;
     end;
  dmGeral.BUS_CD_C_CCU.Close;
  dmGeral.BUS_CD_C_CCU.Data :=
  dmGeral.BUS_CD_C_CCU.DataRequest(
          VarArrayOf([0, dataset.FieldByName('id_ccusto').AsString]));
  if dmGeral.BUS_CD_C_CCU.IsEmpty then
     begin
       xMensErro:= xMensErro + '.Centro de custo não cadastrado.'+ #13;
     end;

  if dmGeral.FIN_CD_M_PAG.FieldByName('VLR_PARCELA').AsCurrency= 0 then
     begin
       xMensErro:= xMensErro + '.Valor do título deve ser informado.'+ #13;
     end;

  if dmGeral.FIN_CD_M_PAG.FieldByName('VLR_ORIGINAL').AsCurrency= 0 then
     begin
       xMensErro:= xMensErro + '.Valor do título deve ser informado.'+ #13;
     end;

   if dmGeral.FIN_CD_M_PAG.FieldByName('VLR_PARCELA').AsCurrency < 0 then
     begin
       xMensErro:= xMensErro + '.Valor do título não pode ter valor negativo.'+ #13;
     end;


   if xMensErro<>'' then
      raise Exception.Create(enConstantes.MensErro + #13 + xMensErro)
   else
      begin

        if VerificarData then
           begin
              if (dmGeral.FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime - xDataSis)< -365  then
                    begin
                     xMensErro:= xMensErro + '.Data de emissão não pode ser menor em mais de 1 ano da data atual.'+ #13;
                    end;

              if dmGeral.FIN_CD_M_PAG.FieldByName('dta_emissao').AsDateTime >
                 dmGeral.FIN_CD_M_PAG.FieldByName('dta_original').AsDateTime  then
                 begin
                   xMensErro:= xMensErro + '.Data de emissão não pode ser maior que a data de vencimento'+ #13;
                 end;

              if dmGeral.FIN_CD_M_PAG.FieldByName('dta_original').AsDateTime >
                 dmGeral.FIN_CD_M_PAG.FieldByName('dta_vencimento').AsDateTime then
                 begin
                   xMensErro:= xMensErro + '.Data de vencimento não pode ser maior que a data da previsão da baixa.'+ #13;
                 end;

               if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = false) and
                   ((dmGeral.FIN_CD_M_PAG.FieldByName('DTA_ORIGINAL').AsDateTime -
                    dmGeral.FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime)> 1825)  then
                 begin
                   xMensErro:= xMensErro +'.Data de vencimento não pode ser  maior em mais de 5 anos da data de emissão.'+ #13;
                 end;

               if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = false) and
                  ((dmGeral.FIN_CD_M_PAG.FieldByName('DTA_VENCIMENTO').AsDateTime -
                  dmGeral.FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime)> 1825)  then
                 begin
                    xMensErro:= xMensErro +'.Data de previsão de baixa não pode ser  maior em mais de 5 anos da data de emissão.'+ #13;
                 end;
           end;

        if xMensErro<>'' then
           raise Exception.Create(enConstantes.MensErro + #13 + xMensErro)
      end;


end;

procedure FinMascaraPag(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_PAGVLR_SALDO.DisplayFormat       :=CMascaraValor;
  dmGeral.FIN_CD_M_PAGVLR_PARCELA.DisplayFormat     :=CMascaraValor;
  dmGeral.FIN_CD_M_PAGVLR_ORIGINAL.DisplayFormat    :=CMascaraValor;

  dmGeral.FIN_CD_M_PAGVLR_SALDO.ReadOnly            :=True;
end;

procedure FatNovoPag(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_PAG.FieldByName('ID_TITULO').AsInteger :=
         SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT')
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FIN_CD_M_PAG.FieldByName('ID_FORNECEDOR').AsInteger   := 0;
  dmGeral.FIN_CD_M_PAG.FieldByName('NUM_PARCELA').AsString      := '';
  dmGeral.FIN_CD_M_PAG.FieldByName('DTA_LANCAMENTO').AsDateTime := xDataSis;
  dmGeral.FIN_CD_M_PAG.FieldByName('DTA_EMISSAO').AsDateTime    := xDataSis;
  dmGeral.FIN_CD_M_PAG.FieldByName('HISTORICO').AsString        := '';
  dmGeral.FIN_CD_M_PAG.FieldByName('VLR_ORIGINAL').AsCurrency   := 0;
  dmGeral.FIN_CD_M_PAG.FieldByName('DTA_VENCIMENTO').AsDateTime := 0;
  dmGeral.FIN_CD_M_PAG.FieldByName('DTA_ORIGINAL').AsDateTime   := 0;
  dmGeral.FIN_CD_M_PAG.FieldByName('ID_FISCAL').AsInteger       := 0;
  dmGeral.FIN_CD_M_PAG.FieldByName('ORIGEM').AsInteger          := 5;
  dmGeral.FIN_CD_M_PAG.FieldByName('ID_FORMA_PAG').AsInteger    := 0;
  dmGeral.FIN_CD_M_PAG.FieldByName('PRE_CONTA').AsInteger       := 0;
  dmGeral.FIN_CD_M_PAG.FieldByName('PRE_CHEQUE').AsString       := '0';
  dmGeral.FIN_CD_M_PAG.FieldByName('PRE_BANCO').AsString        := '';
  dmGeral.FIN_CD_M_PAG.FieldByName('PRE_EMITENTE').AsString     := '';
  dmGeral.FIN_CD_M_PAG.FieldByName('PRE_AGENCIA').AsString      := '';
  dmGeral.FIN_CD_M_PAG.FieldByName('TIPO_LANCAMENTO').AsInteger := 0;
  dmGeral.FIN_CD_M_PAG.FieldByName('ID_LOCAL_TITULO').AsInteger := 0;
  dmGeral.FIN_CD_M_PAG.FieldByName('ID_PLANO').AsString         := '';
  dmGeral.FIN_CD_M_PAG.FieldByName('per_multa').AsFloat         := 0;
  dmGeral.FIN_CD_M_PAG.FieldByName('per_juros').AsFloat         := 0;


  dmGeral.BusCodigoRevListMestre(true,false,'FIN_FM_M_PAG',xCodLme,xRevLme,dmGeral.FIN_CD_M_PAG);
end;

procedure FatNovoBusPag(DataSet: TDataSet);
begin
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('ID_FORNECEDOR').AsInteger   := 0;
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('NUM_PARCELA').AsString      := '';
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('DTA_EMISSAO').AsDateTime    := xDataSis;
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('HISTORICO').AsString        := '';
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('VLR_ORIGINAL').AsCurrency   := 0;
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime := 0;
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('DTA_ORIGINAL').AsDateTime   := 0;
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('ID_FISCAL').AsInteger       := 0;
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('ORIGEM').AsInteger          := 2;
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('ID_FORMA_PAG').AsInteger    := 0;
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('PRE_CONTA').AsInteger       := 0;
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('PRE_CHEQUE').AsString       := '0';
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('PRE_BANCO').AsString        := '';
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('PRE_EMITENTE').AsString     := '';
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('PRE_AGENCIA').AsString      := '';
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('TIPO_LANCAMENTO').AsInteger := 0;
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('ID_LOCAL_TITULO').AsInteger := 0;
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('ID_PLANO').AsString         := '';
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('per_multa').AsFloat         := 0;
  dmGeral.BUS_CD_M_PAG_TIT.FieldByName('per_juros').AsFloat         := 0;

  dmGeral.BusCodigoRevListMestre(true,false,'FIN_FM_M_PAG',xCodLme,xRevLme,dmGeral.BUS_CD_M_PAG_TIT);
end;


function  FatExisteFinBxaNfe(cdsPai,cdsTitulos: TClientDataSet):Boolean;
var
  xMensErro:string;
begin
  //xMensErro:='';

  result := false;

  dmGeral.BusCondPgto(0,cdsPai.FieldByName('id_condicao_pag').AsString);

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger in [0,1] then  // A vista ou a prazo
     begin
        dmGeral.FIN_CD_M_PAG.Close;
        dmGeral.FIN_CD_M_PAG.Data :=
        dmGeral.FIN_CD_M_PAG.DataRequest(
              VarArrayOf([91, cdsPai.FieldByName('id_fiscal').AsString]));
        if not dmGeral.FIN_CD_M_PAG.IsEmpty then
           begin
             result := true;
             //xMensErro := 'Nota fiscal com títulos baixados.';
           end;

        {if (exibi_msg='S') and (result = true) then
            begin
              Showmessage(xMensErro);
            end;}
     end;
  dmGeral.BUS_CD_C_CPG.Close;
end;

procedure PagModificaVlrParcela(Sender: TField);
begin

  try
   dmGeral.FIN_CD_M_PAGVLR_SALDO.ReadOnly  := false;

  //Verificar esta rotina quando o valor do saldo for diferente do valor da parcela -- Com pagamento Parcial
  dmGeral.FIN_CD_M_PAG.FieldByName('vlr_original').AsCurrency:=
    dmGeral.FIN_CD_M_PAG.FieldByName('vlr_parcela').AsCurrency;
  dmGeral.FIN_CD_M_PAG.FieldByName('vlr_saldo').AsCurrency:=
    dmGeral.FIN_CD_M_PAG.FieldByName('vlr_parcela').AsCurrency;
  finally
     dmGeral.FIN_CD_M_PAGVLR_SALDO.ReadOnly  := true;
  end;

end;


function FinPermiteAltPag: integer;
var
  xMensErro:string;
begin
  xMensErro:='';

  // 0 - Não permite alterar o título
  // 1 - Permite alterar apenas a data de vencimento
  // 2 - Não permite alterar o campo ID_FORNECEDOR e NUM_PARCELA
  // 3 - Não permite alterar ID_FORNECEDOR, NUM_PARCELA,FORMA PAGAMENTO,DTA_EMISSAO
         //DTA_VENCIMENTO,DTA_PREVBAIXA
  // 4 - Permite alterar apenas a data de vencimento, previsao de baixa e valor saldo


  if (dmGeral.FIN_CD_M_PAG.FieldByName('tipo_lancamento').AsInteger in [0,1]) and
     (dmGeral.FIN_CD_M_PAG.FieldByName('vlr_saldo').AsCurrency = 0) then
      begin
        result := 0;
        xMensErro:= xMensErro + '.Título já foi quitado'+ #13;
      end;

  if (dmGeral.FIN_CD_M_PAG.FieldByName('tipo_lancamento').AsInteger = 1) and
     (dmGeral.FIN_CD_M_PAG.FieldByName('vlr_saldo').AsCurrency > 0) then
      begin
        Result := 1;
      end;

  //Para atender Teresina agricola.Resp:Luan.Data:06/09/2017
  if (dmGeral.FIN_CD_M_PAG.FieldByName('tipo_lancamento').AsInteger = 1) and
     (dmGeral.FIN_CD_M_PAG.FieldByName('origem').AsInteger <> 0) and //Não pode ser originada de nota
     (dmGeral.FIN_CD_M_PAG.FieldByName('vlr_parcela').AsCurrency =
      dmGeral.FIN_CD_M_PAG.FieldByName('vlr_saldo').AsCurrency) then
      begin
        Result := 4;
      end;

  if (dmGeral.FIN_CD_M_PAG.FieldByName('tipo_lancamento').AsInteger = 0) and
     (dmGeral.FIN_CD_M_PAG.FieldByName('vlr_parcela').AsCurrency =
      dmGeral.FIN_CD_M_PAG.FieldByName('vlr_saldo').AsCurrency) then
      begin
        Result := 2;
      end;

  if (dmGeral.FIN_CD_M_PAG.FieldByName('tipo_lancamento').AsInteger = 0) and
     ((dmGeral.FIN_CD_M_PAG.FieldByName('vlr_saldo').AsCurrency > 0) and
      (dmGeral.FIN_CD_M_PAG.FieldByName('vlr_saldo').AsCurrency <
       dmGeral.FIN_CD_M_PAG.FieldByName('vlr_parcela').AsCurrency)) then
      begin
        Result := 1;
      end;

   if (dmGeral.FIN_CD_M_PAG.FieldByName('origem').AsInteger = 5) and
      (dmGeral.FIN_CD_M_PAG.FieldByName('tipo_lancamento').AsInteger = 0) and
      (dmGeral.FIN_CD_M_PAG.FieldByName('vlr_parcela').AsCurrency =
      dmGeral.FIN_CD_M_PAG.FieldByName('vlr_saldo').AsCurrency) then
      begin
        Result := 3;
      end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;


function  FinPermiteExcPag: Boolean;
var
  xMensErro: String;
begin

  result := true;
  xMensErro := '';

  if (dmGeral.FIN_CD_M_PAG.FieldByName('tipo_lancamento').AsInteger = 0) and
     (dmGeral.FIN_CD_M_PAG.FieldByName('vlr_saldo').AsCurrency <
      dmGeral.FIN_CD_M_PAG.FieldByName('vlr_parcela').AsCurrency) then
      begin
        result    := false;
        xMensErro := xMensErro + '.Título já movimentado.'+ #13;
      end;

  if (dmGeral.FIN_CD_M_PAG.FieldByName('tipo_lancamento').AsInteger = 1)  then
      begin
        Result := false;
        xMensErro := xMensErro + '.Título gerado automaticamente.'+ #13;
      end;

  if xMensErro <> '' then
     raise Exception.Create('Título não pode ser excluído.' + #13 + xMensErro);
end;


procedure FIN_CD_M_PAGdta_originalChange;
begin
  dmGeral.FIN_CD_M_PAG.FieldByName('dta_vencimento').AsDateTime :=
          dmGeral.FIN_CD_M_PAG.FieldByName('dta_original').AsDateTime;
end;

end.



