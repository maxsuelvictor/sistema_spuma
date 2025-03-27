unit PSQ_UN_X_CFO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB,
  Datasnap.DBClient, vcl.wwdatsrc, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  JvExButtons, JvBitBtn, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons;

type
  TPSQ_FM_X_CFO = class(TPAD_FM_X_PSQ)
    BUS_CD_C_CFO: TClientDataSet;
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
     xCfoChamadoPor: String;
  end;

var
  PSQ_FM_X_CFO: TPSQ_FM_X_CFO;


implementation

{$R *.dfm}

uses uDmGeral,enConstantes;

procedure TPSQ_FM_X_CFO.btnPesquisaClick(Sender: TObject);
var
  texto: string;
begin
  inherited;
  if trim(xCfoChamadoPor) = '' then
     begin
        BUS_CD_C_CFO.Close;
        BUS_CD_C_CFO.Data :=
        BUS_CD_C_CFO.DataRequest(
           VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));
     end;
  texto := '';
  if trim(xCfoChamadoPor) = 'E' then // Tela de nota de entrada
     begin
       BUS_CD_C_CFO.Close;
       if cmbParametro.ItemIndex = 0 then
          begin
            BUS_CD_C_CFO.Data :=
                    BUS_CD_C_CFO.DataRequest(
                              VarArrayOf([cmbParametro.ItemIndex, edtPesquisa.Text]));
          end;
       if cmbParametro.ItemIndex = 1 then
          begin
             BUS_CD_C_CFO.Data :=
             BUS_CD_C_CFO.DataRequest(
                 VarArrayOf([cmbParametro.ItemIndex+2, edtPesquisa.Text, CCfoNFE_ENTRADA]));
          end;
     end;
  dbGrid.SetFocus;
end;

end.
