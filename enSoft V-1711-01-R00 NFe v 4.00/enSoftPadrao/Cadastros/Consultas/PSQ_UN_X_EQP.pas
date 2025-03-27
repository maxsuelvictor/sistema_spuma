unit PSQ_UN_X_EQP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient;

type
  TPSQ_FM_X_EQP = class(TPAD_FM_X_PSQ)
    BUS_CD_C_EQP: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
    procedure cmbParametroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_EQP: TPSQ_FM_X_EQP;

implementation

{$R *.dfm}

procedure TPSQ_FM_X_EQP.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  BUS_CD_C_EQP.Close;
    BUS_CD_C_EQP.Data :=
      BUS_CD_C_EQP.DataRequest(
           VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));
  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_EQP.cmbParametroChange(Sender: TObject);
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
