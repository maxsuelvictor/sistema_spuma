unit PSQ_UN_X_LMF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Data.DB, Datasnap.DBClient,
  Vcl.ImgList, vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TPSQ_FM_X_LMF = class(TPAD_FM_X_PSQ)
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Panel5: TPanel;
    Label10: TLabel;
    Panel1: TPanel;
    Label7: TLabel;
    Panel4: TPanel;
    procedure btnPesquisaClick(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_LMF: TPSQ_FM_X_LMF;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_LMF.btnPesquisaClick(Sender: TObject);
begin
  inherited;
    Screen.Cursor := crHourGlass;
  try
    inherited;

    dmgeral.BUS_CD_M_LMF.Close;
    dmgeral.BUS_CD_M_LMF.Data :=
    dmgeral.BUS_CD_M_LMF.DataRequest(
        VarArrayOf([cmbParametro.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,edtPesquisa.Text]));

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPSQ_FM_X_LMF.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if dmgeral.BUS_CD_M_LMF.FieldByName('STATUS').AsInteger = 0 then
    begin
      aFont.Color := clBlue;
    end;

  if dmgeral.BUS_CD_M_LMF.FieldByName('STATUS').AsInteger = 2 then
    begin
      aFont.Color := clGreen;
    end;
end;

end.
