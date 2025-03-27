unit PSQ_UN_X_TPR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient;

type
  TPSQ_FM_X_TPR = class(TPAD_FM_X_PSQ)
    BUS_CD_M_CTC_TPR: TClientDataSet;
    pnTítulosItens: TPanel;
    BUS_CD_M_CTC_TPRid_tpr: TIntegerField;
    BUS_CD_M_CTC_TPRid_item: TWideStringField;
    BUS_CD_M_CTC_TPRdescricao: TWideStringField;
    BUS_CD_M_CTC_TPRclasse: TIntegerField;
    BUS_CD_M_CTC_TPRunidade: TWideStringField;
    BUS_CD_M_CTC_TPRpreco_unitario: TFMTBCDField;
    BUS_CD_M_CTC_TPRdata_base: TDateField;
    BUS_CD_M_CTC_TPRid_item_interno: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_TPR: TPSQ_FM_X_TPR;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_TPR.btnPesquisaClick(Sender: TObject);
VAR
id_tpr : string;
begin
  inherited;
  {id_tpr := BUS_CD_M_CTC_TPR.FieldByName('id_tpr').AsString;
  BUS_CD_M_CTC_TPR.Close;
  BUS_CD_M_CTC_TPR.Data :=
      BUS_CD_M_CTC_TPR.DataRequest(
          VarArrayOf([1,id_tpr, edtPesquisa.Text]));
  }
  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_TPR.FormShow(Sender: TObject);
begin
  inherited;
  dbGrid.SetFocus;
end;

end.
