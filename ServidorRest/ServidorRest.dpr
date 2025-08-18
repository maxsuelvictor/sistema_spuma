program ServidorRest;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  UnitFormPrincipal in 'UnitFormPrincipal.pas' {Form1},
  UnitServidorMetodos in 'UnitServidorMetodos.pas' {ServidorMetodos: TDataModule},
  UnitWebModule1 in 'UnitWebModule1.pas' {WebModule1: TWebModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
