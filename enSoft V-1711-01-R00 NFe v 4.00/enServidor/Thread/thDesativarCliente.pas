unit thDesativarCliente;

interface

uses
  System.Classes,System.IniFiles,System.Variants,System.SysUtils,Data.SqlExpr,Datasnap.DBClient,Vcl.Forms;

type
  DesativarCliente = class(TThread)
  public
    //constructor Create(CreateSuspended:Boolean;horario:String);
  private
    { Private declarations }
    procedure DesativarCliente;
    var
      horario_desativar_cli_seg:Integer;
  protected
    procedure Execute; override;
  end;

implementation

uses enSM;

{constructor DesativarCliente.Create(CreateSuspended:Boolean;horario:String);
var
   Hor,Min,Sec,MSec: Word;
begin
  inherited Create(CreateSuspended);
  DecodeTime(StrToTime(horario),hor,min,sec,msec);
  horario_desativar_cli_seg :=  hor*3600+min*60+sec;
end; }


procedure DesativarCliente.DesativarCliente;
var
  Rede:TInifile;
  sm: TSM;
  qryNfe:TSqlQuery;
  CAD_CD_C_CLI:TClientDataSet;
  dias:String;
begin

  try
    sm  := TSM.Create(nil);

    qryNfe := TSqlQuery.Create(nil);
    qryNfe.SQLConnection := SM.conexao;

    If not FileExists(ExtractFilePath(Application.ExeName)+'Rede.Ini') then
     begin
       exit;
     end;

    Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Rede.Ini');
    dias := Rede.ReadString('DESATIVAR_CLIENTE','DIAS_SEM_COMPRA','');


    if (dias <> '') and (StrToInt(dias)>0)  then
      begin
         CAD_CD_C_CLI := TClientDataSet.Create(nil);
         CAD_CD_C_CLI.SetProvider(sm.CAD_DP_C_CLI);
         CAD_CD_C_CLI.Close;
         CAD_CD_C_CLI.Data :=
          CAD_CD_C_CLI.DataRequest(VarArrayOf([7,'TRUE']));


         CAD_CD_C_CLI.First;
         while not CAD_CD_C_CLI.eof do
           begin
             qryNfe.Close;
             qryNfe.SQL.Clear;
             qryNfe.SQL.Add(' Select count(*) as qtde_nfe from FAT_TB_M_NFE nfe '+
                            ' left outer join cad_tb_c_cfo cfo on cfo.id_cfo=nfe.id_cfo  '+
                            ' where CFO.ID_CLASSE IN (''SP10'',''SP70'') and nfe.tipo_nf=''S'' and nfe.status=1 and nfe.faturada=true and '+
                            ' nfe.nfe_cod_sit not in (''02'',''04'',''05'') and '+
                            ' nfe.id_emitente='''+CAD_CD_C_CLI.FieldByName('id_cliente').AsString+''' and '+
                            ' nfe.DTA_EMISSAO<CURRENT_DATE AND nfe.DTA_EMISSAO>(CURRENT_DATE -'+dias+')  ');

             qryNfe.Open;

             if qryNfe.FieldByName('qtde_nfe').AsInteger=0 then
               begin
                CAD_CD_C_CLI.Edit;
                CAD_CD_C_CLI.FieldByName('ATIVO').AsBoolean := false;
                CAD_CD_C_CLI.Post;

               end;

             CAD_CD_C_CLI.Next;
           end;

      end;

    if CAD_CD_C_CLI <> nil then
        if CAD_CD_C_CLI.ChangeCount > 0 then
           CAD_CD_C_CLI.ApplyUpdates(0);


    qryNfe.Close;
  finally
    CAD_CD_C_CLI.Free;
    FreeAndNil(qryNfe);
    FreeAndNIl(Rede);
    FreeAndNil(sm);

  end;
end;




{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure DesativarCliente.UpdateCaption;
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

{ DesativarCliente }

procedure DesativarCliente.Execute;
var
  agora:TDateTime;
  tempo_espera,atraso_seg:Integer;
  horario_atual_seg:Integer;
  Hor,Min,Sec,MSec: Word;
begin
  { Place thread code here }

 { atraso_seg := 600;
  while (not Terminated) do
     begin
       agora := now;
       DecodeTime(agora,hor,min,sec,msec);
       horario_atual_seg := hor*3600+min*60+sec;
       if horario_atual_seg <= horario_desativar_cli_seg then
           tempo_espera := horario_desativar_cli_seg - horario_atual_seg
       else
          tempo_espera := (86400-horario_atual_seg) +horario_desativar_cli_seg;

       tempo_espera := (tempo_espera+atraso_seg)*1000;

       sleep(tempo_espera);

       Synchronize(DesativarCliente);
     end; }

  if not Terminated then
      Synchronize(DesativarCliente);

end;

end.
