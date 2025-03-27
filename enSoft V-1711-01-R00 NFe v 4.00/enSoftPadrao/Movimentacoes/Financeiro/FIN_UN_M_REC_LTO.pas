unit FIN_UN_M_REC_LTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Buttons, vcl.wwdblook, Data.DB,
  vcl.wwdatsrc, JvToolEdit, JvDBControls, Vcl.DBCtrls, Vcl.Mask, JvExMask,
  Datasnap.DBClient;

type
  TFIN_FM_M_REC_LTO = class(TForm)
    pnlCima: TJvPanel;
    lblCodificacaoLMestre: TLabel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    lblCliente: TLabel;
    txtClientes: TJvDBComboEdit;
    txtClienteNome: TDBText;
    lblNTitulo: TLabel;
    txtNTitulo: TDBMemo;
    lblPrevBaixa: TLabel;
    dpkPrevBaixa: TJvDBDateEdit;
    dso: TwwDataSource;
    lblLocalTitulo: TLabel;
    cbbLocalTitulo: TwwDBLookupCombo;
    lblVlrSaldo: TLabel;
    txtVlrSaldo: TDBMemo;
    BitBtn1: TBitBtn;
    FIN_CD_M_REC: TClientDataSet;
    FIN_CD_M_RECid_titulo: TIntegerField;
    FIN_CD_M_RECid_cliente: TIntegerField;
    FIN_CD_M_RECnum_parcela: TWideStringField;
    FIN_CD_M_RECvlr_parcela: TFMTBCDField;
    FIN_CD_M_RECdta_vencimento: TDateField;
    FIN_CD_M_RECvlr_saldo: TFMTBCDField;
    FIN_CD_M_RECid_local_titulo: TIntegerField;
    FIN_CD_M_RECint_nomecli: TWideStringField;
    FIN_CD_M_RECint_nomelto: TWideStringField;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIN_FM_M_REC_LTO: TFIN_FM_M_REC_LTO;

implementation

{$R *.dfm}

uses uDmGeral, FIN_UN_M_REC;

procedure TFIN_FM_M_REC_LTO.BitBtn1Click(Sender: TObject);
begin
  if FIN_CD_M_REC.ApplyUpdates(0) <> 0 then
     begin
       Showmessage('Erro ao tentar gravar.');
       FIN_CD_M_REC.cancel;
       exit;
     end
  else
     begin
       dmGeral.FIN_CD_M_REC.Close;
       dmGeral.FIN_CD_M_REC.Data :=
       dmGeral.FIN_CD_M_REC.DataRequest(
               VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                             FIN_CD_M_REC.FieldByName('id_titulo').AsString]));
       close;
     end;
end;

end.
