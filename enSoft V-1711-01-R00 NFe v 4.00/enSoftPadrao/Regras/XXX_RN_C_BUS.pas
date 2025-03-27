unit XXX_RN_C_BUS;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

function buscaCidade(indx:integer;campo:string):TDataSet;
function buscaCliente(indx:integer;campo:string):TDataSet;


implementation
Uses uDmGeral,enConstantes, uProxy,uDmCtc;


function buscaCidade(indx:integer;campo:string):TDataSet;
begin
  dmGeral.BUS_CD_C_CID.Close;
  dmGeral.BUS_CD_C_CID.Data :=
  dmGeral.BUS_CD_C_CID.DataRequest(VarArrayOf([indx, campo]));
end;

function buscaCliente(indx:integer;campo:string):TDataSet;
begin
  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
  dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([Indx,campo]));
end;

end.
