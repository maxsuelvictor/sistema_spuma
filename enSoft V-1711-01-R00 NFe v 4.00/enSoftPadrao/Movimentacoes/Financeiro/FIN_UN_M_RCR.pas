unit FIN_UN_M_RCR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  vcl.wwdblook, JvExMask, JvToolEdit, JvDBControls, Vcl.Mask, JvExExtCtrls,
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
  dxSkinXmas2008Blue, frxClass, frxDBSet, frxExportPDF, frxExportXLS,
  Vcl.DBGrids, Datasnap.DBClient, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TFIN_FM_M_RCR = class(TPAD_FM_X_PAD)
    lblCobranca: TLabel;
    txtControle: TDBEdit;
    lblCliente: TLabel;
    txtCliente: TJvDBComboEdit;
    txtClienteNome: TDBText;
    lblHistorico: TLabel;
    txtHistorico: TDBMemo;
    lblVlrLancamento: TLabel;
    txtVlrLancamento: TDBMemo;
    rgDebCre: TDBRadioGroup;
    lblDataCredito: TLabel;
    dpkDataCredito: TJvDBDateEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    gbFormaPag: TGroupBox;
    lblTamanho: TLabel;
    lblMaquineta: TLabel;
    dpkVencimento: TJvDBDateEdit;
    cbbMaquineta: TwwDBLookupCombo;
    gbCheque: TGroupBox;
    lblAgencia: TLabel;
    Label1: TLabel;
    lblNCheque: TLabel;
    lblEmitente: TLabel;
    lblBanco: TLabel;
    txtBanco: TDBEdit;
    txtAgencia: TDBEdit;
    txtContaCorrente: TDBEdit;
    txtNCheque: TDBEdit;
    txtEmitente: TDBEdit;
    cbbContaCorrente: TwwDBLookupCombo;
    lblContaCorrente: TLabel;
    lblFormaPagamento: TLabel;
    cbbFormaPagamento: TwwDBLookupCombo;
    FIN_FR_M_RCR: TfrxReport;
    FIN_XL_R_RCR: TfrxXLSExport;
    FIN_PD_M_RCR: TfrxPDFExport;
    FIN_DB_M_RCR: TfrxDBDataset;
    txtParcelasCartao: TDBMemo;
    lblParcelasCartao: TLabel;
    btnImprimirRecibo: TcxButton;
    FIN_FR_M_RCR_LIN: TfrxReport;
    pmCancelar: TPopupMenu;
    btnCancelarCredito: TMenuItem;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label2: TLabel;
    txtPesquisaData: TJvDateEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure cbbFormaPagamentoEnter(Sender: TObject);
    procedure cbbContaCorrenteEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbFormaPagamentoExit(Sender: TObject);
    procedure rgDebCreExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbMaquinetaEnter(Sender: TObject);
    procedure cbbContaCorrenteExit(Sender: TObject);
    procedure rgDebCreClick(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure btnImprimirReciboClick(Sender: TObject);
    procedure btnCancelarCreditoClick(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dpkVencimentoExit(Sender: TObject);
    procedure cbbContaCorrenteCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
  private
    { Private declarations }
    procedure RestaurarCampos;
    procedure InicializarCampos;
    procedure AbrirBuscas;
    function  VerificarDados:Boolean;
    procedure CancelarCredito;
    var
     xAntTipoDoc,xAntIdFpg :string;

  public
    { Public declarations }
  end;

var
  FIN_FM_M_RCR: TFIN_FM_M_RCR;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, enFunc;

procedure TFIN_FM_M_RCR.acAdicionaExecute(Sender: TObject);
var
  msg:String;
begin
  if ((dmgeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_ID_PLANO').AsString = '') or
     (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_ID_TIPO_FINANCEIRO').AsString = '')) then
     begin
       ShowMessage('Os campos Plano de Contas e Tipo Financeiro da tela de parâmetros devem ser preenchidos.');
       exit;
     end;


    msg := '';
    dmGeral.BUS_CD_C_PCT.Close;
    dmGeral.BUS_CD_C_PCT.Close;
    dmGeral.BUS_CD_C_PCT.Data :=
    dmGeral.BUS_CD_C_PCT.DataRequest(
            VarArrayOf([0,dmgeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_ID_PLANO').AsString]));

    dmGeral.BUS_CD_C_TIF.Close;
    dmGeral.BUS_CD_C_TIF.Close;
    dmGeral.BUS_CD_C_TIF.Data :=
    dmGeral.BUS_CD_C_TIF.DataRequest(
            VarArrayOf([0,dmgeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_ID_TIPO_FINANCEIRO').AsString]));


    if ( (not (dmGeral.BUS_CD_C_PCT.FieldByName('TIPO_DESP').AsInteger = 1)) or
        (not (dmGeral.BUS_CD_C_PCT.FieldByName('TIPO').AsInteger = 0))  )  then
      begin
        msg := msg + 'Plano de Contas deve ser analítico com tipo Receita.'+#13+#10;
      end;

    if not (dmGeral.BUS_CD_C_TIF.FieldByName('NATUREZA').AsInteger = 1) then
      begin
          msg := msg + 'Tipo Financeiro deve ser tipo de entrada.'+#13+#10;
      end;

    if msg <> '' then
      begin
       ShowMessage(msg);
       exit;
      end;



  if ((dmgeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_ID_PLANO').AsString = '') or
     (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_ID_TIPO_FINANCEIRO').AsString = '')) then
     begin
       ShowMessage('Os campos Plano de Contas e Tipo Financeiro da tela de parâmetros devem ser preenchidos.');
       exit;
     end;

  inherited;

  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_RCR);
  btnImprimirRecibo.Enabled := false;
  gbFormaPag.Visible := false;

  {RestaurarCampos;
  lblParcelasCartao.Visible := false;
  txtParcelasCartao.Visible := false;
  lblMaquineta.Visible := false;
  cbbMaquineta.Visible := false;
  gbCheque.Visible := false;}
  txtCliente.SetFocus;
  xAntTipoDoc := '';
  xAntIdFpg := '';
end;


procedure TFIN_FM_M_RCR.CancelarCredito;
var
  xTitulosRec,msg:String;
begin

     if (dmGeral.FIN_CD_M_RCR.FieldByName('DEB_CRE').AsInteger = 0) then
        begin
          ShowMessage('Só é permitido para registro tipo crédito.');
          exit;
        end;

     if (dmGeral.FIN_CD_M_RCR.FieldByName('CANCELADO').AsBoolean = true) then
        begin
          ShowMessage('Crédito já foi cancelado.');
          exit;
        end;


     msg := '';
     dmGeral.BUS_CD_M_REC.Close;
     dmGeral.BUS_CD_M_REC.Data :=
     dmGeral.BUS_CD_M_REC.DataRequest(
            VarArrayOf([117,dmGeral.FIN_CD_M_RCR.FieldByName('ID_CREDITO').AsInteger]));

     if not (dmGeral.BUS_CD_M_REC.IsEmpty) then
        begin
          while not (dmGeral.BUS_CD_M_REC.eof) do
             begin
               if (not (dmGeral.BUS_CD_M_REC.FieldByname('INT_DOCIMPRESSO').AsInteger in [5])) then
                   begin
                     if dmGeral.BUS_CD_M_REC.FieldByName('vlr_parcela').AsCurrency <>
                        dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency then
                        begin
                          msg := msg + 'Nro da parcela: ' + dmGeral.BUS_CD_M_REC.FieldByName('num_parcela').AsString + #13+#10;
                        end;
                   end;
               dmGeral.BUS_CD_M_REC.Next;
             end;

          if trim(msg) <> '' then
             begin
               msg := 'Existe título gerado por essa nota de crédito que já teve baixa.'+#13+#10 + msg + #13+#10;
             end;
       end;
     dmGeral.BUS_CD_M_REC.close;

     dmGeral.BUS_CD_M_CTA.Close;
     dmGeral.BUS_CD_M_CTA.Data :=
     dmGeral.BUS_CD_M_CTA.DataRequest(
            VarArrayOf([109,dmGeral.FIN_CD_M_RCR.FieldByName('ID_CREDITO').AsInteger]));

     while not dmgeral.BUS_CD_M_CTA.eof do
       begin
         if (dmGeral.BUS_CD_M_CTA.FieldByName('CONCILIADO').AsBoolean = true)  then
           begin
            msg := msg + 'Movimentação de conta tinha sido conciliado.'+#13+#10;
            break;
           end;
         dmGeral.BUS_CD_M_CTA.Next;
       end;
    dmGeral.BUS_CD_M_CTA.close;

    if msg <> '' then
      begin
        ShowMessage(msg);
        exit;
      end;




   dmGeral.FIN_CD_M_RCR.Edit;
   dmGeral.FIN_CD_M_RCR.FieldByName('CANCELADO').AsBoolean := true;
   dmGeral.FIN_CD_M_RCR.Post;
   if  (dmGeral.FIN_CD_M_RCR.ApplyUpdates(0)=0) then
     ShowMessage('Crédito cancelado com sucesso.')
   else
     ShowMessage('Falha ao cancelar crédito.');

end;

procedure TFIN_FM_M_RCR.AbrirBuscas;
begin
   dmGeral.BusFormaPgtos(1,'%');
   dmGeral.BusContaCorr(4,'%');
end;

function TFIN_FM_M_RCR.VerificarDados:Boolean;
begin
   Result := true;

   if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_CRI_FORMA_PAG').IsNull) and
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_CRI_FORMA_PAG').AsBoolean = True) and
      (rgDebCre.ItemIndex = 1)) then
      begin
         dmGeral.BusFormaPgtos(0,dmgeral.FIN_CD_M_RCR.FieldByName('ID_FORMA_PAG').AsString);

         if dmGeral.BUS_CD_C_FPG.IsEmpty then
           begin
             ShowMessage('Forma de Pagamento não cadastrado.');
             Result := false;
             exit;
           end;

         if (dmGeral.BUS_CD_C_FPG.FieldByName('ID_LOCAL_TITULO').AsString = '') then
           begin
             ShowMessage('Local de título para Forma de Pagamento selecionado deve estar preenchido.');
             Result := false;
             exit;
           end;

         dmgeral.FIN_CD_M_RCR.FieldByName('INT_DOCIMPRESSO').AsInteger :=
                                          dmgeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger;

         if (dmgeral.FIN_CD_M_RCR.FieldByName('INT_DOCIMPRESSO').AsInteger = 3) then //Cartao
           begin
             if ((dmgeral.FIN_CD_M_RCR.FieldByName('pre_banco').AsString <> '0') or
                (dmgeral.FIN_CD_M_RCR.FieldByName('pre_agencia').AsString <> '0') or
                (dmgeral.FIN_CD_M_RCR.FieldByName('pre_conta').AsString <> '0') or
                (dmgeral.FIN_CD_M_RCR.FieldByName('pre_cheque').AsString <> '0') or
                (trim(dmgeral.FIN_CD_M_RCR.FieldByName('pre_emitente').AsString) <> '')) then
                begin
                  ShowMessage('Os dados fornecidos são inválidos para forma de pagamento selecionado.');
                  Result := false;
                  exit;
                end;
           end;

         if (dmgeral.FIN_CD_M_RCR.FieldByName('INT_DOCIMPRESSO').AsInteger = 5) then  //Dinheiro
           begin

            if ((dmgeral.FIN_CD_M_RCR.FieldByName('CAR_PARCELAS').AsInteger <> 0) or
                (dmgeral.FIN_CD_M_RCR.FieldByName('ID_MAQUINETA').AsString <> '') or
                (dmgeral.FIN_CD_M_RCR.FieldByName('pre_banco').AsString <> '0') or
                (dmgeral.FIN_CD_M_RCR.FieldByName('pre_agencia').AsString <> '0') or
                (dmgeral.FIN_CD_M_RCR.FieldByName('pre_conta').AsString <> '0') or
                (dmgeral.FIN_CD_M_RCR.FieldByName('pre_cheque').AsString <> '0') or
                (dmgeral.FIN_CD_M_RCR.FieldByName('pre_emitente').AsString <> '')) then
                begin
                  ShowMessage('Os dados fornecidos são inválidos para forma de pagamento selecionado.');
                  Result := false;
                  exit;
                end;

           end;

         if (dmgeral.FIN_CD_M_RCR.FieldByName('INT_DOCIMPRESSO').AsInteger = 6) then //Cheque
           begin
               if ((dmgeral.FIN_CD_M_RCR.FieldByName('CAR_PARCELAS').AsInteger <> 0) or
                  (dmgeral.FIN_CD_M_RCR.FieldByName('ID_MAQUINETA').AsString <> '')) then
                begin
                  ShowMessage('Os dados fornecidos são inválidos para forma de pagamento selecionado.');
                  Result := false;
                  exit;
                end;
           end;
      end;
end;

procedure TFIN_FM_M_RCR.acAlterarExecute(Sender: TObject);
begin
  ShowMessage('Alteração não permitida.');
  exit;

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_RCR) then
      begin
        inherited;
        btnImprimirRecibo.Enabled := false;
        txtCliente.SetFocus;
      end;
end;

procedure TFIN_FM_M_RCR.RestaurarCampos;
begin


  lblParcelasCartao.Visible := TRUE;
  txtParcelasCartao.Visible := true;
  lblMaquineta.Visible := true;
  cbbMaquineta.Visible := true;
  lblContaCorrente.Visible := true;
  cbbContaCorrente.Visible := true;

  dpkVencimento.ReadOnly := false;
  dpkVencimento.Color := clWhite;

  gbCheque.Visible := true;


end;

procedure TFIN_FM_M_RCR.InicializarCampos;
begin
  txtParcelasCartao.Text := '0';
  txtBanco.Text := '0';
  txtAgencia.Text := '0';
  txtContaCorrente.Text := '0';
  txtNCheque.Text := '0';
  txtEmitente.Text := '';
  cbbMaquineta.Text := '';

  cbbContaCorrente.Text := '';
  dpkVencimento.Text := '  /  /    ';


//  dmgeral.FIN_CD_M_RCR.FieldByName('DTA_VENCIMENTO').AsString := '  /  /    ';
  dmgeral.FIN_CD_M_RCR.FieldByName('CAR_PARCELAS').AsString := '0';
  dmgeral.FIN_CD_M_RCR.FieldByName('PRE_BANCO').AsString := '0';
  dmgeral.FIN_CD_M_RCR.FieldByName('PRE_AGENCIA').AsString := '0';
  dmgeral.FIN_CD_M_RCR.FieldByName('PRE_CONTA').AsString := '0';
  dmgeral.FIN_CD_M_RCR.FieldByName('PRE_CHEQUE').AsString := '0';
  dmgeral.FIN_CD_M_RCR.FieldByName('PRE_EMITENTE').AsString := '';
  dmgeral.FIN_CD_M_RCR.FieldByName('ID_MAQUINETA').AsString := '';
  dmgeral.FIN_CD_M_RCR.FieldByName('ID_CONTA').AsString := '';
end;

procedure TFIN_FM_M_RCR.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_RCR) then
     begin
       inherited;
       btnImprimirRecibo.Enabled := true;
       dbGrid.SetFocus;
     end
  else
     begin
       txtCliente.SetFocus;
     end;
end;

procedure TFIN_FM_M_RCR.acExcluirExecute(Sender: TObject);
begin
  ShowMessage('Exclusão não permitida.');
  exit;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_RCR);
end;

procedure TFIN_FM_M_RCR.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  if (VerificarDados = false) then
     begin
       exit;
     end;

  if ((dmGeral.FIN_CD_M_RCR.FieldByName('ID_CLIENTE').AsString <> '') and
      (dmGeral.FIN_CD_M_RCR.FieldByName('VLR_CREDITO').AsString <> '') and
      (dmGeral.FIN_CD_M_RCR.FieldByName('VLR_CREDITO').AsCurrency > 0) and
      (rgDebCre.ItemIndex = 0)) then
     begin
      if (dmGeral.FIN_CD_M_RCR.FieldByName('VLR_CREDITO').AsCurrency >
           dmGeral.BusSaldoCreCli(dmGeral.FIN_CD_M_RCR.FieldByName('ID_CLIENTE').AsString)) then
         begin
           ShowMessage('Não há saldo suficiente.');
           exit;
         end;
     end;

  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      codigo := dmGeral.FIN_CD_M_RCR.FieldByName('ID_CREDITO').AsString;
      DmGeral.Grava(dmGeral.FIN_CD_M_RCR);
      inherited;
      dmGeral.FIN_CD_M_RCR.Close;
      dmGeral.FIN_CD_M_RCR.Data :=
      dmGeral.FIN_CD_M_RCR.DataRequest(
              VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,codigo]));
      AbrirBuscas;
      btnImprimirRecibo.Enabled := true;
    end
  else
    begin
      txtCliente.SetFocus;
    end;
end;

procedure TFIN_FM_M_RCR.btnCancelarCreditoClick(Sender: TObject);
begin
  inherited;
  if Dc_MessageDlgCheck('Deseja realmente cancelar?', mtConfirmation, [mbYes, mbNo],
                0, mrNo, true, false,'', nil) <> 7 then
     CancelarCredito;
end;

procedure TFIN_FM_M_RCR.btnFiltroClick(Sender: TObject);
VAR
  xPesquisa:String;
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;

    dmGeral.FIN_CD_M_RCR.Close;
    dmGeral.FIN_CD_M_RCR.Data :=
    dmGeral.FIN_CD_M_RCR.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,xPesquisa]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFIN_FM_M_RCR.btnImprimirReciboClick(Sender: TObject);
var
  codigo,PathImg:string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if  dmGeral.FIN_CD_M_RCR.IsEmpty then
     begin
       ShowMessage('É necessário selecionar registro.');
       exit;
     end;

  codigo := dmGeral.FIN_CD_M_RCRid_credito.text;
  dmGeral.FIN_CD_M_RCR.Close;
  dmGeral.FIN_CD_M_RCR.Data :=
  dmGeral.FIN_CD_M_RCR.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, codigo]));


  if not dmGeral.FIN_CD_M_RCR.IsEmpty then
     begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if pos('LINHA RETA',UpperCase(dmgeral.CAD_CD_C_PARemp_fantasia.Text))> 0 then
          begin
            if FileExists(PathImg) then
              begin
                 LogoEmpresa := TfrxPictureView(FIN_FR_M_RCR_LIN.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;
            FIN_FR_M_RCR_LIN.Variables['Opcoes'] := QuotedStr('');
            FIN_FR_M_RCR_LIN.PrepareReport();
            FIN_FR_M_RCR_LIN.ShowReport();
          end
        else
          begin
            if FileExists(PathImg) then
              begin
                 LogoEmpresa := TfrxPictureView(FIN_FR_M_RCR.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;
            FIN_FR_M_RCR.Variables['Opcoes'] := QuotedStr('');
            FIN_FR_M_RCR.PrepareReport();
            FIN_FR_M_RCR.ShowReport();
          end;

     end
  else
     begin
       ShowMessage('Nenhum registro encontrado.');
       exit;
     end;
end;

procedure TFIN_FM_M_RCR.cbbContaCorrenteCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  inherited;

   if (dmGeral.FIN_CD_M_RCR.FieldByName('id_conta').text <> '') then
       begin
         dmGeral.BUS_CD_M_CXA.Close;
         dmGeral.BUS_CD_M_CXA.Data :=
            dmGeral.BUS_CD_M_CXA.DataRequest(
                    VarArrayOf([93,xFuncionario,dmGeral.FIN_CD_M_RCR.FieldByName('id_empresa').AsString,
                                   dmGeral.FIN_CD_M_RCR.FieldByName('id_conta').AsString]));

         dmGeral.FIN_CD_M_RCR.FieldByName('id_abertura').AsInteger := 0;

         if not dmGeral.BUS_CD_M_CXA.IsEmpty then
            begin
              dmGeral.FIN_CD_M_RCR.FieldByName('id_abertura').AsInteger :=
                                       dmGeral.BUS_CD_M_CXA.FieldByName('ID_ABERTURA').AsInteger;
            end;
         dmGeral.BUS_CD_M_CXA.Close;
       end;

   //showmessage('fechou: ' + dmGeral.FIN_CD_M_RCR.FieldByName('id_conta').asstring);
end;

procedure TFIN_FM_M_RCR.cbbContaCorrenteEnter(Sender: TObject);
begin
  inherited;
  //dmGeral.BusContaCorr(4,'%');
   dmGeral.BusCxaBco(xFuncionario);
  cbbContaCorrente.DropDown;
end;

procedure TFIN_FM_M_RCR.cbbContaCorrenteExit(Sender: TObject);
begin
  inherited;
  { if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;}

 { if (dmGeral.FIN_CD_M_RCR.FieldByName('id_conta').text = '') or
     (dmGeral.FIN_CD_M_RCR.FieldByName('id_conta').AsInteger = 0) then
     begin
       Showmessage('O campo "Conta Corrente" deve ser preenchido.');
       cbbContaCorrente.Text := '';
       cbbContaCorrente.SetFocus;
       exit;
     end;

   dmGeral.BUS_CD_M_CXA.Close;
   dmGeral.BUS_CD_M_CXA.Data :=
      dmGeral.BUS_CD_M_CXA.DataRequest(
              VarArrayOf([93,xFuncionario,dmGeral.FIN_CD_M_RCR.FieldByName('id_empresa').AsString,
                             dmGeral.FIN_CD_M_RCR.FieldByName('id_conta').AsString]));

   dmGeral.FIN_CD_M_RCR.FieldByName('id_abertura').AsInteger := 0;

   if not dmGeral.BUS_CD_M_CXA.IsEmpty then
      begin
        dmGeral.FIN_CD_M_RCR.FieldByName('id_abertura').AsInteger :=
                                 dmGeral.BUS_CD_M_CXA.FieldByName('ID_ABERTURA').AsInteger;
      end;
   dmGeral.BUS_CD_M_CXA.Close;   }
end;

procedure TFIN_FM_M_RCR.cbbFormaPagamentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos(4,'''3'',''5'',''6''');
  cbbFormaPagamento.DropDown;
end;

procedure TFIN_FM_M_RCR.cbbFormaPagamentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if ((dmGeral.FIN_CD_M_RCR.FieldByName('id_forma_pag').text = '') or
     (dmGeral.FIN_CD_M_RCR.FieldByName('id_forma_pag').AsInteger = 0)) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       cbbFormaPagamento.Text := '';
       cbbFormaPagamento.SetFocus;
       Abort;
     end;

  dmGeral.BusFormaPgtos(0,dmGeral.FIN_CD_M_RCR.FieldByName('id_forma_pag').Text);
  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       ShowMessage('Forma de pagamento não encontrada.');
       cbbFormaPagamento.Text := '';
       cbbFormaPagamento.SetFocus;
       Abort;
     end;

   dmGeral.FIN_CD_M_RCR.FieldByName('INT_NOMEFPG').AsString := dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
   dmGeral.FIN_CD_M_RCR.FieldByName('INT_DOCIMPRESSO').AsInteger := dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger;


   if ((xAntTipoDoc <>'') and (xAntTipoDoc <> dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString))  then
     begin

       if MessageDlg('Algumas informacoes digitadas serão excluídas. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         begin
           xAntTipoDoc := dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString;
           xAntIdFpg := dmGeral.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsString;
         end
       ELSE
         BEGIN
           dmGeral.FIN_CD_M_RCR.FieldByName('ID_FORMA_PAG').AsString := xAntIdFpg;
           dmGeral.BusFormaPgtos(4,'''3'',''5'',''6''');
           exit;
         END;
     end
   ELSE
     BEGIN
       if xAntTipoDoc = dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString then
         begin
           xAntTipoDoc := dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString;
           xAntIdFpg := dmGeral.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsString;
           {if cbbContaCorrente.Visible then
            begin
              cbbContaCorrente.SetFocus;
            end
           else
            begin
              txtHistorico.SetFocus;
            end; }
           exit;
         end
       else
         begin
           xAntTipoDoc := dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsString;
           xAntIdFpg := dmGeral.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsString;
         end;
     END;

  { doc_impresso :
    0 - nenhum
    1 - duplicata
    2 - promissória
    3 - cartão
    4 - boleto
    5 - dinheiro
    6 - cheque
  }





  RestaurarCampos;
  InicializarCampos;

  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [5] then  //Dinheiro
    BEGIN
      lblMaquineta.Visible := false;
      cbbMaquineta.Visible := false;
      dpkVencimento.ReadOnly := true;
      dpkVencimento.Color := $00DADADA;

      gbCheque.Visible := false;
      txtParcelasCartao.Visible := false;
      lblParcelasCartao.Visible := false;
      dmGeral.FIN_CD_M_RCR.FieldByName('DTA_VENCIMENTO').AsDateTime := xDataSis;
      cbbContaCorrente.SetFocus;
    END;

   if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [6] then //Cheque
     begin
       lblMaquineta.Visible := false;
       cbbMaquineta.Visible :=false;
       lblContaCorrente.Visible := false;
       cbbContaCorrente.Visible := false;
       txtParcelasCartao.Visible := false;
       lblParcelasCartao.Visible := false;
       //dmGeral.FIN_CD_M_RCR.FieldByName('DTA_VENCIMENTO').AsDateTime := xDataSis;
       dpkVencimento.SetFocus;
       {if dmGeral.FIN_CD_M_RCR.FieldByName('DEB_CRE').AsInteger = 0 then
          begin
           ShowMessage('Essa forma de pagamento é aceito somente para tipo crédito.');
           dmGeral.FIN_CD_M_RCR.FieldByName('DEB_CRE').AsInteger := 1;
          end; }
     end;

  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [3] then //Cartao
     begin
     
      gbCheque.Visible := false;
      dmGeral.FIN_CD_M_RCR.FieldByName('CAR_PARCELAS').AsInteger := 1;
     // dmGeral.FIN_CD_M_RCR.FieldByName('DTA_VENCIMENTO').AsDateTime := xDataSis;
      dmGeral.FIN_CD_M_RCR.FieldByName('ID_MAQUINETA').AsInteger :=
             dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FIN_ID_MAQUINETA_PAD').AsInteger;
      dmGeral.BusMaquineta(1,'%');
      cbbContaCorrente.SetFocus;
      {if dmGeral.FIN_CD_M_RCR.FieldByName('DEB_CRE').AsInteger = 0 then
          begin
           ShowMessage('Essa forma de pagamento é aceito somente para tipo crédito.');
           dmGeral.FIN_CD_M_RCR.FieldByName('DEB_CRE').AsInteger := 1;
          end;}
     end;

   {if cbbContaCorrente.Visible then
     begin
        cbbContaCorrente.SetFocus;
     end
   else
     begin
        txtHistorico.SetFocus;
     end; }

end;

procedure TFIN_FM_M_RCR.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  txtPesquisaData.Text := '  /  /    ';

  if cbbPesquisa.ItemIndex in [2]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 109;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;

  if (cbbPesquisa.ItemIndex = 0) then
    begin
      txtPesquisa.NumbersOnly := true;
    end
  else
    begin
      txtPesquisa.NumbersOnly := false;
    end;
end;

procedure TFIN_FM_M_RCR.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
   if (dmGeral.FIN_CD_M_RCR.FieldByName('CANCELADO').AsBoolean = true) then
     begin
       AFont.Color := clRed;
     end;
end;

procedure TFIN_FM_M_RCR.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_CRI_FORMA_PAG').IsNull) and
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_CRI_FORMA_PAG').AsBoolean = True)) then
    begin
      RestaurarCampos;

      if dmGeral.FIN_CD_M_RCR.FieldByName('INT_DOCIMPRESSO').AsInteger in [5] then  //Dinheiro
        BEGIN
          lblMaquineta.Visible := false;
          cbbMaquineta.Visible := false;
          dpkVencimento.ReadOnly := true;
          dpkVencimento.Color := $00DADADA;
          gbCheque.Visible := false;
          txtParcelasCartao.Visible := false;
          lblParcelasCartao.Visible := false;
        END;

       if dmGeral.FIN_CD_M_RCR.FieldByName('INT_DOCIMPRESSO').AsInteger in [6] then //Cheque
         begin
           lblMaquineta.Visible := false;
           cbbMaquineta.Visible :=false;
           lblContaCorrente.Visible := false;
           cbbContaCorrente.Visible := false;
           txtParcelasCartao.Visible := false;
           lblParcelasCartao.Visible := false;
         end;

      if dmGeral.FIN_CD_M_RCR.FieldByName('INT_DOCIMPRESSO').AsInteger in [3] then //Cartao
         begin
          gbCheque.Visible := false;
         end;
    end;


  if ((dmGeral.FIN_CD_M_RCR.FieldByName('DEB_CRE').AsInteger = 1) and
      (dmGeral.FIN_CD_M_RCR.FieldByName('CANCELADO').AsBoolean = false)) then
    begin
      dbGrid.PopupMenu := pmCancelar;
    end
  else
    begin
      dbGrid.PopupMenu := nil;
    end;




end;

procedure TFIN_FM_M_RCR.dpkVencimentoExit(Sender: TObject);
begin
  inherited;

   if btnCancelar.Focused then
     begin
       exit;
     end;




   if dmGeral.FIN_CD_M_RCR.FieldByName('DTA_VENCIMENTO').AsString = '' then
     begin
       ShowMessage('Deve ser preenchido a data de vencimento.');
       dpkVencimento.SetFocus;
     end;


end;

procedure TFIN_FM_M_RCR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.FIN_CD_M_RCR.Close;
  FreeAndNil(FIN_FM_M_RCR);
end;

procedure TFIN_FM_M_RCR.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_RCR.Close;
  dmGeral.FIN_CD_M_RCR.Data := dmGeral.FIN_CD_M_RCR.DataRequest(VarArrayOf([0, '']));
  dmGeral.FIN_CD_M_RCR.Open;

  //pnlCheque.Visible := False;

  dmGeral.BusFormaPgtos(1,'%');
  dmGeral.BusContaCorr(2,'%');
  dmGeral.BusMaquineta(1,'%');
end;

procedure TFIN_FM_M_RCR.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_M_CXA.Close;
  dmGeral.BUS_CD_M_CXA.Data :=
  dmGeral.BUS_CD_M_CXA.DataRequest(
          VarArrayOf([90, IntToStr(xFuncionario),dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger]));


  if not dmGeral.BUS_CD_M_CXA.IsEmpty then
     begin
       dmGeral.BUS_CD_C_CXA_BCO.Close;
       dmGeral.BUS_CD_C_CXA_BCO.Data :=
       dmGeral.BUS_CD_C_CXA_BCO.DataRequest(VarArrayOf([0, dmGeral.BUS_CD_M_CXA.FieldByName('id_conta').AsString]));
     end;

  cbbMaquineta.Enabled := false;
  if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FIN_PERM_N_MAQUINETAS').IsNull) and
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('FIN_PERM_N_MAQUINETAS').AsBoolean = True)) then
    begin
      cbbMaquineta.Enabled := true;
    end;

  if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_CRI_FORMA_PAG').IsNull) OR
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_CRI_FORMA_PAG').AsBoolean = False)) then
    begin
      gbFormaPag.Visible := false;
    end;
end;

procedure TFIN_FM_M_RCR.rgDebCreClick(Sender: TObject);
begin
  inherited;
  {if ((rgDebCre.ItemIndex = 0) and (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [3,6])) then
    begin
      ShowMessage('A forma de pagamento selecionado é aceito somente para operação crédito.');
      rgDebCre.ItemIndex := 1;
    end;}
   gbFormaPag.Visible := false;
   if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_CRI_FORMA_PAG').IsNull) and
       (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('RCR_CRI_FORMA_PAG').AsBoolean = True)) then
     begin
       if (rgDebCre.ItemIndex = 0) then
         begin
           gbFormaPag.Visible := false;
           InicializarCampos;
           cbbFormaPagamento.Text := '';
           dmgeral.FIN_CD_M_RCR.FieldByName('ID_FORMA_PAG').AsString := '';
         end;
       if (rgDebCre.ItemIndex = 1) then
         begin
           gbFormaPag.Visible := true;
           RestaurarCampos;
           lblParcelasCartao.Visible := false;
           txtParcelasCartao.Visible := false;
           lblContaCorrente.Visible  := false;
           cbbContaCorrente.Visible  := false;
           lblMaquineta.Visible := false;
           cbbMaquineta.Visible := false;
           gbCheque.Visible := false;
           cbbFormaPagamento.SetFocus;
           xAntTipoDoc := '';
           xAntIdFpg := '';
         end;
     end;

end;

procedure TFIN_FM_M_RCR.rgDebCreExit(Sender: TObject);
begin
  inherited;
  {if dpkVencimento.CanFocus then
    begin
      dpkVencimento.SetFocus;
    end
  else
    begin
      btnGRava.SetFocus;
    end;  }

end;

procedure TFIN_FM_M_RCR.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.FIN_CD_M_RCR.FieldByName('INT_NOMECLI').Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;

           dmGeral.FIN_CD_M_RCR.FieldByName('ID_CLIENTE').AsInteger :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TFIN_FM_M_RCR.txtClienteExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

   if (dmGeral.FIN_CD_M_RCR.FieldByName('ID_CLIENTE').Text = '') then
     begin
       ShowMessage('O campo "Cliente" deve ser preenchido.');
       txtCliente.SetFocus;
       exit;
     end;


    dmGeral.BUS_CD_C_CLI.Close;
    dmGeral.BUS_CD_C_CLI.Data :=
    dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));

    if dmGeral.BUS_CD_C_CLI.IsEmpty then
      begin
       ShowMessage('Cliente não cadastrado.');
       txtCliente.Text := '';
       txtCliente.SetFocus;
       exit;
      end;

    dmGeral.FIN_CD_M_RCR.FieldByName('INT_NOMECLI').Text :=
         dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;

end;

procedure TFIN_FM_M_RCR.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFIN_FM_M_RCR.cbbMaquinetaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusMaquineta(1,'%');
  cbbMaquineta.DropDown;
end;

end.
