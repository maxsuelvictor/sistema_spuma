unit FAT_UN_M_EXP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,System.IniFiles, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,Math, ACBrMail,
  ACBrNFeDANFEFRDM, ACBrNFeDANFEClass,ACBrUtil, ACBrNFeDANFEFR, ACBrBase, ACBrDFe,ACBrDFeUtil,ACBrDFeSSL,
  ACBrNFe,pcnConversao,pnfsConversao, pcnConversaoNFe, ACBrNFeDANFeESCPOS,
  Vcl.ComCtrls, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,SHDocVw, Vcl.OleCtrls,
  Data.DB, vcl.wwdatsrc, frxClass, frxDBSet, ACBrDFeReport, ACBrDFeDANFeReport;

type
  TFAT_FM_M_EXP = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    NFe: TACBrNFe;
    Danfe: TACBrNFeDANFEFR;
    ACBrMail1: TACBrMail;
    txtAmbiente: TEdit;
    ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS;
    btnNotaFiscal: TButton;
    btnSair: TButton;
    pgNfeDados: TPageControl;
    tsItens: TTabSheet;
    dgItens: TwwDBGrid;
    tsTitulos: TTabSheet;
    grdTitulos: TwwDBGrid;
    MemoDados: TMemo;
    MemoResp: TMemo;
    memoRespWS: TMemo;
    memoLog: TMemo;
    dso: TwwDataSource;
    dsoIte: TwwDataSource;
    dsoTit: TwwDataSource;
    dbGrid: TwwDBGrid;
    pnlAberto: TPanel;
    lblAberto: TLabel;
    Panel7: TPanel;
    Label8: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    Panel5: TPanel;
    Label6: TLabel;
    btnGeraBoleto: TButton;
    mmoReciboBoleto: TMemo;
    WBResposta: TWebBrowser;
    btnAtualizaTela: TButton;
    pmApoio: TPopupMenu;
    DadosdoTransportador1: TMenuItem;
    ImprimirTermo1: TMenuItem;
    FaturarnotafiscalapsXML1: TMenuItem;
    Cancelarnotafiscalsomentenosistema1: TMenuItem;
    CancelarnotafiscalsomentenaSEFAZ1: TMenuItem;
    BUS_DB_M_CXA_NFE: TfrxDBDataset;
    FAT_DB_M_TER_NFE: TfrxDBDataset;
    FAT_CD_M_TER_NFE: TfrxReport;
    FAT_DP_M_CXA_NFE_TIT: TfrxDBDataset;
    FAT_DP_M_CXA_NFE: TfrxDBDataset;
    FAT_FR_M_CXA_RVS: TfrxReport;
    odNfe: TOpenDialog;
    btnImprimeNFE: TButton;
    GroupBox1: TGroupBox;
    txtReport: TEdit;
    Label13: TLabel;
    txtSchemas: TEdit;
    Label12: TLabel;
    txtCSC: TEdit;
    Label10: TLabel;
    txtToken: TEdit;
    Label11: TLabel;
    txtValidadeCert: TEdit;
    Label3: TLabel;
    txtSerieCert: TEdit;
    Label4: TLabel;
    btnImpEtq: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure btnNotaFiscalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnGeraBoletoClick(Sender: TObject);
    procedure btnAtualizaTelaClick(Sender: TObject);
    procedure DadosdoTransportador1Click(Sender: TObject);
    procedure ImprimirTermo1Click(Sender: TObject);
    procedure FaturarnotafiscalapsXML1Click(Sender: TObject);
    procedure Cancelarnotafiscalsomentenosistema1Click(Sender: TObject);
    procedure CancelarnotafiscalsomentenaSEFAZ1Click(Sender: TObject);
    procedure btnImprimeNFEClick(Sender: TObject);
    procedure btnImpEtqClick(Sender: TObject);
  private
    { Private declarations }
   procedure LerConfiguracao;
   procedure GerarNFe(NumNFe : String);
   procedure VerCertificado;
   procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
   procedure AtualizarTela;
   procedure CancelarNota(tipo: integer);
   procedure carregaCores;
   var
    EmpAtual,xCorSistema:String;
    ListaCodFiscal:TStrings;

  public
    { Public declarations }
  end;

var
  FAT_FM_M_EXP: TFAT_FM_M_EXP;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes, enFunc, FAT_RN_M_NFE, uProxy, FIN_RN_M_BOL,
  PSQ_UN_X_CTC, FAT_UN_M_CXA_NFE_TRA, FAT_RN_M_CXA, CAD_UN_R_E01;



procedure TFAT_FM_M_EXP.AtualizarTela;
begin
   dmGeral.BUS_CD_M_NFE_CXA.Close;
       dmGeral.BUS_CD_M_NFE_CXA.Data :=
            dmGeral.BUS_CD_M_NFE_CXA.DataRequest(
                     VarArrayOf([96,4,''''+ dmGeral.CAD_CD_C_PARid_empresa.AsString +'''',
                                   dmGeral.FIN_CD_M_CXA.FieldByName('dta_abertura').AsString,
                                   dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString]));

end;


procedure TFAT_FM_M_EXP.carregaCores;
var
  Rede:TInifile;
  codCor:TColor;
begin
  codCor := $00333333;
  If not FileExists(ExtractFilePath(Application.ExeName)+'Cores.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
       Rede.WriteString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');
     end;

  Rede        := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
  xCorSistema := Rede.ReadString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');

   if xCorSistema = 'GRAFITE' then
     begin
       codCor :=  $00333333;
     end;
   if xCorSistema = 'AZUL' then
     begin
       codCor :=  $00844D08;
     end;
   if xCorSistema = 'VERDE' then
     begin
       codCor :=  $00006305;
     end;
    pnlTop.Color := codCor;
end;




procedure TFAT_FM_M_EXP.VerCertificado;
Var xDias:Double;
    xDiasFalta:Double;
begin
  xDias:=10;
  //v antigo
  //txtValidadeCert.Text := DateToStr(NFe.Configuracoes.Certificados.DataVenc);
  //xDiasFalta:=NFe.Configuracoes.Certificados.DataVenc-Date;

  txtValidadeCert.Text := DateToStr(NFE.SSL.CertDataVenc);
  xDiasFalta:=NFE.SSL.CertDataVenc;;
  if xDiasFalta<=xDias then
     begin
       MemoDados.Lines.Clear;
       MemoDados.Lines.Add('Certificado:');
       MemoDados.Lines.Add('Faltam '+floatToStr(xDiasFalta)+' para seu certificado expirar.');
     end;
end;


procedure TFAT_FM_M_EXP.LerConfiguracao;
Var Ok : Boolean;
    StreamMemo : TMemoryStream;
    xCaminho, xSenha:string;
    xVersaoNfe: Integer;
    PathXml,xAguardar,xTentativas,xIntervalo:String;

begin
  {$IFDEF ACBrNFeOpenSSL}
     xCaminho  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_serie').AsString;
     xSenha    := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_senha').AsString;
     NFe.Configuracoes.Certificados.Certificado  := xCaminho;
     NFe.Configuracoes.Certificados.Senha        := xSenha;
     edtNumSerie.Visible := False;
     Label25.Visible     := False;
     sbtnGetCert.Visible := False;
  {$ELSE}
     xCaminho  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_serie').AsString;
     NFe.Configuracoes.Certificados.NumeroSerie := xCaminho;
     txtSerieCert.Text := NFe.Configuracoes.Certificados.NumeroSerie;
  {$ENDIF}

  with NFe.Configuracoes.Geral do
     begin
        //v antig/a
          //AtualizarXMLCancelado := true;'
        ExibirErroSchema      := true;
        FormatoAlerta         := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.';
        FormaEmissao          := StrToTpEmis(OK,IntToStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('danf_tipo_emissao').AsInteger+1));
        ModeloDF              := TpcnModeloDF(0);
        xVersaoNfe            := 2; // Versão 3.10
        VersaoDF              := TpcnVersaoDF(xVersaoNfe);
        txtToken.text         := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfc_id_token').AsString;
        txtCSC.text           := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfc_csc').AsString;
        IdCSC                 := txtToken.text;
        CSC                   := txtCSC.text;
        Salvar                := True;
        //IncluirQRCodeXMLNFCe  := false;  // Mas a frente pode ser mudado de acordo com checked marcado
        SSLLib                := TSSLLib(2); //libCapicom;

        //v antiga
          //PathSalvar            := ExtractFilePath(Application.ExeName) +
          //                         dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString;
          //PathSchemas           := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\'+GetEnumName(TypeInfo(TpcnVersaoDF), integer(xVersaoNfe));
     end;

  with NFe.Configuracoes.WebServices do
       begin
          UF         := dmGeral.CAD_CD_C_PAR.FieldByName('int_uf').AsString;
          Ambiente   := StrToTpAmb(Ok,IntToStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('situacao_emissor').AsInteger));

          if Ambiente = taProducao then
             begin
               txtAmbiente.Text := 'Ambiente: Produção';
               txtAmbiente.Color := $00BBFF77;
             end;
          if Ambiente = taHomologacao then
             begin
               txtAmbiente.Text := 'Ambiente: Homologação';
               txtAmbiente.Color := $00ACC0FB;
             end;

          Visualizar := true;
          Salvar     := false;
          AjustaAguardaConsultaRet := false;
          //if DFeUtil.NaoEstaVazio('')then
          if NaoEstaVazio('')then
             AguardarConsultaRet := ifThen(StrToInt('0')<1000,StrToInt('0')*1000,StrToInt('0'))
             //AguardarConsultaRet := DFeUtil.SeSenao(StrToInt('0')<1000,StrToInt('0')*1000,StrToInt('0'))
          else
             xAguardar := IntToStr(AguardarConsultaRet);

          if NaoEstaVazio('') then
             Tentativas := StrToInt('0')
          else
             xTentativas := IntToStr(Tentativas);

          if NaoEstaVazio('') then
             // IntervaloTentativas := DFeUtil.SeSenao(StrToInt('0')<1000,StrToInt('0')*1000,StrToInt('0'))
             IntervaloTentativas := ifThen(StrToInt('0')<1000,StrToInt('0')*1000,StrToInt('0'))
          else
             xIntervalo := IntToStr(NFe.Configuracoes.WebServices.IntervaloTentativas);

          ProxyHost := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_host').AsString;
          ProxyPort := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_porta').AsString;
          ProxyUser := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_usuario').AsString;
          ProxyPass := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_senha').AsString;
       end;

  if NFe.DANFE <> nil then
     begin
       NFe.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('danf_tipo_impressao').AsInteger+1));
       NFe.DANFE.Logo       := ExtractFilePath(Application.ExeName)+dmGeral.CAD_CD_C_PAR_NFE.FieldByName('path_logo').AsString;
     end;

  // v Antigo
  //PathXml := NFe.Configuracoes.Geral.PathSalvar;

  with NFe.Configuracoes.Arquivos do
       begin
         Salvar             := True;
         SepararPorMes      := false;
         // v Antigo
         //PastaMensal        := True;
         SalvarEvento       := true;
         AdicionarLiteral   := False;
         EmissaoPathNFe     := False;

         SepararPorCNPJ     := False;
         SepararPorModelo   := False;
         PathSalvar         := ExtractFilePath(Application.ExeName) +
                               dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML_OUTROS').AsString;
         PathSchemas        := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFe';
         if not DirectoryExists(PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFe') then
            begin
              ShowMessage('A pasta: ' + PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFe' + ', não foi encontrada!' + #13 +
                          'A geração do documento fiscal eletrônico não será possível!');

              btnNotaFiscal.Enabled := false;
            //  btnNfc.Enabled := false;
            end
         else
            txtSchemas.text    := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFe';
         if not DirectoryExists(PathWithDelim(ExtractFilePath(Application.ExeName))+'Report') then
            begin
              ShowMessage('A pasta: ' + PathWithDelim(ExtractFilePath(Application.ExeName))+'Report' + ', não foi encontrada!' + #13 +
                          'A geração do documento fiscal eletrônico não será possível!');

              btnNotaFiscal.Enabled := false;
            //  btnNfc.Enabled := false;
            end
         else
            txtReport.Text     := PathWithDelim(ExtractFilePath(Application.ExeName))+'Report';
         // v antigo
         //PathSchemas           := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\'+GetEnumName(TypeInfo(TpcnVersaoDF), integer(xVersaoNfe));
         // teste showmessage(PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\'+GetEnumName(TypeInfo(TpcnVersaoDF), integer(xVersaoNfe)));
         PathNFe            := ExtractFilePath(Application.ExeName) +
                               dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString;
         PathInu            := PathXml;
         // V antigo
           //PathDPEC           := PathXml;
           //PathCan            := PathXml;
           //PathCCe            := PathXml;
           //SalvarCCeCanEvento := True;
         PathEvento         := ExtractFilePath(Application.ExeName) +
                               dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML_OUTROS').AsString;
       end;
   // v antigo
   // PathXml := NFe.Configuracoes.Geral.PathSalvar;
   PathXml := NFe.Configuracoes.Arquivos.PathSalvar;
end;



procedure TFAT_FM_M_EXP.btnAtualizaTelaClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
 try
  AtualizarTela;
 finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFAT_FM_M_EXP.btnGeraBoletoClick(Sender: TObject);
begin
  if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       ShowMessage('Não existe registro de nota fiscal.');
       exit;
     end;

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'S' then
     begin
       ShowMessage('Nota fiscal deve ser de "Venda".');
       exit;
     end;


   if (not((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean = true) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '00'))) then
     begin
       ShowMessage('A nota fiscal não está faturada.');
       exit;
     end;


  dmGeral.BUS_CD_M_REC_BOL.Close;
  dmGeral.BUS_CD_M_REC_BOL.Data :=
           dmGeral.BUS_CD_M_REC_BOL.DataRequest(VarArrayOf([92,
                 dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString]));
  if dmGeral.BUS_CD_M_REC_BOL.IsEmpty then
     begin
       ShowMessage('Não existe forma de pagamento do tipo "Boleto" nesta nota fiscal.');
       exit;
     end;


  PSQ_FM_X_CTC := TPSQ_FM_X_CTC.Create(Self);

  PSQ_FM_X_CTC.BUS_CD_C_CTC.Close;
  PSQ_FM_X_CTC.BUS_CD_C_CTC.Data :=
     PSQ_FM_X_CTC.BUS_CD_C_CTC.DataRequest(
          VarArrayOf([3, '1']));

  PSQ_FM_X_CTC.ShowModal;
  if not PSQ_FM_X_CTC.BUS_CD_C_CTC.IsEmpty then
     begin
       {Licenca := trim(PSQ_FM_X_CTC.BUS_CD_C_CTC.FieldByName('LICENCA').AsString);
       if Licenca = '' then
          begin
            ShowMessage('Conta corrente com o campo "Licenca" vazio.');
            PSQ_FM_X_CTC.BUS_CD_C_CTC.Close;
            exit;
          end; }
     end
  else
     begin
       ShowMessage('Nenhuma conta corrente foi selecionada.');
       exit;
     end;

  {if trim(Licenca) = '' then
     begin
       ShowMessage('Conta corrente com o campo "Licenca" vazio.');
       exit;
     end;}

  try
    FIN_RN_M_BOL.GerarBoleto(1,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMITENTE').AsString,dmGeral.BUS_CD_M_REC_BOL,
                               PSQ_FM_X_CTC.BUS_CD_C_CTC,false,0,mmoReciboBoleto);
  finally
    PSQ_FM_X_CTC.Free;
    dmGeral.BUS_CD_M_REC_BOL.Close;
  end;
end;

procedure TFAT_FM_M_EXP.btnImpEtqClick(Sender: TObject);
begin
  if dmgeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       ShowMessage('É necessário selecionar nota.');
       exit;
     end;

  if MessageDlg('Deseja imprimir a etiqueta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       CAD_FM_R_E01 := TCAD_FM_R_E01.Create(Self);
       CAD_FM_R_E01.Show;
     end;
end;

procedure TFAT_FM_M_EXP.btnImprimeNFEClick(Sender: TObject);
begin
  odNfe.Title      := 'Selecione a NFE';
  odNfe.DefaultExt := '*-nfe.XML';
  odNfe.Filter     := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  //v antigo
  //odNfe.InitialDir := NFe.Configuracoes.Geral.PathSalvar;
  odNfe.InitialDir := NFe.Configuracoes.Arquivos.PathNfe;
  odNfe.FileName   := '';
  if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString) <> '' then
     begin
       odNfe.FileName := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString+'-nfe';
     end;
  if odNfe.Execute then
     begin
       NFE.NotasFiscais.Clear;
       NFE.NotasFiscais.LoadFromFile(odNfe.FileName,false);
      // v antigo
      { if NFE.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
         begin
           NFE.WebServices.ConsultaDPEC.NFeChave := NFE.NotasFiscais.Items[0].NFe.infNFe.ID;
           NFE.WebServices.ConsultaDPEC.Executar;
           NFE.DANFE.ProtocoloNFe := NFE.WebServices.ConsultaDPEC.nRegDPEC +' '+
              DateTimeToStr(NFE.WebServices.ConsultaDPEC.dhRegDPEC);
         end;}
       Nfe.NotasFiscais.Imprimir;
     end;
end;

procedure TFAT_FM_M_EXP.btnNotaFiscalClick(Sender: TObject);
Var
  numNFe,numLote:String;
  Ano, Mes, Dia : Word;
  SMPrincipal: TSMClient;
  retorno: String;
  Ambiente, Versao, Status, Estado, Motivo,
  cMsg, xMsg, Recibo, Protocolo, chave: String;
  id_fiscal, ReabrePed: String;
  vlrTotalTit:currency;
  PathImg: string;
  i:Integer;
  NtFaturada,NtDenegada,NtRejeitada,NtNaoEncerrado:String;
  CodFiscal,msgProblema,NotasNaoEnviadas:String;

begin

   if MessageDlg('Deseja realmente gerar a NFe?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        try
          CodFiscal := '';
          dmGeral.BUS_CD_M_NFE_CXA.First;
          while not  dmGeral.BUS_CD_M_NFE_CXA.eof do
            begin
              { if not(
                 ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
                 (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1)) or

                 (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02') or

                 (dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime <
                 dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime)  or

                 ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 1)   and
                  (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CONTRIBUINTE').AsInteger = 0) and
                  ((trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString) = '') or
                  (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString) = 'ISENTO'))) or

                 ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 0)   and
                  (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CONTRIBUINTE').AsInteger = 0) and
                  (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IP').AsString)=''))           ) then
                 begin
                    if CodFiscal = '' then
                      begin
                        CodFiscal := CodFiscal +  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
                      end
                    else
                      begin
                         CodFiscal := CodFiscal +','+ dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
                      end;
                 end; }

              msgProblema := '';
              if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
                 (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1)) then
                 begin
                   msgProblema := msgProblema + 'Nota encerrada; ';
                 end;

              if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02') then
                 begin
                    msgProblema := msgProblema + 'Nota cancelada; ';
                 end;

              if (dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime <
                  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime) then
                 begin
                    msgProblema := msgProblema + 'Data abertura do caixa é menor que a data de emissão da nota; ';
                 end;

              if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 1)   and
                  (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CONTRIBUINTE').AsInteger = 0) and
                  ((trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString) = '') or
                  (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString) = 'ISENTO'))) then
                  begin
                    msgProblema := msgProblema + 'Pessoa juridica contribuinte de ICMS com IE vazio ou isento; ';
                  end;


              if ((dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 0)   and
                  (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CONTRIBUINTE').AsInteger = 0) and
                  (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IP').AsString)='')) then
                  begin
                      msgProblema := msgProblema + 'Pessoa física contribuinte de ICMS com Inscrição de Produtor vazio; ';
                  end;

              if msgProblema <>'' then
                  begin
                    NotasNaoEnviadas := NotasNaoEnviadas +
                      'Cod. Fiscal: '+dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString+': '+ msgProblema + #13+#10+#13+#10;
                  end
              else
                begin
                  if CodFiscal = '' then
                    begin
                      CodFiscal := CodFiscal +  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
                    end
                  else
                    begin
                       CodFiscal := CodFiscal +','+ dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
                    end;
                end;

              dmGeral.BUS_CD_M_NFE_CXA.Next;
            end;

            if NotasNaoEnviadas <>'' then
              begin
                NotasNaoEnviadas := 'Notas que não serão faturadas'+ #13+#10+#13+#10+NotasNaoEnviadas;
                ShowMessage(NotasNaoEnviadas);
              end;

            if CodFiscal= '' then
              begin
                ShowMessage('Não há nota fiscal pronta para ser faturada.');
                exit;
              end
            else
              begin
                if MessageDlg('Notas que serão faturadas: '+CodFiscal+#13+#10+#13+#10+'Deseja Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                  begin
                    exit;
                  end;
              end;




          dmGeral.BUS_CD_M_NFE_CXA.First;
          ListaCodFiscal.DelimitedText :=  CodFiscal;

          NFe.NotasFiscais.Clear;

          NFe.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName) +
               dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML_OUTROS').AsString;

          NFe.Configuracoes.Arquivos.PathNfe := ExtractFilePath(Application.ExeName) +
               dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString;

          

          DANFE.NumCopias := 1;
          for i := 0 to ListaCodFiscal.Count-1 do
            begin

              dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',ListaCodFiscal[i],[]);
              if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger = 0 then
                 begin
                    if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0) or
                       (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_ORDEM').AsInteger > 0) then
                        begin

                          // A linha do IF foi Colocado por Maxsuel Victor em 14/07/2016
                          if ((trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CFO').AsString)<>'5929') and
                              (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CFO').AsString)<>'6929')) then
                             begin
                               // Maxsuel Victor 22/09/2015
                                  // Se alterar algum código aqui , verificar se é necessário fazer pra Pré-Venda, pois o código
                                  // abaixo existe no momento da geração da pré-venda também.
                               FAT_RN_M_NFE.FatRecalTributItens(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
                               FAT_RN_M_NFE.FatFormarNfeObs(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
                               fatNfeCalcTotal(dmGeral.BUS_CD_M_NFE_CXA,dmGeral.BUS_CD_M_NFE_ITE_CXA);
                               dmGeral.BUS_CD_M_NFE_CXA.Post;
                               dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
                             end;
                        end;
                    { Irá atualizar alguns campos da nota fiscal e a sequência da numeração antes de enviar para Sefaz:
                      Tabela: FAT_TB_M_NFE
                          ID_ABERTURA - NUMERO - MODELO - SERIE - NFE_TIPO_EMISSAO - NFE_TIPO_AMBIENTE - NFE_ECF
                      Tabela: CAD_TB_C_PAR_SER
                          NFE_NUMERO }
                    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                    try
                     // id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
                      retorno   := SMPrincipal.enAtuDadosNF(ListaCodFiscal[i],dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsString,'1');
                      if retorno <> 'OK' then
                         begin
                           ShowMessage('Nº Controle: '+ ListaCodFiscal[i]+#13+Retorno);
                           abort;
                         end;
                      //FAT_RN_M_CXA.FatAtuDadosTelaCxa;
                     // dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
                      AtualizarTela;
                    finally
                      FreeAndNil(SMPrincipal);
                    end;
                    // -------------------------------------------------------------------------
                 end;

                dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',ListaCodFiscal[i],[]);
                dmGeral.BUS_CD_M_NFE_CXA.Edit;

                dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime :=
                        dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;
                dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_DOCUMENTO').AsDateTime :=
                        dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;

                dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0);
                dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',ListaCodFiscal[i],[]);

                numNfe  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString;
                DecodeDate(xDataSis, Ano, Mes, Dia);
                numLote := inttostr(Ano)+inttostr(Mes)+inttostr(Dia);
                numLote := OnlyNumber(numLote);


                GerarNFe(numNFe);


            end;

           NFe.NotasFiscais.GerarNFe;
                //try  esse try estava gerando a msg Arguments out of range, escondendo para o cliente a msg detelhada.

          { NFe.NotasFiscais.Assinar;
           NFe.NotasFiscais.Validar;
           NFe.WebServices.Envia(NumLote);}

           NFe.Enviar(numLote,True,false);

           MemoResp.Lines.Text   := UTF8Encode(NFe.WebServices.Retorno.RetWS);
           memoRespWS.Lines.Text := UTF8Encode(NFe.WebServices.Retorno.RetornoWS);

           LoadXML(Nfe.WebServices.Retorno.RetornoWS, WBResposta);


            MemoDados.Lines.Clear;

            Ambiente   := TpAmbToStr(NFe.WebServices.Retorno.TpAmb);
            Versao     := NFe.WebServices.Retorno.verAplic;
            Status     := IntToStr(NFe.WebServices.retorno.cStat);
            Estado     := IntToStr(NFe.WebServices.retorno.cUF);
            Motivo     := NFe.WebServices.Retorno.xMotivo;
            cMsg       := IntToStr(NFe.WebServices.Retorno.cMsg);
            xMsg       := NFe.WebServices.Retorno.xMsg;
            Recibo     := NFe.WebServices.Retorno.Recibo;
            Protocolo := '';
            NtFaturada := '';
            NtDenegada := '';
            NtRejeitada := '';
            NtNaoEncerrado := '';

            //Protocolo  := NFe.WebServices.Retorno.Protocolo;
            // chave      := NFe.WebServices.Retorno.ChaveNFe;



            MemoDados.Lines.Add('Envio NFe');
            MemoDados.Lines.Add('Ambiente: ' + Ambiente );
            MemoDados.Lines.Add('Versão: '   + Versao);
            MemoDados.Lines.Add('Status: '   + Status);
            MemoDados.Lines.Add('Estado: '   + Estado);
            MemoDados.Lines.Add('Motivo: '   + Motivo);
            MemoDados.Lines.Add('cMsg: '     + cMsg);
            MemoDados.Lines.Add('xMsg: '     + xMsg);
            MemoDados.Lines.Add('Nº Recibo: '+ Recibo);
         //   MemoDados.Lines.Add('Nº Protocolo: '+ Protocolo);



        for i := 0 to NFE.NotasFiscais.Count-1 do

          begin

            dmGeral.BUS_CD_M_NFE_CXA.Locate('NUMERO',VarArrayOf([
                                                  NFE.NotasFiscais.Items[i].NFe.Ide.cNF]),[]);
            id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
            dmGeral.BUS_CD_M_NFE_CXA.Edit;
            Protocolo := Protocolo + NFE.NotasFiscais.Items[i].NFe.procNFe.nProt+',';

            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString    := Recibo;
            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString     :=
                                  NFE.NotasFiscais.Items[i].NFe.procNFe.chNFe;
            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_PROTOCOLO').AsString :=
                                  NFE.NotasFiscais.Items[i].NFe.procNFe.nProt;
            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean     := true;  // Quer dizer que a nota foi emitida pela própria empresa e não de terceiros.

            try

                case NFE.NotasFiscais.Items[i].NFe.procNFe.cStat of
                   100:
                    begin
                       dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger  := 1;
                       dmGeral.BUS_CD_M_NFE_CXA.Post;
                       try

                         if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                            begin
                             // ShowMessage('Geração da NFe foi realizada com sucesso!');
                             NtFaturada := NtFaturada +  IntToStr(NFE.NotasFiscais.Items[i].NFe.Ide.cNF)+',';
                            end;
                       except
                         on e:exception do
                            begin
                              Showmessage('Nº Controle: '+id_fiscal+#13+'Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                            end;
                       end;
                    end
                   else
                      begin
                        if (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 110) or
                           (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 205) or
                           (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 301) or
                           (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 302) or
                           (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 303) or
                           (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 358) or
                           (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 650) or
                           (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 651) or
                           (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 654) or
                           (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 687) then
                            begin
                              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger      := 1;
                              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString  := '04';
                              dmGeral.BUS_CD_M_NFE_CXA.Post;
                              try
                                if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                                   begin
                                     //ShowMessage('***ATENÇÃO***' +#13 +  'A NFe foi gerada mas foi "Denegada" pela Sefaz!');

                                     NtDenegada := NtDenegada +  IntToStr(NFE.NotasFiscais.Items[i].NFe.Ide.cNF)+',';
                                     dmGeral.BUS_CD_M_NFE_CXA.Locate('NUMERO',VarArrayOf([
                                                  NFE.NotasFiscais.Items[i].NFe.Ide.cNF]),[]);
                                     if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_venda').AsInteger > 0 then
                                        begin
                                            ReabrePed := 'N';
                                              {
                                            if MessageDlg('Deseja reabrir o pedido? ' + #13 +
                                                          'Se for "NÃO", o pedido de venda será cancelado.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                               begin
                                                 ReabrePed := 'S';
                                               end;
                                                }
                                            try
                                               SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                                               retorno := SMPrincipal.enReabrePed(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,ReabrePed);
                                               if retorno <> 'OK' then
                                                  begin
                                                   // ShowMessage('Erro: ' + retorno);
                                                  end
                                               else
                                                  begin
                                                    //Showmessage('Operação realizada com sucesso!');
                                                  end;
                                            finally
                                               FreeAndNil(SMPrincipal);
                                             //  AtuGridNota;
                                            end;
                                        end;
                                   end;
                              except
                                 on e:exception do
                                    begin
                                      Showmessage('Nº Controle: '+id_fiscal+#13+'Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                                    end;

                              end;
                            end
                        else
                            begin
                              if (NFe.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat>200) then
                                  begin
                                    dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger  := 0;
                                    dmGeral.BUS_CD_M_NFE_CXA.Post;
                                    try
                                        if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                                           begin
                                             //ShowMessage('***ATENÇÃO***' +#13 +
                                            //  'A NFe foi gerada mas foi "Rejeitada" pela Sefaz!');
                                              NtRejeitada := NtRejeitada + IntToStr(NFE.NotasFiscais.Items[i].NFe.Ide.cNF)+',';
                                           end;
                                    except
                                       on e:exception do
                                          begin
                                            Showmessage('Nº Controle: '+id_fiscal+#13+'Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                                          end;
                                    end;
                                  end
                              else
                                 begin
                                   dmGeral.BUS_CD_M_NFE_CXA.Post;
                                   try
                                     if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                                        begin
                                          //ShowMessage('***ATENÇÃO***' +#13 + 'A NFe foi gerada mas sem o status de "Encerrada" devido a algum problema retornado pela Sefaz!');
                                           NtNaoEncerrado := NtNaoEncerrado +IntToStr(NFE.NotasFiscais.Items[i].NFe.Ide.cNF)+',';
                                        end;
                                   except
                                      on e:exception do
                                         begin
                                           Showmessage('Nº Controle: '+id_fiscal+#13+'Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                                         end;
                                   end;
                                 end;
                            end;
                      end
                  end;

            finally
             // NFE.NotasFiscais.Clear;
            end;


          end;
          MemoDados.Lines.Add('Nº Protocolo: '+ Protocolo);

           if NtFaturada <> '' then
            begin
               MemoDados.Lines.Add('Notas Faturadas: '+ NtFaturada);
            end;

          if NtDenegada <> '' then
            begin
               MemoDados.Lines.Add('Notas Denegadas: '+ NtDenegada);
            end;

          if NtRejeitada <> '' then
            begin
               MemoDados.Lines.Add('Notas Rejeitadas: '+ NtRejeitada);
            end;

          if NtNaoEncerrado <> '' then
            begin
               MemoDados.Lines.Add('Notas Não Encerradas: '+ NtNaoEncerrado);
            end;

          if  (NtDenegada <> '') or (NtRejeitada <> '') or (NtNaoEncerrado <> '') then
            begin
               ShowMessage('***ATENÇÃO***' +#13 +  'Há notas que não foram faturadas pela Sefaz!');
            end
          else
            begin
               ShowMessage('Geração da NFe foi realizada com sucesso!');
            end;


        finally
           NFE.NotasFiscais.Clear;
        end;
  end;
end;

procedure TFAT_FM_M_EXP.CancelarNota(tipo: integer);
var
  vAux : String;
  xml: String;
  SMPrincipal: TSMClient;
  retorno: String;
  idLote: String;
  Ano,Mes,Dia: Word;
  CanStatus:string;
  CanProtocolo:string;
  msgPergunta,ReabrePed: String;
  id_fiscal:String;
begin

  { Tipo: 0 - Cancelamento normal -> executa todos os procedimentos;
          1 - Cancelamento somente no sistema
          2 - Cancelamento somente na sefaz
          3 - Cancelamento Cupom GerConWin
  }


  // Ao mexer nesta rotina lembrar de verificar a tela de NFCe
 // AtuGridNota;
 id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
 AtualizarTela;
 if id_fiscal <> '' then
    dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);


  if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       ShowMessage('Não existe registro de nota fiscal.');
       exit;
     end;

  if tipo <> 3 then
     begin
       if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean then
          begin
            ShowMessage('Nota fiscal com pré-venda.');
            exit;
          end;

       if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) <> 'X' then
           begin
              if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
                       ( trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString) <> '') and
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
     end;

  if tipo = 3 then
     begin
       if not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('PREVENDA').AsBoolean) then
          begin
            ShowMessage('Nota fiscal não tem pré-venda.');
            exit;
          end;

       if not ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
                (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) ) then
          begin
            ShowMessage('Pré-venda em aberto! ' + #13 +
                        'Só é permitido cancelar cupom fiscal encerrado.');
            exit;
          end;
     end;


  if (tipo = 0) or (tipo = 1)  then  // Se for um cancelamento normal ou Somente no sistema.
      begin
        if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02' then
            begin
              ShowMessage('Nota fiscal já foi cancelada.');
              exit;
            end;
      end;

  if (tipo = 3) then  // Se for um cancelamento de cupom fiscal
      begin
        if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02' then
           begin
             ShowMessage('Cupom fiscal já foi cancelado.');
             exit;
           end;

         // Buscar dados do cupom fiscal
         dmGeral.CD_BR_CUPOM_MESTRE.Close;
         dmGeral.CD_BR_CUPOM_MESTRE.Data :=
         dmGeral.CD_BR_CUPOM_MESTRE.DataRequest(VarArrayOf([7,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('numero').AsString,
                                             dmGeral.FIN_CD_M_CXA.FieldByName('ecf_serial_impressora').AsString]));
         if dmGeral.CD_BR_CUPOM_MESTRE.FieldByName('CANCELADO').AsString <> 'S' then
           begin
             ShowMessage('Cupom fiscal não foi cancelado no GerConWin.');
             dmGeral.CD_BR_CUPOM_MESTRE.Close;
             exit;
           end;
         dmGeral.CD_BR_CUPOM_MESTRE.Close;
     end;

  msgPergunta := '';
  if tipo = 0  then
     msgPergunta := 'Deseja realmente cancelar a nota fiscal: ' + dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString+'?';
  if tipo = 1 then
     msgPergunta := 'Deseja cancelar a nota fiscal ' + dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString+ ' somente no sistema?';
  if tipo = 2 then
     msgPergunta := 'Deseja cancelar a nota fiscal ' + dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString+ ' somente na SEFAZ?';
  if tipo = 3 then
     msgPergunta := 'Deseja cancelar o cupom fiscal ' + dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsString;


  if MessageDlg(msgPergunta, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       if (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString) <> 'X') and
          (not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '04'))  then
          begin
            {odNfe.Title := 'Selecione a NFE';
            odNfe.DefaultExt := '*-nfe.XML';
            odNfe.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
            odNfe.InitialDir := NFe.Configuracoes.Geral.PathSalvar;
            if odNfe.Execute then
               begin}

                  if (tipo = 0) or (tipo = 1) or (tipo = 3) then  // Se for um cancelamento normal ou Cancelamento somente no sistema
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
                     end;

                  if (tipo = 0) or (tipo = 2) then  // Se for um cancelamento normal ou Cancelamento somente na Sefaz
                     begin
                        // v antigo
                        //danfe.NFeCancelada := true;
                        // v antigo
                        //xml := NFe.Configuracoes.Geral.PathSalvar+'\'+
                        //       dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString+'-nfe.xml';
                        xml := NFe.Configuracoes.Arquivos.PathNfe+'\'+
                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString+'-nfe.xml';

                        NFe.NotasFiscais.Clear;
                        NFe.NotasFiscais.LoadFromFile(xml);

                        DecodeDate(xDataSis, Ano, Mes, Dia);
                        idLote := inttostr(Ano)+inttostr(Mes)+inttostr(Dia);
                        idLote := OnlyNumber(idLote);
                        if not(InputQuery('WebServices Eventos: Cancelamento', 'Identificador de controle do Lote de envio do Evento', idLote)) then
                           exit;
                        if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa', vAux)) then
                           exit;
                        NFe.EventoNFe.Evento.Clear;
                        NFe.EventoNFe.idLote := StrToInt(idLote) ;
                        with NFe.EventoNFe.Evento.Add do
                             begin
                               infEvento.dhEvento := now;
                               infEvento.tpEvento := teCancelamento;
                               infEvento.detEvento.xJust := vAux;
                             end;
                        //v antigo
                        //NFe.EnviarEventoNFe(StrToInt(idLote));
                        NFe.EnviarEvento(StrToInt(idLote));

                        // v antigo
                        //MemoResp.Lines.Text := UTF8Encode(NFe.WebServices.EnvEvento.RetWS);
                        //memoRespWS.Lines.Text :=  UTF8Encode(NFe.WebServices.EnvEvento.RetornoWS);
                        //LoadXML(MemoResp, WBResposta);

                        MemoResp.Lines.Text := NFe.WebServices.EnvEvento.RetWS;
                        memoRespWS.Lines.Text := NFe.WebServices.EnvEvento.RetornoWS;
                        LoadXML(NFe.WebServices.EnvEvento.RetornoWS, WBResposta);
                        ShowMessage(IntToStr(Nfe.WebServices.EnvEvento.cStat));
                        ShowMessage(Nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);


                        NFe.WebServices.Consulta.NFeChave := Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString);
                        NFe.WebServices.Consulta.Executar;
                        CanStatus    := IntToStr(NFe.WebServices.Consulta.cStat);
                        CanProtocolo := NFe.WebServices.Consulta.Protocolo;
                                                                                        //  if NFe.WebServices.EnvEvento.cStat = 101 then
                        //101: Cancelamento de NF-e homologado';
                        //135: Evento registrado e vinculado a NF-e';

                        if tipo = 0  then // Se for um cancelamento normal
                           begin
                              if (trim(CanStatus) = '101') or (trim(CanStatus) = '135') then
                                 begin
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
                                     //AtuGridNota;
                                      id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
                                       AtualizarTela;
                                       if id_fiscal <> '' then
                                          dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
                                   end;
                                 end;
                           end;
                     end;

                  if tipo = 1 then  // Se for um cancelamento somente no sistema
                     begin
                       try
                         SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                         retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,'','Somente sistema',ReabrePed,'');
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
                         //AtuGridNota;
                          id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
                          AtualizarTela;
                          if id_fiscal <> '' then
                              dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
                       end;
                     end;

                  if tipo = 3 then  // Se for um cancelamento de cupom fiscal gerconwin
                     begin
                       try
                         SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                         retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,'','Canc. Cupom GerConWin',ReabrePed,'');
                         if retorno <> 'OK' then
                            begin
                              ShowMessage('Erro: ' + retorno);
                            end
                         else
                            begin
                              Showmessage('Cupom Fiscal cancelado com sucesso!');
                            end;
                       finally
                         FreeAndNil(SMPrincipal);
                         //AtuGridNota;
                          id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
                          AtualizarTela;
                          if id_fiscal <> '' then
                            dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
                       end;
                     end;
               //end;
          end
       else
          begin
             if tipo = 2 then
                begin
                  Showmessage('Nota fiscal não é um documento eletrônico.');
                  abort;
                end;
             try
              ReabrePed := '';
              if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger > 0 then
                 begin
                   ReabrePed := 'N';
                   if MessageDlg('Deseja reabrir o pedido de venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                      begin
                        ReabrePed := 'S';
                      end;
                 end;

               SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
               retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,'','',ReabrePed,'');
             finally
               FreeAndNil(SMPrincipal);
              // AtuGridNota;
               id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
               AtualizarTela;
               if id_fiscal <> '' then
                  dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
             end;
          end;
     end;
end;




procedure TFAT_FM_M_EXP.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFAT_FM_M_EXP.CancelarnotafiscalsomentenaSEFAZ1Click(Sender: TObject);
begin
  CancelarNota(2);
end;

procedure TFAT_FM_M_EXP.Cancelarnotafiscalsomentenosistema1Click(
  Sender: TObject);
begin
  CancelarNota(1);
end;

procedure TFAT_FM_M_EXP.DadosdoTransportador1Click(Sender: TObject);
var
  IdFiscal: integer;
begin

  if not FAT_RN_M_CXA.FatVerifDadosNfCxa(1) then
     begin
       exit;
     end;

  IdFiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger;

  Application.CreateForm(TFAT_FM_M_CXA_NFE_TRA,FAT_FM_M_CXA_NFE_TRA);
  FAT_FM_M_CXA_NFE_TRA.ShowModal;
  FAT_FM_M_CXA_NFE_TRA.close;

  //FAT_RN_M_CXA.FatAtuDadosTelaCx
  AtualizarTela;

  dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',IdFiscal,[]);
end;

procedure TFAT_FM_M_EXP.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   if Field.FieldName = 'legenda' then
     begin
       {  *** ATENÇÃO ****

          Caso este código abaixo seja alterado , você deverá alterar o código
          do Grid de Notas Fiscais da tela FAT_FM_M_CXA e FAT_FM_M_CXA_CAN e da tela NFCe também para que os
          códigos fiquem iguais.

          Maxsuel Victor
        }

       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger > 0) then
           Abrush.Color := clBlue;

       // Situação de NFe FATURADA normnal. Cor Verde
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) and

          ( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString <> '')  or
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

procedure TFAT_FM_M_EXP.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  // v antigo
  //MyMemo.Lines.SaveToFile(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
  //MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');


  ACBrUtil.WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml',
                        ACBrUtil.ConverteXMLtoUTF8( RetWS ), False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');


end;


procedure TFAT_FM_M_EXP.FaturarnotafiscalapsXML1Click(Sender: TObject);
var
  chave,Protocolo,PathImg: String;
  LogoEmpresa: TfrxPictureView;
   id_fiscal:string;
   vlrTotalTit:currency;
begin
  if not(InputQuery('Faturar pós XML NFe', 'Chave de acesso', chave)) then
     exit;

  if (trim(chave) = '') then
     begin
       Showmessage('O nº da chave deve ser informado.');
       exit;
     end
  else
     begin
        if (not dmGeral.ValChaveNFe(trim(chave)))  then
           begin
             Showmessage('O nº da chave é inválido.');
             exit;
           end;
     end;

  if not(InputQuery('Faturar pós XML NFe', 'Protocolo', Protocolo)) then
     exit;


  if (trim(Protocolo) = '') then
     begin
       Showmessage('O nº do protocolo deve ser informado.');
       exit;
     end;

  if MessageDlg('O xml desta nota fiscal foi realmente gerado e assinado pela Sefaz?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        if MessageDlg('Deseja realmente terminar de faturar o pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
             try
              dmGeral.BUS_CD_M_NFE_CXA.Edit;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime :=
                      dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_DOCUMENTO').AsDateTime :=
                      dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_RECIBO').AsString    := 'sem recibo - Pós XML';
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString     := chave;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_PROTOCOLO').AsString := Protocolo;
              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('FATURADA').AsBoolean     := true;  // Quer dizer que a nota foi emitida pela própria empresa e não de terceiros.

              dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger  := 1;
              dmGeral.BUS_CD_M_NFE_CXA.Post;
              try
                 if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
                    begin
                      ShowMessage('Geração da NFe foi realizada com sucesso!');
                      if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('CXA_IMPRIME_ETQ').AsBoolean = True) then
                          begin
                            if MessageDlg('Deseja imprimir a etiqueta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                               begin
                                 CAD_FM_R_E01 := TCAD_FM_R_E01.Create(Self);
                                 CAD_FM_R_E01.Show;
                               end;
                          end;

                      dmgeral.BUS_CD_M_TER_NFE.Close;
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
                      dmGeral.BUS_CD_M_TER_NFE.close;

                     id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;


                     if (dmGeral.BUS_CD_M_NFE_TIT_CXA.RecordCount>0) then
                       begin

                         vlrTotalTit :=0;
                         dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                         while not dmGeral.BUS_CD_M_NFE_TIT_CXA.eof do
                           begin
                             if dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('INT_DOCIMPRESSO').AsInteger in [3,5,6] then
                               begin
                                 vlrTotalTit :=vlrTotalTit + dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('VLR_TITULO').AsCurrency;
                               end;
                             dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
                           end;

                         if vlrTotalTit > 0 then
                           begin
                              if MessageDlg('Deseja imprimir o recibo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                begin
                                    try

                                     dmGeral.BUS_CD_M_NFE_CXA.Filtered := true;
                                     dmGeral.BUS_CD_M_NFE_CXA.Filter := 'id_fiscal ='+id_fiscal;

                                     dmGeral.BUS_CD_M_NFE_TIT_CXA.Filtered := true;
                                     dmGeral.BUS_CD_M_NFE_TIT_CXA.Filter := 'int_docimpresso = 3 or int_docimpresso = 5 or int_docimpresso = 6';

                                     dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
                                     PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
                                     FAT_FR_M_CXA_RVS.Variables['vlr_total_tit'] := QuotedStr(FormatCurr('###,###,##0.00' ,vlrTotalTit));
                                     FAT_FR_M_CXA_RVS.Variables['ft_vlrExtenso'] := QuotedStr(Extenso(vlrTotalTit));

                                     if FileExists(PathImg) then
                                        begin
                                           LogoEmpresa := TfrxPictureView(FAT_FR_M_CXA_RVS.FindObject('imgEmpresa1'));
                                           if Assigned(LogoEmpresa) then
                                              LogoEmpresa.Picture.LoadFromFile(PathImg);

                                           LogoEmpresa := TfrxPictureView(FAT_FR_M_CXA_RVS.FindObject('imgEmpresa2'));
                                           if Assigned(LogoEmpresa) then
                                              LogoEmpresa.Picture.LoadFromFile(PathImg);
                                        end;
                                     dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_M_CXA_RVS.Name,xCodLme,xRevLme,nil);
                                     FAT_FR_M_CXA_RVS.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                                     FAT_FR_M_CXA_RVS.Variables['Opcoes'] := QuotedStr('');
                                     FAT_FR_M_CXA_RVS.PrepareReport();
                                     FAT_FR_M_CXA_RVS.ShowReport();
                                    finally
                                        dmGeral.BUS_CD_M_NFE_CXA.Filtered := false;
                                        dmGeral.BUS_CD_M_NFE_TIT_CXA.Filtered := false;
                                    end;
                                end;
                           end;
                       end;


                    end;
              except
                 on e:exception do
                    begin
                      Showmessage('Erro ao tentar gravar a nota fiscal: ' + #13 + e.Message);
                    end;
              end;

              finally
                NFE.NotasFiscais.Clear;
              end;

             // AtuGridNota;
             id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
             AtualizarTela;
             if id_fiscal <> '' then
                dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);
           end;
     end;
end;

procedure TFAT_FM_M_EXP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dmGeral.BUS_CD_M_NFE_CXA.Close;
   dmGeral.BUS_CD_M_NFE_CXA.Data :=
        dmGeral.BUS_CD_M_NFE_CXA.DataRequest(
                 VarArrayOf([96,0,'','','']));
   dmGeral.BUS_CD_M_NFE_CXA.Close;
  Action := caFree;
end;

procedure TFAT_FM_M_EXP.FormCreate(Sender: TObject);
begin
  carregaCores;
  WindowState := wsMaximized;
  self.FormStyle := fsMDIChild;
end;

procedure TFAT_FM_M_EXP.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFAT_FM_M_EXP.FormShow(Sender: TObject);
begin
   pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
   pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);

   EmpAtual:='Emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;

  //Danfe.FastFile       := ExtractFileDir(application.ExeName) + '\Report\DANFE.fr3';
  Danfe.FastFile       := ExtractFileDir(application.ExeName) + '\Report\DanfeRetrato.fr3';
  Danfe.FastFileEvento := ExtractFileDir(application.ExeName) + '\Report\EVENTOS.fr3';

  LerConfiguracao;
 // LerConfiguracaoRPS;
  VerCertificado;
   ListaCodFiscal := TStringList.Create;
   LIstaCodFiscal.Delimiter:=',';
   LIstaCodFiscal.StrictDelimiter:=True;

   dmGeral.FIN_CD_M_CXA.Close;
   dmGeral.FIN_CD_M_CXA.Data :=
   dmGeral.FIN_CD_M_CXA.DataRequest(
          VarArrayOf([90, IntToStr(xFuncionario), dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));

   if dmGeral.FIN_CD_M_CXA.IsEmpty then
     BEGIN
       btnNotaFiscal.Enabled := false;
       btnAtualizaTela.Enabled := false;
       btnGeraBoleto.Enabled := false;
       ShowMessage('Caixa está fechado.');
     END
   else
     begin
        AtualizarTela;
     end;

   dmGeral.AtualizarGridItens(dgItens,'int_desc_item',8,10);
end;

procedure TFAT_FM_M_EXP.GerarNFe(NumNFe : String);
Var iSeq: Integer;
    iRet:Boolean;
    contribuinte: Boolean;
    lDocIE,lDocIP,lUFEmitente: String;

    pAliqInterna, pAliqSaida, pInterPart:double;
    xDifAliquota, vBasePartilha, vPartilhaDest, vPartilhaOrigem:currency;
    vTotPartilhaDest, vTotPartilhaOrigem:currency;
    vBaseInterna, vBaseInter:currency;
    PercTributo: Currency;
    MensagemCpl: String;
begin

  with NFe.NotasFiscais.Add.NFe do
   begin
     if trim(dmGeral.CAD_CD_C_PAR.FieldByName('cnt_cnpj').AsString) <>'' then
       begin
         autXML.Add.CNPJCPF := trim(dmGeral.CAD_CD_C_PAR.FieldByName('cnt_cnpj').AsString);
       end;

     Ide.cNF       := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger; //Caso não seja preenchido será gerado um número aleatório pelo componente
     Ide.natOp     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_descnat').AsString;
     Ide.indPag    := StrToIndpag(iRet,Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_indPag').AsString));
     Ide.modelo    := StrToInt(Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('MODELO').AsString));
     Ide.serie     := StrToInt(Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('SERIE').AsString));
     Ide.nNF       := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger;
     Ide.dEmi      := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime;
     Ide.dSaiEnt   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_DOCUMENTO').AsDateTime;
     Ide.hSaiEnt   := Now;
     Ide.tpNF      := StrToTpNF(iRet,InttoStr(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ind_operacao').asInteger));
     Ide.tpEmis    := StrToTpEmis(iRet, inttoStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('danf_tipo_emissao').AsInteger+1));
     Ide.tpAmb     := StrToTpAmb(iRet,inttoStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('situacao_emissor').AsInteger));
     Ide.verProc   := CVersaoSistema;
     Ide.cUF       := UFtoCUF(dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').AsString);
     Ide.cMunFG    := StrToInt(trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString));
     Ide.finNFe    := StrToFinNFe(iRet,inttostr(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_finalidade').AsInteger));

     if Assigned( NFe.DANFE ) then
        Ide.tpImp     := NFe.DANFE.TipoDANFE;

     if Ide.tpEmis <> teNormal then
        begin
          Ide.dhCont := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('contigencia_data').AsDateTime;
          Ide.xJust  := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('contigencia_just').AsString;
        end;

     //## cfNao, cfConsumidorFinal
     //Ide.indFinal  := cfNao;
     if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_TIPOFINAL').AsInteger = 0 Then
        Ide.indFinal  := cfConsumidorFinal
     else
        Ide.indFinal  := cfNao;



     //## (pcNao, pcPresencial, pcInternet, pcTeleatendimento, pcEntregaDomicilio, pcOutros)
     Ide.indPres  :=pcNao;

     if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMPRESA').AsString <> dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMITENTE').AsString Then
        begin
          if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMITENTE').AsString)='EX' then
             ide.idDest := doExterior
          else
             ide.idDest := doInterestadual;
        end
     else if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMPRESA').AsString = dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMITENTE').AsString  Then
        ide.idDest := doInterna;

     {if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMPRESA').AsString <> dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMITENTE').AsString Then
        ide.idDest := doInterestadual
     else if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMPRESA').AsString = dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMITENTE').AsString  Then
        ide.idDest := doInterna
     else
        ide.idDest := doExterior; }





     if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_FINALIDADE').AsInteger = 2) or // -> Nota complementar

        (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'R') or
        (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'D') then
         begin
           dmGeral.BUS_CD_M_NFE_DEV.Close;
           dmGeral.BUS_CD_M_NFE_DEV.Data :=
                 dmGeral.BUS_CD_M_NFE_DEV.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString]));

           if not dmGeral.BUS_CD_M_NFE_DEV.IsEmpty then
              begin
                while not dmGeral.BUS_CD_M_NFE_DEV.eof do
                   begin
                       //Para NFe referenciada use os campos abaixo
                       with Ide.NFref.Add do
                            begin
                              dmGeral.BUS_CD_M_NFE.Close;
                              dmGeral.BUS_CD_M_NFE.Data :=
                                  dmGeral.BUS_CD_M_NFE.DataRequest(VarArrayOf([12,
                                          dmGeral.BUS_CD_M_NFE_DEV.FieldByName('ID_FISCAL_DEV').AsString]));

                              refNFe       := dmGeral.BUS_CD_M_NFE.FieldByName('NFE_CHAVE').AsString; //NFe Eletronica

                              {RefNF.cUF    := 0;  // |
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
                              RefECF.nCOO    := '';          // |}
                            end;
                       dmGeral.BUS_CD_M_NFE_DEV.Next;
                   end;
              end;
            dmGeral.BUS_CD_M_NFE_DEV.Close;
            dmGeral.BUS_CD_M_NFE.Close;
         end;

     if ((trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CFO').AsString)='5929') or
         (trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_CFO').AsString)='6929')) then
        begin
          //Busca onumero danota pelo id_fiscal_referenciado
          dmGeral.BUS_CD_M_NFE_2.Close;
          dmGeral.BUS_CD_M_NFE_2.Data :=
          dmGeral.BUS_CD_M_NFE_2.DataRequest(
                 VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tipo_nf').AsString,
                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal_referenciado').AsString]));
          if not dmGeral.BUS_CD_M_NFE_2.IsEmpty then
             begin
              with Ide.NFref.Add do
                begin
                  RefECF.modelo := ECFModRef2D;
                  RefECF.nCOO   := dmGeral.BUS_CD_M_NFE_2.FieldByName('NUMERO').asString;
                  refECF.nECF   := '01';
                end;
             end;
           dmGeral.BUS_CD_M_NFE_2.Close;
        end;

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





      Emit.IEST              := '';
      // Preencher no caso de existir serviços na nota
      Emit.IM                := Trim(dmGeral.CAD_CD_C_PAR.FieldByName('EMP_IM').AsString);
      // Verifique na cidade do emissor da NFe se é permitido a inclusão de serviços na NFe
      Emit.CNAE              := Trim(  StringReplace(StringReplace(StringReplace( dmGeral.CAD_CD_C_PAR.FieldByName('int_id_cnae').AsString,
                                                  '.','',[rfReplaceAll]),
                                                  '-','',[rfReplaceAll]),
                                                  '/','',[rfReplaceAll])  );

      // (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
      if dmGeral.CAD_CD_C_PAR.FieldByName('int_reg_tributario').AsInteger=0 then
         Emit.CRT               := crtSimplesNacional
      else
         Emit.CRT               := crtRegimeNormal;

      Dest.CNPJCPF           := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cnpjcpf').AsString;
      // Dest.IE mais abaixo
      Dest.ISUF              := '';
      Dest.xNome             := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_nomeemi').AsString+
                                ' - Cod.: '+dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_emitente').AsString;

      // Esse IF foi colocado por Maxsuel Victor em 31-03-2016 , pra atender um pedido do Colchões Globo;
      if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
         Dest.EnderDest.Fone    := ''
      else
         Dest.EnderDest.Fone    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_telefone').AsString;

      Dest.EnderDest.CEP     := StrToInt(RemoveChars(['-'],Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cep').AsString)));

      Dest.EnderDest.xLgr    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_endereco').AsString;
      Dest.EnderDest.nro     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_numero').AsString;
      Dest.EnderDest.xCpl    := '';
      Dest.EnderDest.xBairro := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_bairro').AsString;
      Dest.EnderDest.cMun    := strtoint(trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cod_cidade').AsString));
      Dest.EnderDest.xMun    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_nom_cidade').AsString;
      Dest.EnderDest.UF      := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_estado').AsString;

      if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('UF_EMITENTE').AsString)='EX' then
        begin
         Dest.EnderDest.cPais   := StrToInt(trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_COD_PAIS').AsString));
         Dest.EnderDest.xPais   := trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_NOM_PAIS').AsString);
        end
      else
        begin
          Dest.EnderDest.cPais   := 1058;
          Dest.EnderDest.xPais   := 'BRASIL';
        end;

      if copy(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_cfo').AsString,1,1) = '3' then
        begin
         Dest.idEstrangeiro := TRIM(dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_EXPORTADOR').AsString);
        end;

      Contribuinte := false;

      if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'E') or
         (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'D') then
         begin
           dmGeral.BusFornecedor(0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMITENTE').AsString);

           if length(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CNPJCPF').AsString) = 14 then  // Jurídica
              Dest.IE := trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_doc_ie').AsString);

           lDocIE      := dmGeral.BUS_CD_C_FOR.FieldByName('DOC_IE').AsString;
           lUFEmitente := dmGeral.BUS_CD_C_FOR.FieldByName('INT_UF').AsString;

           if (length(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CNPJCPF').AsString) = 14) and  // Jurídica
              ((trim(lDocIE) <> '') and (trim(lDocIE) <> 'ISENTO')) then
                begin
                   Contribuinte := true;
                end;
         end;



      if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'S') or
         (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'R') then
         begin
           dmGeral.BusCliente(0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMITENTE').AsString);

           if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 1 then  // Jurídica
             begin
              if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_contribuinte').AsInteger=0  then
                 begin
                   Dest.IE := trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_doc_ie').AsString);
                 end;
             end;
           lDocIE        := dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString;
           lDocIP        := dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IP').AsString;
           lUFEmitente   := dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;

           if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 1)   and   // Jurídica
              ((trim(lDocIE) <> '') and (trim(lDocIE) <> 'ISENTO')) then
                begin
                  Contribuinte := true;
                end;

           if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 0) and // Física
              ( (trim(lDocIP) <> '') and (trim(lDocIP) <> 'ISENTO') ) then
               begin
                 Contribuinte := true;
               end;
         end;


      // Comentado devido nota tecnica de 2016
      // Para notas de entrada e devolução de fornecedor

      {if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'E') or
         (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'D') then
         begin
            //## (inContribuinte, inIsento, inNaoContribuinte)
            if (length(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CNPJCPF').AsString) <> 14) AND  // Fisica
               (Contribuinte=true) then
               begin
                 Dest.indIEDest := inContribuinte;
                 Dest.IE        := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString;
               end
            else
               if (length(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CNPJCPF').AsString) <> 14) AND
                  (contribuinte=false) then
                  begin
                    Dest.indIEDest := inNaoContribuinte;
                  end
                else
                  if (length(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CNPJCPF').AsString) = 14) AND
                     (Contribuinte=true) then
                     begin
                       Dest.indIEDest := inContribuinte;
                       Dest.IE := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString;
                     end
                  else
                     if (length(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CNPJCPF').AsString) = 14) AND
                        (contribuinte=false) then
                         begin
                           Dest.indIEDest := inIsento;
                         end;
         end;

      // Para notas de saída e devolução de cliente
      if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'S') or
         (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString = 'R') then
         begin
            //## (inContribuinte, inIsento, inNaoContribuinte)
            if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 0) AND  // Fisica
               (Contribuinte=true) then
               begin
                 Dest.indIEDest := inContribuinte;
                 if trim(lDocIP) <> '' then
                    Dest.IE        := lDocIP
                 else
                    Dest.IE        := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString;
               end
            else
               if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 0) AND
                  (contribuinte=false) then
                  begin
                    Dest.indIEDest := inNaoContribuinte;
                  end
                else
                  if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 1) AND
                     (Contribuinte=true) then
                     begin
                       Dest.indIEDest := inContribuinte;
                       Dest.IE := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString;
                     end
                  else
                     if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_pessoa').AsInteger = 1) AND
                        (contribuinte=false) then
                         begin
                           Dest.indIEDest := inIsento;
                         end;
         end; }

       //Nota Tecnica 2015.003 v04
       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_contribuinte').AsInteger=0) then
           begin
             Dest.indIEDest := inContribuinte;
             //Dest.IE        := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString;
             // if colocado no dia 27/01/2016 , devido erro com nota fiscal de Produtor.
             if trim(lDocIP) <> '' then
                Dest.IE        := lDocIP
             else
                Dest.IE        := trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_DOC_IE').AsString);
           end;

       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_contribuinte').AsInteger=1) then
          begin
             Dest.indIEDest := inNaoContribuinte;
             Dest.IE := '';
          end;

       if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_contribuinte').AsInteger=2) then
          begin
            Dest.indIEDest := inIsento;
          end;


      iSeq := 0;
      dmGeral.BUS_CD_M_NFE_ITE_CXA.First;
      while not dmGeral.BUS_CD_M_NFE_ITE_CXA.eof do
        begin
          with Det.Add do
           begin
             inc(iSeq);
             Prod.nItem    := iSeq;
             Prod.cProd    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ITEM').AsString;
             Prod.cEAN     := '';
             Prod.xProd    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_desc_item').AsString;
             Prod.NCM      := Trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_id_ncm').AsString);
             if trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_cest_ncm').AsString) <> '' then
                Prod.CEST     := trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_cest_ncm').AsString);

             Prod.EXTIPI   := '';
             Prod.CFOP     := Trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_cfo').AsString);
             Prod.uCom     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_und_venda').AsString;
             Prod.qCom     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('Qtde').AsFloat;
             Prod.vUnCom   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_unitario').AsCurrency;
             Prod.vProd    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_mercadoria').AsCurrency;

             Prod.cEANTrib  := '';
             Prod.uTrib     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_und_venda').AsString;
             Prod.qTrib     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('Qtde').AsFloat;
             Prod.vUnTrib   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_unitario').AsCurrency;

             Prod.vFrete    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('fre_valor').AsCurrency;
             Prod.vSeg      := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_seguro').AsCurrency;
             Prod.vOutro    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_outras_desp').AsCurrency;
             Prod.vDesc     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_desconto').AsCurrency;

             infAdProd      := '';

              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
                 infAdProd := 'Cor: ' + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_nomecor').AsString+';';

              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
                 infAdProd := infAdProd + ' Tamanho: ' + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_nometam').AsString+';';

              //Inserido por Maxsuel Victor em 19/07/2016
              if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_rt_composicao').AsString<>'' then
                 infAdProd := infAdProd + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_rt_composicao').AsString+';';

              if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_rt_registro').AsString<>'' then
                 infAdProd := infAdProd + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_rt_registro').AsString+';';

              //Mariel Colocou este codigo em 08/01/2016
              if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_cod_onu').AsString<>'' then
                 infAdProd := infAdProd + ' Cod.Onu: ' + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_cod_onu').AsString+';';


             //Declaração de Importação. Pode ser adicionada várias através do comando Prod.DI.Add
             if copy(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_cfo').AsString,1,1) = '3' then
                begin
                 {  with Prod.DI.Add do
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
                     end; }

                IF dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_NUMERO').asString<>'' THEN
                     begin

                       with Prod.DI.Add do
                         begin
                           nDi         := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_NUMERO').asString;
                           dDi         := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_DATA').AsDateTime;
                           xLocDesemb  := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_LOCAL_DESEMB').AsString;
                           UFDesemb    := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_UF_DESEMB').AsString;
                           dDesemb     := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_DATA_DESEMB').AsDateTime;
                           cExportador := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_EXPORTADOR').AsString;

                           //## (tvMaritima, tvFluvial, tvLacustre, tvAerea, tvPostal,tvFerroviaria, tvRodoviaria, tvConduto, tvMeiosProprios,tvEntradaSaidaFicta, tvCourier, tvHandcarry)
                           tpViaTransp :=StrToTipoViaTransp(iRet,dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('di_tp_viatransp').AsString);
                           if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('di_tp_viatransp').AsString='1' then
                              vAFRMM := 0;

                           with adi.Add do
                             begin
                               nAdicao     := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_NUMERO_ADICAO').asInteger;
                               nSeqAdi     := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_SEQ_ADICAO').asInteger;
                               cFabricante := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_FABRICANTE').AsString;
                               vDescDI     := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_VLR_DESCONTO').AsCurrency;
                               nDraw       :=  dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('DI_DRAW').AsString;
                             end;
                         end;
                     end;
                end;






             with Imposto do
              begin
                // lei da transparencia nos impostos
                vTotTrib := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('tri_valor').AsCurrency;
                with ICMS do
                 begin
                   if Emit.CRT=crtRegimeNormal then
                     CST   :=StrToCSTICMS(iRet, dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_icm').AsString)
                   else
                     CSOSN :=StrToCSOSNIcms(iRet, dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_icm').AsString);

                     //Foi conversado com sangia paraque origem pega qualquer tipo de nota. Responsavel:Luan. Data:12/08/2016
                  // if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_pedido_venda').AsInteger >0 then
                     // begin
                         ICMS.orig := StrToOrig(iRet,trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('origem_mercadoria').AsString));
                     // end
                  // else
                     // begin
                       //  ICMS.orig    := oeNacional;
                     // end;

                   ICMS.modBC   := dbiValorOperacao;
                   ICMS.vBC     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_base').AsCurrency;
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

             //Nota Tecnica 2015.003 v04
             if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'R') and
                (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'D') then
                begin
                   if (ide.idDest = doInterestadual) and (Ide.indFinal = cfConsumidorFinal) and
                      (Dest.indIEDest = inNaoContribuinte) then
                       begin
                        with ICMSUFDest do
                          begin
                            if (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '101') and
                               (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '102') and
                               (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '103') and
                               (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '201') and
                               (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '202') and
                               (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '203') and
                               (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '500') and
                               (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '900') and
                               (dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_part_orig').asCurrency = 0) and
                               (dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_part_dest').asCurrency = 0) then
                                begin
                                 // Comentário inserido 06/07/16 por Maxsuel Victor, foi detectado isso depois que a Sefaz passou a validar
                                 // o grupo de partilha de icms
                                 { vBCUFDest      := 0;
                                  pICMSUFDest    := 0;
                                  pICMSInter     := 0;
                                  pICMSInterPart := 0;
                                  pFCPUFDest     := 0;
                                  vFCPUFDest     := 0;}

                                  vBCUFDest      := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_base').AsCurrency;

                                  pICMSUFDest    := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('part_per_aliq_dest').asCurrency;

                                  pICMSInter     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_aliquota').AsFloat;
                                  pICMSInterPart := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsCurrency;

                                  pFCPUFDest     := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('PER_FCP').asCurrency;
                                  vFCPUFDest     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_fcp').AsCurrency;

                                  vICMSUFDest    := 0;
                                  vICMSUFRemet   := 0;
                                end
                            else
                                begin
                                  if (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '60')  or
                                     (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '101') or
                                     (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '102') or
                                     (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '103') or
                                     (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '201') or
                                     (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '202') or
                                     (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '203') or
                                     (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '500') or
                                     (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) = '900') then
                                     begin
                                       vBCUFDest     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_base').AsCurrency;
                                       pICMSInter    := 12;
                                       if dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('int_origem').AsInteger in [1,2,3,8] then
                                          pICMSInter  := 4;
                                       if (trim(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ID_ST_ICM').AsString) <> '60') then
                                          vBCUFDest := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_liquido').asCurrency;
                                     end
                                  else
                                     begin
                                       vBCUFDest      := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_base').AsCurrency;
                                       pICMSInter     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('icm_n_aliquota').AsFloat;
                                     end;
                                  //vBCUFDest      :=
                                  pICMSUFDest    := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('part_per_aliq_dest').asCurrency;

                                  //pICMSInter     :=
                                  pICMSInterPart := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsCurrency;

                                  pFCPUFDest     := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('PER_FCP').asCurrency;
                                  vFCPUFDest     := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_fcp').AsCurrency;

                                  vICMSUFDest    := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_part_dest').asCurrency;
                                  vICMSUFRemet   := dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('vlr_part_orig').asCurrency;

                                end;

                           // Comentado em 23-03-2016 por Maxsuel Victor
                              // Devido a novo cálculo da PARTILHA passado por Mariel.

                           { if Pos(Emit.EnderEmit.UF, 'MG,RJ,SP,PR,RS,SC')<>0 then
                               pAliqSaida:=7
                            else
                               pAliqSaida:=12;

                            if (ICMS.orig=oeEstrangeiraImportacaoDireta) or
                               (ICMS.orig=oeEstrangeiraAdquiridaBrasil) or
                               (ICMS.orig=oeNacionalConteudoImportacaoSuperior40) or
                               (ICMS.orig=oeNacionalConteudoImportacaoSuperior70) Then
                                pAliqSaida:=4;

                            pAliqInterna := dmGeral.CAD_CD_C_PAR_CTR.fieldByName('NFE_PER_ICMS_SAIDA').asFloat;
                            pInterPart   := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsFloat;
                            vBaseInterna :=(dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('VLR_LIQUIDO').asCurrency*pAliqInterna)/100;
                            vBaseInter   :=(dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('VLR_LIQUIDO').asCurrency*pAliqSaida)/100;
                            xDifAliquota := vBaseInterna - vBaseInter;

                            vPartilhaDest   := strtoCurr(formatCurr('#######0.00',(xDifAliquota*dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_DEST').AsFloat)/100));
                            vPartilhaOrigem := strtoCurr(formatCurr('#######0.00',(xDifAliquota*dmGeral.CAD_CD_C_PAR_CTR.FieldByName('NFE_PER_PARTILHA_ORIG').AsFloat)/100));

                            vTotPartilhaDest   := vTotPartilhaDest + vPartilhaDest;
                            vTotPartilhaOrigem := vTotPartilhaOrigem + vPartilhaOrigem;

                            vBCUFDest     :=dmGeral.BUS_CD_M_NFE_ITE_CXA.fieldByName('VLR_LIQUIDO').asCurrency;
                            pFCPUFDest    :=0;
                            pICMSUFDest   :=pAliqInterna;
                            pICMSInter    :=pAliqSaida;
                            pICMSInterPart:=pInterPart;
                            vFCPUFDest    :=0;
                            vICMSUFDest   :=vPartilhaDest;
                            vICMSUFRemet  :=vPartilhaOrigem;  }
                          end;
                       end;
                end;


                with IPI do
                 begin
                   CST    := StrToCSTIPI(iRet,dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_ipi').AsString);
                   vBC    := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ipi_base').AsCurrency;
                   if pos(dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('id_st_ipi').text,'00-49-50-99') <> 0 then
                      begin
                        qUnid  := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('Qtde').AsFloat;
                        vUnid  := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('vlr_unitario').AsCurrency;
                      end;
                   pIPI   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ipi_aliquota').AsFloat;
                   vIPI   := dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('ipi_valor').AsFloat;
                 end;

                //Imposto de Importacao - Ver com sangia e criar no banco estes campos
                with II do
                 begin
                   vBc      := 0;
                   vDespAdu := 0;
                   vII      := 0;
                   vIOF     := 0;
                 end;

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

              end;
           end ;
           dmGeral.BUS_CD_M_NFE_ITE_CXA.Next;
        end;

      Total.ICMSTot.vBC     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('icm_n_base').AsCurrency;
      Total.ICMSTot.vICMS   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('icm_n_valor').AsCurrency;
      Total.ICMSTot.vBCST   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('icm_s_base').AsCurrency;
      Total.ICMSTot.vST     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('icm_s_valor').AsCurrency;

      //Nota Tecnica 2015.003 v04

      if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'R') and
         (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'D') then
         begin
            if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_orig').AsCurrency > 0 then
               begin
                 total.ICMSTot.vFCPUFDest   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_fcp').AsCurrency;
                 total.ICMSTot.vICMSUFDest  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_dest').AsCurrency;
                 total.ICMSTot.vICMSUFRemet := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_orig').AsCurrency;
               end;
         end;
      // Comentado por Maxsuel , em 23-03-2016
        // devido mudanças feitas por Mariel.
      {if vTotPartilhaDest>0 then
         begin
           total.ICMSTot.vFCPUFDest:=0;
           total.ICMSTot.vICMSUFDest:=vTotPartilhaDest;
           total.ICMSTot.vICMSUFRemet:=vTotPartilhaOrigem;
         end;}

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

      Transp.modFrete :=StrTomodFrete(iRet, inttoStr(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ind_frete').AsInteger));
      Transp.Transporta.CNPJCPF  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cnptra').AsString;
      Transp.Transporta.xNome    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_nometra').AsString;
      Transp.Transporta.IE       := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_instra').AsString;
      Transp.Transporta.xEnder   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_endtra').AsString;
      Transp.Transporta.xMun     := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cidtra').AsString;
      Transp.Transporta.UF       := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_esttra').AsString;

      Transp.veicTransp.placa := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_placa').AsString;
      Transp.veicTransp.UF    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_uf').AsString;
      Transp.veicTransp.RNTC  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_rntc').AsString;

      with Transp.Vol.Add do
       begin
         qVol  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_qtde_vol').AsInteger;
         esp   := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_especie').AsString;
         marca := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_marca').AsString;
         nVol  := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_num_vol').AsString;
         pesoL := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('peso_liquido').AsFloat;
         pesoB := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('peso_bruto').AsFloat;
       end;

      if Ide.indPag <> ipOutras Then
         begin
           dmGeral.BUS_CD_M_NFE_TIT_CXA.First;
           while not dmGeral.BUS_CD_M_NFE_TIT_CXA.Eof do
             begin
               with Cobr.Dup.Add do
                begin
                  nDup  := dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('NUM_PARCELA').AsString;
                  dVenc := dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('DTA_VENCIMENTO').AsDateTime;
                  vDup  := dmGeral.BUS_CD_M_NFE_TIT_CXA.FieldByName('vlr_titulo').AsCurrency;
                end;
               dmGeral.BUS_CD_M_NFE_TIT_CXA.Next;
             end;
         end;

      if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tri_valor').AsCurrency > 0 then
         begin
           PercTributo := roundTo( (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tri_valor').AsCurrency*100)/dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_liquido').AsCurrency,-2);
           InfAdic.infCpl     :=  'Valor aproximado dos tributos R$ ' +
                                   FormatCurr('###,###,###,###,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tri_valor').AsCurrency) +
                                   ' ('+FormatCurr('###,###,###,###,##0.00',PercTributo) + '%) ' +
                                   ' Fonte: IBPT ';
         end;


      MensagemCpl :=  InfAdic.infCpl;


      if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'R') and
         (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('TIPO_NF').AsString <> 'D') then
         begin
            if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_dest').AsCurrency + dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_orig').AsCurrency) > 0 then
               begin
                 if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_fcp').AsCurrency > 0 then
                    begin
                      MensagemCpl :=
                                   'Partilha de ICMS de 40% para a UF de destino no valor de R$ ' +
                                    FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_dest').AsCurrency)+
                                    ' + FCP no valor de R$ ' +
                                    FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_fcp').AsCurrency)+
                                    '  e  60% para a UF de origem no valor R$ ' +
                                    FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_orig').AsCurrency)+' , conforme Emenda Const. 87/2015 Art.99 .'
                                    + #13 + MensagemCpl;
                    end
                 else
                    begin
                      MensagemCpl :=
                        'Partilha de ICMS de 40% para a UF de destino no valor de R$ ' +
                        FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_dest').AsCurrency)+
                        '  e  60% para a UF de origem no valor R$ ' +
                        FormatCurr('#####,##0.00',dmGeral.BUS_CD_M_NFE_CXA.FieldByName('vlr_part_orig').AsCurrency)+' , conforme Emenda Const. 87/2015 Art.99 .'
                        + #13 + MensagemCpl;
                    end;
               end;
         end;

       if trim(MensagemCpl) <> '' then
          InfAdic.infCpl := MensagemCpl;

       InfAdic.infAdFisco := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_obs').AsString;

      // Comentado por Maxsuel , em 23-03-2016
      // devido mudanças feitas por Mariel.
       {with InfAdic.obsCont.Add do
         begin
           xCampo := 'ObsCont';
           xTexto := '. ';

           //Nota Tecnica 2015.003 v04
           if vTotPartilhaDest>0 then
              begin
                xCampo := 'Partilha :';
                xTexto := 'vlr do icms Inter para a UF de destino: '+FormatCurr('#####,##0.00',vTotPartilhaDest);
              end;
         end; }



     {
            with InfAdic.obsFisco.Add do
             begin
               xCampo := 'ObsFisco';
               xTexto := 'Texto';
             end;
      }

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


     { IF not dm.Cds_NotasCapa.FieldByname('EXP_LOCAL_EMBARQUE').IsNull then
       begin
         exporta.UFembarq     := dm.Cds_NotasCapa.FieldByname('EXP_UF_EMBARQUE').asString;
         exporta.xLocEmbarq   := dm.Cds_NotasCapa.FieldByname('EXP_LOCAL_EMBARQUE').asString;
         exporta.UFSaidaPais  := dm.Cds_NotasCapa.FieldByname('EXP_UF_EMBARQUE').asString;
         exporta.xLocDespacho := dm.Cds_NotasCapa.FieldByname('EXP_LOCAL_EMBARQUE').asString;
         exporta.xLocExporta  := dm.Cds_NotasCapa.FieldByname('EXP_LOCAL_EMBARQUE').asString;
       end; }
   end;

end;




procedure TFAT_FM_M_EXP.ImprimirTermo1Click(Sender: TObject);
var
  id_fiscal:String;
begin
 //AtuGridNota;

   id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsString;
   AtualizarTela;
  if id_fiscal <> '' then
     dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);


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

   if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_COD_SIT').AsString = '02' then
      begin
        ShowMessage('Nota fiscal já foi cancelada.');
        exit;
      end;

  dmgeral.BUS_CD_M_TER_NFE.Close;
  dmGeral.BUS_CD_M_TER_NFE.Data :=
      dmGeral.BUS_CD_M_TER_NFE.DataRequest(VarArrayOf([dmgeral.BUS_CD_M_NFE_CXAid_fiscal.AsInteger]));

  if not  dmgeral.BUS_CD_M_TER_NFE.IsEmpty then
    begin
     FAT_CD_M_TER_NFE.PrepareReport();
     FAT_CD_M_TER_NFE.ShowReport();
    end
  else
    ShowMessage('Não há dados para poder imprimir o Termo!');
end;

end.
