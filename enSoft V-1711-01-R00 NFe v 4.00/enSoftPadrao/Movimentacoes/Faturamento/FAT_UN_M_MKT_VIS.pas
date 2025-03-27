unit FAT_UN_M_MKT_VIS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TFAT_FM_M_MKT_VIS = class(TPAD_FM_X_PSQ)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_M_MKT_VIS: TFAT_FM_M_MKT_VIS;

implementation

{$R *.dfm}

uses uDmGeral;

end.
