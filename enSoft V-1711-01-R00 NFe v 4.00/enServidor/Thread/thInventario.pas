unit thInventario;

interface

uses
  System.Classes,System.SysUtils,Data.SqlExpr,System.DateUtils,Vcl.Forms;

type
  Inventario = class(TThread)
  private
    { Private declarations }
    procedure FazerInventario;
    procedure GerarSqlTxt(texto: String);
  protected
    procedure Execute; override;
  end;

implementation

uses enSM, uServer, enConstantes;


procedure Inventario.GerarSqlTxt(texto: String);
var
  Arquivo: TextFile;
  txt,tempo,data: String;
begin
   { TODO -oMaxsuel -cCriação :
     Criado por Maxsuel Victor - Em 27/05/2017
     Para gerar o txt do select de SQLDataSet }


   tempo := FormatDateTime('HH:MM:SS',time);
   tempo := StringReplace(tempo,':','-',[rfReplaceAll]);

   data := FormatDateTime('DD/MM/YYYY',date);
   data := StringReplace(data,'/','_',[rfReplaceAll]);


   if not (DirectoryExists(ExtractFilePath(Application.ExeName)+'logs')) then
      ForceDirectories(ExtractFilePath(Application.ExeName)+'logs');

   txt := ExtractFilePath(Application.ExeName)+'logs\Inventario_'+data+'.txt';

   AssignFile(Arquivo,txt);

   if not (FileExists(txt)) then
      Rewrite(Arquivo) //abre o arquivo para escrita
   else
      append(Arquivo);
   Writeln(Arquivo,texto);
   Closefile(Arquivo); //fecha o handle de arquivo
end;



procedure Inventario.FazerInventario;
var
  sm: TSM;
  Qry: TSQLQuery;
  DataInvAtras, DataAtual, DataFinal: TDateTime;
  AnoIni,MesIni,DiaIni: Word;
  AnoFin,MesFin,DiaFin: Word;
  AnoAnt, MesAnt: Word;
  Hor,Min,Sec,MSec: Word;
begin

  DataAtual := Now;
  DecodeDate(DataAtual,AnoIni,MesIni,DiaIni);

  DataFinal :=  EndOfTheMonth(DataAtual);
  DecodeDate(DataFinal,AnoFin,MesFin,DiaFin);

  DecodeTime(DataAtual,Hor,Min,Sec,MSec);

  //CMServerForm.lblDadosInv.Caption := ' Não foi encontrado nenhum inventário até este dia.';
  try
    sm  := TSM.Create(nil);
    qry := TSqlQuery.Create(nil);
    qry.SQLConnection := SM.conexao;

    qry.Close;
    qry.SQL.Clear;
    qry.SQL.add(' select max(dta_inventario) as dta_inventario from est_tb_m_inv inv ');
    qry.Open;
    if not qry.IsEmpty then
       begin
          CMServerForm.lblDadosInv.Caption := ' Data do último inventário: ' + qry.FieldByName('dta_inventario').AsString;
       end;
    qry.Close;



    if (DiaIni = DiaFin) and (Hor > 19) then
       begin
          GerarSqlTxt('Entrou na rotina do inventário, data/hora: ' + DateToStr(DataAtual) );

          qry.Close;
          qry.SQL.Clear;
          qry.SQL.add(' select * from est_tb_m_inv inv ' +
                      ' where inv.dta_inventario =  ''' + FormatDateTime(CFormatoData, DataFinal) +''' ');
          qry.Open;
          if qry.IsEmpty then
             begin
               qry.Close;
               qry.SQL.Clear;
               qry.SQL.Add(
                   ' insert into est_tb_m_inv (id_empresa,dta_inventario,id_item,id_cor,id_tamanho,qtde,custo) ' +
                   '     select fes.id_empresa, current_date, fes.id_item,fes.id_cor,fes.id_tamanho,fes.saldo_fisico, ' +
                   '            coalesce(fes.vlr_custo_medio,0) from est_tb_m_fes fes ');
               qry.ExecSQL;

               GerarSqlTxt('Inventário normal gerado, data/hora: ' + DateToStr(DataAtual) );
             end;
       end
    else
       begin
         if MesFin = 01 then
            begin
              AnoAnt := AnoFin - 1;
              MesAnt := 12
            end
         else
            begin
               AnoAnt :=  AnoFin;
               MesAnt :=  MesFin - 1;
            end;
        DataInvAtras :=  EndOfAMonth(AnoAnt, MesAnt);

        qry.Close;
        qry.SQL.Clear;
        qry.SQL.add(' select * from est_tb_m_inv inv ' +
                ' where inv.dta_inventario =  ''' + FormatDateTime(CFormatoData, DataInvAtras) +''' ');
        qry.Open;
        if qry.IsEmpty then
           begin
             qry.Close;
             qry.SQL.Clear;
             qry.SQL.Add(
                 ' insert into est_tb_m_inv (id_empresa,dta_inventario,id_item,id_cor,id_tamanho,qtde,custo) ' +
                 '     select fes.id_empresa, ''' + FormatDateTime(CFormatoData, DataInvAtras) +''', fes.id_item,fes.id_cor,fes.id_tamanho,fes.saldo_fisico, ' +
                 '            coalesce(fes.vlr_custo_medio,0) from est_tb_m_fes fes ');
             qry.ExecSQL;
             GerarSqlTxt('Inventário anterior('+ DateToStr(DataInvAtras) +') gerado, data/hora: ' + DateToStr(DataAtual) );
           end;
       end;
  finally
    FreeAndNil(qry);
    FreeAndNil(sm);
  end;
end;


{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure Inventario.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; 
    
    or 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Updated in thread via an anonymous method' 
      end
      )
    );
    
  where an anonymous method is passed.
  
  Similarly, the developer can call the Queue method with similar parameters as 
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.
    
}

{ Inventario }

procedure Inventario.Execute;
begin
  { Place thread code here }
  { while (not Terminated) do
      begin
       sleep(strtoint(CMServerForm.txtTempInv.Text)); }
       Synchronize(FazerInventario);
    // end;
end;

end.
