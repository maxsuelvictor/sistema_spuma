unit PSQ_UN_X_MVE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TPSQ_FM_X_MVE = class(TPAD_FM_X_PSQ)
    procedure btnPesquisaClick(Sender: TObject);
    procedure cmbParametroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_MVE: TPSQ_FM_X_MVE;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_MVE.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.BUS_CD_C_MVE.Close;
    dmGeral.BUS_CD_C_MVE.Data :=
    dmGeral.BUS_CD_C_MVE.DataRequest(
            VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPSQ_FM_X_MVE.cmbParametroChange(Sender: TObject);
begin
  inherited;
  edtPesquisa.Text := '';

  if cmbParametro.ItemIndex in [0] then
     begin
       edtPesquisa.NumbersOnly := True;
     end
  else
     begin
       edtPesquisa.NumbersOnly := False;
     end;
end;

end.
