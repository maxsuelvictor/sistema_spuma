unit PSQ_UN_X_LME;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB, vcl.wwdatsrc,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons;

type
  TPSQ_FM_X_LME = class(TPAD_FM_X_PSQ)
    BUS_CD_C_LME: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_LME: TPSQ_FM_X_LME;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_LME.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  BUS_CD_C_LME.Close;
  BUS_CD_C_LME.Data :=
  BUS_CD_C_LME.DataRequest(
     VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text ]));
  dbGrid.SetFocus;
end;

end.
