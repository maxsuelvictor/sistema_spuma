unit AVS_UN_X_PED;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Data.DB;

type
  TAVS_FM_X_PED = class(TForm)
    lblOrde: TLabel;
    wwDBGrid2: TwwDBGrid;
    Panel4: TPanel;
    cbbOrde: TComboBox;
    dsoPedido: TDataSource;
    procedure cbbOrdeChange(Sender: TObject);
    procedure cbbOrdeExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AVS_FM_X_PED: TAVS_FM_X_PED;

implementation

{$R *.dfm}

uses uDmGeral, enSoftMenu;

procedure TAVS_FM_X_PED.cbbOrdeChange(Sender: TObject);
begin
  dmGeral.BUS_CD_M_PED2.Close;
  dmGeral.BUS_CD_M_PED2.Data :=
  dmGeral.BUS_CD_M_PED2.DataRequest(VarArrayOf([99,dmGeral.CAD_CD_C_PARid_empresa.AsString,1,IntToStr(cbborde.ItemIndex)]));
end;

procedure TAVS_FM_X_PED.cbbOrdeExit(Sender: TObject);
begin
  dmGeral.BUS_CD_M_PED2.Close;
  dmGeral.BUS_CD_M_PED2.Data :=
  dmGeral.BUS_CD_M_PED2.DataRequest(VarArrayOf([99,dmGeral.CAD_CD_C_PARid_empresa.AsString,1,IntToStr(cbborde.ItemIndex)]));
end;

procedure TAVS_FM_X_PED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(AVS_FM_X_PED);
end;

procedure TAVS_FM_X_PED.FormShow(Sender: TObject);
begin
  AVS_FM_X_PED.Top := frmSoftMenu.Height - AVS_FM_X_PED.Height - 190;
  AVS_FM_X_PED.Left := Round((frmSoftMenu.Width/2) - (AVS_FM_X_PED.Width/2));
end;

end.
