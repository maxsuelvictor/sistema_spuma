unit PSQ_UN_X_GRP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient;

type
  TPSQ_FM_X_GRP = class(TPAD_FM_X_PSQ)
    BUS_CD_C_GRP: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
    procedure cmbParametroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_GRP: TPSQ_FM_X_GRP;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_GRP.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  BUS_CD_C_GRP.Close;
  BUS_CD_C_GRP.Data :=
  BUS_CD_C_GRP.DataRequest(
     VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_GRP.cmbParametroChange(Sender: TObject);
begin
  inherited;
   edtPesquisa.Text := '';

  if cmbParametro.ItemIndex = 0 then
     edtPesquisa.NumbersOnly := true;
  if cmbParametro.ItemIndex = 1 then
     edtPesquisa.NumbersOnly := false;
end;

end.
