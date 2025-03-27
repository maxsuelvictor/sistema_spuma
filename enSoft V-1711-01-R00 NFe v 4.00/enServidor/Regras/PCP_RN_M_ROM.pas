{ TODO -oMaxsuel -cInclusão : Unit criado em 23/02/2016 }
unit PCP_RN_M_ROM;

interface

uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,
     Datasnap.DBClient,Datasnap.Provider,enSM,Data.DBXCommon,Data.SqlExpr, uServer;

function enSgqVefPedRom(id_pedido: string; Conn: TSQLConnection): Integer;
function enSgqPcpVerifEtqRomPed(IdEmpresa,IdPedido,CodBarra: String; Conn: TSQLConnection): string;

var
  xConn: TSQLConnection;
implementation

function enSgqVefPedRom(id_pedido: string;Conn: TSQLConnection): Integer;
var
  qry:TSqlQuery;
begin
   try
     xConn := Conn;

     result := 0;

     qry := TSqlQuery.Create(nil);
     qry.SQLConnection:=xConn;

     qry.Close;
     qry.SQL.Clear;
     qry.SQL.Add('select * from pcp_tb_m_rom_ped rom where id_pedido = ''' + id_pedido + ''' ');
     qry.Open;
     if not qry.IsEmpty then
        begin
          result := qry.FieldByName('ID_ROM').AsInteger;
        end;
     qry.close;
   finally
     qry.Destroy();

   end;
end;

function enSgqPcpVerifEtqRomPed(IdEmpresa,IdPedido,CodBarra: String; Conn: TSQLConnection):string;
var
  qry:TSqlQuery;
begin
   try
     xConn := Conn;

     result := '';

     qry := TSqlQuery.Create(nil);
     qry.SQLConnection:=xConn;

     { TODO -oMaxsuel -ccriação : Esse código ficará aqui devido os movimento anteriores na tabela PED_ICF. }
     qry.Close;
     qry.SQL.Clear;
     qry.SQL.Add(' select * from pcp_tb_m_rom_ped_icf icf ' +
                 '    left outer join pcp_tb_m_rom rom on rom.id_rom = icf.id_rom ' +
                 ' where rom.id_empresa = ''' + IdEmpresa + ''' ' +
                 '   and  icf.id_pedido <> ''' + IdPedido + ''' ' +
                 '   and  icf.cod_barra = ''' + CodBarra + ''' ');
     qry.Open;
     if not qry.IsEmpty then
        begin
          result := 'Romaneio: ' + qry.FieldByName('id_rom').AsString + #13 +
                    'Pedido: ' + qry.FieldByName('id_pedido').AsString;
        end;
     qry.close;
     /// ----------------------------------------------------------------------

     qry.SQL.Clear;
     qry.SQL.Add(' select * from pcp_tb_m_rom_icf icf ' +
                 '    left outer join pcp_tb_m_rom rom on rom.id_rom = icf.id_rom ' +
                 ' where rom.id_empresa = ''' + IdEmpresa + ''' ' +
               //  '   and  icf.id_pedido <> ''' + IdPedido + ''' ' +
                 '   and  icf.cod_barra = ''' + CodBarra + ''' ');
     qry.Open;
     if not qry.IsEmpty then
        begin
          result := 'Romaneio: ' + qry.FieldByName('id_rom').AsString + #13;

        end;
   finally
     qry.Destroy();
   end;
end;

end.
