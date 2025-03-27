unit PSQ_UN_X_FUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB, vcl.wwdatsrc,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons;

type
  TPSQ_FM_X_FUN = class(TPAD_FM_X_PSQ)
    BUS_CD_C_FUN: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
    funAtivo:boolean;
  end;

var
  PSQ_FM_X_FUN: TPSQ_FM_X_FUN;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_FUN.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  if funAtivo = false then
    begin
      BUS_CD_C_FUN.Close;
      BUS_CD_C_FUN.Data :=
      BUS_CD_C_FUN.DataRequest(
         VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));
    end
  else
    begin
      BUS_CD_C_FUN.Close;
      BUS_CD_C_FUN.Data :=
      BUS_CD_C_FUN.DataRequest(
         VarArrayOf([8,cmbParametro.ItemIndex, edtPesquisa.Text]));
    end;
  dbGrid.SetFocus;
end;
procedure TPSQ_FM_X_FUN.FormCreate(Sender: TObject);
begin
  inherited;
  funAtivo := false;
end;

end.
