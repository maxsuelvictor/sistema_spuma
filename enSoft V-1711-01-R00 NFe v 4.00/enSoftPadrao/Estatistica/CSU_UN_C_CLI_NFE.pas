unit CSU_UN_C_CLI_NFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, vcl.wwdatsrc, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TCSU_FM_C_CLI_NFE = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    dgCobrancas: TwwDBGrid;
    dso: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    lblICMSNormal: TLabel;
    lblICMSSubstituido: TLabel;
    lblOutros: TLabel;
    lblVlrBase: TLabel;
    txtVlrBase: TDBEdit;
    txtVlrICMS: TDBEdit;
    lblVlrICMS: TLabel;
    DBEdit1: TDBEdit;
    lblPer: TLabel;
    txtVlrBaseSubs: TDBEdit;
    lblVlrBaseSubs: TLabel;
    lblVlrICMSSubs: TLabel;
    txtVlrICMSSubs: TDBEdit;
    txtVlrIpi: TDBEdit;
    lblIPI: TLabel;
    lblVlrPis: TLabel;
    txtVlrPis: TDBEdit;
    txtVlrCofins: TDBEdit;
    lblCofins: TLabel;
    lblVlrFrete: TLabel;
    txtVlrFrete: TDBEdit;
    txtVlrOutras: TDBEdit;
    lblVlrOutras: TLabel;
    dsoItens: TwwDataSource;
    lblPagamentos: TLabel;
    lblTitulosNota: TLabel;
    wwDBGrid2: TwwDBGrid;
    dsoTitulos: TwwDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    procedure dgCobrancasCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_C_CLI_NFE: TCSU_FM_C_CLI_NFE;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCSU_FM_C_CLI_NFE.dgCobrancasCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0) and
     (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger = 1) and
     (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '05') then
    begin
      aFont.Color := clMaroon;
    end;

   if (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0) and
      (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger = 1) and
      (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '04') then
    begin
      aFont.Color := clPurple;
    end;

  if(dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '02') then
    begin
      aFont.Color := clRed;
     // aFont.Style := [fsBold];
    end;
end;

end.
