unit PSQ_UN_X_CTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TPSQ_FM_X_CTE = class(TPAD_FM_X_PSQ)
    procedure btnPesquisaClick(Sender: TObject);
    procedure cmbParametroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_CTE: TPSQ_FM_X_CTE;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_CTE.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_M_CTE.Close;
  dmGeral.BUS_CD_M_CTE.Data :=
  dmGeral.BUS_CD_M_CTE.DataRequest(
     VarArrayOf([90+cmbParametro.ItemIndex, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_CTE.cmbParametroChange(Sender: TObject);
begin
  inherited;
  edtPesquisa.Text := '';
end;

end.
