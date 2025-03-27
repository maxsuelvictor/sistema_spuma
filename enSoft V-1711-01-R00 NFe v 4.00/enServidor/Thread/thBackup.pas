unit thBackup;

interface

uses
   Winapi.Windows,System.Classes,System.SysUtils,Vcl.Forms,Vcl.Dialogs,System.IniFiles,ShellAPI;

type
  BackupBanco = class(TThread)

  public
   // constructor Create(CreateSuspended:Boolean;horario:String);

  private
    { Private declarations }
    procedure EfetuarBackup;
    var
      horario_backup_seg:Integer;
      fazer_bck:Boolean;
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

procedure BackupBanco.EfetuarBackup;
Var
  Rede:TInifile;
  porta,ip,banco,programa,diretorio,arquivo:String;
  empresa: String;
begin
  If not FileExists(ExtractFilePath(Application.ExeName)+'Rede.Ini') or
     not FileExists(ExtractFilePath(Application.ExeName)+'pg_dump.exe') or
     not FileExists(ExtractFilePath(Application.ExeName)+'libiconv-2.dll') or
     not FileExists(ExtractFilePath(Application.ExeName)+'libintl-8.dll') or
     not FileExists(ExtractFilePath(Application.ExeName)+'libpq.dll') then
     begin
       exit;
     end;

  try
    Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Rede.Ini');

    porta := Rede.ReadString('DEFINICAO_DE_DATABASE','BKP_PORTA_BANCO','');
    banco := Rede.ReadString('DEFINICAO_DE_DATABASE','BANCO','');
    ip    := Rede.ReadString('DEFINICAO_DE_DATABASE','HOST','');
    diretorio := trim(Rede.ReadString('DEFINICAO_DE_DATABASE','DIRETORIO_BACKUP',''));

    if diretorio='' then
      diretorio := ExtractFilePath(Application.ExeName)+ 'Backup';

    if not DirectoryExists(diretorio) then
     begin
        ForceDirectories(diretorio);
     end;


  finally
    FreeAndNIl(Rede);
  end;

  try
   if copy(diretorio,Length(diretorio),1)<>'\' then
     diretorio := diretorio+'\';
   //arquivo :='backup_'+formatdatetime('dd-mm-yyyy',now);

   empresa := banco;
   if banco = 'enSoftData' then
      empresa := 'emp1';

   if banco = 'enSoftDataF' then
      empresa := 'emp2';


   arquivo := empresa + '_'+formatdatetime('dd-mm-yyyy',now)+'.backup';
   programa := ExtractFilePath(Application.ExeName)+ 'pg_dump.exe';


   if (porta<>'') and (banco<>'') and (ip<>'') and (diretorio<>'') and (arquivo <>'') and (programa <> '') then
     ShellExecute( handle, 'open', pchar(programa),
            pchar('--host '+ ip +' --port '+ porta +' --username "postgres"  --role "postgres" --no-password  --format c  --blobs --verbose --file "'+diretorio+arquivo+'" "'+banco+'" '), '', SW_NORMAL);


   {if (porta<>'') and (banco<>'') and (ip<>'') and (diretorio<>'') and (arquivo <>'') and (programa <> '') then
     ShellExecute( handle, 'open', pchar(programa),
            pchar('--host '+ ip +' --port '+ porta +' --username "postgres" --format c --verbose --file "'+diretorio+arquivo+'" "'+banco+'" '), '', SW_HIDE);}


  finally

  end;

end;


{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure BackupBanco.UpdateCaption;
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

{ BackupBanco }

procedure BackupBanco.Execute;
var
  agora:TDateTime;
  tempo_espera,atraso_seg:Integer;
  horario_atual_seg:Integer;
  Hor,Min,Sec,MSec: Word;
begin
  inherited;
  {atraso_seg := 600;

  while (not Terminated) do
     begin
       //Backup do banco

       if (fazer_bck = false) then
         begin
           agora := now;
           DecodeTime(agora,Hor,Min,Sec,MSec);
           horario_atual_seg := hor*3600+min*60+sec;
           if horario_atual_seg <= horario_backup_seg then
               tempo_espera := horario_backup_seg - horario_atual_seg
           else
              tempo_espera := (86400-horario_atual_seg) +horario_backup_seg;

           tempo_espera := (tempo_espera+atraso_seg)*1000;

           sleep(tempo_espera);
         end
       else
         begin
           fazer_bck := false;
         end;
       Synchronize(EfetuarBackup);
     end;  }

   if not Terminated then
      Synchronize(EfetuarBackup);

end;

end.
