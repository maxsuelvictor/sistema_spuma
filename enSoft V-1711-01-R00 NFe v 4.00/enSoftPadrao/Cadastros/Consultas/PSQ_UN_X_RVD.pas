unit PSQ_UN_X_RVD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient;

type
  TPSQ_FM_X_RVD = class(TPAD_FM_X_PSQ)
    BUS_CD_C_RVD: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_RVD: TPSQ_FM_X_RVD;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_RVD.btnPesquisaClick(Sender: TObject);
begin
  inherited;
 BUS_CD_C_RVD.Close;
  BUS_CD_C_RVD.Data :=
  BUS_CD_C_RVD.DataRequest(
     VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_RVD.FormShow(Sender: TObject);
begin
  inherited;
  BUS_CD_C_RVD.Close;
  BUS_CD_C_RVD.Data :=
  BUS_CD_C_RVD.DataRequest(
     VarArrayOf([1, '%']));
end;

end.
