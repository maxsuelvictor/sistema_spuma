unit CSU_UN_M_AUD_XML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,ShellAPI, Vcl.OleCtrls, SHDocVw,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TCSU_FM_M_AUD_XML = class(TForm)
    WebBrowser1: TWebBrowser;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_M_AUD_XML: TCSU_FM_M_AUD_XML;

implementation

{$R *.dfm}

end.
