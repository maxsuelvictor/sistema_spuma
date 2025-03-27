unit CSU_UN_M_NFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,System.IniFiles,System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  JvToolEdit, Vcl.Mask, JvExMask, Data.DB, vcl.wwdatsrc, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, ACBrMail, ACBrBase, ACBrDFe, ACBrNFe,
  JvComponentBase, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrNFeDANFEFRDM,
  ACBrNFeDANFEFR,pcnConversao, ACBrCTeDACTEClass, ACBrCTeDACTEFR, ACBrDFeReport,
  ACBrDFeDANFeReport;

type
  TCSU_FM_M_NFE = class(TForm)
    pnlTop: TPanel;
    pnlPrincipal: TPanel;
    lblTitulo: TLabel;
    pnlDados: TPanel;
    dsoNfe: TwwDataSource;
    gbFiltro: TGroupBox;
    btnFiltra: TButton;
    rgTipoNota: TRadioGroup;
    dbGridNfeIte: TwwDBGrid;
    deFinal: TJvDateEdit;
    Label2: TLabel;
    deInicial: TJvDateEdit;
    Label1: TLabel;
    Label3: TLabel;
    txtIdEmit: TJvComboEdit;
    txtEmitente: TEdit;
    Label4: TLabel;
    txtNumero: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    dsoNfeIte: TwwDataSource;
    btnEnviarEmail: TButton;
    btnSair: TSpeedButton;
    dbGridNfe: TwwDBGrid;
    NFE: TACBrNFe;
    ACBrMail1: TACBrMail;
    Danfe: TACBrNFeDANFEFR;
    btnImprimirDanfe: TButton;
    Panel1: TPanel;
    Label7: TLabel;
    Panel2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    procedure FormResize(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnFiltraClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtIdEmitButtonClick(Sender: TObject);
    procedure txtIdEmitExit(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirDanfeClick(Sender: TObject);
    procedure dbGridNfeCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dbGridNfeRowChanged(Sender: TObject);
  private
    { Private declarations }
    procedure carregaCores;
    procedure enviarXML;
    procedure montarMensagemEmail;
    function  BuscaDiretorio(diretorio, arquivo: string):String;
    var
      xCorSistema,xDiretorioXML,xCodNFiscal,corpoMensagem:string;
        Ok : Boolean;
  public
    { Public declarations }
  end;

var
  CSU_FM_M_NFE: TCSU_FM_M_NFE;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FOR, PSQ_UN_X_CLI;

procedure TCSU_FM_M_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmGeral.BUS_CD_M_NFE.Filtered := false;
  dmGeral.BUS_CD_M_NFE.Close;
  FreeAndNil(CSU_FM_M_NFE);
  //Action := caFree;
end;

procedure TCSU_FM_M_NFE.FormCreate(Sender: TObject);
begin
  carregaCores;
  WindowState := wsMaximized;
  self.FormStyle := fsMDIChild;
end;

procedure TCSU_FM_M_NFE.montarMensagemEmail;
begin
   corpoMensagem :=
      '<body> '+
      '  <font size="1" face="arial"> '+
      '    <center> '+
      '      (Mariores informações sobre os anexos no corpo do e-mail) '+
      '    </center> '+
      '  </font></br> '+

      '  <table border="2" bgcolor="F5FFFA" width="100%"> '+
      '  <tr><td> '+

      '     <center> '+
      '     <table border="0" bgcolor="F5FFFA" width="95%"> '+
      '     <tr><td> '+
      '         <font size="3" face="arial"> '+
      '            <p><b><center>NF-e</center></b></p> '+
      '            <p><b><center>Nota Fiscal Eletrônica</center></b></p> '+
      '         </font> '+

      '         <hr size=2 width="100%"/> '+

      '         <font size="2" face="arial"> '+
      '            <p>Prezado Cliente,</p> '+

      '            <p>Você está recebendo a Nota Fiscal Eletrônica número '+IntToStr(NFE.NotasFiscais.Items[0].NFe.Ide.cNF)+','+
      '              série '+IntToStr(NFE.NotasFiscais.Items[0].NFe.Ide.serie)+' de '+UpperCase(dmGeral.CAD_CD_C_PAR.FieldByName('EMP_RAZAO').AsString)+', no valor de '+
      '              R$ '+FormatCurr('###,###,###,###,##0.00',  NFE.NotasFiscais.Items[0].NFe.total.ICMSTot.vNF)+'. Além disso, junto com a mercadoria seguirá o DANFE(Documento Auxiliar da Nota Fiscal Eletrônica), '+
      '             impresso em papel que acompanha o transporte das mesmas.</p> '+

      '            <p>Anexo à este e-mail você está recebendo também o arquivo XML da Nota Fiscal Eletrônica. Este '+
      '               arquivo deve ser armazenado eletronicamente por sua empresa pelo prazo de 05(cinco) anos, '+
      '               conforme previsto na legislação tributária(Art. 173 do Código Tributário Nacional e § 4º da Lei '+
      '               5.172 de 25/10/1966).</p> '+

      '            <p>O DANFE em papel pode ser arquivado para apresentação ao fisco quando solicitado. Todavia, se sua empresa '+
      '               também for emitente de NF-e, o arquivamento eletrônico do XML de seus fornecedores é obrigatório, sendo '+
      '               possível de fiscalização.</p> '+

      '            <p>Para se certificar que esta NF-e é válida, queira por favor consultar sua autenticidade no site nacional '+
      '               do projeto NF-e (www.nfe.fazenda.gov.br), utilizando a chave de acesso contida no DANFE.</p> '+

      '            <p>Atenciosamente,</p>'+
      '            <p>'+UpperCase(dmGeral.CAD_CD_C_PAR.FieldByName('EMP_RAZAO').AsString)+'</p> '+
      '         </font> '+

      '         <hr size=2 width="100%"/> '+

      '         <font size="2" face="arial"> '+
      '             <p><b>Descrição dos anexos desse e-mail:</b></p> '+

      '             <p><i>'+dmGeral.BUS_CD_M_NFE.FieldByName('NFE_CHAVE').AsString+'-nfe.pdf</i> - Imagem Gráfica do DANFE - Documento Auxiliar da Nota Fiscal Eletrônica, '+
      '               em formato PDF, que pode ser visualizado em tela ou impresso.</p> '+

      '             <p><i>'+dmGeral.BUS_CD_M_NFE.FieldByName('NFE_CHAVE').AsString+'-nfe.xml</i> - Esse arquivo é a própria Nota Fiscal Eletrônica, que deve ser guardada pelo período '+
      '                de 05 anos. Ele contém todas as informações do emitente, destinatário, produtos/serviços, tributação, etc. '+
      '                Esse arquivo, além de guardado, deve ser enviado para o setor de contabilidade.</p> '+
      '         </font> '+
      '        </td> '+
      '     </tr> '+
      '          </table> '+
      '          </center> '+
      '       </td> '+
      '     </tr> '+

      '   </table> '+

      '   <font size="1" face="arial"> '+
      '     Esse e-mail, bem como seu(s) anexo(s), foi gerado pelo sistema enSoft(www.e-north.com.br), '+
      '     parte integrante do pacote '+ copy(ExtractFileName(Application.ExeName),1,Length(ExtractFileName(Application.ExeName))-4)+'. '+
      '   </font> '+

      '</body> ';
end;

procedure TCSU_FM_M_NFE.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCSU_FM_M_NFE.FormResize(Sender: TObject);
begin
  pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
  pnlDados.left := (pnlPRincipal.Width div 2) - (pnlDados.width div 2);
end;


procedure TCSU_FM_M_NFE.FormShow(Sender: TObject);
begin
   xDiretorioXML := ExtractFilePath(Application.ExeName) +
                    Trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('PATH_XML').AsString);


   if (copy(xDiretorioXML,length(xDiretorioXML),1) <> '\') then
     begin
       xDiretorioXML := xDiretorioXML +'\';
     end;

  NFE.Configuracoes.Arquivos.Salvar := true;
  NFE.Configuracoes.Arquivos.PathSalvar := xDiretorioXML;

  Danfe.PathPDF        := xDiretorioXML;

  NFE.DANFE.MargemDireita  := 7;
  NFE.DANFE.MargemEsquerda := 7;
  NFE.DANFE.MargemSuperior := 5;
  NFE.DANFE.MargemInferior := 5;

  Danfe.FastFile       := ExtractFileDir(application.ExeName) + '\Report\DANFeRetrato.fr3';
  Danfe.FastFileEvento := ExtractFileDir(application.ExeName) + '\Report\EVENTOS.fr3';

  // Comentado por Maxsuel Victor, em  01/09/2021
  //  Danfe.FastFile       := ExtractFileDir(application.ExeName) + '\Report\DANFeRetrato_2019.fr3';
  // Danfe.FastFileEvento := ExtractFileDir(application.ExeName) + '\Report\EVENTOS.fr3';

  if NFe.DANFE <> nil then
     begin
       NFe.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('danf_tipo_impressao').AsInteger+1));
       NFe.DANFE.Logo       := ExtractFilePath(Application.ExeName)+dmGeral.CAD_CD_C_PAR_NFE.FieldByName('path_logo').AsString;
     end;

end;

procedure TCSU_FM_M_NFE.txtIdEmitButtonClick(Sender: TObject);
begin
    if (RGTipoNota.ItemIndex = 0) or (RGTipoNota.ItemIndex = 3) or (RGTipoNota.ItemIndex = 4) then
    begin
      PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
      PSQ_FM_X_FOR.ShowModal;

      if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
         begin
           txtIdEmit.Text     := PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString;
           txtEmitente.Text := PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
         end;
      PSQ_FM_X_FOR.BUS_CD_C_FOR.Free;
    end
  else
    begin
      PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
      PSQ_FM_X_CLI.ShowModal;

      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           txtIdEmit.Text     := PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_ClIENTE').AsString;
           txtEmitente.Text := PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
      PSQ_FM_X_CLI.BUS_CD_C_CLI.Free;
    end;
end;

procedure TCSU_FM_M_NFE.txtIdEmitExit(Sender: TObject);
begin
  if (RGTipoNota.ItemIndex = 0) or (RGTipoNota.ItemIndex = 3) or (RGTipoNota.ItemIndex = 4) then
    begin
      if not (txtIdEmit.Text = '') then
        begin
          dmgeral.BUS_CD_C_FOR.Close;
          dmgeral.BUS_CD_C_FOR.Data :=
            dmgeral.BUS_CD_C_FOR.DataRequest(VarArrayOf([0, txtIdEmit.Text]));

          txtIdEmit.Text     := dmgeral.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString;
          txtEmitente.Text   := dmgeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
        end
      else
        txtEmitente.Text   := '';
    end
  else
    begin
      if not (txtIdEmit.Text = '') then
        begin
          dmgeral.BUS_CD_C_CLI.Close;
          dmgeral.BUS_CD_C_CLI.Data :=
            dmgeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtIdEmit.Text]));

          txtIdEmit.Text     := dmgeral.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString;
          txtEmitente.Text   := dmgeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
        end
      else
        txtEmitente.Text   := '';
    end;
end;

procedure TCSU_FM_M_NFE.btnEnviarEmailClick(Sender: TObject);
var
  msg,codNFiscal:string;
  prontoEnvio,ExisteXMLEnviar:boolean;
begin
   Screen.Cursor := crHourGlass;
   msg := '';
   xCodNFiscal := '';
   ExisteXMLEnviar := false;
   try
     dmGeral.BUS_CD_M_NFE.Filtered := true;
     dmGeral.BUS_CD_M_NFE.Filter := 'INT_SELECAO=TRUE';
   finally

   end;

     if (not dmGeral.BUS_CD_M_NFE.IsEmpty) then
        begin
          dmGeral.BUS_CD_M_NFE.First;
          while (not dmGeral.BUS_CD_M_NFE.eof) do
            begin
              prontoEnvio := true;
              if (trim(dmGeral.BUS_CD_M_NFE.FieldByName('NFE_CHAVE').AsString) <> '') then
                 begin
                   if (dmGeral.BUS_CD_M_NFE_ARQ.FieldByName('ARQ_XML').AsString = '') and
                      (BuscaDiretorio(xDiretorioXML,dmGeral.BUS_CD_M_NFE.FieldByName('NFE_CHAVE').AsString+'-nfe.xml')='') then
                      begin
                        prontoEnvio := False;
                     end;
                 end
               else
                 begin
                   prontoEnvio := False;
                 end;



              if (dmGeral.BUS_CD_M_NFE.FieldByName('INT_EMAIL').AsString = '') then
                 begin
                   if ((dmgeral.BUS_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'S') or
                       (dmgeral.BUS_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'R'))  then
                     begin
                       dmGeral.BusCliEmail(dmGeral.BUS_CD_M_NFE.FieldByName('ID_EMITENTE').AsString);
                       if dmgeral.BUS_CD_C_CLI_EML.IsEmpty then
                          prontoEnvio := false;
                       dmgeral.BUS_CD_C_CLI_EML.Close;
                     end
                   else
                     begin
                       prontoEnvio := False;
                     end;
                 end;



              if (prontoEnvio = False) then
                 begin
                   xCodNFiscal := xCodNFiscal + TRIM(dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString)+'-';
                   msg := msg +dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsString+', ';
                 end
              else
                 begin
                   ExisteXMLEnviar := true;
                 end;

              dmGeral.BUS_CD_M_NFE.Next;
            end;
        end
      else
        begin
          ShowMessage('É necessário selecionar pelo menos 1 nota fiscal.');
          try
          dmGeral.BUS_CD_M_NFE.Filtered := false;
          dmGeral.BUS_CD_M_NFE.IndexFieldNames := 'DTA_EMISSAO';
          finally
            Screen.Cursor := crDefault;
          end;
          exit;
        end;

   if (msg <> '') then
      begin
         if (ExisteXMLEnviar = true) then
            begin
               msg := 'Os xmls das seguintes notas fiscais não serão enviados por não terem informação de chave de acesso, email do emitente ou próprio arquivo XML da nota. Deseja Continuar?'+
                      #13+#10+#13+#10+'Nº Notas Fiscais: '+msg;

               if MessageDlg(msg, mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                 begin
                    try
                     dmGeral.BUS_CD_M_NFE.Filtered := false;
                     dmGeral.BUS_CD_M_NFE.IndexFieldNames := 'DTA_EMISSAO';
                    finally
                     Screen.Cursor := crDefault;
                    end;
                     exit;
                 end;
            end
          else
            begin
              msg := 'Os xmls das seguintes notas fiscais não serão enviados por não terem informação de chave de acesso, email do emitente ou próprio arquivo XML da nota.'+
                      #13+#10+#13+#10+'Nº Notas Fiscais: '+msg;
              try
                 dmGeral.BUS_CD_M_NFE.Filtered := false;
                 dmGeral.BUS_CD_M_NFE.IndexFieldNames := 'DTA_EMISSAO';
              finally
                 Screen.Cursor := crDefault;
              end;
              ShowMessage(msg);
              exit;
            end;
      end;


   dmGeral.BUS_CD_M_NFE.First;
   while (not dmGeral.BUS_CD_M_NFE.EOF) do
     begin
       enviarXML;
       dmGeral.BUS_CD_M_NFE.Next;
     end;


   try
     dmGeral.BUS_CD_M_NFE.Filtered := false;
     dmGeral.BUS_CD_M_NFE.IndexFieldNames := 'DTA_EMISSAO';
   finally
      Screen.Cursor := crDefault;
   end;

   if (ExisteXMLEnviar = true) then
      begin
       ShowMessage('Arquivos enviados com sucesso.');
      end;
end;

procedure TCSU_FM_M_NFE.btnFiltraClick(Sender: TObject);
var
Tipo, dtainicial,dtafinal: String;
begin
  inherited;
  case RgTipoNota.ItemIndex of
    0: Tipo := 'E';
    1: Tipo := 'S';
    2: Tipo := 'R';
    3: Tipo := 'D';
    4: Tipo := 'F';
  end;

  
  dtainicial := deinicial.Text;
  dtafinal := definal.Text;

  if deinicial.Text = '  /  /    ' then
    dtainicial := '';
  if definal.Text = '  /  /    ' then
    dtafinal := '';

  if ((deinicial.Text = '  /  /    ') or (definal.Text = '  /  /    ')) and (txtIdEmit.Text = '') and (txtNumero.Text = '') then
    begin
      ShowMessage('Ao menos um filtro de pesquisa deve ser preenchido!');
    end
  else
    begin
      dmGeral.BUS_CD_M_NFE.Close;
      dmGeral.BUS_CD_M_NFE.Data :=
      dmGeral.BUS_CD_M_NFE.DataRequest(VarArrayOf([117, dmgeral.CAD_CD_C_PARid_empresa.Text, Tipo, dtainicial, dtafinal, txtIdEmit.Text, txtNumero.Text]));
      dmGeral.BUS_CD_M_NFE.IndexFieldNames := 'numero';
      dbGridNfe.SetFocus;
    end;
end;


function TCSU_FM_M_NFE.BuscaDiretorio(diretorio, arquivo: string):String;
var
  f: TSearchRec;
  r: integer;
begin
  //Metodo utilizado para buscar o arquivo em qualquer sub-diretorio, a partir do diretorio especificado no
  //parametro desta função.Esse metodo surgiu da necessidade de fazer o cancelamento de nota fiscal com
  //sistema configurado para salvar arquivos xml em pastas mensais. Resp.:Luan.Data:21/07/2017
  Result := '';
  if diretorio[length(diretorio)]<>'\' then
    diretorio := diretorio+'\';

  if FileExists(diretorio+arquivo) then
    begin
      Result := diretorio+arquivo;
      exit;
    end;

  r := FindFirst(diretorio+'\*.*',faAnyFile,f);
  while (r=0) do
   begin
    if (f.Name <> '.') and (f.Name<>'..') then
      begin
        if f.Attr = fadirectory then
          Result := BuscaDiretorio(diretorio+f.Name,arquivo);
        if Result <>'' then
          break;
      end;
    r := FindNext(f);
   end;

  FindClose(F);

end;



procedure TCSU_FM_M_NFE.btnImprimirDanfeClick(Sender: TObject);
var
  arquivo: TStringList;
  xml_stream: TStringStream;
  path_arquivo_xml:String;
begin

  path_arquivo_xml := BuscaDiretorio(xDiretorioXML,dmGeral.BUS_CD_M_NFE.FieldByName('NFE_CHAVE').AsString+'-nfe.xml');

  if (trim(dmGeral.BUS_CD_M_NFE.FieldByName('NFE_CHAVE').AsString) <> '') then
     begin
       if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfe_permite_salv_xml').AsBoolean then
          begin
            if (path_arquivo_xml = '') and
               (dmGeral.BUS_CD_M_NFE_ARQ.FieldByName('ARQ_XML').AsString = '') then
                begin
                  ShowMessage('O xml da nota fiscal não existe no banco de dados e nem no local especificado '+xDiretorioXML+Trim(dmGeral.BUS_CD_M_NFE.FieldByName('NFE_CHAVE').AsString)+'-nfe.xml.');
                  exit;
                end;
          end
       else
          begin
            if (path_arquivo_xml = '') then
                begin
                  ShowMessage('Não existe arquivo '+xDiretorioXML+Trim(dmGeral.BUS_CD_M_NFE.FieldByName('NFE_CHAVE').AsString)+'-nfe.xml do registro selecionado.');
                  exit;
                end;
          end;
     end
   else
     begin
       ShowMessage('Não há código de chave de acesso no registro selecionado.');
       exit;
     end;
   try

   xml_stream := TStringStream.Create;
   arquivo := TStringList.Create;

   NFE.NotasFiscais.Clear;
   if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('nfe_permite_salv_xml').AsBoolean then
      begin
         if (dmGeral.BUS_CD_M_NFE_ARQ.FieldByName('ARQ_XML').AsString <> '') then
             begin
               arquivo.add(dmGeral.BUS_CD_M_NFE_ARQARQ_XML.AsString);

               arquivo.SaveToStream(xml_stream);
               NFE.NotasFiscais.LoadFromStream(xml_stream);
             end
         else
            begin
              if  (path_arquivo_xml <> '') then
                  NFE.NotasFiscais.LoadFromFile(path_arquivo_xml)
            end;
      end
   else
      begin
        if  (path_arquivo_xml <> '') then
            NFE.NotasFiscais.LoadFromFile(path_arquivo_xml)
      end;

   NFE.DANFE.PathPDF := NFe.Configuracoes.Arquivos.PathSalvar;
   NFE.NotasFiscais.Imprimir;

   finally
      FreeAndNil(xml_stream);
      FreeAndNil(arquivo);
   end;
end;

procedure TCSU_FM_M_NFE.EnviarXML;
var
 Para : String;
 CC: Tstrings;
 CorpoMsg: Tstrings;
 xSeguro,TSL,SSL:Boolean;
 xNomeXml,assunto:String;

 arquivo: TStringList;
 xml_stream: TStringStream;

begin

   TSL := false;
   SSL := false;
   if (not dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_TLS').IsNull) then
     begin
        TSL := dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_TLS').asBoolean;
     end;

   if (not dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_SSL').IsNull) then
     begin
        SSL := dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_SSL').asBoolean;
     end;

   if pos(dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').text,xCodNFiscal) = 0 then
     BEGIN

        Para := trim(dmGeral.BUS_CD_M_NFE.FieldByName('INT_EMAIL').AsString);
        CC:=TstringList.Create;
        if ((dmgeral.BUS_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'S') or
             (dmgeral.BUS_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'R'))  then
          begin
            dmGeral.BusCliEmail(dmGeral.BUS_CD_M_NFE.FieldByName('ID_EMITENTE').AsString);
            dmgeral.BUS_CD_C_CLI_EML.First;
            while not dmgeral.BUS_CD_C_CLI_EML.eof do
              begin
                CC.Add(dmgeral.BUS_CD_C_CLI_EML.FieldByName('EMAIL').AsString);
                dmgeral.BUS_CD_C_CLI_EML.Next;
              end;
            dmgeral.BUS_CD_C_CLI_EML.Close;
          end;


        xml_stream := TStringStream.Create;
        arquivo := TStringList.Create;

        if (dmGeral.BUS_CD_M_NFE_ARQ.FieldByName('ARQ_XML').AsString <> '') then
             begin
               arquivo.add(dmGeral.BUS_CD_M_NFE_ARQARQ_XML.AsString);

               arquivo.SaveToStream(xml_stream);
               NFE.NotasFiscais.LoadFromStream(xml_stream);
             end
         else
            begin
              NFE.NotasFiscais.Clear;
              NFE.NotasFiscais.LoadFromFile(BuscaDiretorio(xDiretorioXML,dmGeral.BUS_CD_M_NFE.FieldByName('NFE_CHAVE').AsString+'-nfe.xml'));
            end;


        assunto := 'Nota Fiscal Eletrônica n.'+IntToStr(NFE.NotasFiscais.Items[0].NFe.Ide.cNF);
        montarMensagemEmail;
        CorpoMsg:=TstringList.Create;
        try
          CorpoMsg.Add(corpoMensagem);

          ACBrMail1.Host := trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP').asString);
          ACBrMail1.Port := trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_PORTA').asString);
          ACBrMail1.Username := Trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_USUARIO').asString);
          ACBrMail1.Password := Trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SENHA').asString);
          ACBrMail1.From := Trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_USUARIO').asString);
          ACBrMail1.Attempts := 1;
          ACBrMail1.SetSSL := SSL; // SSL - ConexÃ£o Segura
          ACBrMail1.SetTLS := TSL; // Auto TLS
          ACBrMail1.ReadingConfirmation := False; //Pede confirmaÃ§Ã£o de leitura do email
          ACBrMail1.UseThread := False;           //Aguarda Envio do Email(nÃ£o usa thread)
          ACBrMail1.FromName := '';//trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_USUARIO').asString);
          ACBrMail1.IsHTML := true;



          NFE.NotasFiscais.Items[0].EnviarEmail( Para, Assunto,
                                                    CorpoMsg
                                                   , True  // Enviar PDF junto
                                                   , CC    // Lista com emails que serÃ£o enviado cÃ³pias - TStrings
                                                   , nil); // Lista de anexos - TStrings

        finally
          CorpoMsg.Free;
          Screen.Cursor := crDefault;
          freeAndNil(xml_stream);
          freeAndNil(arquivo);
        end;
     END;

end;



procedure TCSU_FM_M_NFE.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TCSU_FM_M_NFE.carregaCores;
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

procedure TCSU_FM_M_NFE.dbGridNfeCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
       //Situacao de NFe Cancelada. Cor Vermelho
       if(dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '02') then
          begin
            Abrush.Color := clRed;
          end;

       // Situação de NFe DENEGADA. Cor Roxa
       if (dmGeral.BUS_CD_M_NFE.FieldByName('NUMERO').AsInteger > 0) and
          (dmGeral.BUS_CD_M_NFE.FieldByName('STATUS').AsInteger = 1) and
          (dmGeral.BUS_CD_M_NFE.FieldByName('NFE_COD_SIT').AsString = '04') then
          begin
            Abrush.Color := clPurple;
          end;
end;

procedure TCSU_FM_M_NFE.dbGridNfeRowChanged(Sender: TObject);
begin
   btnImprimirDanfe.Hint := 'Será impresso nota fiscal de nº controle: '+
         dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString;
end;

end.
