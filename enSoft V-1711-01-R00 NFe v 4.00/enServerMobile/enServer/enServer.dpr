program enServer;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uWM in 'uWM.pas' {WebModule1: TWebModule},
  uSC in 'uSC.pas' {SC: TDataModule},
  uSM in 'uSM.pas' {SM: TDataModule},
  enConstantes in '..\..\enSoftPadrao\Padrao\enConstantes.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
