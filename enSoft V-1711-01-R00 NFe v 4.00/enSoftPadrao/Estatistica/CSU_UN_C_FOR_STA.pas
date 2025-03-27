unit CSU_UN_C_FOR_STA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls;

type
  TCSU_FM_C_FOR_STA = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_C_FOR_STA: TCSU_FM_C_FOR_STA;

implementation

{$R *.dfm}

end.
