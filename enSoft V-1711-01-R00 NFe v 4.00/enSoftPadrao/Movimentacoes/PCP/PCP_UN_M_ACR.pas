unit PCP_UN_M_ACR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvDBControls,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, vcl.Wwdbedit,
  vcl.wwdblook, vcl.Wwdotdot, vcl.Wwdbcomb, JvExComCtrls, JvDateTimePicker,
  JvDBDateTimePicker, JvExExtCtrls, JvExtComponent, JvPanel, JvDBCheckBox,
  Datasnap.DBClient;

type
  TPCP_FM_M_ACR = class(TPAD_FM_X_PAD)
    lblNProtocolo: TLabel;
    lbAtendente: TLabel;
    lblData: TLabel;
    lblHora: TLabel;
    lblRevisao: TLabel;
    txtRevisao: TDBEdit;
    txtObservacao: TDBEdit;
    lblObservacao: TLabel;
    Label1: TLabel;
    txtCPF: TDBEdit;
    lblCPF: TLabel;
    lblCodigo: TLabel;
    lblNome: TLabel;
    txtNome: TDBEdit;
    txtEndereco: TDBEdit;
    lblEndereco: TLabel;
    lblCidade: TLabel;
    lblCEP: TLabel;
    txtCEP: TDBEdit;
    lblTelefone: TLabel;
    txtTelefone: TDBEdit;
    txtNNota: TDBEdit;
    lblNNota: TLabel;
    lblDataCompra: TLabel;
    gbItens: TGroupBox;
    btn_Add_Itens: TBitBtn;
    grdItens: TwwDBGrid;
    dsoIte: TwwDataSource;
    pcFilhos: TPageControl;
    tbiReclamacaoCliente: TTabSheet;
    tbiDefeitoColchao: TTabSheet;
    tbiDisposicao: TTabSheet;
    tbiAnaliseProduto: TTabSheet;
    tbiComentario: TTabSheet;
    tbiMonitoramento: TTabSheet;
    tbiRegistroAcoes: TTabSheet;
    lblDefeitoProduto: TLabel;
    lblComentario: TLabel;
    lblDefeitoConstatado: TLabel;
    lblSeProcede: TLabel;
    txtDefeitoConstatadoJustificativa: TDBEdit;
    dsoPdt: TwwDataSource;
    dsoPrc: TwwDataSource;
    dpkData: TJvDBDateEdit;
    dpkDataNf: TJvDBDateEdit;
    txtAtendenteNome: TDBText;
    txtCidadeDescricao: TDBText;
    txtEstado: TDBText;
    pnlItens: TPanel;
    lblDescricao: TLabel;
    lblUnidade: TLabel;
    txtBuscaItem: TJvDBComboEdit;
    txtItemDescricao: TDBText;
    txtUnidade: TDBText;
    dpkDataFabricacao: TJvDBDateEdit;
    Label2: TLabel;
    dpkDataValidade: TJvDBDateEdit;
    Label4: TLabel;
    dpkDataVenda: TJvDBDateEdit;
    Label6: TLabel;
    chkGarantia: TDBCheckBox;
    Label8: TLabel;
    pnlMonitoramento: TPanel;
    Label3: TLabel;
    lelAberturaMonitoramento: TLabel;
    lblAbertura: TLabel;
    lblEncerramento: TLabel;
    lblDataMonitoramento: TLabel;
    lblHoraMonitoramento: TLabel;
    lblEncerramentoMonitoramento: TLabel;
    txtResponsavelMonitoramento: TJvDBComboEdit;
    dpkAbertura: TJvDBDateEdit;
    dpkEncerramento: TJvDBDateEdit;
    lblDisposicao: TLabel;
    txtResponsavelMonitoramentoDescricao: TDBText;
    grdItensIButton: TwwIButton;
    txtCodigo: TJvDBComboEdit;
    tbiReaproveitamentoItens: TTabSheet;
    lblResponsavelReaproveitamento: TLabel;
    lblDtaEntrada: TLabel;
    lblDtaSaida: TLabel;
    lblReaproveitados: TLabel;
    Label5: TLabel;
    txtResponsavelReaproveitamentoDescricao: TDBText;
    txtResponsavelReaproveitamento: TJvDBComboEdit;
    dpkDtaEntrada: TJvDBDateEdit;
    dpkDtaSaida: TJvDBDateEdit;
    dsoPcr: TwwDataSource;
    dsoPcn: TwwDataSource;
    dgNaoReaproveitados: TwwDBGrid;
    dgReaproveitados: TwwDBGrid;
    cbbIdentificacaoCliente: TwwDBComboBox;
    txtDisposicao: TJvDBComboEdit;
    txtDisposicaoDescricao: TDBText;
    pnlTipoDefeito: TPanel;
    lblTipoDefeito: TLabel;
    txtTipoDefeitoDescricao: TDBText;
    txtTipoDefeito: TJvDBComboEdit;
    btnAddTipoDefeito: TBitBtn;
    dgTipoDefeito: TwwDBGrid;
    dgTipoDefeitoIButton: TwwIButton;
    txtCidade: TJvDBComboEdit;
    lblBairro: TLabel;
    txtBairro: TDBEdit;
    lblN: TLabel;
    txtNumero: TDBEdit;
    lblUf: TLabel;
    txtDefeitoConstatado: TDBEdit;
    lblItem: TLabel;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    txtNProtocolo: TDBText;
    txtHora: TDBText;
    dgReaproveitadosIButton: TwwIButton;
    dgNaoReaproveitadosIButton: TwwIButton;
    JvDBDateTimePicker1: TJvDBDateTimePicker;
    JvDBDateTimePicker2: TJvDBDateTimePicker;
    rgProcede: TDBRadioGroup;
    txtComentarios: TDBMemo;
    txtDefeitoProduto: TDBMemo;
    ScrollBox1: TScrollBox;
    dgRegras: TwwDBGrid;
    dgRegrasIButton: TwwIButton;
    pnlRegras: TPanel;
    llDataAcao: TLabel;
    lblEventoOcorrido: TLabel;
    lblResponsavel: TLabel;
    txtResponsavelAcoesDescricao: TDBText;
    txtResponsavelAcoes: TJvDBComboEdit;
    dpkDataAcao: TJvDBDateEdit;
    rgSituacao: TDBRadioGroup;
    txtEventoOcorrido: TDBEdit;
    btnAddRegras: TBitBtn;
    gbLegenda: TGroupBox;
    Panel2: TPanel;
    Label9: TLabel;
    btnImportarPed: TcxButton;
    btnCriarPed: TcxButton;
    txtCodPedVenda: TwwDBEdit;
    Label7: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure txtCidadeButtonClick(Sender: TObject);
    procedure btnAddRegrasClick(Sender: TObject);
    procedure txtResponsavelAcoesButtonClick(Sender: TObject);
    procedure txtResponsavelAcoesExit(Sender: TObject);
    procedure txtResponsavelMonitoramentoButtonClick(Sender: TObject);
    procedure txtResponsavelMonitoramentoExit(Sender: TObject);
    procedure txtCidadeExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure pnlItensExit(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure pnlRegrasExit(Sender: TObject);
    procedure txtEventoOcorridoExit(Sender: TObject);
    procedure dgRegrasIButtonClick(Sender: TObject);
    procedure dgRegrasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtResponsavelReaproveitamentoClick(Sender: TObject);
    procedure txtResponsavelReaproveitamentoExit(Sender: TObject);
    procedure dgReaproveitadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbIdentificacaoClienteEnter(Sender: TObject);
    procedure dgNaoReaproveitadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  //  procedure chkProcedeClick(Sender: TObject);
    procedure txtDisposicaoButtonClick(Sender: TObject);
    procedure txtDisposicaoExit(Sender: TObject);
    procedure btnAddTipoDefeitoClick(Sender: TObject);
    procedure pnlTipoDefeitoExit(Sender: TObject);
    procedure dgTipoDefeitoIButtonClick(Sender: TObject);
    procedure dgTipoDefeitoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtTipoDefeitoButtonClick(Sender: TObject);
    procedure txtTipoDefeitoExit(Sender: TObject);
    procedure txtCodigoButtonClick(Sender: TObject);
    procedure txtCodigoExit(Sender: TObject);
    procedure cbbIdentificacaoClienteChange(Sender: TObject);
    procedure txtDefeitoProdutoExit(Sender: TObject);
    procedure txtDefeitoConstatadoExit(Sender: TObject);
    procedure txtDefeitoConstatadoJustificativaExit(Sender: TObject);
    procedure dpkDtaEntradaExit(Sender: TObject);
    procedure dpkDtaSaidaExit(Sender: TObject);
    procedure dgReaproveitadosExit(Sender: TObject);
    procedure dgNaoReaproveitadosExit(Sender: TObject);
    procedure txtComentariosExit(Sender: TObject);
    procedure dpkAberturaExit(Sender: TObject);
    procedure dpkEncerramentoExit(Sender: TObject);
    procedure txtAberturaExit(Sender: TObject);
    procedure txtEncerramentoExit(Sender: TObject);
    procedure dpkDataNfExit(Sender: TObject);
    procedure dpkDataVendaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbIdentificacaoClienteExit(Sender: TObject);
    procedure dgReaproveitadosIButtonClick(Sender: TObject);
    procedure dgNaoReaproveitadosIButtonClick(Sender: TObject);
    procedure JvDBDateTimePicker2Exit(Sender: TObject);
    procedure JvDBDateTimePicker1Exit(Sender: TObject);
    procedure rgProcedeClick(Sender: TObject);
    procedure rgProcedeChange(Sender: TObject);
    procedure txtComentariosEnter(Sender: TObject);
    procedure txtDefeitoProdutoEnter(Sender: TObject);
    procedure rgSituacaoClick(Sender: TObject);
    procedure txtDefeitoConstatadoEnter(Sender: TObject);
    procedure txtDefeitoConstatadoJustificativaEnter(Sender: TObject);
    procedure txtDisposicaoEnter(Sender: TObject);
    procedure txtResponsavelMonitoramentoEnter(Sender: TObject);
    procedure txtResponsavelReaproveitamentoEnter(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnImportarPedClick(Sender: TObject);
    procedure btnCriarPedClick(Sender: TObject);
  private
    { Private declarations }
    procedure SalvarDadosItens;
    procedure Atualizar_xBusca;
    procedure ChamaCorTamanho;
    procedure AbrirBuscas;
    var
      xbusca_item: String;

  public
    { Public declarations }
  end;

var
  PCP_FM_M_ACR: TPCP_FM_M_ACR;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE, PSQ_UN_X_FUN, PSQ_UN_X_CID, enFunc, PSQ_UN_X_DIS,
      PSQ_UN_X_CLI, PSQ_UN_X_TDF, PCP_RN_M_ACR, uDmSgq, PSQ_UN_X_PED,
  FAT_UN_M_PED;

procedure TPCP_FM_M_ACR.AbrirBuscas;
begin
  dmGeral.BusTamanho(1,'%');
  dmGeral.BusCor(1,'%');
end;

procedure TPCP_FM_M_ACR.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_ACR);

  dpkData.Date := xDataSis;
  pcFilhos.TabIndex := 0;

  pnlItens.Enabled := False;
  pnlRegras.Enabled := False;
  pnlTipoDefeito.Enabled := False;

  txtObservacao.SetFocus;
end;

procedure TPCP_FM_M_ACR.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_ACR) then
      begin
        inherited;
        pnlItens.Enabled := False;
        pnlRegras.Enabled := False;
        pnlTipoDefeito.Enabled := False;
        dmGeral.PCP_CD_M_ACR_ITE.Edit;
        pcFilhos.TabIndex := 0;
        txtObservacao.SetFocus;
        if (not dmGeral.PCP_CD_M_ACR_ITE.IsEmpty) then
         begin
          dmGeral.PCP_CD_M_ACR_ITE.IndexFieldNames := 'id_acr_p';
         end;
      end;
end;

procedure TPCP_FM_M_ACR.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_ACR) then
     begin
       inherited;
       pcFilhos.TabIndex := 0;
       dbGrid.SetFocus;
     end
  else
     begin
       txtObservacao.SetFocus;
     end;
end;

procedure TPCP_FM_M_ACR.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_ACR);
end;

procedure TPCP_FM_M_ACR.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  PCP_RN_M_ACR.PcpValidarOutrosIte;
  PCP_RN_M_ACR.PcpVerificarAtendimentoConcluidoAcr;
  codigo := dmGeral.PCP_CD_M_ACR.FieldByName('ID_ACR').AsString;
  DmGeral.Grava(dmGeral.PCP_CD_M_ACR);
  inherited;
  dmGeral.PCP_CD_M_ACR.Close;
  dmGeral.PCP_CD_M_ACR.Data :=
  dmGeral.PCP_CD_M_ACR.DataRequest(
          VarArrayOf([0, codigo]));

  pcFilhos.TabIndex := 0;
end;

procedure TPCP_FM_M_ACR.Atualizar_xBusca;
begin
  if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end
  else if xbusca_item = 'ID_ITEM' then
      begin
        lblItem.Caption := '<F7> Cód. fábrica';
        xbusca_item := 'COD_FABRICA';
      end
   else if xbusca_item = 'COD_FABRICA' then
      begin
        lblItem.Caption := '<F7> Cód. barra';
        xbusca_item := 'COD_BARRA';
      end
   else if xbusca_item = 'COD_BARRA' then
      begin
        lblItem.Caption := '<F7> Cód. item';
        xbusca_item := 'ID_ITEM';
      end;
end;

procedure TPCP_FM_M_ACR.btnAddRegrasClick(Sender: TObject);
begin
  inherited;
  pnlRegras.Enabled := True;

  dmGeral.PCP_CD_M_ACR_PRC.Insert;
  txtResponsavelAcoes.SetFocus;
end;

procedure TPCP_FM_M_ACR.btnAddTipoDefeitoClick(Sender: TObject);
begin
  inherited;
  pnlTipoDefeito.Enabled := True;

  dmGeral.PCP_CD_M_ACR_PDT.Insert;
  txtTipoDefeito.SetFocus;
end;

procedure TPCP_FM_M_ACR.btnCriarPedClick(Sender: TObject);
begin
  inherited;
  {FAT_FM_M_PED := TFAT_FM_M_PED.Create(Self);
  FAT_FM_M_PED.Visible := false;
  FAT_FM_M_PED.ShowModal; }

  OpenForm(TFAT_FM_M_PED, FAT_FM_M_PED);
  // btnImportarPed.OnClick(self);
end;

procedure TPCP_FM_M_ACR.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.PCP_CD_M_ACR.Close;
    dmGeral.PCP_CD_M_ACR.Data :=
    dmGeral.PCP_CD_M_ACR.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
    if (not dmGeral.PCP_CD_M_ACR.IsEmpty) then
      begin
        dmGeral.PCP_CD_M_ACR.IndexFieldNames := 'id_acr';
      end;

    if (not dmGeral.PCP_CD_M_ACR_ITE.IsEmpty) then
      begin
        dmGeral.PCP_CD_M_ACR_ITE.IndexFieldNames := 'id_acr_p';
      end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_ACR.btnImportarPedClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_PED := TPSQ_FM_X_PED.Create(Self);
  FormOrigem := PCP_FM_M_ACR.Name;
  PSQ_FM_X_PED.ShowModal;


 { if not dmGeral.BUS_CD_M_PED.IsEmpty then
    begin
      dmGeral.BusCliente(0,dmGeral.BUS_CD_M_PED.FieldByName('ID_CLIENTE').AsString);
      if not dmGeral.BUS_CD_C_CLI.IsEmpty then
        begin
         dmGeral.PCP_CD_M_ACR.FieldByName('NOME_CONSUMIDOR').AsString :=
                 dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;

         dmGeral.PCP_CD_M_ACR.FieldByName('ENDERECO_CONSUMIDOR').AsString :=
                 dmGeral.BUS_CD_C_CLI.FieldByName('ENDERECO').AsString;

         dmGeral.PCP_CD_M_ACR.FieldByName('NRO_END_CONSUMIDOR').AsString :=
                 dmGeral.BUS_CD_C_CLI.FieldByName('NUMERO').AsString;

         dmGeral.PCP_CD_M_ACR.FieldByName('CNPJ_CPF_CONSUMIDOR').AsString :=
                 dmGeral.BUS_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').AsString;

         dmGeral.PCP_CD_M_ACR.FieldByName('BAIRRO_CONSUMIDOR').AsString :=
                 dmGeral.BUS_CD_C_CLI.FieldByName('BAIRRO').AsString;

         dmGeral.PCP_CD_M_ACR.FieldByName('ID_CIDADE').AsString :=
                 dmGeral.BUS_CD_C_CLI.FieldByName('ID_CIDADE').AsString;


         dmGeral.PCP_CD_M_ACR.FieldByName('INT_NOMECID').AsString :=
                 dmGeral.BUS_CD_C_CLI.FieldByName('INT_NOMECID').AsString;

         dmGeral.PCP_CD_M_ACR.FieldByName('INT_UF').AsString :=
                 dmGeral.BUS_CD_C_CLI.FieldByName('INT_UF').AsString;

         dmGeral.PCP_CD_M_ACR.FieldByName('CEP_CONSUMIDOR').AsString :=
                 dmGeral.BUS_CD_C_CLI.FieldByName('CEP').AsString;

         dmGeral.PCP_CD_M_ACR.FieldByName('FONE_CONSUMIDOR').AsString :=
                 dmGeral.BUS_CD_C_CLI.FieldByName('TEL_FIXO').AsString;

        end
      else
        begin
          ShowMessage('Cliente não cadastrado.');
          dmGeral.PCP_CD_M_ACR.FieldByName('NOME_CONSUMIDOR').AsString := '';
          dmGeral.PCP_CD_M_ACR.FieldByName('ENDERECO_CONSUMIDOR').AsString := '';
          dmGeral.PCP_CD_M_ACR.FieldByName('NRO_END_CONSUMIDOR').AsString := '';
          dmGeral.PCP_CD_M_ACR.FieldByName('CNPJ_CPF_CONSUMIDOR').AsString := '';
          dmGeral.PCP_CD_M_ACR.FieldByName('BAIRRO_CONSUMIDOR').AsString := '';
          dmGeral.PCP_CD_M_ACR.FieldByName('ID_CIDADE').AsString := '';
          dmGeral.PCP_CD_M_ACR.FieldByName('INT_NOMECID').AsString := '';
          dmGeral.PCP_CD_M_ACR.FieldByName('INT_UF').AsString := '';
          dmGeral.PCP_CD_M_ACR.FieldByName('CEP_CONSUMIDOR').AsString := '';
          dmGeral.PCP_CD_M_ACR.FieldByName('FONE_CONSUMIDOR').AsString := '';
        end;

    end;  }

  PSQ_FM_X_PED.Free;
  dmGeral.PCP_CD_M_ACR_ITE.First;
  txtObservacao.SetFocus;
end;

procedure TPCP_FM_M_ACR.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TPCP_FM_M_ACR.cbbCorExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_COR').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       if cbbTamanho.Focused then
          Exit;

       Showmessage('O campo "Cor" deve ser preenchido.');
       dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;
  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('INT_NOMECOR').text :=
          dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;

  if cbbTamanho.Focused then
     Exit;

  pnlItens.Enabled := true;
  chkGarantia.SetFocus;

  pnlCorTamanho.Visible := False;
end;

procedure TPCP_FM_M_ACR.cbbIdentificacaoClienteChange(Sender: TObject);
begin
  inherited;
{  if dmGeral.PCP_CD_M_ACR.State in [dsInsert, dsEdit] then
     begin
        if (cbbIdentificacaoCliente.ItemIndex = 0) then
           begin
             txtCodigo.Enabled := True;
             txtCodigo.TabStop := True;
             txtCodigo.Color := clWhite;
             //txtCodigo.SetFocus;
           end
        else if (cbbIdentificacaoCliente.ItemIndex = 1) then
           begin
             dmGeral.PCP_CD_M_ACR.FieldByName('pessoa').AsInteger := 0;

             txtCodigo.Enabled := False;
             txtCodigo.TabStop := False;
             txtCodigo.Text := '';
             txtCodigo.Color := $00DADADA;
             //txtCpf.SetFocus;
           end
        else if (cbbIdentificacaoCliente.ItemIndex = 2) then
           begin
             dmGeral.PCP_CD_M_ACR.FieldByName('pessoa').AsInteger := 0;

             txtCodigo.Enabled := True;
             txtCodigo.TabStop := True;
             txtCodigo.Color := clWhite;
             //txtCodigo.SetFocus;
           end;
     end;}
end;

procedure TPCP_FM_M_ACR.cbbIdentificacaoClienteEnter(Sender: TObject);
begin
  inherited;
  cbbIdentificacaoCliente.DropDown;
end;

procedure TPCP_FM_M_ACR.cbbIdentificacaoClienteExit(Sender: TObject);
begin
  inherited;
  if dmGeral.PCP_CD_M_ACR.State in [dsInsert, dsEdit] then
     begin
        if (cbbIdentificacaoCliente.ItemIndex = 0) then
           begin
             txtCodigo.Enabled := True;
             txtCodigo.TabStop := True;
             txtCodigo.Color := clWhite;
             if txtCodigo.CanFocus then
                txtCodigo.SetFocus
           end
        else if (cbbIdentificacaoCliente.ItemIndex = 1) then
           begin
             dmGeral.PCP_CD_M_ACR.FieldByName('pessoa').AsInteger := 0;

             txtCodigo.Enabled := False;
             txtCodigo.TabStop := False;
             txtCodigo.Text := '';
             txtCodigo.Color := $00DADADA;
             txtCpf.SetFocus;
           end
        else if (cbbIdentificacaoCliente.ItemIndex = 2) then
           begin
             dmGeral.PCP_CD_M_ACR.FieldByName('pessoa').AsInteger := 0;

             txtCodigo.Enabled := True;
             txtCodigo.TabStop := True;
             txtCodigo.Color := clWhite;
             txtCodigo.SetFocus
           end;
     end;
  if (dmgeral.PCP_CD_M_ACR.FieldByName('ID_BUSCA_CLIREP').AsString = '') then
     begin
       dmGeral.PCP_CD_M_ACR.FieldByName('nome_consumidor').AsString := '';
       dmGeral.PCP_CD_M_ACR.FieldByName('endereco_consumidor').AsString := '';
       dmGeral.PCP_CD_M_ACR.FieldByName('cnpj_cpf_consumidor').AsString := '';
       dmGeral.PCP_CD_M_ACR.FieldByName('nro_end_consumidor').AsString := '';
       dmGeral.PCP_CD_M_ACR.FieldByName('bairro_consumidor').AsString := '';
       dmGeral.PCP_CD_M_ACR.FieldByName('id_cidade').AsString := '';
       dmGeral.PCP_CD_M_ACR.FieldByName('int_nomecid').AsString := '';
       dmGeral.PCP_CD_M_ACR.FieldByName('int_uf').AsString := '';
       dmGeral.PCP_CD_M_ACR.FieldByName('cep_consumidor').AsString := '';
       dmGeral.PCP_CD_M_ACR.FieldByName('fone_consumidor').AsString := '';
     end;
end;

procedure TPCP_FM_M_ACR.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,4,5,6] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPCP_FM_M_ACR.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TPCP_FM_M_ACR.cbbTamanhoExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_TAMANHO').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.BusTamanho(0,dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;

  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    begin
     chkGarantia.SetFocus;
     pnlCorTamanho.Visible := False;
    end;
end;

procedure TPCP_FM_M_ACR.ChamaCorTamanho;
begin
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanho.Visible := False;

        chkGarantia.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := txtItemDescricao.Left + 30;
            pnlCorTamanho.Top := txtBuscaItem.Top - 10;
            pnlCorTamanho.Width := 276;

            lblCor.Left         := 140;
            lblCor.Visible      := true;

            cbbCor.Visible     := True;
            cbbTamanho.Visible := True;
            lblTamanho.Left    := 4;
            lblTamanho.Visible := true;

            cbbCor.TabStop := True;
            cbbCor.Left := 140;
            cbbTamanho.TabStop := True;

            pnlCorTamanho.Visible := True;
            cbbTamanho.SetFocus;
          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  pnlCorTamanho.Left  := txtItemDescricao.Left + 30;
                  pnlCorTamanho.Top   := txtBuscaItem.Top - 10;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := true;

                  cbbCor.Visible := False;
                  cbbCor.TabStop := False;
                  lblCor.Visible := false;

                  pnlCorTamanho.Visible := True;
                  cbbTamanho.SetFocus;
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  pnlCorTamanho.Visible := True;
                  pnlCorTamanho.Left := txtItemDescricao.Left + 30;
                  pnlCorTamanho.Top := txtBuscaItem.Top - 10;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := false;

                  cbbTamanho.Visible := False;
                  cbbTamanho.TabStop := False;

                  cbbCor.Left := 4;
                  cbbCor.SetFocus;
                  lblCor.left := 4;
                  lblCor.Visible := true;
               end;
         end;
     end;
end;

procedure TPCP_FM_M_ACR.txtDefeitoProdutoEnter(Sender: TObject);
begin
  inherited;
   dmGeral.PCP_CD_M_ACR_ITE.Edit;
   PCP_FM_M_ACR.KeyPreview := false;
end;

{procedure TPCP_FM_M_ACR.chkProcedeClick(Sender: TObject);
begin
  inherited;
  if chkProcede.Checked = True then
     begin
       txtDefeitoConstatadoJustificativa.Enabled := True;
       txtDefeitoConstatadoJustificativa.Color := clWhite;

       if txtDefeitoConstatadoJustificativa.CanFocus then
          txtDefeitoConstatadoJustificativa.SetFocus;
     end
  else
     begin
       txtDefeitoConstatadoJustificativa.Enabled := False;
       txtDefeitoConstatadoJustificativa.Color := $00DADADA;
       txtDefeitoConstatadoJustificativa.Text := '';
     end;

end;   }

procedure TPCP_FM_M_ACR.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;

   if (dmGeral.PCP_CD_M_ACR.FieldByName('ATENDIMENTO_CONCLUIDO').AsInteger = 1) then
    begin
     AFont.Color := clBlue;
    end;
end;

procedure TPCP_FM_M_ACR.dgNaoReaproveitadosExit(Sender: TObject);
begin
  inherited;
  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.dgNaoReaproveitadosIButtonClick(Sender: TObject);
begin
  inherited;
   try
     dgNaoReaproveitadosIButton.Enabled := False;
     if dmGeral.PCP_CD_M_ACR_PCN.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          Abort;
        end;
     dmGeral.PCP_CD_M_ACR_PCN.Delete;
     dmGeral.PCP_CD_M_ACR_PCN.Edit;
  finally
    dgNaoReaproveitadosIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_ACR.dgNaoReaproveitadosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F3 then
     begin
      if (dmGeral.PCP_CD_M_ACR_ITE.RecordCount >0) then
        begin
          PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);

          xBusIteFloDes := True;

          PSQ_FM_X_ITE.ShowModal;

          if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
             begin
               if not dmGeral.PCP_CD_M_ACR_PCN.Locate('ID_ITEM',PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString,[]) then
                  begin
                    dmGeral.PCP_CD_M_ACR_ITE.Edit;
                    dmGeral.PCP_CD_M_ACR_PCN.Insert;
                    dmGeral.PCP_CD_M_ACR_PCNid_item.Text := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;
                    dmGeral.PCP_CD_M_ACR_PCNint_desc_pro.Text := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
                    dmGeral.PCP_CD_M_ACR_PCN.Post;
                  end;
             end;
           PSQ_FM_X_ITE.Free;
        end
       else
        begin
          ShowMessage('É necessário selecionar o item');
          exit;
        end;
     end;
end;

procedure TPCP_FM_M_ACR.dgReaproveitadosExit(Sender: TObject);
begin
  inherited;
  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.dgReaproveitadosIButtonClick(Sender: TObject);
begin
  inherited;
   try
     dgReaproveitadosIButton.Enabled := False;
     if dmGeral.PCP_CD_M_ACR_PCR.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          Abort;
        end;
     dmGeral.PCP_CD_M_ACR_PCR.Delete;
     dmGeral.PCP_CD_M_ACR_PCR.Edit;
  finally
    dgReaproveitadosIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_ACR.dgReaproveitadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F3 then
     begin
       if dmGeral.PCP_CD_M_ACR_ITE.RecordCount > 0 then
         begin
           PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
           PSQ_FM_X_ITE.ShowModal;

           if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
              begin
                if not dmGeral.PCP_CD_M_ACR_PCR.Locate('ID_ITEM',PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString,[]) then
                   begin
                     dmGeral.PCP_CD_M_ACR_ITE.Edit;
                     dmGeral.PCP_CD_M_ACR_PCR.Insert;
                     dmGeral.PCP_CD_M_ACR_PCRid_item.Text := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;
                     dmGeral.PCP_CD_M_ACR_PCRint_desc_pro.Text := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
                     dmGeral.PCP_CD_M_ACR_PCR.Post;
                   end;
              end;
              PSQ_FM_X_ITE.Free;
          end
        else
          begin
            ShowMessage('É necessário selecionar o item');
            exit;
          end;
     end;
end;

procedure TPCP_FM_M_ACR.dgRegrasIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgRegrasIButton.Enabled := False;
     if dmGeral.PCP_CD_M_ACR_PRC.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          Abort;
        end;
     dmGeral.PCP_CD_M_ACR_PRC.Delete;
     dmGeral.PCP_CD_M_ACR_PRC.Edit;
  finally
    dgRegrasIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_ACR.dgRegrasMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlRegras.Enabled = False then
     pnlRegras.Enabled := True;

  dmGeral.PCP_CD_M_ACR_PRC.Cancel;

  if dmGeral.PCP_CD_M_ACR_PRC.IsEmpty then
     begin
       dmGeral.PCP_CD_M_ACR_PRC.Append;
       pnlRegras.Enabled := True;
       txtResponsavelAcoes.SetFocus;
     end
  else
     begin
       dmGeral.PCP_CD_M_ACR_PRC.Edit;
       pnlRegras.Enabled := True;
       txtResponsavelAcoes.SetFocus;
     end;
end;

procedure TPCP_FM_M_ACR.dgTipoDefeitoIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgTipoDefeitoIButton.Enabled := False;
     if dmGeral.PCP_CD_M_ACR_PDT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          Abort;
        end;
     dmGeral.PCP_CD_M_ACR_PDT.Delete;
     dmGeral.PCP_CD_M_ACR_PDT.Edit;
  finally
    dgTipoDefeitoIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_ACR.dgTipoDefeitoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlTipoDefeito.Enabled = False then
     pnlTipoDefeito.Enabled := True;

  dmGeral.PCP_CD_M_ACR_PDT.cancel;

  if dmGeral.PCP_CD_M_ACR_PDT.IsEmpty then
     begin
       dmGeral.PCP_CD_M_ACR_PDT.Append;
       pnlTipoDefeito.Enabled := True;
       txtTipoDefeito.SetFocus;
     end
  else
     begin
       dmGeral.PCP_CD_M_ACR_PDT.Edit;
       pnlTipoDefeito.Enabled := True;
       txtTipoDefeito.SetFocus;
     end;
end;

procedure TPCP_FM_M_ACR.dpkAberturaExit(Sender: TObject);
begin
  inherited;
  
  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.dpkDataNfExit(Sender: TObject);
begin
  inherited;
  if dpkData.Text <> '  /  /    ' then
     begin
        if dpkDataNf.Date > dpkData.Date then
           begin
             ShowMessage('Data de Compra não pode ser maior que a Data do Atendimento.');
             dpkDataNf.Text := '';
             dpkDataNf.SetFocus;
             Exit;
           end;
     end;
end;

procedure TPCP_FM_M_ACR.dpkDataVendaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if txtBuscaItem.Focused or chkGarantia.Focused or dpkDataFabricacao.Focused or
     dpkDataValidade.Focused then
     begin
       Exit;
     end;

  dmGeral.PCP_CD_M_ACR_ITE.Post;

  pnlItens.Enabled := False;
  btn_Add_Itens.SetFocus;
  dmGeral.PCP_CD_M_ACR_ITE.edit;
end;

procedure TPCP_FM_M_ACR.dpkDtaEntradaExit(Sender: TObject);
begin
  inherited;
  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.dpkDtaSaidaExit(Sender: TObject);
begin
  inherited;
  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.dpkEncerramentoExit(Sender: TObject);
begin
  inherited;
 

  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnlItens.Enabled := True;

  dmGeral.PCP_CD_M_ACR_ITE.Insert;
  chkGarantia.Checked := false;
  txtBuscaItem.SetFocus;
end;

procedure TPCP_FM_M_ACR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_ACR.Close;
  FreeAndNil(PCP_FM_M_ACR);
end;

procedure TPCP_FM_M_ACR.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_ACR.Close;
  dmGeral.PCP_CD_M_ACR.Data := dmGeral.PCP_CD_M_ACR.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_ACR.Open;

  dmGeral.AtualizarGridItens(grdItens,'int_desc_pro',16,12);

  pcFilhos.ActivePageIndex := 0;
end;

procedure TPCP_FM_M_ACR.FormShow(Sender: TObject);
begin
  inherited;
  Atualizar_xBusca;
  txtPesquisa.SetFocus;
end;

procedure TPCP_FM_M_ACR.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := False;
     if dmGeral.PCP_CD_M_ACR_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.PCP_CD_M_ACR_ITE.Delete;
     dmGeral.PCP_CD_M_ACR_ITE.Edit;
  finally
    grdItensIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_ACR.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlItens.Enabled = False then
     pnlItens.Enabled := True;

  dmGeral.PCP_CD_M_ACR_ITE.cancel;

  if dmGeral.PCP_CD_M_ACR_ITE.IsEmpty then
     begin
       dmGeral.PCP_CD_M_ACR_ITE.Append;
       pnlItens.Enabled := True;
       txtBuscaItem.SetFocus;
     end
  else
     begin
       dmGeral.PCP_CD_M_ACR_ITE.Edit;
       pnlItens.Enabled := True;
       dpkDataFabricacao.SetFocus;
     end;
end;

procedure TPCP_FM_M_ACR.JvDBDateTimePicker1Exit(Sender: TObject);
begin
  inherited;
 

  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.JvDBDateTimePicker2Exit(Sender: TObject);
begin
  inherited;

  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.pnlRegrasExit(Sender: TObject);
begin
  inherited;
  if (btnAddRegras.Focused) or (dgRegras.Focused) or (not dgRegrasIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               Exit;
             end;

          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          dmGeral.PCP_CD_M_ACR_PRC.Cancel;
          dmGeral.PCP_CD_M_ACR_PRC.Edit;
        finally
          pnlRegras.Enabled := False;
        end;
      end;
end;

procedure TPCP_FM_M_ACR.pnlTipoDefeitoExit(Sender: TObject);
begin
  inherited;
  if (btnAddTipoDefeito.Focused) or (dgTipoDefeito.Focused) or (not dgTipoDefeitoIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               Exit;
             end;

          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          dmGeral.PCP_CD_M_ACR_PDT.Cancel;
          dmGeral.PCP_CD_M_ACR_PDT.Edit;
        finally
          pnlTipoDefeito.Enabled := False;
        end;
      end;
end;

procedure TPCP_FM_M_ACR.rgProcedeChange(Sender: TObject);
begin
  inherited;
  if rgProcede.Value = 'False' then
     begin
       txtDefeitoConstatadoJustificativa.Enabled := True;
       txtDefeitoConstatadoJustificativa.Color := clWhite;

       if txtDefeitoConstatadoJustificativa.CanFocus then
          txtDefeitoConstatadoJustificativa.SetFocus;
     end
  else
     begin
       txtDefeitoConstatadoJustificativa.Enabled := False;
       txtDefeitoConstatadoJustificativa.Color := $00DADADA;
       txtDefeitoConstatadoJustificativa.Text := '';
     end;
end;

procedure TPCP_FM_M_ACR.rgProcedeClick(Sender: TObject);
begin
  inherited;

 { if rgProcede.Value = 'False' then
     begin
       txtDefeitoConstatadoJustificativa.Enabled := True;
       txtDefeitoConstatadoJustificativa.Color := clWhite;

       if txtDefeitoConstatadoJustificativa.CanFocus then
          txtDefeitoConstatadoJustificativa.SetFocus;
     end
  else
     begin
       txtDefeitoConstatadoJustificativa.Enabled := False;
       txtDefeitoConstatadoJustificativa.Color := $00DADADA;
       txtDefeitoConstatadoJustificativa.Text := '';
     end;       }
end;

procedure TPCP_FM_M_ACR.rgSituacaoClick(Sender: TObject);
begin
  inherited;
  if (rgSituacao.ItemIndex = 0) then
    begin
      dmGeral.PCP_CD_M_ACR_PRC.FieldByName('INT_DESC_SIT').AsString := 'Em Aberto';
    end;
  if (rgSituacao.ItemIndex = 1) then
    begin
      dmGeral.PCP_CD_M_ACR_PRC.FieldByName('INT_DESC_SIT').AsString := 'Concluído';
    end;
end;

procedure TPCP_FM_M_ACR.SalvarDadosItens;
begin
  dmGeral.PCP_CD_M_ACR_ITE.Post;
  dmGeral.PCP_CD_M_ACR_ITE.Edit;
end;

procedure TPCP_FM_M_ACR.pnlItensExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Itens.Focused) or (grdItens.Focused) or (not grdItensIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               Exit;
             end;

          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                exit;
             end;

          dmGeral.PCP_CD_M_ACR_ITE.Cancel;
          dmGeral.PCP_CD_M_ACR_ITE.Edit;
        finally
          pnlItens.Enabled := False;
        end;
      end;
end;

procedure TPCP_FM_M_ACR.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_ITEM').AsInteger :=
                   PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

           dmGeral.PCP_CD_M_ACR_ITE.FieldByName('INT_DESC_PRO').AsString :=
                   PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

           dmGeral.PCP_CD_M_ACR_ITE.FieldByName('INT_DESC_UND').AsString :=
                   PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_M_ACR.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
  tipo_item: integer;
begin
  inherited;

  dmGeral.BUS_CD_C_ITE.Close;

  if dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btn_Add_Itens.Focused then
          exit;

       if grdItens.Focused then
          exit;

       if not grdItensIButton.Enabled then
          exit;

       if (chkGarantia.Focused) or (dpkDataFabricacao.Focused) or
          (dpkDataValidade.Focused) or (dpkDataVenda.Focused)   then
           begin
             ShowMessage('O campo "Item" deve ser prenchido.');
             txtBuscaItem.SetFocus;
             exit;
           end
       else
           begin
             pnlItens.Enabled := false;
             exit;
           end;
     end
  else
     begin
       if dmGeral.PCP_CD_M_ACR_ITE.state in [dsBrowse] then
          dmGeral.PCP_CD_M_ACR_ITE.edit;
     end;


  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_desc_pro').Text := '';
  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_desc_und').Text  := '';

  if xbusca_item = 'ID_ITEM' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBuscaItem.Text]));
     end;
  if xbusca_item = 'COD_BARRA'  then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([2, txtBuscaItem.Text]));
     end;
  if xbusca_item = 'COD_FABRICA' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([3, txtBuscaItem.Text]));
     end;

  if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
     begin
       txtBuscaItem.SetFocus;
       dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_desc_pro').Text := '';
       dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_desc_und').Text  := '';
       exit;
     end;

  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_ITEM').Text :=
        dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_desc_pro').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_desc_und').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

  try
   pnlItens.onExit := nil;

   ChamaCorTamanho;
  finally
     pnlItens.OnExit := pnlItensExit;
  end;
end;

procedure TPCP_FM_M_ACR.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TPCP_FM_M_ACR.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_M_ACR.txtResponsavelReaproveitamentoClick(
  Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
   PSQ_FM_X_FUN.ShowModal;
      if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
         begin
           dmGeral.PCP_CD_M_ACR_ITE.Edit;
           dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_resp_ana').AsInteger :=
             PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('id_funcionario').AsInteger;

           {dmGeral.PCP_CD_M_ACR_ITE.FieldByName('INT_').AsString :=
             PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('NOME').AsString;}
         end;
   PSQ_FM_X_FUN.Free;
end;

procedure TPCP_FM_M_ACR.txtResponsavelReaproveitamentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_ACR_ITE.Edit;
end;

procedure TPCP_FM_M_ACR.txtResponsavelReaproveitamentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

   dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_nomeresana').Text := '';

   if dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_resp_ana').AsInteger > 0 then
     begin
       dmGeral.BusFuncionario2(0,dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_resp_ana').Text);
       if dmGeral.BUS_CD_C_FU2.IsEmpty then
         begin
           ShowMessage('Responsável não encontrado.');
           dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_resp_ana').Text := '';
           dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_nomeresana').text  := '';
           txtResponsavelReaproveitamento.SetFocus;
           Exit;
         end
       else
         begin
          dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_nomeresana').AsString :=
                   dmGeral.BUS_CD_C_FU2.FieldByName('NOME').AsString;
         end;
     end;
  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.txtTipoDefeitoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_TDF := TPSQ_FM_X_TDF.Create(Self);
   PSQ_FM_X_TDF.ShowModal;
      if not PSQ_FM_X_TDF.BUS_CD_C_TDF.IsEmpty then
         begin
           dmGeral.PCP_CD_M_ACR_PDT.FieldByName('id_tdf').AsInteger :=
                PSQ_FM_X_TDF.BUS_CD_C_TDF.FieldByName('id_tdf').AsInteger;

           dmGeral.PCP_CD_M_ACR_PDT.FieldByName('int_desctdf').AsString :=
                PSQ_FM_X_TDF.BUS_CD_C_TDF.FieldByName('descricao').AsString;
         end;
   PSQ_FM_X_TDF.Free;
end;

procedure TPCP_FM_M_ACR.txtTipoDefeitoExit(Sender: TObject);
var
  id_tdf, descricao: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  dmGeral.PCP_CD_M_ACR_PDT.FieldByName('int_desctdf').Text := '';

  if dmGeral.PCP_CD_M_ACR_PDT.FieldByName('id_tdf').Text = '' then
     begin
       ShowMessage('O campo "Tipo de Defeito" deve ser prenchido.');
       txtTipoDefeito.SetFocus;
       Exit;
     end;

  dmGeral.BusTiposDefeito(0,dmGeral.PCP_CD_M_ACR_PDT.FieldByName('id_tdf').Text);
   if dmGeral.BUS_CD_C_TDF.IsEmpty then
     begin
       ShowMessage('Tipo de Defeito não encontrado.');
       dmGeral.PCP_CD_M_ACR_PDT.FieldByName('id_tdf').Text := '';
       dmGeral.PCP_CD_M_ACR_PDT.FieldByName('int_desctdf').Text := '';
       txtTipoDefeito.SetFocus;
       Exit;
     end;

   dmGeral.PCP_CD_M_ACR_PDT.FieldByName('int_desctdf').AsString :=
     dmGeral.BUS_CD_C_TDF.FieldByName('descricao').AsString;

  if dmGeral.PCP_CD_M_ACR_PDT.state in [dsInsert] then
     begin
       id_tdf    := dmGeral.PCP_CD_M_ACR_PDT.FieldByName('id_tdf').AsString;
       descricao := dmGeral.PCP_CD_M_ACR_PDT.FieldByName('int_desctdf').AsString;
       dmGeral.PCP_CD_M_ACR_PDT.cancel;
       if dmGeral.PCP_CD_M_ACR_PDT.locate('id_tdf',id_tdf,[]) then
          begin
            ShowMessage('Tipo de defeito já inserido.');
            dmGeral.PCP_CD_M_ACR_PDT.Insert;
            dmGeral.PCP_CD_M_ACR_PDT.FieldByName('id_tdf').Text := '';
            dmGeral.PCP_CD_M_ACR_PDT.FieldByName('int_desctdf').Text := '';
            txtTipoDefeito.SetFocus;
            exit;
          end
       else
          begin
            dmGeral.PCP_CD_M_ACR_PDT.Insert;
            dmGeral.PCP_CD_M_ACR_PDT.FieldByName('id_tdf').AsString      := id_tdf;
            dmGeral.PCP_CD_M_ACR_PDT.FieldByName('int_desctdf').AsString := descricao;
          end;
     end;
  dmGeral.PCP_CD_M_ACR_PDT.Post;
  SalvarDadosItens;
  pnlTipoDefeito.Enabled := False;
  btnAddTipoDefeito.SetFocus;
end;

procedure TPCP_FM_M_ACR.txtResponsavelAcoesButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
   PSQ_FM_X_FUN.ShowModal;
      if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
         begin
           dmGeral.PCP_CD_M_ACR_PRC.FieldByName('id_resp_reg_acao').AsInteger :=
             PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;

           dmGeral.PCP_CD_M_ACR_PRC.FieldByName('INT_NOME_FUN').AsString :=
             PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_FUN.Free;
end;

procedure TPCP_FM_M_ACR.txtResponsavelAcoesExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.PCP_CD_M_ACR_PRC.FieldByName('INT_NOME_FUN').Text := '';

  if dmGeral.PCP_CD_M_ACR_PRC.FieldByName('id_resp_reg_acao').Text = '' then
     begin
       ShowMessage('O campo "Responsável pela Regra" deve ser prenchido.');
       txtResponsavelAcoes.SetFocus;
       Abort;
     end;

  dmGeral.BusFuncionario4(0,dmGeral.PCP_CD_M_ACR_PRC.FieldByName('id_resp_reg_acao').Text);
   if dmGeral.BUS_CD_C_FU4.IsEmpty then
     begin
       ShowMessage('Responsável não encontrado.');
       dmGeral.PCP_CD_M_ACR_PRC.FieldByName('id_resp_reg_acao').Text := '';
       dmGeral.PCP_CD_M_ACR_PRC.FieldByName('INT_NOME_FUN').text  := '';
       txtResponsavelAcoes.SetFocus;
       Exit;
     end
   else
     begin
       dmGeral.PCP_CD_M_ACR_PRC.FieldByName('INT_NOME_FUN').AsString :=
               dmGeral.BUS_CD_C_FU4.FieldByName('NOME').AsString;
     end;
end;

procedure TPCP_FM_M_ACR.txtResponsavelMonitoramentoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
   PSQ_FM_X_FUN.ShowModal;
      if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
         begin
           dmGeral.PCP_CD_M_ACR_ITE.Edit;
           dmGeral.PCP_CD_M_ACR_ITE.FieldByName('ID_RESP_MONITOR').AsInteger :=
             PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;

           dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_nomeres').AsString :=
             PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_FUN.Free;
end;

procedure TPCP_FM_M_ACR.txtResponsavelMonitoramentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_ACR_ITE.Edit;
end;

procedure TPCP_FM_M_ACR.txtResponsavelMonitoramentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_nomeres').Text := '';

  if dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_resp_monitor').AsInteger > 0 then
     begin
        dmGeral.BusFuncionario3(0,dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_resp_monitor').Text);
         if dmGeral.BUS_CD_C_FU3.IsEmpty then
           begin
             ShowMessage('Responsável não encontrado.');
             dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_resp_monitor').Text := '';
             dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_nomeres').text  := '';
             txtResponsavelMonitoramento.SetFocus;
             Exit;
           end
         else
           begin
             dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_nomeres').AsString :=
                     dmGeral.BUS_CD_C_FU3.FieldByName('NOME').AsString;
           end;
     end;

  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.txtAberturaExit(Sender: TObject);
begin
  inherited;
  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.txtCidadeButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
   PSQ_FM_X_CID.ShowModal;
      if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
         begin
           dmGeral.PCP_CD_M_ACR.FieldByName('ID_CIDADE').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString;

           dmGeral.PCP_CD_M_ACR.FieldByName('int_nomecid').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString;

           dmGeral.PCP_CD_M_ACR.FieldByName('int_uf').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('UF').AsString;
         end;
   PSQ_FM_X_CID.Free;
end;

procedure TPCP_FM_M_ACR.txtCidadeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.PCP_CD_M_ACR.FieldByName('INT_NOMECID').Text := '';

  dmGeral.BusCidades(0,dmGeral.PCP_CD_M_ACR.FieldByName('ID_CIDADE').Text);
   if dmGeral.BUS_CD_C_CID.IsEmpty then
     begin
       ShowMessage('Cidade não encontrada.');
       dmGeral.PCP_CD_M_ACR.FieldByName('ID_CIDADE').Text := '';
       dmGeral.PCP_CD_M_ACR.FieldByName('INT_NOMECID').Text := '';
       txtCidade.SetFocus;
       Exit;
     end;

  dmGeral.PCP_CD_M_ACR.FieldByName('int_nomecid').AsString :=
          dmGeral.BUS_CD_C_CID.FieldByName('NOME').AsString;

  dmGeral.PCP_CD_M_ACR.FieldByName('int_uf').AsString :=
          dmGeral.BUS_CD_C_CID.FieldByName('UF').AsString;
end;

procedure TPCP_FM_M_ACR.txtCodigoButtonClick(Sender: TObject);
begin
  inherited;
  if (cbbIdentificacaoCliente.ItemIndex = 0) then
     begin
       PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
       PSQ_FM_X_CLI.ShowModal;
          if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
             begin
               dmGeral.PCP_CD_M_ACR.FieldByName('id_busca_clirep').AsInteger :=
                    PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;

               dmGeral.PCP_CD_M_ACR.FieldByName('pessoa').AsInteger :=
                    PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('pessoa').AsInteger;
             end;
       PSQ_FM_X_CLI.Free;
     end
  else if (cbbIdentificacaoCliente.ItemIndex = 1) then
     begin
       //--
     end
  else if (cbbIdentificacaoCliente.ItemIndex = 2) then
     begin
       PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
       PSQ_FM_X_FUN.ShowModal;
          if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
             begin
               dmGeral.PCP_CD_M_ACR.FieldByName('id_busca_clirep').AsInteger :=
                    PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;

               dmGeral.PCP_CD_M_ACR.FieldByName('pessoa').AsInteger := 0;
             end;
       PSQ_FM_X_FUN.Free;
     end;
end;

procedure TPCP_FM_M_ACR.txtCodigoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if cbbIdentificacaoCliente.Focused then
     begin
       exit;
     end;

  if (cbbIdentificacaoCliente.ItemIndex = 0) then
     begin
        dmGeral.BusCliente(0,dmGeral.PCP_CD_M_ACR.FieldByName('id_busca_clirep').Text);
         if dmGeral.BUS_CD_C_CLI.IsEmpty then
           begin
             ShowMessage('Cliente não encontrado.');
             dmGeral.PCP_CD_M_ACR.FieldByName('id_busca_clirep').Text := '';
             txtCodigo.SetFocus;
             Exit;
           end
         else
           begin
               dmGeral.PCP_CD_M_ACR.FieldByName('nome_consumidor').AsString :=
                    dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
               dmGeral.PCP_CD_M_ACR.FieldByName('pessoa').AsInteger :=
                    dmGeral.BUS_CD_C_CLI.FieldByName('pessoa').AsInteger;

               dmGeral.PCP_CD_M_ACR.FieldByName('endereco_consumidor').AsString :=
                    dmGeral.BUS_CD_C_CLI.FieldByName('endereco').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('cnpj_cpf_consumidor').AsString :=
                    dmGeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('nro_end_consumidor').AsString :=
                    dmGeral.BUS_CD_C_CLI.FieldByName('numero').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('bairro_consumidor').AsString :=
                    dmGeral.BUS_CD_C_CLI.FieldByName('bairro').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('id_cidade').AsString :=
                    dmGeral.BUS_CD_C_CLI.FieldByName('id_cidade').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('int_nomecid').AsString :=
                    dmGeral.BUS_CD_C_CLI.FieldByName('int_nomecid').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('int_uf').AsString :=
                    dmGeral.BUS_CD_C_CLI.FieldByName('int_uf').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('cep_consumidor').AsString :=
                    dmGeral.BUS_CD_C_CLI.FieldByName('cep').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('fone_consumidor').AsString :=
                    dmGeral.BUS_CD_C_CLI.FieldByName('tel_fixo').AsString;
           end;
     end
  else if (cbbIdentificacaoCliente.ItemIndex = 1) then
     begin
       //--
     end
  else if (cbbIdentificacaoCliente.ItemIndex = 2) then
     begin
        dmGeral.BusFuncionario(0,dmGeral.PCP_CD_M_ACR.FieldByName('id_busca_clirep').Text);
         if dmGeral.BUS_CD_C_FUN.IsEmpty then
           begin
             ShowMessage('Representante não encontrado.');
             dmGeral.PCP_CD_M_ACR.FieldByName('id_busca_clirep').Text := '';
             txtCodigo.SetFocus;
             Exit;
           end
         else
           begin
               dmGeral.PCP_CD_M_ACR.FieldByName('nome_consumidor').AsString :=
                    dmGeral.BUS_CD_C_FUN.FieldByName('nome').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('endereco_consumidor').AsString :=
                    dmGeral.BUS_CD_C_FUN.FieldByName('endereco').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('cnpj_cpf_consumidor').AsString :=
                    dmGeral.BUS_CD_C_FUN.FieldByName('doc_cpf').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('nro_end_consumidor').AsString :=
                    dmGeral.BUS_CD_C_FUN.FieldByName('numero').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('bairro_consumidor').AsString :=
                    dmGeral.BUS_CD_C_FUN.FieldByName('bairro').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('id_cidade').AsString :=
                    dmGeral.BUS_CD_C_FUN.FieldByName('id_cidade').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('int_nomecid').AsString :=
                    dmGeral.BUS_CD_C_FUN.FieldByName('int_nomecid').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('int_uf').AsString :=
                    dmGeral.BUS_CD_C_FUN.FieldByName('estado').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('cep_consumidor').AsString :=
                    dmGeral.BUS_CD_C_FUN.FieldByName('cep').AsString;

               dmGeral.PCP_CD_M_ACR.FieldByName('fone_consumidor').AsString :=
                    dmGeral.BUS_CD_C_FUN.FieldByName('tel_fixo').AsString;
           end;
     end;
end;

procedure TPCP_FM_M_ACR.txtComentariosEnter(Sender: TObject);
begin
  inherited;
   dmGeral.PCP_CD_M_ACR_ITE.Edit;
   PCP_FM_M_ACR.KeyPreview := false;
end;

procedure TPCP_FM_M_ACR.txtComentariosExit(Sender: TObject);
begin
  inherited;
  PCP_FM_M_ACR.KeyPreview := true;
  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.txtDefeitoConstatadoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_ACR_ITE.Edit;
end;

procedure TPCP_FM_M_ACR.txtDefeitoConstatadoExit(Sender: TObject);
begin
  inherited;
  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.txtDefeitoConstatadoJustificativaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_ACR_ITE.Edit;
end;

procedure TPCP_FM_M_ACR.txtDefeitoConstatadoJustificativaExit(Sender: TObject);
begin
  inherited;
  if rgProcede.Value = 'False' then
     if txtDefeitoConstatadoJustificativa.Text = '' then
        begin
          ShowMessage('Se o defeito não procede, então a justificativa é obrigatória.');
          txtDefeitoConstatadoJustificativa.SetFocus;
          Exit;
        end;

  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.txtDefeitoProdutoExit(Sender: TObject);
begin
  inherited;
    PCP_FM_M_ACR.KeyPreview := true;
  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.txtDisposicaoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_DIS := TPSQ_FM_X_DIS.Create(Self);
   PSQ_FM_X_DIS.ShowModal;
      if not PSQ_FM_X_DIS.BUS_CD_C_DIS.IsEmpty then
         begin
           dmGeral.PCP_CD_M_ACR_ITE.Edit;
           dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_dis').AsString :=
                PSQ_FM_X_DIS.BUS_CD_C_DIS.FieldByName('id_dis').AsString;

           dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_descdis').AsString :=
                PSQ_FM_X_DIS.BUS_CD_C_DIS.FieldByName('descricao').AsString;
         end;
   PSQ_FM_X_CID.Free;
end;

procedure TPCP_FM_M_ACR.txtDisposicaoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_ACR_ITE.Edit;
end;

procedure TPCP_FM_M_ACR.txtDisposicaoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_descdis').Text := '';

  dmSgq.BusDisposicao(0,dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_dis').Text);
  if dmSgq.BUS_CD_C_DIS.IsEmpty then
    begin
      ShowMessage('Disposicao não encontrada.');
      dmGeral.PCP_CD_M_ACR_ITE.FieldByName('id_dis').Text := '';
      dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_descdis').Text := '';
      txtDisposicao.SetFocus;
      Exit;
    end
  else
    begin
      dmGeral.PCP_CD_M_ACR_ITE.FieldByName('int_descdis').AsString :=
        dmSgq.BUS_CD_C_DIS.FieldByName('descricao').AsString;
    end;

  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.txtEncerramentoExit(Sender: TObject);
begin
  inherited;


  SalvarDadosItens;
end;

procedure TPCP_FM_M_ACR.txtEventoOcorridoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if txtResponsavelAcoes.Focused or dpkDataAcao.Focused or rgSituacao.Focused then
     begin
       Exit;
     end;

  dmGeral.PCP_CD_M_ACR_PRC.Post;

  SalvarDadosItens;

  pnlRegras.Enabled := False;
  btnAddRegras.SetFocus;
end;
end.
