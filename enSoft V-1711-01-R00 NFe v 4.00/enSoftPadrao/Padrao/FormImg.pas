unit FormImg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TFImg = class(TForm)
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImg: TFImg;

implementation

{$R *.dfm}

procedure TFImg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.

