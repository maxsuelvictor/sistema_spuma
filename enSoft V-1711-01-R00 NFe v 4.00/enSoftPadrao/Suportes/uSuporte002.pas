unit uSuporte002;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  Datasnap.DBClient, vcl.wwdatsrc, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TfrmSuporte002 = class(TForm)
    Label1: TLabel;
    dbGrid: TwwDBGrid;
    BUS_DS_M_NFE_ITE_INT: TwwDataSource;
    BUS_CD_M_NFE_ITE_INT: TClientDataSet;
    btnFaturar: TButton;
    btnSair: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSuporte002: TfrmSuporte002;

implementation

{$R *.dfm}

uses uDmGeral;

end.
