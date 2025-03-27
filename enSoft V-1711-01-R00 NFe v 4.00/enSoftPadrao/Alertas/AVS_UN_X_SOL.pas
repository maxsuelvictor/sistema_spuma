unit AVS_UN_X_SOL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Data.DB;

type
  TAVS_FM_X_SOL = class(TForm)
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    dsoSol: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AVS_FM_X_SOL: TAVS_FM_X_SOL;

implementation

{$R *.dfm}

uses enSoftMenu, uDmGeral;

procedure TAVS_FM_X_SOL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(AVS_FM_X_SOL);
end;

procedure TAVS_FM_X_SOL.FormShow(Sender: TObject);
begin
  AVS_FM_X_SOL.Top := frmSoftMenu.Height - AVS_FM_X_SOL.Height - 190;
  AVS_FM_X_SOL.Left := frmSoftMenu.Width - AVS_FM_X_SOL.Width - 25;
end;

end.
