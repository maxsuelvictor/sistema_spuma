unit PSQ_UN_X_SER;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Data.DB, Datasnap.DBClient,
  Vcl.ImgList, vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TPSQ_FM_X_SER = class(TPAD_FM_X_PSQ)
    BUS_CD_C_SER: TClientDataSet;
    BUS_CD_C_SER_COM: TClientDataSet;
    dbGridItem: TwwDBGrid;
    dsoSerCom: TwwDataSource;
    BUS_CD_C_SERid: TIntegerField;
    BUS_CD_C_SERdescricao: TWideStringField;
    BUS_CD_C_SERid_unidade: TWideStringField;
    BUS_CD_C_SERctc_sq_c_ser_com: TDataSetField;
    BUS_CD_C_SER_COMid_ser: TIntegerField;
    BUS_CD_C_SER_COMid_item: TIntegerField;
    BUS_CD_C_SER_COMid_tpr: TIntegerField;
    BUS_CD_C_SER_COMqtde: TFloatField;
    BUS_CD_C_SER_COMvlr_unitario: TFMTBCDField;
    BUS_CD_C_SER_COMint_nomeite: TWideStringField;
    BUS_CD_C_SER_COMint_nometpr: TWideStringField;
    pnTítulosItens: TPanel;
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_SER: TPSQ_FM_X_SER;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_SER.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  BUS_CD_C_SER.Close;
  BUS_CD_C_SER.Data :=
      BUS_CD_C_SER.DataRequest(
          VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_SER.FormShow(Sender: TObject);
begin
  inherited;
  edtPesquisa.SetFocus;
end;

end.
