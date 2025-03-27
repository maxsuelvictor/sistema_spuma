unit PSQ_UN_X_OPR_OPS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TPSQ_FM_X_OPR_OPS = class(TPAD_FM_X_PSQ)
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_OPR_OPS: TPSQ_FM_X_OPR_OPS;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_OPR_OPS.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_M_OPR_OPS.Close;
  dmgeral.BUS_CD_M_OPR_OPS.Data:=
  dmgeral.BUS_CD_M_OPR_OPS.DataRequest(varArrayOf([cmbParametro.ItemIndex,edtPesquisa.Text]));

  dbgrid.SetFocus;
end;

procedure TPSQ_FM_X_OPR_OPS.FormShow(Sender: TObject);
begin
  inherited;
  edtPesquisa.SetFocus;
end;

end.
