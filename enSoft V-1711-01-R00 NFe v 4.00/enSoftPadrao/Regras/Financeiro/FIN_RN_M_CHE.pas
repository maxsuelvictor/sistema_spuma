unit FIN_RN_M_CHE;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure FinValidaChe(DataSet:TDataSet);
procedure FinMascaraChe(DataSet:TDataSet);
procedure FinNovoChe(DataSet: TDataSet);

implementation
Uses uDmGeral,enConstantes, uProxy;

procedure FinValidaChe(DataSet:TDataSet);
begin

end;

procedure FinMascaraChe(DataSet:TDataSet);
begin

end;

procedure FinNovoChe(DataSet: TDataSet);
begin
  dmGeral.BusCodigoRevListMestre(true,false,'FIN_FM_M_CHE',xCodLme,xRevLme,dmGeral.FIN_CD_M_CHE);
end;

end.
