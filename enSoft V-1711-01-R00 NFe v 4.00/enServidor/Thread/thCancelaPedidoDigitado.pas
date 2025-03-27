unit thCancelaPedidoDigitado;

interface

uses
   Winapi.Windows,System.Classes,System.SysUtils,Vcl.Forms,Vcl.Dialogs,System.IniFiles,ShellAPI,
   Data.SqlExpr,enSM;

type
  CancPedDigitado = class(TThread)

  public
   // constructor Create(CreateSuspended:Boolean;horario:String);
   var
     sm: TSM;
  private
    { Private declarations }
    procedure CancelarPedDigitado;
  protected
    procedure Execute; override;

  end;

implementation

{constructor BackupBanco.Create(CreateSuspended:Boolean;horario:String);
var
   Hor,Min,Sec,MSec: Word;
begin
  inherited Create(CreateSuspended);
  if not FileExists(ExtractFilePath(Application.ExeName)+'Backup\'+'backup_'+formatdatetime('dd-mm-yyyy',now)) then
    begin
      fazer_bck := true;
    end
  else
    begin
       fazer_bck := false;
    end;

  DecodeTime(StrToTime(horario),hor,min,sec,msec);
  horario_backup_seg :=  hor*3600+min*60+sec;
end; }



procedure CancPedDigitado.CancelarPedDigitado;
var
  Qry, Qry2: TSQLQuery;
  Arquivo: TextFile;
  txt, txtAnterior,tempo,data: String;
  dataOntem: String;
  qtde_dias_cancec_autom_ped: integer;
begin

   // Inserido em 11/12/2024, Maxsuel Victor
    // Cancela todos os pedido que estão em situação DIGITADO esperando por aprovação ainda
       // e sendo pedido com mais de 65 dias de criação.

   try

     dataOntem := formatdatetime('dd-mm-yyyy',now-1);
     data      := formatdatetime('dd-mm-yyyy',now);

     txtAnterior := ExtractFilePath(Application.ExeName)+'logs\'+dataOntem+'.txt';

     txt := ExtractFilePath(Application.ExeName)+'logs\'+data+'.txt';


     if (FileExists(txtAnterior)) then
        begin
          DeleteFile(txtAnterior);
        end;

     AssignFile(Arquivo,txt);

     if not (FileExists(txt)) then
        begin
          qry := TSqlQuery.Create(nil);
          qry.SQLConnection := SM.conexao;

          // Criado por Maxsuel Victor, em 12/03/25
          // Qtde dias para poder cancelar os pedidos de venda em situação DIGITADO
          qtde_dias_cancec_autom_ped := 0;

          qry2 := TSqlQuery.Create(nil);
          qry2.SQLConnection := SM.conexao;

          qry2.Close;
          qry2.SQL.Clear;
          qry2.SQL.Add('select coalesce(fat_qtde_dias_canc_ped_autom,0) as fat_qtde_dias_canc_ped_autom from cad_tb_c_par_ctr ');
          qry2.Open;
          if not qry2.IsEmpty then
             qtde_dias_cancec_autom_ped := qry2.FieldByName('fat_qtde_dias_canc_ped_autom').AsInteger;

          qry2.Close;
          // ------------------------------

          if qtde_dias_cancec_autom_ped > 0 then
             begin
               Rewrite(Arquivo); //abre o arquivo para escrita
               Closefile(Arquivo); //Fecha o arquivo

               qry.Close;
               qry.SQL.Clear;
               qry.SQL.Add(
                            ' update fat_tb_m_ped ' + #13#10 +
                            '   set can_motivo = ''Canc. automático: Pedido DIGITADO passou dos 65 dias de criado.'' ,' + #13#10 +
                            '       situacao = ''4'',' + #13#10 +
                            '       can_usuario = 1,' + #13#10 +
                            '       can_data = CURRENT_DATE,' + #13#10 +
                            '       can_hora = cast(SUBSTRING(CURRENT_TIME::TEXT FROM 1 FOR 8) as time)' + #13#10 +
                            ' where fat_tb_m_ped.id_pedido in ' + #13#10 +
                            '  (         ' + #13#10 +
                            ' select id_pedido from fat_tb_m_ped ped ' + #13#10 +
                            '   left outer join cad_tb_c_cpg cpg on cpg.id_condicao_pag = ped.id_condicao_pag ' +
                            '   where situacao = 0 and situacao_aprovacao = 0 and cpg.tipo_pagamento <> 2 ' + #13#10 +
                            ' group by id_pedido, dta_pedido' + #13#10 +
                            ' having CURRENT_DATE - dta_pedido > ''' + inttostr(qtde_dias_cancec_autom_ped) + ''' ' + #13#10 +
                            ' order by dta_pedido desc' + #13#10 +
                            ' )');
               qry.ExecSQL;
             end;
        end;

  finally
    FreeAndNil(qry);
    FreeAndNil(qry2);
    FreeAndNil(sm);
  end;
end;

{ Cancelamento de Pedidos em situação DIGITADO }

procedure CancPedDigitado.Execute;
begin
  inherited;
  if not Terminated then
     Synchronize(CancelarPedDigitado);
end;

end.
