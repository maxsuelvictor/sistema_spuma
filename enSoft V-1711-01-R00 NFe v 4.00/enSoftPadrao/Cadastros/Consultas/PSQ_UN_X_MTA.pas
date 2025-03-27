unit PSQ_UN_X_MTA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TPSQ_FM_X_MTA = class(TPAD_FM_X_PSQ)
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_MTA: TPSQ_FM_X_MTA;

implementation

{$R *.dfm}

uses uDmSgq;

procedure TPSQ_FM_X_MTA.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.BUS_CD_C_MTA.Close;
    dmSgq.BUS_CD_C_MTA.Data :=
    dmSgq.BUS_CD_C_MTA.DataRequest(
            VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

end.
