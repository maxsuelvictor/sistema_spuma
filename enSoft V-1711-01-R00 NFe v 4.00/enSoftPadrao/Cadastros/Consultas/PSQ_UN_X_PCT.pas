unit PSQ_UN_X_PCT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB, vcl.wwdatsrc,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons;

type
  TPSQ_FM_X_PCT = class(TPAD_FM_X_PSQ)
    BUS_CD_C_PCT: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      var
    xPctChamadaPor: String;
  end;

var
  PSQ_FM_X_PCT: TPSQ_FM_X_PCT;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_PCT.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  if trim(xPctChamadaPor) = '' then
     begin
       BUS_CD_C_PCT.Close;
       BUS_CD_C_PCT.Data :=
       BUS_CD_C_PCT.DataRequest(
             VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));
     end;

  if trim(xPctChamadaPor) = 'E' then // Tela de nota de entrada
     begin
       BUS_CD_C_PCT.Close;
       if cmbParametro.ItemIndex = 0 then
          begin
            BUS_CD_C_PCT.Data :=
                    BUS_CD_C_PCT.DataRequest(
                              VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));
          end;
       if cmbParametro.ItemIndex = 1 then
          begin
             BUS_CD_C_PCT.Data :=
             BUS_CD_C_PCT.DataRequest(
                 VarArrayOf([93, edtPesquisa.Text, '''0'',''2''']));
          end;
     end;

  if trim(xPctChamadaPor) = 'FIN_FM_M_ORC' then // Tela de Programação Orçamentária
     begin
       BUS_CD_C_PCT.Close;
       if cmbParametro.ItemIndex = 0 then
          begin
            BUS_CD_C_PCT.Data :=
                    BUS_CD_C_PCT.DataRequest(
                              VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));
          end;
       if cmbParametro.ItemIndex = 1 then
          begin
             BUS_CD_C_PCT.Data :=
             BUS_CD_C_PCT.DataRequest(
                 VarArrayOf([94, edtPesquisa.Text, '1']));
          end;
     end;

  dbGrid.SetFocus;
end;

end.
