unit PSQ_UN_X_PEC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB, vcl.wwdatsrc,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons;

type
  TPSQ_FM_X_PEC = class(TPAD_FM_X_PSQ)
    BUS_CD_C_PEC: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_PEC: TPSQ_FM_X_PEC;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_PEC.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  BUS_CD_C_PEC.Close;
  BUS_CD_C_PEC.Data :=
  BUS_CD_C_PEC.DataRequest(
     VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

end.
