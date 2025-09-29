unit unitFormPrincipal;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.AppEvnts, Vcl.StdCtrls, IdHTTPWebBrokerBridge, Web.HTTPApp;

type
  TForm1 = class(TForm)
    ButtonStart: TButton;
    ButtonStop: TButton;
    EditPort: TEdit;
    Label1: TLabel;
    ApplicationEvents1: TApplicationEvents;
    ButtonOpenBrowser: TButton;
    mmTexto: TMemo;
    txtCertificado: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    txtKey: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonStopClick(Sender: TObject);
    procedure ButtonOpenBrowserClick(Sender: TObject);
  private
    FServer: TIdHTTPWebBrokerBridge;
    procedure StartServer;
    procedure OnGetSSLPassword(var APassword: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  IdSSLOpenSSL,
  WinApi.Windows, Winapi.ShellApi, Datasnap.DSSession;

procedure TForm1.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
  ButtonStart.Enabled := not FServer.Active;
  ButtonStop.Enabled := FServer.Active;
  EditPort.Enabled := not FServer.Active;
end;

procedure TForm1.ButtonOpenBrowserClick(Sender: TObject);
var
  LURL: string;
begin
  StartServer;
  LURL := Format('https://localhost:%s', [EditPort.Text]);
  ShellExecute(0,
        nil,
        PChar(LURL), nil, nil, SW_SHOWNOACTIVATE);
end;

procedure TForm1.ButtonStartClick(Sender: TObject);
begin
  StartServer;
end;

procedure TerminateThreads;
begin
  if TDSSessionManager.Instance <> nil then
    TDSSessionManager.Instance.TerminateAllSessions;
end;

procedure TForm1.ButtonStopClick(Sender: TObject);
begin
  TerminateThreads;
  FServer.Active := False;
  FServer.Bindings.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  LIOHandleSSL: TIdServerIOHandlerSSLOpenSSL;
begin
  FServer := TIdHTTPWebBrokerBridge.Create(Self);
  LIOHandleSSL := TIdServerIOHandlerSSLOpenSSL.Create(FServer);
  //LIOHandleSSL.SSLOptions.CertFile := 'C:\Maxsuel\projetosGit\sistema_spuma\Certificados\cert.pem';
  LIOHandleSSL.SSLOptions.CertFile := txtCertificado.text;
  LIOHandleSSL.SSLOptions.RootCertFile := '';
  LIOHandleSSL.SSLOptions.Method := sslvTLSv1_2;
  LIOHandleSSL.SSLOptions.SSLVersions := [sslvTLSv1_2];
  //LIOHandleSSL.SSLOptions.KeyFile := 'C:\Maxsuel\projetosGit\sistema_spuma\Certificados\key.pem';
  LIOHandleSSL.SSLOptions.KeyFile := txtKey.Text;
  LIOHandleSSL.OnGetPassword := OnGetSSLPassword;
  FServer.IOHandler := LIOHandleSSL;
end;

procedure TForm1.OnGetSSLPassword(var APassword: String);
begin
  APassword := '';
end;

procedure TForm1.StartServer;
begin
  if not FServer.Active then
  begin
    FServer.Bindings.Clear;
    FServer.DefaultPort := StrToInt(EditPort.Text);
    FServer.Active := True;
  end;
end;

end.
