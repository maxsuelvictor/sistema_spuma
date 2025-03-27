{$I ACBr.inc}

unit Unit1;

interface

uses IniFiles, ShellAPI, pcnRetConsReciDFe,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, OleCtrls, SHDocVw,
  ACBrNFe, pcnConversao, ACBrUtil, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS,
  ACBrBase, ACBrDFe, XMLIntf, XMLDoc, zlib,
  ACBrMail, ACBrNFeDANFEFRDM, ACBrNFeDANFEFR, Vcl.DBCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Data.DB, vcl.wwdatsrc, Vcl.Mask, ACBrDFeReport,
  ACBrDFeDANFeReport, vcl.Wwdbedit;

type

  { TForm1 }

  TfrmNFCe = class(TForm)
    Panel1: TPanel;
    OpenDialog1: TOpenDialog;
    btnSalvarConfig: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    pgRespostas: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    ACBrNFe1: TACBrNFe;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwNFe: TTreeView;
    lblColaborador: TLabel;
    lblPatrocinador: TLabel;
    lblDoar1: TLabel;
    lblDoar2: TLabel;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    TabSheet11: TTabSheet;
    TreeViewRetornoConsulta: TTreeView;
    PageControl3: TPageControl;
    tsNFe: TTabSheet;
    tsNFCe: TTabSheet;
    btnImprimir: TButton;
    btnConsultar: TButton;
    btnValidarXML: TButton;
    btnStatusServ: TButton;
    btnCancNF: TButton;
    btnCriarEnviar: TButton;
    btnInutilizar: TButton;
    btnGerarNFE: TButton;
    btnConsCad: TButton;
    btnGerarPDF: TButton;
    btnEnviarEmail: TButton;
    btnConsultarRecibo: TButton;
    btnImportarXML: TButton;
    btnConsultarChave: TButton;
    btnCancelarChave: TButton;
    btnGerarTXT: TButton;
    btnAdicionarProtNFe: TButton;
    btnCarregarXMLEnviar: TButton;
    btnCartadeCorrecao: TButton;
    btnValidarAssinatura: TButton;
    btnManifDestConfirmacao: TButton;
    btnNfeDestinadas: TButton;
    btnImprimirCCe: TButton;
    btnEnviarEvento: TButton;
    btnCriarEnviarNFCe: TButton;
    btnDistribuicaoDFe: TButton;
    ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PageControl4: TPageControl;
    TabSheet3: TTabSheet;
    gbCertificado: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label25: TLabel;
    sbtnGetCert: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    sbtnPathSalvar: TSpeedButton;
    Label29: TLabel;
    edtPathLogs: TEdit;
    ckSalvar: TCheckBox;
    cbFormaEmissao: TComboBox;
    TabSheet7: TTabSheet;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    cbxVisualizar: TCheckBox;
    cbUF: TComboBox;
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
    TabSheet12: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitIE: TEdit;
    edtEmitRazao: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    edtEmitLogradouro: TEdit;
    edtEmitNumero: TEdit;
    edtEmitComp: TEdit;
    edtEmitBairro: TEdit;
    edtEmitCodCidade: TEdit;
    edtEmitCidade: TEdit;
    edtEmitUF: TEdit;
    TabSheet13: TTabSheet;
    Label7: TLabel;
    edtLogoMarca: TEdit;
    sbtnLogoMarca: TSpeedButton;
    rgTipoDanfe: TRadioGroup;
    cbxAtualizarXML: TCheckBox;
    cbxExibirErroSchema: TCheckBox;
    Label31: TLabel;
    edtFormatoAlerta: TEdit;
    Label30: TLabel;
    cbModeloDF: TComboBox;
    cbxRetirarAcentos: TCheckBox;
    Label32: TLabel;
    cbVersaoDF: TComboBox;
    Label33: TLabel;
    Label34: TLabel;
    edtIdToken: TEdit;
    edtToken: TEdit;
    cbxSalvarSOAP: TCheckBox;
    gbxRetornoEnvio: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    cbxAjustarAut: TCheckBox;
    edtTentativas: TEdit;
    edtIntervalo: TEdit;
    edtAguardar: TEdit;
    TabSheet14: TTabSheet;
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
    cbxSalvarArqs: TCheckBox;
    cbxPastaMensal: TCheckBox;
    cbxAdicionaLiteral: TCheckBox;
    cbxEmissaoPathNFe: TCheckBox;
    cbxSalvaPathEvento: TCheckBox;
    cbxSepararPorCNPJ: TCheckBox;
    sbPathNFe: TSpeedButton;
    Label35: TLabel;
    Label39: TLabel;
    sbPathCan: TSpeedButton;
    Label46: TLabel;
    sbPathCCe: TSpeedButton;
    edtPathCCe: TEdit;
    edtPathNFe: TEdit;
    edtPathCan: TEdit;
    Label40: TLabel;
    sbPathInu: TSpeedButton;
    Label41: TLabel;
    sbPathDPEC: TSpeedButton;
    Label47: TLabel;
    sbPathEvento: TSpeedButton;
    edtPathInu: TEdit;
    edtPathDPEC: TEdit;
    edtPathEvento: TEdit;
    cbxSepararPorModelo: TCheckBox;
    Label42: TLabel;
    edtPathSchemas: TEdit;
    spPathSchemas: TSpeedButton;
    ACBrMail1: TACBrMail;
    cbTipoEmissao: TComboBox;
    Label43: TLabel;
    Label44: TLabel;
    FAT_DS_M_NFE_TIT: TwwDataSource;
    FAT_DS_M_NFE_ITE: TwwDataSource;
    dso: TwwDataSource;
    dbGrid: TwwDBGrid;
    pgNfeDados: TPageControl;
    tsItens: TTabSheet;
    dgItens: TwwDBGrid;
    tsTitulos: TTabSheet;
    grdTitulos: TwwDBGrid;
    tsInfFiscal: TTabSheet;
    txtNfeObs: TDBMemo;
    btnSalvarInfFis: TBitBtn;
    btnAlterarInfFis: TBitBtn;
    Panel4: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    lblChave: TLabel;
    txtChave: TDBEdit;
    lbCSOSN: TLabel;
    Label184: TLabel;
    txtRelatorioNFCe: TwwDBEdit;
    dsParNfe: TDataSource;
    ACBrNFeDANFCEFR1: TACBrNFeDANFCEFR;
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure btnStatusServClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancNFClick(Sender: TObject);
    procedure btnValidarXMLClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnCriarEnviarClick(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure btnGerarNFEClick(Sender: TObject);
    procedure btnConsCadClick(Sender: TObject);
    procedure btnGerarPDFClick(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure btnConsultarReciboClick(Sender: TObject);
    procedure ACBrNFe1GerarLog(const Mensagem: String);
    procedure btnImportarXMLClick(Sender: TObject);
    procedure lblMouseEnter(Sender: TObject);
    procedure lblMouseLeave(Sender: TObject);
    procedure lblColaboradorClick(Sender: TObject);
    procedure lblPatrocinadorClick(Sender: TObject);
    procedure lblDoar1Click(Sender: TObject);
    procedure btnConsultarChaveClick(Sender: TObject);
    procedure btnCancelarChaveClick(Sender: TObject);
    procedure btnGerarTXTClick(Sender: TObject);
    procedure btnAdicionarProtNFeClick(Sender: TObject);
    procedure btnCarregarXMLEnviarClick(Sender: TObject);
    procedure btnCartadeCorrecaoClick(Sender: TObject);
    procedure btnValidarAssinaturaClick(Sender: TObject);
    procedure btnManifDestConfirmacaoClick(Sender: TObject);
    procedure btnNfeDestinadasClick(Sender: TObject);
    procedure btnImprimirCCeClick(Sender: TObject);
    procedure btnEnviarEventoClick(Sender: TObject);
    procedure btnCriarEnviarNFCeClick(Sender: TObject);
    procedure btnDistribuicaoDFeClick(Sender: TObject);
    procedure PathClick(Sender: TObject);
    procedure sbPathNFeClick(Sender: TObject);
    procedure sbPathCanClick(Sender: TObject);
    procedure sbPathCCeClick(Sender: TObject);
    procedure sbPathInuClick(Sender: TObject);
    procedure sbPathDPECClick(Sender: TObject);
    procedure sbPathEventoClick(Sender: TObject);
    procedure spPathSchemasClick(Sender: TObject);
    procedure cbTipoEmissaoChange(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
    procedure GravarConfiguracao ;
    procedure LerConfiguracao ;
    procedure GerarNFe(NumNFe : String);
    procedure GerarNFCe(NumNFe : String);
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);

    procedure LoadConsulta201(XML: AnsiString);
    procedure AtuGridNota;
    procedure ChamarLanctoFPG;
    function  ValidarConsumidorFinal: Boolean;
  public
    { Public declarations }
  end;

var
  frmNFCe: TfrmNFCe;

implementation

uses
  strutils, math, TypInfo, DateUtils, ufrmStatus, synacode, ACBrNFe.Classes,blcksock,
  pcnConversaoNFe, ACBrDFeConfiguracoes, pcnAuxiliar, ACBrDFeSSL, pcnNFeRTXT,
  FileCtrl, uDmGeral, FAT_RN_M_NFE, uProxy, FAT_RN_M_CXA, enFunc,
  FAT_UN_M_CXA_NFE_FPG;
  //pcnNFe
const
  SELDIRHELP = 1000;

{$R *.dfm}

procedure TfrmNFCe.GravarConfiguracao;
Var IniFile : String ;
    Ini     : TIniFile ;
    StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt( Application.ExeName,'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+ '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
      Ini.WriteInteger( 'Certificado','TipoEmissao' , cbTipoEmissao.ItemIndex) ;
      Ini.WriteString( 'Certificado','Caminho' ,edtCaminho.Text) ;
      Ini.WriteString( 'Certificado','Senha'   ,edtSenha.Text) ;
      Ini.WriteString( 'Certificado','NumSerie',edtNumSerie.Text) ;

      Ini.WriteBool(   'Geral','AtualizarXML'      ,ckSalvar.Checked) ;
      Ini.WriteBool(   'Geral','ExibirErroSchema'      ,ckSalvar.Checked) ;
      Ini.WriteString( 'Geral','FormatoAlerta'  ,edtFormatoAlerta.Text) ;
      Ini.WriteInteger( 'Geral','FormaEmissao',cbFormaEmissao.ItemIndex) ;
      Ini.WriteInteger( 'Geral','ModeloDF',cbModeloDF.ItemIndex) ;
      Ini.WriteInteger( 'Geral','VersaoDF',cbVersaoDF.ItemIndex) ;
      Ini.WriteString( 'Geral','IdToken'  ,edtIdToken.Text) ;
      Ini.WriteString( 'Geral','Token'  ,edtToken.Text) ;
      Ini.WriteBool(   'Geral','RetirarAcentos'      ,cbxRetirarAcentos.Checked) ;
      Ini.WriteBool(   'Geral','Salvar'      ,ckSalvar.Checked) ;
      Ini.WriteString( 'Geral','PathSalvar'  ,edtPathLogs.Text) ;
      Ini.WriteString( 'Geral','PathSchemas'  ,edtPathSchemas.Text) ;

      Ini.WriteString( 'WebService','UF'        ,cbUF.Text) ;
      Ini.WriteInteger( 'WebService','Ambiente'  ,rgTipoAmb.ItemIndex) ;
      Ini.WriteBool(   'WebService','Visualizar',cbxVisualizar.Checked) ;
      Ini.WriteBool(   'WebService','SalvarSOAP',cbxSalvarSOAP.Checked) ;
      Ini.WriteBool(   'WebService','AjustarAut',cbxAjustarAut.Checked) ;
      Ini.WriteString( 'WebService','Aguardar'    ,edtAguardar.Text) ;
      Ini.WriteString( 'WebService','Tentativas'  ,edtTentativas.Text) ;
      Ini.WriteString( 'WebService','Intervalo'  ,edtIntervalo.Text) ;

      Ini.WriteString( 'Proxy','Host'   ,edtProxyHost.Text) ;
      Ini.WriteString( 'Proxy','Porta'  ,edtProxyPorta.Text) ;
      Ini.WriteString( 'Proxy','User'   ,edtProxyUser.Text) ;
      Ini.WriteString( 'Proxy','Pass'   ,edtProxySenha.Text) ;

      Ini.WriteBool(   'Arquivos','Salvar'          ,cbxSalvarArqs.Checked) ;
      Ini.WriteBool(   'Arquivos','PastaMensal'     ,cbxPastaMensal.Checked) ;
      Ini.WriteBool(   'Arquivos','AddLiteral'      ,cbxAdicionaLiteral.Checked) ;
      Ini.WriteBool(   'Arquivos','EmissaoPathNFe'  ,cbxEmissaoPathNFe.Checked) ;
      Ini.WriteBool(   'Arquivos','SalvarPathEvento',cbxSalvaPathEvento.Checked) ;
      Ini.WriteBool(   'Arquivos','SepararPorCNPJ'  ,cbxSepararPorCNPJ.Checked) ;
      Ini.WriteBool(   'Arquivos','SepararPorModelo',cbxSepararPorModelo.Checked) ;
      Ini.WriteString( 'Arquivos','PathNFe'    ,edtPathNFe.Text) ;
      Ini.WriteString( 'Arquivos','PathCan'    ,edtPathCan.Text) ;
      Ini.WriteString( 'Arquivos','PathInu'    ,edtPathInu.Text) ;
      Ini.WriteString( 'Arquivos','PathDPEC'   ,edtPathDPEC.Text) ;
      Ini.WriteString( 'Arquivos','PathCCe'    ,edtPathCCe.Text) ;
      Ini.WriteString( 'Arquivos','PathEvento' ,edtPathEvento.Text) ;

      Ini.WriteString( 'Emitente','CNPJ'       ,edtEmitCNPJ.Text) ;
      Ini.WriteString( 'Emitente','IE'         ,edtEmitIE.Text) ;
      Ini.WriteString( 'Emitente','RazaoSocial',edtEmitRazao.Text) ;
      Ini.WriteString( 'Emitente','Fantasia'   ,edtEmitFantasia.Text) ;
      Ini.WriteString( 'Emitente','Fone'       ,edtEmitFone.Text) ;
      Ini.WriteString( 'Emitente','CEP'        ,edtEmitCEP.Text) ;
      Ini.WriteString( 'Emitente','Logradouro' ,edtEmitLogradouro.Text) ;
      Ini.WriteString( 'Emitente','Numero'     ,edtEmitNumero.Text) ;
      Ini.WriteString( 'Emitente','Complemento',edtEmitComp.Text) ;
      Ini.WriteString( 'Emitente','Bairro'     ,edtEmitBairro.Text) ;
      Ini.WriteString( 'Emitente','CodCidade'  ,edtEmitCodCidade.Text) ;
      Ini.WriteString( 'Emitente','Cidade'     ,edtEmitCidade.Text) ;
      Ini.WriteString( 'Emitente','UF'         ,edtEmitUF.Text) ;

      Ini.WriteString( 'Email','Host'    ,edtSmtpHost.Text) ;
      Ini.WriteString( 'Email','Port'    ,edtSmtpPort.Text) ;
      Ini.WriteString( 'Email','User'    ,edtSmtpUser.Text) ;
      Ini.WriteString( 'Email','Pass'    ,edtSmtpPass.Text) ;
      Ini.WriteString( 'Email','Assunto' ,edtEmailAssunto.Text) ;
      Ini.WriteBool(   'Email','SSL'     ,cbEmailSSL.Checked ) ;
      StreamMemo := TMemoryStream.Create;
      mmEmailMsg.Lines.SaveToStream(StreamMemo);
      StreamMemo.Seek(0,soFromBeginning);
      Ini.WriteBinaryStream( 'Email','Mensagem',StreamMemo) ;
      StreamMemo.Free;

      Ini.WriteInteger( 'DANFE','Tipo'       ,rgTipoDanfe.ItemIndex) ;
      Ini.WriteString( 'DANFE','LogoMarca'   ,edtLogoMarca.Text) ;

  finally
     Ini.Free ;
  end;

end;

procedure TfrmNFCe.LerConfiguracao;
Var IniFile  : String ;
    Ini     : TIniFile ;
    Ok : Boolean;
    StreamMemo : TMemoryStream;
begin
  IniFile :=  ChangeFileExt(Application.ExeName,'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
     cbTipoEmissao.ItemIndex:= Ini.ReadInteger( 'Certificado','TipoEmissao' ,0) ;
     edtCaminho.Text  := Ini.ReadString( 'Certificado','Caminho' ,'') ;
     edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'') ;
     edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','') ;
    // ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := edtCaminho.Text;
    // ACBrNFe1.Configuracoes.Certificados.Senha       := edtSenha.Text;
    // ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;

      ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_caminho_pfx').AsString;
      ACBrNFe1.Configuracoes.Certificados.Senha       := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_senha_pfx').AsString;

      cbxAtualizarXML.Checked    := Ini.ReadBool(   'Geral','AtualizarXML',True) ;
      cbxExibirErroSchema.Checked    := Ini.ReadBool(   'Geral','ExibirErroSchema',True) ;
      edtFormatoAlerta.Text    := Ini.ReadString( 'Geral','FormatoAlerta'  ,'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.') ;
      cbFormaEmissao.ItemIndex := Ini.ReadInteger( 'Geral','FormaEmissao',0) ;
      cbModeloDF.ItemIndex := Ini.ReadInteger( 'Geral','ModeloDF',0) ;
      cbVersaoDF.ItemIndex := Ini.ReadInteger( 'Geral','VersaoDF',0) ;
      //edtIdToken.Text      := Ini.ReadString( 'Geral','IdToken'  ,'') ;
      //edtToken.Text        := Ini.ReadString( 'Geral','Token'  ,'') ;

      edtIdToken.Text      := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfc_id_token').AsString;
      edtToken.Text        := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfc_csc').AsString;

      ckSalvar.Checked     := Ini.ReadBool(   'Geral','Salvar'      ,True) ;
      cbxRetirarAcentos.Checked := Ini.ReadBool(   'Geral','RetirarAcentos',True) ;
      //edtPathLogs.Text     := Ini.ReadString( 'Geral','PathSalvar'  ,PathWithDelim(ExtractFilePath(Application.ExeName))+'Logs') ;
      edtPathLogs.Text     := ExtractFilePath(Application.ExeName) +
                              dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString;

      //edtPathSchemas.Text  := Ini.ReadString( 'Geral','PathSchemas'  ,PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\'+GetEnumName(TypeInfo(TpcnVersaoDF), integer(cbVersaoDF.ItemIndex) )) ;
      edtPathSchemas.Text  := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFe';
      with ACBrNFe1.Configuracoes.Geral do
       begin
         ExibirErroSchema := cbxExibirErroSchema.Checked;
         FormatoAlerta    := edtFormatoAlerta.Text;
         FormaEmissao     := TpcnTipoEmissao(cbFormaEmissao.ItemIndex);
         ModeloDF         := TpcnModeloDF(cbModeloDF.ItemIndex);
         VersaoDF         := TpcnVersaoDF(cbVersaoDF.ItemIndex);
         IdCSC            := edtIdToken.Text;
         CSC              := edtToken.Text;
         //IncluirQRCodeXMLNFCe  := true;
         Salvar           := ckSalvar.Checked;


         SSLLib                := TSSLLib(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('prot_com_ssllib').AsInteger); //libCapicom;

         // Nota técnica: NT_2016_002_v1.42
         SSLCryptLib           := TSSLCryptLib(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('prot_com_criptlib').AsInteger);
         SSLHttpLib            := TSSLHttpLib(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('prot_com_httplib').AsInteger);
         SSLXmlSignLib         := TSSLXmlSignLib(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('prot_com_xmlsignlib').AsInteger);

         ACBrNFe1.SSL.SSLType  := TSSLType(5);
         //AtualizarXMLCancelado := true;
         CamposFatObrigatorios := true;
       end;

      cbUF.ItemIndex        := cbUF.Items.IndexOf(Ini.ReadString( 'WebService','UF','SP')) ;
      rgTipoAmb.ItemIndex   := Ini.ReadInteger( 'WebService','Ambiente'  ,0) ;
      cbxVisualizar.Checked  := Ini.ReadBool(    'WebService','Visualizar',False) ;
      cbxSalvarSOAP.Checked := Ini.ReadBool(    'WebService','SalvarSOAP',False) ;
      cbxAjustarAut.Checked  := Ini.ReadBool(   'WebService','AjustarAut' ,False) ;
      edtAguardar.Text       := Ini.ReadString( 'WebService','Aguardar'  ,'0') ;
      edtTentativas.Text     := Ini.ReadString( 'WebService','Tentativas','5') ;
      edtIntervalo.Text      := Ini.ReadString( 'WebService','Intervalo' ,'0') ;
      edtProxyHost.Text  := Ini.ReadString( 'Proxy','Host'   ,'') ;
      edtProxyPorta.Text := Ini.ReadString( 'Proxy','Porta'  ,'') ;
      edtProxyUser.Text  := Ini.ReadString( 'Proxy','User'   ,'') ;
      edtProxySenha.Text := Ini.ReadString( 'Proxy','Pass'   ,'') ;

      with ACBrNFe1.Configuracoes.WebServices do
       begin
         UF         := cbUF.Text;
         Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));
         Visualizar := cbxVisualizar.Checked;
         Salvar     := cbxSalvarSOAP.Checked;
         AjustaAguardaConsultaRet := cbxAjustarAut.Checked;
         if NaoEstaVazio(edtAguardar.Text)then
            AguardarConsultaRet := ifThen(StrToInt(edtAguardar.Text)<1000,StrToInt(edtAguardar.Text)*1000,StrToInt(edtAguardar.Text))
         else
            edtAguardar.Text := IntToStr(AguardarConsultaRet);

         if NaoEstaVazio(edtTentativas.Text) then
            Tentativas          := StrToInt(edtTentativas.Text)
         else
            edtTentativas.Text := IntToStr(Tentativas);

         if NaoEstaVazio(edtIntervalo.Text) then
            IntervaloTentativas := ifThen(StrToInt(edtIntervalo.Text)<1000,StrToInt(edtIntervalo.Text)*1000,StrToInt(edtIntervalo.Text))
         else
            edtIntervalo.Text := IntToStr(ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas);

         ProxyHost := edtProxyHost.Text;
         ProxyPort := edtProxyPorta.Text;
         ProxyUser := edtProxyUser.Text;
         ProxyPass := edtProxySenha.Text;
       end;

      cbxSalvarArqs.Checked       := Ini.ReadBool(   'Arquivos','Salvar'     ,false);
      cbxPastaMensal.Checked      := Ini.ReadBool(   'Arquivos','PastaMensal',false);
      cbxAdicionaLiteral.Checked  := Ini.ReadBool(   'Arquivos','AddLiteral' ,false);
      cbxEmissaoPathNFe.Checked   := Ini.ReadBool(   'Arquivos','EmissaoPathNFe',false);
      cbxSalvaPathEvento.Checked  := Ini.ReadBool(   'Arquivos','SalvarPathEvento',false);
      cbxSepararPorCNPJ.Checked   := Ini.ReadBool(   'Arquivos','SepararPorCNPJ',false);
      cbxSepararPorModelo.Checked := Ini.ReadBool(   'Arquivos','SepararPorModelo',false);
      edtPathNFe.Text             := Ini.ReadString( 'Arquivos','PathNFe'    ,'') ;
      edtPathCan.Text             := Ini.ReadString( 'Arquivos','PathCan'    ,'') ;
      edtPathInu.Text             := Ini.ReadString( 'Arquivos','PathInu'    ,'') ;
      edtPathDPEC.Text            := Ini.ReadString( 'Arquivos','PathDPEC'   ,'') ;
      edtPathCCe.Text             := Ini.ReadString( 'Arquivos','PathCCe'   ,'') ;
      edtPathEvento.Text          := Ini.ReadString( 'Arquivos','PathEvento','') ;

      with ACBrNFe1.Configuracoes.Arquivos do
       begin
         Salvar             := cbxSalvarArqs.Checked;
         SepararPorMes      := cbxPastaMensal.Checked;
         AdicionarLiteral   := cbxAdicionaLiteral.Checked;
         EmissaoPathNFe     := cbxEmissaoPathNFe.Checked;
         SalvarEvento       := cbxSalvaPathEvento.Checked;
         SepararPorCNPJ     := cbxSepararPorCNPJ.Checked;
         SepararPorModelo   := cbxSepararPorModelo.Checked;
         PathSalvar         := edtPathLogs.Text;
         PathSchemas        := edtPathSchemas.Text;
         PathNFe            := edtPathNFe.Text;
         PathInu            := edtPathInu.Text;
         PathEvento         := edtPathEvento.Text;
       end;

    {  edtEmitCNPJ.Text       := Ini.ReadString( 'Emitente','CNPJ'       ,'') ;
      edtEmitIE.Text         := Ini.ReadString( 'Emitente','IE'         ,'') ;
      edtEmitRazao.Text      := Ini.ReadString( 'Emitente','RazaoSocial','') ;
      edtEmitFantasia.Text   := Ini.ReadString( 'Emitente','Fantasia'   ,'') ;
      edtEmitFone.Text       := Ini.ReadString( 'Emitente','Fone'       ,'') ;
      edtEmitCEP.Text        := Ini.ReadString( 'Emitente','CEP'        ,'') ;
      edtEmitLogradouro.Text := Ini.ReadString( 'Emitente','Logradouro' ,'') ;
      edtEmitNumero.Text     := Ini.ReadString( 'Emitente','Numero'     ,'') ;
      edtEmitComp.Text       := Ini.ReadString( 'Emitente','Complemento','') ;
      edtEmitBairro.Text     := Ini.ReadString( 'Emitente','Bairro'     ,'') ;
      edtEmitCodCidade.Text  := Ini.ReadString( 'Emitente','CodCidade'  ,'') ;
      edtEmitCidade.Text     :=Ini.ReadString( 'Emitente','Cidade'     ,'') ;
      edtEmitUF.Text         := Ini.ReadString( 'Emitente','UF'         ,'') ;}

      edtEmitCNPJ.Text       := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CNPJ').AsString;
      edtEmitIE.Text         := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_IE').AsString;
      edtEmitRazao.Text      := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_RAZAO').AsString;
      edtEmitFantasia.Text   := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString;
      edtEmitFone.Text       := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_TELEFONE').AsString;
      edtEmitCEP.Text        := RemoveChars(['-'],Trim(dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CEP').AsString));
      edtEmitLogradouro.Text := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_ENDERECO').AsString;
      edtEmitNumero.Text     := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_NUMERO').AsString;
      edtEmitComp.Text       := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_COMPLEMENTO').AsString;
      edtEmitBairro.Text     := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_BAIRRO').AsString;
      edtEmitCodCidade.Text  := Trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString);
      edtEmitCidade.Text     := dmGeral.CAD_CD_C_PAR.FieldByName('INT_NOMECID').AsString;
      edtEmitUF.Text         := dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').AsString;

      edtSmtpHost.Text      := Ini.ReadString( 'Email','Host'   ,'') ;
      edtSmtpPort.Text      := Ini.ReadString( 'Email','Port'   ,'') ;
      edtSmtpUser.Text      := Ini.ReadString( 'Email','User'   ,'') ;
      edtSmtpPass.Text      := Ini.ReadString( 'Email','Pass'   ,'') ;
      edtEmailAssunto.Text  := Ini.ReadString( 'Email','Assunto','') ;
      cbEmailSSL.Checked    := Ini.ReadBool(   'Email','SSL'    ,False) ;
      StreamMemo := TMemoryStream.Create;
      Ini.ReadBinaryStream( 'Email','Mensagem',StreamMemo) ;
      mmEmailMsg.Lines.LoadFromStream(StreamMemo);
      StreamMemo.Free;

      rgTipoDanfe.ItemIndex     := Ini.ReadInteger( 'DANFE','Tipo'       ,0) ;
      edtLogoMarca.Text         := Ini.ReadString( 'DANFE','LogoMarca'   ,'') ;
      if ACBrNFe1.DANFE <> nil then
       begin
         ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(rgTipoDanfe.ItemIndex+1));
         //ACBrNFe1.DANFE.Logo       := edtLogoMarca.Text;
         ACBrNFe1.DANFE.Logo       := ExtractFilePath(Application.ExeName)+dmGeral.CAD_CD_C_PAR_NFE.FieldByName('path_logo').AsString;
       end;
  finally
     Ini.Free ;
  end;

end;

procedure TfrmNFCe.LoadConsulta201(XML: AnsiString);
var
  DOM: IXMLDocument;
  lXML: AnsiString;

  procedure AddNodes(XMLNode: IXMLNode; TreeNode: TTreeNode);
  var
    Index: Integer;
    NewNode: TTreeNode;
    Value: string;
  begin
    if XMLNode.nodeType in [ntTEXT, ntCDATA, ntCOMMENT] then
      Value := XMLNode.text
    else
      Value := XMLNode.nodeName;
    NewNode := TreeViewRetornoConsulta.Items.AddChild(TreeNode, {XMLNode.NodeName +} ' ' + Value);
    for Index := 0 to XMLNode.childNodes.Count - 1 do
      AddNodes(XMLNode.childNodes[Index], NewNode);
  end;

  function ReplaceStr( Fonte, De, Para:AnsiString ):AnsiString;
  begin
    result:=fonte;
    while pos(de,result) <> 0 do
      result:=copy(result, 1, pos(de,result)-1 )+Para+copy(result,pos(de,result)+length(de),length(result) );
  end;

  function LimpaXML(XML: AnsiString; TagRemover:AnsiString): AnsiString;
  begin
    Result := XML;
    while pos('<'+TagRemover,Result) <> 0 do
    begin
      Result := ReplaceStr(Result,
                           '<'+TagRemover+
                              RetornarConteudoEntre(Result,'<'+TagRemover,'</'+TagRemover+'>')+
                           '</'+TagRemover+'>','');
    end;
  end;
begin
  DOM := TXMLDocument.Create(nil);
  try
    lXML := LimpaXML(UTF8Decode(XML),'Signature');
    DOM.LoadFromXML(lXML);
    DOM.Active := True;
    TreeViewRetornoConsulta.Items.BeginUpdate;
    TreeViewRetornoConsulta.Items.Clear;
    AddNodes(dom.DocumentElement, nil);
    TreeViewRetornoConsulta.TopItem := TreeViewRetornoConsulta.Items[0];
  finally
    TreeViewRetornoConsulta.Items.EndUpdate;
  end;
end;

procedure TfrmNFCe.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  ACBrUtil.WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml',
                        ACBrUtil.ConverteXMLtoUTF8( RetWS ), False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
end;

procedure TfrmNFCe.sbtnCaminhoCertClick(Sender: TObject);
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

procedure TfrmNFCe.sbtnLogoMarcaClick(Sender: TObject);
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

procedure TfrmNFCe.sbtnPathSalvarClick(Sender: TObject);
begin
 PathClick(edtPathLogs);
end;

procedure TfrmNFCe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dmGeral.BUS_CD_M_NFE_CXA.Filtered := FALSE;
end;

procedure TfrmNFCe.FormCreate(Sender: TObject);
var
 T : TSSLLib;
 I : TpcnTipoEmissao ;
 J : TpcnModeloDF;
 K : TpcnVersaoDF;
begin


  ACBrNFeDANFCEFR1.FastFileEvento := ExtractFileDir(application.ExeName) + '\Report\EVENTOS.fr3';

  cbTipoEmissao.Items.Clear ;
  For T := Low(TSSLLib) to High(TSSLLib) do
    cbTipoEmissao.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) ) ;
  cbTipoEmissao.ItemIndex := 0 ;

  cbFormaEmissao.Items.Clear ;
  For I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) ) ;
  cbFormaEmissao.Items[0] := 'teNormal' ;
  cbFormaEmissao.ItemIndex := 0 ;

  cbModeloDF.Items.Clear ;
  For J := Low(TpcnModeloDF) to High(TpcnModeloDF) do
     cbModeloDF.Items.Add( GetEnumName(TypeInfo(TpcnModeloDF), integer(J) ) ) ;
  cbModeloDF.Items[0] := 'moNFe' ;
  cbModeloDF.ItemIndex := 0 ;

  cbVersaoDF.Items.Clear ;
  For K := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
     cbVersaoDF.Items.Add( GetEnumName(TypeInfo(TpcnVersaoDF), integer(K) ) ) ;
  cbVersaoDF.Items[0] := 've200' ;
  cbVersaoDF.ItemIndex := 0 ;

  LerConfiguracao;
  PageControl3.ActivePage := tsNFCe;
  pgRespostas.ActivePageIndex := 2;

  ACBrNFe1.Configuracoes.WebServices.Salvar := true;



end;


procedure TfrmNFCe.FormShow(Sender: TObject);
begin
  try
      dmGeral.BUS_CD_M_NFE_CXA.Filtered := true;
      dmGeral.BUS_CD_M_NFE_CXA.Filter := '((ID_PEDIDO_VENDA>0) or (((NFE_COD_SIT=''02'') OR (NFE_COD_SIT=''05'')) AND (MODELO=''65''))) ';
  finally

  end;
end;

procedure TfrmNFCe.btnSalvarConfigClick(Sender: TObject);
begin
 GravarConfiguracao;
 LerConfiguracao;
end;

procedure TfrmNFCe.btnStatusServClick(Sender: TObject);
begin
 ACBrNFe1.WebServices.StatusServico.Executar;

 MemoResp.Lines.Text := ACBrNFe1.WebServices.StatusServico.RetWS;
 memoRespWS.Lines.Text := ACBrNFe1.WebServices.StatusServico.RetornoWS;
 LoadXML(ACBrNFe1.WebServices.StatusServico.RetornoWS, WBResposta);

 pgRespostas.ActivePageIndex := 1;

 MemoDados.Lines.Add('');
 MemoDados.Lines.Add('Status Serviço');
 MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.StatusServico.tpAmb));
 MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.StatusServico.verAplic);
 MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.StatusServico.cStat));
 MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.StatusServico.xMotivo);
 MemoDados.Lines.Add('cUF: '      +IntToStr(ACBrNFe1.WebServices.StatusServico.cUF));
 MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRecbto));
 MemoDados.Lines.Add('tMed: '     +IntToStr(ACBrNFe1.WebServices.StatusServico.TMed));
 MemoDados.Lines.Add('dhRetorno: '+DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRetorno));
 MemoDados.Lines.Add('xObs: '     +ACBrNFe1.WebServices.StatusServico.xObs);
end;

procedure TfrmNFCe.btnConsultarClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFe1.Consultar;
    ShowMessage(ACBrNFe1.WebServices.Consulta.Protocolo);
    MemoResp.Lines.Text := ACBrNFe1.WebServices.Consulta.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Consulta.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Consulta.RetornoWS, WBResposta);
    LoadConsulta201(ACBrNFe1.WebServices.Consulta.RetWS);
  end;
end;

procedure TfrmNFCe.btnCancNFClick(Sender: TObject);
var
  idLote,vAux : String;
  Ano,Mes,Dia: Word;
  SMPrincipal: TSMClient;
  CanStatus:string;
  CanProtocolo:string;
  retorno,ReabrePed: String;
  xml: String;
begin



  // Ao mexer nesta rotina lembrar de verificar a tela de NFe
  AtuGridNota;

  if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       ShowMessage('Não existe registro de nota fiscal.');

       exit;
     end;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean then
     begin
       ShowMessage('Nota fiscal com pré-venda.');
       exit;
     end;

  if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) <> 'X' then
     begin
        // foi retirado o NFE_RECBIDO e colocado NFE_PROTOCOLO , devido nota técnica SICRÓNO nfce , 10-10-2021
        {if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
                 ( trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString) <> '') and
                 (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) ) then }

        if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
                 ( trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_PROTOCOLO').AsString) <> '') and
                 (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) ) then
           begin
             ShowMessage('Nota fiscal em aberto! ' + #13 +
                          'Só é permitido cancelar nota fiscal encerrada.');
             exit;
           end;
     end
  else
     begin
        if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
                 (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) ) then
           begin
             ShowMessage('Nota fiscal em aberto! ' + #13 +
                          'Só é permitido cancelar nota fiscal encerrada.');
             exit;
           end;
     end;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02' then
      begin
        ShowMessage('Nota fiscal já foi cancelada.');
        exit;
      end;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('MODELO').AsString <> '65' then
      begin
        ShowMessage('Só é permitido cancelar nota fiscal(NFCe).');
        exit;
      end;


  //OpenDialog1.Title := 'Selecione a NFE';
  //OpenDialog1.DefaultExt := '*-nfe.XML';
  //OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  //OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  //if OpenDialog1.Execute then
  //begin

    xml := ACBrNFe1.Configuracoes.Arquivos.PathSalvar+'\NFCe\'+
                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString+'-nfe.xml';

    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(xml);

    //idLote := '1';

    DecodeDate(xDataSis, Ano, Mes, Dia);
    idLote := inttostr(Ano)+inttostr(Mes)+inttostr(Dia);
    idLote := OnlyNumber(idLote);
    if not(InputQuery('WebServices Eventos: Cancelamento', 'Identificador de controle do Lote de envio do Evento', idLote)) then
       exit;
    if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa', vAux)) then
       exit;

    ACBrNFe1.EventoNFe.Evento.Clear;
    ACBrNFe1.EventoNFe.idLote := StrToInt(idLote) ;
    with ACBrNFe1.EventoNFe.Evento.Add do
    begin
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCancelamento;
     infEvento.detEvento.xJust := vAux;
    end;
    ACBrNFe1.EnviarEvento(StrToInt(idLote));

    MemoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.EnvEvento.RetornoWS, WBResposta);
    ShowMessage(IntToStr(ACBrNFe1.WebServices.EnvEvento.cStat));
    ShowMessage(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);


    ACBrNFe1.WebServices.Consulta.NFeChave := Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString);
    ACBrNFe1.WebServices.Consulta.Executar;
    CanStatus    := IntToStr(ACBrNFe1.WebServices.Consulta.cStat);
    CanProtocolo := ACBrNFe1.WebServices.Consulta.Protocolo;

    if (trim(CanStatus) = '101') or (trim(CanStatus) = '135') then
       begin

         ReabrePed := '';
         if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0 then
            begin
              ReabrePed := 'N';
              if MessageDlg('Deseja reabrir o pedido de venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                 begin
                   ReabrePed := 'S';
                 end;
            end;

         try
           SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
           retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,CanStatus,CanProtocolo,ReabrePed,'');
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
  //end;
end;

procedure TfrmNFCe.btnValidarXMLClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
// ConfiguraÃ§Ã£o padrÃ£o para exibiÃ§Ã£o dos erros de validaÃ§Ã£o
//  ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := True;
//  ACBrNFe1.Configuracoes.Geral.FormatoAlerta := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.';
// ACBrNFe1.Configuracoes.Geral.RetirarAcentos

// Sugestão de configuração para apresentação de mensagem mais amigável ao usuário final
  ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := False;
  ACBrNFe1.Configuracoes.Geral.FormatoAlerta := 'Campo:%DESCRICAO% - %MSG%';

  if OpenDialog1.Execute then
   begin
     ACBrNFe1.NotasFiscais.Clear;
     ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName, True);
     try
        ACBrNFe1.NotasFiscais.Validar;
        if ACBrNFe1.NotasFiscais.Items[0].Alertas <> '' then
          MemoDados.Lines.Add('Alertas: '+ACBrNFe1.NotasFiscais.Items[0].Alertas);
        ShowMessage('Nota Fiscal Eletrônica Valida');
     except
        on E: Exception do
        begin
          pgRespostas.ActivePage := Dados;
          MemoDados.Lines.Add('Exception: '+E.Message);
          MemoDados.Lines.Add('Erro: '+ACBrNFe1.NotasFiscais.Items[0].ErroValidacao);
          MemoDados.Lines.Add('Erro Completo: '+ACBrNFe1.NotasFiscais.Items[0].ErroValidacaoCompleto); //Ãštil para gravar em arquivos de LOG
        end;
     end;
   end;
end;

procedure TfrmNFCe.cbTipoEmissaoChange(Sender: TObject);
begin
  if cbTipoEmissao.ItemIndex <> -1 then
    ACBrNFe1.Configuracoes.Geral.SSLLib := TSSLLib(cbTipoEmissao.ItemIndex);

  Label44.Visible :=  ACBrNFe1.Configuracoes.Geral.SSLLib = libCapicom;
end;

procedure TfrmNFCe.ChamarLanctoFPG;
begin
  FAT_FM_M_CXA_NFE_FPG := TFAT_FM_M_CXA_NFE_FPG.Create(Self);
  FAT_FM_M_CXA_NFE_FPG.ShowModal;
  FAT_FM_M_CXA_NFE_FPG.Free;
end;

procedure TfrmNFCe.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   if Field.FieldName = 'legenda' then
     begin
       {  *** ATENÇÃO ****

          Caso este código abaixo seja alterado , você deverá alterar o código
          do Grid de Notas Fiscais da tela FAT_FM_M_CXA também para que os
          códigos fiquem iguais.

          Maxsuel Victor
        }

       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger > 0) then
           Abrush.Color := clBlue;

       // Situação de NFe FATURADA normnal. Cor Verde
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
           // foi retirado o NFE_RECBIDO e colocado NFE_PROTOCOLO , devido nota técnica SICRÓNO nfce , 10-10-2021
          ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_PROTOCOLO').AsString <> '')  or
            (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) = 'X') or
            (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_ECF').AsInteger = 1) ) then
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

procedure TfrmNFCe.btnManifDestConfirmacaoClick(Sender: TObject);
var
 Chave, idLote, CNPJ: string;
 lMsg: string;
begin
  Chave:='';
  if not(InputQuery('WebServices Eventos: Manif. Destinatario - Conf. Operacao', 'Chave da NF-e', Chave)) then
     exit;
  Chave := Trim(OnlyNumber(Chave));
  idLote := '1';
  if not(InputQuery('WebServices Eventos: Manif. Destinatario - Conf. Operacao', 'Identificador de controle do Lote de envio do Evento', idLote)) then
     exit;
  CNPJ := '';
  if not(InputQuery('WebServices Eventos: Manif. Destinatario - Conf. Operacao', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
     exit;

  ACBrNFe1.EventoNFe.Evento.Clear;
  with ACBrNFe1.EventoNFe.Evento.Add do
   begin
     InfEvento.cOrgao   := 91;
     infEvento.chNFe    := Chave;
     infEvento.CNPJ     := CNPJ;
     infEvento.dhEvento := now;
     infEvento.tpEvento := teManifDestConfirmacao;
   end;
  ACBrNFe1.EnviarEvento(StrToInt(IDLote));

  with AcbrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento do
  begin
    lMsg:=
    'Id: '+Id+#13+
    'tpAmb: '+TpAmbToStr(tpAmb)+#13+
    'verAplic: '+verAplic+#13+
    'cOrgao: '+IntToStr(cOrgao)+#13+
    'cStat: '+IntToStr(cStat)+#13+
    'xMotivo: '+xMotivo+#13+
    'chNFe: '+chNFe+#13+
    'tpEvento: '+TpEventoToStr(tpEvento)+#13+
    'xEvento: '+xEvento+#13+
    'nSeqEvento: '+IntToStr(nSeqEvento)+#13+
    'CNPJDest: '+CNPJDest+#13+
    'emailDest: '+emailDest+#13+
    'dhRegEvento: '+DateTimeToStr(dhRegEvento)+#13+
    'nProt: '+nProt;
  end;
  ShowMessage(lMsg);

  MemoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetornoWS;
//  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].XXXX
  LoadXML(ACBrNFe1.WebServices.EnvEvento.RetornoWS, WBResposta);
end;

procedure TfrmNFCe.btnNfeDestinadasClick(Sender: TObject);
var
 CNPJ, IndNFe, IndEmi, ultNSU: string;
 ok: boolean;
begin
{  CNPJ := '';
  if not(InputQuery('WebServices Consulta NFe Destinadas', 'CNPJ do destinatário da NFe', CNPJ)) then
     exit;

  (*veja NT 2012/002 pág. 11 para identificar os valores possíveis
  Indicador de NF-e consultada:
  0=Todas as NF-e;
  1=Somente as NF-e que ainda não tiveram manifestação do destinatário
    (Desconhecimento da operação, Operação não Realizada ou Confirmação da Operação);
  2=Idem anterior, incluindo as NF-e que também não tiveram a Ciência da Operação.*)
  indNFe := '0';
  if not(InputQuery('WebServices Consulta NFe Destinadas', 'Indicador de NF-e consultada', indNFe)) then
     exit;

  (*veja NT 2012/002 pág. 11 para identificar os valores possíveis
  Indicador do Emissor da NF-e:
  0=Todos os Emitentes / Remetentes;
  1=Somente as NF-e emitidas por emissores / remetentes que não tenham a mesma
    raiz do CNPJ do destinatário (para excluir as notas fiscais de transferência
    entre filiais).*)
  IndEmi := '0';
  if not(InputQuery('WebServices Consulta NFe Destinadas', 'Indicador do Emissor da NF-e', IndEmi)) then
     exit;

  (*veja NT 2012/002 pág. 11 para identificar os valores possíveis
   Último NSU recebido pela Empresa.
   Caso seja informado com zero, ou com um NSU muito antigo, a consulta retornará
   unicamente as notas fiscais que tenham sido recepcionadas nos últimos 15 dias.*)
  ultNSU := '0';
  if not(InputQuery('WebServices Consulta NFe Destinadas', 'Último NSU recebido pela Empresa', ultNSU)) then
     exit;

  ACBrNFe1.ConsultaNFeDest(CNPJ,
                           StrToIndicadorNFe(ok,indNFe),
                           StrToIndicadorEmissor(ok,IndEmi),
                           UltNSu);

  //AcbrNFe1.WebServices.ConsNFeDest.retConsNFeDest



  MemoResp.Lines.Text := ACBrNFe1.WebServices.ConsNFeDest.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.ConsNFeDest.RetornoWS;
//  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].XXXX
  LoadXML(ACBrNFe1.WebServices.ConsNFeDest.RetornoWS, WBResposta); }


end;

procedure TfrmNFCe.btnImprimirClick(Sender: TObject);
begin

  if trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfc_nome_arq_rel').AsString) = '' then
     begin
       ShowMessage('O relatório (.fr3) de impressão da NFCe não foi informado nos parâmetros!');
       exit;
     end;


  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;

  // ACBrNFeDANFEFR1.FastFile       := ExtractFileDir(application.ExeName) + '\Report\DANFeNFCe.fr3';


  // 22-07-2022 comentado por Maxsuel Victor
     // o nome do relatório passou a ser espécificado nos parâmetros na aba NFE.
     // ACBrNFeDANFCEFR1.FastFile       := ExtractFileDir(application.ExeName) + '\Report\DANFeNFCe5_00.fr3';

  ACBrNFeDANFCEFR1.FastFile  := ExtractFileDir(application.ExeName) +
                                '\Report\' + dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfc_nome_arq_rel').AsString;

  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName,False);
    ACBrNFe1.NotasFiscais.Imprimir;
  end;
end;

procedure TfrmNFCe.btnCriarEnviarClick(Sender: TObject);
var
 vAux, vNumLote : String;
begin
  if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
    exit;

  if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote)) then
    exit;

  vNumLote := OnlyNumber(vNumLote);

  if Trim(vNumLote) = '' then
   begin
     MessageDlg('Número do Lote inválido.',mtError,[mbok],0);
     exit;
   end;

  ACBrNFe1.NotasFiscais.Clear;

  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
  ACBrNFe1.Configuracoes.Geral.VersaoDF :=  TpcnVersaoDF(cbVersaoDF.ItemIndex);
  GerarNFe(vAux);

  ACBrNFe1.NotasFiscais.GerarNFe;

  ACBrNFe1.Enviar(vNumLote,True);

  MemoResp.Lines.Text := ACBrNFe1.WebServices.Retorno.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.Retorno.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.Retorno.RetornoWS, WBResposta);

  pgRespostas.ActivePageIndex := 1;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Envio NFe');
  MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
  MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
  MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
  MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
  MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
  MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
  MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
  MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
  MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);
// MemoDados.Lines.Add('cStat: '+ ACBrNFe1.WebServices.Retorno.NFeRetorno;

{ ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].tpAmb
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].verAplic
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].dhRecbto
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].digVal
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].xMotivo }

  ACBrNFe1.NotasFiscais.Clear;
end;

procedure TfrmNFCe.btnInutilizarClick(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
 SMPrincipal: TSMClient;
 retorno,ReabrePed: String;
 xAno:integer;

begin

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('numero').AsInteger = 0) then
     begin
       ShowMessage('Nota fiscal não tem número.');
       exit;
     end;

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('modelo').AsString <> '65') then
     begin
       ShowMessage('Só é permitido inutilizar NFCe.');
       exit;
     end;

   if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('status').AsInteger = 1) then
     begin
       ShowMessage('Não é permitido INUTILIZAR nota fiscal já encerrada.');
       exit;
     end;

  try

  if MessageDlg('Deseja realmente inutilizar a nota '+
     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('Numero').asString+' de '+
     dmGeral.BUS_CD_M_NFE_CXA.FieldByName('dta_emissao').AsString , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin

       xAno := YearOf(dmGeral.BUS_CD_M_NFE_CXAdta_emissao.AsDateTime);

       Ano           := inttostr(xAno);
       NumeroInicial := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('Numero').asString;
       NumeroFinal   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('Numero').asString;
       Modelo        := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('Modelo').asString;
       Serie         := trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('Serie').asString);

       {if not(InputQuery('WebServices Inutilização ', 'Ano',    Ano)) then
          exit;
       if not(InputQuery('WebServices Inutilização ', 'Modelo', Modelo)) then
          exit;
       if not(InputQuery('WebServices Inutilização ', 'Serie',  Serie)) then
          exit;
       if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial)) then
          exit;
       if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroFinal)) then
          exit;     }

       if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa)) then
          exit;

        //ACBrNFe1.WebServices.Inutiliza(edtEmitCNPJ.Text, Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));

        ACBrNFe1.WebServices.Inutiliza(dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CNPJ').AsString,
                                 Justificativa,
                                 StrToInt(Ano),
                                 StrToInt(Modelo),
                                 StrToInt(Serie),
                                 StrToInt(NumeroInicial),
                                 StrToInt(NumeroFinal));


        MemoResp.Lines.Text :=  ACBrNFe1.WebServices.Inutilizacao.RetWS;
        memoRespWS.Lines.Text :=  ACBrNFe1.WebServices.Inutilizacao.RetornoWS;
        LoadXML(ACBrNFe1.WebServices.Inutilizacao.RetornoWS, WBResposta);

        pgRespostas.ActivePageIndex := 1;

        MemoDados.Lines.Add('');
        MemoDados.Lines.Add('Inutilização');
        MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.Inutilizacao.tpAmb));
        MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.Inutilizacao.verAplic);
        MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.Inutilizacao.cStat));
        MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.Inutilizacao.xMotivo);
        MemoDados.Lines.Add('cUF: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.cUF));
        MemoDados.Lines.Add('Ano: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Ano));
        MemoDados.Lines.Add('CNPJ: '      +ACBrNFe1.WebServices.Inutilizacao.CNPJ);
        MemoDados.Lines.Add('Modelo: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Modelo));
        MemoDados.Lines.Add('Serie: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Serie));
        MemoDados.Lines.Add('NumeroInicial: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroInicial));
        MemoDados.Lines.Add('NumeroInicial: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroFinal));
        MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.Inutilizacao.dhRecbto));
        MemoDados.Lines.Add('Protocolo: '      +ACBrNFe1.WebServices.Inutilizacao.Protocolo);
        try
            if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_venda').AsInteger > 0 then
               begin
                  if MessageDlg('A NFe foi realmente inutilizada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                     begin
                       if MessageDlg('Continua?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                          begin

                            dmGeral.BUS_CD_M_NFE_CXA.edit;
                            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger     := 1;
                            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean   := true;
                            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString := '05';
                            dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);

                            ReabrePed := 'N';

                            if MessageDlg('Deseja reabrir pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                              begin
                                ReabrePed := 'S';
                              end;


                            try
                               SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                               retorno := SMPrincipal.enReabrePed(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,ReabrePed);
                               if retorno <> 'OK' then
                                  begin
                                    ShowMessage('Erro: ' + retorno);
                                  end
                               else
                                  begin
                                    if ReabrePed='S' then
                                      Showmessage('Pedido de Venda reaberto com sucesso!')
                                    else
                                      Showmessage('Pedido de Venda cancelado com sucesso!');
                                  end;
                            finally
                               FreeAndNil(SMPrincipal);
                               //AtuGridNota;
                            end;
                          end;
                    end;
               end;

          finally
             //AtuGridNota;
          end;
     end
        else
           begin
             if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_venda').AsInteger > 0 then
                 begin
                   try
                      if MessageDlg('Deseja somente inutilizar a nota fiscal no sistema?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                         begin
                           if MessageDlg('Continua?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                              begin

                                dmGeral.BUS_CD_M_NFE_CXA.edit;
                                dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger     := 1;
                                dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean   := true;
                                dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString := '05';
                                dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);


                                ReabrePed := 'N';

                                if MessageDlg('Deseja reabrir pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                  begin
                                    ReabrePed := 'S';
                                  end;

                                try
                                   SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                                   retorno := SMPrincipal.enReabrePed(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,ReabrePed);
                                   if retorno <> 'OK' then
                                      begin
                                        ShowMessage('Erro: ' + retorno);
                                      end
                                   else
                                      begin
                                        if ReabrePed='S' then
                                          Showmessage('Pedido de Venda reaberto com sucesso!')
                                        else
                                          Showmessage('Pedido de Venda cancelado com sucesso!');
                                      end;
                                finally
                                   FreeAndNil(SMPrincipal);
                                   //AtuGridNota;
                                end;
                              end;
                        end;
                    finally
                      // AtuGridNota;
                    end;
                 end;
           end;
     finally
       AtuGridNota;
     end;
end;

procedure TfrmNFCe.ACBrNFe1StatusChange(Sender: TObject);
begin
  case ACBrNFe1.Status of
    stIdle :
    begin
      if ( frmStatus <> nil ) then
        frmStatus.Hide;
    end;
    stNFeStatusServico :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeRetRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeConsulta :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeCancelamento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeInutilizacao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecibo :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCadastro :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEmail :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Email...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCCe :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Carta de Correção...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEvento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Evento...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
  end;
  Application.ProcessMessages;
end;

procedure TfrmNFCe.AtuGridNota;
var
  id_fiscal: string;
begin
  id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
  FAT_RN_M_CXA.FatAtuDadosTelaCxa;
  dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
end;

procedure TfrmNFCe.sbtnGetCertClick(Sender: TObject);
begin
  edtNumSerie.Text := ACBrNFe1.SSL.SelecionarCertificado;
end;

procedure TfrmNFCe.btnGerarNFEClick(Sender: TObject);
var
 vAux : String;
begin
if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
    exit;

  ACBrNFe1.NotasFiscais.Clear;

  GerarNFe(vAux);

  ACBrNFe1.NotasFiscais.Assinar;

  ACBrNFe1.NotasFiscais.Items[0].GravarXML();
  ShowMessage('Arquivo gerado em: '+ACBrNFe1.NotasFiscais.Items[0].NomeArq);
  MemoDados.Lines.Add('Arquivo gerado em: '+ACBrNFe1.NotasFiscais.Items[0].NomeArq);
  MemoResp.Lines.LoadFromFile(ACBrNFe1.NotasFiscais.Items[0].NomeArq);
  LoadXML(MemoResp.Text, WBResposta);
  pgRespostas.ActivePageIndex := 1;
end;

procedure TfrmNFCe.btnConsCadClick(Sender: TObject);
var
 UF, Documento : String;
begin
 if not(InputQuery('WebServices Consulta Cadastro ', 'UF do Documento a ser Consultado:',    UF)) then
    exit;
 if not(InputQuery('WebServices Consulta Cadastro ', 'Documento(CPF/CNPJ)',    Documento)) then
    exit;
  Documento :=  Trim(OnlyNumber(Documento));

  ACBrNFe1.WebServices.ConsultaCadastro.UF  := UF;
  if Length(Documento) > 11 then
     ACBrNFe1.WebServices.ConsultaCadastro.CNPJ := Documento
  else
     ACBrNFe1.WebServices.ConsultaCadastro.CPF := Documento;
  ACBrNFe1.WebServices.ConsultaCadastro.Executar;

  MemoResp.Lines.Text := ACBrNFe1.WebServices.ConsultaCadastro.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.ConsultaCadastro.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.ConsultaCadastro.RetornoWS, WBResposta);

  pgRespostas.ActivePageIndex := 1;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Consulta Cadastro');
 MemoDados.Lines.Add('versao: ' +ACBrNFe1.WebServices.ConsultaCadastro.versao);
  MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.ConsultaCadastro.verAplic);
  MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.ConsultaCadastro.cStat));
  MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.ConsultaCadastro.xMotivo);
  MemoDados.Lines.Add('DhCons: ' +DateTimeToStr(ACBrNFe1.WebServices.ConsultaCadastro.DhCons));

end;

procedure TfrmNFCe.btnGerarPDFClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFe1.NotasFiscais.Clear;
  if OpenDialog1.Execute then
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

  ACBrNFe1.NotasFiscais.ImprimirPDF;
end;

procedure TfrmNFCe.btnGerarTXTClick(Sender: TObject);
var
   vAux, vNumLote : String;
begin
  if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
    exit;

  if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote)) then
    exit;

  vNumLote := OnlyNumber(vNumLote);

  if Trim(vNumLote) = '' then
   begin
     MessageDlg('Número do Lote inválido.',mtError,[mbok],0);
     exit;
   end;

  ACBrNFe1.NotasFiscais.Clear;

  GerarNFe(vAux);

  ACBrNFe1.NotasFiscais.GravarTXT({caminho e nome do arquivo TXT});
end;

procedure TfrmNFCe.btnEnviarEmailClick(Sender: TObject);
var
 Para : String;
 CC: Tstrings;
begin
  if not(InputQuery('Enviar Email', 'Email de destino', Para)) then
    exit;

  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    CC:=TstringList.Create;
    try
      CC.Add('andrefmoraes@gmail.com'); //especifique um email vÃ¡lido
      CC.Add('anfm@zipmail.com.br');    //especifique um email vÃ¡lido

      ACBrMail1.Host := edtSmtpHost.Text;
      ACBrMail1.Port := edtSmtpPort.Text;
      ACBrMail1.Username := edtSmtpUser.Text;
      ACBrMail1.Password := edtSmtpPass.Text;
      ACBrMail1.From := edtSmtpUser.Text;
      ACBrMail1.SetSSL := cbEmailSSL.Checked; // SSL - ConexÃ£o Segura
      ACBrMail1.SetTLS := cbEmailSSL.Checked; // Auto TLS
      ACBrMail1.ReadingConfirmation := False; //Pede confirmaÃ§Ã£o de leitura do email
      ACBrMail1.UseThread := False;           //Aguarda Envio do Email(nÃ£o usa thread)
      ACBrMail1.FromName := 'Projeto ACBr - ACBrNFe';

      ACBrNFe1.NotasFiscais.Items[0].EnviarEmail( Para, edtEmailAssunto.Text,
                                               mmEmailMsg.Lines
                                               , True  // Enviar PDF junto
                                               , CC    // Lista com emails que serÃ£o enviado cÃ³pias - TStrings
                                               , nil); // Lista de anexos - TStrings
    finally
      CC.Free;
    end;
  end;
end;

procedure TfrmNFCe.btnConsultarReciboClick(Sender: TObject);
var
  aux : String;
begin
  if not(InputQuery('Consultar Recibo Lote', 'Número do Recibo', aux)) then
    exit;
  ACBrNFe1.WebServices.Recibo.Recibo := aux;;
  ACBrNFe1.WebServices.Recibo.Executar;

  MemoResp.Lines.Text := ACBrNFe1.WebServices.Recibo.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.Recibo.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.Recibo.RetornoWS, WBResposta);

  pgRespostas.ActivePageIndex := 1;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Consultar Recibo');
  MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.Recibo.tpAmb));
  MemoDados.Lines.Add('versao: ' +ACBrNFe1.WebServices.Recibo.versao);
  MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.Recibo.verAplic);
  MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.Recibo.cStat));
  MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.Recibo.xMotivo);
  MemoDados.Lines.Add('cUF: '    +IntToStr(ACBrNFe1.WebServices.Recibo.cUF));
  MemoDados.Lines.Add('xMsg: ' +ACBrNFe1.WebServices.Recibo.xMsg);
  MemoDados.Lines.Add('cMsg: '    +IntToStr(ACBrNFe1.WebServices.Recibo.cMsg));
  MemoDados.Lines.Add('Recibo: ' +ACBrNFe1.WebServices.Recibo.Recibo);
end;

procedure TfrmNFCe.ACBrNFe1GerarLog(const Mensagem: String);
begin
 memoLog.Lines.Add(Mensagem);
end;

procedure TfrmNFCe.btnImportarXMLClick(Sender: TObject);
var
  i, j, k, n  : integer;
  Nota, Node, NodePai, NodeItem: TTreeNode;
  NFeRTXT: TNFeRTXT;
begin
  OpenDialog1.FileName  :=  '';
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Arquivos TXT (*.TXT)|*.TXT|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    //tenta TXT
    ACBrNFe1.NotasFiscais.Add;
    NFeRTXT := TNFeRTXT.Create(ACBrNFe1.NotasFiscais.Items[0].NFe);
    NFeRTXT.CarregarArquivo(OpenDialog1.FileName);
    if NFeRTXT.LerTxt then
       NFeRTXT.Free
    else
    begin
       NFeRTXT.Free;
       //tenta XML
       ACBrNFe1.NotasFiscais.Clear;
       try
          ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
       except
          ShowMessage('Arquivo NFe Inválido');
          exit;
       end;
    end;

    trvwNFe.Items.Clear;

    for n:=0 to ACBrNFe1.NotasFiscais.Count-1 do
    begin
    with ACBrNFe1.NotasFiscais.Items[n].NFe do
     begin

       Nota := trvwNFe.Items.Add(nil,infNFe.ID);
       trvwNFe.Items.AddChild(Nota,'ID= ' +infNFe.ID);
       Node := trvwNFe.Items.AddChild(Nota,'procNFe');
       trvwNFe.Items.AddChild(Node,'tpAmb= '     +TpAmbToStr(procNFe.tpAmb));
       trvwNFe.Items.AddChild(Node,'verAplic= '  +procNFe.verAplic);
       trvwNFe.Items.AddChild(Node,'chNFe= '     +procNFe.chNFe);
       trvwNFe.Items.AddChild(Node,'dhRecbto= '  +DateTimeToStr(procNFe.dhRecbto));
       trvwNFe.Items.AddChild(Node,'nProt= '     +procNFe.nProt);
       trvwNFe.Items.AddChild(Node,'digVal= '    +procNFe.digVal);
       trvwNFe.Items.AddChild(Node,'cStat= '     +IntToStr(procNFe.cStat));
       trvwNFe.Items.AddChild(Node,'xMotivo= '   +procNFe.xMotivo);

       Node := trvwNFe.Items.AddChild(Nota,'Ide');
       trvwNFe.Items.AddChild(Node,'cNF= '     +IntToStr(Ide.cNF));
       trvwNFe.Items.AddChild(Node,'natOp= '   +Ide.natOp );
       trvwNFe.Items.AddChild(Node,'indPag= '  +IndpagToStr(Ide.indPag));
       trvwNFe.Items.AddChild(Node,'modelo= '  +IntToStr(Ide.modelo));
       trvwNFe.Items.AddChild(Node,'serie= '   +IntToStr(Ide.serie));
       trvwNFe.Items.AddChild(Node,'nNF= '     +IntToStr(Ide.nNF));
       trvwNFe.Items.AddChild(Node,'dEmi= '    +DateToStr(Ide.dEmi));
       trvwNFe.Items.AddChild(Node,'dSaiEnt= ' +DateToStr(Ide.dSaiEnt));
       trvwNFe.Items.AddChild(Node,'hSaiEnt= ' +DateToStr(Ide.hSaiEnt));
       trvwNFe.Items.AddChild(Node,'tpNF= '    +tpNFToStr(Ide.tpNF));
       trvwNFe.Items.AddChild(Node,'finNFe= '  +FinNFeToStr(Ide.finNFe));
       trvwNFe.Items.AddChild(Node,'verProc= ' +Ide.verProc);
       trvwNFe.Items.AddChild(Node,'cUF= '     +IntToStr(Ide.cUF));
       trvwNFe.Items.AddChild(Node,'cMunFG= '  +IntToStr(Ide.cMunFG));
       trvwNFe.Items.AddChild(Node,'tpImp= '   +TpImpToStr(Ide.tpImp));
       trvwNFe.Items.AddChild(Node,'tpEmis= '  +TpEmisToStr(Ide.tpEmis));
       trvwNFe.Items.AddChild(Node,'cDV= '     +IntToStr(Ide.cDV));
       trvwNFe.Items.AddChild(Node,'tpAmb= '   +TpAmbToStr(Ide.tpAmb));
       trvwNFe.Items.AddChild(Node,'finNFe= '  +FinNFeToStr(Ide.finNFe));
       trvwNFe.Items.AddChild(Node,'procEmi= ' +procEmiToStr(Ide.procEmi));
       trvwNFe.Items.AddChild(Node,'verProc= ' +Ide.verProc);
       trvwNFe.Items.AddChild(Node,'dhCont= '  +DateTimeToStr(Ide.dhCont));
       trvwNFe.Items.AddChild(Node,'xJust= '   +Ide.xJust);

       for i:=0 to Ide.NFref.Count-1 do
        begin
          if Ide.NFref.Items[i].refNFe <> '' then
          begin
            Node := trvwNFe.Items.AddChild(Node,'NFRef'+IntToStrZero(i+1,3));
            trvwNFe.Items.AddChild(Node,'refNFe= ' +Ide.NFref.Items[i].refNFe);
            trvwNFe.Items.AddChild(Node,'cUF= '    +IntToStr(Ide.NFref.Items[i].RefNF.cUF));
            trvwNFe.Items.AddChild(Node,'AAMM= '   +Ide.NFref.Items[i].RefNF.AAMM);
            trvwNFe.Items.AddChild(Node,'CNPJ= '   +Ide.NFref.Items[i].RefNF.CNPJ);
            trvwNFe.Items.AddChild(Node,'modelo= ' +IntToStr(Ide.NFref.Items[i].RefNF.modelo));
            trvwNFe.Items.AddChild(Node,'serie= '  +IntToStr(Ide.NFref.Items[i].RefNF.serie));
            trvwNFe.Items.AddChild(Node,'nNF= '    +IntToStr(Ide.NFref.Items[i].RefNF.nNF));
          end;

          if Ide.NFref.Items[i].RefECF.nCOO <> '' then
          begin
            Node := trvwNFe.Items.AddChild(Node,'refECF'+IntToStrZero(i+1,3));
            trvwNFe.Items.AddChild(Node,'mod= '  +ECFModRefToStr(Ide.NFref.Items[i].RefECF.modelo));
            trvwNFe.Items.AddChild(Node,'nECF= ' +Ide.NFref.Items[i].RefECF.nECF);
            trvwNFe.Items.AddChild(Node,'nCOO= ' +Ide.NFref.Items[i].RefECF.nCOO);
          end;
        end;

       Node := trvwNFe.Items.AddChild(Nota,'Emit');
       trvwNFe.Items.AddChild(Node,'CNPJCPF= ' +Emit.CNPJCPF);
       trvwNFe.Items.AddChild(Node,'IE='       +Emit.IE);
       trvwNFe.Items.AddChild(Node,'xNome='    +Emit.xNome);
       trvwNFe.Items.AddChild(Node,'xFant='    +Emit.xFant );
       trvwNFe.Items.AddChild(Node,'IEST='     +Emit.IEST);
       trvwNFe.Items.AddChild(Node,'IM='       +Emit.IM);
       trvwNFe.Items.AddChild(Node,'CNAE='     +Emit.CNAE);
       trvwNFe.Items.AddChild(Node,'CRT='      +CRTToStr(Emit.CRT));

       Node := trvwNFe.Items.AddChild(Node,'EnderEmit');
       trvwNFe.Items.AddChild(Node,'Fone='    +Emit.EnderEmit.fone);
       trvwNFe.Items.AddChild(Node,'CEP='     +IntToStr(Emit.EnderEmit.CEP));
       trvwNFe.Items.AddChild(Node,'xLgr='    +Emit.EnderEmit.xLgr);
       trvwNFe.Items.AddChild(Node,'nro='     +Emit.EnderEmit.nro);
       trvwNFe.Items.AddChild(Node,'xCpl='    +Emit.EnderEmit.xCpl);
       trvwNFe.Items.AddChild(Node,'xBairro=' +Emit.EnderEmit.xBairro);
       trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Emit.EnderEmit.cMun));
       trvwNFe.Items.AddChild(Node,'xMun='    +Emit.EnderEmit.xMun);
       trvwNFe.Items.AddChild(Node,'UF'       +Emit.EnderEmit.UF);
       trvwNFe.Items.AddChild(Node,'cPais='   +IntToStr(Emit.EnderEmit.cPais));
       trvwNFe.Items.AddChild(Node,'xPais='   +Emit.EnderEmit.xPais);

       if Avulsa.CNPJ  <> '' then
        begin
          Node := trvwNFe.Items.AddChild(Nota,'Avulsa');
          trvwNFe.Items.AddChild(Node,'CNPJ='    +Avulsa.CNPJ);
          trvwNFe.Items.AddChild(Node,'xOrgao='  +Avulsa.xOrgao);
          trvwNFe.Items.AddChild(Node,'matr='    +Avulsa.matr );
          trvwNFe.Items.AddChild(Node,'xAgente=' +Avulsa.xAgente);
          trvwNFe.Items.AddChild(Node,'fone='    +Avulsa.fone);
          trvwNFe.Items.AddChild(Node,'UF='      +Avulsa.UF);
          trvwNFe.Items.AddChild(Node,'nDAR='    +Avulsa.nDAR);
          trvwNFe.Items.AddChild(Node,'dEmi='    +DateToStr(Avulsa.dEmi));
          trvwNFe.Items.AddChild(Node,'vDAR='    +FloatToStr(Avulsa.vDAR));
          trvwNFe.Items.AddChild(Node,'repEmi='  +Avulsa.repEmi);
          trvwNFe.Items.AddChild(Node,'dPag='    +DateToStr(Avulsa.dPag));
        end;
       Node := trvwNFe.Items.AddChild(Nota,'Dest');
       trvwNFe.Items.AddChild(Node,'CNPJCPF= ' +Dest.CNPJCPF);
       trvwNFe.Items.AddChild(Node,'IE='       +Dest.IE);
       trvwNFe.Items.AddChild(Node,'ISUF='     +Dest.ISUF);
       trvwNFe.Items.AddChild(Node,'xNome='    +Dest.xNome);
       trvwNFe.Items.AddChild(Node,'email='    +Dest.Email);

       Node := trvwNFe.Items.AddChild(Node,'EnderDest');
       trvwNFe.Items.AddChild(Node,'Fone='    +Dest.EnderDest.Fone);
       trvwNFe.Items.AddChild(Node,'CEP='     +IntToStr(Dest.EnderDest.CEP));
       trvwNFe.Items.AddChild(Node,'xLgr='    +Dest.EnderDest.xLgr);
       trvwNFe.Items.AddChild(Node,'nro='     +Dest.EnderDest.nro);
       trvwNFe.Items.AddChild(Node,'xCpl='    +Dest.EnderDest.xCpl);
       trvwNFe.Items.AddChild(Node,'xBairro=' +Dest.EnderDest.xBairro);
       trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Dest.EnderDest.cMun));
       trvwNFe.Items.AddChild(Node,'xMun='    +Dest.EnderDest.xMun);
       trvwNFe.Items.AddChild(Node,'UF='      +Dest.EnderDest.UF );
       trvwNFe.Items.AddChild(Node,'cPais='   +IntToStr(Dest.EnderDest.cPais));
       trvwNFe.Items.AddChild(Node,'xPais='   +Dest.EnderDest.xPais);

       {if Retirada.CNPJ <> '' then
        begin
          Node := trvwNFe.Items.AddChild(Nota,'Retirada');
          trvwNFe.Items.AddChild(Node,'CNPJ='    +Retirada.CNPJ);
          trvwNFe.Items.AddChild(Node,'xLgr='    +Retirada.xLgr);
          trvwNFe.Items.AddChild(Node,'nro='     +Retirada.nro);
          trvwNFe.Items.AddChild(Node,'xCpl='    +Retirada.xCpl);
          trvwNFe.Items.AddChild(Node,'xBairro=' +Retirada.xBairro);
          trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Retirada.cMun));
          trvwNFe.Items.AddChild(Node,'xMun='    +Retirada.xMun);
          trvwNFe.Items.AddChild(Node,'UF='      +Retirada.UF);
        end;

       if Entrega.CNPJ <> '' then
        begin
          Node := trvwNFe.Items.AddChild(Nota,'Entrega');
          trvwNFe.Items.AddChild(Node,'CNPJ='    +Entrega.CNPJ);
          trvwNFe.Items.AddChild(Node,'xLgr='    +Entrega.xLgr);
          trvwNFe.Items.AddChild(Node,'nro='     +Entrega.nro);
          trvwNFe.Items.AddChild(Node,'xCpl='    +Entrega.xCpl);
          trvwNFe.Items.AddChild(Node,'xBairro=' +Entrega.xBairro);
          trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Entrega.cMun));
          trvwNFe.Items.AddChild(Node,'xMun='    +Entrega.xMun);
          trvwNFe.Items.AddChild(Node,'UF='      +Entrega.UF);
        end;}

       for I := 0 to Det.Count-1 do
        begin
          with Det.Items[I] do
           begin
               NodeItem := trvwNFe.Items.AddChild(Nota,'Produto'+IntToStrZero(I+1,3));
               trvwNFe.Items.AddChild(NodeItem,'nItem='  +IntToStr(Prod.nItem) );
               trvwNFe.Items.AddChild(NodeItem,'cProd='  +Prod.cProd );
               trvwNFe.Items.AddChild(NodeItem,'cEAN='   +Prod.cEAN);
               trvwNFe.Items.AddChild(NodeItem,'xProd='  +Prod.xProd);
               trvwNFe.Items.AddChild(NodeItem,'NCM='    +Prod.NCM);
               trvwNFe.Items.AddChild(NodeItem,'EXTIPI=' +Prod.EXTIPI);
               //trvwNFe.Items.AddChild(NodeItem,'genero=' +IntToStr(Prod.genero));
               trvwNFe.Items.AddChild(NodeItem,'CFOP='   +Prod.CFOP);
               trvwNFe.Items.AddChild(NodeItem,'uCom='   +Prod.uCom);
               trvwNFe.Items.AddChild(NodeItem,'qCom='   +FloatToStr(Prod.qCom)) ;
               trvwNFe.Items.AddChild(NodeItem,'vUnCom=' +FloatToStr(Prod.vUnCom)) ;
               trvwNFe.Items.AddChild(NodeItem,'vProd='  +FloatToStr(Prod.vProd)) ;

               trvwNFe.Items.AddChild(NodeItem,'cEANTrib=' +Prod.cEANTrib);
               trvwNFe.Items.AddChild(NodeItem,'uTrib='    +Prod.uTrib);
               trvwNFe.Items.AddChild(NodeItem,'qTrib='    +FloatToStr(Prod.qTrib));
               trvwNFe.Items.AddChild(NodeItem,'vUnTrib='  +FloatToStr(Prod.vUnTrib)) ;

               trvwNFe.Items.AddChild(NodeItem,'vFrete='      +FloatToStr(Prod.vFrete)) ;
               trvwNFe.Items.AddChild(NodeItem,'vSeg='        +FloatToStr(Prod.vSeg)) ;
               trvwNFe.Items.AddChild(NodeItem,'vDesc='       +FloatToStr(Prod.vDesc)) ;
               trvwNFe.Items.AddChild(NodeItem,'vOutro='      +FloatToStr(Prod.vOutro)) ;
               trvwNFe.Items.AddChild(NodeItem,'indTot='      +indTotToStr(Prod.IndTot)) ;
               trvwNFe.Items.AddChild(NodeItem,'xPed='        +Prod.xPed) ;
               trvwNFe.Items.AddChild(NodeItem,'nItemPedido=' +Prod.nItemPed) ;

               trvwNFe.Items.AddChild(NodeItem,'infAdProd=' +infAdProd);

               for J:=0 to Prod.DI.Count-1 do
                begin
                  if Prod.DI.Items[j].nDi <> '' then
                   begin
                     with Prod.DI.Items[j] do
                      begin
                        NodePai := trvwNFe.Items.AddChild(NodeItem,'DI'+IntToStrZero(J+1,3));
                        trvwNFe.Items.AddChild(NodePai,'nDi='         +nDi);
                        trvwNFe.Items.AddChild(NodePai,'dDi='         +DateToStr(dDi));
                        trvwNFe.Items.AddChild(NodePai,'xLocDesemb='  +xLocDesemb);
                        trvwNFe.Items.AddChild(NodePai,'UFDesemb='    +UFDesemb);
                        trvwNFe.Items.AddChild(NodePai,'dDesemb='     +DateToStr(dDesemb));
                        trvwNFe.Items.AddChild(NodePai,'cExportador=' +cExportador);;

                        for K:=0 to adi.Count-1 do
                         begin
                           with adi.Items[K] do
                            begin
                              Node := trvwNFe.Items.AddChild(NodePai,'LADI'+IntToStrZero(K+1,3));
                              trvwNFe.Items.AddChild(Node,'nAdicao='     +IntToStr(nAdicao)) ;
                              trvwNFe.Items.AddChild(Node,'nSeqAdi='     +IntToStr(nSeqAdi)) ;
                              trvwNFe.Items.AddChild(Node,'cFabricante=' +cFabricante);
                              trvwNFe.Items.AddChild(Node,'vDescDI='     +FloatToStr(vDescDI));
                            end;
                         end;
                      end;
                   end
                  else
                    Break;
                end;

              if Prod.veicProd.chassi <> '' then
               begin
                 Node := trvwNFe.Items.AddChild(NodeItem,'Veiculo');
                 with Prod.veicProd do
                  begin
                    trvwNFe.Items.AddChild(Node,'tpOP='     +tpOPToStr(tpOP));
                    trvwNFe.Items.AddChild(Node,'chassi='   +chassi) ;
                    trvwNFe.Items.AddChild(Node,'cCor='     +cCor);
                    trvwNFe.Items.AddChild(Node,'xCor='     +xCor);
                    trvwNFe.Items.AddChild(Node,'pot='      +pot);
                    trvwNFe.Items.AddChild(Node,'Cilin='      +Cilin);
                    trvwNFe.Items.AddChild(Node,'pesoL='    +pesoL);
                    trvwNFe.Items.AddChild(Node,'pesoB='    +pesoB);
                    trvwNFe.Items.AddChild(Node,'nSerie='   +nSerie);
                    trvwNFe.Items.AddChild(Node,'tpComb='   +tpComb);
                    trvwNFe.Items.AddChild(Node,'nMotor='   +nMotor);
                    trvwNFe.Items.AddChild(Node,'CMT='     +CMT);
                    trvwNFe.Items.AddChild(Node,'dist='     +dist);
                    //trvwNFe.Items.AddChild(Node,'RENAVAM='  +RENAVAM);
                    trvwNFe.Items.AddChild(Node,'anoMod='   +IntToStr(anoMod));
                    trvwNFe.Items.AddChild(Node,'anoFab='   +IntToStr(anoFab));
                    trvwNFe.Items.AddChild(Node,'tpPint='   +tpPint);
                    trvwNFe.Items.AddChild(Node,'tpVeic='   +IntToStr(tpVeic));
                    trvwNFe.Items.AddChild(Node,'espVeic='  +IntToStr(espVeic));
                    trvwNFe.Items.AddChild(Node,'VIN='      +VIN);
                    trvwNFe.Items.AddChild(Node,'condVeic=' +condVeicToStr(condVeic));
                    trvwNFe.Items.AddChild(Node,'cMod='     +cMod);
                  end;
               end;

               for J:=0 to Prod.med.Count-1 do
                begin
                  Node := trvwNFe.Items.AddChild(NodeItem,'Medicamento'+IntToStrZero(J+1,3) );
                  with Prod.med.Items[J] do
                   begin
                     trvwNFe.Items.AddChild(Node,'nLote=' +nLote) ;
                     trvwNFe.Items.AddChild(Node,'qLote=' +FloatToStr(qLote)) ;
                     trvwNFe.Items.AddChild(Node,'dFab='  +DateToStr(dFab)) ;
                     trvwNFe.Items.AddChild(Node,'dVal='  +DateToStr(dVal)) ;
                     trvwNFe.Items.AddChild(Node,'vPMC='  +FloatToStr(vPMC)) ;
                    end;
                end;

               for J:=0 to Prod.arma.Count-1 do
                begin
                  Node := trvwNFe.Items.AddChild(NodeItem,'Arma'+IntToStrZero(J+1,3));
                  with Prod.arma.Items[J] do
                   begin
                     trvwNFe.Items.AddChild(Node,'nSerie=' +nSerie) ;
                     trvwNFe.Items.AddChild(Node,'tpArma=' +tpArmaToStr(tpArma)) ;
                     trvwNFe.Items.AddChild(Node,'nCano='  +nCano) ;
                     trvwNFe.Items.AddChild(Node,'descr='  +descr) ;
                    end;
                end;

               if (Prod.comb.cProdANP > 0) then
                begin
                 NodePai := trvwNFe.Items.AddChild(NodeItem,'Combustivel');
                 with Prod.comb do
                  begin
                    trvwNFe.Items.AddChild(NodePai,'cProdANP=' +IntToStr(cProdANP)) ;
                    trvwNFe.Items.AddChild(NodePai,'CODIF='    +CODIF) ;
                    trvwNFe.Items.AddChild(NodePai,'qTemp='    +FloatToStr(qTemp)) ;
                    trvwNFe.Items.AddChild(NodePai,'UFcons='    +UFcons) ;

                    Node := trvwNFe.Items.AddChild(NodePai,'CIDE'+IntToStrZero(I+1,3));
                    trvwNFe.Items.AddChild(Node,'qBCprod='   +FloatToStr(CIDE.qBCprod)) ;
                    trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(CIDE.vAliqProd)) ;
                    trvwNFe.Items.AddChild(Node,'vCIDE='     +FloatToStr(CIDE.vCIDE)) ;

                    Node := trvwNFe.Items.AddChild(NodePai,'ICMSComb'+IntToStrZero(I+1,3));
                    trvwNFe.Items.AddChild(Node,'vBCICMS='   +FloatToStr(ICMS.vBCICMS)) ;
                    trvwNFe.Items.AddChild(Node,'vICMS='     +FloatToStr(ICMS.vICMS)) ;
                    trvwNFe.Items.AddChild(Node,'vBCICMSST=' +FloatToStr(ICMS.vBCICMSST)) ;
                    trvwNFe.Items.AddChild(Node,'vICMSST='   +FloatToStr(ICMS.vICMSST)) ;

                    if (ICMSInter.vBCICMSSTDest>0) then
                     begin
                       Node := trvwNFe.Items.AddChild(NodePai,'ICMSInter'+IntToStrZero(I+1,3));
                       trvwNFe.Items.AddChild(Node,'vBCICMSSTDest=' +FloatToStr(ICMSInter.vBCICMSSTDest)) ;
                       trvwNFe.Items.AddChild(Node,'vICMSSTDest='   +FloatToStr(ICMSInter.vICMSSTDest)) ;
                     end;

                    if (ICMSCons.vBCICMSSTCons>0) then
                     begin
                       Node := trvwNFe.Items.AddChild(NodePai,'ICMSCons'+IntToStrZero(I+1,3));
                       trvwNFe.Items.AddChild(Node,'vBCICMSSTCons=' +FloatToStr(ICMSCons.vBCICMSSTCons)) ;
                       trvwNFe.Items.AddChild(Node,'vICMSSTCons='   +FloatToStr(ICMSCons.vICMSSTCons)) ;
                       trvwNFe.Items.AddChild(Node,'UFCons='        +ICMSCons.UFcons) ;
                     end;
                  end;
               end;

               with Imposto do
                begin
                   NodePai := trvwNFe.Items.AddChild(NodeItem,'Imposto');

                   if ISSQN.cSitTrib = ISSQNcSitTribVazio then
                   begin
                     Node := trvwNFe.Items.AddChild(NodePai,'ICMS');
                     with ICMS do
                      begin
                        trvwNFe.Items.AddChild(Node,'CST=' +CSTICMSToStr(CST));
                        trvwNFe.Items.AddChild(Node,'CSOSN=' +CSOSNIcmsToStr(CSOSN));
                        trvwNFe.Items.AddChild(Node,'orig='  +OrigToStr(ICMS.orig));
                        trvwNFe.Items.AddChild(Node,'modBC=' +modBCToStr(ICMS.modBC));
                        trvwNFe.Items.AddChild(Node,'pRedBC=' +FloatToStr(ICMS.pRedBC));
                        trvwNFe.Items.AddChild(Node,'vBC='   +FloatToStr(ICMS.vBC));
                        trvwNFe.Items.AddChild(Node,'pICMS=' +FloatToStr(ICMS.pICMS));
                        trvwNFe.Items.AddChild(Node,'vICMS=' +FloatToStr(ICMS.vICMS));
                        trvwNFe.Items.AddChild(Node,'modBCST='  +modBCSTToStr(ICMS.modBCST));
                        trvwNFe.Items.AddChild(Node,'pMVAST='   +FloatToStr(ICMS.pMVAST));
                        trvwNFe.Items.AddChild(Node,'pRedBCST=' +FloatToStr(ICMS.pRedBCST));
                        trvwNFe.Items.AddChild(Node,'vBCST='    +FloatToStr(ICMS.vBCST));
                        trvwNFe.Items.AddChild(Node,'pICMSST='  +FloatToStr(ICMS.pICMSST));
                        trvwNFe.Items.AddChild(Node,'vICMSST='  +FloatToStr(ICMS.vICMSST));
                        trvwNFe.Items.AddChild(Node,'vBCSTRet='   +FloatToStr(ICMS.vBCSTRet));
                        trvwNFe.Items.AddChild(Node,'vICMSSTRet=' +FloatToStr(ICMS.vICMSSTRet));
                        trvwNFe.Items.AddChild(Node,'pCredSN='   +FloatToStr(ICMS.pCredSN));
                        trvwNFe.Items.AddChild(Node,'vCredICMSSN='   +FloatToStr(ICMS.vCredICMSSN));
                      end;
                   end
                   else
                   begin
                     Node := trvwNFe.Items.AddChild(NodePai,'ISSQN');
                     with ISSQN do
                      begin
                        trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(vBC));
                        trvwNFe.Items.AddChild(Node,'vAliq='     +FloatToStr(vAliq));
                        trvwNFe.Items.AddChild(Node,'vISSQN='    +FloatToStr(vISSQN));
                        trvwNFe.Items.AddChild(Node,'cMunFG='    +IntToStr(cMunFG));
                        trvwNFe.Items.AddChild(Node,'cListServ=' +cListServ);
                      end;
                   end;

                   if (IPI.vBC > 0) then
                    begin
                      Node := trvwNFe.Items.AddChild(NodePai,'IPI');
                      with IPI do
                       begin
                         trvwNFe.Items.AddChild(Node,'CST='       +CSTIPIToStr(CST)) ;
                         trvwNFe.Items.AddChild(Node,'clEnq='    +clEnq);
                         trvwNFe.Items.AddChild(Node,'CNPJProd=' +CNPJProd);
                         trvwNFe.Items.AddChild(Node,'cSelo='    +cSelo);
                         trvwNFe.Items.AddChild(Node,'qSelo='    +IntToStr(qSelo));
                         trvwNFe.Items.AddChild(Node,'cEnq='     +cEnq);

                         trvwNFe.Items.AddChild(Node,'vBC='    +FloatToStr(vBC));
                         trvwNFe.Items.AddChild(Node,'qUnid='  +FloatToStr(qUnid));
                         trvwNFe.Items.AddChild(Node,'vUnid='  +FloatToStr(vUnid));
                         trvwNFe.Items.AddChild(Node,'pIPI='   +FloatToStr(pIPI));
                         trvwNFe.Items.AddChild(Node,'vIPI='   +FloatToStr(vIPI));
                       end;
                    end;

                   if (II.vBc > 0) then
                    begin
                      Node := trvwNFe.Items.AddChild(NodePai,'II');
                      with II do
                       begin
                         trvwNFe.Items.AddChild(Node,'vBc='      +FloatToStr(vBc));
                         trvwNFe.Items.AddChild(Node,'vDespAdu=' +FloatToStr(vDespAdu));
                         trvwNFe.Items.AddChild(Node,'vII='      +FloatToStr(vII));
                         trvwNFe.Items.AddChild(Node,'vIOF='     +FloatToStr(vIOF));
                       end;
                    end;

                   Node := trvwNFe.Items.AddChild(NodePai,'PIS');
                   with PIS do
                    begin
                      trvwNFe.Items.AddChild(Node,'CST=' +CSTPISToStr(CST));

                      if (CST = pis01) or (CST = pis02) then
                       begin
                         trvwNFe.Items.AddChild(Node,'vBC='  +FloatToStr(PIS.vBC));
                         trvwNFe.Items.AddChild(Node,'pPIS=' +FloatToStr(PIS.pPIS));
                         trvwNFe.Items.AddChild(Node,'vPIS=' +FloatToStr(PIS.vPIS));
                       end
                      else if CST = pis03 then
                       begin
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(PIS.qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(PIS.vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vPIS='      +FloatToStr(PIS.vPIS));
                       end
                      else if CST = pis99 then
                       begin
                         trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(PIS.vBC));
                         trvwNFe.Items.AddChild(Node,'pPIS='      +FloatToStr(PIS.pPIS));
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(PIS.qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(PIS.vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vPIS='      +FloatToStr(PIS.vPIS));
                       end;
                    end;

                   if (PISST.vBc>0) then
                    begin
                      Node := trvwNFe.Items.AddChild(NodePai,'PISST');
                      with PISST do
                       begin
                         trvwNFe.Items.AddChild(Node,'vBc='       +FloatToStr(vBc));
                         trvwNFe.Items.AddChild(Node,'pPis='      +FloatToStr(pPis));
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vPIS='      +FloatToStr(vPIS));
                       end;
                      end;

                   Node := trvwNFe.Items.AddChild(NodePai,'COFINS');
                   with COFINS do
                    begin
                      trvwNFe.Items.AddChild(Node,'CST=' +CSTCOFINSToStr(CST));

                      if (CST = cof01) or (CST = cof02)   then
                       begin
                         trvwNFe.Items.AddChild(Node,'vBC='     +FloatToStr(COFINS.vBC));
                         trvwNFe.Items.AddChild(Node,'pCOFINS=' +FloatToStr(COFINS.pCOFINS));
                         trvwNFe.Items.AddChild(Node,'vCOFINS=' +FloatToStr(COFINS.vCOFINS));
                       end
                      else if CST = cof03 then
                       begin
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(COFINS.qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(COFINS.vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vCOFINS='   +FloatToStr(COFINS.vCOFINS));
                       end
                      else if CST = cof99 then
                       begin
                         trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(COFINS.vBC));
                         trvwNFe.Items.AddChild(Node,'pCOFINS='   +FloatToStr(COFINS.pCOFINS));
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(COFINS.qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(COFINS.vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vCOFINS='   +FloatToStr(COFINS.vCOFINS));
                       end;
                    end;

                   if (COFINSST.vBC > 0) then
                    begin
                      Node := trvwNFe.Items.AddChild(NodePai,'COFINSST');
                      with COFINSST do
                       begin
                         trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(vBC));
                         trvwNFe.Items.AddChild(Node,'pCOFINS='   +FloatToStr(pCOFINS));
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vCOFINS='   +FloatToStr(vCOFINS));
                       end;
                    end;
                end;
             end;
          end ;

       NodePai := trvwNFe.Items.AddChild(Nota,'Total');
       Node := trvwNFe.Items.AddChild(NodePai,'ICMSTot');
       trvwNFe.Items.AddChild(Node,'vBC='     +FloatToStr(Total.ICMSTot.vBC));
       trvwNFe.Items.AddChild(Node,'vICMS='   +FloatToStr(Total.ICMSTot.vICMS)) ;
       trvwNFe.Items.AddChild(Node,'vBCST='   +FloatToStr(Total.ICMSTot.vBCST)) ;
       trvwNFe.Items.AddChild(Node,'vST='     +FloatToStr(Total.ICMSTot.vST)) ;
       trvwNFe.Items.AddChild(Node,'vProd='   +FloatToStr(Total.ICMSTot.vProd)) ;
       trvwNFe.Items.AddChild(Node,'vFrete='  +FloatToStr(Total.ICMSTot.vFrete)) ;
       trvwNFe.Items.AddChild(Node,'vSeg='    +FloatToStr(Total.ICMSTot.vSeg)) ;
       trvwNFe.Items.AddChild(Node,'vDesc='   +FloatToStr(Total.ICMSTot.vDesc)) ;
       trvwNFe.Items.AddChild(Node,'vII='     +FloatToStr(Total.ICMSTot.vII)) ;
       trvwNFe.Items.AddChild(Node,'vIPI='    +FloatToStr(Total.ICMSTot.vIPI)) ;
       trvwNFe.Items.AddChild(Node,'vPIS='    +FloatToStr(Total.ICMSTot.vPIS)) ;
       trvwNFe.Items.AddChild(Node,'vCOFINS=' +FloatToStr(Total.ICMSTot.vCOFINS)) ;
       trvwNFe.Items.AddChild(Node,'vOutro='  +FloatToStr(Total.ICMSTot.vOutro)) ;
       trvwNFe.Items.AddChild(Node,'vNF='     +FloatToStr(Total.ICMSTot.vNF)) ;

       if Total.ISSQNtot.vServ > 0 then
        begin
          Node := trvwNFe.Items.AddChild(NodePai,'ISSQNtot');
          trvwNFe.Items.AddChild(Node,'vServ='   +FloatToStr(Total.ISSQNtot.vServ)) ;
          trvwNFe.Items.AddChild(Node,'vBC='     +FloatToStr(Total.ISSQNTot.vBC)) ;
          trvwNFe.Items.AddChild(Node,'vISS='    +FloatToStr(Total.ISSQNTot.vISS)) ;
          trvwNFe.Items.AddChild(Node,'vPIS='    +FloatToStr(Total.ISSQNTot.vPIS)) ;
          trvwNFe.Items.AddChild(Node,'vCOFINS=' +FloatToStr(Total.ISSQNTot.vCOFINS)) ;
        end;

       Node := trvwNFe.Items.AddChild(NodePai,'retTrib');
       trvwNFe.Items.AddChild(Node,'vRetPIS='   +FloatToStr(Total.retTrib.vRetPIS)) ;
       trvwNFe.Items.AddChild(Node,'vRetCOFINS='+FloatToStr(Total.retTrib.vRetCOFINS)) ;
       trvwNFe.Items.AddChild(Node,'vRetCSLL='  +FloatToStr(Total.retTrib.vRetCSLL)) ;
       trvwNFe.Items.AddChild(Node,'vBCIRRF='   +FloatToStr(Total.retTrib.vBCIRRF)) ;
       trvwNFe.Items.AddChild(Node,'vIRRF='     +FloatToStr(Total.retTrib.vIRRF)) ;
       trvwNFe.Items.AddChild(Node,'vBCRetPrev='+FloatToStr(Total.retTrib.vBCRetPrev)) ;
       trvwNFe.Items.AddChild(Node,'vRetPrev='  +FloatToStr(Total.retTrib.vRetPrev)) ;

       NodePai := trvwNFe.Items.AddChild(Nota,'Transp');
       Node := trvwNFe.Items.AddChild(NodePai,'Transporta');
       trvwNFe.Items.AddChild(Node,'modFrete=' +modFreteToStr(Transp.modFrete));
       trvwNFe.Items.AddChild(Node,'CNPJCPF='  +Transp.Transporta.CNPJCPF);
       trvwNFe.Items.AddChild(Node,'xNome='    +Transp.Transporta.xNome);
       trvwNFe.Items.AddChild(Node,'IE='       +Transp.Transporta.IE);
       trvwNFe.Items.AddChild(Node,'xEnder='   +Transp.Transporta.xEnder);
       trvwNFe.Items.AddChild(Node,'xMun='     +Transp.Transporta.xMun);
       trvwNFe.Items.AddChild(Node,'UF='       +Transp.Transporta.UF);

       Node := trvwNFe.Items.AddChild(NodePai,'retTransp');
       trvwNFe.Items.AddChild(Node,'vServ='    +FloatToStr(Transp.retTransp.vServ)) ;
       trvwNFe.Items.AddChild(Node,'vBCRet='   +FloatToStr(Transp.retTransp.vBCRet)) ;
       trvwNFe.Items.AddChild(Node,'pICMSRet=' +FloatToStr(Transp.retTransp.pICMSRet)) ;
       trvwNFe.Items.AddChild(Node,'vICMSRet=' +FloatToStr(Transp.retTransp.vICMSRet)) ;
       trvwNFe.Items.AddChild(Node,'CFOP='     +Transp.retTransp.CFOP);
       trvwNFe.Items.AddChild(Node,'cMunFG='   +FloatToStr(Transp.retTransp.cMunFG));

       Node := trvwNFe.Items.AddChild(NodePai,'veicTransp');
       trvwNFe.Items.AddChild(Node,'placa='  +Transp.veicTransp.placa);
       trvwNFe.Items.AddChild(Node,'UF='     +Transp.veicTransp.UF);
       trvwNFe.Items.AddChild(Node,'RNTC='   +Transp.veicTransp.RNTC);

       for I:=0 to Transp.Reboque.Count-1 do
        begin
          Node := trvwNFe.Items.AddChild(NodePai,'Reboque'+IntToStrZero(I+1,3));
          with Transp.Reboque.Items[I] do
           begin
             trvwNFe.Items.AddChild(Node,'placa=' +placa) ;
             trvwNFe.Items.AddChild(Node,'UF='    +UF) ;
             trvwNFe.Items.AddChild(Node,'RNTC='  +RNTC) ;
           end;
        end;

       for I:=0 to Transp.Vol.Count-1 do
        begin
          Node := trvwNFe.Items.AddChild(NodePai,'Volume'+IntToStrZero(I+1,3));
          with Transp.Vol.Items[I] do
           begin
             trvwNFe.Items.AddChild(Node,'qVol='  +IntToStr(qVol)) ;
             trvwNFe.Items.AddChild(Node,'esp='   +esp);
             trvwNFe.Items.AddChild(Node,'marca=' +marca);
             trvwNFe.Items.AddChild(Node,'nVol='  +nVol);
             trvwNFe.Items.AddChild(Node,'pesoL=' +FloatToStr(pesoL)) ;
             trvwNFe.Items.AddChild(Node,'pesoB'  +FloatToStr(pesoB)) ;

             for J:=0 to Lacres.Count-1 do
              begin
                Node := trvwNFe.Items.AddChild(Node,'Lacre'+IntToStrZero(I+1,3)+IntToStrZero(J+1,3) );
                trvwNFe.Items.AddChild(Node,'nLacre='+Lacres.Items[J].nLacre) ;
              end;
           end;
        end;

       NodePai := trvwNFe.Items.AddChild(Nota,'Cobr');
       Node    := trvwNFe.Items.AddChild(NodePai,'Fat');
       trvwNFe.Items.AddChild(Node,'nFat='  +Cobr.Fat.nFat);
       trvwNFe.Items.AddChild(Node,'vOrig=' +FloatToStr(Cobr.Fat.vOrig)) ;
       trvwNFe.Items.AddChild(Node,'vDesc=' +FloatToStr(Cobr.Fat.vDesc)) ;
       trvwNFe.Items.AddChild(Node,'vLiq='  +FloatToStr(Cobr.Fat.vLiq)) ;

       for I:=0 to Cobr.Dup.Count-1 do
        begin
          Node    := trvwNFe.Items.AddChild(NodePai,'Duplicata'+IntToStrZero(I+1,3));
          with Cobr.Dup.Items[I] do
           begin
             trvwNFe.Items.AddChild(Node,'nDup='  +nDup) ;
             trvwNFe.Items.AddChild(Node,'dVenc=' +DateToStr(dVenc));
             trvwNFe.Items.AddChild(Node,'vDup='  +FloatToStr(vDup)) ;
           end;
        end;

       NodePai := trvwNFe.Items.AddChild(Nota,'InfAdic');
       trvwNFe.Items.AddChild(NodePai,'infCpl='     +InfAdic.infCpl);
       trvwNFe.Items.AddChild(NodePai,'infAdFisco=' +InfAdic.infAdFisco);

       for I:=0 to InfAdic.obsCont.Count-1 do
        begin
          Node := trvwNFe.Items.AddChild(NodePai,'obsCont'+IntToStrZero(I+1,3));
          with InfAdic.obsCont.Items[I] do
           begin
             trvwNFe.Items.AddChild(Node,'xCampo=' +xCampo) ;
             trvwNFe.Items.AddChild(Node,'xTexto=' +xTexto);
           end;
        end;

         for I:=0 to InfAdic.obsFisco.Count-1 do
          begin
            Node := trvwNFe.Items.AddChild(NodePai,'obsFisco'+IntToStrZero(I+1,3));
            with InfAdic.obsFisco.Items[I] do
             begin
                trvwNFe.Items.AddChild(Node,'xCampo=' +xCampo) ;
                trvwNFe.Items.AddChild(Node,'xTexto=' +xTexto);
             end;
          end;

         for I:=0 to InfAdic.procRef.Count-1 do
          begin
            Node := trvwNFe.Items.AddChild(NodePai,'procRef'+IntToStrZero(I+1,3));
            with InfAdic.procRef.Items[I] do
             begin
               trvwNFe.Items.AddChild(Node,'nProc='   +nProc) ;
               trvwNFe.Items.AddChild(Node,'indProc=' +indProcToStr(indProc));
             end;
          end;

         if (exporta.UFembarq <> '') then
          begin
            Node := trvwNFe.Items.AddChild(Nota,'exporta');
            trvwNFe.Items.AddChild(Node,'UFembarq='   +exporta.UFembarq) ;
            trvwNFe.Items.AddChild(Node,'xLocEmbarq=' +exporta.xLocEmbarq);
          end;

         if (compra.xNEmp <> '') then
          begin
            Node := trvwNFe.Items.AddChild(Nota,'compra');
            trvwNFe.Items.AddChild(Node,'xNEmp=' +compra.xNEmp) ;
            trvwNFe.Items.AddChild(Node,'xPed='  +compra.xPed);
            trvwNFe.Items.AddChild(Node,'xCont=' +compra.xCont);
          end;
     end;
       pgRespostas.ActivePageIndex := 3;
     end;

  end;
end;

procedure TfrmNFCe.lblMouseEnter(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold,fsUnderline];
end;

procedure TfrmNFCe.lblMouseLeave(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold];
end;

procedure TfrmNFCe.lblColaboradorClick(Sender: TObject);
begin
  OpenURL('http://acbr.sourceforge.net/drupal/?q=node/5');
end;

procedure TfrmNFCe.lblPatrocinadorClick(Sender: TObject);
begin
  OpenURL('http://acbr.sourceforge.net/drupal/?q=node/35');
end;

procedure TfrmNFCe.lblDoar1Click(Sender: TObject);
begin
  OpenURL('http://acbr.sourceforge.net/drupal/?q=node/14');
end;

procedure TfrmNFCe.GerarNFe(NumNFe : String);
begin
  with ACBrNFe1.NotasFiscais.Add.NFe do
   begin
     Ide.cNF       := StrToInt(NumNFe); //Caso não seja preenchido será gerado um número aleatório pelo componente
     Ide.natOp     := 'VENDA PRODUCAO DO ESTAB.';
     Ide.indPag    := ipVista;
     Ide.modelo    := 55;
     Ide.serie     := 1;
     Ide.nNF       := StrToInt(NumNFe);
     Ide.dEmi      := Date;
     Ide.dSaiEnt   := Date;
     Ide.hSaiEnt   := Now;
     Ide.tpNF      := tnSaida;
     Ide.tpEmis    := TpcnTipoEmissao(cbFormaEmissao.ItemIndex); ;
     Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta variável quando for para ambiente de produção
     Ide.verProc   := '1.0.0.0'; //Versão do seu sistema
     Ide.cUF       := UFtoCUF(edtEmitUF.Text);
     Ide.cMunFG    := StrToInt(edtEmitCodCidade.Text);
     Ide.finNFe    := fnNormal;
     if  Assigned( ACBrNFe1.DANFE ) then
        Ide.tpImp     := ACBrNFe1.DANFE.TipoDANFE;

//     Ide.dhCont := date;
//     Ide.xJust  := 'Justificativa Contingencia';

//Para NFe referenciada use os campos abaixo
{     with Ide.NFref.Add do
      begin
        refNFe       := ''; //NFe Eletronica

        RefNF.cUF    := 0;  // |
        RefNF.AAMM   := ''; // |
        RefNF.CNPJ   := ''; // |
        RefNF.modelo := 1;  // |- NFe Modelo 1/1A
        RefNF.serie  := 1;  // |
        RefNF.nNF    := 0;  // |

        RefNFP.cUF     := 0;  // |
        RefNFP.AAMM    := ''; // |
        RefNFP.CNPJCPF := ''; // |
        RefNFP.IE      := ''; // |- NF produtor Rural
        RefNFP.modelo  := ''; // |
        RefNFP.serie   := 1;  // |
        RefNFP.nNF     := 0;  // |

        RefECF.modelo  := ECFModRef2B; // |
        RefECF.nECF    := '';          // |- Cupom Fiscal
        RefECF.nCOO    := '';          // |
      end;
}
      Emit.CNPJCPF           := edtEmitCNPJ.Text;
      Emit.IE                := edtEmitIE.Text;
      Emit.xNome             := edtEmitRazao.Text;
      Emit.xFant             := edtEmitFantasia.Text;

      Emit.EnderEmit.fone    := edtEmitFone.Text;
      Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP.Text);
      Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
      Emit.EnderEmit.nro     := edtEmitNumero.Text;
      Emit.EnderEmit.xCpl    := edtEmitComp.Text;
      Emit.EnderEmit.xBairro := edtEmitBairro.Text;
      Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
      Emit.EnderEmit.xMun    := edtEmitCidade.Text;
      Emit.EnderEmit.UF      := edtEmitUF.Text;
      Emit.enderEmit.cPais   := 1058;
      Emit.enderEmit.xPais   := 'BRASIL';

      Emit.IEST              := '';
      Emit.IM                := '2648800'; // Preencher no caso de existir serviços na nota
      Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se é permitido
                                    // a inclusão de serviços na NFe
      Emit.CRT               := crtRegimeNormal;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

//Para NFe Avulsa preencha os campos abaixo
{      Avulsa.CNPJ    := '';
      Avulsa.xOrgao  := '';
      Avulsa.matr    := '';
      Avulsa.xAgente := '';
      Avulsa.fone    := '';
      Avulsa.UF      := '';
      Avulsa.nDAR    := '';
      Avulsa.dEmi    := now;
      Avulsa.vDAR    := 0;
      Avulsa.repEmi  := '';
      Avulsa.dPag    := now;             }

      Dest.CNPJCPF           := '05481336000137';
      Dest.IE                := '687138770110';
      Dest.ISUF              := '';
      Dest.xNome             := 'D.J. COM. E LOCAÇÃO DE SOFTWARES LTDA - ME';

      Dest.EnderDest.Fone    := '1532599600';
      Dest.EnderDest.CEP     := 18270170;
      Dest.EnderDest.xLgr    := 'Rua Coronel Aureliano de Camargo';
      Dest.EnderDest.nro     := '973';
      Dest.EnderDest.xCpl    := '';
      Dest.EnderDest.xBairro := 'Centro';
      Dest.EnderDest.cMun    := 3554003;
      Dest.EnderDest.xMun    := 'Tatui';
      Dest.EnderDest.UF      := 'SP';
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';

//Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
{      Retirada.CNPJCPF := '';
      Retirada.xLgr    := '';
      Retirada.nro     := '';
      Retirada.xCpl    := '';
      Retirada.xBairro := '';
      Retirada.cMun    := 0;
      Retirada.xMun    := '';
      Retirada.UF      := '';}

//Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
{      Entrega.CNPJCPF := '';
      Entrega.xLgr    := '';
      Entrega.nro     := '';
      Entrega.xCpl    := '';
      Entrega.xBairro := '';
      Entrega.cMun    := 0;
      Entrega.xMun    := '';
      Entrega.UF      := '';}

//Adicionando Produtos
      with Det.Add do
       begin
         Prod.nItem    := 1; // Número sequencial, para cada item deve ser incrementado
         Prod.cProd    := '123456';
         Prod.cEAN     := '7896523206646';
         Prod.xProd    := 'TESTE DE PRODUTO';
         Prod.NCM      := '94051010'; // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
         Prod.EXTIPI   := '';
         Prod.CFOP     := '5101';
         Prod.uCom     := 'UN';
         Prod.qCom     := 1 ;
         Prod.vUnCom   := 100;
         Prod.vProd    := 100 ;

         Prod.cEANTrib  := '7896523206646';
         Prod.uTrib     := 'UN';
         Prod.qTrib     := 1;
         Prod.vUnTrib   := 100;

         Prod.vOutro    := 0;
         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         infAdProd      := 'Informacao Adicional do Produto';

//Declaração de Importação. Pode ser adicionada várias através do comando Prod.DI.Add
{         with Prod.DI.Add do
          begin
            nDi         := '';
            dDi         := now;
            xLocDesemb  := '';
            UFDesemb    := '';
            dDesemb     := now;
            cExportador := '';

            with adi.Add do
             begin
               nAdicao     := 1;
               nSeqAdi     := 1;
               cFabricante := '';
               vDescDI     := 0;
             end;
          end;
}
//Campos para venda de veículos novos
{         with Prod.veicProd do
          begin
            tpOP    := toVendaConcessionaria;
            chassi  := '';
            cCor    := '';
            xCor    := '';
            pot     := '';
            Cilin   := '';
            pesoL   := '';
            pesoB   := '';
            nSerie  := '';
            tpComb  := '';
            nMotor  := '';
            CMT     := '';
            dist    := '';
            RENAVAM := '';
            anoMod  := 0;
            anoFab  := 0;
            tpPint  := '';
            tpVeic  := 0;
            espVeic := 0;
            VIN     := '';
            condVeic := cvAcabado;
            cMod    := '';
          end;
}
//Campos específicos para venda de medicamentos
{         with Prod.med.Add do
          begin
            nLote := '';
            qLote := 0 ;
            dFab  := now ;
            dVal  := now ;
            vPMC  := 0 ;
          end;  }
//Campos específicos para venda de armamento
{         with Prod.arma.Add do
          begin
            nSerie := 0;
            tpArma := taUsoPermitido ;
            nCano  := 0 ;
            descr  := '' ;
          end;      }
//Campos específicos para venda de combustível(distribuidoras)
{         with Prod.comb do
          begin
            cProdANP := 0;
            CODIF    := '';
            qTemp    := 0;
            UFcons   := '';

            CIDE.qBCprod   := 0 ;
            CIDE.vAliqProd := 0 ;
            CIDE.vCIDE     := 0 ;

            ICMS.vBCICMS   := 0 ;
            ICMS.vICMS     := 0 ;
            ICMS.vBCICMSST := 0 ;
            ICMS.vICMSST   := 0 ;

            ICMSInter.vBCICMSSTDest := 0 ;
            ICMSInter.vICMSSTDest   := 0 ;

            ICMSCons.vBCICMSSTCons := 0 ;
            ICMSCons.vICMSSTCons   := 0 ;
            ICMSCons.UFcons        := '' ;
          end;}

         with Imposto do
          begin
            // lei da transparencia nos impostos
            vTotTrib := 0;

            with ICMS do
             begin
               CST          := cst00;
               ICMS.orig    := oeNacional;
               ICMS.modBC   := dbiValorOperacao;
               ICMS.vBC     := 100;
               ICMS.pICMS   := 18;
               ICMS.vICMS   := 18;
               ICMS.modBCST := dbisMargemValorAgregado;
               ICMS.pMVAST  := 0;
               ICMS.pRedBCST:= 0;
               ICMS.vBCST   := 0;
               ICMS.pICMSST := 0;
               ICMS.vICMSST := 0;
               ICMS.pRedBC  := 0;
             end;

    {        with IPI do
             begin
               CST      := ipi99 ;
               clEnq    := '999';
               CNPJProd := '';
               cSelo    := '';
               qSelo    := 0;
               cEnq     := '';

               vBC    := 100;
               qUnid  := 0;
               vUnid  := 0;
               pIPI   := 5;
               vIPI   := 5;
             end;    }
{
            with II do
             begin
               vBc      := 0;
               vDespAdu := 0;
               vII      := 0;
               vIOF     := 0;
             end;

            with PIS do
             begin
               CST      := pis99;
               PIS.vBC  := 0;
               PIS.pPIS := 0;
               PIS.vPIS := 0;

               PIS.qBCProd   := 0;
               PIS.vAliqProd := 0;
               PIS.vPIS      := 0;
             end;

            with PISST do
             begin
               vBc       := 0;
               pPis      := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vPIS      := 0;
             end;

            with COFINS do
             begin
               CST            := cof99;
               COFINS.vBC     := 0;
               COFINS.pCOFINS := 0;
               COFINS.vCOFINS := 0;

               COFINS.qBCProd   := 0;
               COFINS.vAliqProd := 0;
             end;

            with COFINSST do
             begin
               vBC       := 0;
               pCOFINS   := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vCOFINS   := 0;
             end;
}
//Grupo para serviços
{            with ISSQN do
             begin
               vBC       := 0;
               vAliq     := 0;
               vISSQN    := 0;
               cMunFG    := 0;
               cListServ := 1402; // Preencha este campo usando a tabela disponível
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;}
         end;
       end ;
 {
//Adicionando Serviços
      with Det.Add do
       begin
         Prod.nItem    := 1; // Número sequencial, para cada item deve ser incrementado
         Prod.cProd    := '123457';
         Prod.cEAN     := '';
         Prod.xProd    := 'Descrição do Serviço';
         Prod.NCM      := '99';
         Prod.EXTIPI   := '';
         Prod.CFOP     := '5933';
         Prod.uCom     := 'UN';
         Prod.qCom     := 1 ;
         Prod.vUnCom   := 100;
         Prod.vProd    := 100 ;

         Prod.cEANTrib  := '';
         Prod.uTrib     := 'UN';
         Prod.qTrib     := 1;
         Prod.vUnTrib   := 100;

         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         infAdProd      := 'Informação Adicional do Serviço';

//Grupo para serviços
            with Imposto.ISSQN do
             begin
               cSitTrib  := ISSQNcSitTribNORMAL;
               vBC       := 100;
               vAliq     := 2;
               vISSQN    := 2;
               cMunFG    := 3554003;
               cListServ := '1402'; // Preencha este campo usando a tabela disponível
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;
       end ;       }

      Total.ICMSTot.vBC     := 100;
      Total.ICMSTot.vICMS   := 18;
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := 100;
      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
      Total.ICMSTot.vDesc   := 0;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := 0;
      Total.ICMSTot.vNF     := 100;

      // lei da transparencia de impostos
      Total.ICMSTot.vTotTrib := 0;

  {    Total.ISSQNtot.vServ   := 100;
      Total.ISSQNTot.vBC     := 100;
      Total.ISSQNTot.vISS    := 2;
      Total.ISSQNTot.vPIS    := 0;
      Total.ISSQNTot.vCOFINS := 0;

      Total.retTrib.vRetPIS    := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL   := 0;
      Total.retTrib.vBCIRRF    := 0;
      Total.retTrib.vIRRF      := 0;
      Total.retTrib.vBCRetPrev := 0;
      Total.retTrib.vRetPrev   := 0;}

      Transp.modFrete := mfContaEmitente;
      Transp.Transporta.CNPJCPF  := '';
      Transp.Transporta.xNome    := '';
      Transp.Transporta.IE       := '';
      Transp.Transporta.xEnder   := '';
      Transp.Transporta.xMun     := '';
      Transp.Transporta.UF       := '';

{      Transp.retTransp.vServ    := 0;
      Transp.retTransp.vBCRet   := 0;
      Transp.retTransp.pICMSRet := 0;
      Transp.retTransp.vICMSRet := 0;
      Transp.retTransp.CFOP     := '';
      Transp.retTransp.cMunFG   := 0;         }

      Transp.veicTransp.placa := '';
      Transp.veicTransp.UF    := '';
      Transp.veicTransp.RNTC  := '';
//Dados do Reboque
{      with Transp.Reboque.Add do
       begin
         placa := '';
         UF    := '';
         RNTC  := '';
       end;}

      with Transp.Vol.Add do
       begin
         qVol  := 1;
         esp   := 'Especie';
         marca := 'Marca';
         nVol  := 'Numero';
         pesoL := 100;
         pesoB := 110;

         //Lacres do volume. Pode ser adicionado vários
         //Lacres.Add.nLacre := '';
       end;

      Cobr.Fat.nFat  := 'Numero da Fatura';
      Cobr.Fat.vOrig := 100 ;
      Cobr.Fat.vDesc := 0 ;
      Cobr.Fat.vLiq  := 100 ;

      with Cobr.Dup.Add do
       begin
         nDup  := '1234';
         dVenc := now+10;
         vDup  := 50;
       end;

      with Cobr.Dup.Add do
       begin
         nDup  := '1235';
         dVenc := now+10;
         vDup  := 50;
       end;


      InfAdic.infCpl     :=  '';
      InfAdic.infAdFisco :=  '';

      with InfAdic.obsCont.Add do
       begin
         xCampo := 'ObsCont';
         xTexto := 'Texto';
       end;

      with InfAdic.obsFisco.Add do
       begin
         xCampo := 'ObsFisco';
         xTexto := 'Texto';
       end;
//Processo referenciado
{     with InfAdic.procRef.Add do
       begin
         nProc := '';
         indProc := ipSEFAZ;
       end;                 }

      exporta.UFembarq   := '';;
      exporta.xLocEmbarq := '';

      compra.xNEmp := '';
      compra.xPed  := '';
      compra.xCont := '';
   end;

  ACBrNFe1.NotasFiscais.GerarNFe;
end;

procedure TfrmNFCe.GerarNFCe(NumNFe: String);
var
  iRet:Boolean;
  iSeq: integer;
  NroAutorizCartao: String;
  composicao: String;
begin
  with ACBrNFe1.NotasFiscais.Add.NFe do
   begin


   { Inicio demo
     Ide.cNF       := StrToInt(NumNFe); //Caso não seja preenchido será gerado um número aleatório pelo componente
     Ide.natOp     := 'VENDA';
     Ide.indPag    := ipVista;
     Ide.modelo    := 65;
     Ide.serie     := 1;
     Ide.nNF       := StrToInt(NumNFe);
     Ide.dEmi      := now;
     Ide.dSaiEnt   := now;
     Ide.hSaiEnt   := now;
     Ide.tpNF      := tnSaida;
     Ide.tpEmis    := TpcnTipoEmissao(cbFormaEmissao.ItemIndex); ;
     Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta variÃ¡vel quando for para ambiente de produÃ§Ã£o
     Ide.cUF       := UFtoCUF(edtEmitUF.Text);
     Ide.cMunFG    := StrToInt(edtEmitCodCidade.Text);
     Ide.finNFe    := fnNormal;
     Ide.tpImp     := tiNFCe;
     Ide.indFinal  := cfConsumidorFinal;
     Ide.indPres   := pcPresencial;

     //     Ide.dhCont := date;
     //     Ide.xJust  := 'Justificativa Contingencia';

---> fim demo  }

              Ide.cNF       := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger; //Caso não seja preenchido será gerado um número aleatório pelo componente
              Ide.natOp     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_descnat').AsString;
              //Ide.indPag    := ipVista;
              Ide.indPag    :=  StrToIndpag(iRet,Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_indPag').AsString));

              Ide.modelo    := 65;  // ver com sangia
              Ide.serie     := 1;   // ver com sangia
              Ide.nNF       := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger;
              Ide.dEmi      := now; //dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime;
              Ide.dSaiEnt   := now; //dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_DOCUMENTO').AsDateTime;
              Ide.hSaiEnt   := now;
              Ide.tpNF      := tnSaida;
              Ide.tpEmis    := StrToTpEmis(iRet, inttoStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('danf_tipo_emissao').AsInteger+1));
              Ide.tpAmb     := StrToTpAmb(iRet,inttoStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('situacao_emissor').AsInteger));
              Ide.cUF       := UFtoCUF(dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').AsString);
              Ide.cMunFG    := StrToInt(trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString));
              Ide.finNFe    := StrToFinNFe(iRet,inttostr(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_finalidade').AsInteger));
              Ide.tpImp     := tiNFCe;
              Ide.indFinal  := cfConsumidorFinal;
              Ide.indPres   := pcPresencial;

              // Inserido em 21/07/2022 por Maxsuel Victor
               // Nota técnica 2020.006 v1.30

              Ide.indIntermed := iiSemOperacao;

              // Ide.verProc   := CVersaoSistema;


    {
      Emit.CNPJCPF           := edtEmitCNPJ.Text;
      Emit.IE                := edtEmitIE.Text;
      Emit.xNome             := edtEmitRazao.Text;
      Emit.xFant             := edtEmitFantasia.Text;

      Emit.EnderEmit.fone    := edtEmitFone.Text;
      Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP.Text);
      Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
      Emit.EnderEmit.nro     := edtEmitNumero.Text;
      Emit.EnderEmit.xCpl    := edtEmitComp.Text;
      Emit.EnderEmit.xBairro := edtEmitBairro.Text;
      Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
      Emit.EnderEmit.xMun    := edtEmitCidade.Text;
      Emit.EnderEmit.UF      := edtEmitUF.Text;
      Emit.enderEmit.cPais   := 1058;
      Emit.enderEmit.xPais   := 'BRASIL';

      Emit.IEST              := '';
      //      Emit.IM                := '2648800'; // Preencher no caso de existir serviços na nota
      //      Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se é permitido
                                        // a inclusão de serviços na NFe
      Emit.CRT               := crtRegimeNormal;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
 fim ->     }



                Emit.CNPJCPF           := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CNPJ').AsString;
                Emit.IE                := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_IE').AsString;
                Emit.xNome             := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_RAZAO').AsString;
                Emit.xFant             := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString;
                Emit.EnderEmit.fone    := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_TELEFONE').AsString;
                Emit.EnderEmit.CEP     := StrToInt(RemoveChars(['-'],Trim(dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CEP').AsString)));
                Emit.EnderEmit.xLgr    := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_ENDERECO').AsString;
                Emit.EnderEmit.nro     := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_NUMERO').AsString;
                Emit.EnderEmit.xCpl    := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_COMPLEMENTO').AsString;
                Emit.EnderEmit.xBairro := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_BAIRRO').AsString;
                Emit.EnderEmit.cMun    := StrToInt(Trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString));
                Emit.EnderEmit.xMun    := dmGeral.CAD_CD_C_PAR.FieldByName('INT_NOMECID').AsString;
                Emit.EnderEmit.UF      := dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').AsString;
                Emit.enderEmit.cPais   := 1058;
                Emit.enderEmit.xPais   := 'BRASIL';
                Emit.IEST              := '';
                //Emit.CRT               := crtSimplesNacional;

                if dmGeral.CAD_CD_C_PAR.FieldByName('int_reg_tributario').AsInteger=0 then
                   Emit.CRT               := crtSimplesNacional
                else
                   Emit.CRT               := crtRegimeNormal;

{uuuuu
      Dest.CNPJCPF           := '90486552349';
      //      Dest.IE                := '687138770110'; //NFC-e não aceita IE
      Dest.ISUF              := '';
      Dest.xNome             := 'ANTONIO CARLOS NUNES - Cod.: 92';

      Dest.EnderDest.Fone    := '1533243333';
      Dest.EnderDest.CEP     := 64000000;
      Dest.EnderDest.xLgr    := 'Rua Coronel Aureliano de Camargo';
      Dest.EnderDest.nro     := '973';
      Dest.EnderDest.xCpl    := '';
      Dest.EnderDest.xBairro := 'Centro';
      Dest.EnderDest.cMun    := 2207793;
      Dest.EnderDest.xMun    := 'Pau DArco do Piaui';
      Dest.EnderDest.UF      := 'PI';
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';
      Dest.indIEDest :=  inNaoContribuinte; }


               if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cnpjcpf').AsString <> '99999999999') and
                  (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cnpjcpf').AsString <> '99999999998') and
                  (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cnpjcpf').AsString <> '99999999997') then
                  begin
                     Dest.CNPJCPF           := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cnpjcpf').AsString;
                      //      Dest.IE                := '687138770110'; //NFC-e não aceita IE
                     Dest.ISUF              := '';
                     Dest.xNome             := copy (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_nomeemi').AsString,1,30);

                     Dest.EnderDest.Fone    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_telefone').AsString;
                     Dest.EnderDest.CEP     := StrToInt(RemoveChars(['-'],Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cep').AsString)));
                     Dest.EnderDest.xLgr    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_endereco').AsString;
                     Dest.EnderDest.nro     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_numero').AsString;
                     Dest.EnderDest.xCpl    := '';
                     Dest.EnderDest.xBairro := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_bairro').AsString;
                     Dest.EnderDest.cMun    := strtoint(trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cod_cidade').AsString));
                     Dest.EnderDest.xMun    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_nom_cidade').AsString;
                     Dest.EnderDest.UF      := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_estado').AsString;
                     Dest.EnderDest.cPais   := 1058;
                     Dest.EnderDest.xPais   := 'BRASIL';
                     Dest.indIEDest :=  inNaoContribuinte;
                  end;



//Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
{      Retirada.CNPJCPF := '';
      Retirada.xLgr    := '';
      Retirada.nro     := '';
      Retirada.xCpl    := '';
      Retirada.xBairro := '';
      Retirada.cMun    := 0;
      Retirada.xMun    := '';
      Retirada.UF      := '';}

//Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
{      Entrega.CNPJCPF := '';
      Entrega.xLgr    := '';
      Entrega.nro     := '';
      Entrega.xCpl    := '';
      Entrega.xBairro := '';
      Entrega.cMun    := 0;
      Entrega.xMun    := '';
      Entrega.UF      := '';}

//Adicionando Produtos
      iSeq := 0;
      dmGeral.BUS_CD_M_NFE_ITE_CXA.First;
      while not dmGeral.BUS_CD_M_NFE_ITE_CXA.eof do
        begin
              with Det.Add do
               begin
                 {
                 Prod.nItem    := 1; // Número sequencial, para cada item deve ser incrementado
                 Prod.cProd    := '122';
                 //Prod.cEAN     := '7896523206646';
                 Prod.cEAN     := '';
                 Prod.xProd    := 'PADON - 1 L';
                 Prod.NCM      := '38089323'; // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
                 Prod.EXTIPI   := '';
                 Prod.CFOP     := '5102';
                 Prod.uCom     := 'UN';
                 Prod.qCom     := 1 ;
                 Prod.vUnCom   := 100;
                 Prod.vProd    := 100 ;
                 Prod.cEANTrib  := '';
                 Prod.uTrib     := 'UN';
                 Prod.qTrib     := 1;
                 Prod.vUnTrib   := 100;
                 Prod.vOutro    := 0;
                 Prod.vFrete    := 0;
                 Prod.vSeg      := 0;
                 Prod.vDesc     := 0;
                 //         infAdProd      := 'Informação Adicional do Produto';
                 fim demo  }


                           inc(iSeq);
                           Prod.nItem    := iSeq; // Número sequencial, para cada item deve ser incrementado
                           Prod.cProd    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ITEM').AsString;;

                           if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('danfe_cod_item').AsInteger = 0 then
                                Prod.cProd    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ITEM').AsString;
                           if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('danfe_cod_item').AsInteger = 1 then
                                Prod.cProd    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('INT_COD_FABRICA').AsString;


                           Prod.cEAN     := '';
                           Prod.cEANTrib  := '';
                           // Nota técnica: NT_2016_002_v1.42
                           if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfe_versao').AsInteger = 3 then  //  3 - Versão 4.00;    2- Versão 3.10
                              begin
                                if trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('INT_COD_BARRA').AsString) <> '' then
                                   begin
                                     Prod.cEAN  := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('INT_COD_BARRA').AsString;
                                     Prod.cEANTrib  :=  dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('INT_COD_BARRA').AsString;
                                   end
                                else
                                   begin
                                     Prod.cEAN  := 'SEM GTIN';
                                     Prod.cEANTrib  := 'SEM GTIN';
                                   end;
                              end;

                           Prod.xProd    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_desc_item').AsString;
                           Prod.NCM      := Trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_id_ncm').AsString);
                           if trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_cest_ncm').AsString) <> '' then
                              Prod.CEST  := trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_cest_ncm').AsString);


                           Prod.EXTIPI   := '';
                           Prod.CFOP     := Trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_cfo').AsString);
                           Prod.uCom     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_und_venda').AsString;
                           Prod.qCom     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('Qtde').AsFloat;
                           Prod.vUnCom   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_unitario').AsCurrency;
                           Prod.vProd    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_mercadoria').AsCurrency;

                           Prod.uTrib     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_und_venda').AsString;;
                           Prod.qTrib     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('Qtde').AsFloat;
                           Prod.vUnTrib   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_unitario').AsCurrency;
                           Prod.vOutro    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_outras_desp').AsCurrency;
                           Prod.vFrete    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('fre_valor').AsCurrency;
                           Prod.vSeg      := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_seguro').AsCurrency;
                           Prod.vDesc     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_desconto').AsCurrency;;
                           //         infAdProd      := 'Informação Adicional do Produto';

                           // Nota técnica: NT_2016_002_v1.42
                           if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfe_versao').AsInteger = 3 then  //  3 - Versão 4.00;    2- Versão 3.10
                              Prod.indEscala := ieNenhum;

                           infAdProd := '';
                           composicao := '';
                           //Inserido por Maxsuel Victor em 19/07/2016
                           if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_rt_composicao').AsString<>'' then
                              composicao := composicao + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_rt_composicao').AsString+';';

                           if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_rt_registro').AsString<>'' then
                              composicao := composicao + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_rt_registro').AsString+';';

                           if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_cod_onu').AsString<>'' then
                              composicao := composicao + ' Cod.Onu: ' + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_cod_onu').AsString+';';

                           if trim(composicao) <> '' then
                              infAdProd := composicao;

                 with Imposto do
                  begin
                    // lei da transparencia nos impostos
                    {vTotTrib := 0;

                    with ICMS do
                     begin
                       CST          := cst00;
                       ICMS.orig    := oeNacional;
                       ICMS.modBC   := dbiValorOperacao;
                       ICMS.vBC     := 100;
                       ICMS.pICMS   := 18;
                       ICMS.vICMS   := 18;
                       ICMS.modBCST := dbisMargemValorAgregado;
                       ICMS.pMVAST  := 0;
                       ICMS.pRedBCST:= 0;
                       ICMS.vBCST   := 0;
                       ICMS.pICMSST := 0;
                       ICMS.vICMSST := 0;
                       ICMS.pRedBC  := 0;
                     end;  }

                            vTotTrib := RoundTo(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('tri_valor').AsCurrency,-2);
                            with ICMS do
                             begin
                               //CST          := cst00;              // ver com Mariel

                               if Emit.CRT in [crtSimplesExcessoReceita, crtRegimeNormal] then
                                  CST := StrToCSTICMS(iRet, dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_icm').AsString)
                               else
                                  begin
                                     CSOSN := StrToCSOSNIcms(iRet, dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_icm').AsString);
                                     lbCSOSN.Caption := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_icm').AsString;
                                  end;
                                  //CSOSN := csosn102;

                              // CST   :=StrToCSTICMS(iRet, dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_icm').AsString);


                               ICMS.orig    := oeNacional;
                               ICMS.modBC   := dbiMargemValorAgregado; //dbiValorOperacao;
                               ICMS.vBC     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_base').AsCurrency;;
                               ICMS.pICMS   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_aliquota').AsFloat;
                               ICMS.vICMS   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_valor').AsFloat;
                               ICMS.modBCST := dbisMargemValorAgregado;
                               ICMS.pMVAST  := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ICM_S_PER_MVA').AsFloat;
                               ICMS.pRedBCST:= 0;
                               ICMS.vBCST   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_s_base').AsCurrency;
                               ICMS.pICMSST := 0;
                               ICMS.vICMSST := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_s_valor').AsFloat;
                               ICMS.pRedBC  := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_per_reducao').AsFloat;
                             end;
        {            with PIS do
                     begin
                       CST      := pis99;
                       PIS.vBC  := 0;
                       PIS.pPIS := 0;
                       PIS.vPIS := 0;

                       PIS.qBCProd   := 0;
                       PIS.vAliqProd := 0;
                       PIS.vPIS      := 0;
                     end;

                    with PISST do
                     begin
                       vBc       := 0;
                       pPis      := 0;
                       qBCProd   := 0;
                       vAliqProd := 0;
                       vPIS      := 0;
                     end;

                    with COFINS do
                     begin
                       CST            := cof99;
                       COFINS.vBC     := 0;
                       COFINS.pCOFINS := 0;
                       COFINS.vCOFINS := 0;

                       COFINS.qBCProd   := 0;
                       COFINS.vAliqProd := 0;
                     end;

                    with COFINSST do
                     begin
                       vBC       := 0;
                       pCOFINS   := 0;
                       qBCProd   := 0;
                       vAliqProd := 0;
                       vCOFINS   := 0;
                     end;
        }



                              with PIS do
                               begin
                                 CST      :=StrToCSTPIS( iRet,dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_pis').AsString);
                                 PIS.vBC  := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('pis_base').AsCurrency;
                                 PIS.pPIS := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('pis_aliquota').AsFloat;
                                 PIS.vPIS := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('pis_valor').AsCurrency;
                                 if pos(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_pis').text,'03') <> 0 then
                                    begin
                                      PIS.qBCProd   := 0;
                                      PIS.vAliqProd := 0;
                                      PIS.vPIS      := 0;
                                    end;
                               end;

                              with COFINS do
                               begin
                                 CST            := StrToCSTCOFINS( iRet,dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_cof').AsString);;
                                 COFINS.vBC     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('cof_base').AsCurrency;
                                 COFINS.pCOFINS := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('cof_aliquota').AsFloat;
                                 COFINS.vCOFINS := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('cof_valor').AsCurrency;

                                 if pos(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_cof').text,'03') <> 0 then
                                    begin
                                      COFINS.qBCProd   := 0;
                                      COFINS.vAliqProd := 0;
                                    end;
                               end;


        //Grupo para serviços
        {            with ISSQN do
                     begin
                       vBC       := 0;
                       vAliq     := 0;
                       vISSQN    := 0;
                       cMunFG    := 0;
                       cListServ := 1402; // Preencha este campo usando a tabela disponível
                                       // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
              {       end;}
                  end;
               end ;
           dmGeral.BUS_CD_M_NFE_ITE_CXA.Next;
        end;

//Adicionando Serviços
{      with Det.Add do
       begin
         Prod.nItem    := 1; // Número sequencial, para cada item deve ser incrementado
         Prod.cProd    := '123457';
         Prod.cEAN     := '';
         Prod.xProd    := 'Descrição do Serviço';
         Prod.NCM      := '99';
         Prod.EXTIPI   := '';
         Prod.CFOP     := '5933';
         Prod.uCom     := 'UN';
         Prod.qCom     := 1 ;
         Prod.vUnCom   := 100;
         Prod.vProd    := 100 ;

         Prod.cEANTrib  := '';
         Prod.uTrib     := 'UN';
         Prod.qTrib     := 1;
         Prod.vUnTrib   := 100;

         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         infAdProd      := 'Informação Adicional do Serviço';

//Grupo para serviços
            with Imposto.ISSQN do
             begin
               cSitTrib  := ISSQNcSitTribNORMAL;
               vBC       := 100;
               vAliq     := 2;
               vISSQN    := 2;
               cMunFG    := 3554003;
               cListServ := 1402; // Preencha este campo usando a tabela disponível
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;
       end ;
}
     { Total.ICMSTot.vBC     := 100;
      Total.ICMSTot.vICMS   := 18;
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := 100;
      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
      Total.ICMSTot.vDesc   := 0;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := 0;
      Total.ICMSTot.vNF     := 100;
      Total.ISSQNtot.vServ   := 0;
      Total.ISSQNTot.vBC     := 0;
      Total.ISSQNTot.vISS    := 0;
      Total.ISSQNTot.vPIS    := 0;
      Total.ISSQNTot.vCOFINS := 0;
      fim demo                          }

                  Total.ICMSTot.vBC     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('icm_n_base').AsCurrency;
                  Total.ICMSTot.vICMS   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('icm_n_valor').AsCurrency;
                  Total.ICMSTot.vBCST   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('icm_s_base').AsCurrency;
                  Total.ICMSTot.vST     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('icm_s_valor').AsCurrency;
                  Total.ICMSTot.vProd   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_mercadoria').AsCurrency;
                  Total.ICMSTot.vFrete  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('fre_valor').AsCurrency;
                  Total.ICMSTot.vSeg    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_seguro').AsCurrency;
                  Total.ICMSTot.vDesc   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_desconto').AsCurrency;
                  Total.ICMSTot.vII     := 0;
                  Total.ICMSTot.vIPI    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ipi_valor').AsCurrency;
                  Total.ICMSTot.vPIS    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('pis_valor').AsCurrency;
                  Total.ICMSTot.vCOFINS := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('cof_valor').AsCurrency;
                  Total.ICMSTot.vOutro  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_outras_desp').AsCurrency;
                  Total.ICMSTot.vNF     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido').AsCurrency;

                  // lei da transparencia de impostos
                  Total.ICMSTot.vTotTrib := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tri_valor').AsCurrency;

                  Total.ISSQNtot.vServ   := 0;
                  Total.ISSQNTot.vBC     := 0;
                  Total.ISSQNTot.vISS    := 0;
                  Total.ISSQNTot.vPIS    := 0;
                  Total.ISSQNTot.vCOFINS := 0;



{      Total.retTrib.vRetPIS    := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL   := 0;
      Total.retTrib.vBCIRRF    := 0;
      Total.retTrib.vIRRF      := 0;
      Total.retTrib.vBCRetPrev := 0;
      Total.retTrib.vRetPrev   := 0;}

      Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

{      Cobr.Fat.nFat  := 'Numero da Fatura';
      Cobr.Fat.vOrig := 100 ;
      Cobr.Fat.vDesc := 0 ;
      Cobr.Fat.vLiq  := 100 ;

      with Cobr.Dup.Add do
       begin
         nDup  := '1234';
         dVenc := now+10;
         vDup  := 50;
       end;

      with Cobr.Dup.Add do
       begin
         nDup  := '1235';
         dVenc := now+10;
         vDup  := 50;
       end;
 }
     {
      with pag.Add do //PAGAMENTOS apenas para NFC-e
       begin
         tPag := fpDinheiro;
         vPag := 100;
       end;

       fim demo }

             {  with pag.Add do //PAGAMENTOS apenas para NFC-e
                    begin
                      tPag := fpDinheiro;
                      vPag := dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('vlr_titulo').AsCurrency;
                    end;
             }

      dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
      while not dmGeral.BUS_CD_M_NFE_TIT_CXA.Eof do
          begin
                     { doc_impresso
                      0 - Nenhum,
                      1 - Duplicata,
                      2 - Promissoria,
                      3 - Cartao,
                      4 - Boleto,
                      5 - Dinheiro,
                      6 - Cheque
                      7 - Credito
                      }

                  {   TpcnFormaPagamento = (fpDinheiro, fpCheque, fpCartaoCredito, fpCartaoDebito, fpCreditoLoja,
                      fpValeAlimentacao, fpValeRefeicao, fpValePresente, fpValeCombustivel,
                      fpOutro);}

              with pag.Add do //PAGAMENTOS apenas para NFC-e
                   begin
                     //indPag :=
                     if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_docimpresso').AsInteger = 5 then
                        tPag := fpDinheiro;
                     if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_docimpresso').AsInteger = 3 then
                        begin
                          if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_cardebcre').AsInteger = 0 then
                             tPag := fpCartaoCredito;
                          if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_cardebcre').AsInteger = 1 then
                             tPag := fpCartaoDebito;

                          CNPJ := dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_cnpj_ccr').AsString;

                          tpIntegra := tiPagNaoIntegrado;

                          if not(InputQuery('Nro Autorização:', 'Nro autorização:',   NroAutorizCartao)) then
                             exit
                          else
                             cAut := NroAutorizCartao
                        end;
                     if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_docimpresso').AsInteger = 6 then
                        begin
                          tPag := fpCheque;
                        end;

                     if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_docimpresso').AsInteger = 8 then
                        begin
                          tPag := fpPagamentoInstantaneo;
                          // por Maxsuel Victor, em 02/07/2024
                          tpIntegra := tiPagNaoIntegrado;
                        end;

                     vPag := dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('vlr_titulo').AsCurrency;

                   end;
            dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
          end;





      InfAdic.infCpl     :=  '';
      InfAdic.infAdFisco :=  '';


      infRespTec.CNPJ     := '24063730000108';
      infRespTec.xContato := 'MAXSUEL VICTOR MENEZES DAMASCENO'; // Nome do responsável técnico
      infRespTec.email    := 'maxsuelvictor@hotmail.com';
      infRespTec.fone     := '87988537008';

{      with InfAdic.obsCont.Add do
       begin
         xCampo := 'ObsCont';
         xTexto := 'Texto';
       end;

      with InfAdic.obsFisco.Add do
       begin
         xCampo := 'ObsFisco';
         xTexto := 'Texto';
       end; }
   end;

   ACBrNFe1.NotasFiscais.GerarNFe;
end;

procedure TfrmNFCe.btnConsultarChaveClick(Sender: TObject);
var
 vChave : String;
begin
  //if not(InputQuery('WebServices Consultar', 'Chave da NF-e:', vChave)) then
  //  exit;

  vChave :=  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_chave').AsString;

  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.WebServices.Consulta.NFeChave := vChave;
  ACBrNFe1.WebServices.Consulta.Executar;

  MemoResp.Lines.Text := ACBrNFe1.WebServices.Consulta.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.Consulta.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.Consulta.RetornoWS, WBResposta);
  LoadConsulta201(ACBrNFe1.WebServices.Consulta.RetWS);
end;

procedure TfrmNFCe.btnCancelarChaveClick(Sender: TObject);
var
 Chave, CNPJ, Protocolo, Justificativa : string;


 vNumLote : String;
 Ano, Mes, Dia : Word;
 CanStatus:string;
 CanProtocolo:string;
 retorno,ReabrePed: String;
 SMPrincipal: TSMClient;
begin


  // Ao mexer nesta rotina lembrar de verificar a tela de NFe
  AtuGridNota;

  if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       ShowMessage('Não existe registro de nota fiscal.');

       exit;
     end;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean then
     begin
       ShowMessage('Nota fiscal com pré-venda.');
       exit;
     end;

  if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) <> 'X' then
     begin
        // foi retirado o NFE_RECBIDO e colocado NFE_PROTOCOLO , devido nota técnica SICRÓNO nfce , 10-10-2021
        {if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
                 ( trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString) <> '') and
                 (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) ) then}

        if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
                 ( trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_PROTOCOLO').AsString) <> '') and
                 (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) ) then
           begin
             ShowMessage('Nota fiscal em aberto! ' + #13 +
                          'Só é permitido cancelar nota fiscal encerrada.');
             exit;
           end;
     end
  else
     begin
        if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
                 (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) ) then
           begin
             ShowMessage('Nota fiscal em aberto! ' + #13 +
                          'Só é permitido cancelar nota fiscal encerrada.');
             exit;
           end;
     end;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02' then
      begin
        ShowMessage('Nota fiscal já foi cancelada.');
        exit;
      end;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('MODELO').AsString <> '65' then
      begin
        ShowMessage('Só é permitido cancelar nota fiscal(NFCe).');
        exit;
      end;




  //if not(InputQuery('WebServices Eventos: Cancelamento', 'Chave da NF-e', Chave)) then
  //   exit;
  //Chave := Trim(OnlyNumber(Chave));
  Chave := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_chave').AsString;
  //idLote := '1';
  //if not(InputQuery('WebServices Eventos: Cancelamento', 'Identificador de controle do Lote de envio do Evento', idLote)) then
  //   exit;
  CNPJ := copy(Chave,7,14);
  //if not(InputQuery('WebServices Eventos: Cancelamento', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
  //   exit;

  Protocolo := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_protocolo').AsString;

  //if not(InputQuery('WebServices Eventos: Cancelamento', 'Protocolo de Autorização', Protocolo)) then
  //   exit;
  //Justificativa := 'Justificativa do Cancelamento';
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa do Cancelamento', Justificativa)) then
     exit;

  ACBrNFe1.EventoNFe.Evento.Clear;
//  ACBrNFe1.EvnvEvento.EnvEventoNFe.idLote := StrToInt(idLote) ;
  with ACBrNFe1.EventoNFe.Evento.Add do
   begin
     infEvento.chNFe := Chave;
     infEvento.CNPJ   := CNPJ;
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCancelamento;
     infEvento.detEvento.xJust := Justificativa;
     infEvento.detEvento.nProt := Protocolo;
   end;

  DecodeDate(xDataSis, Ano, Mes, Dia);
  vNumLote := inttostr(Ano)+inttostr(Mes)+inttostr(Dia);
  vNumLote := OnlyNumber(vNumLote);

  ACBrNFe1.EnviarEvento(StrToInt(vNumLote));

  MemoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.EnvEvento.RetornoWS, WBResposta);

  {ACBrNFe1.WebServices.EnvEvento.EventoRetorno.TpAmb
  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.verAplic
  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.cStat
  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.xMotivo
  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.chNFe
  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento
  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt}

  ACBrNFe1.WebServices.Consulta.NFeChave := Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString);
  ACBrNFe1.WebServices.Consulta.Executar;
  CanStatus    := IntToStr(ACBrNFe1.WebServices.Consulta.cStat);
  CanProtocolo := ACBrNFe1.WebServices.Consulta.Protocolo;

  if (trim(CanStatus) = '101') or (trim(CanStatus) = '135') then
     begin

       ReabrePed := '';
       if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0 then
          begin
            ReabrePed := 'N';
            if MessageDlg('Deseja reabrir o pedido de venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                 ReabrePed := 'S';
               end;
          end;

       try
         SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
         retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,CanStatus,CanProtocolo,ReabrePed,'');
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

procedure TfrmNFCe.btnAdicionarProtNFeClick(Sender: TObject);
var
  NomeArq : String;
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFe1.Consultar;
    ShowMessage(ACBrNFe1.WebServices.Consulta.Protocolo);
    MemoResp.Lines.Text := ACBrNFe1.WebServices.Consulta.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Consulta.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Consulta.RetornoWS, WBResposta);
    NomeArq := OpenDialog1.FileName;
    if pos(UpperCase('-nfe.xml'),UpperCase(NomeArq)) > 0 then
       NomeArq := StringReplace(NomeArq,'-nfe.xml','-procNfe.xml',[rfIgnoreCase]);
    ACBrNFe1.NotasFiscais.Items[0].GravarXML(NomeArq);
    ShowMessage('Arquivo gravado em: '+NomeArq);
    memoLog.Lines.Add('Arquivo gravado em: '+NomeArq);
  end;
end;

procedure TfrmNFCe.btnCarregarXMLEnviarClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

 {   with ACBrNFe1.NotasFiscais.Items[0].NFe do
     begin
       Emit.CNPJCPF           := edtEmitCNPJ.Text;
       Emit.IE                := edtEmitIE.Text;
       Emit.xNome             := edtEmitRazao.Text;
       Emit.xFant             := edtEmitFantasia.Text;

       Emit.EnderEmit.fone    := edtEmitFone.Text;
       Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP.Text);
       Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
       Emit.EnderEmit.nro     := edtEmitNumero.Text;
       Emit.EnderEmit.xCpl    := edtEmitComp.Text;
       Emit.EnderEmit.xBairro := edtEmitBairro.Text;
       Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
       Emit.EnderEmit.xMun    := edtEmitCidade.Text;
       Emit.EnderEmit.UF      := edtEmitUF.Text;
       Emit.enderEmit.cPais   := 1058;
       Emit.enderEmit.xPais   := 'BRASIL';

       Emit.IEST              := '';
       Emit.IM                := ''; // Preencher no caso de existir serviços na nota
       Emit.CNAE              := ''; // Verifique na cidade do emissor da NFe se é permitido
                                    // a inclusão de serviços na NFe
       Emit.CRT               := crtRegimeNormal;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
    end;}
    ACBrNFe1.NotasFiscais.GerarNFe;
    ACBrNFe1.Enviar(1,True);

    MemoResp.Lines.Text := ACBrNFe1.WebServices.Retorno.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Retorno.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Retorno.RetornoWS, WBResposta);

   MemoDados.Lines.Add('');
   MemoDados.Lines.Add('Envio NFe');
   MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
   MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
   MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
   MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
   MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
   MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
   MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
   MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
   MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);
  end;
end;

procedure TfrmNFCe.btnCartadeCorrecaoClick(Sender: TObject);
var
 Chave, idLote, CNPJ, nSeqEvento, Correcao : string;
begin
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Chave da NF-e', Chave)) then
     exit;
  Chave := Trim(OnlyNumber(Chave));
  idLote := '1';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Identificador de controle do Lote de envio do Evento', idLote)) then
     exit;
  CNPJ := copy(Chave,7,14);
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
     exit;
  nSeqEvento := '1';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Sequencial do evento para o mesmo tipo de evento', nSeqEvento)) then
     exit;
  Correcao := 'Correção a ser considerada, texto livre. A correção mais recente substitui as anteriores.';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Correção a ser considerada', Correcao)) then
     exit;
  ACBrNFe1.EventoNFe.Evento.Clear;
//  ACBrNFe1.EnvEvento.EnvEventoNFe..idLote := StrToInt(idLote) ;
  with ACBrNFe1.EventoNFe.Evento.Add do
   begin
     infEvento.chNFe := Chave;
     infEvento.CNPJ   := CNPJ;
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCCe;
     infEvento.nSeqEvento := StrToInt(nSeqEvento);
     infEvento.detEvento.xCorrecao := Correcao;
   end;
  ACBrNFe1.EnviarEvento(StrToInt(idLote));

  MemoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetWS;
  //memoRespWS.Lines.Text := ACBrNFe1.WebServices.EnvEvento.EventoRetorno;
//  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].XXXX
  LoadXML(ACBrNFe1.WebServices.EnvEvento.RetWS, WBResposta);
end;

procedure TfrmNFCe.btnValidarAssinaturaClick(Sender: TObject);
var
  Msg : String;
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    if not ACBrNFe1.NotasFiscais.VerificarAssinatura(Msg) then
      MemoDados.Lines.Add('Erro: '+Msg)
    else
      ShowMessage('Assinatura Válida');
  end;
end;

procedure TfrmNFCe.btnImprimirCCeClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.EventoNFe.Evento.Clear;
    ACBrNFe1.EventoNFe.LerXML(OpenDialog1.FileName) ;
    ACBrNFe1.ImprimirEvento;
  end;
//  LoadXML(MemoResp, WBResposta);
end;

procedure TfrmNFCe.btnEnviarEventoClick(Sender: TObject);
var
 Para : String;
 CC, Evento: Tstrings;
begin
  if not(InputQuery('Enviar Email', 'Email de destino', Para)) then
    exit;

  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione ao Evento';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    Evento := TStringList.Create;
    Evento.Clear;
    Evento.Add(OpenDialog1.FileName);
    ACBrNFe1.EventoNFe.Evento.Clear;
    ACBrNFe1.EventoNFe.LerXML(OpenDialog1.FileName) ;
    CC:=TstringList.Create;
    CC.Add('andrefmoraes@gmail.com'); //especifique um email vÃ¡lido
    CC.Add('anfm@zipmail.com.br');    //especifique um email vÃ¡lido
    //TODO:
    ////ACBrNFe1.EnviarEmailEvento(edtSmtpHost.Text
    ////                         , edtSmtpPort.Text
    ////                         , edtSmtpUser.Text
    ////                         , edtSmtpPass.Text
    ////                         , edtSmtpUser.Text
    ////                         , Para
    ////                         , edtEmailAssunto.Text
    ////                         , mmEmailMsg.Lines
    ////                         , cbEmailSSL.Checked // SSL - ConexÃ£o Segura
    ////                         , True //Enviar PDF junto
    ////                         , CC //Lista com emails que serÃ£o enviado cÃ³pias - TStrings
    ////                         , Evento // Lista de anexos - TStrings
    ////                         , False  //Pede confirmaÃ§Ã£o de leitura do email
    ////                         , False  //Aguarda Envio do Email(nÃ£o usa thread)
    ////                         , 'ACBrNFe2' // Nome do Rementente
    ////                         , cbEmailSSL.Checked ); // Auto TLS
    CC.Free;
    Evento.Free;
  end;
end;

procedure TfrmNFCe.btnCriarEnviarNFCeClick(Sender: TObject);
var
  vAux, vNumLote, vSincrono : String;
  Sincrono: boolean;

  Ano, Mes, Dia : Word;

  SMPrincipal: TSMClient;
  id_fiscal,retorno: String;


  Ambiente, Versao, Status, Estado, Motivo,
  cMsg, xMsg, Recibo, Protocolo, chave: String;


  lDocIE, lDocIP, lUFEmitente: String;

  i: integer;

begin
 { if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
    exit;

  if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote)) then
    exit;

  vSincrono := '1';
  if not(InputQuery('WebServices Enviar', 'Envio Síncrono(1=Sim, 0=Não)', vSincrono)) then
    exit;

  vNumLote := OnlyNumber(vNumLote);

  if Trim(vNumLote) = '' then
   begin
     MessageDlg('Número do Lote inválido.',mtError,[mbok],0);
     exit;
   end;

  if (Trim(vSincrono) <> '1') and
     (Trim(vSincrono) <> '0') then
   begin
     MessageDlg('Valor Inválido.',mtError,[mbok],0);
     exit;
   end;

  if (Trim(vSincrono) = '1') then
    Sincrono := True
  else
    Sincrono := False; }

  retorno := '';

  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM_GAR').AsInteger >0) then
     begin
       ShowMessage('Operação não permitida, pois a nota é do tipo garantia.');
       exit;
     end;

  if trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfc_nome_arq_rel').AsString) = '' then
     begin
       ShowMessage('O relatório (.fr3) de impressão da NFCe não foi informado nos parâmetros!');
       exit;
     end;

  id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;

  if MessageDlg('Deseja realmente gerar a NFCe?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       try
          AtuGridNota;

          if not FAT_RN_M_CXA.FatVerifDadosNfCxa(1) then
             begin
               exit;
             end;

          if id_fiscal <> dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString then
             begin
               ShowMessage('Nota fiscal não está mais disponível pois já foi processada por outro usuário.');
               abort;
             end;


          if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'S') then
             begin
               dmGeral.BusCliente(0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMITENTE').AsString);

               if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 1 then  // Jurídica
                  begin
                    Showmessage('Cliente PESSOA jurídica não é permitido emitir NFCe.');
                    abort;
                  end;

               lDocIE        := dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString;
               lDocIP        := dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IP').AsString;
               lUFEmitente   := dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;

               if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 0) and // Física
                  ( (trim(lDocIP) <> '') and (trim(lDocIP) <> 'ISENTO') ) then
                   begin
                     Showmessage('Não é permitido emitir NFCe para PRODUTOR.');
                     abort;
                     //Contribuinte := true;
                   end;
             end
          else
             begin
               Showmessage('Só é permitido emitir NFCe para nota fiscal de SAÍDA.');
               abort;
             end;


          dmGeral.BusCondPgto(0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_condicao_pag').AsString);
          if (dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').AsInteger in [0,1]) then // Se a condição de pagamento for a vista ou a prazo
             begin
                // Entra neste IF caso as formas de pagamento devam ser informada pela pessoa do Caixa.
                if not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_ativa_titulos').AsBoolean) then
                    begin
                      ChamarLanctoFPG;

                      AtuGridNota;

                      dmGeral.BUS_CD_M_NFE_TIT_CXA.Cancel;
                      if dmGeral.BUS_CD_M_NFE_TIT_CXA.IsEmpty then
                         begin
                           ShowMessage('Nenhuma forma de pagamento foi informada na nota fiscal!');
                           AtuGridNota;
                           exit;
                         end;
                    end;
             end;

          if id_fiscal <> dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString then
             begin
               ShowMessage('Nota fiscal não está mais disponível pois já foi processada por outro usuário.');
               abort;
             end;

          if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('nfce_permite_cheque').AsBoolean = true)) then
              begin
                if not dmGeral.BUS_CD_M_NFE_TIT_CXA.IsEmpty then
                  begin
                    dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                    while (not dmGeral.BUS_CD_M_NFE_TIT_CXA.eof) do
                      begin
                        if (dmgeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('INT_DOCIMPRESSO').AsInteger = 6) then
                          begin
                            ShowMessage('Não é permitido gerar NFC-e com forma de pagamento do tipo "CHEQUE"!');
                            dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                            abort;
                          end;
                        dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                      end;
                    dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                  end;
              end;


          if not dmGeral.BUS_CD_M_NFE_TIT_CXA.IsEmpty then
             begin
                dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                while not dmGeral.BUS_CD_M_NFE_TIT_CXA.eof do
                   begin
                     if not (dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('int_docimpresso').AsInteger in [3,5,6,8]) then
                        begin
                          ShowMessage('Para NFCe, só é permitido forma de pagamento Dinheiro, Cartão , Cheque ou PIX.');
                          dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                          abort;
                        end;
                     dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                   end;
                dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
             end;

          if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger = 0 then
             begin
               if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0) or
                  (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) then
                   begin
                      // Maxsuel Victor 22/09/2015
                      // Se alterar algum código aqui , verificar se é necessário fazer pra Pré-Venda, pois o código
                      // abaixo existe no momento da geração da pré-venda também.
                      try
                        FAT_RN_M_NFE.xNFCe := true;

                        FAT_RN_M_NFE.FatRecalTributItens(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
                        fatNfeCalcTotal(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
                      finally
                        FAT_RN_M_NFE.xNFCe := false;
                      end;
                      dmGeral.BUS_CD_M_NFE_CXA.Post;
                      dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
                   end;

                SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                try
                  id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
                  retorno   := SMPrincipal.enAtuDadosNF(id_fiscal,dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString,'2');
                  if retorno <> 'OK' then
                     begin
                       ShowMessage(Retorno);
                       abort;
                     end;
                  FAT_RN_M_CXA.FatAtuDadosTelaCxa;
                  dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);

                finally
                  FreeAndNil(SMPrincipal);
                end;
             end;

          if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_ecf').AsInteger <> 2 then
             begin
               ShowMessage('ATENÇÃO: Esta nota fiscal não pode ser mais emitida como NFCe.');
               if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_ecf').AsInteger = 0 then // NFCe
                  begin
                    ShowMessage('Usuário deverá emitir o documento eletrônico pelo botão Gerar NFe, pois esta nota fiscal já foi preparada para ser emitida como NFe.');
                  end;
               abort;
             end;


          DecodeDate(xDataSis, Ano, Mes, Dia);
          vNumLote := inttostr(Ano)+inttostr(Mes)+inttostr(Dia);
          vNumLote := OnlyNumber(vNumLote);

          dmGeral.BUS_CD_M_NFE_CXA.Edit;
          dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime :=
                  dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;
          dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_DOCUMENTO').AsDateTime :=
                  dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;
          dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);

          vAux :=  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString;
          // 07/10/21 - Maxsuel Victor
          // Foi alterado para Sincrono devido nota técnica
          Sincrono := true;

          ACBrNFe1.NotasFiscais.Clear;
          //ACBrNFeDANFEFR1.FastFile       := ExtractFileDir(application.ExeName) + '\Report\DANFeNFCe.fr3';

          // O componente abaixo foi substituido pelo componente: AcbrNfeDanfCEFr1
            // 21/07/2022
          //ACBrNFeDANFEFR1.FastFile       := ExtractFileDir(application.ExeName) + '\Report\DANFeNFCe5_00.fr3';

          // 22-07-2022 comentado por Maxsuel Victor
            // o nome do relatório passou a ser espécificado nos parâmetros na aba NFE.
            //ACBrNFeDANFCEFR1.FastFile       := ExtractFileDir(application.ExeName) + '\Report\DANFeNFCe5_00.fr3';

          ACBrNFeDANFCEFR1.FastFile  := ExtractFileDir(application.ExeName) +
                                        '\Report\' + dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfc_nome_arq_rel').AsString;


          ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
          ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;
          ACBrNFe1.Configuracoes.Geral.VersaoQRCode := veqr200;

          GerarNFCe(vAux);

          ACBrNFe1.Enviar(vNumLote,True,Sincrono);

          if not sincrono  then
             begin
                // Maxsuel Victor - inserido em 10-10-2021
                MemoResp.Lines.Text := ACBrNFe1.WebServices.Retorno.RetWS;
                memoRespWS.Lines.Text := ACBrNFe1.WebServices.Retorno.RetornoWS;
                LoadXML(ACBrNFe1.WebServices.Retorno.RetWS, WBResposta);
                // ----------------------------------------------------------


                Ambiente   := TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb);
                Versao     := ACBrNFe1.WebServices.Retorno.verAplic;
                Status     := IntToStr(ACBrNFe1.WebServices.retorno.cStat);
                Estado     := IntToStr(ACBrNFe1.WebServices.retorno.cUF);
                Motivo     := ACBrNFe1.WebServices.Retorno.xMotivo;
                cMsg       := IntToStr(ACBrNFe1.WebServices.Retorno.cMsg);
                xMsg       := ACBrNFe1.WebServices.Retorno.xMsg;
                Recibo     := ACBrNFe1.WebServices.Retorno.Recibo;
                Protocolo  := ACBrNFe1.WebServices.Retorno.Protocolo;
                chave      := ACBrNFe1.WebServices.Retorno.ChaveNFe;

                MemoDados.Lines.Add('Envio NFe');
                MemoDados.Lines.Add('Ambiente: ' + Ambiente );
                MemoDados.Lines.Add('Versão: '   + Versao);
                MemoDados.Lines.Add('Status: '   + Status);
                MemoDados.Lines.Add('Estado: '   + Estado);
                MemoDados.Lines.Add('Motivo: '   + Motivo);
                MemoDados.Lines.Add('cMsg: '     + cMsg);
                MemoDados.Lines.Add('xMsg: '     + xMsg);
                MemoDados.Lines.Add('Nº Recibo: '+ Recibo);
                MemoDados.Lines.Add('Nº Protocolo: '+ Protocolo );
             end
          else
             begin
                MemoResp.Lines.Text := ACBrNFe1.WebServices.Enviar.RetWS;
                memoRespWS.Lines.Text := ACBrNFe1.WebServices.Enviar.RetornoWS;
                LoadXML(ACBrNFe1.WebServices.Enviar.RetWS, WBResposta);

                Ambiente   := TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb);
                Versao     := ACBrNFe1.WebServices.Enviar.verAplic;
                Status     := IntToStr(ACBrNFe1.WebServices.Enviar.cStat);
                Estado     := IntToStr(ACBrNFe1.WebServices.Enviar.cUF);
                Motivo     := ACBrNFe1.WebServices.Enviar.xMotivo;
                //cMsg       := IntToStr(ACBrNFe1.WebServices.Retorno.cMsg);
                //xMsg       := ACBrNFe1.WebServices.Retorno.xMsg;
                Recibo     := ACBrNFe1.WebServices.Enviar.Recibo;
                Protocolo  := ACBrNFe1.WebServices.Enviar.Protocolo;

                for i := 0 to ACBrNFe1.NotasFiscais.Count - 1 do
                    begin
                      chave := ACBrNFe1.NotasFiscais.Items[i].NumID;
                    end;
                //chave      := ACBrNFe1.WebServices.Retorno.ChaveNFe;


                MemoDados.Lines.Add('');
                MemoDados.Lines.Add('Envio NFCe');
                MemoDados.Lines.Add('tpAmb: ' + TpAmbToStr(ACBrNFe1.WebServices.Enviar.TpAmb));
                MemoDados.Lines.Add('verAplic: ' + ACBrNFe1.WebServices.Enviar.verAplic);
                MemoDados.Lines.Add('cStat: ' + IntToStr(ACBrNFe1.WebServices.Enviar.cStat));
                MemoDados.Lines.Add('cUF: ' + IntToStr(ACBrNFe1.WebServices.Enviar.cUF));
                MemoDados.Lines.Add('xMotivo: ' + ACBrNFe1.WebServices.Enviar.xMotivo);
                MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Enviar.Recibo);

             end;

          dmGeral.BUS_CD_M_NFE_CXA.Edit;

          //dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString    := 'Testes';
          dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString    := Recibo;
          dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString     := chave;
          dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_PROTOCOLO').AsString := Protocolo;
          dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean     := true;  // Quer dizer que a nota foi emitida pela própria empresa e não de terceiros.

          try
                // showmessage(inttostr(ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.cStat));
                // case ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat of
                // case 100 of
          case ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.cStat of
             100:
              begin
                 dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger  := 1;
                 dmGeral.BUS_CD_M_NFE_CXA.Post;
                 try
                   if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                      begin
                        ShowMessage('Geração da NFe foi realizada com sucesso!');
                       { if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_IMPRIME_ETQ').AsBoolean = True) then
                            begin
                              if MessageDlg('Deseja imprimir a etiqueta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                 begin
                                   CAD_FM_R_E01 := TCAD_FM_R_E01.Create(Self);
                                   CAD_FM_R_E01.Show;
                                 end;
                            end;  }

                       { dmgeral.BUS_CD_M_TER_NFE.Close;
                        dmGeral.BUS_CD_M_TER_NFE.Data :=
                        dmGeral.BUS_CD_M_TER_NFE.DataRequest(VarArrayOf([dmgeral.BUS_CD_M_NFE_CXAid_fiscal.AsInteger]));
                        if not  dmgeral.BUS_CD_M_TER_NFE.IsEmpty then
                           begin
                             if MessageDlg('Deseja imprimir o termo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                begin
                                  FAT_CD_M_TER_NFE.PrepareReport();
                                  FAT_CD_M_TER_NFE.ShowReport();
                                end;
                           end;
                        dmGeral.BUS_CD_M_TER_NFE.close;  }
                      end;
                 except
                   on e:exception do
                      begin
                        Showmessage('Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                      end;
                 end;
              end
             else
                begin
                  if (ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 110) or
                     (ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 205) or
                     (ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 301) or
                     (ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 302) or
                     (ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 303) or
                     (ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 358) or
                     (ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 650) or
                     (ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 651) or
                     (ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 654) or
                     (ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 687) then
                      begin
                        dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger      := 1;
                        dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString  := '04';
                        dmGeral.BUS_CD_M_NFE_CXA.Post;
                        try
                          if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                             begin
                               ShowMessage('***ATENÇÃO***' +#13 +  'A NFe foi gerada mas foi "Denegada" pela Sefaz!');
                             end;
                        except
                           on e:exception do
                              begin
                                Showmessage('Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                              end;

                        end;
                      end
                  else
                      begin
                        if (ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat>200) then
                            begin
                              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger  := 0;
                              dmGeral.BUS_CD_M_NFE_CXA.Post;
                              try
                                  if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                                     begin
                                       ShowMessage('***ATENÇÃO***' +#13 +  'A NFe foi gerada mas foi "Rejeitada" pela Sefaz!');
                                     end;
                              except
                                 on e:exception do
                                    begin
                                      Showmessage('Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                                    end;
                              end;
                            end
                        else
                           begin
                             dmGeral.BUS_CD_M_NFE_CXA.Post;
                             try
                               if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                                  begin
                                    ShowMessage('***ATENÇÃO***' +#13 + 'A NFe foi gerada mas sem o status de "Encerrada" devido a algum problema retornado pela Sefaz!');
                                  end;
                             except
                                on e:exception do
                                   begin
                                     Showmessage('Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                                   end;
                             end;
                           end;
                      end;
                end
            end;

          finally
            ACBrNFe1.NotasFiscais.Clear;
          end;

       finally
          AtuGridNota;
       end;
     end;

 { if not Sincrono then
  begin
    MemoResp.Lines.Text := ACBrNFe1.WebServices.Retorno.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Retorno.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Retorno.RetWS, WBResposta);

    MemoDados.Lines.Add('');
    MemoDados.Lines.Add('Envio NFCe');
    MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
    MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
    MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
    MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
    MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
    MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
    MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
    MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
    MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);
  end
  else
  begin
    MemoResp.Lines.Text := ACBrNFe1.WebServices.Enviar.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Enviar.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Enviar.RetWS, WBResposta);

    MemoDados.Lines.Add('');
    MemoDados.Lines.Add('Envio NFCe');
    MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Enviar.TpAmb));
    MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Enviar.verAplic);
    MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Enviar.cStat));
    MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Enviar.cUF));
    MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Enviar.xMotivo);
    //MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Enviar.cMsg));
    //MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Enviar.xMsg);
    MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Enviar.Recibo);
    //MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Enviar.Protocolo);
  end;}

 // ACBrNFe1.NotasFiscais.Clear;
end;

procedure TfrmNFCe.btnDistribuicaoDFeClick(Sender: TObject);
var
 cUFAutor, CNPJ, ultNSU, ANSU: string;
 ok: boolean;
begin
  cUFAutor := '';
  if not(InputQuery('WebServices Distribuição Documentos Fiscais', 'Código da UF do Autor', cUFAutor)) then
     exit;

  CNPJ := '';
  if not(InputQuery('WebServices Distribuição Documentos Fiscais', 'CNPJ/CPF do interessado no DF-e', CNPJ)) then
     exit;

  ultNSU := '';
  if not(InputQuery('WebServices Distribuição Documentos Fiscais', 'Último NSU recebido pelo ator', ultNSU)) then
     exit;

  ANSU := '';
  if not(InputQuery('WebServices Distribuição Documentos Fiscais', 'NSU específico', ANSU)) then
     exit;

   ACBrNFe1.DistribuicaoDFe(StrToInt(cUFAutor),CNPJ,ultNSU,ANSU);

  MemoResp.Lines.Text := ACBrNFe1.WebServices.DistribuicaoDFe.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.DistribuicaoDFe.RetornoWS;

  LoadXML(ACBrNFe1.WebServices.DistribuicaoDFe.RetWS, WBResposta);

  ACBrNFe1.Free;
end;

procedure TfrmNFCe.PathClick(Sender: TObject);
var
  Dir: string;
begin
  if Length(TEdit(Sender).Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := TEdit(Sender).Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    TEdit(Sender).Text := Dir;
end;

procedure TfrmNFCe.sbPathNFeClick(Sender: TObject);
begin
 PathClick(edtPathNFe);
end;

procedure TfrmNFCe.sbPathCanClick(Sender: TObject);
begin
 PathClick(edtPathCan);
end;

procedure TfrmNFCe.sbPathCCeClick(Sender: TObject);
begin
 PathClick(edtPathCCe);
end;

procedure TfrmNFCe.sbPathInuClick(Sender: TObject);
begin
 PathClick(edtPathInu);
end;

procedure TfrmNFCe.sbPathDPECClick(Sender: TObject);
begin
 PathClick(edtPathDPEC);
end;

procedure TfrmNFCe.sbPathEventoClick(Sender: TObject);
begin
 PathClick(edtPathEvento);
end;

procedure TfrmNFCe.spPathSchemasClick(Sender: TObject);
begin
 PathClick(edtPathSchemas);
end;


function TfrmNFCe.ValidarConsumidorFinal: Boolean;
var
  mens: String;
begin
end;

end.




