unit AVS_UN_X_COB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid;

type
  TAVS_FM_X_COB = class(TForm)
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    dsoCob: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AVS_FM_X_COB: TAVS_FM_X_COB;

implementation

{$R *.dfm}

uses enSoftMenu, uDmGeral;

procedure TAVS_FM_X_COB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(AVS_FM_X_COB);
end;

procedure TAVS_FM_X_COB.FormShow(Sender: TObject);
begin
  AVS_FM_X_COB.Top := frmSoftMenu.Height - AVS_FM_X_COB.Height - 195;
  AVS_FM_X_COB.Left := frmSoftMenu.Width - AVS_FM_X_COB.Width - 25;
end;

end.
