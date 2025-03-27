unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Vcl.StdCtrls, Vcl.Mask, vcl.Wwdbedit, Data.DB;

type
  TForm2 = class(TForm)
    wwDBGrid1: TwwDBGrid;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses uDmGeral;





end.
