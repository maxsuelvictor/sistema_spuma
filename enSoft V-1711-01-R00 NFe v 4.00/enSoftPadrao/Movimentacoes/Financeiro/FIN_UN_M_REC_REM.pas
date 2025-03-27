unit FIN_UN_M_REC_REM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExMask, JvToolEdit, JvDBControls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB, vcl.wwdatsrc,
  vcl.wwdblook, Vcl.Grids, vcl.wwdbigrd,ShellApi,
  vcl.wwdbgrid, vcl.Wwdbedit, Vcl.Buttons, Datasnap.DBClient;

type
  TFIN_FM_M_REC_REM = class(TForm)
    pnlPrincipal: TPanel;
    pnlCentral: TPanel;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    dbGrid: TwwDBGrid;
    btnFiltrar: TButton;
    btnGerarRemessa: TButton;
    lblEmpresa: TLabel;
    lblContaCorrente: TLabel;
    lblDataMovimento: TLabel;
    dso: TwwDataSource;
    cbbContaCorrente: TComboBox;
    txtDataMovimento: TJvDateEdit;
    cbbEmpresa: TComboBox;
    Label1: TLabel;
    txtLocalArquivo: TMemo;
    BitBtn1: TBitBtn;
    lblSelecionarTodos: TLabel;
    lblDesmarcarTodos: TLabel;
    Label2: TLabel;
    cbbTipoOcorrencia: TComboBox;
    BUS_CD_M_REC_ABE: TClientDataSet;
    BUS_CD_M_REC_ABEid_titulo: TIntegerField;
    BUS_CD_M_REC_ABEid_empresa: TIntegerField;
    BUS_CD_M_REC_ABEid_cliente: TIntegerField;
    BUS_CD_M_REC_ABEnum_parcela: TWideStringField;
    BUS_CD_M_REC_ABEdta_emissao: TDateField;
    BUS_CD_M_REC_ABEhistorico: TWideStringField;
    BUS_CD_M_REC_ABEvlr_parcela: TFMTBCDField;
    BUS_CD_M_REC_ABEvlr_original: TFMTBCDField;
    BUS_CD_M_REC_ABEdta_vencimento: TDateField;
    BUS_CD_M_REC_ABEdta_original: TDateField;
    BUS_CD_M_REC_ABEvlr_saldo: TFMTBCDField;
    BUS_CD_M_REC_ABEid_fiscal: TIntegerField;
    BUS_CD_M_REC_ABEorigem: TIntegerField;
    BUS_CD_M_REC_ABEid_forma_pag: TIntegerField;
    BUS_CD_M_REC_ABEche_conta: TIntegerField;
    BUS_CD_M_REC_ABEche_cheque: TIntegerField;
    BUS_CD_M_REC_ABEche_banco: TWideStringField;
    BUS_CD_M_REC_ABEche_emitente: TWideStringField;
    BUS_CD_M_REC_ABEche_agencia: TWideStringField;
    BUS_CD_M_REC_ABEtipo_lancamento: TIntegerField;
    BUS_CD_M_REC_ABEid_local_titulo: TIntegerField;
    BUS_CD_M_REC_ABEid_plano: TWideStringField;
    BUS_CD_M_REC_ABEbol_nosso_numero: TWideStringField;
    BUS_CD_M_REC_ABEcar_taxa: TFloatField;
    BUS_CD_M_REC_ABEcar_motivo_can: TWideStringField;
    BUS_CD_M_REC_ABEcar_dta_can: TDateField;
    BUS_CD_M_REC_ABEcod_lme: TWideStringField;
    BUS_CD_M_REC_ABErev_lme: TWideStringField;
    BUS_CD_M_REC_ABEint_nomecli: TWideStringField;
    BUS_CD_M_REC_ABEint_nomefpg: TWideStringField;
    BUS_CD_M_REC_ABEint_nomelto: TWideStringField;
    BUS_CD_M_REC_ABEint_nomepct: TWideStringField;
    BUS_CD_M_REC_ABEBUS_SQ_M_REC_FAT: TDataSetField;
    BUS_CD_M_REC_ABEBUS_SQ_M_REC_PAG: TDataSetField;
    BUS_CD_M_REC_ABEint_nomeemp: TWideStringField;
    BUS_CD_M_REC_ABEint_numeronf: TIntegerField;
    BUS_CD_M_REC_ABEseq_nosso_numero: TIntegerField;
    BUS_CD_M_REC_ABEbol_chave: TIntegerField;
    BUS_CD_M_REC_ABEbol_id_conta: TIntegerField;
    BUS_CD_M_REC_ABEcar_taxa_ope: TFloatField;
    BUS_CD_M_REC_ABEcar_n_lote_id_resp: TIntegerField;
    BUS_CD_M_REC_ABEcar_n_lote_id_conta: TIntegerField;
    BUS_CD_M_REC_ABEid_baixa: TIntegerField;
    BUS_CD_M_REC_ABEcar_n_lote: TWideStringField;
    BUS_CD_M_REC_ABEint_selecao: TBooleanField;
    BUS_CD_M_REC_ABEsituacao_chq: TIntegerField;
    BUS_CD_M_REC_ABEid_mch: TIntegerField;
    BUS_CD_M_REC_ABEid_vendedor: TIntegerField;
    BUS_CD_M_REC_ABEcar_id_maquineta: TIntegerField;
    BUS_CD_M_REC_ABEid_credito: TIntegerField;
    BUS_CD_M_REC_ABEint_nomectcbol: TWideStringField;
    BUS_CD_M_REC_ABEint_descorigem: TWideStringField;
    BUS_CD_M_REC_ABEint_atraso: TIntegerField;
    BUS_CD_M_REC_ABEint_vlr_corrigido: TFloatField;
    BUS_CD_M_REC_ABEint_vlr_juros: TFloatField;
    BUS_CD_M_REC_ABEint_numpedvenda: TIntegerField;
    BUS_CD_M_REC_ABEbol_banco: TIntegerField;
    BUS_CD_M_REC_ABEint_docimpresso: TIntegerField;
    BUS_CD_M_REC_ABEint_numordem: TIntegerField;
    BUS_CD_M_REC_ABEdct_id_conta: TIntegerField;
    BUS_CD_M_REC_ABEdct_dta_descontado: TDateField;
    BUS_CD_M_REC_ABEdct_id_desc: TIntegerField;
    BUS_CD_M_REC_ABEint_id_ors: TIntegerField;
    BUS_CD_M_REC_ABEint_fpg_sgq_presta_conta: TBooleanField;
    dsRecAbe: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    lblEntradas: TLabel;
    Panel2: TPanel;
    Label17: TLabel;
    Panel3: TPanel;
    Label28: TLabel;
    BUS_CD_M_REC_ABEbol_remessa_env: TBooleanField;
    BUS_CD_M_REC_ABEbol_remessa_dta: TDateField;
    BUS_CD_M_REC_ABEbol_remessa_id_func: TIntegerField;
    BUS_CD_M_REC_ABEbol_remessa_nome_arq: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbbContaCorrenteChange(Sender: TObject);
    procedure cbbEmpresaChange(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnGerarRemessaClick(Sender: TObject);
    function VerificarCampos:Boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure lblSelecionarTodosClick(Sender: TObject);
    procedure lblDesmarcarTodosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  private
    { Private declarations }
    var
      id_conta,id_empresa:string;
  public
    { Public declarations }
  end;

var
  FIN_FM_M_REC_REM: TFIN_FM_M_REC_REM;

implementation

{$R *.dfm}

uses uDmGeral, FIN_RN_M_BOL,enFunc;

function TFIN_FM_M_REC_REM.VerificarCampos:Boolean;
var
  mens:string;
begin
   result := true;
   mens := '';
   if (id_conta = '') then
     begin
       mens := mens + 'Conta Corrente'+#13+#10;
     end;

   if (id_empresa = '') then
     begin
       mens := mens + 'Empresa'+#13+#10;
     end;

   if (txtDataMovimento.Text = '  /  /    ') then
     begin
       mens := mens + 'Data Movimento'+#13+#10;
     end;

   if (mens <> '') then
     begin
       result := false;
       mens := 'Deve-se preencher os seguintes campos:'+#13+#10+mens;
       ShowMessage(mens);
     end;

end;


procedure TFIN_FM_M_REC_REM.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (trim(BUS_CD_M_REC_ABE.FieldByName('bol_nosso_numero').AsString) = '') then
      begin
        AFont.Color := clPurple;
      end;

  if (trim(BUS_CD_M_REC_ABE.FieldByName('bol_nosso_numero').AsString) <> '') and
     (BUS_CD_M_REC_ABE.FieldByName('bol_remessa_env').AsBoolean = false)
      then
      begin
        AFont.Color := clGreen;
      end;
end;

procedure TFIN_FM_M_REC_REM.BitBtn1Click(Sender: TObject);
begin
  ShellExecute(handle,'explore',PChar(txtLocalArquivo.Text+'\'), '','',SW_SHOWMAXIMIZED);
end;

procedure TFIN_FM_M_REC_REM.btnFiltrarClick(Sender: TObject);
var
  data: String;
begin

  if (VerificarCampos = true) then
     begin
       dmGeral.BUS_CD_M_REC.Close;
       dmGeral.BUS_CD_M_REC.Data :=
              dmGeral.BUS_CD_M_REC.DataRequest(
                                   VarArrayOf([100,id_empresa,id_conta,txtDataMovimento.Text]));
       dmGeral.BUS_CD_M_REC.IndexFieldNames := 'INT_NOMECLI;DTA_VENCIMENTO';

       data :=  DateToStr(xDataSis);

       BUS_CD_M_REC_ABE.Close;
       BUS_CD_M_REC_ABE.Data :=
              BUS_CD_M_REC_ABE.DataRequest(VarArrayOf([125,id_empresa,data]));
//       BUS_CD_M_REC_ABE.IndexFieldNames := 'INT_NOMECLI;DTA_VENCIMENTO';
     end;
end;

procedure TFIN_FM_M_REC_REM.btnGerarRemessaClick(Sender: TObject);
  procedure MostraMensagem;
  begin
    ShowMessage('Mensagem');
  end;

var
  Diretorio:string;
begin
  if (VerificarCampos = true) then
     begin
       try
         dmGeral.BUS_CD_M_REC.Filtered := true;
         dmGeral.BUS_CD_M_REC.Filter := ' INT_SELECAO = TRUE';
         if dmGeral.BUS_CD_M_REC.IsEmpty then
            begin
              Showmessage('Nenhum boleto foi encontrado para poder gerar remessa.');
              exit;
            end;
         if Dc_MessageDlgCheck('Deseja gerar a remessa com a ocorrência: ' +
            cbbTipoOcorrencia.Items[cbbTipoOcorrencia.ItemIndex]+'?', mtConfirmation, [mbYes, mbNo],
            0, mrNo, true, false,'', @MostraMensagem) = 7 then
            begin
              dmGeral.BUS_CD_M_REC.Filtered := false;
              dmGeral.BUS_CD_M_REC.IndexFieldNames := 'INT_NOMECLI;DTA_VENCIMENTO';
              exit;
            end;

         //Diretorio := ExtractFilePath(Application.ExeName)+'Emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString +'\RemessaBoleto';
         Diretorio := txtLocalArquivo.text;
         if not DirectoryExists(Diretorio) then
                ForceDirectories(Diretorio);
         if DirectoryExists(Diretorio) then
            begin
              dmGeral.BusContaCorr(0,id_conta);
              GerarRemessa(dmGeral.BUS_CD_M_REC,dmGeral.BUS_CD_C_CTC,Diretorio, inttostr(cbbTipoOcorrencia.itemindex));
            end
         else
           begin
             ShowMessage('Não foi possível criar o diretório para geração de arquivo de remessa.');
           end;
       finally
         dmGeral.BUS_CD_M_REC.Filtered := false;
       end;
     end;
end;

procedure TFIN_FM_M_REC_REM.cbbContaCorrenteChange(Sender: TObject);
begin
  id_conta := copy(cbbContaCorrente.Text,1, pos(' - ',cbbContaCorrente.Text,1)-1);
  dmGeral.BusContaCorr(0,id_conta);
end;

procedure TFIN_FM_M_REC_REM.cbbEmpresaChange(Sender: TObject);
begin
  id_empresa := copy(cbbEmpresa.Text,1, pos(' - ',cbbEmpresa.Text,1)-1);
end;

procedure TFIN_FM_M_REC_REM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmGeral.BUS_CD_M_REC.Close;
//  FreeAndNil(FIN_FM_M_REC_REM);
end;

procedure TFIN_FM_M_REC_REM.FormCreate(Sender: TObject);
begin
  dmGeral.BUS_CD_M_REC.Close;
       dmGeral.BUS_CD_M_REC.Data :=
              dmGeral.BUS_CD_M_REC.DataRequest(
                                   VarArrayOf([0,'']));

   BUS_CD_M_REC_ABE.Close;
       BUS_CD_M_REC_ABE.Data :=
              BUS_CD_M_REC_ABE.DataRequest(VarArrayOf([0,'']));
end;

procedure TFIN_FM_M_REC_REM.FormShow(Sender: TObject);
begin
  id_conta := '';
  id_empresa := '';

  dmGeral.BusContaCorr(3,'1');
  while (not dmGeral.BUS_CD_C_CTC.Eof) do
    begin
      cbbContaCorrente.AddItem(dmGeral.BUS_CD_C_CTC.FieldByName('ID_CONTA').AsString+' - '+dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString,nil);
      dmGeral.BUS_CD_C_CTC.Next;
    end;

  dmGeral.BusEmpresa(1,'%');
  while (not dmGeral.BUS_CD_C_PAR.Eof) do
    begin
      cbbEmpresa.AddItem(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsString+' - '+dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString,nil);
      dmGeral.BUS_CD_C_PAR.Next;
    end;

  //txtLocalArquivo.Text := ExtractFilePath(Application.ExeName)+'Emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString +'\RemessaBoleto\';
 // txtLocalArquivo.Text := 'C:\enSoftLoja_Remessa\Emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;
   txtLocalArquivo.Text := trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PATH_REMESSA').AsString);
end;

procedure TFIN_FM_M_REC_REM.lblDesmarcarTodosClick(Sender: TObject);
begin

  if dmGeral.BUS_CD_M_REC.IsEmpty then
     begin
       ShowMessage('Nenhum registro encontrado.');
       abort;
     end;

  if dmGeral.BUS_CD_M_REC.RecordCount>0 then
     begin
       dmGeral.BUS_CD_M_REC.First;
       while not dmGeral.BUS_CD_M_REC.EOF do
         begin
           dmGeral.BUS_CD_M_REC.Edit;
           dmGeral.BUS_CD_M_REC.FieldByName('INT_SELECAO').AsBoolean := false;
           dmGeral.BUS_CD_M_REC.Next;
         end;
       dmGeral.BUS_CD_M_REC.First;
     end;
end;

procedure TFIN_FM_M_REC_REM.lblSelecionarTodosClick(Sender: TObject);
begin

  if dmGeral.BUS_CD_M_REC.IsEmpty then
     begin
       ShowMessage('Nenhum registro encontrado.');
       abort;
     end;


  if dmGeral.BUS_CD_M_REC.RecordCount>0 then
     begin
       dmGeral.BUS_CD_M_REC.First;
       while not dmGeral.BUS_CD_M_REC.EOF do
         begin
           dmGeral.BUS_CD_M_REC.Edit;
           dmGeral.BUS_CD_M_REC.FieldByName('INT_SELECAO').AsBoolean := true;
           dmGeral.BUS_CD_M_REC.Next;
         end;
       dmGeral.BUS_CD_M_REC.First;
     end;
end;

end.



