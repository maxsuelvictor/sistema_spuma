unit PSQ_UN_X_REC_CHE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB, vcl.wwdatsrc,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons;

type
  TPSQ_FM_X_REC_CHE = class(TPAD_FM_X_PSQ)
    procedure FormShow(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_REC_CHE: TPSQ_FM_X_REC_CHE;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_REC_CHE.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
          dmGeral.BUS_CD_M_REC.DataRequest(
                VarArrayOf([95,edtPesquisa.Text,6]));

  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_REC_CHE.FormShow(Sender: TObject);
begin
  inherited;
  edtPesquisa.SetFocus;
end;

end.
