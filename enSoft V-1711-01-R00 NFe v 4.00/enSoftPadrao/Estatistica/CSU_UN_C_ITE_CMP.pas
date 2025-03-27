unit CSU_UN_C_ITE_CMP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, vcl.wwdatsrc, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.DBCtrls;

type
  TCSU_FM_C_ITE_CMP = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    wwDBGrid1: TwwDBGrid;
    dso: TwwDataSource;
    lblItem: TLabel;
    Label3: TLabel;
    txtObs: TDBText;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_C_ITE_CMP: TCSU_FM_C_ITE_CMP;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCSU_FM_C_ITE_CMP.FormShow(Sender: TObject);
begin
   pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
   pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);


   lblItem.Caption := 'Item: '+dmGeral.BUS_CD_M_CSU_CMP_ITE.FieldBYName('ID_ITEM').AsString+' - '+
                                dmGeral.BUS_CD_M_CSU_CMP_ITE.FieldBYName('INT_NOMEITE').AsString ;
end;

end.
