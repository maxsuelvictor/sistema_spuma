{$I ACBr.inc}

unit uNfse;

interface

uses
  IniFiles, ShellAPI,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, OleCtrls, SHDocVw, StdCtrls, Buttons, ExtCtrls,
  pcnConversao, pnfsConversao,
  ACBrNFSe, ACBrNFSeDANFSeClass,  pnfsNFSe, ACBrMail,
  ACBrBase, ACBrDFe, ACBrNFSeDANFSeFR, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Datasnap.Provider, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, vcl.wwdatsrc, vcl.wwdbigrd, vcl.wwdbgrid, ACBrUtil;

type
  TfrmNFSe = class(TForm)
    Panel1: TPanel;
    gbConfiguracoes: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    gbCertificado: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label25: TLabel;
    sbtnGetCert: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    TabSheet2: TTabSheet;
    gbGeral: TGroupBox;
    Label7: TLabel;
    sbtnLogoMarca: TSpeedButton;
    sbtnPathSalvar: TSpeedButton;
    edtLogoMarca: TEdit;
    edtPathLogs: TEdit;
    ckSalvar: TCheckBox;
    TabSheet3: TTabSheet;
    gbWebService: TGroupBox;
    ckVisualizar: TCheckBox;
    rgTipoAmb: TRadioGroup;
    gbProxy: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    TabSheet4: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitIM: TEdit;
    edtEmitRazao: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    edtEmitLogradouro: TEdit;
    edtEmitNumero: TEdit;
    edtEmitComp: TEdit;
    edtEmitBairro: TEdit;
    edtEmitCidade: TEdit;
    edtEmitUF: TEdit;
    TabSheet7: TTabSheet;
    gbEmail: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    btnSalvarConfig: TBitBtn;
    Panel2: TPanel;
    OpenDialog1: TOpenDialog;
    lblSchemas: TLabel;
    edtSchemas: TEdit;
    sbtSchemas: TSpeedButton;
    Label32: TLabel;
    edtPrestLogo: TEdit;
    sbtnPrestLogo: TSpeedButton;
    Label33: TLabel;
    edtPrefeitura: TEdit;
    cbCidades: TComboBox;
    Label6: TLabel;
    edtSenhaWeb: TEdit;
    edtCodCidade: TEdit;
    Label29: TLabel;
    ACBrNFSe1: TACBrNFSe;
    Label20: TLabel;
    edtUserWeb: TEdit;
    Label31: TLabel;
    edtEmailRemetente: TEdit;
    Label30: TLabel;
    ckSalvarSoap: TCheckBox;
    ACBrMail1: TACBrMail;
    Label34: TLabel;
    edtArqINI: TEdit;
    sbtArqINI: TSpeedButton;
    cbEmailTLS: TCheckBox;
    Danfe: TACBrNFSeDANFSeFR;
    Conexao: TFDConnection;
    cds_notafiscal: TClientDataSet;
    ds_notafiscal: TDataSource;
    dsp_notafiscal: TDataSetProvider;
    qry_notafiscal: TFDQuery;
    cds_notafiscalnumero: TWideStringField;
    cds_notafiscaldescricao: TWideStringField;
    cds_notafiscalobservacoes: TWideStringField;
    cds_notafiscalcod_cnae: TWideStringField;
    cds_notafiscalcod_municipio: TWideStringField;
    cds_notafiscalvlr_servico: TBCDField;
    cds_notafiscalcliente_id: TIntegerField;
    cds_notafiscalid: TIntegerField;
    cds_notafiscaltom_doc: TWideStringField;
    cds_notafiscaltom_ins_muni: TWideStringField;
    cds_notafiscaltom_nome: TWideStringField;
    cds_notafiscaltom_endereco: TWideStringField;
    cds_notafiscaltom_numero: TWideStringField;
    cds_notafiscaltom_bairro: TWideStringField;
    cds_notafiscaltom_estado: TWideStringField;
    cds_notafiscaltom_cod_municipio: TWideStringField;
    cds_notafiscaltom_cep: TWideStringField;
    cds_notafiscaltom_ins_est: TWideStringField;
    cds_notafiscalrecibo: TWideStringField;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwNFSe: TTreeView;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    PageControl3: TPageControl;
    tsDados: TTabSheet;
    tsConfiguracao: TTabSheet;
    Panel3: TPanel;
    btnImprimir: TButton;
    btnConsultarLote: TButton;
    btnCancNFSe: TButton;
    btnGerarEnviarLote: TButton;
    btnGerarRPS: TButton;
    btnConsultarSitLote: TButton;
    btnConsultarNFSeRPS: TButton;
    btnConsultarNFSePeriodo: TButton;
    btnGerarEnviarNFSe: TButton;
    btnEnviaremail: TButton;
    btnLinkNFSe: TButton;
    btnGerarLoteRPS: TButton;
    btnGerarEnviarSincrono: TButton;
    btnVerificarCidade: TButton;
    btnSubsNFSe: TButton;
    Button1: TButton;
    DBGrid1: TDBGrid;
    tsNFSe: TTabSheet;
    pgNfeDados: TPageControl;
    tsItens: TTabSheet;
    dgItens: TwwDBGrid;
    tsTitulos: TTabSheet;
    grdTitulos: TwwDBGrid;
    dbGrid: TwwDBGrid;
    dso: TwwDataSource;
    FAT_DS_M_NFE_ITE: TwwDataSource;
    FAT_DS_M_NFE_TIT: TwwDataSource;
    Button3: TButton;
    Button4: TButton;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Button2: TButton;
    cbbCodCanc: TComboBox;
    Label35: TLabel;
    btnDanfeSe: TButton;
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure btnGerarEnviarLoteClick(Sender: TObject);
    procedure btnConsultarLoteClick(Sender: TObject);
    procedure btnCancNFSeClick(Sender: TObject);
    procedure btnConsultarSitLoteClick(Sender: TObject);
    procedure btnGerarRPSClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ACBrNFSe1StatusChange(Sender: TObject);
    procedure ACBrNFSe1GerarLog(const Mensagem: String);
    procedure sbtSchemasClick(Sender: TObject);
    procedure sbtnPrestLogoClick(Sender: TObject);
    procedure btnConsultarNFSeRPSClick(Sender: TObject);
    procedure btnConsultarNFSePeriodoClick(Sender: TObject);
    procedure cbCidadesChange(Sender: TObject);
    function RoundTo5(Valor: Double; Casas: Integer): Double;
    procedure btnGerarEnviarNFSeClick(Sender: TObject);
    procedure btnEnviaremailClick(Sender: TObject);
    procedure btnLinkNFSeClick(Sender: TObject);
    procedure btnGerarLoteRPSClick(Sender: TObject);
    procedure btnGerarEnviarSincronoClick(Sender: TObject);
    procedure btnVerificarCidadeClick(Sender: TObject);
    procedure btnSubsNFSeClick(Sender: TObject);
    procedure sbtArqINIClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDanfeSeClick(Sender: TObject);
    {
    procedure lblMouseEnter(Sender: TObject);
    procedure lblMouseLeave(Sender: TObject);
    }
  private
    { Private declarations }
    Ok : Boolean;
    procedure GravarConfiguracao;
    procedure LerConfiguracao;
    procedure ConfiguraComponente;
    function  DescricaoSituacao(codigo:String):String;
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    procedure AlimentaComponente(NumNFSe : String);
    procedure AtuGridNota;
  public
    { Public declarations }
  end;

var
  frmNFSe: TfrmNFSe;

implementation

uses
 FileCtrl, DateUtils, Math,
 ufrmStatus,
 ACBrNFSeNotasFiscais, ACBrDFeUtil{, ACBrNFSeUtil}, uDmGeral, FAT_RN_M_NFE,
  FAT_RN_M_CXA, uProxy;

const
  SELDIRHELP = 1000;

{$R *.dfm}

(*
procedure TForm1.lblMouseEnter(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold,fsUnderline];
end;

procedure TForm1.lblMouseLeave(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold];
end;
*)

procedure TfrmNFSe.GravarConfiguracao;
var
 IniFile: String;
 Ini: TIniFile;
 StreamMemo: TMemoryStream;
begin
 IniFile := ChangeFileExt( Application.ExeName, '.ini');

 Ini := TIniFile.Create( IniFile );
 try
  Ini.WriteString( 'Emitente', 'CNPJ'       , edtEmitCNPJ.Text);
  Ini.WriteString( 'Emitente', 'IM'         , edtEmitIM.Text);
  Ini.WriteString( 'Emitente', 'RazaoSocial', edtEmitRazao.Text);
  Ini.WriteString( 'Emitente', 'Fantasia'   , edtEmitFantasia.Text);
  Ini.WriteString( 'Emitente', 'Fone'       , edtEmitFone.Text);
  Ini.WriteString( 'Emitente', 'CEP'        , edtEmitCEP.Text);
  Ini.WriteString( 'Emitente', 'Logradouro' , edtEmitLogradouro.Text);
  Ini.WriteString( 'Emitente', 'Numero'     , edtEmitNumero.Text);
  Ini.WriteString( 'Emitente', 'Complemento', edtEmitComp.Text);
  Ini.WriteString( 'Emitente', 'Bairro'     , edtEmitBairro.Text);
  Ini.WriteString( 'Emitente', 'CodCidade'  , edtCodCidade.Text);
  Ini.WriteString( 'Emitente', 'Cidade'     , edtEmitCidade.Text);
  Ini.WriteString( 'Emitente', 'UF'         , edtEmitUF.Text);

  Ini.WriteString( 'Certificado', 'Caminho' , edtCaminho.Text);
  Ini.WriteString( 'Certificado', 'Senha'   , edtSenha.Text);
  Ini.WriteString( 'Certificado', 'NumSerie', edtNumSerie.Text);

  Ini.WriteString( 'Geral', 'Schemas'   , edtSchemas.Text);
  Ini.WriteString( 'Geral', 'LogoMarca' , edtLogoMarca.Text);
  Ini.WriteString( 'Geral', 'PrestLogo' , edtPrestLogo.Text);
  Ini.WriteBool(   'Geral', 'Salvar'    , ckSalvar.Checked);
  Ini.WriteString( 'Geral', 'PathSalvar', edtPathLogs.Text);
  Ini.WriteString( 'Geral', 'Prefeitura', edtPrefeitura.Text);
  Ini.WriteString( 'Geral', 'PathINI', edtArqINI.Text);

  Ini.WriteInteger( 'WebService', 'Ambiente'  , rgTipoAmb.ItemIndex);
  Ini.WriteBool(    'WebService', 'Visualizar', ckVisualizar.Checked);
  Ini.WriteString(  'WebService', 'SenhaWeb'  , edtSenhaWeb.Text);
  Ini.WriteString(  'WebService', 'UserWeb'   , edtUserWeb.Text);
  Ini.WriteBool(    'WebService', 'SalvarSoap', ckSalvarSoap.Checked);

  Ini.WriteString( 'Proxy', 'Host' , edtProxyHost.Text);
  Ini.WriteString( 'Proxy', 'Porta', edtProxyPorta.Text);
  Ini.WriteString( 'Proxy', 'User' , edtProxyUser.Text);
  Ini.WriteString( 'Proxy', 'Pass' , edtProxySenha.Text);

  Ini.WriteString( 'Email', 'Host'     , edtSmtpHost.Text);
  Ini.WriteString( 'Email', 'Port'     , edtSmtpPort.Text);
  Ini.WriteString( 'Email', 'User'     , edtSmtpUser.Text);
  Ini.WriteString( 'Email', 'Pass'     , edtSmtpPass.Text);
  Ini.WriteString( 'Email', 'Assunto'  , edtEmailAssunto.Text);
  Ini.WriteBool(   'Email', 'SSL'      , cbEmailSSL.Checked );
  Ini.WriteBool(   'Email', 'TLS'      , cbEmailTLS.Checked );
  Ini.WriteString( 'Email', 'Remetente', edtEmailRemetente.Text);

  StreamMemo := TMemoryStream.Create;
  mmEmailMsg.Lines.SaveToStream(StreamMemo);
  StreamMemo.Seek(0, soFromBeginning);
  Ini.WriteBinaryStream( 'Email', 'Mensagem', StreamMemo);

  StreamMemo.Free;
 finally
  Ini.Free;
 end;
end;

procedure TfrmNFSe.LerConfiguracao;
var
 StreamMemo: TMemoryStream;
begin


 try
  {$IFDEF ACBrNFSeOpenSSL}
   edtCaminho.Text := '';
   edtSenha.Text   := '';

   edtNumSerie.Visible := False;
   Label25.Visible     := False;
   sbtnGetCert.Visible := False;
  {$ELSE}

   edtNumSerie.Text := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('CERT_SERIE').AsString;

   Label1.Caption   := 'Informe o número de série do certificado'#13+
                       'Disponível no Internet Explorer no menu'#13+
                       'Ferramentas - Opções da Internet - Conteúdo '#13+
                       'Certificados - Exibir - Detalhes - '#13+
                       'Número do certificado';

   Label2.Visible     := False;
   edtCaminho.Visible := False;
   edtSenha.Visible   := False;
   sbtnCaminhoCert.Visible := False;
  {$ENDIF}

  edtEmitCNPJ.Text       := dmGeral.CAD_CD_C_PAR.FieldByName('emp_cnpj').AsString;
  edtEmitIM.Text         := dmGeral.CAD_CD_C_PAR.FieldByName('emp_im').AsString;
  edtEmitRazao.Text      := dmGeral.CAD_CD_C_PAR.FieldByName('emp_razao').AsString;
  edtEmitFantasia.Text   := dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString;
  edtEmitFone.Text       := dmGeral.CAD_CD_C_PAR.FieldByName('emp_telefone').AsString;
  edtEmitCEP.Text        := dmGeral.CAD_CD_C_PAR.FieldByName('emp_cep').AsString;
  edtEmitLogradouro.Text := dmGeral.CAD_CD_C_PAR.FieldByName('emp_endereco').AsString;
  edtEmitNumero.Text     := dmGeral.CAD_CD_C_PAR.FieldByName('emp_numero').AsString;
  edtEmitComp.Text       := dmGeral.CAD_CD_C_PAR.FieldByName('emp_complemento').AsString;
  edtEmitBairro.Text     := dmGeral.CAD_CD_C_PAR.FieldByName('emp_bairro').AsString;
  edtEmitCidade.Text     := dmGeral.CAD_CD_C_PAR.FieldByName('int_nomecid').AsString;
  edtEmitUF.Text         := dmGeral.CAD_CD_C_PAR.FieldByName('int_uf').AsString;
  edtCodCidade.Text      := dmGeral.CAD_CD_C_PAR.FieldByName('id_cidade').AsString;
  cbCidades.ItemIndex    := cbCidades.Items.IndexOf(edtEmitCidade.Text + '/' +
                                                    edtCodCidade.Text + '/' +
                                                    edtEmitUF.Text);



  edtSchemas.Text    := PathWithDelim(ExtractFilePath(Application.ExeName)) + 'Schemas\NFSe\';
  edtLogoMarca.Text  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('path_logo_prefeitura').AsString;
  edtPrestLogo.Text  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('path_logo').AsString;
  ckSalvar.Checked   := true;
  edtPathLogs.Text   := ExtractFilePath(Application.ExeName) +
                                               dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString;;
  edtPrefeitura.Text := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('rps_prefeitura').AsString;
  edtArqINI.Text     := ExtractFilePath(Application.ExeName) + 'ArqINI';

   if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('SITUACAO_EMISSOR').AsInteger = 1 then
      rgTipoAmb.ItemIndex :=0  //Producao
   else
      rgTipoAmb.ItemIndex :=1; //Homologação



  ckVisualizar.Checked := true;
  edtSenhaWeb.Text     := '';
  edtUserWeb.Text      := '';
  ckSalvarSoap.Checked := true;

  edtProxyHost.Text  := '';
  edtProxyPorta.Text := '';
  edtProxyUser.Text  := '';
  edtProxySenha.Text := '';

  edtSmtpHost.Text       := '';
  edtSmtpPort.Text       := '';
  edtSmtpUser.Text       := '';
  edtSmtpPass.Text       := '';
  edtEmailAssunto.Text   := '';
  cbEmailSSL.Checked     := false;
  cbEmailTLS.Checked     := false;
  edtEmailRemetente.Text := '';

 finally

 end;
end;




procedure TfrmNFSe.ConfiguraComponente;
var
 PathMensal: String;
begin
// {$IFDEF ACBrNFSeOpenSSL}
 //  ACBrNFSe1.Configuracoes.Certificados.ArquivoPFX := edtCaminho.Text;
   ACBrNFSe1.Configuracoes.Certificados.Senha       := edtSenha.Text;
// {$ELSE}
   ACBrNFSe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
// {$ENDIF}

// ACBrNFSe1.Configuracoes.Certificados.VerificarValidade := True;

 ACBrNFSe1.Configuracoes.Arquivos.AdicionarLiteral := True;
 ACBrNFSe1.Configuracoes.Arquivos.EmissaoPathNFSe  := True;
 ACBrNFSe1.Configuracoes.Arquivos.SepararPorMes    := False;
 ACBrNFSe1.Configuracoes.Arquivos.SepararPorCNPJ   := False;
 ACBrNFSe1.Configuracoes.Arquivos.PathGer          := edtPathLogs.Text;
// ACBrNFSe1.Configuracoes.Arquivos.PathNFSe         := edtPathLogs.Text;
 ACBrNFSe1.Configuracoes.Arquivos.PathSchemas      := edtSchemas.Text;
 ACBrNFSe1.Configuracoes.Arquivos.NomeLongoNFSe    := True;

 PathMensal := ACBrNFSe1.Configuracoes.Arquivos.GetPathGer(0);



 ACBrNFSe1.Configuracoes.Arquivos.PathCan    := PathMensal;
 ACBrNFSe1.Configuracoes.Arquivos.PathSalvar := PathMensal;
 ACBrNFSe1.Configuracoes.Arquivos.Salvar     := True;

 ACBrNFSe1.Configuracoes.Geral.Salvar          := ckSalvar.Checked;
 ACBrNFSe1.Configuracoes.Geral.PathIniCidades  := edtArqINI.Text;
 ACBrNFSe1.Configuracoes.Geral.PathIniProvedor := edtArqINI.Text;
 ACBrNFSe1.Configuracoes.Geral.CodigoMunicipio := StrToIntDef(trim(edtCodCidade.Text), 0);
 ACBrNFSe1.Configuracoes.Geral.SenhaWeb        := edtSenhaWeb.Text;
 ACBrNFSe1.Configuracoes.Geral.UserWeb         := edtUserWeb.Text;

 ACBrNFSe1.Configuracoes.Geral.Emitente.CNPJ      := edtEmitCNPJ.Text;
 ACBrNFSe1.Configuracoes.Geral.Emitente.InscMun   := edtEmitIM.Text;
 ACBrNFSe1.Configuracoes.Geral.Emitente.RazSocial := edtEmitRazao.Text;

 ACBrNFSe1.Configuracoes.Geral.Emitente.WebUser      := edtUserWeb.Text;
 ACBrNFSe1.Configuracoes.Geral.Emitente.WebSenha     := edtSenhaWeb.Text;
 ACBrNFSe1.Configuracoes.Geral.Emitente.WebFraseSecr := '';

 ACBrNFSe1.Configuracoes.WebServices.Salvar     := ckSalvarSoap.Checked;
 ACBrNFSe1.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok, IntToStr(rgTipoAmb.ItemIndex+1));
 ACBrNFSe1.Configuracoes.WebServices.Visualizar := ckVisualizar.Checked;
 ACBrNFSe1.Configuracoes.WebServices.ProxyHost  := edtProxyHost.Text;
 ACBrNFSe1.Configuracoes.WebServices.ProxyPort  := edtProxyPorta.Text;
 ACBrNFSe1.Configuracoes.WebServices.ProxyUser  := edtProxyUser.Text;
 ACBrNFSe1.Configuracoes.WebServices.ProxyPass  := edtProxySenha.Text;
 ACBrNFSe1.Configuracoes.WebServices.UF         := edtEmitUF.Text;

 ACBrNFSe1.Configuracoes.Geral.SetConfigMunicipio;

 if ACBrNFSe1.DANFSe <> nil then
 begin
   ACBrNFSe1.DANFSe.Logo       := edtLogoMarca.Text;
   ACBrNFSe1.DANFSe.PrestLogo  := edtPrestLogo.Text;
   ACBrNFSe1.DANFSe.Prefeitura := edtPrefeitura.Text;
   ACBrNFSe1.DANFSe.PathPDF    := PathMensal;

//  TTipoDANFSE = ( tpPadrao, tpIssDSF, tpFiorilli );
   ACBrNFSe1.DANFSe.TipoDANFSE := tpPadrao;
 end;

 ACBrNFSe1.MAIL.Host     := edtSmtpHost.Text;
 ACBrNFSe1.MAIL.Port     := edtSmtpPort.Text;
 ACBrNFSe1.MAIL.Username := edtSmtpUser.Text;
 ACBrNFSe1.MAIL.Password := edtSmtpPass.Text;
 ACBrNFSe1.MAIL.From     := edtEmailRemetente.Text;
 ACBrNFSe1.MAIL.FromName := edtEmitRazao.Text;
 ACBrNFSe1.MAIL.SetTLS   := cbEmailTLS.Checked;
 ACBrNFSe1.MAIL.SetSSL   := cbEmailSSL.Checked;
 ACBrNFSe1.MAIL.UseThread   := False;
 ACBrNFSe1.MAIL.ReadingConfirmation := False;

 lblSchemas.Caption := ACBrNFSe1.Configuracoes.Geral.xProvedor;
end;

procedure TfrmNFSe.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   if Field.FieldName = 'legenda' then
     begin
        if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger > 0) then
           Abrush.Color := clBlue;

        // Situação de NFe FATURADA normnal. Cor Verde
        if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and

          ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString <> '')  or
            (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) = 'X') or
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 1) or
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 3)
             ) then
          begin
            Abrush.Color := clGreen;
          end;

       // Situação de NFe Inutilizada. Cor Marrom  -
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '05') then
          begin
            Abrush.Color := clMaroon;
          end;

       // Situação de NFe CANCELADA. Cor Vermelho
       if(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02') then
          begin
            Abrush.Color := clRed;
          end;

       // Situação de NFe DENEGADA. Cor Roxa
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '04') then
          begin
            Abrush.Color := clPurple;
          end;

       // Situação Nota fiscal com Pré-venda pendente. Cor Rosa
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger = 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean) then
          begin
            Abrush.Color := $00B56AFF;
          end;
     end;
end;

procedure TfrmNFSe.LoadXML(MyMemo: TMemo;
  MyWebBrowser: TWebBrowser);
begin
// MyMemo.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'temp.xml');
 //MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'temp.xml');
end;

procedure TfrmNFSe.AlimentaComponente(NumNFSe: String);
var
 ValorISS: Double;
  discriminacao:String;
  iSeq:Integer;
begin

 with ACBrNFSe1 do
  begin
   NotasFiscais.NumeroLote:='1';
   NotasFiscais.Transacao := True;


   with NotasFiscais.Add.NFSe do
    begin
     IdentificacaoRps.Numero := FormatFloat('##############0', StrToInt(NumNFSe));

     // Para o provedor ISS.NET em ambiente de Homologação mudar a série para '8'
     IdentificacaoRps.Serie := '1';

     // TnfseTipoRPS = ( trRPS, trNFConjugada, trCupom );
     IdentificacaoRps.Tipo := trRPS;

     DataEmissao := Now;

     (*
     TnfseNaturezaOperacao = ( no1, no2, no3, no4, no5, no6, no7,
                               no50, no51, no52, no53, no54, no55, no56, no57, no58, no59,
                               no60, no61, no62, no63, no64, no65, no66, no67, no68, no69,
                               no70, no71, no72, no78, no79,
                               no101, no111, no121, no201, no301,
                               no501, no511, no541, no551, no601, no701 );
     *)


     NaturezaOperacao := StrToNaturezaOperacao(ok,dmGeral.CAD_CD_C_PAR_NFE.FieldByName('rps_nat_opr').AsString);
//     NaturezaOperacao := no51;






     // TnfseSimNao = ( snSim, snNao );
     if dmGeral.CAD_CD_C_PAR.FieldByName('int_reg_tributario').AsInteger=0 then
       OptanteSimplesNacional := snSim
     else
       OptanteSimplesNacional := snNao;

     Competencia := DateToStr(now);
     // TnfseSimNao = ( snSim, snNao );


     // TnfseRegimeEspecialTributacao = ( retNenhum, retMicroempresaMunicipal, retEstimativa, retSociedadeProfissionais, retCooperativa, retMicroempresarioIndividual, retMicroempresarioEmpresaPP );
//     RegimeEspecialTributacao := retNenhum;

     RegimeEspecialTributacao := StrToRegimeEspecialTributacao(OK,dmGeral.CAD_CD_C_PAR_NFE.FieldByName('reg_esp_tri').AsString);


     //--IncentivadorCultural := snNao;

     // TnfseSimNao = ( snSim, snNao );
     // snSim = Ambiente de Produção
     // snNao = Ambiente de Homologação

     if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('SITUACAO_EMISSOR').AsInteger = 1 then
       Producao := snSim
     else
       Producao := snNao;

     OutrasInformacoes :=  trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_OBS').AsString);

     // TnfseStatusRPS = ( srNormal, srCancelado );
     //--Status := srNormal;

     // Somente Os provedores Betha, FISSLex e SimplISS permitem incluir no RPS
     // a TAG: OutrasInformacoes os demais essa TAG é gerada e preenchida pelo
     // WebService do provedor.

     //OutrasInformacoes := 'Pagamento a Vista';

     // Usado quando o RPS for substituir outro
//     RpsSubstituido.Numero := FormatFloat('#########0', i);
//     RpsSubstituido.Serie  := 'UNICA';
     // TnfseTipoRPS = ( trRPS, trNFConjugada, trCupom );
///     RpsSubstituido.Tipo   := trRPS;

     Servico.Valores.ValorServicos          := dmgeral.BUS_CD_M_NFE_CXA.FieldByName('VLR_MERCADORIA').AsCurrency -
                                               dmgeral.BUS_CD_M_NFE_CXA.FieldByName('VLR_DESCONTO').AsCurrency;
     Servico.Valores.ValorDeducoes          := 0.00;
     Servico.Valores.ValorPis               := dmgeral.BUS_CD_M_NFE_CXA.FieldByName('PIS_VALOR').AsCurrency;
     Servico.Valores.ValorCofins            := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('COF_VALOR').AsCurrency;
     Servico.Valores.ValorInss              := 0.00;
     Servico.Valores.ValorIr                := 0.00;
     Servico.Valores.ValorCsll              := 0.00;

     // TnfseSituacaoTributaria = ( stRetencao, stNormal, stSubstituicao );
     // stRetencao = snSim
     // stNormal   = snNao

     // Neste exemplo não temos ISS Retido ( stNormal = Não )
     // Logo o valor do ISS Retido é igual a zero.

     if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_SUBSTITUTO_TRIBUTARIO').AsBoolean=true) then
        Servico.Valores.IssRetido              := stRetencao
     else
        Servico.Valores.IssRetido              := stNormal;

     Servico.Valores.ValorIssRetido         := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ISS_VALOR_RETIDO').AsCurrency;

     Servico.Valores.OutrasRetencoes        := 0.00;
     //Servico.Valores.DescontoIncondicionado := dmgeral.BUS_CD_M_NFE_CXA.FieldByName('VLR_DESCONTO').AsCurrency;
     Servico.Valores.DescontoCondicionado   := 0.00;

     Servico.Valores.BaseCalculo :=  dmgeral.BUS_CD_M_NFE_CXA.FieldByName('ISS_BASE').AsCurrency;



     // No caso do provedor Ginfes devemos informar a aliquota já dividida por 100
     // para outros provedores devemos informar por exemplo 3, mas ao fazer o calculo
     // do valor do ISS devemos dividir por 100
     Servico.Valores.Aliquota    := dmgeral.CAD_CD_C_PAR_CTR.FieldByName('PER_ISS').AsCurrency;

     // Valor do ISS calculado multiplicando-se a base de calculo pela aliquota
     ValorISS := dmgeral.BUS_CD_M_NFE_CXA.FieldByName('ISS_VALOR').AsCurrency;


     // A função RoundTo5 é usada para arredondar valores, sendo que o segundo
     // parametro se refere ao numero de casas decimais.
     // exemplos: RoundTo5(50.532, -2) ==> 50.53
     // exemplos: RoundTo5(50.535, -2) ==> 50.54
     // exemplos: RoundTo5(50.536, -2) ==> 50.54

     //Servico.Valores.ValorIss := RoundTo5(ValorISS, -2);
     Servico.Valores.ValorIss := dmgeral.BUS_CD_M_NFE_CXA.FieldByName('ISS_VALOR').AsCurrency;

     Servico.Valores.ValorLiquidoNfse :=
          dmgeral.BUS_CD_M_NFE_CXA.FieldByName('VLR_LIQUIDO').AsCurrency;

     // TnfseResponsavelRetencao = ( ptTomador, rtPrestador );
     Servico.ResponsavelRetencao := ptTomador;

     Servico.ItemListaServico    := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('COD_ITE_SER').AsString;

     // Para o provedor ISS.NET em ambiente de Homologação
     // o Codigo CNAE tem que ser '6511102'
     Servico.CodigoCnae                := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('RPS_COD_CNAE').AsString; // Informação Opcional
     Servico.CodigoTributacaoMunicipio := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('COD_TRI_MCP').AsString;

     discriminacao :='';
     dmGeral.BUS_CD_M_NFE_ITE_CXA.First;
     while (not dmGeral.BUS_CD_M_NFE_ITE_CXA.EOF) do
       begin
         discriminacao := discriminacao +'Item:'+dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ITEM').AsString+'-'+
                          dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('INT_DESC_ITEM').AsString+' '+
                          'Vlr. Unit:'+FormatCurr('###,###,##0.00' ,dmgeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('VLR_UNITARIO').AsCurrency)+' '+
                          'Qtde:'+dmgeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('QTDE').AsString+' '+
                          'Vlr. Desc:'+FormatCurr('###,###,##0.00' ,dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('VLR_DESCONTO').AsCurrency)+' '+
                          'Vlr. Total:'+FormatCurr('###,###,##0.00',dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('VLR_LIQUIDO').AsCurrency)+#13+#10;
                          {'Vlr. ISS:'+FormatCurr('###,###,##0.00',dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ISS_VALOR').AsCurrency)+#13+#10;
                          'Vlr. Cofins:'+ FormatCurr('###,###,##0.00',dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('COF_VALOR').AsCurrency)+' '+
                          'Vlr. PIS:'+ FormatCurr('###,###,##0.00',dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('PIS_VALOR').AsCurrency)+#13; }
         dmGeral.BUS_CD_M_NFE_ITE_CXA.Next;
       end;

     discriminacao := discriminacao+#13+#10+'OUTRAS INFORMAÇÕES'+#13+#10;
     discriminacao := discriminacao+'Vlr. ISS: '+FormatCurr('###,###,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ISS_VALOR').AsCurrency)+#13+#10;

     if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_SUBSTITUTO_TRIBUTARIO').AsBoolean = true) or
          (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_OBS').AsString)<>''))   then
       begin

          if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_SUBSTITUTO_TRIBUTARIO').AsBoolean = true) then
            begin
              discriminacao := discriminacao+'Vlr. ISS Retido: '+FormatCurr('###,###,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ISS_VALOR_RETIDO').AsCurrency)+#13+#10;
            end;
          if (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_OBS').AsString) <> '') then
            begin
              discriminacao := discriminacao+trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_OBS').AsString)+#13+#10;
            end;
       end;



     Servico.Discriminacao             :=  discriminacao;

     // Para o provedor ISS.NET em ambiente de Homologação
     // o Codigo do Municipio tem que ser '999'
     Servico.CodigoMunicipio := trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString);

     // Informar A Exigibilidade ISS para fintelISS [1/2/3/4/5/6/7]
     Servico.ExigibilidadeISS := exiExigivel;

     // Informar para Saatri
     Servico.CodigoPais := 1058; // Brasil
     Servico.MunicipioIncidencia := StrToIntDef(trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString), 0);

    // Somente o provedor SimplISS permite infomar mais de 1 serviço

//--     with Servico.ItemServico.Add do
//--      begin
//--       Descricao     := 'SERVICO 1';
//--       Quantidade    := 1;
//--       ValorUnitario := 15.00;
//--      end;

     Prestador.Cnpj               := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CNPJ').AsString;
     Prestador.InscricaoMunicipal := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_IM').AsString;

     // Para o provedor ISSDigital deve-se informar também:
   //--  Prestador.Senha        := 'senha';
   //--  Prestador.FraseSecreta := 'frase secreta';
   //--  Prestador.cUF          := 26;

     PrestadorServico.Endereco.CodigoMunicipio := Trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString);
     PrestadorServico.RazaoSocial := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_RAZAO').AsString;

     Tomador.IdentificacaoTomador.CpfCnpj            := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cnpjcpf').AsString;

     if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_doc_im').AsString<>'' then
       Tomador.IdentificacaoTomador.InscricaoMunicipal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_doc_im').AsString
     else
       Tomador.IdentificacaoTomador.InscricaoMunicipal := '0';

     Tomador.RazaoSocial := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_nomeemi').AsString;

     Tomador.Endereco.Endereco        := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_endereco').AsString;
     Tomador.Endereco.Numero          := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_numero').AsString;
     Tomador.Endereco.Complemento     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_complemento').AsString;
     Tomador.Endereco.Bairro          := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_bairro').AsString;
     Tomador.Endereco.CodigoMunicipio := trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cod_cidade').AsString);
     Tomador.Endereco.UF              := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_estado').AsString;

     if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMITENTE').AsString)='EX' then
         Tomador.Endereco.CodigoPais    := StrToInt(trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_COD_PAIS').AsString))
     else
         Tomador.Endereco.CodigoPais      := 1058;

     Tomador.Endereco.CEP             := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cep').AsString;
	 //Provedor Equiplano é obrigatório o pais e IE
     if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMITENTE').AsString)='EX' then
         Tomador.Endereco.xPais    := trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_NOM_PAIS').AsString)
     else
        Tomador.Endereco.xPais    := 'BRASIL';

     Tomador.IdentificacaoTomador.InscricaoEstadual := trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_doc_ie').AsString);

     Tomador.Contato.Telefone := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_telefone').AsString;
     Tomador.Contato.Email    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_email').AsString;








     // Usado quando houver um intermediario na prestação do serviço
//     IntermediarioServico.RazaoSocial        := 'razao';
//     IntermediarioServico.CpfCnpj            := '00000000000';
//     IntermediarioServico.InscricaoMunicipal := '12547478';


     // Usado quando o serviço for uma obra
//     ConstrucaoCivil.CodigoObra := '88888';
//     ConstrucaoCivil.Art        := '433';

    end;

  end;

  end;

procedure TfrmNFSe.sbtnCaminhoCertClick(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o Certificado';
 OpenDialog1.DefaultExt := '*.pfx';
 OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);

 if OpenDialog1.Execute then
  begin
   edtCaminho.Text := OpenDialog1.FileName;
  end;
end;

procedure TfrmNFSe.sbtnGetCertClick(Sender: TObject);
begin
  edtNumSerie.Text := ACBrNFSe1.SSL.SelecionarCertificado;
end;

procedure TfrmNFSe.sbtnLogoMarcaClick(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o Logo';
 OpenDialog1.DefaultExt := '*.bmp';
 OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);

 if OpenDialog1.Execute then
 begin
  edtLogoMarca.Text := OpenDialog1.FileName;
 end;
end;

procedure TfrmNFSe.sbtnPathSalvarClick(Sender: TObject);
var
 Dir : string;
begin
 if Length(edtPathLogs.Text) <= 0
  then Dir := ExtractFileDir(application.ExeName)
  else Dir := edtPathLogs.Text;

 if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP)
  then edtPathLogs.Text := Dir;
end;

procedure TfrmNFSe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmGeral.BUS_CD_M_NFE_CXA.Filtered := false;
end;

procedure TfrmNFSe.FormCreate(Sender: TObject);
begin
 dmGeral.BUS_CD_M_NFE_CXA.Filtered := true;
 dmGeral.BUS_CD_M_NFE_CXA.Filter := 'ind_nf=2';


 tsDados.TabVisible := false;
 tsConfiguracao.TabVisible := false;

 LerConfiguracao;
 ConfiguraComponente;
 Danfe.FastFile := ExtractFileDir(application.ExeName) + '\Report\DANFSE.FR3';

 Danfe.PathPDF := ExtractFileDir(application.ExeName) + '\Report\';
end;

procedure TfrmNFSe.btnSalvarConfigClick(Sender: TObject);
begin
 GravarConfiguracao;
 LerConfiguracao;
 ConfiguraComponente;

end;

function TfrmNFSe.DescricaoSituacao(codigo:String):String;
begin
    if ACBrNFSe1.WebServices.ConsSitLoteRPS.Situacao = '1' then
      Result := 'Não recebido';
    if ACBrNFSe1.WebServices.ConsSitLoteRPS.Situacao = '2' then
      Result := 'Não processado';
    if ACBrNFSe1.WebServices.ConsSitLoteRPS.Situacao = '3' then
      Result := 'Processado com erro';
    if ACBrNFSe1.WebServices.ConsSitLoteRPS.Situacao = '4' then
      Result := 'Processado com sucesso';
end;

procedure TfrmNFSe.AtuGridNota;
var
  id_fiscal: string;
begin
  id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
  FAT_RN_M_CXA.FatAtuDadosTelaCxa;
  dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
end;

procedure TfrmNFSe.btnGerarEnviarLoteClick(Sender: TObject);
var
 xProtocolo,nRPS,numero,id_fiscal,situacao,msg:String;
 i,diff_dias:integer; // Provisório
 QtdeReg: String;
 BUS_CD_C_PAR_NFE:TClientDataSet;
begin



  if (dmGeral.BUS_CD_M_NFE_CXA.IsEmpty) then
     begin
       ShowMessage('Nenhuma nota fiscal foi selecionada!');
       exit;
     end;

  id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;

  if MessageDlg('Deseja realmente faturar a nota de serviço?',mtConfirmation,[mbYes,mbNo],0) = mrYes  then
      begin
         if id_fiscal <> dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString then
           begin
             ShowMessage('Nota fiscal não está mais disponível pois já foi processada por outro usuário.');
             abort;
           end;


         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ind_nf').AsInteger <> 2) then // 2 - Somente nota de Serviço
            begin
              ShowMessage('Nota fiscal deve ser somente de serviço.');
              exit;
            end;

         // Situação de NFe CANCELADA. Cor Vermelho
         if(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02') then
            begin
              ShowMessage('Nota fiscal está cancelada.');
              exit;
            end;


         // Situação de NFe FATURADA normnal. Cor Verde
         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
            ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString <> '')  or
              (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) = 'X') or
              (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 1) or
              (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 3) ) then
            begin
              ShowMessage('A nota fiscal já foi faturada.');
              exit;
            end;

         // Situação de NFe Inutilizada. Cor Marrom  -
         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '05') then
            begin
              ShowMessage('Nota fiscal está inutilizada.');
              exit;
            end;


         // Situação de NFe DENEGADA. Cor Roxa
         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '04') then
            begin
              ShowMessage('Nota fiscal está denegada.');
              exit;
            end;

         // Situação Nota fiscal com Pré-venda pendente. Cor Rosa
         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger = 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 0) and
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean) then
            begin
              ShowMessage('Nota fiscal está com Pré-venda pendente.');
              exit;
            end;

        if dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime <
           dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime then
           begin
             ShowMessage('Operação não permitida! A data do seu caixa é menor que a data de emissão da nota fiscal selecionada.' + #13 +
                          'Verifique a data do seu caixa.');
             exit;
           end;

       ACBrNFSe1.NotasFiscais.Clear;
       nRPS := trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUM_RPS').AsString);
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUM_RPS').AsString = '') or
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUM_RPS').AsString='0') then
          begin
           BUS_CD_C_PAR_NFE := TClientDataSet.Create(nil);
           BUS_CD_C_PAR_NFE.RemoteServer :=dmGeral.pcConecao;
           BUS_CD_C_PAR_NFE.ProviderName := 'BUS_DP_C_PAR_NFE';
           BUS_CD_C_PAR_NFE.Close;
           BUS_CD_C_PAR_NFE.Data :=
           BUS_CD_C_PAR_NFE.DataRequest(
                      VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));

           nRPS := BUS_CD_C_PAR_NFE.FieldByName('cod_lot_rps').AsString;
           BUS_CD_C_PAR_NFE.Edit;
           BUS_CD_C_PAR_NFE.FieldByName('cod_lot_rps').AsInteger :=
                       BUS_CD_C_PAR_NFE.FieldByName('cod_lot_rps').AsInteger+1;
           BUS_CD_C_PAR_NFE.Post;
           if BUS_CD_C_PAR_NFE.ApplyUpdates(0) <> 0 then
             begin
               ShowMessage('Erro no processo de geração no nº Lote/RPS.');
               BUS_CD_C_PAR_NFE.Close;
               BUS_CD_C_PAR_NFE.Free;
               exit;
             end;
            dmGeral.BUS_CD_M_NFE_CXA.Edit;
            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUM_RPS').AsString := nRPS;

            if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) OR
               (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0)  then
              begin
                // A linha do IF foi Colocado por Maxsuel Victor em 14/07/2016
                if ((trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CFO').AsString)<>'5929') and
                    (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CFO').AsString)<>'6929')) then
                   begin
                     // Maxsuel Victor 22/09/2015
                        // Se alterar algum código aqui , verificar se é necessário fazer pra Pré-Venda, pois o código
                        // abaixo existe no momento da geração da pré-venda também.
                     FAT_RN_M_NFE.FatRecalTributItens(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
                    // FAT_RN_M_NFE.FatFormarNfeObs(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
                     fatNfeCalcTotal(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);


                   end;
              end;

            dmGeral.BUS_CD_M_NFE_CXA.Post;
            dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
          end;

       dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);

       AlimentaComponente(nRPS);
       ACBrNFSe1.Enviar(nRPS);
       xProtocolo:= ACBrNFSe1.WebServices.ConsSitLoteRPS.Protocolo;

       showmessage('Situação do Lote: '+ DescricaoSituacao(ACBrNFSe1.WebServices.ConsSitLoteRPS.situacao) +#13+
                   'Protocolo: '+xProtocolo);

       MemoDados.Lines.Add('Nome XML: '+ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
       MemoDados.Lines.Add('Nota Numero: '+ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero);
       MemoDados.Lines.Add('Código de Verificação: '+ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao);


       if ACBrNFSe1.WebServices.ConsSitLoteRPS.Situacao ='4' then //Processo com sucesso
         begin
             numero := ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero;

             dmGeral.BUS_CD_M_NFE_CXA.Edit;
             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString       :=  Numero;


             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime :=
             dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;
             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_DOCUMENTO').AsDateTime :=
               dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;

             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ABERTURA').AsString  :=
                     dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString;
             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_TIPO_EMISSAO').AsString  :=
                     dmGeral.BUS_CD_C_PAR_NFE.FieldByName('danf_tipo_emissao').AsString;
             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_TIPO_AMBIENTE').AsString :=
                     dmGeral.BUS_CD_C_PAR_NFE.FieldByName('situacao_emissor').AsString;
             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('MODELO').AsString    := '55';
             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger  := 3;
             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean := true;
             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger   := 1;
             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_PROTOCOLO').AsString :=  ACBrNFSe1.WebServices.ConsSitLoteRPS.Protocolo;


             diff_dias := DaysBetween(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime,dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime);
             if not dmGeral.BUS_CD_M_NFE_TIT_CXA.IsEmpty then
                begin
                  i:= 0;
                  QtdeReg := IntToStr(dmGeral.BUS_CD_M_NFE_TIT_CXA.RecordCount);
                  dmGeral.BUS_CD_M_NFE_TIT_CXA.IndexFieldNames := 'DIAS';
                  dmGeral.BUS_CD_M_NFE_TIT_CXA.First;


                  while not dmGeral.BUS_CD_M_NFE_TIT_CXA.eof do
                     begin
                       inc(i);
                       dmGeral.BUS_CD_M_NFE_TIT_CXA.edit;
                       dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('NUM_PARCELA').AsString :=
                               Numero + '-' +
                               inttostr(i) + '/' + QtdeReg;
                       dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DTA_VENCIMENTO').AsDateTime :=
                          dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DTA_VENCIMENTO').AsDateTime + diff_dias;
                       dmGeral.BUS_CD_M_NFE_TIT_CXA.Post;
                       dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                     end;
                end;



             dmGeral.BUS_CD_M_NFE_CXA.Post;

             if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                begin
                  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0 then
                      begin
                         dmGeral.BUS_CD_M_ORV.Close;
                         dmGeral.BUS_CD_M_ORV.Data :=
                             dmGeral.BUS_CD_M_ORV.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger,
                                                                            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMPRESA').AsInteger,'1','']));
                         if not dmGeral.BUS_CD_M_ORV.IsEmpty then
                           begin
                             dmGeral.BUS_CD_M_ORV.Edit;
                             dmGeral.BUS_CD_M_ORV.FieldByName('STATUS').AsInteger := 3;
                             dmGeral.BUS_CD_M_ORV.Post;
                             if dmGeral.BUS_CD_M_ORV.ApplyUpdates(0) = 0 then
                                begin
                                  Showmessage('Nota fiscal de Serviço faturada com sucesso!');
                                end;
                             dmGeral.BUS_CD_M_ORV.Close;
                           end;
                      end
                  else if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0 then
                       begin
                          dmGeral.BUS_CD_M_PED.Close;
                          dmGeral.BUS_CD_M_PED.Data :=
                               dmGeral.BUS_CD_M_PED.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMPRESA').AsInteger,
                                                                              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger]));
                           if not dmGeral.BUS_CD_M_PED.IsEmpty then
                             begin
                               dmGeral.BUS_CD_M_PED.Edit;
                               dmGeral.BUS_CD_M_PED.FieldByName('SITUACAO').AsInteger := 3;
                               dmGeral.BUS_CD_M_PED.Post;
                               if dmGeral.BUS_CD_M_PED.ApplyUpdates(0) = 0 then
                                  begin
                                    Showmessage('Nota fiscal de Serviço faturada com sucesso!');
                                  end;
                               dmGeral.BUS_CD_M_PED.Close;
                             end;
                       end
                  else
                     begin
                       Showmessage('Nota fiscal de Serviço faturada com sucesso!');
                     end;
                end;
         end;
      end;

  ACBrNFSe1.NotasFiscais.Clear;

end;





procedure TfrmNFSe.btnConsultarLoteClick(Sender: TObject);
var
 Lote, Protocolo : String;
begin

 OpenDialog1.Title := 'Selecione o RPS';
 OpenDialog1.DefaultExt := '*-rps.xml';
 OpenDialog1.Filter := 'Arquivos RPS (*-rps.xml)|*-rps.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrNFSe1.NotasFiscais.Clear;
   ACBrNFSe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName, False);
  end;

 if not(InputQuery('Consultar Lote', 'Número do Lote', Lote))
  then exit;
 if not(InputQuery('Consultar Lote', 'Número do Protocolo', Protocolo))
  then exit;

 ACBrNFSe1.ConsultarLoteRps(Lote, Protocolo);

 MemoResp.Lines.Text   := UTF8Encode(ACBrNFSe1.WebServices.ConsLote.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(ACBrNFSe1.WebServices.ConsLote.RetWS);
 //LoadXML(MemoResp, WBResposta);
end;

procedure TfrmNFSe.btnCancNFSeClick(Sender: TObject);
var
  Codigo,numero, situacao,ReabrePed,retorno: String;
  SMPrincipal: TSMClient;
begin

   if cbbCodCanc.ItemIndex = -1 then
     begin
       ShowMessage('É necessário preencher o código de cancelamento.');
       exit;
     end;
   codigo := copy(cbbCodCanc.Items[cbbCodCanc.ItemIndex],1,1);
   if not ((codigo = '1') or (codigo='2') or (codigo='4')) then
     begin
       ShowMessage('Código de cancelamento inválido.');
       exit;
     end;


 OpenDialog1.Title := 'Selecione a NFSe';
 OpenDialog1.DefaultExt := '*-NFSe.xml';
 OpenDialog1.Filter := 'Arquivos NFSe (*-NFSe.xml)|*-NFSe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrNFSe1.NotasFiscais.Clear;
   ACBrNFSe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName, False);
   numero := ACBrNFSe1.NotasFiscais.Items[0].NFSe.numero;

   if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       ShowMessage('Não existe registro de nota fiscal.');
       exit;
     end;

   if not dmgeral.BUS_CD_M_NFE_CXA.Locate('NUMERO',numero,[]) then
     begin
       ShowMessage('Não foi encontrado registro de nota fiscal de nº '+numero);
       exit;
     end;


  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger >0) then
     begin
       ShowMessage('Operação não permitida, pois a nota é do tipo garantia.');
       exit;
     end;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean then
     begin
       ShowMessage('Nota fiscal com pré-venda.');
       exit;
     end;

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ind_nf').AsInteger <> 2) then // 2 - Nota de Serviço
      begin
        ShowMessage('Só é permitido cancelar nota fiscal que tenha somente serviço.');
        exit;
      end;

  if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
           (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) ) then
     begin
        ShowMessage('Nota fiscal em aberto! ' + #13 +
                    'Só é permitido cancelar nota fiscal encerrada.');
        exit;
     end;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02' then
     begin
       ShowMessage('Nota fiscal já foi cancelada.');
       exit;
     end;


   //Provedor Equiplano é obrigatório o motivo de cancelamento
   //if not(InputQuery('Cancelar NFSe', 'Motivo de Cancelamento', Motivo))
   // then exit;
   //ACBrNFSe1.NotasFiscais.Items[0].NFSe.MotivoCancelamento:= Motivo;

//   ACBrNFSe1.WebServices.CancelaNFSe(Codigo, '1', '03310700000170', '0306223', '0');
   if MessageDlg('Deseja realmente cancelar a nota de serviço?',mtConfirmation,[mbYes,mbNo],0) = mrNo  then
      begin
        exit;
      end;

   ACBrNFSe1.CancelarNFSe(Codigo);

   MemoDados.Lines.Add('Arquivo Carregado de: '+ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
   MemoResp.Lines.LoadFromFile(ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
   MemoDados.Lines.Add('Retorno do Cancelamento:');

   MemoDados.Lines.Add('Cód. Cancelamento: ' + ACBrNFSe1.WebServices.CancNfse.CodigoCancelamento);
   if ACBrNFSe1.WebServices.CancNfse.DataHora <> 0 then
     MemoDados.Lines.Add('Data / Hora      : ' + DateTimeToStr(ACBrNFSe1.WebServices.CancNfse.DataHora));
  // LoadXML(MemoResp, WBResposta);

   if  ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.Sucesso ='true' then
       situacao := 'Cancelado com sucesso'
   else
       situacao := 'Erro no processo de cancelamento ou a nota já tinha sido cancelada';


   showmessage('Cód. Cancelamento: ' + ACBrNFSe1.WebServices.CancNfse.CodigoCancelamento +#13+
               'Data / Hora      : ' + DateTimeToStr(ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.DataHora) +#13+
               'Informação: '+situacao);


   if  ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.Sucesso ='true' then
     begin
       numero := ACBrNFSe1.WebServices.CancNfse.NumeroNFSe;

       try
         if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0)  then
            begin
               ReabrePed := 'S';
               dmGeral.BUS_CD_M_NFE.Close;
               dmGeral.BUS_CD_M_NFE.Data :=
               dmGeral.BUS_CD_M_NFE.DataRequest(
                  VarArrayOf([15,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger]));
               dmGeral.BUS_CD_M_NFE.First;
               if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                  begin
                    while not dmGeral.BUS_CD_M_NFE.Eof do
                       begin
                         if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger then
                            begin
                              if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                 (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                  (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                  (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                  (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                     ReabrePed := 'N';

                            end;
                         dmGeral.BUS_CD_M_NFE.Next;
                       end;
                  end;
               dmGeral.BUS_CD_M_NFE.close;

               if ReabrePed = 'S' then
                  begin
                   if MessageDlg('Deseja reabrir pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                      begin
                        ReabrePed := 'S';
                      end
                   else
                      begin
                         ReabrePed := 'N';
                      end;
                  end
               else
                  begin
                    ShowMessage('Não será possivel reabrir pedido pois há notas faturadas.');
                  end;
            end;


         if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) and
            ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsString = '') or
            (not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0)))) then
            begin
             ReabrePed := 'S';
             dmGeral.BUS_CD_M_NFE.Close;
             dmGeral.BUS_CD_M_NFE.Data :=
             dmGeral.BUS_CD_M_NFE.DataRequest(
                VarArrayOf([13,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger]));
             dmGeral.BUS_CD_M_NFE.First;
             if dmGeral.BUS_CD_M_NFE.RecordCount > 1 then
                begin
                  while not dmGeral.BUS_CD_M_NFE.Eof do
                     begin
                       if dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
                             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger then
                          begin
                            if (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '02') and
                                (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '04') and
                                (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString <> '05') and
                                (not( (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger =0) and
                                (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger =0)))     then
                                  ReabrePed := 'N';
                          end;
                       dmGeral.BUS_CD_M_NFE.Next;
                     end;
                end;
             dmGeral.BUS_CD_M_NFE.close;

             if ReabrePed = 'S' then
                begin
                 if MessageDlg('Deseja reabrir ordem serviço?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                    begin
                      ReabrePed := 'S';
                    end
                 else
                    begin
                       ReabrePed := 'N';
                    end;
                end
             else
                begin
                  ShowMessage('Não será possivel reabrir OS pois há outras notas não canceladas.');
                end;
            end;

         if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger > 0 then
            begin
              ReabrePed := 'N';
            end;

         SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
         retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,'','Normal',ReabrePed,'');
         if retorno <> 'OK' then
            begin
              ShowMessage('Erro: ' + retorno);
            end
         else
            begin
              Showmessage('Nota fiscal cancelada com sucesso!');
            end;
       finally
         FreeAndNil(SMPrincipal);
         AtuGridNota;
       end;
     end;
  end;

end;


procedure TfrmNFSe.btnConsultarSitLoteClick(Sender: TObject);
var
 Protocolo : String;
begin
 if not(InputQuery('Consultar Situação do Lote', 'Número do Protocolo', Protocolo)) then
   exit;

 ACBrNFSe1.ConsultarSituacao(Protocolo);

 ShowMessage( 'Nº Lote: '+ACBrNFSe1.WebServices.ConsSitLoteRPS.NumeroLote +#13+
              'Situacao: '+DescricaoSituacao(ACBrNFSe1.WebServices.ConsSitLoteRPS.situacao));

 MemoResp.Lines.Text   := UTF8Encode(ACBrNFSe1.WebServices.ConsSitLoteRPS.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(ACBrNFSe1.WebServices.ConsSitLoteRPS.RetWS);
 //LoadXML(MemoResp, WBResposta);
end;

procedure TfrmNFSe.btnDanfeSeClick(Sender: TObject);
var
 discriminacao:String;
begin
 OpenDialog1.Title := 'Selecione a NFSe';
 OpenDialog1.DefaultExt := '*-NFSe.xml';
 OpenDialog1.Filter := 'Arquivos NFSe (*-NFSe.xml)|*-NFSe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrNFSe1.NotasFiscais.Clear;
   ACBrNFSe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
   discriminacao := stringreplace( ACBrNFSe1.NotasFiscais.Items[0].NFSe.Servico.Discriminacao, ';', #13+#10,
                          [rfReplaceAll, rfIgnoreCase]);
   ACBrNFSe1.NotasFiscais.Items[0].NFSe.Servico.Discriminacao :=discriminacao;
   ACBrNFSe1.NotasFiscais.Imprimir;
   ACBrNFSe1.NotasFiscais.ImprimirPDF;

   MemoDados.Lines.Add('Arquivo Carregado de: '+ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
   MemoDados.Lines.Add('Nota Numero: '+ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero);
   MemoDados.Lines.Add('Código de Verificação: '+ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao);
   MemoDados.Lines.Add('Data de Emissão: '+DateToStr(ACBrNFSe1.NotasFiscais.Items[0].NFSe.DataEmissao));
   MemoResp.Lines.LoadFromFile(ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
 //  LoadXML(MemoResp, WBResposta);

  end;
end;

procedure TfrmNFSe.btnGerarRPSClick(Sender: TObject);
var
 vAux : String;
begin
 if not(InputQuery('Gerar RPS', 'Numero do RPS', vAux))
  then exit;

 ACBrNFSe1.NotasFiscais.Clear;
 AlimentaComponente(vAux);
// ACBrNFSe1.NotasFiscais.Items[0].SaveToFile;

 ShowMessage('Arquivo gerado em: '+ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
 MemoDados.Lines.Add('Arquivo gerado em: '+ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
 MemoResp.Lines.LoadFromFile(ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
 LoadXML(MemoResp, WBResposta);

 PageControl2.ActivePageIndex := 1;
end;

procedure TfrmNFSe.btnImprimirClick(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione a NFSe';
 OpenDialog1.DefaultExt := '*-NFSe.xml';
 OpenDialog1.Filter := 'Arquivos NFSe (*-NFSe.xml)|*-NFSe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrNFSe1.NotasFiscais.Clear;
   ACBrNFSe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
   ACBrNFSe1.NotasFiscais.Imprimir;
   ACBrNFSe1.NotasFiscais.ImprimirPDF;

   MemoDados.Lines.Add('Arquivo Carregado de: '+ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
   MemoDados.Lines.Add('Nota Numero: '+ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero);
   MemoDados.Lines.Add('Código de Verificação: '+ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao);
   MemoDados.Lines.Add('Data de Emissão: '+DateToStr(ACBrNFSe1.NotasFiscais.Items[0].NFSe.DataEmissao));
   MemoResp.Lines.LoadFromFile(ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
   LoadXML(MemoResp, WBResposta);
   PageControl2.ActivePageIndex := 1;
  end;
end;

procedure TfrmNFSe.ACBrNFSe1StatusChange(Sender: TObject);
begin
 case ACBrNFSe1.Status of
  stNFSeIdle : begin
            if ( frmStatus <> nil ) then frmStatus.Hide;
           end;
  stNFSeRecepcao : begin
                   if ( frmStatus = nil )
                    then frmStatus := TfrmStatus.Create(Application);
                   frmStatus.lblStatus.Caption := 'Enviando dados da NFSe...';
                   frmStatus.Show;
                   frmStatus.BringToFront;
                  end;
  stNFSeConsultaSituacao : begin
                             if ( frmStatus = nil ) then
                               frmStatus := TfrmStatus.Create(Application);
                             frmStatus.lblStatus.Caption := 'Consultando a Situação...';
                             frmStatus.Show;
                             frmStatus.BringToFront;
                           end;
  stNFSeConsulta : begin
                   if ( frmStatus = nil )
                    then frmStatus := TfrmStatus.Create(Application);
                   frmStatus.lblStatus.Caption := 'Consultando...';
                   frmStatus.Show;
                   frmStatus.BringToFront;
                  end;
  stNFSeCancelamento : begin
                       if ( frmStatus = nil )
                        then frmStatus := TfrmStatus.Create(Application);
                       frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFSe...';
                       frmStatus.Show;
                       frmStatus.BringToFront;
                      end;
  stNFSeEmail : begin
                if ( frmStatus = nil )
                 then frmStatus := TfrmStatus.Create(Application);
                frmStatus.lblStatus.Caption := 'Enviando Email...';
                frmStatus.Show;
                frmStatus.BringToFront;
               end;
 end;
 Application.ProcessMessages;
end;

procedure TfrmNFSe.ACBrNFSe1GerarLog(const Mensagem: String);
begin
 memoLog.Lines.Add(Mensagem);
end;

procedure TfrmNFSe.sbtSchemasClick(Sender: TObject);
var
 Dir : string;
begin
 if Length(edtSchemas.Text) <= 0
  then Dir := ExtractFileDir(application.ExeName)
  else Dir := edtSchemas.Text;

 if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP)
  then edtSchemas.Text := Dir;
end;

procedure TfrmNFSe.sbtnPrestLogoClick(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o Logo';
 OpenDialog1.DefaultExt := '*.bmp';
 OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);

 if OpenDialog1.Execute then
 begin
  edtPrestLogo.Text := OpenDialog1.FileName;
 end;
end;

procedure TfrmNFSe.btnConsultarNFSeRPSClick(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o Rps';
 OpenDialog1.DefaultExt := '*-Rps.xml';
 OpenDialog1.Filter := 'Arquivos Rps (*-Rps.xml)|*-Rps.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrNFSe1.NotasFiscais.Clear;
   ACBrNFSe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

   ACBrNFSe1.ConsultarNFSeporRps(ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Numero,
                                ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Serie,
                                TipoRPSToStr(ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Tipo));

   MemoResp.Lines.Text   := UTF8Encode(ACBrNFSe1.WebServices.ConsNfseRps.RetWS);
   memoRespWS.Lines.Text := UTF8Encode(ACBrNFSe1.WebServices.ConsNfseRps.RetWS);
   LoadXML(MemoResp, WBResposta);
  end;
end;

procedure TfrmNFSe.btnConsultarNFSePeriodoClick(Sender: TObject);
var
 DataInicial, DataFinal : String;
begin
 if not(InputQuery('Consultar NFSe por Período', 'Data Inicial (DD/MM/AAAA):', DataInicial))
  then exit;
 if not(InputQuery('Consultar NFSe por Período', 'Data Final (DD/MM/AAAA):', DataFinal))
  then exit;

 ACBrNFSe1.ConsultarNFSe(StrToDate(DataInicial), StrToDate(DataFinal));

 MemoResp.Lines.Text   := UTF8Encode(ACBrNFSe1.WebServices.ConsNfse.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(ACBrNFSe1.WebServices.ConsNfse.RetWS);
 LoadXML(MemoResp, WBResposta);
end;

procedure TfrmNFSe.cbCidadesChange(Sender: TObject);
var
 Tamanho: Integer;
begin
 Tamanho   := Length(Trim(cbCidades.Text));

 edtEmitCidade.Text := Copy(cbCidades.Text, 1, Tamanho - 11);
 edtEmitUF.Text     := Copy(cbCidades.Text, Tamanho - 1, 2);
 edtCodCidade.Text  := Copy(cbCidades.Text, Tamanho - 9, 7);
end;

// Função criada para arredondar valores quando a n Casa for maior ou igual a 5
// pois a função RoundTo arredonda quando a n Casa for maior ou igual a 6
function TfrmNFSe.RoundTo5(Valor: Double; Casas: Integer): Double;
var
 xValor, xDecimais: String;
 p, nCasas: Integer;
 nValor: Double;
begin
 nValor := Valor;
 xValor := Trim(FloatToStr(Valor));
 p      := pos(',', xValor);
 if Casas < 0
  then nCasas := - Casas
  else nCasas := Casas;
 if p > 0
  then begin
   xDecimais := Copy(xValor, p + 1, length(xValor));
   if length(xDecimais) > nCasas
    then begin
     if xDecimais[nCasas + 1] >= '5'
      then SetRoundMode(rmUP)
      else SetRoundMode(rmNearest);
    end;
   nValor := RoundTo(Valor, Casas);
  end;
 Result := nValor;
end;

procedure TfrmNFSe.btnGerarEnviarNFSeClick(Sender: TObject);
var
 vNumRPS, sNomeArq : String;
begin
 //**************************************************************************
 //
 // A function Gerar só esta disponivel para alguns provedores.
 //
 //**************************************************************************

 if not(InputQuery('Gerar e Enviar NFSe', 'Numero do RPS', vNumRPS))
  then exit;

 ACBrNFSe1.NotasFiscais.Clear;
 AlimentaComponente(vNumRPS);

 ACBrNFSe1.Gerar(StrToInt(vNumRPS));
 sNomeArq := ACBrNFSe1.NotasFiscais.Items[0].NomeArq;

 ACBrNFSe1.NotasFiscais.Clear;
 ACBrNFSe1.NotasFiscais.LoadFromFile(sNomeArq);
 ACBrNFSe1.NotasFiscais.Imprimir;

 MemoDados.Lines.Add('Arquivo Carregado de: '+ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
 MemoResp.Lines.LoadFromFile(ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
 LoadXML(MemoResp, WBResposta);
 PageControl2.ActivePageIndex := 1;
end;

procedure TfrmNFSe.btnEnviaremailClick(Sender: TObject);
var
 vAux: String;
 sCC: TStrings;
begin
 OpenDialog1.Title := 'Selecione a NFSe';
 OpenDialog1.DefaultExt := '*-NFSe.xml';
 OpenDialog1.Filter := 'Arquivos NFSe (*-NFSe.xml)|*-NFSe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrNFSe1.NotasFiscais.Clear;
   ACBrNFSe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

   if not(InputQuery('Enviar e-mail', 'Destinatário', vAux))
    then exit;

   sCC:=TStringList.Create;
   sCC.Clear;  // Usando para add outros e-mail como Com-Cópia

   ACBrNFSe1.NotasFiscais.Items[0].EnviarEmail(vAux
                                               , edtEmailAssunto.Text
                                               , mmEmailMsg.Lines
                                               , True //Enviar PDF junto
                                               , nil //Lista com emails que serão enviado cópias - TStrings
                                               , nil // Lista de anexos - TStrings
                                                );

   sCC.Free;

   MemoDados.Lines.Add('Arquivo Carregado de: '+ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
   MemoResp.Lines.LoadFromFile(ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
   LoadXML(MemoResp, WBResposta);
   PageControl2.ActivePageIndex := 1;
  end;
end;

procedure TfrmNFSe.btnLinkNFSeClick(Sender: TObject);
var
 vNumNFSe, sCodVerif, sLink : String;
begin
 if not(InputQuery('Gerar o Link da NFSe', 'Numero da NFSe', vNumNFSe))
  then exit;
 if not(InputQuery('Gerar o Link da NFSe', 'Codigo de Verificacao', sCodVerif))
  then exit;

 sLink := ACBrNFSe1.LinkNFSe(StrToIntDef(vNumNFSe, 0), sCodVerif);

 MemoResp.Lines.Add('Link Gerado: ' + sLink);
 PageControl2.ActivePageIndex := 0;
end;

procedure TfrmNFSe.btnGerarLoteRPSClick(Sender: TObject);
var
 vAux, vNumLote : String;
begin
 //**************************************************************************
 //
 // A function GerarLote apenas gera o XML do lote, assina se necessário
 // e valida, salvando o arquivo com o nome: <lote>-lot-rps.xml na pasta Ger
 // Não ocorre o envio para nenhum webservice.
 //
 //**************************************************************************

 if not(InputQuery('Gerar e Enviar Lote', 'Numero do RPS', vAux))
  then exit;

 if not(InputQuery('Gerar e Enviar Lote', 'Numero do Lote', vNumLote))
  then exit;

 ACBrNFSe1.NotasFiscais.Clear;
 AlimentaComponente(vAux);
 ACBrNFSe1.GerarLote(vNumLote);

 ShowMessage('Arquivo gerado em: '+ACBrNFSe1.NotasFiscais.Items[0].NomeArq);

 ACBrNFSe1.NotasFiscais.Clear;
end;

procedure TfrmNFSe.btnGerarEnviarSincronoClick(Sender: TObject);
var
 vAux, vNumLote : String;
begin
 //**************************************************************************
 //
 // A function EnviarSincrono só esta disponivel para alguns provedores.
 //
 //**************************************************************************

 if not(InputQuery('Gerar e Enviar Lote - Sincrono', 'Numero do RPS', vAux))
  then exit;

 if not(InputQuery('Gerar e Enviar Lote - Sincrono', 'Numero do Lote', vNumLote))
  then exit;

 ACBrNFSe1.NotasFiscais.Clear;
 AlimentaComponente(vAux);
 ACBrNFSe1.EnviarSincrono(vNumLote);

 ACBrNFSe1.NotasFiscais.Clear;
end;

procedure TfrmNFSe.btnVerificarCidadeClick(Sender: TObject);
var
  Ok: Boolean;
  NomeArqParams: String;
  IniParams: TMemIniFile;
  vAux, provedor: String;
begin
  if not(InputQuery('Informe o código IBGE da cidade com 7 digitos', 'Código:', vAux)) then
    exit;

  NomeArqParams := ACBrNFSe1.Configuracoes.Geral.PathIniCidades + '\Cidades.ini';
  if not FileExists(NomeArqParams) then
    raise Exception.Create('Arquivo de Parâmetro não encontrado: ' + NomeArqParams);

  IniParams := TMemIniFile.Create(NomeArqParams);
  provedor := IniParams.ReadString(vAux, 'Provedor', '');
  IniParams.Free;

  ShowMessage('Provedor: ' + provedor);
end;

procedure TfrmNFSe.Button1Click(Sender: TObject);
begin
  cds_notafiscal.Open;
  cds_notafiscal.Edit;
  cds_notafiscal.FieldByName('recibo').AsString:='1';
  cds_notafiscal.Post;
  cds_notafiscal.ApplyUpdates(0);
  cds_notafiscal.Close;
  cds_notafiscal.Open;
end;

procedure TfrmNFSe.btnSubsNFSeClick(Sender: TObject);
var
 Codigo, vAux, sNumNFSe: String;
begin
  if not(InputQuery('Substituir NFS-e', 'Numero do novo RPS', vAux))
   then exit;
  ACBrNFSe1.NotasFiscais.Clear;
  AlimentaComponente(vAux);

  // Codigo de Cancelamento
  // 1 - Erro de emissão
  // 2 - Serviço não concluido
  // 3 - RPS Cancelado na Emissão

  if not(InputQuery('Substituir NFSe', 'Código de Cancelamento', Codigo))
   then exit;

  if not(InputQuery('Substituir NFS-e', 'Numero da NFS-e', sNumNFSe))
   then exit;

  ACBrNFSe1.SubstituirNFSe(Codigo, sNumNFSe);

  MemoDados.Lines.Add('Retorno da Substituição:');
  MemoDados.Lines.Add('Cód. Cancelamento: ' + ACBrNFSe1.WebServices.SubNfse.CodigoCancelamento);
  LoadXML(MemoResp, WBResposta);
  PageControl2.ActivePageIndex := 1;
end;

procedure TfrmNFSe.sbtArqINIClick(Sender: TObject);
var
 Dir : string;
begin
 if Length(edtArqINI.Text) <= 0
  then Dir := ExtractFileDir(application.ExeName)
  else Dir := edtArqINI.Text;

 if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP)
  then edtArqINI.Text := Dir;
end;

end.
