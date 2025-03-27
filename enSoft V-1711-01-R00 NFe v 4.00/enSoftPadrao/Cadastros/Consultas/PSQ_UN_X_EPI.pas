unit PSQ_UN_X_EPI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB, vcl.wwdatsrc,
  Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel,
  Vcl.Buttons, JvExButtons, JvBitBtn, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Datasnap.DBClient, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, Vcl.ImgList, cxButtons;

type
  TPSQ_FM_X_EPI = class(TPAD_FM_X_PSQ)
    BUS_CD_C_EPI: TClientDataSet;
    BUS_CD_C_EPIid_item: TIntegerField;
    BUS_CD_C_EPIdescricao: TWideStringField;
    BUS_CD_C_EPIid_und_compra: TWideStringField;
    BUS_CD_C_EPIid_und_venda: TWideStringField;
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_EPI: TPSQ_FM_X_EPI;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_EPI.btnPesquisaClick(Sender: TObject);
var
parametro:string;
begin
  inherited;
  if cmbParametro.ItemIndex = 0 then
    parametro := '94'
  else
    parametro := '95';

  BUS_CD_C_EPI.Close;
  BUS_CD_C_EPI.Data :=
  BUS_CD_C_EPI.DataRequest(
     VarArrayOf([parametro, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

end.
