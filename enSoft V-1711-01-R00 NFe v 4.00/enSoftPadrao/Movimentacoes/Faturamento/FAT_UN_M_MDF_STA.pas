unit FAT_UN_M_MDF_STA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFAT_FM_MDF_STA = class(TForm)
    Panel1: TPanel;
    lbl1: TLabel;
    lblStatus: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_MDF_STA: TFAT_FM_MDF_STA;

implementation

{$R *.dfm}

end.
