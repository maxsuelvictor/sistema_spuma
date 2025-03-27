unit CAD_RN_C_LOC;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure CtcNovoLoc(DataSet: TDataSet);
procedure CtcValidaLoc(DataSet:TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy, uDmCtc;

procedure CtcNovoLoc(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmCtc.CTC_CD_M_LOC.FieldByName('ID_LOC').AsInteger :=
         SMPrincipal.enValorChave('CTC_TB_M_LOC');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmCtc.CTC_CD_M_LOC.FieldByName('dta_locacao').AsDateTime := xDataSis;
end;

procedure CtcValidaLoc(DataSet:TDataSet);
begin

end;
end.
