unit CSU_UN_C_FOR_NFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, vcl.wwdatsrc, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TCSU_FM_C_FOR_NFE = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    grdNfe: TwwDBGrid;
    dso: TwwDataSource;
    grdItens: TwwDBGrid;
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
    lblVlrCusto: TLabel;
    txtVlrCusto: TDBEdit;
    dsoItens: TwwDataSource;
    lblPagamentos: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lblAberto: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    pnlAberto: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    procedure FormShow(Sender: TObject);
    procedure grdNfeCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_C_FOR_NFE: TCSU_FM_C_FOR_NFE;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCSU_FM_C_FOR_NFE.FormShow(Sender: TObject);
begin
  dmGeral.AtualizarGridItens(grdItens,'int_desc_item',16,10);
  grdNfe.SetFocus;
end;

procedure TCSU_FM_C_FOR_NFE.grdNfeCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  AFont.Style:= [fsbold];

  if (dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger > 0) then
    begin
      AFont.Color := clBlue;
    end;

  // Situação de NFe FATURADA normnal. Cor Verde
  if (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0) and
    (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger = 1) {and
    ( (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_RECIBO').AsString <> '')  or
    (trim(dmGeral.BUS_CD_M_NFE.FieldByName('SERIE').AsString) = 'X') or
    (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_ECF').AsInteger = 1) or
    (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_ECF').AsInteger = 3)
    )} then
    begin
      AFont.Color := clGreen;
    end;

  // Situação de NFe Inutilizada. Cor Marrom  -
  if (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0) and
    (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger = 1) and
    (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '05') then
    begin
      AFont.Color := clMaroon;
    end;

  // Situação de NFe CANCELADA. Cor Vermelho
  if(dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '02') then
    begin
      AFont.Color := clRed;
    end;

  // Situação de NFe DENEGADA. Cor Roxa
  if (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0) and
    (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger = 1) and
    (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '04') then
    begin
      AFont.Color := clPurple;
    end;

  // Situação Nota fiscal com Pré-venda pendente. Cor Rosa
  if (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger = 0) and
    (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger = 0) and
    (dmGeral.BUS_CD_M_NFE.FieldByName('PREVENDA').AsBoolean) then
    begin
      AFont.Color := $00B56AFF;
    end;
end;

end.
