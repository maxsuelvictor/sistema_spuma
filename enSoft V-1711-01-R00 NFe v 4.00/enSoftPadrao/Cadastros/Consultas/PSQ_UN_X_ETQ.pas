unit PSQ_UN_X_ETQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, Data.DB,
  Datasnap.DBClient, vcl.wwdatsrc, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  JvExButtons, JvBitBtn, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons;

type
  TPSQ_FM_X_ETQ = class(TPAD_FM_X_PSQ)
    BUS_CD_M_FTE_ETQ: TClientDataSet;
    BUS_CD_M_FTE_ETQcod_int_etq: TWideStringField;
    BUS_CD_M_FTE_ETQcod_int_etq_rev: TWideStringField;
    BUS_CD_M_FTE_ETQdescricao: TWideStringField;
    BUS_CD_M_FTE_ETQespecificacoes: TWideStringField;
    BUS_CD_M_FTE_ETQtexto_livre1: TWideStringField;
    BUS_CD_M_FTE_ETQtexto_livre2: TWideStringField;
    BUS_CD_M_FTE_ETQid_fte_etq: TIntegerField;
    BUS_CD_M_FTE_ETQid_fte: TIntegerField;
    BUS_CD_M_FTE_ETQcod_lme: TWideStringField;
    BUS_CD_M_FTE_ETQrev_lme: TWideStringField;
    BUS_CD_M_FTE_ETQrequisitos: TWideStringField;
    BUS_CD_M_FTE_ETQinf_contato: TWideStringField;
    BUS_CD_M_FTE_ETQinf_remocao: TWideStringField;
    BUS_CD_M_FTE_ETQinf_sac: TWideStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_ETQ: TPSQ_FM_X_ETQ;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPSQ_FM_X_ETQ.FormShow(Sender: TObject);
begin
  inherited;
  BUS_CD_M_FTE_ETQ.Close;
  BUS_CD_M_FTE_ETQ.Data :=
  BUS_CD_M_FTE_ETQ.DataRequest(
     VarArrayOf([1, True]));

  dbGrid.SetFocus;
end;

end.
