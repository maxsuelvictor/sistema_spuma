unit FIN_UN_M_REC_RET;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, vcl.wwdblook, JvExStdCtrls, JvCombobox, JvDBCombobox,
  Vcl.Buttons, Datasnap.DBClient, Vcl.Mask, JvExMask, JvToolEdit;

type
  TFIN_FM_M_REC_RET = class(TPAD_FM_X_FRM)
    grdBoletos: TwwDBGrid;
    Shape6: TShape;
    Label23: TLabel;
    Label21: TLabel;
    Shape4: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnProcessarRetorno: TBitBtn;
    btnBaixa: TBitBtn;
    dsoFinMov: TDataSource;
    OpenDialog1: TOpenDialog;
    txtCodTif: TEdit;
    txtCodPct: TEdit;
    txtCodFpg: TEdit;
    txtDescTif: TEdit;
    txtDescPct: TEdit;
    txtDescFpg: TEdit;
    txtCodCtc: TJvComboEdit;
    txtDescCtc: TEdit;
    cdsRetorno: TClientDataSet;
    cdsRetornoid_cliente: TIntegerField;
    cdsRetornoint_nomecli: TStringField;
    cdsRetornobol_nosso_numero: TStringField;
    cdsRetornovlr_juros: TCurrencyField;
    cdsRetornovlr_desconto: TCurrencyField;
    cdsRetornovlr_pagamento: TCurrencyField;
    cdsRetornoid_titulo: TIntegerField;
    cdsRetornonum_parcela: TStringField;
    cdsRetornodata: TDateField;
    cdsRetornoselecao: TBooleanField;
    cdsRetornovlr_saldo: TCurrencyField;
    Shape1: TShape;
    Label5: TLabel;
    cdsRetornodata_credito: TDateField;
    lblSelecionarTodos: TLabel;
    lblDesmarcarTodos: TLabel;
    cdsRetornoint_bol_id_conta: TIntegerField;
    cdsRetornoint_bol_desc_ctc: TStringField;
    Label7: TLabel;
    lblQtdeTitArq: TLabel;
    cdsRetornoemp_fantasia: TStringField;
    rgOpcaoEmp: TRadioGroup;
    cdsRetornoid_empresa: TIntegerField;
    cdsRetornovlr_acrescimo: TCurrencyField;
    Shape2: TShape;
    Label6: TLabel;
    cdsRetornobol_nome_arq_ret: TStringField;
    cdsRetornovlr_tarifa: TCurrencyField;
    Memo1: TMemo;
    cdsRetornolayout_remessa: TIntegerField;
    btnCancelarBxa: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnProcessarRetornoClick(Sender: TObject);
    procedure txtCodCtcButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtCodCtcExit(Sender: TObject);
    procedure btnBaixaClick(Sender: TObject);
    procedure grdBoletosCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure grdBoletosFieldChanged(Sender: TObject; Field: TField);
    procedure lblSelecionarTodosClick(Sender: TObject);
    procedure lblDesmarcarTodosClick(Sender: TObject);
    procedure btnCancelarBxaClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirDados;
    function TestarCampos: Boolean;
  public
    { Public declarations }
  end;

var
  FIN_FM_M_REC_RET: TFIN_FM_M_REC_RET;

implementation

{$R *.dfm}

uses uDmGeral, AcbrBoleto,ACBrBoletoConversao, ACBrUtil, FIN_RN_M_BOL, PSQ_UN_X_CTC,uProxy,enFunc;

procedure TFIN_FM_M_REC_RET.btnBaixaClick(Sender: TObject);
procedure MostraMensagem;
  begin
    ShowMessage('Mensagem');
  end;
var
  SMPrincipal : TSMClient;
  DadosRet: TClientDataSet;
  rTitulos,Retorno: String;
  IdCtc: integer;
  ExisteBolSel: Boolean;
begin
  inherited;

   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('dta_pag_ret_banco').AsString = '') then
    begin
      ShowMessage('É necessário preencher tipo de data para baixa na tela de parâmetros, na aba Financeiro, no bloco Retorno do Banco.');
      exit;
    end;

   ExisteBolSel := false;
   DadosRet  := TClientDataSet.Create(nil);

   if rgOpcaoEmp.ItemIndex = -1 then
      begin
        Showmessage('Selecione a opção se deseja "Boletos da empresa logada" ou de "Todas as empresas"');
        abort;
      end;
   cdsRetorno.First;
   while not (cdsRetorno.Eof)  do
        begin
          if rgOpcaoEmp.ItemIndex = 0 then
             begin
                if (cdsRetorno.FieldByName('selecao').AsBoolean) and
                   (cdsRetorno.FieldByName('id_empresa').AsInteger = dmGEral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger) then
                   begin
                      ExisteBolSel := true;
                      if rTitulos <> '' then
                         begin
                           rTitulos :=
                           rTitulos + ',' +''''+ cdsRetorno.FieldByName('id_titulo').AsString+'''';
                         end;
                      if rTitulos = '' then
                         begin
                           rTitulos :=
                           rTitulos +''''+cdsRetorno.FieldByName('id_titulo').AsString+'''';
                         end;
                   end;
             end
          else
             begin
                if (cdsRetorno.FieldByName('selecao').AsBoolean) then
                   begin
                      ExisteBolSel := true;
                      if rTitulos <> '' then
                         begin
                           rTitulos :=
                           rTitulos + ',' +''''+ cdsRetorno.FieldByName('id_titulo').AsString+'''';
                         end;
                      if rTitulos = '' then
                         begin
                           rTitulos :=
                           rTitulos +''''+cdsRetorno.FieldByName('id_titulo').AsString+'''';
                         end;
                   end;
             end;
          cdsRetorno.Next;
        end;
   cdsRetorno.First;

   if not ExisteBolSel  then
      begin
        Showmessage('Nenhum boleto foi selecionado para baixa.');
        abort;
      end;

   if rgOpcaoEmp.ItemIndex = 0 then
      begin
        Showmessage('AVISO: A opção de "Boletos somente nesta empresa" foi selecionada, portanto, boletos de outra empresa que foram selecionado serão descartados.');
      end;

   if Dc_MessageDlgCheck('Confirma a baixa dos boletos?', mtConfirmation, [mbYes, mbNo],
          0, mrNo, true, false,'', nil) = 7 then // 7 - Quer dizer NAO
      begin
        Abort;
      end
   else
      begin
         DadosRet.data := cdsRetorno.Data;
         IdCtc := strtoint(txtCodCtc.text);

         try
           Screen.Cursor := crHourGlass;
           SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
           retorno := SMPrincipal.enBxaTitRetBco(DadosRet,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger,rTitulos,txtCodPct.text,IdCtc,xFuncionario,strtoint(txtCodFpg.Text),
                                            dmGeral.CAD_CD_C_PAR_CTR.FieldByName('rbx_ret_id_ccu').AsInteger,strtoint(txtCodTif.Text));
           if retorno <> '' then
              begin
                ShowMessage(retorno);
                cdsRetorno.EmptyDataSet;
              end;
         finally
           FreeAndNil(SMPrincipal);
           rgOpcaoEmp.ItemIndex := -1;
           Screen.Cursor := crDefault;
         end;
      end;
end;

procedure TFIN_FM_M_REC_RET.btnCancelarBxaClick(Sender: TObject);
procedure MostraMensagem;
  begin
    ShowMessage('Mensagem');
  end;
var
  SMPrincipal : TSMClient;
  DadosRet: TClientDataSet;
  rTitulos,Retorno: String;
  IdCtc: integer;
  ExisteBolSel,ExisteBolNBxa: Boolean;
begin
  inherited;

   if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('dta_pag_ret_banco').AsString = '') then
    begin
      ShowMessage('É necessário preencher tipo de data para baixa na tela de parâmetros, na aba Financeiro, no bloco Retorno do Banco.');
      exit;
    end;

   rTitulos := '';
   ExisteBolSel := false;
   ExisteBolNBxa := false;
   DadosRet  := TClientDataSet.Create(nil);

   if rgOpcaoEmp.ItemIndex = -1 then
      begin
        Showmessage('Selecione a opção se deseja "Boletos da empresa logada" ou de "Todas as empresas"');
        abort;
      end;
   cdsRetorno.First;
   while not (cdsRetorno.Eof)  do
        begin
          if rgOpcaoEmp.ItemIndex = 0 then
             begin
                if (cdsRetorno.FieldByName('vlr_saldo').AsCurrency <= 0) and
                   (cdsRetorno.FieldByName('selecao').AsBoolean) and
                   (cdsRetorno.FieldByName('id_empresa').AsInteger = dmGEral.CAD_CD_C_PAR.FieldByName('id_empresa').AsInteger) then
                   begin
                      ExisteBolSel := true;
                      if rTitulos <> '' then
                         begin
                           rTitulos :=
                           rTitulos + ',' +''''+ cdsRetorno.FieldByName('id_titulo').AsString+'''';
                         end;
                      if rTitulos = '' then
                         begin
                           rTitulos :=
                           rTitulos +''''+cdsRetorno.FieldByName('id_titulo').AsString+'''';
                         end;
                   end
                else if (cdsRetorno.FieldByName('vlr_saldo').AsCurrency > 0)  then
                   begin
                      ExisteBolNBxa := true;
                   end;
             end
          else
             begin
                if (cdsRetorno.FieldByName('vlr_saldo').AsCurrency <= 0) and
                   (cdsRetorno.FieldByName('selecao').AsBoolean) then
                   begin
                      ExisteBolSel := true;
                      if rTitulos <> '' then
                         begin
                           rTitulos :=
                           rTitulos + ',' +''''+ cdsRetorno.FieldByName('id_titulo').AsString+'''';
                         end;
                      if rTitulos = '' then
                         begin
                           rTitulos :=
                           rTitulos +''''+cdsRetorno.FieldByName('id_titulo').AsString+'''';
                         end;
                   end
                else if (cdsRetorno.FieldByName('vlr_saldo').AsCurrency > 0)  then
                   begin
                      ExisteBolNBxa := true;
                   end;
             end;
          cdsRetorno.Next;
        end;
   cdsRetorno.First;

   if not ExisteBolSel  then
      begin
        Showmessage('Nenhum boleto foi selecionado para cancelamento da baixa.');
        abort;
      end;

   if rgOpcaoEmp.ItemIndex = 0 then
      begin
        Showmessage('AVISO: A opção de "Boletos somente nesta empresa" foi selecionada, portanto, boletos de outra empresa que foram selecionado serão descartados.');
      end;

    if ExisteBolNBxa  then
      begin
        Showmessage('AVISO: Boletos não baixados que foram selecionados serão descartados.');
      end;


   if Dc_MessageDlgCheck('Confirma o cancelamento da baixa dos boletos?', mtConfirmation, [mbYes, mbNo],
          0, mrNo, true, false,'', nil) = 7 then // 7 - Quer dizer NAO
      begin
        Abort;
      end
   else
      begin
         DadosRet.data := cdsRetorno.Data;
         IdCtc := strtoint(txtCodCtc.text);

         try
           Screen.Cursor := crHourGlass;
           SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
           retorno := SMPrincipal.enCancBxaTitRetBco(DadosRet,rTitulos);
           if retorno <> '' then
              begin
                ShowMessage(retorno);
                cdsRetorno.EmptyDataSet;
              end;
         finally
           FreeAndNil(SMPrincipal);
           rgOpcaoEmp.ItemIndex := -1;
           Screen.Cursor := crDefault;
         end;
      end;
end;

procedure TFIN_FM_M_REC_RET.btnProcessarRetornoClick(Sender: TObject);
var
   erro, rTitulos : String;
   i,IdCtc    : Integer;
   NomeArqRet: String;
begin
  // Pesquisa e Ler Arquido de Retorno
  //  dmGeral.enBoleto.LayoutRemessa := strToLayoutRemessa(iRet, Trim(BUS_CD_C_CTC.FieldByName('layout_remessa').AsString)) ;
  //dmGeral.enBoleto.DirArqRetorno := ExtractFilePath(Application.ExeName)+'Emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString +'\RemessaBoleto';

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('dta_pag_ret_banco').AsString = '') then
    begin
      ShowMessage('É necessário preencher tipo de data para baixa na tela de parâmetros, na aba Financeiro, no bloco Retorno do Banco.');
      exit;
    end;


  cdsRetorno.EmptyDataSet;

  if trim(txtCodCtc.text) = '' then
     begin
       Showmessage('Conta corrente deve ser informada!');
       exit;
     end;

  if dmGeral.BUS_CD_C_CTC.FieldByName('TIPO_COBRANCA').AsInteger = 1 then // Banco do Brasil
     begin
        if trim(dmgeral.BUS_CD_C_CTC.FieldByName('CNPJ_TITULAR').AsString) = '' then
           begin
             Showmessage('Cnpj titular da conta não foi encontrado nos cadastro da conta corrente.');
             exit;
           end;
     end;



  dmGeral.enBoleto.ACBrBoletoFC.DirLogo := '';
  dmGeral.enBoleto.ACBrBoletoFC.Filtro  := fiNenhum;
  dmGeral.enBoleto.ACBrBoletoFC.LayOut  := lPadrao;

  carregaInfconta(dmGeral.BUS_CD_C_CTC);




 { case dmGeral.BUS_CD_C_CTC.FieldByName('tipo_cobranca').AsInteger of
     0: dmGeral.enBoleto.Banco.TipoCobranca := cobNenhum;
     1: dmGeral.enBoleto.Banco.TipoCobranca := cobBancoDoBrasil;
     2: dmGeral.enBoleto.Banco.TipoCobranca := cobSantander;
     3: dmGeral.enBoleto.Banco.TipoCobranca := cobCaixaEconomica;
     4: dmGeral.enBoleto.Banco.TipoCobranca := cobCaixaSicob;
     5: dmGeral.enBoleto.Banco.TipoCobranca := cobBradesco;
     6: dmGeral.enBoleto.Banco.TipoCobranca := cobItau;
     7: dmGeral.enBoleto.Banco.TipoCobranca := cobBancoMercantil;
     8: dmGeral.enBoleto.Banco.TipoCobranca := cobSicred;
     9: dmGeral.enBoleto.Banco.TipoCobranca := cobBancoob;
     10: dmGeral.enBoleto.Banco.TipoCobranca := cobBanrisul;
     11: dmGeral.enBoleto.Banco.TipoCobranca := cobBanestes;
     12: dmGeral.enBoleto.Banco.TipoCobranca := cobHSBC;
     13: dmGeral.enBoleto.Banco.TipoCobranca := cobBancoDoNordeste;
     14: dmGeral.enBoleto.Banco.TipoCobranca := cobBRB;
     15: dmGeral.enBoleto.Banco.TipoCobranca := cobBicBanco;
     16: dmGeral.enBoleto.Banco.TipoCobranca := cobBradescoSICOOB;
     17: dmGeral.enBoleto.Banco.TipoCobranca := cobBancoSafra;
     18: dmGeral.enBoleto.Banco.TipoCobranca := cobSafraBradesco;
     19: dmGeral.enBoleto.Banco.TipoCobranca := cobBancoCECRED;
  end;
  //dmGeral.enBoleto.LayoutRemessa := c240;  Maxsuel -> Não precisa , ele já faz automático




  // dmGeral.enBoleto.Cedente.Convenio   := '2721688';


  if dmGeral.enBoleto.Banco.TipoCobranca = cobBancoDoBrasil then
     begin
       //dmGeral.enBoleto.Banco.Digito          := 9;
       //dmGeral.enBoleto.Banco.Numero          := 001;

       dmGeral.enBoleto.Banco.Digito          := dmGeral.BUS_CD_C_CTCconta_corrente_dig.AsInteger;
       dmGeral.enBoleto.Banco.Numero          := dmGeral.BUS_CD_C_CTCbanco.AsInteger;
     end;

  if dmGeral.enBoleto.Banco.TipoCobranca = cobBradesco then
     begin
       //dmGeral.enBoleto.Banco.Digito          := 2;
       //dmGeral.enBoleto.Banco.Numero          := 237;
       dmGeral.enBoleto.Banco.Digito          := dmGeral.BUS_CD_C_CTCconta_corrente_dig.AsInteger;
       dmGeral.enBoleto.Banco.Numero          := dmGeral.BUS_CD_C_CTCbanco.AsInteger;
       dmGeral.enBoleto.Cedente.Agencia       := dmGeral.BUS_CD_C_CTCagencia.AsString;
       dmGeral.enBoleto.Cedente.Conta         := dmGeral.BUS_CD_C_CTCconta_corrente.AsString;
       dmGeral.enBoleto.Cedente.CodigoCedente := dmGeral.BUS_CD_C_CTCcedente_cod.AsString;
     end; }


  //dmGeral.enBoleto.Cedente.Convenio   := '2721688';
  try
    grdBoletos.OnFieldChanged := nil;



  if OpenDialog1.Execute then
      begin
          Screen.Cursor := crHourGlass;
          NomeArqRet := ExtractFileName(OpenDialog1.FileName);
          dmGeral.enBoleto.NomeArqRetorno := ExtractFileName(OpenDialog1.FileName);
          dmGeral.enBoleto.DirArqRetorno :=  ExtractFilePath(OpenDialog1.FileName);
          dmGeral.enBoleto.LerRetorno;

          lblQtdeTitArq.Caption := IntToStr(dmGeral.enBoleto.ListadeBoletos.Count);
          dmGeral.BusContaCorr(0,txtCodCtc.Text);

          for i := 0 to dmGeral.enBoleto.ListadeBoletos.Count-1 do
            begin
              if dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorRecebido > 0 then
                 begin
                   dmGeral.BUS_CD_M_REC.Close;
                   dmGeral.BUS_CD_M_REC.Data :=
                       // Comentado depoi de conversar com Mariel, no dia 31/03/2016
                      { dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([105, dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                                                                       strtoint(dmGeral.enBoleto.ListadeBoletos.Objects[i].NossoNumero),
                                                                       txtCodCtc.Text]));}
                    dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([109,
                                                     strtocurr(dmGeral.enBoleto.ListadeBoletos.Objects[i].NossoNumero),
                                                     dmGeral.BUS_CD_C_CTC.FieldByName('BANCO').AsString]));

                   dmGeral.BusCliente(0,dmGeral.BUS_CD_M_REC.FieldByName('ID_CLIENTE').AsString);

                   cdsRetorno.Insert;
                   cdsRetorno.FieldByName('selecao').AsBoolean         := true;

                   if dmGeral.BUS_CD_M_REC.RecordCount = 1 then
                      begin
                        cdsRetorno.FieldByName('id_empresa').AsInteger      := dmGeral.BUS_CD_M_REC.FieldByName('ID_EMPRESA').AsInteger;
                        cdsRetorno.FieldByName('emp_fantasia').AsString     := dmGeral.BUS_CD_M_REC.FieldByName('INT_NOMEEMP').AsString;
                        cdsRetorno.FieldByName('id_cliente').AsInteger      := dmGeral.BUS_CD_M_REC.FieldByName('ID_CLIENTE').AsInteger;
                        cdsRetorno.FieldByName('int_nomecli').AsString      := dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
                        cdsRetorno.FieldByName('id_titulo').AsInteger       := dmGeral.BUS_CD_M_REC.FieldByName('ID_TITULO').AsInteger;
                        cdsRetorno.FieldByName('num_parcela').AsString      := dmGeral.BUS_CD_M_REC.FieldByName('num_parcela').AsString;
                        cdsRetorno.FieldByName('int_bol_desc_ctc').AsString := dmGeral.BUS_CD_M_REC.FieldByName('INT_NOMECTCBOL').AsString;
                      end;

                   if dmGeral.BUS_CD_M_REC.RecordCount > 1 then
                      begin
                        cdsRetorno.FieldByName('int_nomecli').AsString      := 'Mais de 1 cliente com esse nosso número.'
                      end;

                   if (cdsRetorno.FieldByName('id_titulo').AsInteger = 0) or
                      (not (cdsRetorno.FieldByName('vlr_saldo').AsCurrency > 0)) then
                      begin
                        cdsRetorno.FieldByName('selecao').AsBoolean := false;
                      end;

                   cdsRetorno.FieldByName('layout_remessa').AsInteger  := dmGeral.BUS_CD_C_CTC.FieldByName('layout_remessa').AsInteger;

                   cdsRetorno.FieldByName('vlr_saldo').AsCurrency      := dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency;
                   cdsRetorno.FieldByName('vlr_tarifa').AsCurrency     := dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorDespesaCobranca;
                   cdsRetorno.FieldByName('vlr_desconto').AsCurrency   := dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorDesconto;
                   cdsRetorno.FieldByName('vlr_juros').AsCurrency      := dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorMoraJuros;
                   cdsRetorno.FieldByName('vlr_acrescimo').AsCurrency  := dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorOutrosCreditos;

                   if dmGeral.BUS_CD_C_CTC.FieldByName('layout_remessa').AsInteger = 0 then
                      begin
                        // 0 - CNAB400
                        cdsRetorno.FieldByName('vlr_pagamento').AsCurrency  :=
                             dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorRecebido +
                             dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorDespesaCobranca;
                      end
                   else
                      begin
                        cdsRetorno.FieldByName('vlr_pagamento').AsCurrency  := dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorRecebido;
                      end;

                   cdsRetorno.FieldByName('bol_nosso_numero').AsString := dmGeral.enBoleto.ListadeBoletos.Objects[i].NossoNumero;
                   //cdsRetorno.FieldByName('Data').AsDateTime       := dmGeral.enBoleto.ListadeBoletos.Objects[i].DataBaixa;
                   //cdsRetorno.FieldByName('Data').AsDateTime         := dmGeral.enBoleto.ListadeBoletos.Objects[i].DataProcessamento;
                   cdsRetorno.FieldByName('data').AsDateTime           := dmGeral.enBoleto.ListadeBoletos.Objects[i].DataOcorrencia;
                   cdsRetorno.FieldByName('data_credito').AsDateTime   := dmGeral.enBoleto.ListadeBoletos.Objects[i].DataCredito;
                   cdsRetorno.FieldByName('bol_nome_arq_ret').AsString := NomeArqRet;


                   { memo1.lines.Add('Nosso número: ' + cdsRetorno.FieldByName('bol_nosso_numero').AsString    + '; ' + #13 +
                                    'Valor pago : ' + currtostr(dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorPago) + '; ' + #13 +
                                    'Valor recibo : ' + currtostr(dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorRecebido) + '; ' + #13 +
                                    'Valor desc : ' + currtostr(dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorDesconto) + '; ' + #13 +
                                    'Valor despesa cobrança : ' + currtostr(dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorDespesaCobranca) + '; ' + #13 +
                                    'Valor abatimento : ' + currtostr(dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorAbatimento) + '; ' + #13 +
                                    'ValorDescontoAntDia: ' + currtostr(dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorDescontoAntDia) + '; ' + #13 +
                                    'Valor Juros: ' + currtostr(dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorMoraJuros)            + '; ' + #13 +
                                    'ValorIOF: ' + currtostr(dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorIOF)            + '; ' + #13 +
                                    'ValorOutrasDespesas: ' + currtostr(dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorOutrasDespesas) + ';' + #13 +
                                    'ValorOutrosCreditos: ' + currtostr(dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorOutrosCreditos));
                  }
        {                                             dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorOutrosCreditos;
                  //Campos que podem ser utilizados no momento da baixa.
                  cdsRetorno.FieldByName('Vlr_Titulo').AsCurrency:= dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorDocumento;
                  cdsRetorno.FieldByName('Vlr_Titulo').AsCurrency:= dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorDespesaCobranca;
                  cdsRetorno.FieldByName('Vlr_Titulo').AsCurrency:= dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorAbatimento;
                  cdsRetorno.FieldByName('Vlr_Titulo').AsCurrency:= dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorDesconto;
                  cdsRetorno.FieldByName('Vlr_Titulo').AsCurrency:= dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorMoraJuros;
                  cdsRetorno.FieldByName('Vlr_Titulo').AsCurrency:= dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorIOF;
                  cdsRetorno.FieldByName('Vlr_Titulo').AsCurrency:= dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorOutrasDespesas;
                  cdsRetorno.FieldByName('Vlr_Titulo').AsCurrency:= dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorOutrosCreditos;
                  cdsRetorno.FieldByName('Vlr_Titulo').AsCurrency:= dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorPago;
                  cdsRetorno.FieldByName('Vlr_Titulo').AsCurrency:= dmGeral.enBoleto.ListadeBoletos.Objects[i].ValorDescontoAntDia;
                  cdsRetorno.FieldByName('NossoNumero').AsString := dmGeral.enBoleto.ListadeBoletos.Objects[i].NumeroDocumento;
                  cdsRetorno.FieldByName('NossoNumero').AsString := dmGeral.enBoleto.ListadeBoletos.Objects[i].LocalPagamento;
                  cdsRetorno.FieldByName('NossoNumero').AsString := dmGeral.enBoleto.ListadeBoletos.Objects[i].LinhaDigitada;
                   }

                   cdsRetorno.Post;
                 end;
            end;
      end;

  finally
     grdBoletos.OnFieldChanged := grdBoletosFieldChanged;
     Screen.Cursor := crDefault;
  end;

end;

procedure TFIN_FM_M_REC_RET.ExibirDados;
begin

  {dmGeral.BusContaCorr(3,'1');
  while (not dmGeral.BUS_CD_C_CTC.Eof) do
    begin
      cbbContaCorrente.AddItem(dmGeral.BUS_CD_C_CTC.FieldByName('ID_CONTA').AsString+' - '+dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString,nil);
      dmGeral.BUS_CD_C_CTC.Next;
    end;}

  if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('rbx_ret_id_tipo_financeiro').AsString) = ''then
     begin
       ShowMessage('Tipo financeiro para baixa automática de boleto não foi encontrado nos parâmetros.' + #13 +
                   'Verifique: Parâmetros\Aba Financeiro\Baixa automática de boletos');
       btnProcessarRetorno.Enabled := false;
       btnBaixa.Enabled            := false;
        btnCancelarBxa.Enabled     := false;
       exit;
     end;

  if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('rbx_ret_id_plano').AsString) = ''then
     begin
       ShowMessage('Plano de conta para baixa automática de boleto não foi encontrado nos parâmetros.' + #13 +
                   'Verifique: Parâmetros\Aba Financeiro\Baixa automática de boletos');
       btnProcessarRetorno.Enabled := false;
       btnBaixa.Enabled            := false;
        btnCancelarBxa.Enabled     := false;
       exit;
     end;

  if trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('rbx_ret_id_forma_pag').AsString) = ''then
     begin
       ShowMessage('Forma de pagamento para baixa automática de boleto não foi encontrado nos parâmetros.' + #13 +
                   'Verifique: Parâmetros\Aba Financeiro\Baixa automática de boletos');
       btnProcessarRetorno.Enabled := false;
       btnBaixa.Enabled            := false;
        btnCancelarBxa.Enabled     := false;
       exit;
     end;

  dmGeral.BusTipoFin(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('rbx_ret_id_tipo_financeiro').AsString);
  txtCodTif.Text := dmGeral.BUS_CD_C_TIF.FieldByName('id_tipo_financeiro').AsString;
  txtDescTif.Text := dmGeral.BUS_CD_C_TIF.FieldByName('descricao').AsString;
  dmGeral.BUS_CD_C_TIF.Close;

  dmGeral.BusPlanoCta(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('rbx_ret_id_plano').AsString);
  txtCodPct.Text := dmGeral.BUS_CD_C_PCT.FieldByName('id_plano').AsString;
  txtDescPct.Text := dmGeral.BUS_CD_C_PCT.FieldByName('descricao').AsString;
  dmGeral.BUS_CD_C_PCT.Close;

  dmGeral.BusFormaPgtos(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('rbx_ret_id_forma_pag').AsString);
  txtCodFpg.Text :=  dmGeral.BUS_CD_C_FPG.FieldByName('id_forma_pag').AsString;
  txtDescFpg.Text :=  dmGeral.BUS_CD_C_FPG.FieldByName('descricao').AsString;
  dmGeral.BUS_CD_C_FPG.Close;
end;

procedure TFIN_FM_M_REC_RET.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_M_REC_RET);
end;

procedure TFIN_FM_M_REC_RET.FormShow(Sender: TObject);
begin
  inherited;
  ExibirDados;
  cdsRetorno.close;
  cdsRetorno.CreateDataSet;
  lblQtdeTitArq.Caption := '';
end;

procedure TFIN_FM_M_REC_RET.txtCodCtcButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CTC := TPSQ_FM_X_CTC.Create(Self);
   PSQ_FM_X_CTC.ShowModal;
      if not PSQ_FM_X_CTC.BUS_CD_C_CTC.IsEmpty then
         begin
           txtCodCtc.Text :=
                PSQ_FM_X_CTC.BUS_CD_C_CTC.FieldByName('ID_CONTA').AsString;
           txtDescCtc.text :=
                PSQ_FM_X_CTC.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_CTC.Free;
end;

procedure TFIN_FM_M_REC_RET.txtCodCtcExit(Sender: TObject);
begin
  inherited;
  txtDescCtc.Text := '';
  if (trim(txtCodCtc.Text) <> '') and  (trim(txtCodCtc.Text) <> '')  then
     begin
       dmGeral.BusContaCorr(0,txtCodCtc.Text);

       if not dmGeral.BUS_CD_C_CTC.IsEmpty then
          begin
            if trim(dmGeral.BUS_CD_C_CTC.FieldByName('layout_remessa').AsString) = '' then
               begin
                  ShowMessage('Conta corrente não cadastrada.');
                  txtCodCtc.Text := '';
                  txtDescCtc.Text := '';
                  dmGeral.BUS_CD_C_CTC.close;
                  txtCodCtc.SetFocus;
                  abort;
               end;

            txtDescCtc.text :=
               dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString;

          end
       else
          begin
            ShowMessage('Conta corrente não cadastrada.');
            txtCodCtc.Text := '';
            txtDescCtc.Text := '';
          end;
     end;

end;

procedure TFIN_FM_M_REC_RET.grdBoletosCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
var
  result: Boolean;
begin
  inherited;
   result := false;

  if cdsRetorno.FieldByName('vlr_saldo').AsCurrency > 0 then
     begin
       AFont.Color := clGreen;
       //result := true;
     end;

  if cdsRetorno.FieldByName('vlr_saldo').AsCurrency <= 0 then
     begin
       AFont.Color := clBlue;
       result := true;
     end;

  if cdsRetorno.FieldByName('id_titulo').AsInteger = 0 then
     begin
       AFont.Color := clRed;
       result := true;
     end;

  if result = false then
     begin
       if (cdsRetorno.FieldByName('vlr_saldo').AsCurrency > 0 ) and
          ( (cdsRetorno.FieldByName('vlr_saldo').AsCurrency) <>
            (cdsRetorno.FieldByName('vlr_pagamento').AsCurrency
             -
            (cdsRetorno.FieldByName('vlr_juros').AsCurrency +
             cdsRetorno.FieldByName('vlr_acrescimo').AsCurrency))) then
           begin
             AFont.Color := clPurple;
           end;
     end;
end;

procedure TFIN_FM_M_REC_RET.grdBoletosFieldChanged(Sender: TObject;
  Field: TField);
begin
  inherited;
  if Field.FieldName = 'selecao' then
     begin
       if cdsRetorno.FieldByName('id_titulo').AsInteger = 0 then
          begin
            ShowMessage('Este boleto não foi encontrado no sistema.');
            cdsRetorno.cancel;
            abort;
          end;
       {if cdsRetorno.FieldByName('vlr_saldo').AsCurrency = 0 then
          begin
            ShowMessage('Este boleto já foi baixado no sistema.');
            cdsRetorno.cancel;
            abort;
          end;  }
       if cdsRetorno.FieldByName('vlr_saldo').AsCurrency > 0 then
          begin
             // Comentado por Maxsuel Victor em 08/06/2017, depois de uma reunião com Mariel
             // motivado pela tarefa 3434 (Teresina Agrícola - Cristina)

             { if (cdsRetorno.FieldByName('vlr_saldo').AsCurrency) <>
                 (cdsRetorno.FieldByName('vlr_pagamento').AsCurrency +
                  cdsRetorno.FieldByName('vlr_tarifa').AsCurrency -
                   (cdsRetorno.FieldByName('vlr_juros').AsCurrency +
                    cdsRetorno.FieldByName('vlr_acrescimo').AsCurrency)) then
              begin
                ShowMessage('Este boleto está com valor de baixa inconsistente:' + #13 +
                            'Vlr saldo: ' + formatCurr('###,###,##0.00',cdsRetorno.FieldByName('vlr_saldo').AsCurrency) + ' <> ' +
                            '(Vlr pagamento + Vlr tarifa) - (vlr juros + vlr acréscimo): ' +
                            formatCurr('###,###,##0.00', (cdsRetorno.FieldByName('vlr_pagamento').AsCurrency+
                                                          cdsRetorno.FieldByName('vlr_tarifa').AsCurrency -
                            (cdsRetorno.FieldByName('vlr_juros').AsCurrency +
                             cdsRetorno.FieldByName('vlr_acrescimo').AsCurrency))));
                cdsRetorno.cancel;
                abort;
              end;}

             { layout_remessa
                 0 - CNAB400
                 1 - CNAB240 }


                  if (cdsRetorno.FieldByName('vlr_saldo').AsCurrency) <>
                     (cdsRetorno.FieldByName('vlr_pagamento').AsCurrency -
                      (cdsRetorno.FieldByName('vlr_juros').AsCurrency +
                       cdsRetorno.FieldByName('vlr_acrescimo').AsCurrency)) then
                      begin
                         ShowMessage('Este boleto está com valor de baixa inconsistente:' + #13 +
                                  'Vlr saldo: ' + formatCurr('###,###,##0.00',cdsRetorno.FieldByName('vlr_saldo').AsCurrency) + ' <> ' +
                                  '(Vlr pagamento) - (vlr juros + vlr acréscimo): ' +
                                  formatCurr('###,###,##0.00', (cdsRetorno.FieldByName('vlr_pagamento').AsCurrency -
                                  (cdsRetorno.FieldByName('vlr_juros').AsCurrency +
                                   cdsRetorno.FieldByName('vlr_acrescimo').AsCurrency))));
                         cdsRetorno.cancel;
                         abort;
                      end;

          end;
     end;
end;

procedure TFIN_FM_M_REC_RET.lblDesmarcarTodosClick(Sender: TObject);
begin
  inherited;
  if cdsRetorno.IsEmpty then
     begin
       ShowMessage('Nenhum registro encontrado.');
       abort;
     end;

  if cdsRetorno.RecordCount>0 then
     begin
       cdsRetorno.First;
       while not cdsRetorno.EOF do
         begin
           cdsRetorno.Edit;
           cdsRetorno.FieldByName('SELECAO').AsBoolean := false;
           cdsRetorno.Next;
         end;
       cdsRetorno.First;
     end;
end;

procedure TFIN_FM_M_REC_RET.lblSelecionarTodosClick(Sender: TObject);
begin
  inherited;
  if cdsRetorno.IsEmpty then
     begin
       ShowMessage('Nenhum registro encontrado.');
       abort;
     end;


  if cdsRetorno.RecordCount>0 then
     begin
       cdsRetorno.First;
       while not cdsRetorno.EOF do
         begin
           cdsRetorno.Edit;
           cdsRetorno.FieldByName('SELECAO').AsBoolean := true;
           cdsRetorno.Next;
         end;
       cdsRetorno.First;
     end;
end;

function TFIN_FM_M_REC_RET.TestarCampos: Boolean;
var
   msg: String;
begin
   msg:= '';


end;

end.
