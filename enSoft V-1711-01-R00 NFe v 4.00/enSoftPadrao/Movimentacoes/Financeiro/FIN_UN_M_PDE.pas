unit FIN_UN_M_PDE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  vcl.wwdblook, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, Data.DB,
  vcl.wwdatsrc, Vcl.DBCtrls,Datasnap.DBClient, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, vcl.Wwdbedit, frxClass, frxDBSet;

type
  TFIN_FM_M_PDE = class(TForm)
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
    cbbPlanoContas: TwwDBLookupCombo;
    btnSair: TBitBtn;
    btnGravar: TBitBtn;
    cdsTempPeqDesp: TClientDataSet;
    cdsTempPeqDespDtaLancto: TDateTimeField;
    cdsTempPeqDesphistorico: TStringField;
    cdsTempPeqDespidplano: TStringField;
    cdsTempPeqDespvlrlancto: TCurrencyField;
    wwDBGrid1: TwwDBGrid;
    txtVlrLancamento: TwwDBEdit;
    Label8: TLabel;
    CAD_DB_R_PCT: TfrxDBDataset;
    CAD_FR_R_PCT: TfrxReport;
    CAD_CD_R_PCT: TClientDataSet;
    btnVisPct: TButton;
    Label50: TLabel;
    txtFornecedor: TJvDBComboEdit;
    txtPctDescPadrao: TDBText;
    cdsTempPeqDespid_fornecedor: TStringField;
    cdsTempPeqDespint_nomefor: TStringField;
    procedure cbbPlanoContasEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    Procedure GravarDados;
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cdsTempPeqDespNewRecord(DataSet: TDataSet);
    procedure txtHistoricoExit(Sender: TObject);
    procedure btnVisPctClick(Sender: TObject);
    procedure txtFornecedorButtonClick(Sender: TObject);
    procedure txtFornecedorExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIN_FM_M_PDE: TFIN_FM_M_PDE;

implementation

{$R *.dfm}

uses uDmGeral,uProxy, PSQ_UN_X_FOR;

procedure TFIN_FM_M_PDE.btnSairClick(Sender: TObject);
begin
  if not cdsTempPeqDesp.IsEmpty then
     begin
       cdsTempPeqDesp.cancel;
     end;
  cdsTempPeqDesp.Close;
  close;
end;

procedure TFIN_FM_M_PDE.btnVisPctClick(Sender: TObject);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   CAD_CD_R_PCT.Close;
   CAD_CD_R_PCT.Data :=
   CAD_CD_R_PCT.DataRequest(
           VarArrayOf([1,'%']));

   if not CAD_CD_R_PCT.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(CAD_FR_R_PCT.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;
        dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_PCT.Name,xCodLme,xRevLme,nil);
        CAD_FR_R_PCT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
//        CAD_FR_R_PCT.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        CAD_FR_R_PCT.PrepareReport();
        CAD_FR_R_PCT.ShowReport();
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');

end;

procedure TFIN_FM_M_PDE.btnGravarClick(Sender: TObject);
begin

  if cdsTempPeqDesp.FieldByName('id_fornecedor').text = '' then
     begin
       ShowMessage('O campo "Fornecedor" deve ser preenchido!');
       cdsTempPeqDesp.FieldByName('id_fornecedor').FocusControl;
       exit;
     end;

  if cdsTempPeqDesp.FieldByName('HISTORICO').text = '' then
     begin
       ShowMessage('O campo "Histórico" deve ser preenchido!');
       cdsTempPeqDesp.FieldByName('HISTORICO').FocusControl;
       exit;
     end;

  if length(cdsTempPeqDesp.FieldByName('HISTORICO').text) < 5 then
     begin
       ShowMessage('O campo "Histórico" deve ter pelo menos 5 caracteres!');
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

  if MessageDlg('Confirma a gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       GravarDados;
     end
  else
     if txtVlrLancamento.CanFocus then
        txtVlrLancamento.SetFocus;
end;

procedure TFIN_FM_M_PDE.cbbPlanoContasEnter(Sender: TObject);
begin
  dmGeral.BusPlanoCta(90,' '''+'1'+''','''+'4'+''' ');
 // dmGeral.BusPlanoCta(92,'0');
  cbbPlanoContas.DropDown;
end;

procedure TFIN_FM_M_PDE.cdsTempPeqDespNewRecord(DataSet: TDataSet);
begin
  cdsTempPeqDespvlrlancto.AsCurrency := 0;
end;

procedure TFIN_FM_M_PDE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmGeral.BUS_CD_M_PAG_TIT.Close;
  //FreeAndNil(FIN_FM_M_PDE);
end;

procedure TFIN_FM_M_PDE.FormCreate(Sender: TObject);
begin
  cdsTempPeqDesp.CreateDataSet;
  cdsTempPeqDesp.Insert;

  cdsTempPeqDespDtaLancto.AsDateTime :=
          dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;

  dmGeral.BusPlanoCta(90,' '''+'1'+''','''+'4'+''' ');


end;

procedure TFIN_FM_M_PDE.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFIN_FM_M_PDE.FormShow(Sender: TObject);
begin
  cdsTempPeqDesp.FieldByName('id_fornecedor').AsString :=
      dmGeral.CAD_CD_C_PAR_CTRpde_id_fornecedor.AsString;
end;

procedure TFIN_FM_M_PDE.GravarDados;
var
   SMPrincipal: TSMClient;
   retorno: String;
begin
  //Busca sequencia no servidor
  Screen.Cursor := crHourGlass;

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    retorno := SMPrincipal.enGerPeqDesp(
                      cdsTempPeqDesp.FieldByName('id_fornecedor').AsInteger,
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
    Screen.Cursor := crDefault;
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

  txtFornecedor.SetFocus




end;

procedure TFIN_FM_M_PDE.txtHistoricoExit(Sender: TObject);
begin
  if btnVisPct.Focused or
     btnSair.Focused or
     txtFornecedor.Focused then
     exit;

  cbbPlanoContas.DropDown;
end;

procedure TFIN_FM_M_PDE.txtFornecedorButtonClick(Sender: TObject);
begin
  PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
  PSQ_FM_X_FOR.ShowModal;
  if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
     begin
       cdsTempPeqDesp.FieldByName('id_fornecedor').AsString :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString;
       cdsTempPeqDesp.FieldByName('int_nomefor').text       :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
     end;
   PSQ_FM_X_FOR.Free;
end;

procedure TFIN_FM_M_PDE.txtFornecedorExit(Sender: TObject);
begin
  if btnSair.Focused  then
     begin
       exit;
     end;

  cdsTempPeqDesp.FieldByName('INT_NOMEFOR').Text := '';

  if cdsTempPeqDesp.FieldByName('ID_FORNECEDOR').Text = '' then
     begin
       ShowMessage('O campo "Fornecedor" deve ser prenchido.');
       txtFornecedor.SetFocus;
       abort;
     end;

  dmGeral.BusFornecedor(0,txtFornecedor.Text);
  if not dmGeral.CAD_CD_C_FOR_TesValObrigatorio(dmGeral.BUS_CD_C_FOR) then
     begin
       cdsTempPeqDesp.FieldByName('ID_FORNECEDOR').text := '';
       cdsTempPeqDesp.FieldByName('INT_NOMEFOR').text  := '';
       txtFornecedor.SetFocus;
       exit;
     end;

  cdsTempPeqDesp.FieldByName('INT_NOMEFOR').text :=
          dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;

end;

end.


