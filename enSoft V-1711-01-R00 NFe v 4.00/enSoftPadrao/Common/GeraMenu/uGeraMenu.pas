unit uGeraMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, vcl.wwdatsrc, Vcl.StdCtrls, vcl.wwspeedbutton,
  vcl.wwdbnavigator, Vcl.ExtCtrls, vcl.wwclearpanel;

type
  TForm1 = class(TForm)
    BUS_CD_X_PMO: TClientDataSet;
    BUS_CD_X_PMOformulario: TStringField;
    BUS_CD_X_PMOdescricao: TStringField;
    BUS_CD_X_PMOmenu: TStringField;
    BUS_CD_X_PMOmodulo: TStringField;
    Button1: TButton;
    Button2: TButton;
    ds: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  BUS_CD_X_PMO.LoadFromFile(ExtractFilePath(Application.ExeName)+'\enSoftMenu.xml');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  BUS_CD_X_PMO.SaveToFile(ExtractFilePath(Application.ExeName)+'\enSoftMenu.xml');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  BUS_CD_X_PMO.EmptyDataSet

end;

end.
