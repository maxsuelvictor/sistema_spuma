unit enFunc;

interface

uses  Data.DB, SysUtils,StrUtils,Printers,WinSpool,forms,stdctrls,Classes,
        System.Variants,Vcl.Dialogs,DateUtils, System.UITypes, Vcl.Controls,
        IdSMTP, IdMessage,   IdSSLOpenSSL, windows, IdIOHandler,System.Math;


Type
   TEnorth = class
    public
      class function NomeComputador(): string;


end;

function Dc_MessageDlgCheck(Msg: string; AType: TMsgDlgType; AButtons:
         TMsgDlgButtons;
         IndiceHelp: LongInt; DefButton: TMOdalResult; Portugues: Boolean; Checar:
         Boolean; MsgCheck: string; Funcao: TProcedure): Word;

implementation

uses uDmGeral;




class function TEnorth.NomeComputador(): string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;



function Dc_MessageDlgCheck(Msg: string; AType: TMsgDlgType; AButtons:
         TMsgDlgButtons;
         IndiceHelp: LongInt; DefButton: TMOdalResult; Portugues: Boolean; Checar:
         Boolean; MsgCheck: string; Funcao: TProcedure): Word;
var
  I: Integer;
  Mensagem: TForm;
  Check: TCheckBox;
begin
  Check := nil;
  Mensagem := CreateMessageDialog(Msg, AType, Abuttons);
  Mensagem.HelpContext := IndiceHelp;
  with Mensagem do
  begin
    for i := 0 to ComponentCount - 1 do
    begin
      if (Components[i] is TButton) then
      begin
        if (TButton(Components[i]).ModalResult = DefButton) then
        begin
          ActiveControl := TWincontrol(Components[i]);
        end;
      end;
    end;
    if Portugues then
    begin
      if Atype = mtConfirmation then
        Caption := 'Confirmação'
      else if AType = mtWarning then
        Caption := 'Aviso'
      else if AType = mtError then
        Caption := 'Erro'
      else if AType = mtInformation then
        Caption := 'Informação';
    end;
  end;
  if Portugues then
  begin
    TButton(Mensagem.FindComponent('YES')).Caption := '&Sim';
    TButton(Mensagem.FindComponent('NO')).Caption := '&Não';
    TButton(Mensagem.FindComponent('CANCEL')).Caption := '&Cancelar';
    TButton(Mensagem.FindComponent('ABORT')).Caption := '&Abortar';
    TButton(Mensagem.FindComponent('RETRY')).Caption := '&Repetir';
    TButton(Mensagem.FindComponent('IGNORE')).Caption := '&Ignorar';
    TButton(Mensagem.FindComponent('ALL')).Caption := '&Todos';
    TButton(Mensagem.FindComponent('HELP')).Caption := 'A&juda';
  end;
  if Checar then
  begin
    Mensagem.ClientHeight := Mensagem.ClientHeight + 20;
    Check := TCheckBox.Create(Mensagem);
    Check.Parent := Mensagem;
    Check.Left := 15;
    Check.Top := Mensagem.ClientHeight - 20;
    Check.Visible := True;
    Check.Caption := MsgCheck;
    Check.Width := Mensagem.ClientWidth - 10;
  end;
  Result := Mensagem.ShowModal;
  if Check <> nil then
    if Check.Checked then
      Funcao;
  Mensagem.Free;
end;



end.
