unit FIN_UN_M_PQD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  vcl.wwdblook, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, Data.DB,
  vcl.wwdatsrc, Vcl.DBCtrls,Datasnap.DBClient, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid;

type
  TFIN_FM_M_PQD = class(TForm)
    lblTitulo: TLabel;
    pnlPrincipal: TPanel;
    pnlCentral: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dpkData: TJvDBDateEdit;
    dso: TwwDataSource;
    txtHistorico: TDBEdit;
    txtVlrLancamento: TDBEdit;
    cbbPlanoContas: TwwDBLookupCombo;
    btnSair: TBitBtn;
    btnGravar: TBitBtn;
    cdsTempPeqDesp: TClientDataSet;
    cdsTempPeqDespDtaLancto: TDateTimeField;
    cdsTempPeqDesphistorico: TStringField;
    cdsTempPeqDespidplano: TStringField;
    cdsTempPeqDespvlrlancto: TCurrencyField;
    procedure cbbPlanoContasEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    Procedure GravarDados;
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cdsTempPeqDespNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIN_FM_M_PQD: TFIN_FM_M_PQD;

implementation

{$R *.dfm}

uses uDmGeral,uProxy;

procedure TFIN_FM_M_PQD.btnSairClick(Sender: TObject);
begin
  if not cdsTempPeqDesp.IsEmpty then
     begin
       cdsTempPeqDesp.cancel;
     end;
  cdsTempPeqDesp.Close;
  close;
end;

procedure TFIN_FM_M_PQD.btnGravarClick(Sender: TObject);
begin
  if cdsTempPeqDesp.FieldByName('HISTORICO').text = '' then
     begin
       ShowMessage('O campo "Histórico" deve ser preenchido!');
       cdsTempPeqDesp.FieldByName('HISTORICO').FocusControl;
       exit;
     end;

  if length(cdsTempPeqDesp.FieldByName('HISTORICO').text) < 10 then
     begin
       ShowMessage('O campo "Histórico" deve ter pelo menos 10 caracteres!');
       cdsTempPeqDesp.FieldByName('HISTORICO').FocusControl;
       exit;
     end;

  if cdsTempPeqDesp.FieldByName('idplano').text = '' then
     begin
       ShowMessage('O campo "Plano de contas" deve ser preenchido!');
       cdsTempPeqDesp.FieldByName('idplano').FocusControl;
       exit;
     end;

  if cdsTempPeqDesp.FieldByName('vlrlancto').AsCurrency < 0 then
     begin
       ShowMessage('Valor. lançamento inválido!');

       cdsTempPeqDesp.FieldByName('vlrlancto').FocusControl;
       exit;
     end;

  if cdsTempPeqDesp.FieldByName('vlrlancto').AsCurrency = 0 then
     begin
       ShowMessage('O campo "Vlr. lançamento" deve ser preenchido!');

       cdsTempPeqDesp.FieldByName('vlrlancto').FocusControl;
       exit;
    end;

  GravarDados;
end;

procedure TFIN_FM_M_PQD.cbbPlanoContasEnter(Sender: TObject);
begin
 // dmGeral.BusPlanoCta(90,' '''+'1'+''','''+'4'+''' ');
  dmGeral.BusPlanoCta(92,'0');
  cbbPlanoContas.DropDown;
end;

procedure TFIN_FM_M_PQD.cdsTempPeqDespNewRecord(DataSet: TDataSet);
begin
  cdsTempPeqDespvlrlancto.AsCurrency := 0;
end;

procedure TFIN_FM_M_PQD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmGeral.BUS_CD_M_PAG_TIT.Close;
  FreeAndNil(FIN_FM_M_PQD);
end;

procedure TFIN_FM_M_PQD.FormCreate(Sender: TObject);
begin
  cdsTempPeqDesp.CreateDataSet;
  cdsTempPeqDesp.Insert;

  cdsTempPeqDespDtaLancto.AsDateTime :=
          dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;

  dmGeral.BusPlanoCta(90,' '''+'1'+''','''+'4'+''' ');
end;

procedure TFIN_FM_M_PQD.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(27) then
     begin
       Key := #0;
       Close;
     end;
  if (Key = chr(13)) then
     begin
       Perform(wm_NextDlgCtl,0,0);
       Key := #0;
     end;

  if (key= char(9)) then
     key := #0;
end;

procedure TFIN_FM_M_PQD.GravarDados;
var
   SMPrincipal: TSMClient;
   retorno: String;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    retorno := SMPrincipal.enGerPeqDesp(
                      dmGeral.CAD_CD_C_PAR_CTRpde_id_fornecedor.AsInteger,
                      dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').AsInteger,
                      dmGeral.CAD_CD_C_PAR_CTRpde_id_local_titulo.AsInteger,
                      dmGeral.CAD_CD_C_PAR_CTRpde_id_forma_pag.AsInteger,
                      dmGeral.CAD_CD_C_PAR_CTRpde_id_ccusto.AsInteger,
                       dmGeral.CAD_CD_C_PAR_CTRpde_id_tipo_financeiro.AsInteger,
                      dmGeral.CAD_CD_C_PAR_CTRid_empresa.AsInteger,
                      cdsTempPeqDespidplano.AsString,
                      cdsTempPeqDesphistorico.AsString,
                      cdsTempPeqDespDtaLancto.AsDateTime,
                      cdsTempPeqDespDtaLancto.AsDateTime,
                      cdsTempPeqDespDtaLancto.AsDateTime,
                      cdsTempPeqDespvlrlancto.AsCurrency);

  finally
    FreeAndNil(SMPrincipal);
  end;

  if retorno <> 'OK' then
     begin
        ShowMessage(retorno);
     end
  else
     begin
       ShowMessage('Gravação realizada com sucesso!');
     end;
  cdsTempPeqDesp.Insert;
  cdsTempPeqDespDtaLancto.AsDateTime :=
          dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;

  txtHistorico.SetFocus
end;

end.


