unit PSQ_UN_X_PRO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Data.DB, Datasnap.DBClient,
  Vcl.ImgList, vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TPSQ_FM_X_PRO = class(TPAD_FM_X_PSQ)
    BUS_CD_M_PRO: TClientDataSet;
    BUS_CD_M_PROformulario: TWideStringField;
    BUS_CD_M_PROmenu: TWideStringField;
    BUS_CD_M_PROdescricao: TWideStringField;
    BUS_CD_M_PROmodulo: TWideStringField;
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_PRO: TPSQ_FM_X_PRO;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_PRO.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  BUS_CD_M_PRO.Close;
  BUS_CD_M_PRO.Data :=
  BUS_CD_M_PRO.DataRequest(
     VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

end.
