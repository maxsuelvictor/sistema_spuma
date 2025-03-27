unit PSQ_UN_X_LTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient;

type
  TPSQ_FM_X_LTO = class(TPAD_FM_X_PSQ)
    BUS_CD_C_LTO: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_LTO: TPSQ_FM_X_LTO;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_LTO.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  BUS_CD_C_LTO.Close;
  BUS_CD_C_LTO.Data :=
  BUS_CD_C_LTO.DataRequest(
           VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));
end;

end.
