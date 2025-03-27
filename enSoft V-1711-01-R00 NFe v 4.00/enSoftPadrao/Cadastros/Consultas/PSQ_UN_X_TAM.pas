unit PSQ_UN_X_TAM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient;

type
  TPSQ_FM_X_TAM = class(TPAD_FM_X_PSQ)
    BUS_CD_C_TAM: TClientDataSet;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    BUS_CD_C_TAMcod_lme: TWideStringField;
    BUS_CD_C_TAMrev_lme: TWideStringField;
    procedure btnPesquisaClick(Sender: TObject);
    procedure cmbParametroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_TAM: TPSQ_FM_X_TAM;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_TAM.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  BUS_CD_C_TAM.Close;
  BUS_CD_C_TAM.Data :=
      BUS_CD_C_TAM.DataRequest(
          VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_TAM.cmbParametroChange(Sender: TObject);
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
