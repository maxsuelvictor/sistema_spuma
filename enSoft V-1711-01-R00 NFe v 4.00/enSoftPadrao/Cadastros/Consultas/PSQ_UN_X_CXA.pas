unit PSQ_UN_X_CXA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Data.DB, Datasnap.DBClient,
  Vcl.ImgList, vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TPSQ_FM_X_CXA = class(TPAD_FM_X_PSQ)
    BUS_CD_M_CXA: TClientDataSet;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_CXA: TPSQ_FM_X_CXA;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_CXA.FormCreate(Sender: TObject);
begin
  inherited;
  BUS_CD_M_CXA.Close;
  BUS_CD_M_CXA.Data :=
  BUS_CD_M_CXA.DataRequest(
     VarArrayOf([94,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));
end;

end.
