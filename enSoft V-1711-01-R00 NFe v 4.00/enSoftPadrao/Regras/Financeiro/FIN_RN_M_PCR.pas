unit FIN_RN_M_PCR;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure FinValidaPcr(DataSet:TDataSet);
procedure FinMascaraPcr(DataSet:TDataSet);
procedure FinNovoPcr(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy;


procedure FinValidaPcr(DataSet:TDataSet);
Var
xMensErro:string;
begin
  xMensErro:='';

  if (dmGeral.FIN_CD_M_PCR.FieldByName('id_fornecedor').IsNull) or
     (dmGeral.FIN_CD_M_PCR.FieldByName('id_fornecedor').AsString='') then
     begin
       xMensErro:= xMensErro + '.Fornecedor deve ser informado.'+ #13;
     end;

  if (dmGeral.FIN_CD_M_PCR.FieldByName('historico').IsNull) or
     (dmGeral.FIN_CD_M_PCR.FieldByName('historico').AsString='') then
     begin
       xMensErro:= xMensErro + '.Histórico deve ser informado.'+ #13;
     end;

   if (dmGeral.FIN_CD_M_PCR.FieldByName('vlr_credito').IsNull) or
     (dmGeral.FIN_CD_M_PCR.FieldByName('vlr_credito').AsString='') then
     begin
       xMensErro:= xMensErro + '.Valor Lançamento deve ser informado.'+ #13;
     end;

  if ((dmGeral.FIN_CD_M_PCR.FieldByName('vlr_credito').AsString <> '') and
      (dmGeral.FIN_CD_M_PCR.FieldByName('vlr_credito').AsCurrency <= 0))  then
     begin
       xMensErro:= xMensErro + '.Valor Lançamento deve ser maior que zero.'+ #13;
     end;

   if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);
end;
procedure FinMascaraPcr(DataSet:TDataSet);
begin
   dmGeral.FIN_CD_M_PCRvlr_credito.DisplayFormat  := CMascaraValor;
end;

procedure FinNovoPcr(DataSet: TDataSet);
var
  SMPrincipal: TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_PCR.fieldByName('id_credito').AsInteger:=
      SMPrincipal.enValorChave('FIN_TB_M_PCR');
  finally
    FreeAndNil(SMPrincipal);
  end;
  dmGeral.FIN_CD_M_PCR.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;
  dmGeral.FIN_CD_M_PCR.FieldByName('ORIGEM').AsInteger := 0;
  dmGeral.FIN_CD_M_PCR.FieldByName('NUM_DOCUMENTO').AsString   := '0';
  dmGeral.FIN_CD_M_PCR.FieldByName('VLR_SALDO').AsInteger       := 0;
  dmGeral.FIN_CD_M_PCR.FieldByName('dta_credito').AsDateTime := xDataSis;
  dmGeral.FIN_CD_M_PCR.FieldByName('deb_cre').AsInteger := 0;
  dmGeral.BusCodigoRevListMestre(true,false,'FIN_FM_M_PCR',xCodLme,xRevLme,dmGeral.FIN_CD_M_PCR);
end;

end.