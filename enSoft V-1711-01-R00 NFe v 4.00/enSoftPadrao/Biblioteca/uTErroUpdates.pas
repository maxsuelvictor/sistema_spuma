unit uTErroUpdates;

interface

uses
 Vcl.Controls , Datasnap.DbClient ;

Type

  TErroUpdates  = Class
  public
    class Var RecNo:Integer;
    Class Var Provider:String;
    Class Var CdsErro:TClientDataSet;
    class procedure Execute(FColectionsCds: array of TClientDataSet;
                            cExcpetion:String);
    private
      class function StrTexto(const SubStr, cExcpetion: ShortString):string;
  End;



implementation

uses
System.Classes , System.StrUtils ,System.SysUtils,Winapi.Windows,
uResourceString, dialogs;


{ TInformacoesErro }

class procedure TErroUpdates.Execute(
  FColectionsCds: array of TClientDataSet; cExcpetion: String);
var
i:integer;
begin
Provider:=StrTexto(uResourceString.PrefixoErro,cExcpetion);
RecNo:=StrToInt(StrTexto(uResourceString.PosErro,cExcpetion));

for i:=0 to high(FColectionsCds) do
  if FColectionsCds[i].ProviderName = Provider then
    CdsErro:=FColectionsCds[i];
end;

class function TErroUpdates.StrTexto(const SubStr,
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

{
        if MessageDlg('Deseja Restaurar a base de dados para o Estágio Inicial ?',
                    mtConfirmation,mbYesNo,0) = mrYes then
           begin
             FColectionsCds[i].CancelUpdates;
             MessageBeep(MB_ICONMASK);
             Showmessage('Restauração Bem Sucedida ');
           end;

