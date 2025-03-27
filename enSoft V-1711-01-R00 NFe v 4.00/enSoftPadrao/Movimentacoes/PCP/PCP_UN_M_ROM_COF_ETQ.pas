unit PCP_UN_M_ROM_COF_ETQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TPCP_FM_M_ROM_COF_ETQ = class(TPAD_FM_X_PSQ)
    Panel1: TPanel;
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_ROM_COF_ETQ: TPCP_FM_M_ROM_COF_ETQ;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPCP_FM_M_ROM_COF_ETQ.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.AtualizarGridItens(dbGrid,'int_nomeite',15,8);
end;

end.
