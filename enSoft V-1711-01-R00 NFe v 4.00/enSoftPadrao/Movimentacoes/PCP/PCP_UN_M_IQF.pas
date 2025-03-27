unit PCP_UN_M_IQF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvDBControls,
  Vcl.DBCtrls, JvExMask, JvToolEdit, Vcl.Mask, Vcl.ComCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel;

type

  Tmythread = class (TThread)

  private
     count: integer;
     procedure AtualizaVCL;
  protected
     procedure Execute(); Override;

  end;

  TPCP_FM_M_IQF = class(TPAD_FM_X_PAD)
    lblRev: TLabel;
    txtRev: TDBEdit;
    lblAno: TLabel;
    lblFornecedor: TLabel;
    txtFornecedorDescricao: TDBText;
    txtFornecedor: TJvDBComboEdit;
    lblObservacao: TLabel;
    pcFilhos: TPageControl;
    tbiIndices: TTabSheet;
    tbiRequalificacao: TTabSheet;
    tbiObservacoes: TTabSheet;
    txtObservacao: TDBMemo;
    gb1Semestre: TGroupBox;
    lblData: TLabel;
    dpkData: TJvDBDateEdit;
    lblNEntregas: TLabel;
    txtNEntregas: TDBEdit;
    txtQtdeNfDemeritos: TDBEdit;
    lblQtdeNfDemeritos: TLabel;
    lblQtdePlanoAcao: TLabel;
    txtQtdePlanoAcao: TDBEdit;
    txtIqf: TDBEdit;
    lblIqf: TLabel;
    rgStatus1Semestre: TDBRadioGroup;
    gbSegunoSemestre: TGroupBox;
    lblData2Semestre: TLabel;
    lblNEntregas2Semestre: TLabel;
    lblQtde2Semestre: TLabel;
    lblQtdePlanoAcao2Semestre: TLabel;
    lblIqf2Semestre: TLabel;
    dpkData2Semestre: TJvDBDateEdit;
    txtNEntregas2Semestre: TDBEdit;
    txtQtde2Semestre: TDBEdit;
    txtQtdePlanoAcao2Semestre: TDBEdit;
    txtIqf2Semestre: TDBEdit;
    rgStatus2Semestre: TDBRadioGroup;
    lblPerPrimeiro: TLabel;
    lblPerSegundo: TLabel;
    txtFiltroAno: TEdit;
    Label6: TLabel;
    lblDataPrevista: TLabel;
    dpkDataPrevista: TJvDBDateEdit;
    dpkDataRealizada: TJvDBDateEdit;
    lblDataRealizada: TLabel;
    gb1Metodo: TGroupBox;
    gb2Metodo: TGroupBox;
    lblMediaIqfAnual: TLabel;
    txtMediaIqfAnual: TDBEdit;
    rgStatus: TDBRadioGroup;
    lblEspecificar: TLabel;
    txtStatus: TDBEdit;
    lblStatus: TLabel;
    txtEspecificar: TDBMemo;
    lblObs: TLabel;
    txtObs: TDBMemo;
    txtAno: TDBEdit;
    pnAtualizacao: TPanel;
    lblTotFornecedores: TLabel;
    pbarAtualizacao: TProgressBar;
    txtObservacoes: TMemo;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtFornecedorButtonClick(Sender: TObject);
    procedure txtFornecedorExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsoStateChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarDados(ano: integer);
    procedure AcoesIniciais;
    procedure VisualPnlAtual(Const exibir: Boolean);
  public
    { Public declarations }
  end;

var
  PCP_FM_M_IQF: TPCP_FM_M_IQF;
  xAtualIQF: Boolean;


implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FOR, PSQ_UN_X_FUN, PCP_RN_M_IQF;

procedure TPCP_FM_M_IQF.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_IQF);
  txtAno.SetFocus;
end;

procedure TPCP_FM_M_IQF.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_IQF) then
      begin
        inherited;
        txtObservacao.SetFocus;
        pcFilhos.ActivePageIndex := 0;
      end;
end;

procedure TPCP_FM_M_IQF.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_IQF) then
     begin
       inherited;
       dbGrid.SetFocus;
       pcFilhos.ActivePageIndex := 0;
     end
  else
     begin
       txtObservacao.SetFocus;
     end;
end;

procedure TPCP_FM_M_IQF.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_IQF);
end;

procedure TPCP_FM_M_IQF.acGravarExecute(Sender: TObject);
var
  codFornecedor, anoIqf: string;
begin
  anoIqf        := dmGeral.PCP_CD_M_IQF.FieldByName('ANO_IQF').AsString;
  codFornecedor := dmGeral.PCP_CD_M_IQF.FieldByName('ID_FORNECEDOR').AsString;

  DmGeral.Grava(dmGeral.PCP_CD_M_IQF);
  inherited;
  dmGeral.PCP_CD_M_IQF.Close;
  dmGeral.PCP_CD_M_IQF.Data :=
  dmGeral.PCP_CD_M_IQF.DataRequest(
          VarArrayOf([0, anoIqf, codFornecedor]));
  pcFilhos.ActivePageIndex := 0;
end;

procedure TPCP_FM_M_IQF.AcoesIniciais;
begin
  txtFiltroAno.Text := dmGeral.CAD_CD_C_PAR_CTRano_corrente.Text;

end;

procedure TPCP_FM_M_IQF.AtualizarDados(ano: integer);
begin
  try
   VisualPnlAtual(true);
     PCP_RN_M_IQF.PcpAtualizarIQF(lblTotFornecedores,pbarAtualizacao,PCP_FM_M_IQF,ano);
  finally
    VisualPnlAtual(false);
  end;
end;

procedure TPCP_FM_M_IQF.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.PCP_CD_M_IQF.Close;
    dmGeral.PCP_CD_M_IQF.Data :=
    dmGeral.PCP_CD_M_IQF.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtFiltroAno.Text, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_IQF.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_M_IQF.dsoStateChange(Sender: TObject);
begin
  inherited;
  btnIncluir.Enabled := false;
end;

procedure TPCP_FM_M_IQF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_IQF.Close;
  FreeAndNil(PCP_FM_M_IQF);
end;

procedure TPCP_FM_M_IQF.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_IQF.Close;
  dmGeral.PCP_CD_M_IQF.Data := dmGeral.PCP_CD_M_IQF.DataRequest(VarArrayOf([0, '', '']));
  dmGeral.PCP_CD_M_IQF.Open;
end;

procedure TPCP_FM_M_IQF.FormShow(Sender: TObject);
begin
  inherited;

  AcoesIniciais;

  xAtualIQF := true;
  Tmythread.Create(false);

  txtPesquisa.SetFocus;

end;

procedure TPCP_FM_M_IQF.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  if trim(txtFiltroAno.Text) = '' then
     begin
       ShowMessage('O ano deve ser preenchido para a atualização do dados do IQF.');
       exit;
     end;

  AtualizarDados(StrToInt(txtFiltroAno.Text));

end;

procedure TPCP_FM_M_IQF.txtFornecedorButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
   PSQ_FM_X_FOR.ShowModal;
      if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
         begin
           dmGeral.PCP_CD_M_IQF.FieldByName('INT_NOMEFOR').AsString :=
                PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;

           dmGeral.PCP_CD_M_IQF.FieldByName('ID_FORNECEDOR').AsString :=
                PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString;
         end;
   PSQ_FM_X_FOR.Free;
end;

procedure TPCP_FM_M_IQF.txtFornecedorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
      btnGrava.Focused  then
      begin
        exit;
      end;

   dmGeral.BUS_CD_C_FOR.Close;

   dmGeral.PCP_CD_M_IQF.FieldByName('INT_NOMEFOR').Text := '';

   dmGeral.BUS_CD_C_FOR.Close;
   dmGeral.BUS_CD_C_FOR.Data :=
   dmGeral.BUS_CD_C_FOR.DataRequest(VarArrayOf([0, txtFornecedor.Text]));

   dmGeral.PCP_CD_M_IQF.FieldByName('INT_NOMEFOR').Text :=
        dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
end;

procedure TPCP_FM_M_IQF.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_M_IQF.VisualPnlAtual(const exibir: Boolean);
begin
  if exibir then
     begin
       pnAtualizacao.Visible := exibir;
       //pnAtualizacao.Align := alClient;
     end
  else
     begin
       pnAtualizacao.Visible := exibir;
     end;
end;

{ Tmythread }

procedure Tmythread.AtualizaVCL;
begin
  PCP_FM_M_IQF.AtualizarDados(dmGeral.CAD_CD_C_PAR_CTRano_corrente.AsInteger);
end;

procedure Tmythread.Execute;
begin
  inherited;
  if xAtualIQF then
     begin
       sleep(500);
       xAtualIQF := false;
       synchronize(AtualizaVCL);
     end;
end;

end.
