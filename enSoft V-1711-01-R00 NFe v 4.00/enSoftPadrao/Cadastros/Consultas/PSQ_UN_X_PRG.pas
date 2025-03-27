unit PSQ_UN_X_PRG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB, vcl.wwdatsrc,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons;

type
  TPSQ_FM_X_PRG = class(TPAD_FM_X_PSQ)
    BUS_CD_C_PRG: TClientDataSet;
    rgTipo: TRadioGroup;
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_PRG: TPSQ_FM_X_PRG;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_PRG.btnPesquisaClick(Sender: TObject);
var
  lTipo: String;
begin
  inherited;
  lTipo := '';

  if rgTipo.ItemIndex < 2 then
     begin
       lTipo := IntToStr(rgTipo.ItemIndex);
     end;

  BUS_CD_C_PRG.Close;
  BUS_CD_C_PRG.Data :=
  BUS_CD_C_PRG.DataRequest(
     VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text, lTipo]));

  dbGrid.SetFocus;
end;

end.
