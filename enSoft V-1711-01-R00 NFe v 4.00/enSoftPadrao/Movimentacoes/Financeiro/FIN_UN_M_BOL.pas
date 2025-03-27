unit FIN_UN_M_BOL;

{$IFDEF VER140}
{$DEFINE USAVARIANTS}
{$ENDIF}

{$IFDEF VER150}
{$DEFINE USAVARIANTS}
{$ENDIF}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBControls,
  Vcl.DBCtrls,ComObj, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, vcl.wwdbigrd, vcl.wwdbgrid;
var
dtainicial,dtafinal,xCliente:String;

type
  TFIN_FM_M_BOL = class(TPAD_FM_X_FRM)
    btnGerarPdf: TButton;
    btnEnviarEmail: TButton;
    txtClienteNome: TDBText;
    mmoReciboBoleto: TMemo;
    wwDBGrid1: TwwDBGrid;
    GroupBox1: TGroupBox;
    btnFiltra: TButton;
    deFinal: TJvDateEdit;
    lblate: TLabel;
    deInicial: TJvDateEdit;
    lblNomeCliente: TLabel;
    txtCliente: TJvComboEdit;
    lblCliente: TLabel;
    txtContaCorrente: TJvComboEdit;
    lblContaCorrente: TLabel;
    cbbTipoPeriodo: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtContaCorrenteButtonClick(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure btnFiltraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
 private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIN_FM_M_BOL: TFIN_FM_M_BOL;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, PSQ_UN_X_CTC, enFunc, FIN_RN_M_BOL;

procedure TFIN_FM_M_BOL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.BUS_CD_M_REC_BOL.Close;
  FreeAndNil(FIN_FM_M_BOL);

end;

procedure TFIN_FM_M_BOL.FormCreate(Sender: TObject);
begin
  inherited;
deInicial.SetFocus;
end;

procedure TFIN_FM_M_BOL.FormShow(Sender: TObject);
begin
  inherited;
  lblNomeCliente.Caption:= '';
end;

procedure TFIN_FM_M_BOL.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           txtCliente.Text:= IntToStr(PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger);

           lblNomeCliente.Caption:= PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;
procedure TFIN_FM_M_BOL.txtClienteExit(Sender: TObject);
begin
  inherited;
  if trim(txtCliente.Text) <> '' then
      begin
          dmGeral.BUS_CD_C_CLI.Close;
          dmGeral.BUS_CD_C_CLI.Data :=
             dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, trim(txtCliente.Text)]));

          if dmGeral.BUS_CD_C_CLI.IsEmpty then
            begin
               ShowMessage('Cliente não encontrado.');
               txtCliente.Text :='';
               lblNomeCliente.Caption:= '';
            end
          else
            begin
             lblNomeCliente.Caption:= dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
            end;
      end;
end;
procedure TFIN_FM_M_BOL.txtContaCorrenteButtonClick(Sender: TObject);
begin
  inherited;
 { PSQ_FM_X_CTC := TPSQ_FM_X_CTC.Create(Self);
   PSQ_FM_X_CTC.ShowModal;
      if not PSQ_FM_X_CTC.BUS_CD_C_CTC.IsEmpty then
         begin
           txtContaCorrente.Text:= PSQ_FM_X_CTC.BUS_CD_C_CTC.FieldByName('Conta_Corrente').AsString;
           dmgeral.BUS_CD_C_CTC.Data :=  PSQ_FM_X_CTC.BUS_CD_C_CTC.Data;
         end;
   PSQ_FM_X_CTC.Free;  }
end;

procedure TFIN_FM_M_BOL.btnEnviarEmailClick(Sender: TObject);
VAR
  codTituloEnviar,codTituloNEnviar:String;
  ListaCodTitulo:TStrings;
  i:Integer;
begin
  inherited;
    if ((trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP').asString)= '') or
       (trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_PORTA').asString) ='') or
       (Trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SENHA').asString)='') or
       (Trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_USUARIO').asString)='')) then
      begin
        ShowMessage('Deve-se preencher as configurações do servidor de e-mail na tela de parâmetros na aba NF-e.');
        exit;
      end;


   try
     dmGeral.BUS_CD_M_REC_BOL.Filtered := true;
     dmGeral.BUS_CD_M_REC_BOL.Filter := 'INT_SELECAO=TRUE';



     if dmGeral.BUS_CD_M_REC_BOL.RecordCount > 0 then
       begin
         codTituloNEnviar := '';
         codTituloEnviar := '';
         dmGeral.BUS_CD_M_REC_BOL.First;
         while not dmGeral.BUS_CD_M_REC_BOL.EOF do
           begin
             if (TRIM(dmGeral.BUS_CD_M_REC_BOL.FieldByName('BOL_NOSSO_NUMERO').AsString)='') OR
                (TRIM(dmGeral.BUS_CD_M_REC_BOL.FieldByName('BOL_ID_CONTA').AsString)='') OR
                (TRIM(dmGeral.BUS_CD_M_REC_BOL.FieldByName('BOL_BANCO').AsString)='') OR
                //(TRIM(dmGeral.BUS_CD_M_REC_BOL.FieldByName('BOL_CHAVE').AsString)='') OR
                 (TRIM(dmGeral.BUS_CD_M_REC_BOL.FieldByName('INT_EMAILCLI').AsString)='') then
               begin
                  if codTituloNEnviar = '' then
                     codTituloNEnviar := codTituloNEnviar + dmGeral.BUS_CD_M_REC_BOL.FieldByname('ID_TITULO').AsString
                  else
                     codTituloNEnviar := codTituloNEnviar +', '+dmGeral.BUS_CD_M_REC_BOL.FieldByname('ID_TITULO').AsString;
               end
             else
               begin
                 if codTituloEnviar = '' then
                     codTituloEnviar := codTituloEnviar +''''+ dmGeral.BUS_CD_M_REC_BOL.FieldByname('ID_TITULO').AsString+''''
                  else
                     codTituloEnviar := codTituloEnviar +', '+''''+dmGeral.BUS_CD_M_REC_BOL.FieldByname('ID_TITULO').AsString+'''';

               end;
             dmGeral.BUS_CD_M_REC_BOL.Next;
           end;


         if  codTituloNEnviar <> '' then
           begin
             if codTituloEnviar = '' then
               begin
                 ShowMessage('Todos os titulos selecionados não poderão ser enviados por não terem número, dados de conta bancária ou e-mail do cliente.');
               end
             else
               begin
                if MessageDlg('Os seguintes titulos não poderão ser enviados por não terem número, dados de conta bancária ou e-mail do cliente. Deseja continuar?'+#13#10+
                                   #13#10+'Nº Títulos:'+codTituloNEnviar, mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                  begin
                    codTituloEnviar := '';
                  end
               end
           end;

         if codTituloEnviar <>'' then
            begin
              ListaCodTitulo := TStringList.Create;
              ListaCodTitulo.Delimiter:=',';
              ListaCodTitulo.StrictDelimiter:=True;
              ListaCodTitulo.DelimitedText :=  codTituloEnviar;


              for i := 0 to ListaCodTitulo.Count-1 do
               begin
                  if dmGeral.BUS_CD_M_REC_BOL.Locate('ID_TITULO',ListaCodTitulo[i],[]) then
                     FIN_RN_M_BOL.EnviarBoleto(0,dmGeral.BUS_CD_M_REC_BOL);
               end;
            end;
       end
     else
       begin
         ShowMessage('Nenhum título foi selecionado.');
       end;

   finally
     dmGeral.BUS_CD_M_REC_BOL.Filtered := false;
   end;

end;

procedure TFIN_FM_M_BOL.btnFiltraClick(Sender: TObject);
begin
  inherited;
  dtainicial := deinicial.text;
  dtafinal   := deFinal.text;
  xcliente   := trim(txtCliente.Text);

  dmGeral.BUS_CD_C_CLI.Close;
       dmGeral.BUS_CD_C_CLI.Data :=
             dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, trim(txtCliente.Text)]));

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') or (deInicial.Text > deFinal.Text) then
    begin
      ShowMessage('O período deve ser preenchido Corretamente.');
      exit;
    end;


  if  xcliente <> '' then
      begin
          dmGeral.BusCliente(0, xcliente);
          if dmGeral.BUS_CD_C_CLI.IsEmpty then
            begin
               ShowMessage('Cliente não encontrado.');
               exit;
            end;
      end;

  dmgeral.BUS_CD_M_REC_BOL.Close;
  dmgeral.BUS_CD_M_REC_BOL.Data :=
  dmgeral.BUS_CD_M_REC_BOL.DataRequest(
          VarArrayOf([90, ''''+ dmgeral.cad_cd_c_par.FieldByName('id_empresa').asstring+'''',
                      xCliente, dtainicial, dtafinal,cbbTipoPeriodo.ItemIndex]));

end;

procedure TFIN_FM_M_BOL.btnImprimeClick(Sender: TObject);
var
   CobreBemX: Variant;
   Boleto: Variant;
   Pnn:Integer;
   xSel:bool;
   BOL_MSG_1, BOL_MSG_2: string;
   xJurMes:Double;
begin

ValidaBOL;


     Pnn:= 1;
     Pnn := 1; //dmGeral.FIN_CD_M_RECbol_nosso_numero.AsInteger;
     pnn:=pnn+1;

          CobreBemX := CreateOleObject('CobreBemX.ContaCorrente');                  // Configuração Banco do Brasil



        //  CobreBemX.ArquivoLicenca         := dmgeral.BUS_CD_C_CTClicenca.AsString;         // 'C:\Licencas\04159644000188-001-18-7.conf';
          CobreBemX.CodigoAgencia          := trim(dmgeral.BUS_CD_C_CTCagencia.AsString);         // '00963-6';
          CobreBemX.NumeroContaCorrente    := dmgeral.BUS_CD_C_CTCconta_corrente.AsString;   // '39575-7';
          CobreBemX.CodigoCedente          := dmgeral.BUS_CD_C_CTCcedente_cod.AsString;          // '1018661';
        //  CobreBemX.InicioNossoNumero      := dmgeral.BUS_CD_C_CTCnnu_inicio.AsString;      // '000000';
        //  CobreBemX.FimNossoNumero         := dmgeral.BUS_CD_C_CTCnnu_final.AsString;         // '000000';
          CobreBemX.ProximoNossoNumero     := strZero(Pnn,6,0);  // '071376';
          CobreBemX.OutroDadoConfiguracao1 := '19';
          CobreBemX.OutroDadoConfiguracao2 := '';
          CobreBemX.PadroesBoleto.PadroesBoletoImpresso.ArquivoLogotipo := 'c:\CobreBemX\Imagens\BannerCBX.gif';
          CobreBemX.PadroesBoleto.PadroesBoletoImpresso.CaminhoImagensCodigoBarras := 'c:\CobreBemX\Imagens\';


          Boleto := CobreBemX.DocumentosCobranca.Add;

          Boleto.NumeroDocumento :=  dmgeral.FIN_CD_M_RECid_titulo.AsString;   // '01/201421';
          Boleto.NomeSacado      :=  dmgeral.FIN_CD_M_RECint_nomecli.AsString;       // 'AFFERTIL PRODUTOS AGROPECUARIO';
          Boleto.CPFSacado       :=  dmgeral.FIN_CD_M_RECint_cnpjcpf.AsString;         // '05.947.807/0001-50';
          Boleto.EnderecoSacado  :=  dmgeral.FIN_CD_M_RECint_endcob.AsString;         // 'PCA JOAO FREIRE DE CARVALHO.352';
          Boleto.BairroSacado    :=  dmgeral.FIN_CD_M_RECint_bairrocob.AsString;           // 'CENTRO';
          Boleto.CidadeSacado    :=  dmgeral.FIN_CD_M_RECint_cidcob.AsString;            // 'CABROBO';
          Boleto.EstadoSacado    :=  dmgeral.FIN_CD_M_RECint_estadocob.AsString;           // 'PE';
          Boleto.CepSacado       :=  dmgeral.FIN_CD_M_RECint_cepcob.AsString;              // '56180-000';
          Boleto.DataDocumento   :=  dmgeral.FIN_CD_M_RECdta_emissao.AsString;    // '20/01/2014';
          Boleto.DataVencimento  :=  dmgeral.FIN_CD_M_RECdta_vencimento.AsString;    // '20/01/2014';
          Boleto.ValorDocumento  :=  dmgeral.FIN_CD_M_RECvlr_original.AsCurrency; // 180.00;

          xJurMes   := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('TAX_JUROS_MENSAL').AsFloat;
          BOL_MSG_1 := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('DIA_PROTESTO').AsString;  //dmGeral.cds_Parametros.FieldByName('MSG_BOLETO').AsString;
          BOL_MSG_2 := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('DIA_PROTESTO').AsString;
          Boleto.PadroesBoleto.Demonstrativo := '';

          if xJurMes>0 then
             Boleto.PadroesBoleto.InstrucoesCaixa := 'Após o vencimento cobrar '+ formatfloat('##0.000',xJurMes) +'% de juros ao mes ' + BOL_MSG_1 + #13 +
                                              ',Protestar após '+BOL_MSG_2+' dias de vencimento.'
          else if xJurMes=0 then
             Boleto.PadroesBoleto.InstrucoesCaixa :=  BOL_MSG_1 ;

          CobreBemX.ImprimeBoletos;


         { if not dmGeral.Conexao.InTransaction then
            begin
              Randomize;
              TD.TransactionID := Random(3600);
              TD.IsolationLevel := xilREADCOMMITTED;
              dmGeral.Conexao.StartTransaction(TD);
            end;
          try
            //Atualiza Nosso Numero
             dmgeral.FIN_CD_M_REC.Edit;
             dmgeral.FIN_CD_M_RECbol_nosso_numero.AsString:=Boleto.NossoNumero;
             dmgeral.FIN_CD_M_REC.Post;
             dmgeral.FIN_CD_M_REC.ApplyUpdates(0);

            //Atualiza Proximo Nosso Numero
             dmgeral.CAD_CD_C_CTC.Edit;
             dmgeral.CAD_CD_C_CTCnnu_proximo.AsInteger:=Pnn;
             dmgeral.CAD_CD_C_CTC.Post;
             dmgeral.CAD_CD_C_CTC.ApplyUpdates(0);
            dmGeral.Conexao.Commit(TD);
          except on E: Exception do
              begin
                dmGeral.Conexao.Rollback(TD);
                ShowMessage(E.Message);
              end;
          end;

      }
          CobreBemX := Unassigned;



end;

end.



if cdsNotasFiscais.IsEmpty then
     begin
       ShowMessage('Não foi encontrada nenhuma nota fiscal para geração do(s) boleto(s).');
       exit;
     end;

  if cdsNotasFiscaisSITUACAO.AsString <> 'E' then
     begin
       ShowMessage('A nota fiscal selecionada deve estar com o status de "Encerrada".');
       exit;
     end;

  cdsTituloBolFin.Close;
  qryTituloBolFin.Close;
  qryTituloBolFin.CommandText := '';
  qryTituloBolFin.CommandText :=
            ' SELECT TIT.*, FTR.ID_CLIENTE, FTR.NUM_FATURA AS NUMERO, CTT.DOC_IMPRESSO ' +
            ' FROM FIN_MOV_CPR_TITULOS TIT ' +
            '    LEFT OUTER JOIN CAD_TIPO_TITULO CTT     ON CTT.ID_TIPO_TITULO = TIT.ID_TIPO_TITULO        ' +
            '    LEFT OUTER JOIN FIN_MOV_CPR_FATURAS FTR ON FTR.ID_FATURA = TIT.ID_FATURA                  ' +
            ' WHERE  FTR.ID_FILIAL = ' + cdsNotasFiscais.FieldByName('ID_FILIAL').asString + ' AND ' +
            '        FTR.ID_FISCAL = ' + cdsNotasFiscais.FieldByName('ID_FISCAL').asString + ' AND ' +
            '        dbo.TRIM(CTT.DOC_IMPRESSO) =''' + 'Boleto' + ''' ';
  cdsTituloBolFin.Open;
  if cdsTituloBolFin.IsEmpty  then
     begin
       ShowMessage('Não foi encontrado título na nota fiscal do tipo "Boleto".');
       cdsTituloBolFin.close;
       exit;
     end;
  cdsTituloBolFin.close;


  cdsContaCorrente.Close;
  cdsContaCorrente.Open;
  cdsContaCorrente.First;

  FrmFatSelecionaCCorrente := TFrmFatSelecionaCCorrente.Create(Self);
  FrmFatSelecionaCCorrente.ShowModal;

  if xContaCorrente = 0 then
     begin
        ShowMessage('Nenhum banco selecionado!');
        BtnGerarBoleto.SetFocus;
        Abort;
     end;

 ImprimirBoletoCobreBemX;


procedure TfrmFaturamento.ImprimirBoletoCobreBemX;
var
    MarcaPosicao: TBookMark;
    Boleto: Variant;
    EmailSacado: Variant;
    CnpjCpf: string;
    xJurMes:Double;
    NroParcela: string;
    BOL_MSG_1, BOL_MSG_2: string;
    Path,Numero:String;
    i: integer;

    Transacao : TDBXTransaction;
begin


  Path :=   ExtractFilePath(Application.ExeName)+'Licencas\'+cdsContaCorrenteARQ_LICENCA.AsString;

  // Preenche dados para conta corrente
  //ProximoNossoNro :=  cdsContaCorrentePRO_NOSSO_NUMERO.AsInteger + 1;
  CobreBemX := CreateOleObject('CobreBemX.ContaCorrente');
  CobreBemX.ArquivoLicenca         := Path;
  CobreBemX.CodigoAgencia          := trim(cdsContaCorrenteAGENCIA.AsString);
  CobreBemX.NumeroContaCorrente    := trim(cdsContaCorrenteCONTA_CORRENTE.AsString);
  CobreBemX.CodigoCedente          := trim(cdsContaCorrenteCONTA_CORRENTE.AsString);
  CobreBemX.InicioNossoNumero      := cdsContaCorrenteINI_NOSSO_NUMERO.AsString;
  CobreBemX.FimNossoNumero         := cdsContaCorrenteFIN_NOSSO_NUMERO.AsString;

  CobreBemX.ProximoNossoNumero     := cdsContaCorrentePRO_NOSSO_NUMERO.AsInteger;
  CobreBemX.OutroDadoConfiguracao1 := '19';
  CobreBemX.OutroDadoConfiguracao2 := '';
  CobreBemX.PadroesBoleto.PadroesBoletoImpresso.ArquivoLogotipo            :=
            ExtractFilePath(Application.ExeName) + 'Foto\BannerCBX.gif';
  CobreBemX.PadroesBoleto.PadroesBoletoImpresso.CaminhoImagensCodigoBarras :=
            ExtractFilePath(Application.ExeName) + 'Imagens\';
  CobreBemX.PadroesBoleto.IdentificacaoCedente := cdsContaCorrenteID_CEDENTE.AsString;
  //----------------------------------------------------------------------------------

  CnpjCpf    := '';
  NroParcela := '';
  xJurMes    := 0;

  // Busca títulos do tipo BOLETO da nota fiscal-----------
  cdsTituloBolNF.Close;
  qryTituloBolNF.CommandText := '';
  qryTituloBolNF.CommandText :=
    'SELECT NFT.*, NF.SITUACAO, NF.EMITENTE,  NF.NUMERO,CTT.DOC_IMPRESSO ' +
    ' FROM FAT_NOTA_FISCAL_TITULOS NFT ' +
    ' LEFT OUTER JOIN CAD_TIPO_TITULO CTT ON CTT.ID_TIPO_TITULO = NFT.ID_TIPO_TITULO ' +
    ' LEFT OUTER JOIN FAT_NOTA_FISCAL NF ON NF.ID_FISCAL = NFT.ID_FISCAL ' +
    ' WHERE ' +
    '   NFT.ID_FILIAL = ''' + cdsNotasFiscais.FieldByName('ID_FILIAL').asString + ''' AND ' +
    '   NFT.ID_FISCAL = '''  + cdsNotasFiscais.FieldByName('ID_FISCAL').asString + ''' AND ' +
    '   dbo.TRIM(CTT.DOC_IMPRESSO) =''' + 'Boleto' + ''' ';
  cdsTituloBolNF.Open;
  // ------------------------------------------------------

  // Busca títulos do tipo BOLETO na fatura da nota fiscal
  cdsTituloBolFin.Close;
  qryTituloBolFin.Close;
  qryTituloBolFin.CommandText := '';
  qryTituloBolFin.CommandText :=
            ' SELECT TIT.*, FTR.ID_CLIENTE, FTR.NUM_FATURA AS NUMERO, CTT.DOC_IMPRESSO ' +
            ' FROM FIN_MOV_CPR_TITULOS TIT ' +
            '    LEFT OUTER JOIN CAD_TIPO_TITULO CTT     ON CTT.ID_TIPO_TITULO = TIT.ID_TIPO_TITULO        ' +
            '    LEFT OUTER JOIN FIN_MOV_CPR_FATURAS FTR ON FTR.ID_FATURA = TIT.ID_FATURA                  ' +
            ' WHERE  FTR.ID_FILIAL = ' + cdsNotasFiscais.FieldByName('ID_FILIAL').asString + ' AND ' +
            '        FTR.ID_FISCAL = ' + cdsNotasFiscais.FieldByName('ID_FISCAL').asString + ' AND ' +
            '        dbo.TRIM(CTT.DOC_IMPRESSO) =''' + 'Boleto' + ''' ';
  cdsTituloBolFin.Open;
  // ------------------------------------------------------

  BOL_MSG_1 := '';
  BOL_MSG_2 := '';

  if dmGeral.Ler_Registro(' SELECT TX_JUROS_MENSAL, BOL_MSG_1, BOL_MSG_2 FROM EN_PARAM_CONTROLE ' +
                          ' WHERE EMP_CNPJ =  ' + QuotedStr(xCNPJ)) then
     begin
        xJurMes:=dmGeral.QryBusca.FieldByName('TX_JUROS_MENSAL').AsFloat;
        BOL_MSG_1 := dmGeral.QryBusca.FieldByName('BOL_MSG_1').AsString;
        BOL_MSG_2 := dmGeral.QryBusca.FieldByName('BOL_MSG_2').AsString;
     end;

  MarcaPosicao := qryTituloBolFin.GetBookmark;

  CobreBemX.DocumentosCobranca.Clear;
  cdsTituloBolFin.First;
  // Dados para o boleto ------------------------------------------------------
  while not cdsTituloBolFin.Eof do
    begin
      cdsTituloBolFin.Edit;

      cdsTituloBolFin.FieldByName('BOL_CHAVE').AsString :=
          (Alltrim(cdsTituloBolFin.FieldByName('NUMERO').asString)) +
               BuscarNroParcela(cdsTituloBolFin.FieldByName('NUM_PARCELA').AsString);

      dmGeral.QryBusca.Close;
      dmGeral.QryBusca.SQL.Clear;
      dmGeral.QryBusca.SQL.Add(
        ' SELECT CC.DOC_CNPJ, CC.DOC_CPF, '+
        ' CCE.ENDERECO,CCE.BAIRRO,CCE.CIDADE, '+
        ' CCE.ESTADO,CCE.CEP,CC.EMAIL,CC.NOME,CC.PESSOA, CCE.NUMERO '+
        ' FROM CAD_CLIENTES CC '+
        ' LEFT OUTER JOIN CAD_CLI_ENDERECO CCE ON CCE.ID_CLIENTE = CC.ID_CLIENTE '+
                                     ' AND CCE.PADRAO = ''S'' '+
        ' LEFT OUTER JOIN CEP_CIDADE CID ON CID.CIDADE_CODIGO = CCE.ID_CIDADE '+
        ' WHERE CC.ID_CLIENTE = ''' + cdsTituloBolFin.FieldByName('ID_CLIENTE').asString + ''' '+
        ' ORDER BY CC.ID_CLIENTE ');
      dmGeral.QryBusca.Open;


      Boleto                 := CobreBemX.DocumentosCobranca.Add;
      Boleto.NumeroDocumento := (Alltrim(cdsTituloBolFin.FieldByName('NUMERO').asString)) + '/'+
                                 BuscarNroParcela(cdsTituloBolFin.FieldByName('NUM_PARCELA').AsString);
      Boleto.NomeSacado      :=  dmGeral.QryBusca.FieldByName('NOME').AsString;

      CnpjCpf := '';

      if dmGeral.QryBusca.FieldByName('PESSOA').AsString = 'J' then
         CnpjCpf := TiraBicho(dmGeral.QryBusca.FieldByName('DOC_CNPJ').AsString)
      else
      if dmGeral.QryBusca.FieldByName('PESSOA').AsString = 'F' then
         CnpjCpf := TiraBicho(dmGeral.QryBusca.FieldByName('DOC_CPF').AsString);

      Boleto.CPFSacado      := CnpjCpf;
      Boleto.EnderecoSacado := dmGeral.QryBusca.FieldByName('ENDERECO').AsString+', '+
                               dmGeral.QryBusca.FieldByName('NUMERO').AsString;
      Boleto.BairroSacado   := dmGeral.QryBusca.FieldByName('BAIRRO').AsString;
      Boleto.CidadeSacado   := dmGeral.QryBusca.FieldByName('CIDADE').AsString;
      Boleto.EstadoSacado   := dmGeral.QryBusca.FieldByName('ESTADO').AsString;
      Boleto.CepSacado      := dmGeral.QryBusca.FieldByName('CEP').AsString;
      Boleto.DataDocumento  := FormatDateTime('dd/mm/yyyy', Date);
      Boleto.DataVencimento := FormatDateTime('dd/mm/yyyy', cdsTituloBolFin.fieldByName('DTA_VENCIMENTO').asDateTime);
      Boleto.ValorDocumento := cdsTituloBolFin.fieldByName('VLR_TITULO').AsCurrency;
      Boleto.PercentualJurosDiaAtraso := xJurMes/30;
      Boleto.PercentualMultaAtraso    := 0;
      Boleto.PercentualDesconto       := 0;
      Boleto.ValorOutrosAcrescimos    := 0;
      Boleto.PadroesBoleto.Demonstrativo   := '';
      Boleto.PadroesBoleto.InstrucoesCaixa := 'Após o vencimento cobrar ' + formatfloat('##0.000',xJurMes) +'% de juros ao mes. ' + #13 +
                                              BOL_MSG_1 + ' ' + BOL_MSG_2;


      EmailSacado          := Boleto.EnderecosEmailSacado.Add;
      EmailSacado.Nome     := Boleto.NomeSacado;
      EmailSacado.Endereco := dmGeral.QryBusca.FieldByName('EMAIL').AsString;

      Boleto.ControleProcessamentoDocumento.Imprime      := scpExecutar;
      Boleto.ControleProcessamentoDocumento.EnviaEmail   := scpExecutar;
      Boleto.ControleProcessamentoDocumento.GravaRemessa := scpExecutar;

      cdsTituloBolFin.Post;
      cdsTituloBolFin.next;
    end;

  CobreBemX.ImprimeBoletos;

  // Salvar dados do boleto nos Títulos da Nota Fiscal e nos Títulos da Fatura
  for i := 0 to CobreBemX.DocumentosCobranca.Count - 1 do
      begin
        numero := StringReplace(CobreBemX.DocumentosCobranca[i].NumeroDocumento,'/','',[rfReplaceAll]);
        if cdsTituloBolFin.Locate('BOL_CHAVE',numero,[]) then
            if cdsTituloBolFin.fieldByName('BOL_NOSSO_NUMERO').AsString <> CobreBemX.DocumentosCobranca[i].NossoNumero
               then
                   begin
                      cdsTituloBolFin.Edit;
                      cdsTituloBolFin.fieldByName('BOL_CONTA_CORRENTE').AsInteger := cdsContaCorrenteID_CONTA_CORRENTE.AsInteger;
                      cdsTituloBolFin.fieldByName('BOL_NOSSO_NUMERO').AsString    := CobreBemX.DocumentosCobranca[i].NossoNumero;
                      cdsTituloBolFin.Post;
                   end;
      end;
  // Irá salvar os dados do BOLETO nos títulos da Nota fiscal, assim, ficando igual aos boletos da
  // fatura
  cdsTituloBolFin.First;
  while not cdsTituloBolFin.eof do
     begin
        if cdsTituloBolNF.Locate('DTA_VENCIMENTO;PARCELAS_NUM_',VarArrayOf([cdsTituloBolFin.FieldByName('DTA_VENCIMENTO').AsString,
                                 BuscarNroParcela(cdsTituloBolFin.FieldByName('NUM_PARCELA').AsString)]),[]) then
           begin
              cdsTituloBolNF.Edit;
              cdsTituloBolNF.fieldByName('BOL_CHAVE').AsInteger          := cdsTituloBolFin.fieldByName('BOL_CHAVE').AsInteger;
              cdsTituloBolNF.fieldByName('BOL_CONTA_CORRENTE').AsInteger := cdsTituloBolFin.fieldByName('BOL_CONTA_CORRENTE').AsInteger;
              cdsTituloBolNF.fieldByName('BOL_NOSSO_NUMERO').AsString    := cdsTituloBolFin.fieldByName('BOL_NOSSO_NUMERO').AsString;
              cdsTituloBolNF.Post;
           end;
        cdsTituloBolFin.Next;
     end;

  // ---------------------------------------------------------------------------

  cdsTituloBolNF.GotoBookmark(MarcaPosicao);
  cdsTituloBolNF.FreeBookmark(MarcaPosicao);

  if cdsContaCorrentePRO_NOSSO_NUMERO.AsInteger <> CobreBemX.ProximoNossoNumero then
     begin
        cdsContaCorrente.Edit;
        cdsContaCorrentePRO_NOSSO_NUMERO.AsString := CobreBemX.ProximoNossoNumero;
        cdsContaCorrente.Post;
     end;


  try

    dmGeral.Conexao.CloseDataSets;

    Transacao := dmGeral.Conexao.BeginTransaction(TDBXIsolations.ReadCommitted);


    if cdsContaCorrente.ApplyUpdates(0) <> 0 then
       begin
         ShowMessage('Erro ao tentar atualizar o cadastro da conta corrente.');
       end;

    if cdsTituloBolNF.ApplyUpdates(0) <> 0 then
       begin
         ShowMessage('Erro ao tentar atualizar os títulos da NF.');
       end;

    if cdsTituloBolFin.ApplyUpdates(0) <> 0 then
       begin
         ShowMessage('Erro ao tentar atualizar os títulos da NF.');
       end;

    dmGeral.Conexao.CommitFreeAndNil(Transacao);
  except
    on e: exception do
       begin
         dmGeral.Conexao.RollBackFreeAndNil(Transacao);
         ShowMessage('Erro: ' + e.Message);
       end;
  end;


  AbreArquivos;
end;
