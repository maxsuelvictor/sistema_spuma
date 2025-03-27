unit AVS_UN_X_APG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Vcl.ExtCtrls, Data.DB;

type
  TAVS_FM_X_APG = class(TForm)
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    dsoAPG: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AVS_FM_X_APG: TAVS_FM_X_APG;

implementation

{$R *.dfm}

uses uDmGeral, enSoftMenu;

procedure TAVS_FM_X_APG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(AVS_FM_X_APG);
end;

procedure TAVS_FM_X_APG.FormShow(Sender: TObject);
begin
  AVS_FM_X_APG.Top := frmSoftMenu.Height - AVS_FM_X_APG.Height - 195;
  AVS_FM_X_APG.Left := frmSoftMenu.Width - AVS_FM_X_APG.Width - 25;
end;

end.
