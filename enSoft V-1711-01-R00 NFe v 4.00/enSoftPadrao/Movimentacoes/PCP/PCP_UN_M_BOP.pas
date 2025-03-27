unit PCP_UN_M_BOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.Mask, vcl.Wwdbedit;

type
  TPCP_FM_M_BOP = class(TPAD_FM_X_FRM)
    Label1: TLabel;
    Label2: TLabel;
    wwDBGrid1: TwwDBGrid;
    Label3: TLabel;
    wwDBGrid2: TwwDBGrid;
    Label4: TLabel;
    Button1: TButton;
    wwDBGrid3: TwwDBGrid;
    Label5: TLabel;
    wwDBGrid4: TwwDBGrid;
    wwDBEdit1: TwwDBEdit;
    Label6: TLabel;
    dsoBlocos: TwwDataSource;
    dsoSaldo: TwwDataSource;
    dsoProduzir: TwwDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_BOP: TPCP_FM_M_BOP;

implementation

{$R *.dfm}

procedure TPCP_FM_M_BOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_M_BOP);
end;

end.
