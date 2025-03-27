unit FIN_UN_M_REC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  vcl.wwdblook, JvToolEdit, JvDBControls, Vcl.Mask, JvExMask, JvExExtCtrls,
  JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb, frxExportPDF,
  frxClass, frxExportXLS, frxDBSet, Datasnap.DBClient, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White;

type
  TFIN_FM_M_REC = class(TPAD_FM_X_PAD)
    lblCliente: TLabel;
    txtClienteNome: TDBText;
    lblNTitulo: TLabel;
    Label1: TLabel;
    lblVencimento: TLabel;
    lblPrevBaixa: TLabel;
    lblFormaPagamento: TLabel;
    txtNTitulo: TDBMemo;
    dpkEmissao: TJvDBDateEdit;
    dpkVencimento: TJvDBDateEdit;
    dpkPrevBaixa: TJvDBDateEdit;
    cbbFormaPagamento: TwwDBLookupCombo;
    Label3: TLabel;
    lblLocalTitulo: TLabel;
    cbbLocalTitulo: TwwDBLookupCombo;
    Label2: TLabel;
    txtHistorico: TDBMemo;
    lblVlrTitulo: TLabel;
    txtVlrTitulo: TDBMemo;
    lblVlrSaldo: TLabel;
    txtVlrSaldo: TDBMemo;
    gbCheque: TGroupBox;
    lblBanco: TLabel;
    txtBanco: TDBEdit;
    txtAgencia: TDBEdit;
    lblAgencia: TLabel;
    lblContaCorrente: TLabel;
    txtContaCorrente: TDBEdit;
    txtNCheque: TDBEdit;
    lblNCheque: TLabel;
    lblEmitente: TLabel;
    txtEmitente: TDBEdit;
    Label4: TLabel;
    cbbPlanoContas: TwwDBLookupCombo;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    txtClientes: TJvDBComboEdit;
    cbbSituacao: TwwDBComboBox;
    lblSituacao: TLabel;
    btnAtualizaCont: TBitBtn;
    Label5: TLabel;
    wwDBEdit1: TwwDBEdit;
    mmoReciboBoleto: TMemo;
    lbObra: TLabel;
    txtobra: TJvDBComboEdit;
    DBText1: TDBText;
    BitBtn1: TBitBtn;
    FAT_FR_M_CXA_RVS: TfrxReport;
    BUS_DB_M_CXA_NFE: TfrxDBDataset;
    FAT_PD_M_CXA_NFE: TfrxPDFExport;
    FAT_XL_M_CXA_NFE: TfrxXLSExport;
    FAT_DP_M_CXA_NFE: TfrxDBDataset;
    FAT_DP_M_CXA_NFE_TIT: TfrxDBDataset;
    txtPesquisaData: TJvDateEdit;
    pmRec: TPopupMenu;
    Alterarolocaldottulo1: TMenuItem;
    Alteraaformadepagamento1: TMenuItem;
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbFormaPagamentoEnter(Sender: TObject);
    procedure cbbLocalTituloEnter(Sender: TObject);
    procedure cbbPlanoContasEnter(Sender: TObject);
    procedure cbbFormaPagamentoExit(Sender: TObject);
    procedure txtVlrTituloExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtNTituloExit(Sender: TObject);
    procedure txtClientesButtonClick(Sender: TObject);
    procedure txtClientesExit(Sender: TObject);
    procedure dsoDataChange(Sender: TObject; Field: TField);
    procedure dbGridRowChanged(Sender: TObject);
    procedure btnAtualizaContClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtobraButtonClick(Sender: TObject);
    procedure txtobraExit(Sender: TObject);
    procedure dpkEmissaoExit(Sender: TObject);
    procedure dpkVencimentoExit(Sender: TObject);
    procedure dpkPrevBaixaExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure txtVlrTituloKeyPress(Sender: TObject; var Key: Char);
    procedure txtNTituloKeyPress(Sender: TObject; var Key: Char);
    procedure Alterarolocaldottulo1Click(Sender: TObject);
    procedure dbGridFieldChanged(Sender: TObject; Field: TField);
    procedure dbGridDblClick(Sender: TObject);
    procedure Alteraaformadepagamento1Click(Sender: TObject);
  private
    { Private declarations}
    procedure AltEstCampos(const tipo:integer);
  public
    { Public declarations}
  end;

var
  FIN_FM_M_REC: TFIN_FM_M_REC;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, PSQ_UN_X_CLI, PSQ_UN_X_PCT, FIN_RN_M_REC, PSQ_UN_X_CTC,
  FIN_RN_M_BOL,enFunc, PSQ_UN_X_OBR, uDmCtc, FIN_UN_M_REC_LTO, FIN_UN_M_REC_FPG;

procedure TFIN_FM_M_REC.acAdicionaExecute(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_REC);

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.FIN_CD_M_REC.FieldByName('ID_TITULO').AsInteger := SMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.FIN_CD_M_REC.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  dmGeral.FIN_CD_M_REC.FieldByName('NUM_PARCELA').AsInteger     := 0;
  dmGeral.FIN_CD_M_REC.FieldByName('ORIGEM').AsInteger          := 0;
  dmGeral.FIN_CD_M_REC.FieldByName('TIPO_LANCAMENTO').AsInteger := 0;

  txtClientes.SetFocus;
end;

procedure TFIN_FM_M_REC.acAlterarExecute(Sender: TObject);
var
  tipo: integer;
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_REC) then
      begin
        inherited;
        tipo := FIN_RN_M_REC.FinPermiteAltRec;
         AltEstCampos(tipo);

         //INSERI O IF A SEGUIR PARA TRATAR CHEQUES QUE NÃO ESTEJAM EM ABERTO. RESPONSAVEL:LUAN.DATA:18/07/2015
         dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_REC.FieldByName('ID_FORMA_PAG').AsString);
         if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6)  then
           begin
               txtBanco.Enabled := false;
               txtAgencia.Enabled := false;
               txtContaCorrente.Enabled := false;
               txtNCheque.Enabled := false;
               txtEmitente.Enabled := false;
               gbCheque.Enabled :=true;
               gbCheque.Visible := true;
           end;
           //FIM

        if dpkEmissao.CanFocus then
           dpkEmissao.SetFocus
        else
           if dpkPrevBaixa.CanFocus then
              dpkPrevBaixa.SetFocus;
      end;
end;

procedure TFIN_FM_M_REC.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_REC) then
     begin
       inherited;
      // cbbSituacao.Enabled := true;  //INSERI ESSA INSTRUÇÃO. RESPONSAVEL: LUAN;DATA:18/07/2015
       AltEstCampos(0);
       dbGrid.SetFocus;
     end
  else
     begin
       if txtClientes.CanFocus then
          txtClientes.SetFocus
       else
          if dpkPrevBaixa.CanFocus then
             dpkPrevBaixa.Setfocus;
     end;
end;

procedure TFIN_FM_M_REC.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_REC);
end;

procedure TFIN_FM_M_REC.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   //INSERI O CODIGO ABAIXO PARA SETAR O VALOR DE SITUAÇÃO_CHQ.RESPONSAVEL:LUAN.DATA:23/07/2015
   dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_REC.FieldByname('ID_FORMA_PAG').AsString);
   if (not dmGeral.BUS_CD_C_FPG.IsEmpty) then
     begin
      if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger <> 6) then
        begin
          dmGeral.FIN_CD_M_REC.FieldByName('SITUACAO_CHQ').AsString := '';
        end;
      if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6) then
        begin
          if (dmGeral.FIN_CD_M_REC.FieldByName('SITUACAO_CHQ').AsString = '') then
            begin
              dmGeral.FIN_CD_M_REC.FieldByName('SITUACAO_CHQ').AsInteger := 1;
            end;
        end;
      end;
    //FIM

   codigo := dmGeral.FIN_CD_M_REC.FieldByName('ID_TITULO').AsString;

   DmGeral.Grava(dmGeral.FIN_CD_M_REC);
   inherited;

   dmGeral.FIN_CD_M_REC.Close;
   dmGeral.FIN_CD_M_REC.Data :=
   dmGeral.FIN_CD_M_REC.DataRequest(
           VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,codigo]));
   //cbbSituacao.Enabled := true; //INSERI ESSA INSTRUÇÃO. RESPONSAVEL: LUAN;DATA:18/07/2015
   AltEstCampos(0);
end;

procedure TFIN_FM_M_REC.Alteraaformadepagamento1Click(Sender: TObject);
begin
  inherited;



  if dmGeral.FIN_CD_M_REC.IsEmpty then
     begin
       ShowMessage('Nenhum registro foi selecionado.');
       exit;
     end;

  if (dmGeral.FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency = 0)  then
     begin
       ShowMessage('Título já quitado.');
       exit;
     end;

  if (dmGeral.FIN_CD_M_REC.FieldByName('vlr_parcela').AsCurrency <>
      dmGeral.FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency)  then
     begin
       ShowMessage('Título já movimentado.');
       exit;
     end;

  Application.CreateForm(TFIN_FM_M_REC_FPG,FIN_FM_M_REC_FPG);

  FIN_FM_M_REC_FPG.FIN_CD_M_REC.Close;
  FIN_FM_M_REC_FPG.FIN_CD_M_REC.Data :=
      FIN_FM_M_REC_FPG.FIN_CD_M_REC.DataRequest(
          VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                        dmGeral.FIN_CD_M_REC.FieldByName('id_titulo').AsString]));

  if FIN_FM_M_REC_FPG.FIN_CD_M_REC.IsEmpty then
     begin
       ShowMessage('Registro não encontrado.');
       exit;
     end;
  FIN_FM_M_REC_FPG.FIN_CD_M_REC.Edit;

  FIN_FM_M_REC_FPG.ShowModal;
  FreeAndNil(FIN_FM_M_REC_FPG);

end;

procedure TFIN_FM_M_REC.Alterarolocaldottulo1Click(Sender: TObject);
begin
  inherited;


  if dmGeral.FIN_CD_M_REC.IsEmpty then
     begin
       ShowMessage('Nenhum registro foi selecionado.');
       exit;
     end;

  if (dmGeral.FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency = 0)  then
     begin
       ShowMessage('Título já quitado.');
       exit;
     end;

  if (dmGeral.FIN_CD_M_REC.FieldByName('vlr_parcela').AsCurrency <>
      dmGeral.FIN_CD_M_REC.FieldByName('vlr_saldo').AsCurrency)  then
     begin
       ShowMessage('Título já movimentado.');
       exit;
     end;

  Application.CreateForm(TFIN_FM_M_REC_LTO,FIN_FM_M_REC_LTO);

  FIN_FM_M_REC_LTO.FIN_CD_M_REC.Close;
  FIN_FM_M_REC_LTO.FIN_CD_M_REC.Data :=
      FIN_FM_M_REC_LTO.FIN_CD_M_REC.DataRequest(
          VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                        dmGeral.FIN_CD_M_REC.FieldByName('id_titulo').AsString]));

  if FIN_FM_M_REC_LTO.FIN_CD_M_REC.IsEmpty then
     begin
       ShowMessage('Registro não encontrado.');
       exit;
     end;
  FIN_FM_M_REC_LTO.FIN_CD_M_REC.Edit;

  FIN_FM_M_REC_LTO.ShowModal;
  FreeAndNil(FIN_FM_M_REC_LTO);
end;

procedure TFIN_FM_M_REC.AltEstCampos(const tipo: integer);
var
  Estado: Boolean;
  Cor   : TColor;
begin

  estado := true;
  cor := clWindow;

  txtClientes.enabled  := estado;
  txtClientes.color    := cor;
  txtNTitulo.enabled     := estado;
  txtNTitulo.color       := cor;
  txtObra.enabled        := estado;
  txtObra.color          := cor;
  dpkEmissao.enabled     := estado;
  dpkEmissao.color       := cor;
  dpkVencimento.enabled  := estado;
  dpkVencimento.color    := cor;
  dpkPrevBaixa.enabled   := estado;
  dpkPrevBaixa.color     := cor;
  cbbPlanoContas.enabled := estado;
  cbbPlanoContas.color   := cor;
  cbbFormaPagamento.enabled := estado;
  cbbFormaPagamento.color   := cor;
  cbbLocalTitulo.enabled    := estado;
  cbbLocalTitulo.color      := cor;
  txtHistorico.enabled      := estado;
  txtHistorico.color        := cor;
  txtVlrTitulo.enabled         := estado;
  txtVlrTitulo.color           := cor;
  txtVlrSaldo.enabled       := estado;
  txtVlrSaldo.color         := cor;
  gbCheque.enabled          := estado;


  //INSERI AS INSTRUÇÃO SEGUINTES DESSA PROCEDURE. RESPONSAVEL: LUAN;DATA:18/07/2015
  txtBanco.Enabled := estado;
  txtAgencia.Enabled := estado;
  txtContaCorrente.Enabled := estado;
  txtNCheque.Enabled := estado;
  txtEmitente.Enabled := estado;


  if tipo = 1 then   // Permitirá alterar apenas a data de previsão da baixa
     begin
        estado := false;
        cor := $00DADADA;
        txtClientes.enabled  := estado;
        txtClientes.color    := cor;
        txtNTitulo.enabled     := estado;
        txtNTitulo.color       := cor;
        txtObra.enabled        := estado;
        txtObra.color          := cor;
        dpkEmissao.enabled     := estado;
        dpkEmissao.color       := cor;
        dpkVencimento.enabled  := estado;
        dpkVencimento.color    := cor;

           dpkPrevBaixa.enabled   := True;
           dpkPrevBaixa.color     := clWhite;

        cbbPlanoContas.enabled := estado;
        cbbPlanoContas.color   := cor;
        cbbFormaPagamento.enabled := estado;
        cbbFormaPagamento.color   := cor;
        cbbLocalTitulo.enabled    := estado;
        cbbLocalTitulo.color      := cor;
        txtHistorico.enabled      := estado;
        txtHistorico.color        := cor;

        if ((dmGeral.FIN_CD_M_REC.FieldByName('INT_DOCIMPRESSO').AsInteger <> 1) and
           (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('alterar_vlr_dup_nota_fat').AsBoolean = true)))  then
          begin
            txtVlrTitulo.enabled         := estado;
            txtVlrTitulo.color           := cor;
          end;


        txtVlrSaldo.enabled       := estado;
        txtVlrSaldo.color         := cor;
        gbCheque.enabled          := estado;
     end;
  if tipo = 2 then   // Não pode altarar Fornecedor e nem Nro do título
     begin
        estado := false;
        cor := $00DADADA;
        txtClientes.enabled  := estado;
        txtClientes.color    := cor;
        txtNTitulo.enabled     := estado;
        txtNTitulo.color       := cor;
        txtObra.enabled        := estado;
        txtObra.color          := cor;
     end;


  if tipo = 3 then   // Permitirá alterar apenas a data de previsão da baixa e o valor do titulo
     begin
        estado := false;
        cor := $00DADADA;
        txtClientes.enabled  := estado;
        txtClientes.color    := cor;
        txtNTitulo.enabled     := estado;
        txtNTitulo.color       := cor;
        txtObra.enabled        := estado;
        txtObra.color          := cor;
        dpkEmissao.enabled     := estado;
        dpkEmissao.color       := cor;

        cbbPlanoContas.enabled := estado;
        cbbPlanoContas.color   := cor;
        cbbFormaPagamento.enabled := estado;
        cbbFormaPagamento.color   := cor;
        cbbLocalTitulo.enabled    := estado;
        cbbLocalTitulo.color      := cor;
        txtHistorico.enabled      := estado;
        txtHistorico.color        := cor;
        gbCheque.enabled          := estado;
     end;

  {//INSERI AS INSTRUÇÃO SEGUINTES DESSA PROCEDURE. RESPONSAVEL: LUAN;DATA:18/07/2015
  if tipo = 3 then
    begin
      estado := false;
      txtBanco.Enabled := estado;
      txtAgencia.Enabled := estado;
      txtContaCorrente.Enabled := estado;
      txtNCheque.Enabled := estado;
      txtEmitente.Enabled := estado;
    end;}
end;

procedure TFIN_FM_M_REC.BitBtn1Click(Sender: TObject);
var
  vlrTotalTit : Currency;
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if cbbPesquisa.ItemIndex <> 15 then
    begin
      ShowMessage('Para reimprimir o recibo de uma nota fiscal é necessário que o usuário filtre os títulos com a opção: Nota Fiscal.');
      exit;
    end;

  if dmGeral.FIN_CD_M_RECint_numeronf.Text <> '' then
    begin
      dmGeral.BUS_CD_M_NFE.Close;
      dmGeral.BUS_CD_M_NFE.Data :=
        dmGeral.BUS_CD_M_NFE.DataRequest(
          VarArrayOf([1,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'S', dmGeral.FIN_CD_M_RECint_numeronf.Text]));
    end
  else
    begin
      ShowMessage('Nota Fiscal do(s) título(s) não encontrada!');
      exit;
    end;

  if (dmGeral.BUS_CD_M_NFE.IsEmpty) then
    begin
      ShowMessage('Nenhuma nota fiscal foi encontrada.');
      exit;
    end;

  if dmGeral.BUS_CD_M_NFEstatus.AsInteger <> 1 then
    begin
      ShowMessage('Nota fiscal não foi finalizada.');
      exit;
    end;

  if dmGeral.BUS_CD_M_NFEtipo_nf.AsString <> 'S' then
    begin
      ShowMessage('Nota fiscal deve ser de venda.');
      exit;
    end;

  if (dmGeral.BUS_CD_M_NFE_TIT.RecordCount>0) then
   begin
     vlrTotalTit :=0;
     dmGeral.BUS_CD_M_NFE_TIT.First;
     while not dmGeral.BUS_CD_M_NFE_TIT.eof do
       begin
         if dmGeral.BUS_CD_M_NFE_TIT.FieldByName('INT_DOCIMPRESSO').AsInteger in [3,5,6] then
           begin
             vlrTotalTit :=vlrTotalTit + dmGeral.BUS_CD_M_NFE_TIT.FieldByName('VLR_TITULO').AsCurrency;
           end;
         dmGeral.BUS_CD_M_NFE_TIT.Next;
       end;

     if vlrTotalTit > 0 then
       begin
          try
           dmGeral.BUS_CD_M_NFE.Filtered := true;
           dmGeral.BUS_CD_M_NFE.Filter := 'id_fiscal ='+
            dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsString;

           dmGeral.BUS_CD_M_NFE_TIT.Filtered := true;
           dmGeral.BUS_CD_M_NFE_TIT.Filter := 'int_docimpresso = 3 or int_docimpresso = 5 or int_docimpresso = 6';

           dmGeral.BUS_CD_M_NFE_TIT.First;
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
              dmGeral.BUS_CD_M_NFE.Filtered := false;
              dmGeral.BUS_CD_M_NFE_TIT.Filtered := false;
          end;
       end
     else
      begin
        ShowMessage('Não é permitida a impressão de recibo desta forma de pagamento.');
      end;
   end
  else
    begin
      ShowMessage('Título(s) da Nota Fiscal não encontrada!');
    end;
end;

procedure TFIN_FM_M_REC.btnAtualizaContClick(Sender: TObject);
var
  codigo,Licenca,NossoNroBol,PathImg: string;
  Reimprimir: Boolean;
  LogoEmpresa: TfrxPictureView;
begin


  if dmGeral.FIN_CD_M_REC.IsEmpty then
     begin
       ShowMessage('É necessário selecionar registro.');
       exit;
     end;

  codigo := dmGeral.FIN_CD_M_REC.FieldByName('ID_TITULO').AsString;
  dmGeral.BUS_CD_M_REC.Close;
  dmGeral.BUS_CD_M_REC.Data :=
  dmGeral.BUS_CD_M_REC.DataRequest(
                  VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, codigo]));
  if dmGeral.BUS_CD_M_REC.IsEmpty  then
     begin
       ShowMessage('Registro não encontrado.');
       dmGeral.BUS_CD_M_REC.Close;
       exit;
     end;


  if dmGeral.BUS_CD_M_REC.FieldByName('INT_DOCIMPRESSO').AsInteger IN [1,2,4] then
    begin

      dmGeral.BUS_CD_C_CLI.Close;
      dmGeral.BUS_CD_C_CLI.Data :=
      dmGeral.BUS_CD_C_CLI.DataRequest(
                 VarArrayOf([0,dmGeral.BUS_CD_M_REC.FieldByName('ID_CLIENTE').AsString]));
      if dmGeral.BUS_CD_M_REC.FieldByName('INT_DOCIMPRESSO').AsInteger = 1 then
         begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(dmGeral.FIN_FR_M_REC_DUP.FindObject('Picture1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);

                  LogoEmpresa := TfrxPictureView(dmGeral.FIN_FR_M_REC_DUP.FindObject('Picture2'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);

               end;
            dmGeral.BusFormaPgtos2(0,dmgeral.BUS_CD_M_REC.FieldByName('ID_FORMA_PAG').AsString);
            if dmGeral.BUS_CD_C_FPG2.FieldByName('aval_duplicata').AsBoolean then
              dmGeral.FIN_FR_M_REC_DUP.Variables['Aval'] := QuotedStr( 'T')
            else
              dmGeral.FIN_FR_M_REC_DUP.Variables['Aval'] := QuotedStr('F');
            dmgeral.BUS_CD_C_FPG2.Close;

            dmGeral.FIN_FR_M_REC_DUP.PrepareReport();
            dmGeral.FIN_FR_M_REC_DUP.ShowReport();
         end;

      if dmGeral.BUS_CD_M_REC.FieldByName('INT_DOCIMPRESSO').AsInteger = 2 then
         begin
            dmGeral.FIN_FR_M_REC_PRO.PrepareReport();
            dmGeral.FIN_FR_M_REC_PRO.ShowReport();
         end;

      if dmGeral.BUS_CD_M_REC.FieldByName('INT_DOCIMPRESSO').AsInteger = 4 then
         begin
           Reimprimir  := false;
           NossoNroBol := '0';
          if (trim(dmGeral.FIN_CD_M_REC.FieldByName('BOL_NOSSO_NUMERO').AsString) <> '') then
             begin

               if Dc_MessageDlgCheck('Título com boleto já gerado!' + #13 + 'Deseja reimprimir?', mtConfirmation, [mbYes, mbNo],
                  0, mrNo, true, false,'', nil) = 7 then
                  begin
                    exit;
                  end
               else
                  begin
                    Reimprimir := true;
                    NossoNroBol := dmGeral.FIN_CD_M_REC.FieldByName('BOL_NOSSO_NUMERO').AsString;
                  end;
             end;

          Licenca := '';

          PSQ_FM_X_CTC := TPSQ_FM_X_CTC.Create(Self);

          PSQ_FM_X_CTC.BUS_CD_C_CTC.Close;
          PSQ_FM_X_CTC.BUS_CD_C_CTC.Data :=
             PSQ_FM_X_CTC.BUS_CD_C_CTC.DataRequest(
                  VarArrayOf([3, '1']));

          PSQ_FM_X_CTC.ShowModal;


          if PSQ_FM_X_CTC.BUS_CD_C_CTC.IsEmpty then
             begin
               ShowMessage('Nenhuma conta corrente foi selecionada.');
               exit;
             end;

          try

            if (trim(dmGeral.FIN_CD_M_REC.FieldByName('BOL_ID_CONTA').AsString) <> '') and
               (trim(dmGeral.FIN_CD_M_REC.FieldByName('BOL_ID_CONTA').AsString) <> '0')  then
               begin
                  if PSQ_FM_X_CTC.BUS_CD_C_CTC.FieldByName('ID_CONTA').AsInteger <>
                     dmGeral.FIN_CD_M_REC.FieldByName('BOL_ID_CONTA').AsInteger then
                     begin
                       ShowMessage('A conta corrente selecionada está diferente da conta corrente do título.');
                       abort;
                     end;
               end;

            codigo := dmGeral.FIN_CD_M_REC.FieldByName('ID_TITULO').AsString;

            //dmGeral.FIN_CD_M_REC.Filter   := ' ID_TITULO = ' + dmGeral.FIN_CD_M_REC.FieldByName('ID_TITULO').AsString;

            dmGeral.FIN_CD_M_REC.Filtered := true;
            dmGeral.FIN_CD_M_REC.Filter   := ' INT_SELECAO = TRUE';// + dmGeral.FIN_CD_M_REC.FieldByName('ID_TITULO').AsString;

            FIN_RN_M_BOL.GerarBoleto(2,dmGeral.FIN_CD_M_REC.FieldByName('ID_CLIENTE').AsString,dmGeral.FIN_CD_M_REC,
                                       PSQ_FM_X_CTC.BUS_CD_C_CTC,Reimprimir,StrToInt(NossoNroBol),mmoReciboBoleto);

          finally
            PSQ_FM_X_CTC.Free;
            dmGeral.FIN_CD_M_REC.Filtered := false;
            if trim(codigo) <> '' then
               dmGeral.FIN_CD_M_REC.Locate('ID_TITULO',codigo,[]);
          end;

      end;

     end
   else
     begin
       ShowMessage('Forma de Pagamento deve ser tipo Boleto, Duplicata ou Nota Promissória.');
     end;

     dmGeral.BUS_CD_M_REC.Close;
     dmGeral.BUS_CD_C_CLI.Close;

end;

procedure TFIN_FM_M_REC.btnFiltroClick(Sender: TObject);
var
  txtValor,xPesquisa: String;
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;

    case cbbPesquisa.ItemIndex of
       0: begin
            dmGeral.FIN_CD_M_REC.Close;
            dmGeral.FIN_CD_M_REC.Data :=
            dmGeral.FIN_CD_M_REC.DataRequest(
                  VarArrayOf([15,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, xPesquisa]));
          end;
       12: begin
            txtValor := xPesquisa;
            txtValor := StringReplace(txtValor,'.','',[rfReplaceAll]);
            txtValor := StringReplace(txtValor,',','.',[rfReplaceAll]);
            if trim(txtValor) = '' then
               begin
                 ShowMessage('O valor deve ser digitado.');
                 exit;
               end;

            dmGeral.FIN_CD_M_REC.Close;
            dmGeral.FIN_CD_M_REC.Data :=
            dmGeral.FIN_CD_M_REC.DataRequest(
                  VarArrayOf([13,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, txtValor]));
          end;
       13: begin
            dmGeral.FIN_CD_M_REC.Close;
            dmGeral.FIN_CD_M_REC.Data :=
            dmGeral.FIN_CD_M_REC.DataRequest(
                  VarArrayOf([14,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, xPesquisa]));
           end;
       14: begin
            dmGeral.FIN_CD_M_REC.Close;
            dmGeral.FIN_CD_M_REC.Data :=
            dmGeral.FIN_CD_M_REC.DataRequest(
                  VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, xPesquisa]));
           end;
       15: begin
            dmGeral.FIN_CD_M_REC.Close;
            dmGeral.FIN_CD_M_REC.Data :=
            dmGeral.FIN_CD_M_REC.DataRequest(
                  VarArrayOf([16,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, xPesquisa]));

           end;
    else
       begin
         dmGeral.FIN_CD_M_REC.Close;
         dmGeral.FIN_CD_M_REC.Data :=
         dmGeral.FIN_CD_M_REC.DataRequest(
                  VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, xPesquisa]));
       end;
    end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFIN_FM_M_REC.cbbFormaPagamentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos(4,'''1'',''2'',''4'',''6''');
  cbbFormaPagamento.DropDown;
end;

procedure TFIN_FM_M_REC.cbbFormaPagamentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if (dmGeral.FIN_CD_M_REC.FieldByName('id_forma_pag').text = '') or
     (dmGeral.FIN_CD_M_REC.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       cbbFormaPagamento.SetFocus;
       Abort;
     end;

  dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_REC.FieldByName('id_forma_pag').Text);
  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       ShowMessage('Forma de pagamento não encontrada.');
       dmGeral.FIN_CD_M_REC.FieldByName('id_forma_pag').text := '';
       cbbFormaPagamento.SetFocus;
       Abort;
     end;

  { doc_impresso :
    0 - nenhum
    1 - duplicata
    2 - promissória
    3 - cartão
    4 - boleto
    5 - dinheiro
    6 - cheque
  }

  if not dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [1,2,4,6] then
     begin
       ShowMessage('Só é permitido forma de pagamento do tipo: Duplicata, Promissória, Boleto ou Cheque.');
       dmGeral.FIN_CD_M_REC.FieldByName('id_forma_pag').text := '';
       cbbFormaPagamento.SetFocus;
       Abort;
     end;

  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [6] then
     begin
       gbCheque.Visible := True;
     end
  else
     begin
       gbCheque.Visible := False;
     end;
end;

procedure TFIN_FM_M_REC.cbbLocalTituloEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusLocalTit(1,'%');
  cbbLocalTitulo.DropDown;
end;

procedure TFIN_FM_M_REC.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [2,3,4]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 150;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;

  if cbbPesquisa.ItemIndex in [8,13,14] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TFIN_FM_M_REC.cbbPlanoContasEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCta(90,' '''+'0'+''','''+'3'+''','''+'4'+''' ');
  cbbPlanoContas.DropDown;

end;

procedure TFIN_FM_M_REC.dbGridDblClick(Sender: TObject);
begin
 // inherited;

end;

procedure TFIN_FM_M_REC.dbGridFieldChanged(Sender: TObject; Field: TField);
begin
  inherited;
  if Field.FieldName = 'int_selecao' then
      begin
        //dbGrid.OnDblClick := nil;
          acAdiciona.Enabled  := False;
          acExcluir.Enabled   := False;
          pnlDados.Enabled    := False;
          acAlterar.Enabled   := False;
          acExcluir.Enabled   := dso.State  = dsBrowse;
          acGravar.Enabled    := False;
          acCancelar.Enabled  := true;
          acGravar.Enabled    := False;
          acSair.Enabled      := false;

      end
   else
     begin
        if not dso.DataSet.IsEmpty then
           begin
            if not VerifAcessoUsuConsulta then exit;

             if dso.DataSet.State in [dsBrowse] then
                begin
                  VisualizarDados(true);
                end;
           end
        else
           begin
             showmessage('Não há registro para consultar os dados!');
           end;
     end;
end;

procedure TFIN_FM_M_REC.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  if (not dmGeral.FIN_CD_M_REC.IsEmpty) then
    begin
      dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_REC.FieldByName('ID_FORMA_PAG').AsString);
      gbCheque.Visible := true;
      if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger <> 6) then
         begin
           gbCheque.Visible := false;
         end;
    end;
end;

procedure TFIN_FM_M_REC.dpkEmissaoExit(Sender: TObject);
begin
  inherited;

    if btnGrava.Focused or btnCancelar.Focused then
      begin
        exit;
      end;

   if (dmGeral.FIN_CD_M_REC.FieldByName('DTA_EMISSAO').AsString = '')  then
      begin
       ShowMessage('Data de Emissão deve ser preenchida.');
       dpkEmissao.SetFocus;
       exit;
      end;

   if  dmGeral.FIN_CD_M_REC.State in [dsInsert]   then
      begin
       if (dmGeral.FIN_CD_M_REC.FieldByName('DTA_EMISSAO').AsDateTime - xDataSis)< -365  then
          begin
            ShowMessage('Data de emissão não pode ser menor em mais de 1 ano da data atual.');
            dpkEmissao.SetFocus;
            exit;
          end;
      end;

end;

procedure TFIN_FM_M_REC.dpkPrevBaixaExit(Sender: TObject);
begin
  inherited;
   if btnGrava.Focused or btnCancelar.Focused then
      begin
        exit;
      end;

    dmGeral.FIN_CD_M_REC.FieldByName('DTA_VENC_ORIGINAL').AsString := '';
    if (dmGeral.FIN_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsString = '')  then
      begin
       ShowMessage('Data de Previsão de Baixa deve ser preenchida.');
       dpkPrevBaixa.SetFocus;
       exit;
      end;

   if dmGeral.FIN_CD_M_REC.FieldByName('dta_original').AsDateTime >
      dmGeral.FIN_CD_M_REC.FieldByName('dta_vencimento').AsDateTime then
       begin
         ShowMessage('Data de previsão de baixa não pode ser menor que a data de vencimento.');
          dpkPrevBaixa.SetFocus;
         exit;
       end;

    if (abs(dmGeral.FIN_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime -
        dmGeral.FIN_CD_M_REC.FieldByName('DTA_EMISSAO').AsDateTime)> 1825)  then
       begin
          ShowMessage('Data de previsão de baixa não pode ser menor ou maior em mais de 5 anos da data de emissão.');
          dpkPrevBaixa.SetFocus;
          exit;
       end;


      dmGeral.FIN_CD_M_REC.FieldByName('DTA_VENC_ORIGINAL').AsDateTime :=
         dmGeral.FIN_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime;


end;

procedure TFIN_FM_M_REC.dpkVencimentoExit(Sender: TObject);
begin
  inherited;
  if btnGrava.Focused or btnCancelar.Focused then
      begin
        exit;
      end;


   if (dmGeral.FIN_CD_M_REC.FieldByName('DTA_ORIGINAL').AsString = '')  then
      begin
       ShowMessage('Data de Vencimento deve ser preenchida.');
       dpkVencimento.SetFocus;
       exit;
      end;

   if dmGeral.FIN_CD_M_REC.FieldByName('dta_emissao').AsDateTime >
      dmGeral.FIN_CD_M_REC.FieldByName('dta_original').AsDateTime  then
      begin
        ShowMessage('Data de vencimento não pode ser menor que a data de emissão.');
        dpkVencimento.SetFocus;
        exit;
      end;
end;

procedure TFIN_FM_M_REC.dsoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not dso.DataSet.IsEmpty then
     begin
        if dso.DataSet.State in [dsBrowse] then
           begin
             dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_RECid_forma_pag.AsString);
             gbCheque.Visible := false;
             if dmGeral.BUS_CD_C_FPGdoc_impresso.AsInteger = 6 then  //doc impresso = cheque
                begin
                  gbCheque.Visible := true;
                end;
           end;
     end;
end;

procedure TFIN_FM_M_REC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.FIN_CD_M_REC.Close;
  FreeAndNil(FIN_FM_M_REC);
end;

procedure TFIN_FM_M_REC.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_REC.Close;
  dmGeral.FIN_CD_M_REC.Data := dmGeral.FIN_CD_M_REC.DataRequest(VarArrayOf([0, '']));
  dmGeral.FIN_CD_M_REC.Open;

  dmGeral.BusFormaPgtos(4,'''1'',''2'',''4'',''6''');
  dmGeral.BusLocalTit(1,'%');
  dmGeral.BusPlanoCta(90,' '''+'0'+''','''+'3'+''','''+'4'+''' ');
  gbCheque.Visible := False;
end;

procedure TFIN_FM_M_REC.FormShow(Sender: TObject);
begin
  inherited;
  lbObra.Visible :=  dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean;
  txtObra.Visible := dmgeral.cad_cd_c_par_mod.FieldByName('CTC').AsBoolean;

  dmGeral.BUS_CD_C_FU2.Close;
  dmGeral.BUS_CD_C_FU2.Data :=
         dmGeral.BUS_CD_C_FU2.DataRequest(VarArrayOf([0, IntToStr(xFuncionario)]));
  if dmGeral.BUS_CD_C_FU2.FieldByName('seg_alterar_local_tit_fin').AsBoolean = false then
     begin
       Alterarolocaldottulo1.enabled := false;
     end;
end;

procedure TFIN_FM_M_REC.txtClientesButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.FIN_CD_M_REC.FieldByName('ID_CLIENTE').AsInteger :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;

           dmGeral.FIN_CD_M_REC.FieldByName('INT_NOMECLI').Text :=
              PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TFIN_FM_M_REC.txtClientesExit(Sender: TObject);
begin
  inherited;
    if btnGrava.Focused  then
       begin
         exit;
       end;

    if btnCancelar.Focused then
       begin
         exit;
       end;

    dmGeral.FIN_CD_M_REC.FieldByName('INT_NOMECLI').Text := '';

    if dmGeral.FIN_CD_M_REC.FieldByName('ID_CLIENTE').Text = '' then
       begin
         ShowMessage('O campo "Cliente" deve ser prenchido.');
         abort;
       end;

    dmGeral.BUS_CD_C_CLI.Close;
    dmGeral.BUS_CD_C_CLI.Data :=
    dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtClientes.Text]));

    if not dmGeral.CAD_CD_C_CLI_TesValObrigatorio(dmGeral.BUS_CD_C_CLI) then
       begin
         dmGeral.FIN_CD_M_REC.FieldByName('INT_NOMECLI').Text :='';
         txtClientes
         .SetFocus;
         abort;
       end;

    dmGeral.FIN_CD_M_REC.FieldByName('INT_NOMECLI').Text :=
         dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
end;

procedure TFIN_FM_M_REC.txtNTituloExit(Sender: TObject);
var
  NumTituloValid:Boolean;
begin
  inherited;
  NumTituloValid := true;

  if (trim(dmGeral.FIN_CD_M_REC.FieldByName('NUM_PARCELA').text) = '') or
     (dmGeral.FIN_CD_M_REC.FieldByName('NUM_PARCELA').text = '0') then
      dmGeral.FIN_CD_M_REC.FieldByName('NUM_PARCELA').Text :=
              dmGeral.FIN_CD_M_REC.FieldByName('ID_TITULO').Text;

  if (pos('-',txtNTitulo.text) <> 0) then
    begin
      if (pos('-',txtNTitulo.text)=Length(txtNTitulo.text)) then
        begin
          NumTituloValid := false;
        end;

      if (pos('/',txtNTitulo.text)=0) then
        begin
           NumTituloValid := false;
        end
      else
        begin
          if (pos('/',txtNTitulo.text)=Length(txtNTitulo.text)) then
            begin
               NumTituloValid := false;
            end;
        end;
    end;

  if (NumTituloValid = false) then
    begin
      ShowMessage('Nº Titulo inválido.');
      txtNTitulo.SetFocus;
    end;
end;

procedure TFIN_FM_M_REC.txtNTituloKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9','/','-',#8]) then
    begin
      Key := #0;
      Beep;
    end
  else
    begin
        if (Key in ['0']) then
          begin
            if (txtNTitulo.text = '') then
              begin
                Key := #0;
                Beep;
              end;
          end;
        if (Key in ['-']) then
          begin
            if ((txtNTitulo.text = '') or (pos('-',txtNTitulo.text) <> 0)) then
              begin
                Key := #0;
                Beep;
              end;
          end;
        if (Key in ['/']) then
          begin
            if ((txtNTitulo.text = '') or (pos('-',txtNTitulo.text) = 0) or (pos('-',txtNTitulo.text)=Length(txtNTitulo.text))  ) then
              begin
                Key := #0;
                Beep;
              end;
          end;
    end;
end;

procedure TFIN_FM_M_REC.txtobraButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_OBR := TPSQ_FM_X_OBR.Create(Self);
  PSQ_FM_X_OBR.ShowModal;
  if not PSQ_FM_X_OBR.BUS_CD_C_OBR.IsEmpty then
    begin
      dmGeral.FIN_CD_M_REC.FieldByName('ID_OBRA').AsString :=
      PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('ID_OBRA').AsString;
    end;
  PSQ_FM_X_OBR.Free;
end;

procedure TFIN_FM_M_REC.txtobraExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmgeral.FIN_CD_M_REC.FieldByName('id_obra').Text) = '' then
     begin
       ShowMessage('O campo "Obra" não foi preenchido.');
       exit;
     end;

  dmCtc.BusObra(0,dmgeral.FIN_CD_M_REC.FieldByName('id_obra').Text);
  if dmCtc.BUS_CD_C_OBR.IsEmpty then
     begin
       ShowMessage('Obra não Cadastrado.');
       exit;
     end;

  dmGeral.FIN_CD_M_REC.FieldByName('int_descobra').Text :=
         dmCtc.BUS_CD_C_OBR.FieldByName('descricao').AsString;

end;

procedure TFIN_FM_M_REC.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFIN_FM_M_REC.txtVlrTituloExit(Sender: TObject);
begin
  inherited;
  if txtBanco.CanFocus then
     begin
       txtBanco.SetFocus
     end
  else
     begin
       btnGrava.SetFocus;
     end;
end;

procedure TFIN_FM_M_REC.txtVlrTituloKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if pos(',',txtVlrTitulo.Text)>0 then
    begin
      if (Length(copy(txtVlrTitulo.Text,pos(',',txtVlrTitulo.Text)))>2) then
        begin
           if not ( Key = #8) then
            Key := #0;
        end;
    end;
end;

end.
