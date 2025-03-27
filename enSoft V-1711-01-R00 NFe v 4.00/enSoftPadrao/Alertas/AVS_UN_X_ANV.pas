unit AVS_UN_X_ANV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Data.DB, Vcl.ExtCtrls;

type
  TAVS_FM_X_ANV = class(TForm)
    Panel1: TPanel;
    dsoANV: TDataSource;
    wwDBGrid1: TwwDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AVS_FM_X_ANV: TAVS_FM_X_ANV;

implementation

{$R *.dfm}

uses uDmGeral, enSoftMenu;

procedure TAVS_FM_X_ANV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(AVS_FM_X_ANV);
end;

procedure TAVS_FM_X_ANV.FormShow(Sender: TObject);
begin
  AVS_FM_X_ANV.Top := frmSoftMenu.Height - AVS_FM_X_ANV.Height - 195;
  AVS_FM_X_ANV.Left := frmSoftMenu.Width - AVS_FM_X_ANV.Width - 50;
end;

end.
