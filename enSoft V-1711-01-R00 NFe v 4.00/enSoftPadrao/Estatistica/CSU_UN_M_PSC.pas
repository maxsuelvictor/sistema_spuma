unit CSU_UN_M_PSC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  vcl.Wwdbedit, Vcl.Buttons, JvExMask, JvToolEdit, JvDBControls,Data.DB;

type
  TCSU_FM_M_PSC = class(TForm)
    pnlPrincipal: TPanel;
    pnlCentral: TPanel;
    gbClientesEncontrados: TGroupBox;
    gbEmComparacao: TGroupBox;
    gbCompraraUtilizara: TGroupBox;
    gbRecomendaria: TGroupBox;
    gbHaQuantoTempo: TGroupBox;
    gbGrauSatisfacao: TGroupBox;
    gbResultado: TGroupBox;
    gbFiltro: TGroupBox;
    lblQtdeSim: TLabel;
    lblQtdeNao: TLabel;
    lblQtdeRespostasSim: TLabel;
    lblQtdeRespostasNao: TLabel;
    lblPessoasMenos1Ano: TLabel;
    lblPessoasMais1Ano: TLabel;
    lblMelhor: TLabel;
    lblIgual: TLabel;
    lblPior: TLabel;
    lblExcelente: TLabel;
    lblBom: TLabel;
    lblRazoavel: TLabel;
    lblRuim: TLabel;
    lblQtdeResponderam: TLabel;
    lblQtdePessoas: TLabel;
    lblPer: TLabel;
    lblAte: TLabel;
    lblPeriodo: TLabel;
    btnFiltro: TSpeedButton;
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblCodificacaoLMestre: TLabel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    dpkDataInicial: TJvDateEdit;
    dpkDataFinal: TJvDateEdit;
    txtClientesEncontrados: TEdit;
    txtQtdeSimQtde: TEdit;
    txtQtdeSimPer: TEdit;
    txtQtdeNaoQtde: TEdit;
    txtQtdeNaoPer: TEdit;
    txtQtdeRespostasSimQtde: TEdit;
    txtQtdeRespostasSimPer: TEdit;
    txtQtdeRespostasNaoQte: TEdit;
    txtQtdeRespostasNaoPer: TEdit;
    txtPessoasMenos1AnoQtde: TEdit;
    txtPessoasMenos1AnoPer: TEdit;
    txtPessoasMais1AnoQtde: TEdit;
    txtPessoasMais1AnoPer: TEdit;
    txtMelhorQtde: TEdit;
    txtMelhorPer: TEdit;
    txtIgualQtde: TEdit;
    txtIgualPer: TEdit;
    txtPiorQtde: TEdit;
    txtPiorPer: TEdit;
    txtExcelenteQtde: TEdit;
    txtExcelentePer: TEdit;
    txtBomQtde: TEdit;
    txtBomPer: TEdit;
    txtRazoavelQtde: TEdit;
    txtRazoavelPer: TEdit;
    txtRuimQtde: TEdit;
    txtRuimPer: TEdit;
    txtQtdePessoas: TEdit;
    txtPerPessoas: TEdit;
    btnSair: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure LimparCampos;
  public
    { Public declarations }
  end;

var
  CSU_FM_M_PSC: TCSU_FM_M_PSC;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCSU_FM_M_PSC.btnFiltroClick(Sender: TObject);
var
  Qtde_total_pessoas: integer;
  Perc_Excelente, Perc_Bom: Extended;
begin
  inherited;
  if (dpkDataInicial.text = '  /  /    ') then
      begin
        ShowMessage('É preciso digitar a data inicial.');
        dpkDataInicial.SetFocus;
        Abort;
      end;

  if (dpkDataFinal.text = '  /  /    ') then
      begin
        ShowMessage('É preciso digitar a data final.');
        dpkDataFinal.SetFocus;
        Abort;
      end;

  if (dpkDataInicial.text <> '  /  /    ') and (dpkDataFinal.text <> '  /  /    ') then
      begin
        if (dpkDataInicial.Date > dpkDataFinal.Date) then
            begin
              ShowMessage('A data inicial não pode ser maior que a data final.');
              dpkDataInicial.SetFocus;
              Abort;
            end;
      end;

  Screen.Cursor := crHourGlass;
  try
    LimparCampos;

    Perc_Excelente := 0;
    Perc_Bom       := 0;

    dmGeral.CSU_CD_M_PSC.Close;
    dmGeral.CSU_CD_M_PSC.Data :=
            dmGeral.CSU_CD_M_PSC.DataRequest(
                    VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').text,dpkDataInicial.text, dpkDataFinal.text]));

    if dmGeral.CSU_CD_M_PSC.IsEmpty then
       begin
         ShowMessage('Nenhum registro foi encontrado!');
         dmGeral.CSU_CD_M_PSC.Close;
         abort;
       end;

    if dmGeral.CSU_CD_M_PSC.FieldByName('TOTAL_CLIENTES').AsInteger > 0 then
        begin
           txtClientesEncontrados.Text := dmGeral.CSU_CD_M_PSC.FieldByName('TOTAL_CLIENTES').Text;
           Qtde_total_pessoas          := dmGeral.CSU_CD_M_PSC.FieldByName('TOTAL_CLIENTES').Asinteger;


           if dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_1_SIM').AsInteger <> 0 then
              begin
                txtQtdeSimQtde.Text := dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_1_SIM').Text;
                txtQtdeSimPer.Text := FormatFloat('###,##0.00%',
                                              (StrToInt(txtQtdeSimQtde.Text) * 100) / Qtde_total_pessoas);
              end;

           if dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_1_NAO').AsInteger <> 0 then
              begin
                txtQtdeNaoQtde.Text := dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_1_NAO').Text;
                txtQtdeNaoPer.Text := FormatFloat('###,##0.00%',
                                              (StrToInt(txtQtdeNaoQtde.Text) * 100) / Qtde_total_pessoas);
              end;

           if dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_2_SIM').AsInteger <> 0 then
              begin
                txtQtdeRespostasSimQtde.Text := dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_2_SIM').Text;
                txtQtdeRespostasSimPer.Text := FormatFloat('###,##0.00%',
                                              (StrToInt(txtQtdeRespostasSimQtde.Text) * 100) / Qtde_total_pessoas);
              end;

           if dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_2_NAO').AsInteger <> 0 then
              begin
                txtQtdeRespostasNaoQte.Text := dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_2_NAO').Text;
                txtQtdeRespostasNaoPer.Text := FormatFloat('###,##0.00%',
                                              (StrToInt(txtQtdeRespostasNaoQte.Text) * 100) / Qtde_total_pessoas);
              end;

           if dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_3_MENOS_DE_1_ANO').AsInteger <> 0 then
              begin
                txtPessoasMenos1AnoQtde.Text := dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_3_MENOS_DE_1_ANO').Text;
                txtPessoasMenos1AnoPer.Text := FormatFloat('###,##0.00%',
                                                      (StrToInt(txtPessoasMenos1AnoQtde.Text) * 100) / Qtde_total_pessoas);

              end;

           if dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_3_MAIS_DE_1_ANO').AsInteger <> 0 then
              begin
                txtPessoasMais1AnoQtde.Text := dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_3_MAIS_DE_1_ANO').Text;
                txtPessoasMais1AnoPer.Text := FormatFloat('###,##0.00%',
                                              (StrToInt(txtPessoasMais1AnoQtde.Text) * 100) / Qtde_total_pessoas);
              end;

           if dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_4_MELHOR').AsInteger <> 0 then
              begin
                txtMelhorQtde.Text := dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_4_MELHOR').Text;
                txtMelhorPer.Text := FormatFloat('###,##0.00%',
                                              (StrToInt(txtMelhorQtde.Text) * 100) / Qtde_total_pessoas);
              end;

           if dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_4_IGUAL').AsInteger <> 0 then
              begin
                txtIgualQtde.Text := dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_4_IGUAL').Text;
                txtIgualPer.Text := FormatFloat('###,##0.00%',
                                                      (StrToInt(txtIgualQtde.Text) * 100) / Qtde_total_pessoas);
              end;

           if dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_4_PIOR').AsInteger <> 0 then
              begin
                txtPiorQtde.Text := dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_4_PIOR').Text;
                txtPiorPer.Text := FormatFloat('###,##0.00%',
                                              (StrToInt(txtPiorQtde.Text) * 100) / Qtde_total_pessoas);
              end;

           if dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_5_EXCELENTE').AsInteger <> 0 then
              begin
                txtExcelenteQtde.Text := dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_5_EXCELENTE').Text;
                txtExcelentePer.Text := FormatFloat('###,##0.00%',
                                              (StrToInt(txtExcelenteQtde.Text) * 100) / Qtde_total_pessoas);
                Perc_Excelente := (StrToInt(txtExcelenteQtde.Text) * 100) / Qtde_total_pessoas;

              end;

           if dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_5_BOM').AsInteger <> 0 then
              begin
                txtBomQtde.Text := dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_5_BOM').Text;
                txtBomPer.Text := FormatFloat('###,##0.00%',
                                              (StrToInt(txtBomQtde.Text) * 100) / Qtde_total_pessoas);
                Perc_Bom := (StrToInt(txtBomQtde.Text) * 100) / Qtde_total_pessoas;
              end;

           if dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_5_RAZOAVEL').AsInteger <> 0 then
              begin
                txtRazoavelQtde.Text := dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_5_RAZOAVEL').Text;
                txtRazoavelPer.Text := FormatFloat('###,##0.00%',
                                                      (StrToInt(txtRazoavelQtde.Text) * 100) / Qtde_total_pessoas);

              end;

           if dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_5_RUIM').AsInteger <> 0 then
              begin
                txtRuimQtde.Text := dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_5_RUIM').Text;
                txtRuimPer.Text := FormatFloat('###,##0.00%',
                                              (StrToInt(txtRuimQtde.Text) * 100) / Qtde_total_pessoas);
              end;

           txtQtdePessoas.Text := inttostr( dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_5_EXCELENTE').AsInteger +
                                             dmGeral.CSU_CD_M_PSC.FieldByName('QTDE_PERGUNTA_5_BOM').AsInteger) + ' pessoas';
           txtPerPessoas.Text := FormatFloat('###,##0.00%', (Perc_Excelente + Perc_Bom));
        end
    else
        begin
          Showmessage('Nenhum registro foi encontrado no período.');
        end;
  finally
     Screen.Cursor := crDefault;
  end;

end;

procedure TCSU_FM_M_PSC.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TCSU_FM_M_PSC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmGeral.CSU_CD_M_PSC.Close;
  FreeAndNil(CSU_FM_M_PSC);
end;

procedure TCSU_FM_M_PSC.FormShow(Sender: TObject);
begin
 pnlCentral.top := (pnlPrincipal.Height div 2) - (pnlCentral.height div 2);
 pnlCentral.left := (pnlPrincipal.Width div 2) - (pnlCentral.width div 2);

  LimparCampos;


  lblCodificacaoLMestre.Caption := 'Sem codificação.';
  if dmGeral.BusCodigoRevListMestre(true,false,'CSU_FM_M_PSC',xCodLme,xRevLme,nil) then
     lblCodificacaoLMestre.Caption := 'Codificação: ' + xCodLme + '      Rev.: ' + xRevLme;


  gbCompraraUtilizara.Caption := '1 - Você comprará ou utilizará o colchão da "'+
                                dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString +'" novamente?';

  gbRecomendaria.Caption := '2 - Você recomendaria o colchão da "'+
                                dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString +'" para outras pessoas?';

  gbHaQuantoTempo.Caption := '3 - Há quanto tempo o Sr. (a) vem utilizando o colchão de espuma da "'+
                                dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString +'"?';

  gbEmComparacao.Caption := '4 - Em comparação com outras alternativas de colchões, a "'+
                                dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString +'" é:';

  gbGrauSatisfacao.Caption := '5 - Qual seu grau de satisfação geral com o seu colchão da "'+
                                dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString +'"?';
  dpkDataInicial.SetFocus;
end;

procedure TCSU_FM_M_PSC.LimparCampos;
begin

  txtClientesEncontrados.Text      := '0';

  txtQtdeSimQtde.Text  := '0';
  txtQtdeSimPer.Text   := '0,00';
  txtQtdeNaoQtde.Text  := '0';
  txtQtdeNaoPer.Text   := '0,00';

  txtQtdeRespostasSimQtde.Text  := '0';
  txtQtdeRespostasSimPer.Text   := '0,00';
  txtQtdeRespostasNaoQte.Text   := '0';
  txtQtdeRespostasNaoPer.Text   := '0,00';

  txtPessoasMenos1AnoQtde.Text  := '0';
  txtPessoasMenos1AnoPer.Text   := '0,00';

  txtPessoasMais1AnoQtde.Text   := '0';
  txtPessoasMais1AnoPer.Text    := '0,00';

  txtMelhorQtde.Text  := '0';
  txtMelhorPer.Text   := '0,00';
  txtIgualQtde.Text   := '0';
  txtIgualPer.Text    := '0,00';
  txtPiorQtde.Text    := '0';
  txtPiorPer.Text     := '0,00';


  txtExcelenteQtde.Text  := '0';
  txtExcelentePer.Text   := '0,00';
  txtBomQtde.Text        := '0';
  txtBomPer.Text         := '0,00';
  txtRazoavelQtde.Text   := '0';
  txtRazoavelPer.Text    := '0,00';
  txtRuimQtde.Text       := '0';
  txtRuimPer.Text        := '0,00';

  txtQtdePessoas.Text := '0';
  txtPerPessoas.Text := '0,00';
end;

end.
