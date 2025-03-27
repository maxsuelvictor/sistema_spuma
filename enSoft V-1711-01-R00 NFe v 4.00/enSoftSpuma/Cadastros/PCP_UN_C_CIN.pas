unit PCP_UN_C_CIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, vcl.wwdblook, Vcl.Mask, JvDBControls, vcl.wwcheckbox,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_C_CIN = class(TPAD_FM_X_PAD)
    lblControle: TLabel;
    lblInstrumento: TLabel;
    lblDenominacao: TLabel;
    lblSigla: TLabel;
    lblModelo: TLabel;
    lblMarca: TLabel;
    lblSerie: TLabel;
    lblResolucao: TLabel;
    lblEscala: TLabel;
    lblLocalizacaoInstrumento: TLabel;
    lblRequerCalibracao: TLabel;
    lblSituacaoInstrumento: TLabel;
    lblVerificacaoCertificado: TLabel;
    lblVerificacaoTrena: TLabel;
    lblItensVerificacao: TLabel;
    lblResultadoVerificacao: TLabel;
    lblDesposicao: TLabel;
    lblCalibracaoEfetiva: TLabel;
    lblHistoricoInstrumento: TLabel;
    lblErroMaximo: TLabel;
    lblCertificado: TLabel;
    lblFornecedor: TLabel;
    Label1: TLabel;
    lblData: TLabel;
    lblFrequencia2: TLabel;
    lblProximaCalibracao: TLabel;
    lblNumeroNFCompra: TLabel;
    lblComentariosGerais: TLabel;
    lblEncosto: TLabel;
    Label2: TLabel;
    lblInspecionadoPor: TLabel;
    lblAcaoTomada: TLabel;
    lblSituacao: TLabel;
    lblFuncionamento: TLabel;
    lblEscala2: TLabel;
    lblAspecto: TLabel;
    lblComparacao: TLabel;
    lblResultado: TLabel;
    txtControle: TDBEdit;
    txtDenominacao: TDBEdit;
    txtSigla: TDBEdit;
    txtModelo: TDBEdit;
    txtMarca: TDBEdit;
    txtSerie: TDBEdit;
    txtResolucao: TDBEdit;
    txtEscala: TDBEdit;
    cbbRequerCalibracao: TwwDBLookupCombo;
    cbbSituacaoInstrumento: TwwDBLookupCombo;
    txtErroMaximo: TDBEdit;
    txtCertificado: TDBEdit;
    cbbFornecedor: TwwDBLookupCombo;
    cbbInspecionadoPor: TwwDBLookupCombo;
    txtNFCompra: TDBEdit;
    txtComentariosGerais: TDBEdit;
    cbbInspecionadoPorResultado: TwwDBLookupCombo;
    txtAcaoTomada: TDBEdit;
    PCP_DS_C_CIN_LNS: TwwDataSource;
    PCP_DS_C_INS: TwwDataSource;
    dpkVerificacaoCertificado: TJvDBDateEdit;
    dpkDataResultadoVerificacao: TJvDBDateEdit;
    txtInstrumento: TJvDBComboEdit;
    dpkProxCalibracao: TJvDBDateEdit;
    cbbFrequencia: TwwDBLookupCombo;
    chkEncosto: TwwCheckBox;
    chkFuncionamento: TwwCheckBox;
    chkEscala: TwwCheckBox;
    chkAspecto: TwwCheckBox;
    chkComparacao: TwwCheckBox;
    chkResultado: TwwCheckBox;
    chkSituacao: TwwCheckBox;
    txtNSequencia: TDBEdit;
    lblSequencia: TLabel;
    gbLocalizacao: TGroupBox;
    dgContatos: TwwDBGrid;
    dgContatosIButton: TwwIButton;
    pnlLocalizacao: TPanel;
    Label9: TLabel;
    lblTolerancia: TLabel;
    lblFrequencia: TLabel;
    lblResponsavel: TLabel;
    lblDtaCadastro: TLabel;
    dpkDtaCadastroLocalizacao: TJvDBDateEdit;
    cbbResponsavel: TwwDBLookupCombo;
    txtFrequencia: TDBEdit;
    txtTolerancia: TDBEdit;
    cbbSetor: TwwDBLookupCombo;
    btnAddLocalizacao: TBitBtn;
    procedure txtInstrumentoButtonClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAddLocalizacaoClick(Sender: TObject);
    procedure dpkDtaCadastroLocalizacaoExit(Sender: TObject);
    procedure dgContatosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbSituacaoInstrumentoEnter(Sender: TObject);
    procedure dgContatosIButtonClick(Sender: TObject);
    procedure cbbResponsavelEnter(Sender: TObject);
    procedure cbbSetorEnter(Sender: TObject);
    procedure cbbRequerCalibracaoEnter(Sender: TObject);
    procedure cbbFornecedorEnter(Sender: TObject);
    procedure cbbInspecionadoPorEnter(Sender: TObject);
    procedure cbbInspecionadoPorResultadoEnter(Sender: TObject);
    procedure cbbFrequenciaEnter(Sender: TObject);
    procedure chkEncostoClick(Sender: TObject);
    procedure chkFuncionamentoClick(Sender: TObject);
    procedure chkEscalaClick(Sender: TObject);
    procedure chkAspectoClick(Sender: TObject);
    procedure chkComparacaoClick(Sender: TObject);
    procedure chkResultadoClick(Sender: TObject);
    procedure txtPesquisaExit(Sender: TObject);
    procedure pnlLocalizacaoExit(Sender: TObject);
    procedure txtNSequenciaExit(Sender: TObject);
    procedure cbbSetorExit(Sender: TObject);
    procedure cbbResponsavelExit(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
  public
    { Public declarations }
  end;

var
  PCP_FM_C_CIN: TPCP_FM_C_CIN;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_INS, uDmSgq;

procedure TPCP_FM_C_CIN.AbrirBuscas;
begin
  dmGeral.BusSetor(1,'%');
  dmGeral.BusFuncionarioAtivo(1,'%');
  dmGeral.BusFuncionarioAtivo2(1,'%');
  dmGeral.BusFuncionarioAtivo3(1,'%');
  dmGeral.BusFornecedor(6,'%');
end;

procedure TPCP_FM_C_CIN.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CIN) then
      begin
        inherited;
        txtInstrumento.SetFocus;
      end;
end;

procedure TPCP_FM_C_CIN.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CIN) then
      begin
        inherited;
        txtInstrumento.SetFocus;
      end;
end;

procedure TPCP_FM_C_CIN.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CIN) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtInstrumento.SetFocus;
     end;
end;

procedure TPCP_FM_C_CIN.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CIN);
end;

procedure TPCP_FM_C_CIN.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     codigo := dmSgq.PCP_CD_C_CIN.FieldByName('ID_CIN').AsString;
     DmGeral.Grava(dmSgq.PCP_CD_C_CIN);
     inherited;
     dmSgq.PCP_CD_C_CIN.Close;
     dmSgq.PCP_CD_C_CIN.Data :=
     dmSgq.PCP_CD_C_CIN.DataRequest(
             VarArrayOf([0, codigo]));
     AbrirBuscas;
    end;
end;

procedure TPCP_FM_C_CIN.btnAddLocalizacaoClick(Sender: TObject);
begin
  inherited;
 { dmSgq.PCP_CD_C_CIN_LNS.Insert;
  cbbSetor.Enabled := true;
  cbbSetor.SetFocus;}

  pnlLocalizacao.Enabled  := true;

  dmSgq.PCP_CD_C_CIN_LNS.Insert;
  cbbSetor.Enabled := true;
  cbbSetor.SetFocus;

end;

procedure TPCP_FM_C_CIN.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_CIN.Close;
    dmSgq.PCP_CD_C_CIN.Data :=
    dmSgq.PCP_CD_C_CIN.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_CIN.cbbFornecedorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFornecedor(6,'%');
  cbbFornecedor.DropDown;
end;

procedure TPCP_FM_C_CIN.cbbFrequenciaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_CI4;
  cbbFrequencia.DropDown;
end;

procedure TPCP_FM_C_CIN.cbbInspecionadoPorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionarioAtivo2(1,'%');
  cbbInspecionadoPor.DropDown;
end;

procedure TPCP_FM_C_CIN.cbbInspecionadoPorResultadoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionarioAtivo3(1,'%');
  cbbInspecionadoPorResultado.DropDown;
end;

procedure TPCP_FM_C_CIN.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPCP_FM_C_CIN.cbbRequerCalibracaoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_CI2;
  cbbRequerCalibracao.DropDown;
end;

procedure TPCP_FM_C_CIN.cbbResponsavelEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionarioAtivo(1,'%');
  cbbResponsavel.DropDown;
end;

procedure TPCP_FM_C_CIN.cbbResponsavelExit(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_CIN_LNS.FieldByName('INT_NOMERES').AsString := dmGeral.BUS_CD_C_FUN.FieldByName('nome').AsString;
end;

procedure TPCP_FM_C_CIN.cbbSetorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusSetor(1,'%');
  cbbSetor.DropDown;
end;

procedure TPCP_FM_C_CIN.cbbSetorExit(Sender: TObject);
begin
  inherited;
   try
     pnlLocalizacao.onExit := nil;

  finally
     pnlLocalizacao.OnExit := pnlLocalizacaoExit;
  end;
end;

procedure TPCP_FM_C_CIN.cbbSituacaoInstrumentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_CI3;
  cbbSituacaoInstrumento.DropDown;
end;

procedure TPCP_FM_C_CIN.chkAspectoClick(Sender: TObject);
begin
  inherited;
  if (chkAspecto.Checked = True) then
     begin
        if (chkEncosto.Checked = False) or (chkFuncionamento.Checked = False) or(chkEscala.Checked = False) or
           (chkAspecto.Checked = False) or (chkComparacao.Checked = False) or (chkResultado.Checked = False) then
           begin
             chkSituacao.Checked := False;
           end
        else
           begin
             chkSituacao.Checked := True;
           end;
     end
  else
     begin
       chkSituacao.Checked := False;
     end;
end;

procedure TPCP_FM_C_CIN.chkComparacaoClick(Sender: TObject);
begin
  inherited;
  if (chkComparacao.Checked = True) then
     begin
        if (chkEncosto.Checked = False) or (chkFuncionamento.Checked = False) or(chkEscala.Checked = False) or
           (chkAspecto.Checked = False) or (chkComparacao.Checked = False) or (chkResultado.Checked = False) then
           begin
             chkSituacao.Checked := False;
           end
        else
           begin
             chkSituacao.Checked := True;
           end;
     end
  else
     begin
       chkSituacao.Checked := False;
     end;
end;

procedure TPCP_FM_C_CIN.chkEncostoClick(Sender: TObject);
begin
  inherited;
  if (chkEncosto.Checked = True) then
     begin
        if (chkEncosto.Checked = False) or (chkFuncionamento.Checked = False) or(chkEscala.Checked = False) or
           (chkAspecto.Checked = False) or (chkComparacao.Checked = False) or (chkResultado.Checked = False) then
           begin
             chkSituacao.Checked := False;
           end
        else
           begin
             chkSituacao.Checked := True;
           end;
     end
  else
     begin
       chkSituacao.Checked := False;
     end;
end;

procedure TPCP_FM_C_CIN.chkEscalaClick(Sender: TObject);
begin
  inherited;
  if (chkEscala.Checked = True) then
     begin
        if (chkEncosto.Checked = False) or (chkFuncionamento.Checked = False) or(chkEscala.Checked = False) or
           (chkAspecto.Checked = False) or (chkComparacao.Checked = False) or (chkResultado.Checked = False) then
           begin
             chkSituacao.Checked := False;
           end
        else
           begin
             chkSituacao.Checked := True;
           end;
     end
  else
     begin
       chkSituacao.Checked := False;
     end;
end;

procedure TPCP_FM_C_CIN.chkFuncionamentoClick(Sender: TObject);
begin
  inherited;
  if (chkFuncionamento.Checked = True) then
     begin
        if (chkEncosto.Checked = False) or (chkFuncionamento.Checked = False) or(chkEscala.Checked = False) or
           (chkAspecto.Checked = False) or (chkComparacao.Checked = False) or (chkResultado.Checked = False) then
           begin
             chkSituacao.Checked := False;
           end
        else
           begin
             chkSituacao.Checked := True;
           end;
     end
  else
     begin
       chkSituacao.Checked := False;
     end;
end;

procedure TPCP_FM_C_CIN.chkResultadoClick(Sender: TObject);
begin
  inherited;
  if (chkResultado.Checked = True) then
     begin
        if (chkEncosto.Checked = False) or (chkFuncionamento.Checked = False) or(chkEscala.Checked = False) or
           (chkAspecto.Checked = False) or (chkComparacao.Checked = False) or (chkResultado.Checked = False) then
           begin
             chkSituacao.Checked := False;
           end
        else
           begin
             chkSituacao.Checked := True;
           end;
     end
  else
     begin
       chkSituacao.Checked := False;
     end;
end;

procedure TPCP_FM_C_CIN.dgContatosIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgContatosIButton.Enabled := False;
     if dmSgq.PCP_CD_C_CIN_LNS.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmSgq.PCP_CD_C_CIN_LNS.Delete;
     dmSgq.PCP_CD_C_CIN_LNS.Edit;
  finally
    dgContatosIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_C_CIN.dgContatosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  if pnlLocalizacao.Enabled = false then
     pnlLocalizacao.Enabled := true;
  dmSgq.PCP_CD_C_CIN_LNS.Cancel;

  if dmSgq.PCP_CD_C_CIN_LNS.IsEmpty then
     begin
       cbbSetor.Enabled := True;
       dmSgq.PCP_CD_C_CIN_LNS.Append;
       cbbSetor.SetFocus;
     end
  else
    begin
     cbbSetor.Enabled := True;
     dmSgq.PCP_CD_C_CIN_LNS.Edit;
     cbbSetor.SetFocus;
    end;
end;

procedure TPCP_FM_C_CIN.dpkDtaCadastroLocalizacaoExit(Sender: TObject);
var
  localizacao: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if cbbSetor.Focused or txtTolerancia.Focused or
     txtFrequencia.Focused  or cbbResponsavel.Focused then
     begin
       abort;
     end;

  localizacao := dmSgq.PCP_CD_C_CIN_LNS.FieldByName('ID_CIN_LNS').AsString;
  pnlLocalizacao.OnExit := nil;
  dmSgq.PCP_CD_C_CIN_LNS.Post;
  pnlLocalizacao.OnExit := pnlLocalizacaoExit;

  pnlLocalizacao.Enabled := false;
  BtnAddLocalizacao.SetFocus;

  dmSgq.PCP_CD_C_CIN_LNS.locate('ID_CIN_LNS',localizacao,[]);
end;

procedure TPCP_FM_C_CIN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_CIN.Close;
  FreeAndNil(PCP_FM_C_CIN);
end;

procedure TPCP_FM_C_CIN.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_CIN.Close;
  dmSgq.PCP_CD_C_CIN.Data := dmSgq.PCP_CD_C_CIN.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_CIN.Open;

  AbrirBuscas;
end;

procedure TPCP_FM_C_CIN.pnlLocalizacaoExit(Sender: TObject);
begin
  inherited;

  if (btnAddLocalizacao.Focused) or (dgContatos.Focused) or
     (not dgContatosIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try

        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;

        dmSgq.PCP_CD_C_CIN_LNS.Cancel;
         dmSgq.PCP_CD_C_CIN_LNS.edit;
        {if not dmSgq.PCP_CD_C_CIN_LNS.IsEmpty then
           dmSgq.PCP_CD_C_CIN_LNS.edit;}
        finally
           pnlLocalizacao.Enabled := false;
        end;
      end;

end;

procedure TPCP_FM_C_CIN.txtInstrumentoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_INS := TPSQ_FM_X_INS.Create(Self);
   PSQ_FM_X_INS.ShowModal;
      if not PSQ_FM_X_INS.BUS_CD_C_INS.IsEmpty then
         begin
           dmSgq.PCP_CD_C_CIN.FieldByName('ID_INS').AsString := PSQ_FM_X_INS.BUS_CD_C_INS.FieldByName('ID_INS').AsString;
           dmSgq.PCP_CD_C_CIN.FieldByName('INT_MARCA').AsString := PSQ_FM_X_INS.BUS_CD_C_INS.FieldByName('INT_NOMEFAB').AsString;
           dmSgq.PCP_CD_C_CIN.FieldByName('INT_SERIE').AsString := PSQ_FM_X_INS.BUS_CD_C_INS.FieldByName('NRO_SERIE').AsString;
           dmSgq.PCP_CD_C_CIN.FieldByName('INT_RESOLUCAO').AsString := PSQ_FM_X_INS.BUS_CD_C_INS.FieldByName('RESOLUCAO_MENOR_DIVISAO').AsString;
           dmSgq.PCP_CD_C_CIN.FieldByName('INT_SIGLA').AsString := PSQ_FM_X_INS.BUS_CD_C_INS.FieldByName('SIGLA').AsString;
           dmSgq.PCP_CD_C_CIN.FieldByName('INT_DENOMINACAO').AsString := PSQ_FM_X_INS.BUS_CD_C_INS.FieldByName('INT_NOMETIN').AsString;
           dmSgq.PCP_CD_C_CIN.FieldByName('INT_MODELO').AsString := PSQ_FM_X_INS.BUS_CD_C_INS.FieldByName('INT_NOMEMDE').AsString;
           dmSgq.PCP_CD_C_CIN.FieldByName('INT_SCALA').AsString := PSQ_FM_X_INS.BUS_CD_C_INS.FieldByName('SCALA').AsString;

         end;
   PSQ_FM_X_INS.Free;
end;

procedure TPCP_FM_C_CIN.txtNSequenciaExit(Sender: TObject);
begin
  inherited;
  btnAddLocalizacao.SetFocus;
end;

procedure TPCP_FM_C_CIN.txtPesquisaExit(Sender: TObject);
begin
  inherited;
  btnFiltroClick(Self);
end;

end.
