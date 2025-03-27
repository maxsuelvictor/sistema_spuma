unit CAD_RN_C_CAD;

interface

uses Classes,
     DBXCommon, SysUtils, Dialogs, enSM,DBClient, Data.DB, Datasnap.Provider,System.Variants,
     Data.SqlExpr;

// CAD_TB_C_CLI
function CadNovoSldLimCli(IdEmpresa,IdCliente,IdFormaPag: String; VlrLimiteCli:Currency;Conn: TSQLConnection): Currency;

implementation

uses uServer;

function CadNovoSldLimCli(IdEmpresa,IdCliente,IdFormaPag: String; VlrLimiteCli:Currency; Conn: TSQLConnection ): Currency;
var
  qry: TSqlQuery;
  VlrSaldoUti: currency;
  sql:String;
begin

     { TODO -oMaxsuel -cCriação :
       Método criado em 21/05/2015.
       Este método tem a função de atualizar o saldo limite de crédito do cliente. }

    result      := 0;
    VlrSaldoUti := 0;

    qry := TSqlQuery.Create(nil);
    qry.SQLConnection :=  Conn;

    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add(' SELECT ped_ver_limite  from CAD_TB_C_PAR_CTR CTR' +
                ' where ctr.id_empresa =''' + VarToStr(IdEmpresa) +''' ');
    qry.Open;

    if qry.FieldByName('ped_ver_limite').AsBoolean then
       begin
         qry.Close;
         qry.SQL.Clear;

         sql :=  ' SELECT SUM(coalesce(vlr_saldo,0)) as vlr_saldo from fin_tb_m_rec rec' +
                      ' where rec.id_cliente =''' + VarToStr(IdCliente) +''' ';

         if ((IdFormaPag<>'') and (IdFormaPag<>'0')) then
           sql := sql + ' and rec.id_forma_pag='''+VarToStr(IdFormaPag)+''' ';

         sql := sql + ' and rec.vlr_saldo > 0 ' +
                      ' group by id_cliente';

         qry.SQL.Add(sql);
         qry.Open;

         if not qry.IsEmpty then
            begin
              VlrSaldoUti := qry.FieldByName('VLR_SALDO').AsCurrency;
            end;
         qry.close;

         result := VlrLimiteCli - VlrSaldoUti;
       end;
end;
end.
