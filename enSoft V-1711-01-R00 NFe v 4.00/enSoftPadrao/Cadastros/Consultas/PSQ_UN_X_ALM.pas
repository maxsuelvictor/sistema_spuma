unit PSQ_UN_X_ALM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB,
  Datasnap.DBClient, vcl.wwdatsrc, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  JvExButtons, JvBitBtn, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons;

type
  TPSQ_FM_X_ALM = class(TPAD_FM_X_PSQ)
    BUS_CD_C_ALM: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_ALM: TPSQ_FM_X_ALM;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_ALM.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  BUS_CD_C_ALM.Close;
  BUS_CD_C_ALM.Data :=
  BUS_CD_C_ALM.DataRequest(
     VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_ALM.FormShow(Sender: TObject);
begin
  inherited;
  BUS_CD_C_ALM.Close;
  BUS_CD_C_ALM.Data :=
  BUS_CD_C_ALM.DataRequest(
     VarArrayOf([1, '%']));

end;

end.
