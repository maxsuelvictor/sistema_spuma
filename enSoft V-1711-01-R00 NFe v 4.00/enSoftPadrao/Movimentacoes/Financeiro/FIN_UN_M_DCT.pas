unit FIN_UN_M_DCT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,System.Math, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, vcl.Wwdbedit, vcl.wwdblook, JvToolEdit, vcl.Wwdotdot,
  vcl.Wwdbcomb, Vcl.Mask, JvExMask, JvDBControls, Datasnap.DBClient,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TFIN_FM_M_DCT = class(TPAD_FM_X_PAD)
    lblData: TLabel;
    txtData: TJvDBDateEdit;
    gbFiltro: TGroupBox;
    lblAte: TLabel;
    lblTipoPeriodo: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    cbbPeriodo: TComboBox;
    btnFiltrar: TcxButton;
    GroupBox1: TGroupBox;
    dgTitulo: TwwDBGrid;
    dsoTit: TwwDataSource;
    Label1: TLabel;
    cbbOperacao: TwwDBComboBox;
    Label2: TLabel;
    txtCodCliente: TJvComboEdit;
    txtNomeCliente: TEdit;
    txtCodFormaPag: TJvComboEdit;
    txtDescFormaPag: TEdit;
    Label3: TLabel;
    txtCodLocalTit: TJvComboEdit;
    txtDescLocalTit: TEdit;
    Label4: TLabel;
    cbbConta: TwwDBLookupCombo;
    lblconta: TLabel;
    cbbLocalTitulo: TwwDBLookupCombo;
    lblLocaltitulo: TLabel;
    lblVlrDesc: TLabel;
    txtVlrDescontar: TwwDBEdit;
    txtTaxaPer: TwwDBEdit;
    lblPerTaxaDesc: TLabel;
    txtVlrTotal: TwwDBEdit;
    Label10: TLabel;
    txtVlrCanc: TwwDBEdit;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label7: TLabel;
    pmCancelarBxa: TPopupMenu;
    btnCancelarBxa: TMenuItem;
    Panel4: TPanel;
    Label8: TLabel;
    txtPesquisaData: TJvDateEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure cbbLocalTituloEnter(Sender: TObject);
    procedure txtCodClienteButtonClick(Sender: TObject);
    procedure txtCodClienteExit(Sender: TObject);
    procedure txtCodLocalTitExit(Sender: TObject);
    procedure txtCodFormaPagExit(Sender: TObject);
    procedure txtCodFormaPagButtonClick(Sender: TObject);
    procedure txtCodLocalTitButtonClick(Sender: TObject);
    procedure dgTituloFieldChanged(Sender: TObject; Field: TField);
    procedure txtTaxaPerExit(Sender: TObject);
    procedure txtVlrDescontarExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbOperacaoExit(Sender: TObject);
    procedure cbbContaEnter(Sender: TObject);
    procedure dgTituloEnter(Sender: TObject);
    procedure dgTituloExit(Sender: TObject);
    procedure txtVlrCancEnter(Sender: TObject);
    procedure txtVlrCancExit(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure cbbLocalTituloExit(Sender: TObject);
    procedure cbbContaExit(Sender: TObject);
    procedure cbbOperacaoEnter(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure txtDataExit(Sender: TObject);
    procedure btnCancelarBxaClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
    procedure LimparFiltro;
    var
      xCodOperacao_ant:String;
  public
    { Public declarations }
  end;

var
  FIN_FM_M_DCT: TFIN_FM_M_DCT;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, PSQ_UN_X_FPG, PSQ_UN_X_LTO, FIN_UN_M_DCT_CAN,
  FIN_RN_M_DCT;


procedure TFIN_FM_M_DCT.AbrirBuscas;
begin
  dmGeral.BusContaCorr(1,'1');
  dmGeral.BusLocalTit(1,'%');
end;

procedure TFIN_FM_M_DCT.LimparFiltro;
begin
   cbbPeriodo.ItemIndex := 0;
   deInicial.Text := '  /  /    ';
   deFinal.Text := '  /  /    ';
   txtCodCliente.Text := '';
   txtNomeCliente.Text := '';
   txtCodFormaPag.Text := '';
   txtDescFormaPag.Text := '';
   txtCodLocalTit.Text := '';
   txtDescLocalTit.Text := '';
end;

procedure TFIN_FM_M_DCT.acAdicionaExecute(Sender: TObject);
var
 msg:String;
begin
  inherited;

  msg := '';
  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('dct_id_tipo_financeiro_cred').AsString = '' then
     msg := msg + 'Tipo financeiro.'+#13+#10;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('dct_id_plano_cred').AsString = '' then
     msg := msg + 'Plano de Contas. '+#13+#10;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('dct_id_tipo_financeiro_desc_taxa').AsString = '' then
     msg := msg + 'Tipo financeiro para taxa de desconto.'+#13+#10;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('dct_id_plano_desc_taxa').AsString = '' then
     msg := msg + 'Plano deContas para taxa de desconto. '+#13+#10;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('dct_id_forma_pag').AsString = '' then
     msg := msg + 'Forma de Pagamento.'+#13+#10;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('dct_id_tipo_financeiro_canc').AsString = '' then
     msg := msg + 'Tipo financeiro para taxa de cancelamento. '+#13+#10;

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('dct_id_plano_canc').AsString = '' then
     msg := msg + 'Plano de Contas para taxa de cancelamento. '+#13+#10;

  if msg <> '' then
    begin
      showMessage('Na tela de parâmetros na aba Financeiro, no bloco Desconto de Títulos, tem que estar preenchidos os seguintes campos:'+#13+#10+msg);
      exit;
    end;


  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_DCT);
  txtData.SetFocus;
end;

procedure TFIN_FM_M_DCT.acAlterarExecute(Sender: TObject);
begin
  inherited;
  ShowMessage('Alteração não permitida.');
  exit;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_DCT) then
      begin

      end;
end;

procedure TFIN_FM_M_DCT.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_DCT) then
     begin
       inherited;
       LimparFiltro;
       dbGrid.SetFocus;
     end
  else
     begin
       txtData.SetFocus;
     end;
end;

procedure TFIN_FM_M_DCT.acExcluirExecute(Sender: TObject);
begin
  inherited;
  ShowMessage('Exclusão não permitida.');
  exit;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_DCT);
end;

procedure TFIN_FM_M_DCT.acGravarExecute(Sender: TObject);
var
  codigo:String;
begin
  inherited;

  if  dmGeral.FIN_CD_M_DCT.FieldByName('vlr_total_titulos').AsCurrency = 0 then
     begin
        ShowMessage('O valor total dos titulos selecionados está zerado.');
        exit;
     end;

  codigo := dmGeral.FIN_CD_M_DCT.FieldByName('ID_DCT').AsString;
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        dmGeral.FIN_CD_M_DCT_TIT.Filtered := true;
        dmGeral.FIN_CD_M_DCT_TIT.Filter := 'int_selecao=false';

        while not dmGeral.FIN_CD_M_DCT_TIT.IsEmpty do
          begin
            dmGeral.FIN_CD_M_DCT_TIT.Delete;
         end;
      finally
         dmGeral.FIN_CD_M_DCT_TIT.Filtered := false;
      end;


      try
       dgTitulo.OnFieldChanged := nil;
       FinRatearVlrDesc;
      finally
         dgTitulo.OnFieldChanged := dgTituloFieldChanged;
      end;




      DmGeral.Grava(dmGeral.FIN_CD_M_DCT);
      inherited;

      dmGeral.FIN_CD_M_DCT.Close;
      dmGeral.FIN_CD_M_DCT.Data :=
      dmGeral.FIN_CD_M_DCT.DataRequest(
             VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,codigo]));

      LimparFiltro;
      AbrirBuscas;
    end;
end;

procedure TFIN_FM_M_DCT.btnCancelarBxaClick(Sender: TObject);
begin
  inherited;
  FIN_FM_M_DCT_CAN := TFIN_FM_M_DCT_CAN.Create(Self);
  FIN_FM_M_DCT_CAN.Show;
end;

procedure TFIN_FM_M_DCT.btnFiltrarClick(Sender: TObject);
var
  rTipoData:String;
begin
  inherited;


   if txtCodFormaPag.Text = '' then
     begin
       ShowMessage('Tipo de título tem que ser preenchido.');
       exit;
     end;



  if cbbOperacao.ItemIndex = 0 then
     begin
      dmGeral.BUS_CD_M_REC.Close;
      dmGeral.BUS_CD_M_REC.Data :=
      dmGeral.BUS_CD_M_REC.DataRequest(
                  VarArrayOf([119,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                              IntToStr(cbbPeriodo.ItemIndex),deInicial.Text,deFinal.Text,txtCodCliente.Text,txtCodFormaPag.Text,txtCodLocalTit.Text]));
     end
   else if cbbOperacao.ItemIndex in [1,2] then
     begin
      dmGeral.BUS_CD_M_REC.Close;
      dmGeral.BUS_CD_M_REC.Data :=
      dmGeral.BUS_CD_M_REC.DataRequest(
                  VarArrayOf([120,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                              IntToStr(cbbPeriodo.ItemIndex),deInicial.Text,deFinal.Text,txtCodCliente.Text,txtCodFormaPag.Text,txtCodLocalTit.Text]));
     end;





    if (dmGeral.BUS_CD_M_REC.RecordCount >0 ) then
      begin
        if (dmGeral.FIN_CD_M_DCT_TIT.RecordCount > 0) then
           begin
             if MessageDlg('Os títulos já inseridos serão deletados. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
               begin
                 exit;
               end;

             while (dmGeral.FIN_CD_M_DCT_TIT.RecordCount > 0) do
               dmGeral.FIN_CD_M_DCT_TIT.Delete;

             dmGeral.FIN_CD_M_DCT.FieldByname('VLR_TOTAL_TITULOS').AsCurrency := 0;
             dmGeral.FIN_CD_M_DCT.FieldByname('PER_TAXA_DESC').AsCurrency := 0;
             dmGeral.FIN_CD_M_DCT.FieldByname('VLR_TAXA_DESC').AsCurrency := 0;
           end;
      end
    else
      begin
        ShowMessage('Nenhum registro foi encontrado.');
      end;




   try
       dgTitulo.OnFieldChanged := nil;



       while not dmGeral.BUS_CD_M_REC.eof do
         begin
           dmgeral.FIN_CD_M_DCT_TIT.Insert;
           dmgeral.FIN_CD_M_DCT_TIT.FieldByName('INT_SELECAO').AsBoolean := false;
           dmgeral.FIN_CD_M_DCT_TIT.FieldByName('ID_TITULO').AsInteger := dmGeral.BUS_CD_M_REC.FieldByName('ID_TITULO').AsInteger;

           dmgeral.FIN_CD_M_DCT_TIT.FieldByName('INT_DTA_EMISSAO').AsDateTime :=
                                    dmGeral.BUS_CD_M_REC.FieldByName('DTA_EMISSAO').AsDateTime;
           dmgeral.FIN_CD_M_DCT_TIT.FieldByName('INT_DTA_VENCIMENTO').AsDateTime :=
                                    dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime;

           dmgeral.FIN_CD_M_DCT_TIT.FieldByName('INT_COD_CLIENTE').AsInteger :=
                                    dmGeral.BUS_CD_M_REC.FieldByName('ID_CLIENTE').AsInteger;

           dmgeral.FIN_CD_M_DCT_TIT.FieldByName('INT_NOMECLI').AsString :=
                                    dmGeral.BUS_CD_M_REC.FieldByName('INT_NOMECLI').AsString;

           dmgeral.FIN_CD_M_DCT_TIT.FieldByName('INT_VLR_PARCELA').AsCurrency :=
                                    dmGeral.BUS_CD_M_REC.FieldByName('VLR_PARCELA').AsCurrency;

           dmgeral.FIN_CD_M_DCT_TIT.FieldByName('vlr_cobrado_canc_desc').AsCurrency :=0;
           dmGeral.FIN_CD_M_DCT_TIT.FieldByname('VLR_TAXA_DESC').AsCurrency := 0;
           dmGeral.FIN_CD_M_DCT_TIT.Post;

           dmGeral.BUS_CD_M_REC.Next;
         end;

   finally
       dgTitulo.OnFieldChanged := dgTituloFieldChanged;
   end;




end;

procedure TFIN_FM_M_DCT.btnFiltroClick(Sender: TObject);
VAR
  xPesquisa:String;
begin
  inherited;
   Screen.Cursor := crHourGlass;
  try
   if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
   else
      xPesquisa := txtPesquisa.Text;

   dmGeral.FIN_CD_M_DCT.Close;
   dmGeral.FIN_CD_M_DCT.Data :=
   dmGeral.FIN_CD_M_DCT.DataRequest(
                  VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, xPesquisa]));
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TFIN_FM_M_DCT.cbbContaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusContaCorr(1,'1');
  cbbConta.DropDown;
end;

procedure TFIN_FM_M_DCT.cbbContaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused then
     exit;

   if (dmGeral.FIN_CD_M_DCT.FieldByName('ID_CONTA').AsString = '') then
     begin
       ShowMessage('Conta deve ser preenchido.');
       cbbConta.SetFocus;
     end;
end;

procedure TFIN_FM_M_DCT.cbbLocalTituloEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusLocalTit(1,'%');
  cbbLocalTitulo.DropDown;
end;

procedure TFIN_FM_M_DCT.cbbLocalTituloExit(Sender: TObject);
begin
  inherited;

   if btnCancelar.Focused then
     exit;

   if (dmGeral.FIN_CD_M_DCT.FieldByName('ID_LOCAL_TITULO').AsString = '') then
     begin
       ShowMessage('Local título deve ser preenchido');
       cbbLocalTitulo.SetFocus;
     end;

end;

procedure TFIN_FM_M_DCT.cbbOperacaoEnter(Sender: TObject);
begin
  inherited;
   xCodOperacao_ant :=
       dmGeral.FIN_CD_M_DCT.FieldByname('TIPO_OPERACAO').AsString;
end;

procedure TFIN_FM_M_DCT.cbbOperacaoExit(Sender: TObject);
begin
  inherited;
    lblConta.Visible := false;
    lblLocalTitulo.Visible := false;
    cbbConta.Visible := false;
    cbblocalTitulo.Visible := false;

    txtVlrCanc.ReadOnly := true;

    txtTaxaPer.Visible := false;
    lblperTaxaDesc.Visible := false;

    txtVlrDescontar.Visible := false;
    lblVlrDesc.Visible := false;


    if (dmGeral.FIN_CD_M_DCT.FieldByName('TIPO_OPERACAO').AsString = '') then
       begin
         ShowMessage('Deve ser preenchido a operação.');
         cbbOperacao.SetFocus;
         exit;
       end;

    if (dmGeral.FIN_CD_M_DCT_TIT.RecordCount > 0) then
       begin
         if MessageDlg('Os títulos já inseridos serão deletados. Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
           begin
             dmGeral.FIN_CD_M_DCT.FieldByname('TIPO_OPERACAO').AsString := xCodOperacao_ant;
             exit;
           end;

         while (dmGeral.FIN_CD_M_DCT_TIT.RecordCount > 0) do
           dmGeral.FIN_CD_M_DCT_TIT.Delete;

         dmGeral.FIN_CD_M_DCT.FieldByname('VLR_TOTAL_TITULOS').AsCurrency := 0;
         dmGeral.FIN_CD_M_DCT.FieldByname('PER_TAXA_DESC').AsCurrency := 0;
         dmGeral.FIN_CD_M_DCT.FieldByname('VLR_TAXA_DESC').AsCurrency := 0;
       end;


    cbbPeriodo.Clear;


   if (dmGeral.FIN_CD_M_DCT.FieldByName('TIPO_OPERACAO').AsInteger = 0) then
     begin
       lblConta.Visible := true;
       lblLocalTitulo.Visible := true;
       cbbConta.Visible := true;
       cbblocalTitulo.Visible := true;

       txtTaxaPer.Visible := true;
       lblperTaxaDesc.Visible := true;

       txtVlrDescontar.Visible := true;
       lblVlrDesc.Visible := true;

       cbbPeriodo.AddItem('Por Vencimento',nil);
       cbbPeriodo.AddItem('Por Emissão',nil);


     end;

   if (dmGeral.FIN_CD_M_DCT.FieldByName('TIPO_OPERACAO').AsInteger = 1) then
     begin
       dmGeral.FIN_CD_M_DCT.FieldByName('ID_CONTA').AsString := '';
       dmGeral.FIN_CD_M_DCT.FieldByName('ID_LOCAL_TITULO').AsString := '';


       cbbPeriodo.AddItem('Por Vencimento',nil);
       cbbPeriodo.AddItem('Por Emissão',nil);
       cbbPeriodo.AddItem('Por Data de Desconto',nil);
     end;

    if (dmGeral.FIN_CD_M_DCT.FieldByName('TIPO_OPERACAO').AsInteger = 2) then
     begin
       lblLocalTitulo.Visible := true;
       cbblocalTitulo.Visible := true;

       txtVlrCanc.ReadOnly := false;

       dmGeral.FIN_CD_M_DCT.FieldByName('ID_CONTA').AsString := '';

       cbbPeriodo.AddItem('Por Vencimento',nil);
       cbbPeriodo.AddItem('Por Emissão',nil);
     end;


    ActiveControl := nil;
    if cbbLocalTitulo.CanFocus then
       begin
       PostMessage(cbbLocalTitulo.Handle, WM_SETFOCUS, 0, 0);
       cbbLocalTitulo.SetFocus;
       end
    else if cbbConta.CanFocus then
       begin
       PostMessage(cbbConta.Handle, WM_SETFOCUS, 0, 0);
       cbbConta.SetFocus;
       end;

    cbbPeriodo.ItemIndex := 0;
    xCodOperacao_ant :=
       dmGeral.FIN_CD_M_DCT.FieldByname('TIPO_OPERACAO').AsString;

end;

procedure TFIN_FM_M_DCT.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  txtPesquisaData.Text := '  /  /    ';



  if cbbPesquisa.ItemIndex in [0]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 108;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;
end;

procedure TFIN_FM_M_DCT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.FIN_CD_M_DCT.Close;
  FreeAndNil(FIN_FM_M_DCT);
end;

procedure TFIN_FM_M_DCT.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_DCT.Close;
  dmGeral.FIN_CD_M_DCT.Data :=
  dmGeral.FIN_CD_M_DCT.DataRequest(VarArrayOf([0,'']));
  AbrirBuscas;
end;

procedure TFIN_FM_M_DCT.txtCodClienteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;

      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           txtCodCliente.Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString;

            txtNomeCliente.Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CLI.BUS_CD_C_CLI.Close;
   PSQ_FM_X_CLI.Free;
end;

procedure TFIN_FM_M_DCT.txtCodClienteExit(Sender: TObject);
begin
  inherited;
   txtNomeCliente.Text := '';
   if txtCodCliente.Text <> '' then
     begin
       dmGeral.BUS_CD_C_CLI.Close;
       dmGeral.BUS_CD_C_CLI.Data :=
       dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCodCliente.Text]));

       if not dmGeral.BUS_CD_C_CLI.eof then
         begin
           txtNomeCliente.Text := dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
         end
       else
         begin
           ShowMessage('Cliente não cadastrado.');
           txtCodCliente.Text := '';
           txtCodCliente.SetFocus;
         end;

     end;


end;

procedure TFIN_FM_M_DCT.txtCodFormaPagButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);
   PSQ_FM_X_FPG.ShowModal;

      if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
         begin
           txtCodFormaPag.Text :=
                PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsString;

           txtDescFormaPag.Text :=
                PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
         end;
    PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
    PSQ_FM_X_FPG.Free;
end;

procedure TFIN_FM_M_DCT.txtCodFormaPagExit(Sender: TObject);
begin
  inherited;
   txtDescFormaPag.Text := '';
  if txtCodFormaPag.Text <> '' then
     begin
       dmGeral.BUS_CD_C_FPG.Close;
       dmGeral.BUS_CD_C_FPG.Data :=
       dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([0, txtCodFormaPag.Text]));

       if not dmGeral.BUS_CD_C_FPG.eof then
         begin
            if dmGeral.BUS_CD_C_FPG.FieldByName('doc_impresso').AsInteger in [3,5,6] then
              begin
                ShowMessage('Tipo de titulo não pode ser dinheiro, cartão ou cheque.');
                txtCodFormaPag.Text := '';
                txtCodFormaPag.SetFocus;
              end;
            txtDescFormaPag.Text := dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;
         end
       else
         begin
           ShowMessage('Forma de pagamento não cadastrado.');
           txtCodFormaPag.Text := '';
           txtCodFormaPag.SetFocus;
         end;

     end;
end;

procedure TFIN_FM_M_DCT.txtCodLocalTitButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_LTO := TPSQ_FM_X_LTO.Create(Self);
  PSQ_FM_X_LTO.ShowModal;

  if not PSQ_FM_X_LTO.BUS_CD_C_LTO.IsEmpty then
     begin
       txtCodLocalTit.Text :=
            PSQ_FM_X_LTO.BUS_CD_C_LTO.FieldByName('ID_LOCAL_TITULO').AsString;

       txtDescLocalTit.Text :=
            PSQ_FM_X_LTO.BUS_CD_C_LTO.FieldByName('DESCRICAO').AsString;
     end;
  PSQ_FM_X_LTO.BUS_CD_C_LTO.Close;
  PSQ_FM_X_LTO.Free;
end;

procedure TFIN_FM_M_DCT.txtCodLocalTitExit(Sender: TObject);
begin
  inherited;
  txtDescLocalTit.Text := '';
 if txtCodLocalTit.Text <> '' then
     begin
       dmGeral.BUS_CD_C_LTO_EXP2.Close;
       dmGeral.BUS_CD_C_LTO_EXP2.Data :=
       dmGeral.BUS_CD_C_LTO_EXP2.DataRequest(VarArrayOf([0, txtCodLocalTit.Text]));

       if not dmGeral.BUS_CD_C_LTO_EXP2.eof then
         begin
           txtDescLocalTit.Text := dmGeral.BUS_CD_C_LTO_EXP2.FieldByName('DESCRICAO').AsString;
         end
       else
         begin
           ShowMessage('Local do título não cadastrado.');
           txtCodLocalTit.Text := '';
           txtCodLocalTit.SetFocus;
         end;
       dmGeral.BUS_CD_C_LTO_EXP2.Close;
     end;
end;

procedure TFIN_FM_M_DCT.txtDataExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused then
    exit;

  if dmGeral.FIN_CD_M_DCT.FieldByName('DATA_OPERACAO').AsString = '' then
    begin
      ShowMessage('Deve ser preenchido a data.');
      txtData.SetFocus;
    end;

end;

procedure TFIN_FM_M_DCT.txtTaxaPerExit(Sender: TObject);
begin
  inherited;

  if (dmGeral.FIN_CD_M_DCT.FieldByName('per_taxa_desc').AsString = '') then
    begin
      dmGeral.FIN_CD_M_DCT.FieldByName('per_taxa_desc').AsCurrency :=0;
    end;


  if ((dmGeral.FIN_CD_M_DCT.FieldByName('VLR_TOTAL_TITULOS').AsCurrency = 0) and
      (dmGeral.FIN_CD_M_DCT.FieldByName('per_taxa_desc').AsCurrency >0)) then
     begin
       ShowMessage('O valor total dos titulos selecionados está zerado.');
       dmGeral.FIN_CD_M_DCT.FieldByName('per_taxa_desc').AsCurrency := 0;
     end;

  dmGeral.FIN_CD_M_DCT.FieldBYName('vlr_taxa_desc').AsCurrency :=
                 RoundTo(dmGeral.FIN_CD_M_DCT.FieldBYName('vlr_total_titulos').AsCurrency *
                    (dmGeral.FIN_CD_M_DCT.FieldBYName('per_taxa_desc').AsCurrency/100),-2);

end;



procedure TFIN_FM_M_DCT.txtVlrCancEnter(Sender: TObject);
begin
  inherited;
  dgTitulo.OnFieldChanged := nil;
end;

procedure TFIN_FM_M_DCT.txtVlrCancExit(Sender: TObject);
begin
  inherited;

  if dmGeral.FIN_CD_M_DCT_TIT.FieldByName('vlr_cobrado_canc_desc').AsString = '' then
      dmGeral.FIN_CD_M_DCT_TIT.FieldByName('vlr_cobrado_canc_desc').AsCurrency :=0;

  dgTitulo.OnFieldChanged := dgTituloFieldChanged;
end;

procedure TFIN_FM_M_DCT.txtVlrDescontarExit(Sender: TObject);
begin
  inherited;
  if (dmGeral.FIN_CD_M_DCT.FieldByName('vlr_taxa_desc').AsString = '') then
    begin
      dmGeral.FIN_CD_M_DCT.FieldByName('vlr_taxa_desc').AsCurrency :=0;
    end;


  if ((dmGeral.FIN_CD_M_DCT.FieldByName('VLR_TOTAL_TITULOS').AsCurrency = 0) and
        (dmGeral.FIN_CD_M_DCT.FieldByName('vlr_taxa_desc').AsCurrency > 0 ))   then
    begin
      ShowMessage('O valor total dos titulos selecionados está zerado.');
      dmGeral.FIN_CD_M_DCT.FieldByName('vlr_taxa_desc').AsCurrency :=0;
    end;

  if (dmGeral.FIN_CD_M_DCT.FieldByName('VLR_TOTAL_TITULOS').AsCurrency > 0) then
    dmGeral.FIN_CD_M_DCT.FieldBYName('per_taxa_desc').AsCurrency :=
                   RoundTo((dmGeral.FIN_CD_M_DCT.FieldBYName('vlr_taxa_desc').AsCurrency/
                    dmGeral.FIN_CD_M_DCT.FieldBYName('vlr_total_titulos').AsCurrency)*100,-2);


end;

procedure TFIN_FM_M_DCT.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if (dmGeral.FIN_CD_M_DCT.FieldByName('TIPO_OPERACAO').AsInteger = 1) and
     (dmGeral.FIN_CD_M_DCT.FieldByName('CANCELADO').AsBoolean = false) then
     begin
       AFont.Color := clBlue;
     end;

  if (dmGeral.FIN_CD_M_DCT.FieldByName('TIPO_OPERACAO').AsInteger = 1) and
     (dmGeral.FIN_CD_M_DCT.FieldByName('CANCELADO').AsBoolean = true) then
     begin
       AFont.Color := clRed;
     end;


  if (dmGeral.FIN_CD_M_DCT.FieldByName('TIPO_OPERACAO').AsInteger = 2) then
     begin
       AFont.Color := clPurple;
     end;
end;

procedure TFIN_FM_M_DCT.dbGridRowChanged(Sender: TObject);
begin
  inherited;

  if not dmGeral.FIN_CD_M_DCT.IsEmpty then
     begin

        lblConta.Visible := false;
        lblLocalTitulo.Visible := false;
        cbbConta.Visible := false;
        cbblocalTitulo.Visible := false;

        txtVlrCanc.ReadOnly := true;

        txtTaxaPer.Visible := false;
        lblperTaxaDesc.Visible := false;

        txtVlrDescontar.Visible := false;
        lblVlrDesc.Visible := false;

        cbbPeriodo.Clear;
        dbGrid.PopupMenu := nil;

       if (dmGeral.FIN_CD_M_DCT.FieldByName('TIPO_OPERACAO').AsInteger = 0) then
         begin
           lblConta.Visible := true;
           lblLocalTitulo.Visible := true;
           cbbConta.Visible := true;
           cbblocalTitulo.Visible := true;

           txtTaxaPer.Visible := true;
           lblperTaxaDesc.Visible := true;

           txtVlrDescontar.Visible := true;
           lblVlrDesc.Visible := true;

           cbbPeriodo.AddItem('Por Vencimento',nil);
           cbbPeriodo.AddItem('Por Emissão',nil);


         end;

       if (dmGeral.FIN_CD_M_DCT.FieldByName('TIPO_OPERACAO').AsInteger = 1) then
         begin
           cbbPeriodo.AddItem('Por Vencimento',nil);
           cbbPeriodo.AddItem('Por Emissão',nil);
           cbbPeriodo.AddItem('Por Data de Desconto',nil);

           if dmGeral.FIN_CD_M_DCT.FieldByName('CANCELADO').AsBoolean = false then
             dbGrid.PopupMenu := pmCancelarBxa;
         end;

        if (dmGeral.FIN_CD_M_DCT.FieldByName('TIPO_OPERACAO').AsInteger = 2) then
         begin
           lblLocalTitulo.Visible := true;
           cbblocalTitulo.Visible := true;

           txtVlrCanc.ReadOnly := false;


           cbbPeriodo.AddItem('Por Vencimento',nil);
           cbbPeriodo.AddItem('Por Emissão',nil);
         end;
     end;

end;

procedure TFIN_FM_M_DCT.dgTituloEnter(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_DCT_TIT.Edit;
end;

procedure TFIN_FM_M_DCT.dgTituloExit(Sender: TObject);
begin
  inherited;
  if dmGeral.FIN_CD_M_DCT_TIT.State  in [dsEdit] then
    dmGeral.FIN_CD_M_DCT_TIT.Post;
end;

procedure TFIN_FM_M_DCT.dgTituloFieldChanged(Sender: TObject; Field: TField);
begin
  inherited;

    if not dmGeral.FIN_CD_M_DCT.IsEmpty then
      begin
        if dmGeral.FIN_CD_M_DCT_TIT.FieldByname('INT_SELECAO').AsBoolean = true then
          begin
             dmGeral.FIN_CD_M_DCT.FieldByname('VLR_TOTAL_TITULOS').AsCurrency :=
                    dmGeral.FIN_CD_M_DCT.FieldByname('VLR_TOTAL_TITULOS').AsCurrency +
                     dmGeral.FIN_CD_M_DCT_TIT.FieldByname('INT_VLR_PARCELA').AsCurrency;
          end
        else
          begin
             dmGeral.FIN_CD_M_DCT.FieldByname('VLR_TOTAL_TITULOS').AsCurrency :=
                    dmGeral.FIN_CD_M_DCT.FieldByname('VLR_TOTAL_TITULOS').AsCurrency -
                     dmGeral.FIN_CD_M_DCT_TIT.FieldByname('INT_VLR_PARCELA').AsCurrency;
          end;

        dmGeral.FIN_CD_M_DCT.FieldBYName('vlr_taxa_desc').AsCurrency :=
                 RoundTo(dmGeral.FIN_CD_M_DCT.FieldBYName('vlr_total_titulos').AsCurrency *
                    (dmGeral.FIN_CD_M_DCT.FieldBYName('per_taxa_desc').AsCurrency/100),-2);

      end;

end;

end.
