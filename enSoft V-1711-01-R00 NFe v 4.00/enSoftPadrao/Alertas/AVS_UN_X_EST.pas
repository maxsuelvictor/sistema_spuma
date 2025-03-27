unit AVS_UN_X_EST;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.ExtCtrls;

type
  TAVS_FM_X_EST = class(TForm)
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    dsoEST: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AVS_FM_X_EST: TAVS_FM_X_EST;

implementation

{$R *.dfm}

uses uDmGeral, enSoftMenu;

procedure TAVS_FM_X_EST.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(AVS_FM_X_EST);
end;

procedure TAVS_FM_X_EST.FormShow(Sender: TObject);
begin
  AVS_FM_X_EST.Top := frmSoftMenu.Height - AVS_FM_X_EST.Height - 195;
  AVS_FM_X_EST.Left := 0;

  if not dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean then
    begin
      wwDBGrid1.Columns[5].Visible:= False;
      wwDBGrid1.Columns[2].DisplayWidth := wwDBGrid1.Columns[2].DisplayWidth + 10;
    end;
end;

end.
