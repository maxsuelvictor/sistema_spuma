unit CAD_UN_C_SER;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls;

type
  TCAD_FM_C_SER = class(TPAD_FM_X_PAD)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_SER: TCAD_FM_C_SER;

implementation

{$R *.dfm}

end.
