unit CSU_UN_C_ITE_ORV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, vcl.wwdatsrc;

type
  TCSU_FM_C_ITE_ORV = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    lblItem: TLabel;
    Label3: TLabel;
    txtObs: TDBText;
    wwDBGrid1: TwwDBGrid;
    dso: TwwDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    Label5: TLabel;
    txtObsRec: TDBText;
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_C_ITE_ORV: TCSU_FM_C_ITE_ORV;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCSU_FM_C_ITE_ORV.FormShow(Sender: TObject);
begin
   pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
   pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);


   lblItem.Caption := 'Item: '+dmGeral.BUS_CD_M_CSU_ORV_ITE.FieldBYName('ID_ITEM').AsString+' - '+
                                dmGeral.BUS_CD_M_CSU_ORV_ITE.FieldBYName('INT_NOMEITE').AsString ;
end;

procedure TCSU_FM_C_ITE_ORV.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if (dmGeral.BUS_CD_M_CSU_ORV_ITE.FieldByName('STATUS').AsInteger = 0) then
     begin
       AFont.Color := clBlue;
     end;

   if (dmGeral.BUS_CD_M_CSU_ORV_ITE.FieldByName('STATUS').AsInteger = 2) then
     begin
       AFont.Color := clOlive;
     end;
end;

end.
