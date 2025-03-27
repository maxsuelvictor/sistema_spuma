unit uCancelUpdates;

interface

uses
 Vcl.Controls , Datasnap.DbClient;

Type
 TCancelUpdates = class
 private
   class function StrTexto(const SubStr, cExcpetion: ShortString):string;
 public
    class procedure CancelUpdates(FColectionsCds: array of TClientDataSet;
                                 cExcpetion:String);
 end;

implementation

uses
System.Classes , System.StrUtils ,System.SysUtils,Winapi.Windows,
uResourceString, dialogs;

{ TCancelUpdates }

class procedure TCancelUpdates.CancelUpdates(FColectionsCds: array of TClientDataSet;
  cExcpetion: String);
var
i:integer;

provider:String;
begin
  Provider:=  TCancelUpdates.StrTexto(uResourceString.PrefixoErro,cExcpetion);

   for i:=0 to high(FColectionsCds) do
      if FColectionsCds[i].ProviderName = Provider then
         if MessageDlg('Deseja Restaurar a base de dados para o Estágio Inicial ?',
                    mtConfirmation,mbYesNo,0) = mrYes then
           begin
             FColectionsCds[i].CancelUpdates;
             MessageBeep(MB_ICONMASK);
             Showmessage('Restauração Bem Sucedida ');
           end;

end;

class function TCancelUpdates.StrTexto(const SubStr,
  cExcpetion: ShortString): string;
var
posini,posFim:Integer;
begin
  //ATENÇAÔ *** A String 'Erro no' DEve ser uma
  posini:=Pos(SubStr,cExcpetion)+
          length(uResourceString.PrefixoErro);
  posfim:=Posex(sLineBreak,cExcpetion,posini+1)+1;
  result:= copy(cExcpetion,posini,posFim+1 - posini);
  result:=TrimRight(result);
end;


end.
