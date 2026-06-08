unit CAD_UN_C_FOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  JvToolEdit, JvDBControls, JvExMask, Vcl.Mask, Vcl.ComCtrls, vcl.wwdblook,
  JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb, frxExportXLS,
  frxClass, frxExportPDF, frxDBSet, Datasnap.DBClient,IdURI, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, Winapi.ActiveX, System.Win.ComObj;

type
  TCAD_FM_C_FOR = class(TPAD_FM_X_PAD)
    pg_Fornecedor: TPageControl;
    ts_CriterioSQG: TTabSheet;
    tabRepresentantes: TTabSheet;
    CAD_DS_C_FOR_REP: TwwDataSource;
    lblCodigo: TLabel;
    lblRazaoSocial: TLabel;
    lblCEP: TLabel;
    lblEndereco: TLabel;
    lblNumero: TLabel;
    lblBairro: TLabel;
    lblCNPJ: TLabel;
    lblInscricaoEstadual: TLabel;
    lblInscricaoMunicipal: TLabel;
    lblTelefoneFixo: TLabel;
    lblEmail: TLabel;
    txtCodigo: TDBEdit;
    txtRazaoSocial: TDBEdit;
    txtCEP: TDBEdit;
    txtEndereco: TDBEdit;
    txtNumero: TDBEdit;
    chkAtivo: TDBCheckBox;
    txtBairro: TDBEdit;
    txtCNPJ: TDBEdit;
    txtInscricaoEstadual: TDBEdit;
    txtInscricaoMunicipal: TDBEdit;
    txtTelefoneFixo: TDBEdit;
    txtEmail: TDBEdit;
    lblCidade: TLabel;
    txtEstadoDescricao: TDBText;
    txtCidadeDescricao: TDBText;
    txtCidade: TJvDBComboEdit;
    dpkTransportadora: TDBCheckBox;
    lblFundacao: TLabel;
    dpkFundacao: TJvDBDateEdit;
    txtComp: TDBEdit;
    Label2: TLabel;
    lblCaixaPostal: TLabel;
    txtCaixaPostal: TDBEdit;
    lblTelMovel: TLabel;
    txtTelMovel: TDBEdit;
    lblFax: TLabel;
    txtFax: TDBEdit;
    lblFantasia: TLabel;
    txtFantasia: TDBEdit;
    lblLimLiberado: TLabel;
    txtLimLiberado: TDBEdit;
    txtTipoForn: TwwDBLookupCombo;
    lblTipoFornecedor: TLabel;
    TabSheet1: TTabSheet;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    lblRegimeTributario: TLabel;
    cbbRegimeTributario: TwwDBLookupCombo;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    lblNome: TLabel;
    lblEnderecoRepresentante: TLabel;
    lblCPF: TLabel;
    lblNumeroRepresentante: TLabel;
    lblCodigoIBGE: TLabel;
    lblCEPRepresentante: TLabel;
    lblFoneResidencia: TLabel;
    lblCelular: TLabel;
    lblEmailRepresentante: TLabel;
    lblObservacao: TLabel;
    txtCodIbgeDescricao: TDBText;
    dgRepresentante: TwwDBGrid;
    btnAddRepresentante: TBitBtn;
    txtNomeRepresentante: TDBEdit;
    txtEnderecoRepresentante: TDBEdit;
    txtCPFRepresentante: TDBEdit;
    txtNumeroRepresentante: TDBEdit;
    txtCEPRepresentante: TDBEdit;
    txtFoneResidencial: TDBEdit;
    txtCelular: TDBEdit;
    txtEmailRepresentante: TDBEdit;
    txtObservacao: TDBEdit;
    txtCidadeRep: TJvDBComboEdit;
    dgExcRepresentante: TBitBtn;
    scbCriteriosQualificacaoSGQ: TScrollBox;
    gbCertificado: TGroupBox;
    lblNormaAplicavel: TLabel;
    lblDataValidade: TLabel;
    txtNormaAplicavel: TDBEdit;
    dpkDataValidade: TJvDBDateEdit;
    gbQuestionario: TGroupBox;
    lblDataRecebimento: TLabel;
    lblProcesso: TLabel;
    rgSituacao: TDBRadioGroup;
    txtProcesso: TDBMemo;
    dpkDataRecebimento: TJvDBDateEdit;
    gbOutra: TGroupBox;
    lblDataRecebimentoOutra: TLabel;
    lblNumeroNFE: TLabel;
    rgMetodo: TDBRadioGroup;
    txtNumeroNFE: TDBEdit;
    dpkDataRecebimentoOutra: TJvDBDateEdit;
    ts_Criterio: TTabSheet;
    scbCriteriosQualificacao: TScrollBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    rgCertificacaoQualidade: TDBRadioGroup;
    rgConformidadePSQ: TDBRadioGroup;
    rgIdoneidade: TDBRadioGroup;
    rgCondicaoGerais: TDBRadioGroup;
    dtaAvaliação: TJvDBDateEdit;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    Label10: TLabel;
    DBMemo2: TDBMemo;
    Label11: TLabel;
    Label13: TLabel;
    txtTipoContrib: TwwDBComboBox;
    txtDescPais: TDBEdit;
    txtCodPais: TJvDBComboEdit;
    Label14: TLabel;
    Label15: TLabel;
    txtDias: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    btnImprimirFicha: TBitBtn;
    CAD_DB_C_FOR: TfrxDBDataset;
    CAD_PD_C_FOR: TfrxPDFExport;
    CAD_XL_C_FOR: TfrxXLSExport;
    CAD_FR_C_FOR: TfrxReport;
    DBEdit5: TDBEdit;
    Label16: TLabel;
    txtPlanoContas: TJvDBComboEdit;
    Label50: TLabel;
    txtPctDescPadrao: TDBText;
    JvDBDateEdit1: TJvDBDateEdit;
    Label17: TLabel;
    tbQuestionario: TTabSheet;
    CAD_DS_C_FOR_QUE: TDataSource;
    ScrollBox1: TScrollBox;
    Label18: TLabel;
    txtAnoQuestionario: TEdit;
    Button1: TButton;
    Label19: TLabel;
    DBNavigator1: TDBNavigator;
    Label20: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    Label21: TLabel;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    Label23: TLabel;
    wwDBEdit7: TwwDBEdit;
    Label27: TLabel;
    wwDBEdit8: TwwDBEdit;
    Label28: TLabel;
    wwDBEdit9: TwwDBEdit;
    Label31: TLabel;
    wwDBEdit11: TwwDBEdit;
    Label32: TLabel;
    wwDBEdit12: TwwDBEdit;
    Label36: TLabel;
    wwDBEdit13: TwwDBEdit;
    Label37: TLabel;
    wwDBEdit14: TwwDBEdit;
    Label30: TLabel;
    wwDBEdit10: TwwDBEdit;
    Label33: TLabel;
    txtEmailQuestionario: TDBEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAddRepresentanteClick(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure txtCidadeButtonClick(Sender: TObject);
    procedure txtCidadeExit(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtTipoFornEnter(Sender: TObject);
    procedure dsoStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dgExcRepresentanteClick(Sender: TObject);
    procedure txtCidadeRepButtonClick(Sender: TObject);
    procedure txtCidadeRepExit(Sender: TObject);
    procedure dgRepresentanteDblClick(Sender: TObject);
    procedure cbbRegimeTributarioEnter(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pg_FornecedorChange(Sender: TObject);
    procedure rgConformidadePSQExit(Sender: TObject);
    procedure rgIdoneidadeExit(Sender: TObject);
    procedure rgCondicaoGeraisExit(Sender: TObject);
    procedure txtCodPaisButtonClick(Sender: TObject);
    procedure txtCodPaisExit(Sender: TObject);
    procedure txtCEPKeyPress(Sender: TObject; var Key: Char);
    procedure txtCNPJExit(Sender: TObject);
    procedure btnImprimirFichaClick(Sender: TObject);
    procedure txtPlanoContasButtonClick(Sender: TObject);
    procedure txtPlanoContasExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AvaliacaoFor;
    function TratarTextoParaURL(const ATexto: string): string;
    function SomenteNumeros(const Texto: string): string;
    procedure BuscarDadosPlanilha(pAno: Integer; pCNPJ: string);
  public
    { Public declarations }
  end;

var
  CAD_FM_C_FOR: TCAD_FM_C_FOR;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_CID, uProxy, PSQ_UN_X_PAI, enConstantes, PSQ_UN_X_PCT;

procedure TCAD_FM_C_FOR.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FOR);
  dmgeral.CAD_CD_C_FORaval_ctc_perg_02.AsInteger := 2;
  dmgeral.CAD_CD_C_FORaval_ctc_perg_03.AsInteger := 2;
  dmgeral.CAD_CD_C_FORaval_ctc_perg_04.AsInteger := 2;

  btnImprimirFicha.Enabled := false;

  dpkTransportadora.Enabled := true;
  txtCodPais.Enabled := false;
  txtTipoForn.SetFocus;
end;

procedure TCAD_FM_C_FOR.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FOR) then
      begin
       inherited;
        dpkTransportadora.Enabled := false;
         txtCodPais.Enabled := false;
        if (trim(dmGeral.CAD_CD_C_FOR.FieldByName('ID_CIDADE').AsString)='9999999') then
         begin
            txtCodPais.Enabled := true;
         end;
        btnImprimirFicha.Enabled := false;
        txtTipoForn.SetFocus;
      end;
end;

procedure TCAD_FM_C_FOR.acCancelarExecute(Sender: TObject);
begin
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FOR) then
      begin
        btnImprimirFicha.Enabled := true;
        inherited;
        dbGrid.SetFocus;
      end
   else
      begin
        txtCnpj.SetFocus;
      end;
end;

procedure TCAD_FM_C_FOR.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FOR);
end;

procedure TCAD_FM_C_FOR.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_FOR);
  btnImprimirFicha.Enabled := true;
  inherited;

  dmGeral.CAD_CD_C_FOR.Close;
  dmGeral.CAD_CD_C_FOR.Data :=
  dmGeral.CAD_CD_C_FOR.DataRequest(
          VarArrayOf([0, codigo]));
  if (dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean = true) or (dmGeral.CAD_CD_C_PAR_MODctc.AsBoolean = true) then
    begin
      pg_Fornecedor.ActivePage:=tabRepresentantes;
    end;
end;

procedure TCAD_FM_C_FOR.AvaliacaoFor;
begin
 if (dmGeral.CAD_CD_C_PAR_MODctc.AsBoolean = true) then
    begin
      if (dmgeral.CAD_CD_C_FORaval_ctc_perg_02.AsInteger = 0) or (dmgeral.CAD_CD_C_FORaval_ctc_perg_03.AsInteger = 0) or (dmgeral.CAD_CD_C_FORaval_ctc_perg_04.AsInteger = 0) then
        begin
          dmgeral.CAD_CD_C_FORmetodo2_situacao.AsString := '0';
          chkAtivo.Checked:= False;
          dmGeral.CAD_CD_C_FORmetodo2_data_recebimento.AsDateTime := xDataSis;
        end
      else
        begin
          dmgeral.CAD_CD_C_FORmetodo2_situacao.AsString := '1';
          chkAtivo.Checked:= True;
          dmGeral.CAD_CD_C_FORmetodo2_data_recebimento.AsDateTime := xDataSis;
        end;
    end;
end;

procedure TCAD_FM_C_FOR.dgExcRepresentanteClick(Sender: TObject);
begin
  inherited;
  try
     dgExcRepresentante.Enabled := False;
     if dmGeral.CAD_CD_C_FOR_REP.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_FOR_REP.Delete;
     dmGeral.CAD_CD_C_FOR_REP.Edit;
  finally
    dgExcRepresentante.Enabled := True;
  end;

end;

procedure TCAD_FM_C_FOR.btnAddRepresentanteClick(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_FOR_REP.Insert;
  txtNomeRepresentante.Enabled := true;
  txtCPFRepresentante.SetFocus;
end;

procedure TCAD_FM_C_FOR.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if trim(txtPesquisa.Text) = '' then
       begin
         ShowMessage('É preciso que digite pelo menos 1 caractere para poder realizar a pesquisa.');
         exit;
       end;

    if txtPesquisa.Text<>'' then
       begin
         dmGeral.CAD_CD_C_FOR.Close;
         dmGeral.CAD_CD_C_FOR.Data :=
         dmGeral.CAD_CD_C_FOR.DataRequest(
                 VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
       end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

function TCAD_FM_C_FOR.TratarTextoParaURL(const ATexto: string): string;
var
  TextoLimpo: string;
begin
  // 1. Remove espaços em branco nas pontas
  TextoLimpo := Trim(ATexto);

  // 2. Remove quebras de linha usando a função compatível com XE7
  TextoLimpo := StringReplace(TextoLimpo, #13, '', [rfReplaceAll]);
  TextoLimpo := StringReplace(TextoLimpo, #10, '', [rfReplaceAll]);

  // SOLUÇÃO DO ERRO: Usar ParamsEncode em vez de URLEncode
  // Isso diz ao Delphi que o texto é apenas um dado, e não um endereço web completo
  Result := TIdURI.ParamsEncode(TextoLimpo);
end;


procedure TCAD_FM_C_FOR.btnImprimirFichaClick(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
  ValorDigitado: string;
  assunto, corpo, email: String;
  resposta: integer;
begin
  inherited;


  if dmGeral.CAD_CD_C_FOR.IsEmpty then
     begin
       Showmessage('Nenhum fornecedor foi selecionado!');
       exit;
     end;

  if trim(dmGeral.CAD_CD_C_FOR.FieldByName('email_questionario_forn').Text) = '' then
     begin
       Showmessage('O campo e-mail está vazio!');
       exit;
     end;

  if not IsEmailValido(dmGeral.CAD_CD_C_FOR.FieldByName('email_questionario_forn').Text) then
     begin
       ShowMessage('E-mail do fornecedor inválido!');
       exit;
     end;

  email := dmGeral.CAD_CD_C_FOR.FieldByName('email_questionario_forn').Text;

  Resposta := MessageDlg('Deseja realmente enviar o questionário de avaliação deste fornecedor para o e-mail: ' +
                         dmGeral.CAD_CD_C_FOR.FieldByName('email_questionario_forn').Text + '?',
                         mtConfirmation,
                         [mbYes, mbNo],
                         0,
                         mbYes); // <-- Aqui você define o foco padrão no SIM

  // Trata a resposta do usuário
  if Resposta = mrNo then
     begin
       abort;
     end;

  if not dmGeral.CAD_CD_C_FOR.IsEmpty then
     begin
        ValorDigitado :=
        'https://docs.google.com/forms/d/e/1FAIpQLSdRqDWBLzLOKSoeqyOt29bd4M51MCDMMnLzpUW8gUylHjauKw/viewform?usp=pp_url'+
        '&entry.84681567='+TratarTextoParaURL(dmGeral.CAD_CD_C_FOR.FieldByName('id_fornecedor').Text)+
        '&entry.1086280916='+TratarTextoParaURL(dmGeral.CAD_CD_C_FOR.FieldByName('doc_cnpj').Text)+
        '&entry.1208293552='+TratarTextoParaURL(dmGeral.CAD_CD_C_FOR.FieldByName('descricao').Text);


        {'https://docs.google.com/forms/d/e/1FAIpQLSdRqDWBLzLOKSoeqyOt29bd4M51MCDMMnLzpUW8gUylHjauKw/viewform?usp=pp_url'+
        '&entry.145198171='+TratarTextoParaURL(dmGeral.CAD_CD_C_FOR.FieldByName('id_fornecedor').Text)+
        '&entry.1341635190='+TratarTextoParaURL(dmGeral.CAD_CD_C_FOR.FieldByName('doc_cnpj').Text)+
        '&entry.613016077='+TratarTextoParaURL(dmGeral.CAD_CD_C_FOR.FieldByName('descricao').Text);}

        {if InputQuery('Link gerado', 'Copie este link para enviar por e-mail:', ValorDigitado) then
           begin
             ShowMessage('link' + ValorDigitado);
           end
        else
           begin
             //ShowMessage('Operação cancelada.');
           end;}
     end;

     assunto:=  'Questionário de avaliação';
     corpo  :=
                'Prezado Parceiro,' +#13+#13+
                'Com o objetivo de mantermos a excelência em nossos processos e fortalecer nossa parceria comercial,'+
                'solicitamos a sua colaboração no preenchimento do nosso Questionário de Autoavaliação de Fornecedor.'+#13+#13+

                'Para sua comodidade, os dados de identificação da sua empresa já foram pré-preenchidos pelo nosso sistema.'+
                ' Pedimos a gentileza de responder às demais questões acessando o link abaixo: ' + #13 +
                ValorDigitado + #13 +#13 +
                'Contamos com sua resposta para dar andamento ao nosso processo interno de qualificação.'+ #13 +#13 +
                'Atenciosamente,'+ #13 +#13 +
                'Maxsuel Victor'+#13 +
                'Coordenador da Qualidade' +#13 +
                'Colchões Globo';
     dmGeral.EnviarEmail(Assunto, corpo, email,  false);
     assunto := '';
     corpo := '';

     ShowMessage('E-mail enviado!');

  // Comentado por Maxsuel Victor, em 02/06/2026

  {if not dmGeral.CAD_CD_C_FOR.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(CAD_FR_C_FOR.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        CAD_FR_C_FOR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        CAD_FR_C_FOR.PrepareReport();
        CAD_FR_C_FOR.ShowReport();
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;}
end;

procedure TCAD_FM_C_FOR.BuscarDadosPlanilha(pAno: Integer; pCNPJ: string);
var
  URL: string;
  WinHTTP: OleVariant;
  ConteudoCSV: string;
  Linhas, Cabecalhos, Colunas: TStringList;
  i, j: Integer;
  ExibirRegistro: Boolean;
  CnpjPlanilha, DataHoraPlanilha, AnoPlanilha: string;

  preenchido_em, responsavel, cargo_responsavel: string;
  RespPerg01,RespPerg02,RespPerg03,RespPerg04,RespPerg05,
  RespPerg06,RespPerg07,RespPerg08,RespPerg09, RespPerg10: string;
  resultado_quest: String;
  id_for_que: integer;
begin

   {
    FÓRMULA PARA O CAMPO RESULTADOS NA PLANILHA DO GOOGLE FORMULÁRIOS:
    =ARRAYFORMULA(SE(D2:D=""; ""; SE((D2:D="Sim") + (E2:E="Sim") + (F2:F="Sim") + (G2:G="Sim") +
                  (H2:H="Sim") + (I2:I="Sim") + (J2:J="Sim") + (K2:K="Sim") + (L2:L="Sim") +
                   (M2:M="Sim") > 7; "Qualificado"; SE((D2:D="Sim") + (E2:E="Sim") +
                   (F2:F="Sim") + (G2:G="Sim") + (H2:H="Sim") + (I2:I="Sim") + (J2:J="Sim") +
                    (K2:K="Sim") + (L2:L="Sim") +
                     (M2:M="Sim") >= 4; "Aprovado (Requer Plano de Ação)"; "Desqualificado"))))
   }

  // Validação inicial de segurança: o ano sempre deve ser informado
  if pAno <= 0 then
  begin
    ShowMessage('O ano de busca é obrigatório!');
    Exit;
  end;

  // URL obtida ao "Publicar na Web" como CSV no Google Planilhas
  //URL := Edit1.text;
  URL := 'https://docs.google.com/spreadsheets/d/e/2PACX-1vSkeKtCVrQXS_6J9KDsioBz_xfit0zVOPF1zXePAgWF3isG8H7U6tZRkA5V5iF3pTY1m4YaxZNi_oOl/pub?output=csv';


  Linhas := TStringList.Create;
  Cabecalhos := TStringList.Create;
  Colunas := TStringList.Create;

  //Memo1.Lines.Clear;
  //Memo1.Lines.Add(Format('Buscando dados da planilha para o ano: %d...', [pAno]));
  //Memo1.Lines.Add('=========================================');

  try
    // Conexão nativa via Windows (compatível com XE7 e sem necessidade de OpenSSL)
    WinHTTP := CreateOleObject('MSXML2.ServerXMLHTTP.6.0');
    try
      WinHTTP.open('GET', URL, False);
      WinHTTP.send;
      ConteudoCSV := WinHTTP.responseText;
    except
      on E: Exception do
      begin
        Showmessage('Erro ao conectar à planilha: ' + E.Message);
        Exit;
      end;
    end;

    Linhas.Text := ConteudoCSV;

    if Linhas.Count > 0 then
    begin
      Cabecalhos.Delimiter := ',';
      Cabecalhos.StrictDelimiter := True;
      Cabecalhos.DelimitedText := Linhas[0];
    end;

    responsavel := '';

    // Varre as respostas (da linha 1 em diante)
    for i := 1 to Linhas.Count - 1 do
    begin
      if Linhas[i] <> '' then
      begin
        Colunas.Clear;
        Colunas.Delimiter := ',';
        Colunas.StrictDelimiter := True;
        Colunas.DelimitedText := Linhas[i];

        if (Colunas.Count > 0) and (Colunas.Count <= Cabecalhos.Count) then
        begin
          // Inicia verdadeiro e passa pelos filtros obrigatórios
          ExibirRegistro := True;

          // 1. FILTRO OBRIGATÓRIO: Validação do Ano (Baseado no Carimbo de Data/Hora - Índice 0)
          if (Colunas.Count > 0) then
          begin
            DataHoraPlanilha := Colunas[0]; // Ex: "03/06/2026 10:57:17"
            if Length(DataHoraPlanilha) >= 10 then
            begin
              // Extrai os 4 caracteres do ano (posições 7, 8, 9 e 10 da data no formato DD/MM/AAAA)
              AnoPlanilha := Copy(DataHoraPlanilha, 7, 4);
              if AnoPlanilha <> IntToStr(pAno) then
                ExibirRegistro := False;
            end
            else
              ExibirRegistro := False; // Descarta se o formato da data estiver corrompido
          end
          else
            ExibirRegistro := False;

          // 2. FILTRO OPCIONAL: Validação do CNPJ (Índice 1 no CSV) - Só filtra se for preenchido
          if ExibirRegistro and (pCNPJ <> '') and (Colunas.Count > 1) then
          begin
            CnpjPlanilha := SomenteNumeros(Colunas[17]); // coluna CNPJ na planilha
            if CnpjPlanilha <> pCNPJ then
              ExibirRegistro := False;
          end;

          // Se passou pelas validações, joga no Memo
          if ExibirRegistro then
          begin
            //Memo1.Lines.Add(Format('--- REGISTRO LOCALIZADO (Linha %d) ---', [i]));

            // Dados de cabeçalho destacados
            if Colunas.Count > 15 then
            begin
              preenchido_em := Colunas[13]; // Preenchido em:
              responsavel   := Colunas[14]; // Responsável pelas informações:
              cargo_responsavel := Colunas[15]; // Cargo do responsável:
            end;

            //Memo1.Lines.Add('-----------------------------------------');

            // Varre o restante das colunas mostrando "Nome da Coluna: Resposta"
            for j := 0 to Colunas.Count - 1 do
                begin
                  if not (j in [13, 14, 15]) then
                    begin
                      //Memo1.Lines.Add(Cabecalhos[j] + ': ' + Colunas[j]);
                      if j = 3 then
                         RespPerg01 := Colunas[j];
                      if j = 4 then
                         RespPerg02 := Colunas[j];
                      if j = 5 then
                         RespPerg03 := Colunas[j];
                      if j = 6 then
                         RespPerg04 := Colunas[j];
                      if j = 7 then
                         RespPerg05 := Colunas[j];
                      if j = 8 then
                         RespPerg06 := Colunas[j];
                      if j = 9 then
                         RespPerg07 := Colunas[j];
                      if j = 10 then
                         RespPerg08 := Colunas[j];
                      if j = 11 then
                         RespPerg09 := Colunas[j];
                      if j = 12 then
                         RespPerg10 := Colunas[j];

                      if j = 19 then
                         resultado_quest := Colunas[j];
                    end;
                end;
            //Memo1.Lines.Add('=========================================');
            //Memo1.Lines.Add('');
          end;
        end;
      end;
    end;

  if trim(responsavel) = '' then
     begin
       Showmessage('Nenhum questionário foi encontrado para este fornecedor neste ano.');
       exit;
     end
  else
     begin
       Showmessage('Busca finalizada.' + #13 +
                   'Os dados serão gravados!' );

       dmGeral.CAD_CD_C_FOR_QUE.Cancel;
       if not dmGeral.CAD_CD_C_FOR_QUE.locate('ano',txtAnoQuestionario.text,[]) then
          begin
            id_for_que := dmGeral.CAD_CD_C_FOR_QUE.RecordCount + 1;

            dmGeral.CAD_CD_C_FOR_QUE.Insert;

            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('id_for_que').AsInteger := id_for_que;

            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('carimbo_data_hora').AsString := DataHoraPlanilha;
            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('preenchido_em').AsString := preenchido_em;
            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('responsavel').AsString := responsavel;
            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('cargo_responsavel').AsString := cargo_responsavel;
            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('pergunta_01').AsString := RespPerg01;
            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('pergunta_02').AsString := RespPerg02;
            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('pergunta_03').AsString := RespPerg03;
            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('pergunta_04').AsString := RespPerg04;
            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('pergunta_05').AsString := RespPerg05;
            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('pergunta_06').AsString := RespPerg06;
            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('pergunta_07').AsString := RespPerg07;
            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('pergunta_08').AsString := RespPerg08;
            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('pergunta_09').AsString := RespPerg09;
            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('pergunta_10').AsString := RespPerg10;
            dmGeral.CAD_CD_C_FOR_QUE.FieldByName('resultado').AsString := Resultado_quest;

            dmGeral.CAD_CD_C_FOR_QUE.Post;

            Showmessage('Os dados do questionário foram gravados com sucesso!' );
          end;
     end;
  finally
    Linhas.Free;
    Cabecalhos.Free;
    Colunas.Free;
    WinHTTP := Unassigned;
  end;
end;


procedure TCAD_FM_C_FOR.Button1Click(Sender: TObject);
begin
  inherited;

  if trim(txtAnoQuestionario.text) = '' then
     begin
       Showmessage('O ano deve ser preenchido!');
       exit;
     end;

  BuscarDadosPlanilha( strtoint(txtAnoQuestionario.text),dmGeral.CAD_CD_C_FOR.FieldByName('doc_cnpj').Text);
end;

procedure TCAD_FM_C_FOR.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCAD_FM_C_FOR.cbbRegimeTributarioEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_RET;
  cbbRegimeTributario.DropDown;
end;

procedure TCAD_FM_C_FOR.dgRepresentanteDblClick(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_FOR_REP.Edit;
  txtNomeRepresentante.Enabled := true;
  txtCPFRepresentante.SetFocus;

end;

procedure TCAD_FM_C_FOR.dsoStateChange(Sender: TObject);
begin
  inherited;
  if (dso.DataSet.State in [dsInsert]) Then
     begin
       txtCNPJ.Enabled:=true;
     end
  else if (dso.DataSet.State in [dsEdit]) Then
     begin
       txtCNPJ.Enabled:=false;
     end

end;

procedure TCAD_FM_C_FOR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_FOR.Close;
  FreeAndNil(CAD_FM_C_FOR);
end;

procedure TCAD_FM_C_FOR.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_FOR.Close;
  dmGeral.CAD_CD_C_FOR.Data := dmGeral.CAD_CD_C_FOR.DataRequest(VarArrayOf([0, '']));

  dmGeral.BUS_PR_X_FOR_TFO;
  dmGeral.BUS_PR_X_RET;
end;

procedure TCAD_FM_C_FOR.FormShow(Sender: TObject);
begin
  inherited;
//  pg_Fornecedor.ActivePage:=tabRepresentantes;
  if (dmGeral.CAD_CD_C_PAR_MODctc.AsBoolean = true) then
    ts_Criterio.TabVisible := true
  else
    ts_Criterio.TabVisible := false;

   if (dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean = true) then
    ts_CriterioSQG.TabVisible := true
  else
    ts_CriterioSQG.TabVisible := false;

   if (dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean = true) or (dmGeral.CAD_CD_C_PAR_MODctc.AsBoolean = true) then
    tabRepresentantes.TabVisible := true
   else
    tabRepresentantes.TabVisible := false;

  if dmGeral.CAD_CD_C_PAR_MODrev.AsBoolean or dmGeral.CAD_CD_C_PAR_MODome.AsBoolean then
    pnlBotoes.Height := 54
  else
    pnlBotoes.Height := 100;

  pg_Fornecedor.ActivePage := ts_CriterioSQG;
end;

procedure TCAD_FM_C_FOR.pg_FornecedorChange(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_PAR_CTRativa_producao.AsBoolean = true then
    begin
      if (trim(dmGeral.CAD_CD_C_FOR.FieldByName('METODO1_NORMA_APLICAVEL').Text)   = '') and
               (trim(dmGeral.CAD_CD_C_FOR.FieldByName('METODO2_PROC_QUALIFICACAO').Text) = '') and
               (trim(dmGeral.CAD_CD_C_FOR.FieldByName('METODO3_METODO').text) = '') and
               (pg_Fornecedor.ActivePage = tabRepresentantes)then
        begin
          ShowMessage('Para adicionar "Representantes" ao menos um "Critério de Qualificação" deve ser prenchido.');
          pg_Fornecedor.ActivePage:=ts_Criterio;

       end;
    end;
end;

procedure TCAD_FM_C_FOR.rgCondicaoGeraisExit(Sender: TObject);
begin
  inherited;
  avaliacaofor;
end;

procedure TCAD_FM_C_FOR.rgConformidadePSQExit(Sender: TObject);
begin
  inherited;
  avaliacaofor;
end;

procedure TCAD_FM_C_FOR.rgIdoneidadeExit(Sender: TObject);
begin
  inherited;
  avaliacaofor;
end;

function TCAD_FM_C_FOR.SomenteNumeros(const Texto: string): string;
var
  i: Integer;
begin
  Result := '';
  for i := 1 to Length(Texto) do
  begin
    if Texto[i] in ['0'..'9'] then
      Result := Result + Texto[i];
  end;
end;

procedure TCAD_FM_C_FOR.txtCEPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
  key:=#0;
end;

procedure TCAD_FM_C_FOR.txtCidadeButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
   PSQ_FM_X_CID.ShowModal;
      if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
         begin
          { dmGeral.CAD_CD_C_FOR.FieldByName('INT_NOMECID').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString;}

           dmGeral.CAD_CD_C_FOR.FieldByName('ID_CIDADE').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString;
         end;
   PSQ_FM_X_CID.Free;
end;

procedure TCAD_FM_C_FOR.txtCidadeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


   txtCodPais.Enabled := false;

  dmGeral.BUS_CD_C_CID.Close;
  dmGeral.BUS_CD_C_CID.Data :=
  dmGeral.BUS_CD_C_CID.DataRequest(VarArrayOf([0, txtCidade.Text]));

  if not dmGeral.BUS_CD_C_CID.IsEmpty then
    begin
      dmGeral.CAD_CD_C_FOR.FieldByName('INT_NOMECID').AsString :=
        dmGeral.BUS_CD_C_CID.FieldByName('NOME').AsString;
      dmGeral.CAD_CD_C_FOR.FieldByName('INT_UF').AsString :=
        dmGeral.BUS_CD_C_CID.FieldByName('UF').AsString;

      if (trim(dmGeral.CAD_CD_C_FOR.FieldByName('ID_CIDADE').AsString)='9999999') then
         begin
            txtCodPais.Enabled := true;
         end
      else
         begin
           dmGeral.BUS_CD_C_PAI.Close;
           dmGeral.BUS_CD_C_PAI.Data :=
           dmGeral.BUS_CD_C_PAI.DataRequest(VarArrayOf([0, '1058']));
           if not dmgeral.BUS_CD_C_PAI.IsEmpty then
             begin
              dmGeral.CAD_CD_C_FOR.FieldByName('INT_NOMEPAIS').AsString := dmgeral.BUS_CD_C_PAI.FieldByName('DESCRICAO').AsString;
              dmGeral.CAD_CD_C_FOR.FieldByName('COD_PAIS').AsString := dmgeral.BUS_CD_C_PAI.FieldByName('ID_PAIS').AsString;
             end
           else
             begin
               dmGeral.CAD_CD_C_FOR.FieldByName('INT_NOMEPAIS').AsString := '';
               dmGeral.CAD_CD_C_FOR.FieldByName('COD_PAIS').AsString := '';
             end;
           dmGeral.BUS_CD_C_PAI.Close;
         end;

    end
  else
    begin
      ShowMessage('Cidade não encontrada');
      dmGeral.CAD_CD_C_FOR.FieldByName('INT_NOMEPAIS').AsString := '';
      dmGeral.CAD_CD_C_FOR.FieldByName('COD_PAIS').AsString := '';
    end;

end;
procedure TCAD_FM_C_FOR.txtCidadeRepButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
   PSQ_FM_X_CID.ShowModal;
      if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
         begin
           dmGeral.CAD_CD_C_FOR_REP.FieldByName('ID_CIDADE').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString;
         end;
   PSQ_FM_X_CID.Free;

end;

procedure TCAD_FM_C_FOR.txtCidadeRepExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;
  if dmGeral.CAD_CD_C_FOR_REP.FieldByName('ID_CIDADE').AsString <> '' then
     begin
       dmGeral.BUS_CD_C_CID.Close;
       dmGeral.BUS_CD_C_CID.Data :=
       dmGeral.BUS_CD_C_CID.DataRequest(VarArrayOf([0, txtCidadeRep.Text]));
       dmGeral.CAD_CD_C_FOR_REP.FieldByName('INT_NOMECID').AsString :=
            dmGeral.BUS_CD_C_CID.FieldByName('NOME').AsString;
     end;
end;

procedure TCAD_FM_C_FOR.txtCNPJExit(Sender: TObject);
var
doc_cnpj_cpf,doc_ip: string;
begin
  inherited;
  doc_cnpj_cpf := dmGeral.CAD_CD_C_CLIdoc_cnpj_cpf.Text;
  doc_ip := dmGeral.CAD_CD_C_CLIdoc_ip.Text;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_FOR.Close;
  dmGeral.BUS_CD_C_FOR.Data :=
     dmGeral.BUS_CD_C_FOR.DataRequest
             (VarArrayOf([2,dmGeral.CAD_CD_C_FORdoc_cnpj.Text]));

   if not dmGeral.BUS_CD_C_FOR.IsEmpty then
    begin
      ShowMessage('CNPJ já Cadastrado.');
      dmGeral.CAD_CD_C_FORdoc_cnpj.Text := '';
      txtCNPJ.SetFocus;
    end;
end;

procedure TCAD_FM_C_FOR.txtCodPaisButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_PAI := TPSQ_FM_X_PAI.Create(Self);
   PSQ_FM_X_PAI.ShowModal;
      if not PSQ_FM_X_PAI.BUS_CD_C_PAI.IsEmpty then
         begin
           dmGeral.CAD_CD_C_FOR.FieldByName('INT_NOMEPAIS').AsString :=
                PSQ_FM_X_PAI.BUS_CD_C_PAI.FieldByName('DESCRICAO').AsString;

           dmGeral.CAD_CD_C_FOR.FieldByName('COD_PAIS').AsString :=
                PSQ_FM_X_PAI.BUS_CD_C_PAI.FieldByName('ID_PAIS').AsString;
         end;
   PSQ_FM_X_PAI.Free;
end;

procedure TCAD_FM_C_FOR.txtCodPaisExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


  dmGeral.BUS_CD_C_PAI.Close;
  dmGeral.BUS_CD_C_PAI.Data :=
  dmGeral.BUS_CD_C_PAI.DataRequest(VarArrayOf([0, txtCodPais.Text]));

  if not dmGeral.BUS_CD_C_PAI.IsEmpty then
    begin
      dmGeral.CAD_CD_C_FOR.FieldByName('INT_NOMEPAIS').AsString :=
                dmGeral.BUS_CD_C_PAI.FieldByName('DESCRICAO').AsString;

      dmGeral.CAD_CD_C_FOR.FieldByName('COD_PAIS').AsString :=
                dmGeral.BUS_CD_C_PAI.FieldByName('ID_PAIS').AsString;
    end
  else
    begin
      ShowMessage('País não encontrado');
    end;
end;

procedure TCAD_FM_C_FOR.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;

procedure TCAD_FM_C_FOR.txtPlanoContasButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_PCT := TPSQ_FM_X_PCT.Create(Self);
  PSQ_FM_X_PCT.xPctChamadaPor := 'E';
  PSQ_FM_X_PCT.ShowModal;
      if not PSQ_FM_X_PCT.BUS_CD_C_PCT.IsEmpty then
         begin
           dmGeral.CAD_CD_C_FOR.FieldByName('ID_PLANO').AsString :=
             PSQ_FM_X_PCT.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString;
         end;
  PSQ_FM_X_PCT.Free;
end;

procedure TCAD_FM_C_FOR.txtPlanoContasExit(Sender: TObject);
begin
  inherited;


  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


  if (dmGeral.CAD_CD_C_FOR.FieldByName('ID_PLANO').text = '') then
     begin
       Showmessage('O campo "Plano de contas" deve ser preenchido.');
       dmGeral.CAD_CD_C_FOR.FieldByName('int_nomepct').Text := '';
       txtPlanoContas.SetFocus;
       abort;
     end;

  dmGeral.BusPlanoCta(0,dmGeral.CAD_CD_C_FOR.FieldByName('ID_PLANO').Text);

  if dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       ShowMessage('Plano de contas não encontrada.');
       dmGeral.CAD_CD_C_FOR.FieldByName('int_nomepct').Text := '';
       txtPlanoContas.SetFocus;
       abort;
     end;

  dmGeral.CAD_CD_C_FOR.FieldByName('ID_PLANO').Text    := dmGeral.BUS_CD_C_PCT.FieldByName('ID_PLANO').Text;
  dmGeral.CAD_CD_C_FOR.FieldByName('int_nomepct').Text := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;

  if dmGeral.BUS_CD_C_PCT.FieldByName('TIPO').AsInteger <> 0 then
     begin
       ShowMessage('Só é permitido plano de contas do tipo "Analítico".');
       dmGeral.CAD_CD_C_FOR.FieldByName('int_nomepct').Text := '';
       txtPlanoContas.SetFocus;
       abort;
     end;

  if not (dmGeral.BUS_CD_C_PCT.FieldByName('TIPO_DESP').AsInteger in [0,2]) then
     begin
       ShowMessage('Só é permitido plano de contas com tipo "Despesa" ou "Sem fluxo".');
       dmGeral.CAD_CD_C_FOR.FieldByName('int_nomepct').Text := '';
       txtPlanoContas.SetFocus;
       abort;
     end;
end;

procedure TCAD_FM_C_FOR.txtTipoFornEnter(Sender: TObject);
begin
  inherited;
  txtTipoForn.DropDown;
end;

end.
