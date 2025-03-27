unit FAT_UN_M_CXA_NFE_CRT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrNFe,pcnConversao,ACBrUtil, Vcl.OleCtrls, SHDocVw,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  Vcl.StdCtrls, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Data.DB, vcl.wwdatsrc, Vcl.Mask,
  JvExMask, JvToolEdit;

type
  TFAT_FM_M_CXA_NFE_CRT = class(TForm)
    pnlTop: TPanel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    dgNota: TwwDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    dgItens: TwwDBGrid;
    MemoDados: TMemo;
    MemoResp: TMemo;
    WBResposta: TWebBrowser;
    btnCorrecao: TButton;
    btnSair: TButton;
    acBotoes: TActionList;
    acAdiciona: TAction;
    acAlterar: TAction;
    acExcluir: TAction;
    acGravar: TAction;
    acCancelar: TAction;
    acImprime: TAction;
    acSair: TAction;
    acRefresh: TAction;
    imgBotoesInativo: TImageList;
    imgBotoesAtivoVe: TImageList;
    imgBotoesAtivoAz: TImageList;
    imgBotoesAtivo: TImageList;
    ImgPequena: TImageList;
    ImgPequenaAz: TImageList;
    ImgPequenaVe: TImageList;
    dso: TwwDataSource;
    dsoIte: TwwDataSource;
    Label3: TLabel;
    gbFiltro: TGroupBox;
    pnlData: TPanel;
    Label4: TLabel;
    txtDtaIni: TJvDateEdit;
    txtDtaFin: TJvDateEdit;
    cbbFiltro: TComboBox;
    txtPesquisa: TEdit;
    btnPesquisa: TcxButton;
    Label5: TLabel;
    procedure btnCorrecaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cbbFiltroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
    var
      NFE: TACBrNFe;
  end;

var
  FAT_FM_M_CXA_NFE_CRT: TFAT_FM_M_CXA_NFE_CRT;


implementation

{$R *.dfm}

uses uDmGeral;

procedure TFAT_FM_M_CXA_NFE_CRT.btnCorrecaoClick(Sender: TObject);
var
 Chave, idLote, CNPJ, nSeqEvento, Correcao : string;
 Ano, Mes, Dia : Word;

 //memoRespWS,MemoResp:TMemo;
begin
   MemoDados.Clear;


   if dmGeral.BUS_CD_M_NFE_CXA.IsEmpty then
     begin
       ShowMessage('Não existe registro de nota fiscal.');
       exit;
     end;

   if not (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('STATUS').AsInteger = 1) then
      begin
        ShowMessage('Só é permitido para nota fiscal encerrada.');
        exit;
      end;

   if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_cod_sit').AsString = '02') then
      begin
        ShowMessage('Não é permitida para nota fiscal CANCELADA.');
        exit;
      end;

   if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_cod_sit').AsString = '04') then
      begin
        ShowMessage('Não é permitida para nota fiscal DENEGADA.');
        exit;
      end;


   if (dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_cod_sit').AsString = '05') then
      begin
        ShowMessage('Não é permitida para nota fiscal INUTILIZADA.');
        exit;
      end;

   if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('nfe_ecf').AsInteger <> 0 then
      begin
        ShowMessage('Só é permitida carta de correção pra NFe.');
        exit;
      end;

   if trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString) = '' then
      begin
        ShowMessage('CHAVE da nota fiscal não encontrada.');
        exit;
      end;

  { if not FilesExists(NFe.Configuracoes.Arquivos.PathSalvar+
                     Trim(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString)+'-nfe.xml') then
      begin
        Showmessage('Arquivo XML não foi encontrado para o envio.');
        exit;
      end;

   xml := NFe.Configuracoes.Arquivos.PathSalvar+'\'+
                               dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString+'-nfe.xml';}

  //if not(InputQuery('WebServices Eventos: Carta de Correção', 'Chave da NF-e', Chave)) then
  //    exit;
  //Chave := Trim(OnlyNumber(Chave));

  idLote := '';
  DecodeDate(xDataSis, Ano, Mes, Dia);
  idLote := inttostr(Ano)+inttostr(Mes)+inttostr(Dia);
  idLote := OnlyNumber(idLote);


  //if not(InputQuery('WebServices Eventos: Carta de Correção', 'Identificador de controle do Lote de envio do Evento', idLote)) then
  ///   exit;
  //CNPJ := copy(Chave,7,14);
  //if not(InputQuery('WebServices Eventos: Carta de Correção', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
  //   exit;

  Chave := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NFE_CHAVE').AsString;
  CNPJ := copy(Chave,7,14);

  nSeqEvento := '1';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Sequencial do evento para o mesmo tipo de evento', nSeqEvento)) then
     exit;
  Correcao := 'Correção a ser considerada, texto livre. A correção mais recente substitui as anteriores.';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Correção a ser considerada', Correcao)) then
     exit;
  NFe.EventoNFe.Evento.Clear;
  with NFE.EventoNFe.Evento.Add do
   begin
     infEvento.chNFe := Chave;
     infEvento.CNPJ   := CNPJ;
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCCe;
     infEvento.nSeqEvento := StrToInt(nSeqEvento);
     infEvento.detEvento.xCorrecao := Correcao;
   end;
  NFe.EnviarEvento(StrToInt(idLote));

  MemoResp.Lines.Text := UTF8Encode(NFe.WebServices.EnvEvento.RetWS);
  LoadXML(NFe.WebServices.EnvEvento.RetWS, WBResposta);
  MemoDados.Text := MemoResp.Text;

  //v antigo
  //LoadXML(MemoResp, WBResposta);
end;

procedure TFAT_FM_M_CXA_NFE_CRT.btnPesquisaClick(Sender: TObject);
var
  DataInicial,DataFinal:TDateTime;
begin
    Screen.Cursor := crHourGlass;
  try
    inherited;




    if cbbFiltro.ItemIndex = 0 then
      begin
       if trim(txtPesquisa.Text)='' then
         begin
           ShowMessage('Deve ser preenchido o número da nota fiscal.');
           exit;
         end;

       dmGeral.BUS_CD_M_NFE_CXA.Close;
       dmGeral.BUS_CD_M_NFE_CXA.Data :=
       dmGeral.BUS_CD_M_NFE_CXA.DataRequest(
                 VarArrayOf([107,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,cbbFiltro.ItemIndex,trim(txtPesquisa.Text)]));
      end;

    if cbbFiltro.ItemIndex = 1 then
      begin
        if (txtDtaIni.Text = '  /  /    ') or  (txtDtaFin.Text = '  /  /    ') then
          begin
            ShowMessage('Deve ser preenchido o período');
            exit;
          end;

         DataInicial := StrToDate(txtDtaIni.Text);
         DataFinal   := StrToDate(txtDtaFin.Text);

         if DataInicial > DataFinal then
          begin
            ShowMessage('A data inicial não deve ser maior que a data final.');
            exit;
          end;

         dmGeral.BUS_CD_M_NFE_CXA.Close;
         dmGeral.BUS_CD_M_NFE_CXA.Data :=
         dmGeral.BUS_CD_M_NFE_CXA.DataRequest(
                   VarArrayOf([107,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,cbbFiltro.ItemIndex,
                                                 txtDtaIni.Text,txtDtaFin.Text]));
      end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFAT_FM_M_CXA_NFE_CRT.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFAT_FM_M_CXA_NFE_CRT.cbbFiltroChange(Sender: TObject);
begin
  txtPesquisa.Text := '';
  txtDtaIni.Text := '  /  /    ';
  txtDtaFin.Text := '  /  /    ';
  if cbbFiltro.ItemIndex = 0 then
    begin
      pnlData.Visible := false;
      txtPesquisa.Visible := true;
      btnPesquisa.Left := 311;
    end;

  if cbbFiltro.ItemIndex = 1 then
    begin
      txtPesquisa.Visible := false;
      pnlData.Visible := true;
      pnlData.Top := 55;
      pnlData.Left := 128;
      btnPesquisa.Left := 343;
    end;

end;

procedure TFAT_FM_M_CXA_NFE_CRT.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFAT_FM_M_CXA_NFE_CRT.FormShow(Sender: TObject);
begin
   dmGeral.AtualizarGridItens(dgItens,'int_desc_item',10,4);
   pnlData.Visible := false;
   txtPesquisa.Visible := true;
   btnPesquisa.Left := 311;

   dmGeral.BUS_CD_M_NFE_CXA.Close;
   dmGeral.BUS_CD_M_NFE_CXA.Data :=
        dmGeral.BUS_CD_M_NFE_CXA.DataRequest(
                 VarArrayOf([96,0,'','','']));

   txtPesquisa.SetFocus;
   WBResposta.Visible := false;
   WBResposta.Top     := 350;
   MemoResp.Visible   := false;
end;

procedure TFAT_FM_M_CXA_NFE_CRT.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  // v antigo
  //MyMemo.Lines.SaveToFile(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
  //MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');


  ACBrUtil.WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml',
                        ACBrUtil.ConverteXMLtoUTF8( RetWS ), False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');


end;

end.
