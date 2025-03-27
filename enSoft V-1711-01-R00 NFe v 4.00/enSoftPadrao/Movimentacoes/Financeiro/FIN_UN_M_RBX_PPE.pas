unit FIN_UN_M_RBX_PPE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Data.DB;

type
  TFIN_FM_M_RBX_PPE = class(TForm)
    dsRbxPpe: TDataSource;
    grd: TwwDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIN_FM_M_RBX_PPE: TFIN_FM_M_RBX_PPE;

implementation

{$R *.dfm}

uses uDmGeral;

end.
