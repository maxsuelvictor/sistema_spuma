unit PSQ_UN_X_CNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB,
  Datasnap.DBClient, vcl.wwdatsrc, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  JvExButtons, JvBitBtn, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons;

type
  TPSQ_FM_X_CNF = class(TPAD_FM_X_PSQ)
    BUS_CD_C_CNF: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_CNF: TPSQ_FM_X_CNF;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_CNF.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  BUS_CD_C_CNF.Close;
  BUS_CD_C_CNF.Data :=
  BUS_CD_C_CNF.DataRequest(
     VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

end.
