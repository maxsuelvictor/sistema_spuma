unit PCP_UN_M_OPR_ENT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  vcl.Wwdbedit, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, vcl.wwdblook,
  vcl.wwdbigrd, Vcl.Grids, vcl.wwdbgrid;

type
  TPCP_FM_M_OPR_ENT = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    grdPedIcf: TwwDBGrid;
    grdItensIButton: TwwIButton;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    Panel4: TPanel;
    pnlIte: TPanel;
    lblCodBarra: TLabel;
    Label10: TLabel;
    txtIdItem: TJvDBComboEdit;
    txtDescricao: TwwDBEdit;
    txtUnd: TwwDBEdit;
    btnAddIte: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_OPR_ENT: TPCP_FM_M_OPR_ENT;

implementation

{$R *.dfm}

end.
