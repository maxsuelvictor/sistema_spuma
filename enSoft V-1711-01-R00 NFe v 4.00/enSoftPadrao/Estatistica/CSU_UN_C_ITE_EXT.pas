unit CSU_UN_C_ITE_EXT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, vcl.wwdatsrc, Vcl.StdCtrls,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TCSU_FM_C_ITE_EXT = class(TForm)
    pnlPrincipal: TPanel;
    pnlCentral: TPanel;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    dso: TwwDataSource;
    dsoNfe: TwwDataSource;
    dbItens: TwwDBGrid;
    lblICMSNormal: TLabel;
    lblICMSSubstituido: TLabel;
    lblOutros: TLabel;
    lblVlrBase: TLabel;
    lblVlrICMS: TLabel;
    lblPer: TLabel;
    lblVlrBaseSubs: TLabel;
    lblVlrICMSSubs: TLabel;
    lblIPI: TLabel;
    lblVlrPis: TLabel;
    lblCofins: TLabel;
    lblVlrFrete: TLabel;
    lblVlrOutras: TLabel;
    lblVlrCusto: TLabel;
    txtVlrBase: TDBEdit;
    txtVlrICMS: TDBEdit;
    txtper: TDBEdit;
    txtVlrBaseSubs: TDBEdit;
    txtVlrICMSSubs: TDBEdit;
    txtVlrIpi: TDBEdit;
    txtVlrPis: TDBEdit;
    txtVlrCofins: TDBEdit;
    txtVlrFrete: TDBEdit;
    txtVlrOutras: TDBEdit;
    txtVlrCusto: TDBEdit;
    dgFes: TwwDBGrid;
    lblPagamentos: TLabel;
    dsoNfeIte: TwwDataSource;
    Label1: TLabel;
    edtEmpresa: TLabel;
    procedure dbItensDblClick(Sender: TObject);
    procedure dbItensRowChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_C_ITE_EXT: TCSU_FM_C_ITE_EXT;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCSU_FM_C_ITE_EXT.dbItensDblClick(Sender: TObject);
begin
  if (dmGeral.BUS_CD_M_EXT_ITEorigem.AsInteger = 0) or (dmGeral.BUS_CD_M_EXT_ITEorigem.AsInteger = 1) or
     (dmGeral.BUS_CD_M_EXT_ITEorigem.AsInteger = 7) or (dmGeral.BUS_CD_M_EXT_ITEorigem.AsInteger = 8) then
     begin
       dmgeral.BUS_CD_M_NFE.Close;
       dmgeral.BUS_CD_M_NFE.Data := dmgeral.BUS_CD_M_NFE.DataRequest( VarArrayOf([12,dmgeral.BUS_CD_M_EXT_ITEid_fiscal.Text]))
     end
  else if (dmGeral.BUS_CD_M_EXT_ITEorigem.AsInteger = 6) then
     begin
       dmgeral.BUS_CD_M_NFE.Close;
       dmgeral.BUS_CD_M_NFE.Data := dmgeral.BUS_CD_M_NFE.DataRequest( VarArrayOf([15,dmgeral.BUS_CD_M_EXT_ITEid_pedido.Text]));

       if dmgeral.BUS_CD_M_NFE.IsEmpty then
        begin
          ShowMessage('Não existe nota fiscal para este documento!');
        end
       else
         begin
           if not dmgeral.BUS_CD_M_NFEfaturada.AsBoolean then
            begin
              ShowMessage('A nota fiscal não foi faturada.');
            end;
        end;
     end
  else if (dmGeral.BUS_CD_M_EXT_ITEorigem.AsInteger = 9) then
     begin
       dmgeral.BUS_CD_M_NFE.Close;
       dmgeral.BUS_CD_M_NFE.Data := dmgeral.BUS_CD_M_NFE.DataRequest( VarArrayOf([13,dmgeral.BUS_CD_M_EXT_ITEid_ordem.Text]));

       if dmgeral.BUS_CD_M_NFE.IsEmpty then
        begin
          ShowMessage('Não existe nota fiscal para este documento!');
        end
       else
         begin
           if not dmgeral.BUS_CD_M_NFEfaturada.AsBoolean then
            begin
              ShowMessage('A nota fiscal não foi faturada.');
            end;
        end;
     end
   else
     ShowMessage('Não existe nota fiscal para este documento!');
end;

procedure TCSU_FM_C_ITE_EXT.dbItensRowChanged(Sender: TObject);
begin
  if (dmGeral.BUS_CD_M_EXT_ITEorigem.AsInteger <> 0) and (dmGeral.BUS_CD_M_EXT_ITEorigem.AsInteger <> 1) and
     (dmGeral.BUS_CD_M_EXT_ITEorigem.AsInteger <> 7) and (dmGeral.BUS_CD_M_EXT_ITEorigem.AsInteger <> 8) then
     begin
       dmgeral.BUS_CD_M_NFE.Close;
     end;
end;

procedure TCSU_FM_C_ITE_EXT.FormShow(Sender: TObject);
begin
  edtEmpresa.Caption := dmgeral.BUS_CD_M_FESid_empresa.AsString + ' - ' + dmgeral.BUS_CD_M_FESint_nomefan.AsString;
  dmGeral.BUS_CD_M_EXT_ITE.Last;


end;

end.
