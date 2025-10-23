unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdMessage, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, IdSSLOpenSSLHeaders, IdServerIOHandler;

type
  TForm1 = class(TForm)
    IdSMTP: TIdSMTP;
    IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage: TIdMessage;
    Button1: TButton;
    IdServerIOHandlerSSLOpenSSL1: TIdServerIOHandlerSSLOpenSSL;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TestarEnvioSMTP;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TestarEnvioSMTP;
end;

procedure TForm1.TestarEnvioSMTP;
var
  SMTP: TIdSMTP;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
  Msg: TIdMessage;
begin
  SMTP := TIdSMTP.Create(nil);
  SSL  := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  Msg  := TIdMessage.Create(nil);

  if not IdSSLOpenSSLHeaders.Load() then
     begin
       ShowMessage('Falha ao carregar OpenSSL');
       exit;
     end;

  try
    // Configura SSL/TLS
    SSL.Destination := 'smtp.hostinger.com:465';
    SSL.Host := 'smtp.hostinger.com';
    SSL.Port := 465;
    SSL.SSLOptions.Method := sslvTLSv1_2; // TLS moderno
    SSL.SSLOptions.Mode := sslmClient;

    // Configura SMTP
    SMTP.IOHandler := SSL;
    SMTP.Host := 'smtp.hostinger.com';
    SMTP.Port := 465;
    SMTP.Username := 'admin@cgloboapp.com.br';  // <-- coloque seu e-mail completo aqui
    SMTP.Password := '@Amm707#';         // <-- coloque sua senha correta
    SMTP.UseTLS := utUseImplicitTLS;            // SSL implícito (porta 465)
    SMTP.ConnectTimeout := 10000;

    // Monta mensagem de teste
    Msg.From.Address := 'admin@cgloboapp.com.br';   // remetente
    Msg.Recipients.EMailAddresses := 'maxsuelvictor@hotmail.com'; // destinatário de teste
    Msg.Subject := 'Teste SMTP Delphi XE7 - Hostinger';
    Msg.Body.Text := 'Este é um teste de envio SMTP feito em Delphi XE7 via smtp.hostinger.com.';

    try
      SMTP.Connect;
      if SMTP.Connected then
      begin
        SMTP.Send(Msg);
        ShowMessage('E-mail enviado com sucesso!');
      end
      else
        ShowMessage('Falha ao conectar no servidor SMTP.');
    except
      on E: Exception do
        ShowMessage('Erro ao enviar e-mail: ' + E.Message);
    end;

  finally
    SMTP.Disconnect;
    Msg.Free;
    SSL.Free;
    SMTP.Free;
  end;
end;

end.
