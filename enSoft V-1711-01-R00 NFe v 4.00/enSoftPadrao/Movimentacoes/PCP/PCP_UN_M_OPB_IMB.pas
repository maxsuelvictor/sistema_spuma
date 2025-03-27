unit PCP_UN_M_OPB_IMB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, frxClass;

type
  TPCP_FM_M_OPB_IMB = class(TForm)
    grdItens: TwwDBGrid;
    dsOpbBlo: TDataSource;
    lblPedidoVenda: TLabel;
    btnImprimir: TButton;
    btnSair: TButton;
    PCP_FR_M_OPB_IMB: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_OPB_IMB: TPCP_FM_M_OPB_IMB;

implementation

{$R *.dfm}

uses PCP_UN_M_OPB, uDmGeral;


procedure TPCP_FM_M_OPB_IMB.btnImprimirClick(Sender: TObject);
begin

  if dmGeral.PCP_CD_M_OPB_BLO.IsEmpty then
     begin
       ShowMessage('Nenhum registro foi encontrado.');
       exit;
     end;



end;

procedure TPCP_FM_M_OPB_IMB.FormShow(Sender: TObject);
begin
  dmGeral.PCP_CD_M_OPB_BLO.Filtered := true;
  dmGeral.PCP_CD_M_OPB_BLO.Filter := 'aprovado = true';
end;

end.
