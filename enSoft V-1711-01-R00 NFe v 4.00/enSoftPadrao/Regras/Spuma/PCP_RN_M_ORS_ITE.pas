unit PCP_RN_M_ORS_ITE;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

///procedure PcpValidaOrsIte(DataSet:TDataSet);
procedure pcpCalcTotalItem;
procedure PcpNovoOrsIte(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy;


procedure PcpNovoOrsIte(DataSet: TDataSet);
 var
  SMPrincipal: TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.PCP_CD_M_ORS_ITE.FieldByName('ID_ORS_ITE').AsInteger :=
       SMPrincipal.enValorChave('PCP_TB_M_ORS_ITE');
  finally
    FreeAndNil(SMPrincipal);
  end;
end;


procedure pcpCalcTotalItem;
begin
  dmGeral.PCP_CD_M_ORS_ITE.FieldByName('VLR_TOTAL').AsCurrency:=
   (dmGeral.PCP_CD_M_ORS_ITE.FieldByName('QTDE').AsFloat*
    dmGeral.PCP_CD_M_ORS_ITE.FieldByName('VLR_UNITARIO').AsCurrency);
end;

end.
