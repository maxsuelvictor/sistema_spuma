unit PSQ_UN_X_IQM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TPSQ_FM_X_IQM = class(TPAD_FM_X_PSQ)
    dsoItens: TwwDataSource;
    pnTituloControle: TPanel;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_IQM: TPSQ_FM_X_IQM;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_IQM.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_M_IQM.Close;
  dmGeral.BUS_CD_M_IQM.Data :=
          dmGeral.BUS_CD_M_IQM.DataRequest(
                  VarArrayOf([cmbParametro.ItemIndex,edtPesquisa.Text]));

  dbGrid.SetFocus;

end;

end.
