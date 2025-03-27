unit PSQ_UN_X_OFI_ORD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TPSQ_FM_X_OFI_ORD = class(TPAD_FM_X_PSQ)
    gbLegenda: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure cmbParametroChange(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_OFI_ORD: TPSQ_FM_X_OFI_ORD;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_OFI_ORD.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if (cmbParametro.ItemIndex = 0) then
      begin
    dmGeral.BUS_CD_M_ORV.Close;
    dmGeral.BUS_CD_M_ORV.Data :=
    dmGeral.BUS_CD_M_ORV.DataRequest(
            VarArrayOf([cmbParametro.ItemIndex,edtPesquisa.Text,
                                dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'1','1']));
      end
    else
      begin
      dmGeral.BUS_CD_M_ORV.Close;
      dmGeral.BUS_CD_M_ORV.Data :=
      dmGeral.BUS_CD_M_ORV.DataRequest(
            VarArrayOf([cmbParametro.ItemIndex,edtPesquisa.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,'1','1']));
      end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPSQ_FM_X_OFI_ORD.cmbParametroChange(Sender: TObject);
begin
  inherited;
  edtPesquisa.Text := '';
  if cmbParametro.ItemIndex in [0,4] then
    begin
     edtPesquisa.NumbersOnly := true;
     end
  else
    begin
     edtPesquisa.NumbersOnly := false;
   end;
end;

procedure TPSQ_FM_X_OFI_ORD.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
   if (dmGeral.BUS_CD_M_ORV.FieldByName('STATUS').AsInteger = 0) then
     begin
       AFont.Color := clBlue;
     end;

   if (dmGeral.BUS_CD_M_ORV.FieldByName('STATUS').AsInteger = 2) then
     begin
       AFont.Color := clOlive;
     end;

   if (dmGeral.BUS_CD_M_ORV.FieldByName('STATUS').AsInteger = 3) then
     begin
       AFont.Color := clGreen;
     end;

   if (dmGeral.BUS_CD_M_ORV.FieldByName('STATUS').AsInteger = 4) then
     begin
       AFont.Color := clRed;
     end;
end;

end.
