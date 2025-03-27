unit CSU_UN_C_ITE_LOT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Data.DB, vcl.wwdatsrc, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCSU_FM_C_ITE_LOT = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    dso: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_C_ITE_LOT: TCSU_FM_C_ITE_LOT;

implementation

{$R *.dfm}

uses uDmGeral;

end.
