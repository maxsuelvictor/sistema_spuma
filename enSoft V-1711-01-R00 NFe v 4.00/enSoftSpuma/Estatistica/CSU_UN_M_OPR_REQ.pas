unit CSU_UN_M_OPR_REQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.StdCtrls, Vcl.ImgList, Data.DB, vcl.wwdatsrc,
  System.Actions, Vcl.ActnList, JvExExtCtrls, JvExtComponent, JvPanel,
  cxButtons, Vcl.ExtCtrls, JvExMask, JvToolEdit, JvDBControls, Vcl.Mask,
  vcl.Wwdbedit;

type
  TCSU_FM_M_OPR_REQ = class(TPAD_FM_X_FRM)
    Label6: TLabel;
    gbOrdemProAcabados: TGroupBox;
    grbReq: TwwDBGrid;
    Label7: TLabel;
    gbItensProduzir: TGroupBox;
    grbReqIte: TwwDBGrid;
    Label5: TLabel;
    lblAberto: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    pnlAberto: TPanel;
    Panel6: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    dsoIte: TwwDataSource;
    lblNOrdemProducao: TLabel;
    lblEmissao: TLabel;
    lblResponsavel: TLabel;
    txtNOrdemProducao: TwwDBEdit;
    txtEmissao: TJvDBDateEdit;
    txtResponsavel: TwwDBEdit;
    dsoOpr: TwwDataSource;
    procedure grbReqCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grbReqIteCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_M_OPR_REQ: TCSU_FM_M_OPR_REQ;

implementation

{$R *.dfm}

uses uDmSgq, uDmGeral;

procedure TCSU_FM_M_OPR_REQ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //inherited;
  FreeAndNil(CSU_FM_M_OPR_REQ);
end;

procedure TCSU_FM_M_OPR_REQ.FormShow(Sender: TObject);
begin
  inherited;
  dmSgq.BUS_CD_M_OPR_REQ.Close;
  dmSgq.BUS_CD_M_OPR_REQ.Data :=
  dmSgq.BUS_CD_M_OPR_REQ.DataRequest(
          VarArrayOf([3, dmGeral.BUS_CD_M_CSU_OPRid_opr.Text, '%']));

  dmGeral.AtualizarGridItens(grbReqIte,'int_nomeite',12,8);
end;

procedure TCSU_FM_M_OPR_REQ.grbReqCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if not dmSgq.BUS_CD_M_OPR_REQcancelado.AsBoolean then
     begin
       AFont.Color := clblack;
     end
  else
    begin
      AFont.Color := clred;
    end;
end;

procedure TCSU_FM_M_OPR_REQ.grbReqIteCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
  if not dmSgq.BUS_CD_M_OPR_REQ_ITEcancelado.AsBoolean then
    begin
      if dmSgq.BUS_CD_M_OPR_REQ_ITE.FieldByName('situacao').AsString = '1' then
        AFont.Color := clBlack;

      if dmSgq.BUS_CD_M_OPR_REQ_ITE.FieldByName('situacao').AsString = '2' then
        AFont.Color := clMaroon;

      if dmSgq.BUS_CD_M_OPR_REQ_ITE.FieldByName('situacao').AsString = '3' then
        AFont.Color := clBlue;
    end
  else
    begin
      AFont.Color := clred;
    end;
end;

end.
