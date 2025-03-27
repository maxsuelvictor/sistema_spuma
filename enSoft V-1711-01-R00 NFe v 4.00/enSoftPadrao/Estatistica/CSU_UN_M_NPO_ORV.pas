unit CSU_UN_M_NPO_ORV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, vcl.wwdatsrc, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons;

type
  TCSU_FM_M_NPO_ORV = class(TForm)
    Panel1: TPanel;
    lblTitulo: TLabel;
    Panel2: TPanel;
    dbOrdemServico: TwwDBGrid;
    dso: TwwDataSource;
    btnSair: TcxButton;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_M_NPO_ORV: TCSU_FM_M_NPO_ORV;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCSU_FM_M_NPO_ORV.btnSairClick(Sender: TObject);
begin
   Close;
end;

end.
