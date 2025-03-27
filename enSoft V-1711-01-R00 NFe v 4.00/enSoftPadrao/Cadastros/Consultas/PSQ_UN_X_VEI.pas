unit PSQ_UN_X_VEI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB, vcl.wwdatsrc,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TPSQ_FM_X_VEI = class(TPAD_FM_X_PSQ)
    BUS_CD_C_VEI: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
    procedure cmbParametroChange(Sender: TObject);
    procedure dbGridDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_VEI: TPSQ_FM_X_VEI;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_VEI.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  BUS_CD_C_VEI.Close;
  BUS_CD_C_VEI.Data :=
  BUS_CD_C_VEI.DataRequest(
     VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));

  dbGrid.SetFocus;
end;

procedure TPSQ_FM_X_VEI.cmbParametroChange(Sender: TObject);
begin
  inherited;
   edtPesquisa.Text := '';

  if cmbParametro.ItemIndex in [0,2,4,5] then
     begin
       edtPesquisa.NumbersOnly := True;
     end
  else
     begin
       edtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPSQ_FM_X_VEI.dbGridDrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
  inherited;
  if Field = dbgrid.DataSource.DataSet.FieldByName('tipo') then
    begin
      if Field.Asstring = '0' then
        begin
          dbgrid.Canvas.FillRect(Rect);
          dbgrid.Canvas.TextOut(Rect.Left+3,Rect.Top+3,'Veículo');
        end;

      if Field.Asstring = '1' then
        begin
          dbgrid.Canvas.FillRect(Rect);
          dbgrid.Canvas.TextOut(Rect.Left+3,Rect.Top+3,'Trator');
        end;

      if Field.Asstring = '2' then
        begin
          dbgrid.Canvas.FillRect(Rect);
          dbgrid.Canvas.TextOut(Rect.Left+3,Rect.Top+3,'Implemento');
        end;

      if Field.Asstring = '3' then
        begin
          dbgrid.Canvas.FillRect(Rect);
          dbgrid.Canvas.TextOut(Rect.Left+3,Rect.Top+3,'Acessórios');
        end;
    end;
end;

end.
