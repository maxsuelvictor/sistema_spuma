unit PSQ_UN_X_TDF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB,
  Datasnap.DBClient, vcl.wwdatsrc, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  JvExButtons, JvBitBtn, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons;

type
  TPSQ_FM_X_TDF = class(TPAD_FM_X_PSQ)
    BUS_CD_C_TDF: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_TDF: TPSQ_FM_X_TDF;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_TDF.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  BUS_CD_C_TDF.Close;
  BUS_CD_C_TDF.Data :=
  BUS_CD_C_TDF.DataRequest(
     VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_TDF.FormShow(Sender: TObject);
begin
  inherited;
  BUS_CD_C_TDF.Close;
  BUS_CD_C_TDF.Data :=
  BUS_CD_C_TDF.DataRequest(
     VarArrayOf([1, '%']));
end;

end.
