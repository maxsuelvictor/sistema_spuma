unit FAT_UN_M_MDF;

interface

uses IniFiles, ShellAPI,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Buttons,SHDocVw, pcnConversao,
  pmdfeConversaoMDFe,
  ACBrMDFe, ACBrMDFeDAMDFeClass, ACBrBase, ACBrDFe, ACBrDFeSSL,
  Vcl.OleCtrls, ACBrUtil,  frxClass, frxExportPDF,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  ACBrMail, Vcl.Menus, ACBrMDFeDAMDFEFR, Vcl.ComCtrls, ACBrDFeReport;

type
  TFAT_FM_M_MDF = class(TForm)
    lblTitulo: TLabel;
    pnlDireita: TPanel;
    btnStatusServ: TButton;
    btnGerarMDFe: TButton;
    btnGerarPDF: TButton;
    btnCriarEnviar: TButton;
    btnConsultarChave: TButton;
    btnGerarPDFEvento: TButton;
    btnImprimirEvento: TButton;
    btnImprimir: TButton;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwMDFe: TTreeView;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    OpenDialog1: TOpenDialog;
    btnCancelamento: TButton;
    DanfeMfd: TACBrMDFeDAMDFEFR;
    txtAmbiente: TEdit;
    grdMDFe: TwwDBGrid;
    Label97: TLabel;
    lblChave: TLabel;
    txtChave: TDBEdit;
    pnlAberto: TPanel;
    lblAberto: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    Panel5: TPanel;
    Label6: TLabel;
    btnConsultaNaoEnc: TButton;
    btnEncerrar: TButton;
    ACBrMail1: TACBrMail;
    MDFE: TACBrMDFe;
    Panel1: TPanel;
    Label1: TLabel;
    pmApoio: TPopupMenu;
    btnFaturarAposXML: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    procedure btnStatusServClick(Sender: TObject);
    procedure btnCriarEnviarClick(Sender: TObject);
    procedure btnConsultarChaveClick(Sender: TObject);
    procedure btnGerarMDFeClick(Sender: TObject);
    procedure btnGerarPDFClick(Sender: TObject);
    procedure btnGerarPDFEventoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnImprimirEventoClick(Sender: TObject);
    procedure MDFEStatusChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelamentoClick(Sender: TObject);
    procedure grdMDFeCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultaNaoEncClick(Sender: TObject);
    procedure btnEncerrarClick(Sender: TObject);
    procedure MemoRespChange(Sender: TObject);
    procedure btnFaturarAposXMLClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ConfiguraComponente;
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);

    procedure LoadXML_2(RetWS: String; MyWebBrowser: TWebBrowser);

    procedure GerarMDFe(NumMDFe : Integer);
    //procedure AtualizarStatusPcaPed;
    procedure VerCertificado;
    function  ValidRomaneio: Boolean;
    function  ValidManifesto: boolean;
  public
    { Public declarations }
  end;

var
  FAT_FM_M_MDF: TFAT_FM_M_MDF;

implementation

{$R *.dfm}

uses FAT_UN_M_MDF_STA, uDmGeral, enFunc, uProxy, uDmSgq, blcksock,enConstantes,
  FAT_UN_M_ROM;

procedure TFAT_FM_M_MDF.MDFEStatusChange(Sender: TObject);
begin
  case MDFE.Status of
  stMDFeIdle : begin
               if ( FAT_FM_MDF_STA <> nil ) then FAT_FM_MDF_STA.Hide;
              end;
  stMDFeStatusServico : begin
                        if ( FAT_FM_MDF_STA = nil )
                         then FAT_FM_MDF_STA := TFAT_FM_MDF_STA.Create(Application);
                        FAT_FM_MDF_STA.lblStatus.Caption := 'Verificando Status do servico...';
                        FAT_FM_MDF_STA.Show;
                        FAT_FM_MDF_STA.BringToFront;
                       end;
  stMDFeRecepcao : begin
                   if ( FAT_FM_MDF_STA = nil )
                    then FAT_FM_MDF_STA := TFAT_FM_MDF_STA.Create(Application);
                   FAT_FM_MDF_STA.lblStatus.Caption := 'Enviando dados do MDFe...';
                   FAT_FM_MDF_STA.Show;
                   FAT_FM_MDF_STA.BringToFront;
                  end;
  stMDFeRetRecepcao : begin
                      if ( FAT_FM_MDF_STA = nil )
                       then FAT_FM_MDF_STA := TFAT_FM_MDF_STA.Create(Application);
                      FAT_FM_MDF_STA.lblStatus.Caption := 'Recebendo dados do MDFe...';
                      FAT_FM_MDF_STA.Show;
                      FAT_FM_MDF_STA.BringToFront;
                     end;
  stMDFeConsulta : begin
                   if ( FAT_FM_MDF_STA = nil )
                    then FAT_FM_MDF_STA := TFAT_FM_MDF_STA.Create(Application);
                   FAT_FM_MDF_STA.lblStatus.Caption := 'Consultando MDFe...';
                   FAT_FM_MDF_STA.Show;
                   FAT_FM_MDF_STA.BringToFront;
                  end;
  stMDFeEvento : begin
                  if ( FAT_FM_MDF_STA = nil )
                   then FAT_FM_MDF_STA := TFAT_FM_MDF_STA.Create(Application);
                  FAT_FM_MDF_STA.lblStatus.Caption := 'Enviando cancelamento de MDFe...';
                  FAT_FM_MDF_STA.Show;
                  FAT_FM_MDF_STA.BringToFront;
                 end;
  stMDFeRecibo : begin
                 if ( FAT_FM_MDF_STA = nil )
                  then FAT_FM_MDF_STA := TFAT_FM_MDF_STA.Create(Application);
                 FAT_FM_MDF_STA.lblStatus.Caption := 'Consultando Recibo de Lote...';
                 FAT_FM_MDF_STA.Show;
                 FAT_FM_MDF_STA.BringToFront;
                end;
 end;
 Application.ProcessMessages;
end;

procedure TFAT_FM_M_MDF.MemoRespChange(Sender: TObject);
begin

end;

//Atualiza o campo status para valor 1 do carregamento de pedido. Responsavel:Luan
{procedure  TFAT_FM_M_MDF.AtualizarStatusPcaPed;
begin
   dmGeral.BUS_CD_M_PCA.Close;
   dmGeral.BUS_CD_M_PCA.Data :=
   dmGeral.BUS_CD_M_PCA.DataRequest(
              VarArrayOf([0, dmGeral.FAT_CD_M_ROM.FieldByName('ID_PCA').AsString]));

   if not dmgeral.BUS_CD_M_PCA.IsEmpty then
     begin
      dmgeral.BUS_CD_M_PCA.Edit;
      dmGeral.BUS_CD_M_PCA.FieldByName('STATUS').AsInteger := 1;
      dmgeral.BUS_CD_M_PCA.Post;
      dmgeral.BUS_CD_M_PCA.ApplyUpdates(0);
     end;
end;}

function TFAT_FM_M_MDF.ValidManifesto: boolean;
begin
  result := true;

  if dmGeral.FAT_CD_M_ROM.IsEmpty then
     begin
       ShowMessage('Nenhum manifesto eletrônico foi selecionado.');
       result := false;
     end;

  if not (dmGeral.FAT_CD_M_ROM.FieldByName('mdf_numero').AsInteger > 0) then
     begin
       ShowMessage('Manifesto eletrônico sem número ainda.');
       result := false;
     end;

  if dmGeral.FAT_CD_M_ROM.FieldByName('status').AsInteger <> 1 then
     begin
       ShowMessage('Manifesto eletrônico não foi encerrado.');
       result := false;
     end;


end;

function TFAT_FM_M_MDF.ValidRomaneio: Boolean;
begin
  result := true;

  if dmGeral.FAT_CD_M_ROM.IsEmpty then
     begin
       ShowMessage('Nenhum manifesto eletrônico foi selecionado.');
       result := false;
     end;

  if not (dmGeral.FAT_CD_M_ROM.FieldByName('mdf_numero').AsInteger > 0) then
     begin
       ShowMessage('Manifesto eletrônico sem número.');
       result := false;
     end;

  if trim(dmGeral.FAT_CD_M_ROM.FieldByName('chave_mdf').AsString) = '' then
     begin
       ShowMessage('Chave não encontrada.');
       result := false;
     end;

  if dmGeral.FAT_CD_M_ROM.FieldByName('status').AsInteger <> 1 then
     begin
       ShowMessage('Manifesto eletrônico não foi encerrado.');
       result := false;
     end;
end;

procedure TFAT_FM_M_MDF.VerCertificado;
Var xDias:Double;
    xDiasFalta:Double;
begin
  xDias:=10;

  // v antigo
  // xDiasFalta:=MDFE.Configuracoes.Certificados.DataVenc-Date;
  xDiasFalta:= MDFE.SSL.CertDataVenc;
  if xDiasFalta<=xDias then
     begin
       MemoDados.Lines.Clear;
       MemoDados.Lines.Add('Certificado:');
       MemoDados.Lines.Add('Faltam '+floatToStr(xDiasFalta)+' para seu certificado expirar.');
     end;
end;

procedure TFAT_FM_M_MDF.BitBtn1Click(Sender: TObject);
var
  vChave, vProtocolo, vUF, vCodMun : String;
begin

  if trim(dmGeral.FAT_CD_M_ROM.FieldByName('CHAVE_MDF').AsString) <> '' then
     begin
       vChave := dmGeral.FAT_CD_M_ROM.FieldByName('CHAVE_MDF').AsString;
     end
  else
     begin
       ShowMessage('Chave do MDF-e não foi encontrado no manifesto do sistema.');
       abort;
     end;

  if not(InputQuery('WebServices Enviar', 'Chave do Manifesto', vChave)) then
    exit;


  if trim(dmGeral.FAT_CD_M_ROM.FieldByName('mdf_protocolo').AsString) <> '' then
     begin
       vProtocolo := dmGeral.FAT_CD_M_ROM.FieldByName('mdf_protocolo').AsString;
     end
  else
     begin
       ShowMessage('Chave do MDF-e não foi encontrado no manifesto do sistema.');
       abort;
     end;


  if not(InputQuery('WebServices Enviar', 'Número do Protocolo', vProtocolo)) then
    exit;

  if not(InputQuery('WebServices Enviar', 'Estado de Encerramento', vUF)) then
    exit;

  if not(InputQuery('WebServices Enviar', 'Cód. Município IBGE de Encerramento', vCodMun)) then
    exit;

  if Dc_MessageDlgCheck('Deseja mesmo encerrar o MDF-e : '+
     dmGeral.FAT_CD_M_ROMmdf_numero.Text, mtConfirmation, [mbYes, mbNo],0, mrNo, true, false,'', nil) = 7 then
     begin
       exit;
     end;

  MDFE.Manifestos.Clear;
  MDFE.EventoMDFe.Evento.Clear;

  with MDFE.EventoMDFe.Evento.New do
  begin
    infEvento.chMDFe   := vChave;
    infEvento.CNPJCPF  := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CNPJ').AsString;;
    infEvento.dhEvento := now;
//  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
//                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
//                  teEncerramento);
    infEvento.tpEvento   := teEncerramento;
    infEvento.nSeqEvento := 1;

    infEvento.detEvento.nProt := vProtocolo;
    infEvento.detEvento.dtEnc := Date;
    infEvento.detEvento.cUF   := UFtoCUF( vUF );
    infEvento.detEvento.cMun  := StrToInt(vCodMun);
  end;

  MDFE.EnviarEvento( 1 ); // 1 = Numero do Lote

  MemoResp.Lines.Text   := ACBrUTF8ToAnsi(MDFE.WebServices.EnvEvento.RetWS);
  memoRespWS.Lines.Text := ACBrUTF8ToAnsi(MDFE.WebServices.EnvEvento.RetWS);
  LoadXML(MemoResp, WBResposta);

  try
  dmGeral.FAT_CD_M_ROM.BeforeEdit := nil;
  dmGeral.FAT_CD_M_ROM.Edit;
  dmGeral.FAT_CD_M_ROMmdf_encerrado.AsBoolean := True;
  dmGeral.FAT_CD_M_ROM.Post;
  dmGeral.FAT_CD_M_ROM.ApplyUpdates(0);
  finally
    dmGeral.FAT_CD_M_ROM.BeforeEdit :=  dmGeral.FAT_CD_M_ROMBeforeEdit;
  end;
end;

procedure TFAT_FM_M_MDF.BitBtn2Click(Sender: TObject);
var
  NomeArq: String;
begin

  if trim(dmGeral.FAT_CD_M_ROM.FieldByName('chave_mdf').AsString) = '' then
     begin
       Showmessage('Manifesto de carga sem nro de chave.');
       abort;
     end;

  if MessageDlg('Tem certeza que o xml realmente não tem nro de protocolo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        OpenDialog1.Title := 'Selecione a MDFe';
        OpenDialog1.DefaultExt := '*-MDFe.XML';
        OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.XML)|*-MDFe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';

        OpenDialog1.InitialDir := MDFE.Configuracoes.Arquivos.PathSalvar;

        if OpenDialog1.Execute then
        begin
          MDFE.Manifestos.Clear;
          MDFE.Manifestos.LoadFromFile(OpenDialog1.FileName);
          MDFE.Consultar;

          ShowMessage(MDFE.WebServices.Consulta.Protocolo);

          MemoResp.Lines.Text := MDFE.WebServices.Consulta.RetWS;
          memoRespWS.Lines.Text := MDFE.WebServices.Consulta.RetornoWS;
          LoadXML_2(MDFE.WebServices.Consulta.RetornoWS, WBResposta);
          NomeArq := OpenDialog1.FileName;

          if pos(UpperCase('-MDFe.xml'), UpperCase(NomeArq)) > 0 then
             NomeArq := StringReplace(NomeArq, '-MDFe.xml', '-procMDFe.xml', [rfIgnoreCase]);

          MDFE.Manifestos.Items[0].GravarXML(NomeArq);
          ShowMessage('Arquivo gravado em: ' + NomeArq);
          memoLog.Lines.Add('Arquivo gravado em: ' + NomeArq);
        end;
     end;
end;

procedure TFAT_FM_M_MDF.btnCancelamentoClick(Sender: TObject);
var
  vAux: String;
  xml, numLote: string;
  Ano, Mes, Dia : Word;
  CanStatus:string;
  CanProtocolo:string;

begin

 if not ValidRomaneio then
    begin
      abort;
    end;


 {OpenDialog1.Title := 'Selecione o MDFe';
 OpenDialog1.DefaultExt := '*-MDFe.xml';
 OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';

 OpenDialog1.InitialDir := MDFE.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin }

     DecodeDate(xDataSis, Ano, Mes, Dia);
     numLote := inttostr(Ano)+inttostr(Mes)+inttostr(Dia);
     numLote := OnlyNumber(numLote);

     xml := MDFE.Configuracoes.Arquivos.PathSalvar+
            dmGeral.FAT_CD_M_ROM.FieldByName('CHAVE_MDF').AsString+'-mdfe.xml';


     MDFE.Manifestos.Clear;
     MDFE.Manifestos.LoadFromFile(xml);
     if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux))
        then exit;

     MDFE.EventoMDFe.Evento.Clear;

     with MDFE.EventoMDFe.Evento.Add do
          begin
           infEvento.chMDFe   := Copy(MDFE.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
           infEvento.CNPJCPF     := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CNPJ').AsString;
           infEvento.dhEvento := now;
           //  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
           //                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
           //                  teEncerramento);
           infEvento.tpEvento   := teCancelamento;
           infEvento.nSeqEvento := 1;

           infEvento.detEvento.nProt := MDFE.Manifestos.Items[0].MDFe.procMDFe.nProt;
           infEvento.detEvento.xJust := trim(vAux);
          end;

     MDFE.EnviarEvento(strtoint(NumLote));

     MemoResp.Lines.Text   := UTF8Encode(MDFE.WebServices.EnvEvento.RetWS);
     memoRespWS.Lines.Text := UTF8Encode(MDFE.WebServices.EnvEvento.RetWS);
     LoadXML(MemoResp, WBResposta);


     MDFE.WebServices.Consulta.MDFeChave := Trim(dmGeral.FAT_CD_M_ROM.FieldByName('CHAVE_MDF').AsString);
     MDFE.WebServices.Consulta.Executar;
     CanStatus    := IntToStr(MDFE.WebServices.Consulta.cStat);
     CanProtocolo := MDFE.WebServices.Consulta.Protocolo;
                                                                      //  if NFe.WebServices.EnvEvento.cStat = 101 then
     //101: Cancelamento de NF-e homologado';
     //135: Evento registrado e vinculado a NF-e';

   //  if tipo = 0 then // Se for um cancelamento normal
   //     begin
           if (trim(CanStatus) = '101') or (trim(CanStatus) = '135') then
              begin
                {try
                  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                  retorno  := SMPrincipal.enCancelNfe(dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsInteger,CanStatus,CanProtocolo,ReabrePed);
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
                end;  }

                try

                    try
                      dmGeral.FAT_CD_M_ROM.BeforeEdit := nil;

                      dmGeral.FAT_CD_M_ROM.Edit;
                      dmGeral.FAT_CD_M_ROM.FieldByName('canc_motivo').AsString   :=  vAux;
                      dmGeral.FAT_CD_M_ROM.FieldByName('canc_data').AsDateTime   :=  xDataSis;
                      dmGeral.FAT_CD_M_ROM.FieldByName('canc_usuario').AsInteger :=  xFuncionario;
                      dmGeral.FAT_CD_M_ROM.FieldByName('cancelado').AsBoolean    :=  true;
                      dmGeral.FAT_CD_M_ROM.FieldByName('status').AsInteger       :=  1;
                      if dmGeral.FAT_CD_M_ROM.ApplyUpdates(0) = 0 then
                         begin
                           ShowMessage('Manifesto eletrônico cancelado com sucesso');
                         end
                      else
                         begin
                           dmGeral.FAT_CD_M_ROM.Cancel;
                           ShowMessage('Manifesto eletrônico homologado na SEFAZ, mas ficou faltando finalizar o processo no sistema!');
                           ShowMessage('Por favor entre em contato com suporte.');
                         end;
                    except
                      on e:exception do
                         begin
                           Showmessage('Erro ao tentar gravar os dados do Manifesto: ' + #13 + e.Message);
                         end;
                    end;
                finally
                  dmGeral.FAT_CD_M_ROM.BeforeEdit := dmGeral.FAT_CD_M_ROMBeforeEdit;
                end;
              end;
      //  end;
end;

procedure TFAT_FM_M_MDF.btnConsultarChaveClick(Sender: TObject);
var
 vChave : String;
begin

  if not ValidRomaneio then
     begin
       abort;
     end;


  //if not(InputQuery('WebServices Consultar', 'Chave do MDF-e:', vChave)) then
  //  exit;

  MDFE.WebServices.Consulta.MDFeChave := dmGeral.FAT_CD_M_ROM.FieldByName('chave_mdf').AsString;
  MDFE.WebServices.Consulta.Executar;

  MemoResp.Lines.Text :=  UTF8Encode(MDFE.WebServices.Consulta.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(MDFE.WebServices.Consulta.RetornoWS);
  LoadXML(MemoResp, WBResposta);



end;

procedure TFAT_FM_M_MDF.btnCriarEnviarClick(Sender: TObject);
var
  numLote:String;
  numNFe: Integer;
  Ano, Mes, Dia : Word;
  SMPrincipal: TSMClient;
  retorno: String;
  Ambiente, Versao, Status, Estado, Motivo,
  cMsg, xMsg, Recibo, Protocolo, chave: String;
  id_fiscal: String;
  sincrono: boolean;
begin

  retorno := '';

  if dmGeral.FAT_CD_M_ROM.IsEmpty then
     begin
       ShowMessage('Nenhum manifesto eletrônico foi selecionado.');
       abort;
     end;

  if dmGeral.FAT_CD_M_ROM.FieldByName('status').AsInteger = 1 then
     begin
       ShowMessage('Manifesto eletrônico já foi encerrado.');
       abort;
     end;

  if MessageDlg('Deseja realmente gerar o MDFe?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin

        if dmGeral.FAT_CD_M_ROM.FieldByName('mdf_numero').AsInteger = 0 then
           begin
              try
                SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                dmGeral.FAT_CD_M_ROM.Edit;
                dmGeral.FAT_CD_M_ROM.FieldByName('mdf_numero').AsInteger :=
                        SMPrincipal.enProxNroMDFe(dmGeral.FAT_CD_M_ROM.FieldByName('id_empresa').AsString);
                dmGeral.FAT_CD_M_ROM.ApplyUpdates(0);
              finally
                FreeAndNil(SMPrincipal);
              end;
           end;

        dmGeral.FAT_CD_M_ROM.Edit;

        numNfe  := dmGeral.FAT_CD_M_ROM.FieldByName('mdf_numero').AsInteger;
        DecodeDate(xDataSis, Ano, Mes, Dia);
        numLote := inttostr(Ano)+inttostr(Mes)+inttostr(Dia);
        numLote := OnlyNumber(numLote);

        DanfeMfd.NumCopias := 1;

        MDFE.Manifestos.Clear;

        GerarMDFe(numNFe);


        sincrono := true;
        //try
           // NT 2024/001,  modo em SINCRONO = TRUE, por Maxsuel Victor

        MDFE.Enviar(StrToInt(NumLote),true,sincrono);

        //except
           MemoResp.Lines.Text   := UTF8Encode(MDFE.WebServices.Retorno.RetWS);
           memoRespWS.Lines.Text := UTF8Encode(MDFE.WebServices.Retorno.RetWS);
           LoadXML(MemoResp, WBResposta);
        //end;

        MemoDados.Lines.Clear;

        // Modo Assíncrono até 04/2024
           { Ambiente   := TpAmbToStr(MDFE.WebServices.Retorno.TpAmb);
            Versao     := MDFE.WebServices.Retorno.verAplic;
            Status     := IntToStr(MDFE.WebServices.retorno.cStat);
            Estado     := IntToStr(MDFE.WebServices.retorno.cUF);
            Motivo     := MDFE.WebServices.Retorno.xMotivo;
            cMsg       := IntToStr(MDFE.WebServices.Retorno.cMsg);
            xMsg       := MDFE.WebServices.Retorno.xMsg;
            Recibo     := MDFE.WebServices.Retorno.Recibo;
            Protocolo  := MDFE.WebServices.Retorno.Protocolo;
            chave      := MDFE.WebServices.Retorno.ChaveMDFe; }

        // Modo Síncrono a partir de 05/2024

        Ambiente := TpAmbToStr(MDFE.WebServices.Enviar.tpAmb);
        Versao   := MDFE.WebServices.Enviar.verAplic;
        Status   := IntToStr(MDFE.WebServices.Enviar.cStat);
        Estado   := IntToStr(MDFE.WebServices.Enviar.cUF);
        Motivo   := MDFE.WebServices.Enviar.xMotivo;
        //cMsg     := IntToStr(MDFE.WebServices.Enviar.msg);
        xMsg     := MDFE.WebServices.Enviar.Msg;
        Recibo   := MDFE.WebServices.Enviar.Recibo;
        Protocolo := MDFE.WebServices.Enviar.Protocolo;
        chave     := Copy(MDFe.Manifestos.Items[0].MDFe.infMDFe.ID,5,44);

        // --------------------------------------------------------------------

        MemoDados.Lines.Add('Envio NFe');
        MemoDados.Lines.Add('Ambiente: '  + Ambiente );
        MemoDados.Lines.Add('Versão: '    + Versao);
        MemoDados.Lines.Add('Status: '    + Status);
        MemoDados.Lines.Add('Estado: '    + Estado);
        MemoDados.Lines.Add('Motivo: '    + Motivo);
        //MemoDados.Lines.Add('cMsg: '      + cMsg);
        MemoDados.Lines.Add('xMsg: '      + xMsg);
        MemoDados.Lines.Add('Chave: '      + chave);
        MemoDados.Lines.Add('Nº Recibo: ' + Recibo);
        MemoDados.Lines.Add('Nº Protocolo: ' + Protocolo );

        dmGeral.FAT_CD_M_ROM.FieldByName('MDF_RECIBO').AsString    := Recibo;
        dmGeral.FAT_CD_M_ROM.FieldByName('CHAVE_MDF').AsString     := chave;
        dmGeral.FAT_CD_M_ROM.FieldByName('MDF_PROTOCOLO').AsString := Protocolo;

        case MDFE.Manifestos.Items[0].MDFe.procMDFe.cStat of
          100:
             begin
               try
                 dmGeral.FAT_CD_M_ROM.FieldByName('DTA_EMISSAO').AsDateTime := now;
                 dmGeral.FAT_CD_M_ROM.FieldByName('status').AsInteger := 1;
                 if dmGeral.FAT_CD_M_ROM.ApplyUpdates(0) = 0 then
                    begin
                      ShowMessage('Manifesto eletrônico criado com sucesso');
                    end
                 else
                    begin
                      dmGeral.FAT_CD_M_ROM.Cancel;
                      ShowMessage('Manifesto eletrônico homologado na SEFAZ, mas ficou faltando finalizar o processo no sistema!');
                      ShowMessage('Por favor entre em contato com suporte.');
                    end;
                except
                  on e:exception do
                     begin
                       Showmessage('Erro ao tentar gravar os dados do Manifesto: ' + #13 + e.Message);
                     end;
                end;
             end;
        end;

        MDFE.Manifestos.Clear;
     end;
end;

procedure TFAT_FM_M_MDF.btnEncerrarClick(Sender: TObject);
var
  xml, numLote: string;
  Ano, Mes, Dia : Word;
begin
  { OpenDialog1.Title := 'Selecione o MDFe';
    OpenDialog1.DefaultExt := '*-MDFe.xml';
    OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
    OpenDialog1.InitialDir := MDFE.Configuracoes.Arquivos.PathSalvar;

    if OpenDialog1.Execute then
       begin}

   if trim(dmGeral.FAT_CD_M_ROM.FieldByName('CHAVE_MDF').AsString) = '' then
      begin
        ShowMessage('O nro da chave do MDF-e não está nesse registro selecionado.');
        abort;
      end;


   if Dc_MessageDlgCheck('Deseja mesmo encerrar a MDF-e : '+
      dmGeral.FAT_CD_M_ROMmdf_numero.Text, mtConfirmation, [mbYes, mbNo],0, mrNo, true, false,'', nil) = 7 then
      begin
        exit;
      end;

   DecodeDate(xDataSis, Ano, Mes, Dia);
   numLote := inttostr(Ano)+inttostr(Mes)+inttostr(Dia);
   numLote := OnlyNumber(numLote);

   xml := MDFE.Configuracoes.Arquivos.PathSalvar+
         dmGeral.FAT_CD_M_ROM.FieldByName('CHAVE_MDF').AsString+'-mdfe.xml';


   MDFE.Manifestos.Clear;
     //   MDFE.Manifestos.LoadFromFile(OpenDialog1.FileName);
   MDFE.Manifestos.LoadFromFile(xml);
   MDFE.EventoMDFe.Evento.Clear;

   with MDFE.EventoMDFe.Evento.Add do
      begin
       infEvento.chMDFe   := Copy(MDFE.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
       infEvento.CNPJCPF     := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CNPJ').AsString;
       infEvento.dhEvento := now;
       //  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
       //                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
       //                  teEncerramento);
       infEvento.tpEvento   := teEncerramento;
       infEvento.nSeqEvento := 1;

       infEvento.detEvento.nProt := MDFE.Manifestos.Items[0].MDFe.procMDFe.nProt;
       infEvento.detEvento.dtEnc := Date;
       infEvento.detEvento.cUF   := StrToInt(Copy(IntToStr(MDFE.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga),1,2));
       infEvento.detEvento.cMun  := MDFE.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga;
      end;

   MDFE.EnviarEvento(strtoint(numLote)); // 1 = Numero do Lote

   MemoResp.Lines.Text   := UTF8Encode(MDFE.WebServices.EnvEvento.RetWS);
   memoRespWS.Lines.Text := UTF8Encode(MDFE.WebServices.EnvEvento.RetWS);
   LoadXML(MemoResp, WBResposta);
     // end;
   try
     dmGeral.FAT_CD_M_ROM.BeforeEdit := nil;
     dmGeral.FAT_CD_M_ROM.Edit;
     dmGeral.FAT_CD_M_ROMmdf_encerrado.AsBoolean := True;
     dmGeral.FAT_CD_M_ROM.Post;
     dmGeral.FAT_CD_M_ROM.ApplyUpdates(0);
   finally
     dmGeral.FAT_CD_M_ROM.BeforeEdit :=  dmGeral.FAT_CD_M_ROMBeforeEdit;
   end;
end;



procedure TFAT_FM_M_MDF.btnFaturarAposXMLClick(Sender: TObject);
var
  chave,Protocolo,recibo,xDataEmissao: String;
  dataEmissao:TDate;
begin
   if dmGeral.FAT_CD_M_ROM.IsEmpty then
     begin
       ShowMessage('Nenhum manifesto eletrônico foi selecionado.');
       exit;
     end;

  if (dmGeral.FAT_CD_M_ROM.FieldByName('mdf_encerrado').AsBoolean) then
     begin
       ShowMessage('Manifesto eletrônico já foi encerrado.');
       exit;
     end;


  if (dmGeral.FAT_CD_M_ROM.FieldByName('cancelado').AsBoolean) then
      begin
        ShowMessage('Manifesto eletrônico já foi cancelado.');
        exit;
      end;

  if (dmGeral.FAT_CD_M_ROM.FieldByName('status').AsInteger =1) and
      (dmGeral.FAT_CD_M_ROM.FieldByName('cancelado').AsBoolean=false) then
      begin
        ShowMessage('Manifesto eletrônico já foi gerado.');
        exit;
      end;

  if (not (dmGeral.FAT_CD_M_ROM.FieldByName('mdf_numero').AsInteger > 0)) then
     begin
       ShowMessage('O número do MDFe não tinha sido gerado.');
       exit;
     end;




  if not(InputQuery('Finalizar pós XML MDFe', 'Data de emissão (dd/mm/aaaa)', xDataEmissao)) then
     exit;

  try
    if (trim(xDataEmissao) = '') then
      begin
        ShowMessage('A data de emissão deve ser preenchido.');
        exit;
      end;
    dataEmissao := StrToDate(xDataEmissao);
  except
    ShowMessage('Data inválida.');
    exit;
  end;


  if not(InputQuery('Finalizar pós XML MDFe', 'Chave de acesso', chave)) then
     exit;

  if (trim(chave) = '') then
     begin
       Showmessage('O nº da chave deve ser informado.');
       exit;
     end
  else
     begin
        if (not dmGeral.ValChaveNFe(trim(chave))) then
           begin
             Showmessage('O nº da chave é inválido.');
             exit;
           end;
     end;

  if not(InputQuery('Finalizar pós XML MDFe', 'Protocolo', Protocolo)) then
     exit;


  if (trim(Protocolo) = '') then
     begin
       Showmessage('O nº do protocolo deve ser informado.');
       exit;
     end;

  if MessageDlg('O xml desse manifesto foi realmente gerado e assinado pela Sefaz?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        if MessageDlg('Deseja realmente finalizar a geração do MDFe?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
               dmGeral.FAT_CD_M_ROM.Edit;
               dmGeral.FAT_CD_M_ROM.FieldByName('MDF_RECIBO').AsString    := 'sem recibo - Pós XML';
               dmGeral.FAT_CD_M_ROM.FieldByName('CHAVE_MDF').AsString     := chave;
               dmGeral.FAT_CD_M_ROM.FieldByName('MDF_PROTOCOLO').AsString := Protocolo;

               try
                 dmGeral.FAT_CD_M_ROM.FieldByName('DTA_EMISSAO').AsDateTime := dataEmissao;
                 dmGeral.FAT_CD_M_ROM.FieldByName('status').AsInteger := 1;
                 if dmGeral.FAT_CD_M_ROM.ApplyUpdates(0) = 0 then
                    begin
                      ShowMessage('Manifesto eletrônico criado com sucesso');
                    end
                 else
                    begin
                      dmGeral.FAT_CD_M_ROM.Cancel;
                      Showmessage('Erro ao tentar gravar os dados do Manifesto');
                    end;
                except
                  on e:exception do
                     begin
                       Showmessage('Erro ao tentar gravar os dados do Manifesto: ' + #13 + e.Message);
                     end;
                end;
           end;
     end;
end;

procedure TFAT_FM_M_MDF.btnGerarMDFeClick(Sender: TObject);
var
 vAux : Integer;
begin
  //if not(InputQuery('WebServices Enviar', 'Numero do Manifesto', vAux)) then
  //  exit;
  //vAux := dmGeral.FAT_CD_M_ROM.FieldByName('MDF_NUMERO').AsInteger;

  vAux := 1;
  MDFE.Manifestos.Clear;
  GerarMDFe(vAux);
  // v antigo
  //MDFE.Manifestos.Items[0].SaveToFile('');
  MDFE.Manifestos.Items[0].GravarXML('', '');

  case MDFE.Manifestos.Items[0].MDFe.procMDFe.cStat of
    100:
       begin
         ShowMessage('Manifesto eletrônico criado com sucesso!');
       end;
  end;

  ShowMessage('Arquivo gerado em: '+MDFE.Manifestos.Items[0].NomeArq);
  MemoDados.Lines.Add('Arquivo gerado em: '+MDFE.Manifestos.Items[0].NomeArq);
  MemoResp.Lines.LoadFromFile(MDFE.Manifestos.Items[0].NomeArq);
  LoadXML(MemoResp, WBResposta);
  PageControl2.ActivePageIndex := 1;

  //AtualizarStatusPcaPed;
end;

procedure TFAT_FM_M_MDF.btnGerarPDFClick(Sender: TObject);
begin

  if not ValidManifesto then
     abort;

  OpenDialog1.Title := 'Selecione o MDFe';
  OpenDialog1.DefaultExt := '*-MDFe.xml';
  OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  //v antigo
  //OpenDialog1.InitialDir := MDFE.Configuracoes.Geral.PathSalvar;
  OpenDialog1.InitialDir := MDFE.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    MDFE.Manifestos.Clear;
    MDFE.Manifestos.LoadFromFile(OpenDialog1.FileName);
    MDFE.Manifestos.ImprimirPDF;
  end;
end;

procedure TFAT_FM_M_MDF.btnGerarPDFEventoClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o MDFe';
  OpenDialog1.DefaultExt := '*-mdfe.xml';
  OpenDialog1.Filter := 'Arquivos MDFe (*-mdfe.xml)|*-mdfe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  // v antigo
  //OpenDialog1.InitialDir := MDFE.Configuracoes.Geral.PathSalvar;
  OpenDialog1.InitialDir := MDFE.Configuracoes.Arquivos.PathSalvar;



  MDFE.Manifestos.Clear;
  if OpenDialog1.Execute then
  begin
    MDFE.Manifestos.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*-procEventoMDFe.xml';
  OpenDialog1.Filter := 'Arquivos Evento (*-procEventoMDFe.xml)|*-procEventoMDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  // v antigo
  //OpenDialog1.InitialDir := MDFE.Configuracoes.Geral.PathSalvar;
  OpenDialog1.InitialDir := MDFE.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    MDFE.EventoMDFe.Evento.Clear;
    MDFE.EventoMDFe.LerXML(OpenDialog1.FileName);
    MDFE.ImprimirEventoPDF;
  end;
end;

procedure TFAT_FM_M_MDF.btnImprimirClick(Sender: TObject);
begin

  OpenDialog1.Title := 'Selecione o MDFe';
  OpenDialog1.DefaultExt := '*-MDFe.xml';
  OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  // v antigo
  //OpenDialog1.InitialDir := MDFE.Configuracoes.Geral.PathSalvar;
  OpenDialog1.InitialDir := MDFE.Configuracoes.Arquivos.PathSalvar;
  OpenDialog1.FileName   := '';
  if trim(dmGeral.FAT_CD_M_ROM.FieldByName('chave_mdf').AsString) <> '' then
     begin
       OpenDialog1.FileName := dmGeral.FAT_CD_M_ROM.FieldByName('chave_mdf').AsString+'-mdfe';
     end;
  if OpenDialog1.Execute then
    begin
      MDFE.Manifestos.Clear;
      MDFE.Manifestos.LoadFromFile(OpenDialog1.FileName);
      MDFE.Manifestos.Imprimir;
    end;
end;

procedure TFAT_FM_M_MDF.btnImprimirEventoClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o MDFe';
  OpenDialog1.DefaultExt := '*-mdfe.xml';
  OpenDialog1.Filter := 'Arquivos MDFe (*-mdfe.xml)|*-mdfe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  // v antigo
  //OpenDialog1.InitialDir := MDFE.Configuracoes.Geral.PathSalvar;
  OpenDialog1.InitialDir := MDFE.Configuracoes.Arquivos.PathSalvar;

  MDFE.Manifestos.Clear;
  if OpenDialog1.Execute then
  begin
    MDFE.Manifestos.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*-procEventoMDFe.xml';
  OpenDialog1.Filter := 'Arquivos Evento (*-procEventoMDFe.xml)|*-procEventoMDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  // v antigo
  //OpenDialog1.InitialDir := MDFE.Configuracoes.Geral.PathSalvar;
  OpenDialog1.InitialDir := MDFE.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    MDFE.EventoMDFe.Evento.Clear;
    MDFE.EventoMDFe.LerXML(OpenDialog1.FileName);
    MDFE.ImprimirEvento;
  end;
end;

procedure TFAT_FM_M_MDF.btnStatusServClick(Sender: TObject);
begin
  MDFE.WebServices.StatusServico.Executar;
  MemoResp.Lines.Text := UTF8Encode(MDFE.WebServices.StatusServico.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(MDFE.WebServices.StatusServico.RetWS);
  LoadXML(MemoResp, WBResposta);

  PageControl2.ActivePageIndex := 5;
  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Status Serviço');
  MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(MDFE.WebServices.StatusServico.tpAmb));
  MemoDados.Lines.Add('verAplic: ' +MDFE.WebServices.StatusServico.verAplic);
  MemoDados.Lines.Add('cStat: '    +IntToStr(MDFE.WebServices.StatusServico.cStat));
  MemoDados.Lines.Add('xMotivo: '  +MDFE.WebServices.StatusServico.xMotivo);
  MemoDados.Lines.Add('cUF: '      +IntToStr(MDFE.WebServices.StatusServico.cUF));
  MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(MDFE.WebServices.StatusServico.dhRecbto));
  MemoDados.Lines.Add('tMed: '     +IntToStr(MDFE.WebServices.StatusServico.TMed));
  MemoDados.Lines.Add('dhRetorno: '+DateTimeToStr(MDFE.WebServices.StatusServico.dhRetorno));
  MemoDados.Lines.Add('xObs: '     +MDFE.WebServices.StatusServico.xObs);
end;

procedure TFAT_FM_M_MDF.Button1Click(Sender: TObject);
begin
  if not ValidRomaneio then
     begin
       abort;
     end;

  OpenDialog1.Title := 'Selecione a MDFe';
  OpenDialog1.DefaultExt := '*-MDFe.XML';
  OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.XML)|*-MDFe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';

  OpenDialog1.InitialDir := MDFE.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    MDFE.Manifestos.Clear;
    MDFE.Manifestos.LoadFromFile(OpenDialog1.FileName);
    MDFE.Consultar;

    ShowMessage(MDFE.WebServices.Consulta.Protocolo);
    MemoResp.Lines.Text := MDFE.WebServices.Consulta.RetWS;
    memoRespWS.Lines.Text := MDFE.WebServices.Consulta.RetornoWS;
    LoadXML_2(MDFE.WebServices.Consulta.RetornoWS, WBResposta);
  end;


end;

procedure TFAT_FM_M_MDF.btnConsultaNaoEncClick(Sender: TObject);
begin

  MDFE.Configuracoes.Geral.RetirarAcentos := False;
  MDFE.WebServices.ConsultaMDFeNaoEnc( dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CNPJ').AsString );

  MemoResp.Lines.Text :=  UTF8Encode(MDFE.WebServices.ConsMDFeNaoEnc.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(MDFE.WebServices.ConsMDFeNaoEnc.RetornoWS);
  LoadXML(MemoResp, WBResposta);
end;

procedure TFAT_FM_M_MDF.ConfiguraComponente;
var
 Ok: Boolean;
 PathMensal,PathLogs,PathImg: String;
begin
  PathLogs := ExtractFilePath(Application.ExeName)+'Emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\MDFe\';
  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';



  MDFe.SSL.DescarregarCertificado;

  with MDFe.Configuracoes.Geral do
    begin
      SSLLib        := TSSLLib(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('prot_com_ssllib').AsInteger); //libCapicom;
      SSLCryptLib   := TSSLCryptLib(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('prot_com_criptlib').AsInteger);
      SSLHttpLib    := TSSLHttpLib(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('prot_com_httplib').AsInteger);
      SSLXmlSignLib := TSSLXmlSignLib(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('prot_com_xmlsignlib').AsInteger);

    end;
  // alterado para TSSLType(0) em 11-04-2022
     // MDFe.SSL.SSLType := TSSLType(0);

  MDFe.SSL.SSLType := TSSLType(5); //LT_TLSv1_2

  // Configurações -> Certificados
//  {$IFDEF ACBrMDFeOpenSSL}
     // Nota Técnica 2017/003
        MDFE.Configuracoes.Certificados.ArquivoPFX := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_caminho_pfx').AsString;
        MDFE.Configuracoes.Certificados.Senha       := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_senha_pfx').AsString;

     //MDFE.Configuracoes.Certificados.Certificado := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_serie').AsString; //Caminho do Certificado;
     //MDFE.Configuracoes.Certificados.Senha       := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_senha').AsString; //Senha do certificado;
 // {$ELSE}
 //    MDFE.Configuracoes.Certificados.NumeroSerie := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_serie').AsString;  //Numero serie do Certificado;
//  {$ENDIF}

  // Nota Técnica 2017/003
  MDFE.Configuracoes.Certificados.VerificarValidade := False;


  // Configurações -> Arquivos
//  PathMensal := MDFE.Configuracoes.Arquivos.GetPathMDFe(0);

  PathMensal :=  PathWithDelim(ExtractFilePath(Application.ExeName))+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString+'\MDFe';

  MDFE.Configuracoes.Arquivos.AdicionarLiteral := True;
  MDFE.Configuracoes.Arquivos.SepararPorModelo := False;
  MDFE.Configuracoes.Arquivos.EmissaoPathMDFe  := True;
  MDFE.Configuracoes.Arquivos.SepararPorMes    := false;
  MDFE.Configuracoes.Arquivos.PathMDFe         := PathMensal;
  MDFE.Configuracoes.Arquivos.Salvar           := True;
  MDFE.Configuracoes.Arquivos.PathSalvar       := PathMensal;
  MDFE.Configuracoes.Arquivos.PathSchemas      := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\MDFe';



  // Configurações -> Geral
  MDFE.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK,IntToStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('danf_tipo_emissao').AsInteger+1)); //forma de emissão;
  MDFE.Configuracoes.Geral.Salvar       := True;

  MDFE.Configuracoes.Geral.VersaoDF := ve300;


  // Configurações -> WebServices
  MDFE.Configuracoes.WebServices.AguardarConsultaRet      := 0;
  MDFE.Configuracoes.WebServices.AjustaAguardaConsultaRet := False;
  MDFE.Configuracoes.WebServices.Ambiente                 := StrToTpAmb(Ok,IntToStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('situacao_emissor').AsInteger)); //ambiente de destino;

  if MDFE.Configuracoes.WebServices.Ambiente = taProducao then
     begin
       txtAmbiente.Text := 'Ambiente: Produção';
       txtAmbiente.Color := $00BBFF77;
     end;
  if MDFE.Configuracoes.WebServices.Ambiente = taHomologacao then
     begin
       txtAmbiente.Text := 'Ambiente: Homologação';
       txtAmbiente.Color := $00ACC0FB;
     end;


  MDFE.Configuracoes.WebServices.IntervaloTentativas      := 0;
  MDFE.Configuracoes.WebServices.Tentativas               := 5;
  MDFE.Configuracoes.WebServices.UF                       := dmGeral.CAD_CD_C_PAR.FieldByName('int_uf').AsString;
  MDFE.Configuracoes.WebServices.Visualizar               := True;
  MDFE.Configuracoes.WebServices.ProxyHost                := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_host').AsString;
  MDFE.Configuracoes.WebServices.ProxyPort                := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_porta').AsString;
  MDFE.Configuracoes.WebServices.ProxyUser                := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_usuario').AsString;
  MDFE.Configuracoes.WebServices.ProxyPass                := dmGeral.CAD_CD_C_PAR_NFE.FieldByName('proxy_senha').AsString;
  MDFE.Configuracoes.WebServices.Salvar                   := True;


  // DAMDFe
  if MDFE.DAMDFe <> nil then
  begin
    MDFE.DAMDFe.PathPDF           := PathMensal;
    MDFE.DAMDFe.ExpandeLogoMarca := False;
    MDFE.DAMDFe.Logo              := PathImg;
    MDFE.DAMDFe.MostraPreview    := True;
    MDFE.DAMDFe.TipoDAMDFe        := tiRetrato;
  end;
end;

procedure TFAT_FM_M_MDF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmGeral.FAT_CD_M_ROM.cancel;
end;

procedure TFAT_FM_M_MDF.FormShow(Sender: TObject);
begin
  DanfeMfd.FastFile       := ExtractFileDir(application.ExeName) + '\Report\DAMDFe_Retrato.fr3';

  //DanfeMfd.FastFile       := ExtractFileDir(application.ExeName) + '\Report\DAMDFe_Retrato_mod2.fr3';
  DanfeMfd.FastFileEvento := ExtractFileDir(application.ExeName) + '\Report\EVENTOS_MDFE.fr3';


  // Depois da atualização do acbr em 08/07/2021, precicei informar o tamanho
     // das margens do DANFE E DAMDFE.
  // Original do componente.
     //  MDFE.DAMDFE.MargemDireita  := 0.51;
     //  MDFE.DAMDFE.MargemEsquerda := 0.6;
     //  MDFE.DAMDFE.MargemSuperior := 0.8;
     //  MDFE.DAMDFE.MargemInferior := 0.8;

  MDFE.DAMDFE.MargemDireita  := 7;
  MDFE.DAMDFE.MargemEsquerda := 7;
  MDFE.DAMDFE.MargemSuperior := 5;
  MDFE.DAMDFE.MargemInferior := 5;



 { dmGeral.BUS_CD_C_CID.Close;
  dmGeral.BUS_CD_C_CID.Data :=
  dmGeral.BUS_CD_C_CID.DataRequest(VarArrayOf([1, dmGeral.FAT_CD_M_ROM_NFE.FieldByName('int_nomecid').Text]));

  dmGeral.BUS_CD_C_VEI.Close;
  dmGeral.BUS_CD_C_VEI.Data :=
  dmGeral.BUS_CD_C_VEI.DataRequest(VarArrayOf([3, dmGeral.FAT_CD_M_ROM.FieldByName('id_placa').Text]));

  dmSgq.BUS_CD_C_MTA.Close;
  dmSgq.BUS_CD_C_MTA.Data :=
  dmSgq.BUS_CD_C_MTA.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_ROM.FieldByName('id_motorista').Text]));}

  ConfiguraComponente;
  VerCertificado;

end;

procedure TFAT_FM_M_MDF.GerarMDFe(NumMDFe: Integer);
var
  Ok: Boolean;
  uf_nf, uf_percurso: String;
begin
  with MDFE.Manifestos.Add.MDFe do
      begin

       // Dados de Identificação do MDF-e

       Ide.cUF   := StrToInt(copy(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString,1,2));
       Ide.tpAmb := StrToTpAmb(Ok,IntToStr(dmGeral.CAD_CD_C_PAR_NFE.FieldByName('situacao_emissor').AsInteger));

       case dmgeral.CAD_CD_C_PAR_NFEmdfe_tipo_emitente.AsInteger of
         0: Ide.tpEmit := teTransportadora;
         1: Ide.tpEmit := teTranspCargaPropria;
       end;

       Ide.modelo  := '58';
       Ide.serie   := 1;
       Ide.nMDF    := NumMDFe;
       Ide.cMDF    := dmgeral.FAT_CD_M_ROM.FieldByName('id_romaneio').AsInteger;
       Ide.modal   := moRodoviario;
       Ide.dhEmi   := now;
       ide.dhIniViagem := dmgeral.FAT_CD_M_ROM.FieldByName('dta_hor_ini_viagem').AsDateTime;

       case dmgeral.CAD_CD_C_PAR_NFEmdfe_tipo_emissao.AsInteger of
         0: Ide.tpEmis := teNormal;
         1: Ide.tpEmis := teContingencia;
       end;

       Ide.procEmi := peAplicativoContribuinte;
       Ide.verProc := CVersaoSistema;

       if dmGeral.FAT_CD_M_ROM.FieldByName('tipo').AsInteger = 0 then // Clientes
          begin
            Ide.UFIni   := dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').AsString;
            Ide.UFFim   := dmGeral.FAT_CD_M_ROM_NFE.FieldByName('INT_UF').AsString; // Não tem problema de pegar o primeiro que encontrar.
          end;

       if dmGeral.FAT_CD_M_ROM.FieldByName('tipo').AsInteger = 1 then // Fornecedores(Entrada)
          begin
            Ide.UFIni   := dmGeral.FAT_CD_M_ROM_NFE.FieldByName('INT_UF').AsString; // Não tem problema de pegar o primeiro que encontrar.
            Ide.UFFim   := dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').AsString;
          end;

       if dmGeral.FAT_CD_M_ROM.FieldByName('tipo').AsInteger = 2 then // Fornecedores(Devolucao)
          begin
            Ide.UFIni   := dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').AsString; // Não tem problema de pegar o primeiro que encontrar.
            Ide.UFFim   := dmGeral.FAT_CD_M_ROM_NFE.FieldByName('INT_UF').AsString;
          end;

       with Ide.infMunCarrega.Add do
        begin
          if dmGeral.FAT_CD_M_ROM.FieldByName('tipo').AsInteger = 0 then // Clientes
             begin
               cMunCarrega := StrToInt(trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString));
               xMunCarrega := dmGeral.CAD_CD_C_PAR.FieldByName('INT_NOMECID').AsString;
             end;
          if dmGeral.FAT_CD_M_ROM.FieldByName('tipo').AsInteger = 1 then // Fornecedores(Entrada)
             begin
               cMunCarrega := StrToInt(trim(dmGeral.FAT_CD_M_ROM_NFE.FieldByName('INT_ID_CIDADE').AsString));
               xMunCarrega := dmGeral.FAT_CD_M_ROM_NFE.FieldByName('INT_NOMECID').AsString;
             end;
          if dmGeral.FAT_CD_M_ROM.FieldByName('tipo').AsInteger = 2 then // Fornecedores(Devolução)
             begin
               cMunCarrega := StrToInt(trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString));
               xMunCarrega := dmGeral.CAD_CD_C_PAR.FieldByName('INT_NOMECID').AsString;
             end;
        end;



       dmGeral.FAT_CD_M_ROM_PER.First;
       while not (dmGeral.FAT_CD_M_ROM_PER.eof) do
          begin
             with ide.infPercurso.Add do
                begin
                  UFPer := dmGeral.FAT_CD_M_ROM_PER.FieldByName('uf').AsString;
                end;
             dmGeral.FAT_CD_M_ROM_PER.Next;
          end;
       dmGeral.FAT_CD_M_ROM_PER.First;

       // Dados do Emitente

       Emit.CNPJCPF  := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CNPJ').AsString;
       Emit.IE    := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_IE').AsString;
       Emit.xNome := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_RAZAO').AsString;
       Emit.xFant := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString;

       Emit.EnderEmit.xLgr    := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_ENDERECO').AsString;
       Emit.EnderEmit.nro     := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_NUMERO').AsString;
       Emit.EnderEmit.xCpl    := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_COMPLEMENTO').AsString;
       Emit.EnderEmit.xBairro := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_BAIRRO').AsString;
       Emit.EnderEmit.cMun    := StrToInt(Trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString));
       Emit.EnderEmit.xMun    := dmGeral.CAD_CD_C_PAR.FieldByName('INT_NOMECID').AsString;
       Emit.EnderEmit.CEP     := StrToInt(RemoveChars(['-'],Trim(dmGeral.CAD_CD_C_PAR.FieldByName('EMP_CEP').AsString)));
       Emit.EnderEmit.UF      := dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').AsString;
       Emit.EnderEmit.fone    := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_TELEFONE').AsString;
       Emit.enderEmit.email   := dmGeral.CAD_CD_C_PAR.FieldByName('EMP_EMAIL').AsString;

       with rodo do
         begin
           RNTRC := dmgeral.FAT_CD_M_ROM.FieldByName('RNTRC').AsString;
           CIOT  := dmgeral.FAT_CD_M_ROM.FieldByName('CIOT').AsString;

           with veicTracao do
              begin
                 cInt     := dmGeral.FAT_CD_M_ROM.FieldByName('int_id_veiculo').AsString;
                 RENAVAM  := dmGeral.FAT_CD_M_ROM.FieldByName('int_renavam').AsString;
                 placa    := dmGeral.FAT_CD_M_ROM.FieldByName('id_placa').AsString;
                 uf       := dmGeral.FAT_CD_M_ROM.FieldByName('int_uf_licenciado').AsString;
                 tara     := dmGeral.FAT_CD_M_ROM.FieldByName('int_tara').AsInteger;
                 capKG    := dmGeral.FAT_CD_M_ROM.FieldByName('int_cap_veiculo').AsInteger;
                 //capM3    := '';
                 tpRod    := StrToTpRodado(OK,'0'+dmGeral.FAT_CD_M_ROM.FieldByName('int_tipo_rodado').AsString);
                 tpCar    := StrToTpCarroceria(OK,'0'+dmGeral.FAT_CD_M_ROM.FieldByName('int_tipo_carroceria').AsString);
              end;
           {Proprietários do Veículo.
            Só preenchido quando o veículo não
             pertencer à empresa emitente do MDF-e

            with veicTracao.prop do
              begin

              end;}
           with veicTracao.condutor.Add do
              begin
                 xNome := dmGeral.FAT_CD_M_ROM.FieldByName('int_nomemta').AsString;
                 CPF   := dmGeral.FAT_CD_M_ROM.FieldByName('int_doc_cpf').AsString;
              end;

         end;

       // Se for Cavalo mecânico  3 - Cavalo mecânico , 20/05/2024 Maxsuel Victor
       if dmGeral.FAT_CD_M_ROM.FieldByName('int_tipo_rodado').AsInteger = 3 then
          begin
             with rodo.veicReboque.Add do
                begin
                  cInt  := dmgeral.FAT_CD_M_ROM.FieldByName('id_romaneio').AsString; // Fica o mesmo id do pai.
                  placa := dmGeral.FAT_CD_M_ROM.FieldByName('int_placa_reboque').AsString;
                  tara  := dmGeral.FAT_CD_M_ROM.FieldByName('int_tara_reboque').AsInteger;
                  capKG := dmGeral.FAT_CD_M_ROM.FieldByName('int_cap_reboque').AsInteger;
                  capM3 := dmGeral.FAT_CD_M_ROM.FieldByName('int_cubagem_reboque').AsInteger;
                  // RNTRC := '87654321';
                end;
          end;

       {with rodo.valePed.disp.Add do
        begin
         CNPJForn := '12345678000199';
         CNPJPg   := '21543876000188';
         nCompra  := '789';
        end;}

       with infDoc.infMunDescarga.Add do
          begin
            if dmGeral.FAT_CD_M_ROM.FieldByName('tipo').AsInteger = 0 then // Clientes
               begin
                 cMunDescarga := StrToInt(trim(dmGeral.FAT_CD_M_ROM_NFE.FieldByName('int_id_cidade').AsString));
                 xMunDescarga := dmGeral.FAT_CD_M_ROM_NFE.FieldByName('int_nomecid').AsString;
               end;
            if dmGeral.FAT_CD_M_ROM.FieldByName('tipo').AsInteger = 1 then // Fornecedores(Entrada)
               begin
                 cMunDescarga := StrToInt(trim(dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString));
                 xMunDescarga := dmGeral.CAD_CD_C_PAR.FieldByName('INT_NOMECID').AsString;
               end;
            if dmGeral.FAT_CD_M_ROM.FieldByName('tipo').AsInteger = 2 then // Fornecedor(Devolucao)
               begin
                 cMunDescarga := StrToInt(trim(dmGeral.FAT_CD_M_ROM_NFE.FieldByName('int_id_cidade').AsString));
                 xMunDescarga := dmGeral.FAT_CD_M_ROM_NFE.FieldByName('int_nomecid').AsString;
               end;

            dmGeral.FAT_CD_M_ROM_NFE.First;
            while not dmGeral.FAT_CD_M_ROM_NFE.eof do
               begin
                  with infNFe.Add do
                     begin
                       chNFe := dmgeral.FAT_CD_M_ROM_NFE.FieldByName('int_nfe_chave').AsString;

                       // Informações das Unidades de Transporte (Carreta/Reboque/Vagão)

                       with infUnidTransp.Add do
                          begin
                            case dmgeral.FAT_CD_M_ROM.FieldByName('und_transporte').AsInteger of
                               0: tpUnidTransp := utRodoTracao;
                               1: tpUnidTransp := utRodoReboque;
                               2: tpUnidTransp := utNavio;
                               3: tpUnidTransp := utBalsa;
                               4: tpUnidTransp := utAeronave;
                               5: tpUnidTransp := utVagao;
                               6: tpUnidTransp := utOutros;
                            end;

                            idUnidTransp := dmgeral.FAT_CD_M_ROM.FieldByName('id_placa').AsString; // informar a placa se rodoviário

                           // with lacUnidTransp.Add do
                           //    begin
                                //nLacre := dmgeral.FAT_CD_M_ROM_LAC.FieldByName('lacre').AsString;
                           //    end;

                            // Informações das Unidades de carga (Containeres/ULD/Outros)
                           // with infUnidCarga.Add do
                           //    begin
                                 //tpUnidCarga := ucOutros;
                                 //idUnidCarga := '';
                                 //with lacUnidCarga.Add do
                                 //   begin
                                      //nLacre := dmgeral.FAT_CD_M_ROM_LAC.FieldByName('lacre').AsSt
                                 //   end;
                                 //qtdRat := 1.0;
                               //end;
                            // qtdRat := 1.0;
                          end;
                     end; // fim do with
                  dmGeral.FAT_CD_M_ROM_NFE.Next;
               end;
          end;


       dmGeral.FAT_CD_M_ROM_NFE.First;

       tot.qNfe := dmgeral.FAT_CD_M_ROM_NFE.RecordCount;
       //tot.qCT  := 1; // não encontro o que é

       tot.vCarga := dmgeral.FAT_CD_M_ROM.FieldByName('total_notas').AsCurrency;  // valor total das cargas fat_rom
       // UnidMed = (uM3,uKG, uTON, uUNIDADE, uLITROS);
       tot.cUnid  :=  uKG;
       tot.qCarga := dmgeral.FAT_CD_M_ROM.FieldByName('vol_carga').AsInteger;

      // with lacres.Add do
      //  begin
      //   nLacre := dmgeral.FAT_CD_M_ROM_LAC.FieldByName('lacre').AsString;
      //  end;

       infAdic.infCpl     := dmgeral.FAT_CD_M_ROM.FieldByName('obs_1').AsString;
       infAdic.infAdFisco := dmgeral.FAT_CD_M_ROM.FieldByName('obs_2').AsString;;
      end;

//  MDFE.Manifestos.GerarMDFe;
end;

procedure TFAT_FM_M_MDF.grdMDFeCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   //if (dmGeral.FAT_CD_M_ROM.FieldByName('status').AsInteger = 0) then
   //    AFont.Color := clBlue;

   // Situação de Romaneio gerado Manifesto Eletrônico
   if (dmGeral.FAT_CD_M_ROM.FieldByName('STATUS').AsInteger = 1) then
      begin
        AFont.Color := clGreen;
      end;

   // Situação do Manifesto eletrônico cancelado
   if (dmGeral.FAT_CD_M_ROM.FieldByName('cancelado').AsBoolean) then
      begin
        AFont.Color := clRed;
      end;

   // Situação do Manifesto eletrônico encerrado
   if (dmGeral.FAT_CD_M_ROM.FieldByName('mdf_encerrado').AsBoolean) then
      begin
        AFont.Color := clNavy;
      end;
end;

procedure TFAT_FM_M_MDF.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
 MyMemo.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'temp.xml');
 MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'temp.xml');
end;

// metodo criado de forma urgente, para robertinho, devido problema no RS  08/05/2024,  Maxsuel Victor.
procedure TFAT_FM_M_MDF.LoadXML_2(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  WriteToTXT(PathWithDelim(ExtractFileDir(application.ExeName)) + 'temp.xml',
                      ConverteXMLtoUTF8(RetWS), False, False);

  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName)) + 'temp.xml');

  if MDFE.Manifestos.Count > 0then
    MemoResp.Lines.Add('Empresa: ' + MDFE.Manifestos.Items[0].MDFe.Emit.xNome);
end;


end.
