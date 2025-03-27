unit PSQ_UN_X_PAI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Data.DB, Datasnap.DBClient,
  Vcl.ImgList, vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TPSQ_FM_X_PAI = class(TPAD_FM_X_PSQ)
    BUS_CD_C_PAI: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_PAI: TPSQ_FM_X_PAI;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_PAI.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  BUS_CD_C_PAI.Close;
  BUS_CD_C_PAI.Data :=
  BUS_CD_C_PAI.DataRequest(
     VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

end.
