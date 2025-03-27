unit PCP_UN_C_LME;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, vcl.wwdblook, JvExMask,
  JvToolEdit, JvDBControls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.ComCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  Datasnap.DBClient;

type
  TPCP_FM_C_LME = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    lblData: TLabel;
    dpkData: TJvDBDateEdit;
    lblResponsavel: TLabel;
    cbbResponsavel: TwwDBLookupCombo;
    lblObservacoes: TLabel;
    txtObservacoes: TDBEdit;
    dsoDoc: TwwDataSource;
    dsoDpg: TwwDataSource;
    dsoDrp: TwwDataSource;
    dsoDrv: TwwDataSource;
    gbOrigem: TGroupBox;
    btnAddOrigem: TBitBtn;
    dgOrigem: TwwDBGrid;
    dgOrigemIButton: TwwIButton;
    pnlOrigem: TPanel;
    lblObservacao: TLabel;
    txtObservacao: TDBEdit;
    lblTituloDocumento: TLabel;
    txtTituloDocumento: TDBEdit;
    lblOrigem: TLabel;
    cbbOrigem: TwwDBLookupCombo;
    lblTipoDocumento: TLabel;
    cbbTipoDocumento: TwwDBLookupCombo;
    lblCodigoDocumento: TLabel;
    txtCodigoDocumento: TDBEdit;
    lblRevisao: TLabel;
    txtRevisao: TDBEdit;
    lblAprovacao: TLabel;
    lblSetor: TLabel;
    cbbSetor: TwwDBLookupCombo;
    lblTipo: TLabel;
    cbbTipo: TwwDBLookupCombo;
    pcDocumentos: TPageControl;
    tbiReprovacao: TTabSheet;
    tbiAlteracao: TTabSheet;
    tbiProgramas: TTabSheet;
    btnAddReprovacao: TBitBtn;
    dgReprovacao: TwwDBGrid;
    dgReprovacaoIButton: TwwIButton;
    pnlReprovacao: TPanel;
    lblDataReprovacao: TLabel;
    dpkDataReprovacao: TJvDBDateEdit;
    lblSituacaoReprovacao: TLabel;
    txtSituacaoReprovacao: TDBEdit;
    btnAddAlteracao: TBitBtn;
    dgAlteracao: TwwDBGrid;
    dgAlteracaoIButton: TwwIButton;
    pnlAlteracao: TPanel;
    lblDataAlteracao: TLabel;
    lblResumo: TLabel;
    dpkDataAlteracao: TJvDBDateEdit;
    txtResumo: TDBEdit;
    lblRevisaoAlteracao: TLabel;
    txtRevisaoAlteracao: TDBEdit;
    btnAddPrograma: TBitBtn;
    dgPrograma: TwwDBGrid;
    dgProgramaIButton: TwwIButton;
    pnlPrograma: TPanel;
    lblDataPrograma: TLabel;
    dpkDataPrograma: TJvDBDateEdit;
    lblPrograma: TLabel;
    txtPrograma: TJvDBComboEdit;
    txtProgramaDescricao: TDBText;
    deDtaAprovacao: TJvDBDateEdit;
    gbFiltro: TGroupBox;
    cbbProcurar: TComboBox;
    txtProcurar: TEdit;
    cxButton1: TcxButton;
    btnTodosDoc: TBitBtn;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbOrigemEnter(Sender: TObject);
    procedure cbbTipoDocumentoEnter(Sender: TObject);
    procedure cbbSetorEnter(Sender: TObject);
    procedure cbbResponsavelEnter(Sender: TObject);
    procedure cbbResponsavelExit(Sender: TObject);
    procedure btnAddOrigemClick(Sender: TObject);
    procedure pnlOrigemExit(Sender: TObject);
    procedure txtObservacaoExit(Sender: TObject);
    procedure dgOrigemMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbTipoEnter(Sender: TObject);
    procedure cbbSetorExit(Sender: TObject);
    procedure btnAddReprovacaoClick(Sender: TObject);
    procedure pnlReprovacaoExit(Sender: TObject);
    procedure txtSituacaoReprovacaoExit(Sender: TObject);
    procedure dgOrigemIButtonClick(Sender: TObject);
    procedure dgReprovacaoIButtonClick(Sender: TObject);
    procedure dgReprovacaoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnAddAlteracaoClick(Sender: TObject);
    procedure txtResumoExit(Sender: TObject);
    procedure dgAlteracaoIButtonClick(Sender: TObject);
    procedure dgAlteracaoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlAlteracaoExit(Sender: TObject);
    procedure btnAddProgramaClick(Sender: TObject);
    procedure pnlProgramaExit(Sender: TObject);
    procedure dgProgramaIButtonClick(Sender: TObject);
    procedure dgProgramaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtProgramaExit(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtProgramaButtonClick(Sender: TObject);
    procedure dpkDataProgramaExit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnTodosDocClick(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    procedure AbrirBuscas;
  public
    { Public declarations }
  end;

var
  PCP_FM_C_LME: TPCP_FM_C_LME;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_PRG, uDmSgq;

procedure TPCP_FM_C_LME.AbrirBuscas;
begin
  dmSgq.BusOrigem(1,'%');
  dmGeral.BusSetor(1,'%');
  dmSgq.BusTipoLisMestre(1,'%');
  dmGeral.BusFuncionario(1,'%');
  dmGeral.BUS_PR_X_LME_001;
  dmSgq.BusTipoLisMestre(1,'%');
end;

procedure TPCP_FM_C_LME.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_LME);

  pnlOrigem.Enabled     := False;
  pnlReprovacao.Enabled := False;
  pnlPrograma.Enabled   := False;

  dmGeral.BusFuncionario(0,IntToStr(xFuncionario));
  dmSgq.PCP_CD_C_LME.FieldByName('id_responsavel').AsInteger := xFuncionario;
  dmSgq.PCP_CD_C_LME.FieldByName('data').AsDateTime := xDataSis;
  dmGeral.BUS_CD_C_FUN.Close;

  cbbResponsavel.SetFocus;
end;

procedure TPCP_FM_C_LME.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_LME) then
     begin
       inherited;
       pnlOrigem.Enabled     := False;
       pnlReprovacao.Enabled := False;
       pnlPrograma.Enabled   := False;
       txtObservacoes.SetFocus;
     end;
end;

procedure TPCP_FM_C_LME.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_LME) then
     begin
       inherited;
       dbGrid.SetFocus;
       btnExcluir.Enabled := False;
       dmSgq.PCP_CD_C_LME_DOC.Filtered := false;
       AbrirBuscas;
     end
  else
     begin
       txtObservacoes.SetFocus;
     end;
end;

procedure TPCP_FM_C_LME.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_LME);
end;

procedure TPCP_FM_C_LME.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmSgq.PCP_CD_C_LME.FieldByName('ID_LME').AsString;
  DmGeral.Grava(dmSgq.PCP_CD_C_LME);
  inherited;
  dmSgq.PCP_CD_C_LME.Close;
  dmSgq.PCP_CD_C_LME.Data :=
  dmSgq.PCP_CD_C_LME.DataRequest(
          VarArrayOf([0, codigo]));

  btnExcluir.Enabled := False;
  dmSgq.PCP_CD_C_LME_DOC.Filtered := false;
  AbrirBuscas;
end;

procedure TPCP_FM_C_LME.btnAddAlteracaoClick(Sender: TObject);
begin
  inherited;
  pnlAlteracao.Enabled := True;

  dmSgq.PCP_CD_C_LME_DRV.Insert;
  dpkDataAlteracao.SetFocus;
end;

procedure TPCP_FM_C_LME.btnAddOrigemClick(Sender: TObject);
begin
  inherited;
  pnlOrigem.Enabled  := True;

  dmSgq.PCP_CD_C_LME_DOC.Insert;
  cbbOrigem.SetFocus;
end;

procedure TPCP_FM_C_LME.btnAddProgramaClick(Sender: TObject);
begin
  inherited;
  pnlPrograma.Enabled := True;

  dmSgq.PCP_CD_C_LME_DPG.Insert;
  dpkDataPrograma.SetFocus;
end;

procedure TPCP_FM_C_LME.btnAddReprovacaoClick(Sender: TObject);
begin
  inherited;
  pnlReprovacao.Enabled  := True;

  dmSgq.PCP_CD_C_LME_DRP.Insert;
  dpkDataReprovacao.SetFocus;
end;

procedure TPCP_FM_C_LME.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_LME.Close;
    dmSgq.PCP_CD_C_LME.Data :=
    dmSgq.PCP_CD_C_LME.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
     btnExcluir.Enabled := False;
end;

procedure TPCP_FM_C_LME.btnTodosDocClick(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_LME_DOC.Filtered := false;
end;

procedure TPCP_FM_C_LME.cbbOrigemEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BusOrigem(1,'%');
  cbbOrigem.DropDown;
end;

procedure TPCP_FM_C_LME.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_C_LME.cbbResponsavelEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel.DropDown;
end;

procedure TPCP_FM_C_LME.cbbResponsavelExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if dmSgq.PCP_CD_C_LME.FieldByName('ID_RESPONSAVEL').Text = '' then
     begin
       ShowMessage('O campo "Responsável" deve ser prenchido.');
       cbbResponsavel.SetFocus;
       Exit;
     end;

  dmGeral.BusFuncionario(0,dmSgq.PCP_CD_C_LME.FieldByName('ID_RESPONSAVEL').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsável não encontrado.');
       cbbResponsavel.SetFocus;
       Exit;
     end
  else
     begin
       dmSgq.PCP_CD_C_LME.FieldByName('INT_NOMERES').AsString :=
               dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
     end;
end;

procedure TPCP_FM_C_LME.cbbSetorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusSetor(1,'%');
  cbbSetor.DropDown;
end;

procedure TPCP_FM_C_LME.cbbSetorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if dmSgq.PCP_CD_C_LME_DOC.FieldByName('ID_SETOR').Text = '' then
     begin
       ShowMessage('O campo "Setor" deve ser prenchido.');
       cbbSetor.SetFocus;
       Exit;
     end;

  dmGeral.BusSetor(0,dmSgq.PCP_CD_C_LME_DOC.FieldByName('ID_SETOR').Text);
  if dmGeral.BUS_CD_C_SET.IsEmpty then
     begin
       ShowMessage('Setor não encontrado.');
       cbbSetor.SetFocus;
       Exit;
     end
  else
     begin
       {dmSgq.PCP_CD_C_LME.FieldByName('INT_NOMESET').AsString :=
               dmGeral.BUS_CD_C_SET.FieldByName('DESCRICAO').AsString;}
     end;
end;

procedure TPCP_FM_C_LME.cbbTipoDocumentoEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BusTipoLisMestre(1,'%');
  cbbTipoDocumento.DropDown;
end;

procedure TPCP_FM_C_LME.cbbTipoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_LME_001;
  cbbTipo.DropDown;
end;

procedure TPCP_FM_C_LME.cxButton1Click(Sender: TObject);
begin
  inherited;
  if trim(txtProcurar.Text) = '' then
     begin
       ShowMessage('Nenhum texto ');
     end;

  dmSgq.PCP_CD_C_LME_DOC.Filtered := true;
  if cbbProcurar.ItemIndex = 0 then
     dmSgq.PCP_CD_C_LME_DOC.Filter   := ' upper(codigo) LIKE '''+ uppercase(VarToStr(txtProcurar.Text))+'%'+''' ';

  if cbbProcurar.ItemIndex = 1 then
     dmSgq.PCP_CD_C_LME_DOC.Filter   := ' upper(descricao) LIKE '''+ uppercase(VarToStr(txtProcurar.Text))+'%'+''' ';




end;

procedure TPCP_FM_C_LME.dbGridDblClick(Sender: TObject);
begin
  inherited;
  btnTodosDoc.Enabled := true;
end;

procedure TPCP_FM_C_LME.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  btnExcluir.Enabled := False;
end;

procedure TPCP_FM_C_LME.dgAlteracaoIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgAlteracaoIButton.Enabled := False;
     if dmSgq.PCP_CD_C_LME_DRV.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          Abort;
        end;
     dmSgq.PCP_CD_C_LME_DRV.Delete;
     dmSgq.PCP_CD_C_LME_DRV.Edit;
  finally
    dgAlteracaoIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_C_LME.dgAlteracaoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
   if not btnGrava.Enabled then
     exit;

  if pnlAlteracao.Enabled = False then
     pnlAlteracao.Enabled := True;

  dmSgq.PCP_CD_C_LME_DRV.Cancel;

  if dmSgq.PCP_CD_C_LME_DRV.IsEmpty then
     begin
       dmSgq.PCP_CD_C_LME_DRV.Append;
       pnlAlteracao.Enabled := True;
       dpkDataAlteracao.SetFocus;
     end
  else
     begin
       dmSgq.PCP_CD_C_LME_DRV.Edit;
       pnlAlteracao.Enabled := True;
       dpkDataAlteracao.SetFocus;
     end;
end;

procedure TPCP_FM_C_LME.dgOrigemIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgOrigemIButton.Enabled := False;
     if dmSgq.PCP_CD_C_LME_DOC.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          Abort;
        end;
     dmSgq.PCP_CD_C_LME_DOC.Delete;
     dmSgq.PCP_CD_C_LME_DOC.Edit;
  finally
    dgOrigemIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_C_LME.dgOrigemMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  if not btnGrava.Enabled then
     exit;


  if pnlOrigem.Enabled = False then
     pnlOrigem.Enabled := True;

  dmSgq.PCP_CD_C_LME_DOC.Cancel;

  if dmSgq.PCP_CD_C_LME_DOC.IsEmpty then
     begin
       dmSgq.PCP_CD_C_LME_DOC.Append;
       pnlOrigem.Enabled := True;
       cbbOrigem.SetFocus;
     end
  else
     begin
       dmSgq.PCP_CD_C_LME_DOC.Edit;
       pnlOrigem.Enabled := True;
       cbbOrigem.SetFocus;
     end;
end;

procedure TPCP_FM_C_LME.dgProgramaIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgProgramaIButton.Enabled := False;
     if dmSgq.PCP_CD_C_LME_DPG.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          Abort;
        end;
     dmSgq.PCP_CD_C_LME_DPG.Delete;
     dmSgq.PCP_CD_C_LME_DPG.Edit;
  finally
    dgProgramaIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_C_LME.dgProgramaMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
   if not btnGrava.Enabled then
     exit;


  if pnlPrograma.Enabled = False then
     pnlPrograma.Enabled := True;

  dmSgq.PCP_CD_C_LME_DPG.Cancel;

  if dmSgq.PCP_CD_C_LME_DPG.IsEmpty then
     begin
       dmSgq.PCP_CD_C_LME_DPG.Append;
       pnlPrograma.Enabled := True;
       dpkDataPrograma.SetFocus;
     end
  else
     begin
       dmSgq.PCP_CD_C_LME_DPG.Edit;
       pnlPrograma.Enabled := True;
       dpkDataPrograma.SetFocus;
     end;
end;

procedure TPCP_FM_C_LME.dgReprovacaoIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgReprovacaoIButton.Enabled := False;
     if dmSgq.PCP_CD_C_LME_DRP.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          Abort;
        end;
     dmSgq.PCP_CD_C_LME_DRP.Delete;
     dmSgq.PCP_CD_C_LME_DRP.Edit;
  finally
    dgReprovacaoIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_C_LME.dgReprovacaoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

   if not btnGrava.Enabled then
     exit;

  if pnlReprovacao.Enabled = False then
     pnlReprovacao.Enabled := True;

  dmSgq.PCP_CD_C_LME_DRP.Cancel;

  if dmSgq.PCP_CD_C_LME_DRP.IsEmpty then
     begin
       dmSgq.PCP_CD_C_LME_DRP.Append;
       pnlReprovacao.Enabled := True;
       dpkDataReprovacao.SetFocus;
     end
  else
     begin
       dmSgq.PCP_CD_C_LME_DRP.Edit;
       pnlReprovacao.Enabled := True;
       dpkDataReprovacao.SetFocus;
     end;
end;

procedure TPCP_FM_C_LME.dpkDataProgramaExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or btnGrava.Focused  then
      begin
        exit;
      end;
  
  if (trim(dmSgq.PCP_CD_C_LME_DPG.FieldByName('DATA_CADASTRO').text) = '') or
     (dmSgq.PCP_CD_C_LME_DPG.FieldByName('DATA_CADASTRO').IsNull) then
     begin
        ShowMessage('O campo "Data" deve ser preenchido.');
        dpkDataPrograma.text := ' ';
        dpkDataPrograma.SetFocus;
        Abort;
     end;
end;

procedure TPCP_FM_C_LME.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_LME_DOC.Filtered := false;
  dmSgq.PCP_CD_C_LME.Close;
  FreeAndNil(PCP_FM_C_LME);
end;

procedure TPCP_FM_C_LME.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_LME.Close;
  dmSgq.PCP_CD_C_LME.Data :=
  dmSgq.PCP_CD_C_LME.DataRequest(
          VarArrayOf([0, '']));

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('id_lme').AsString <> '' then
     begin
       dmSgq.PCP_CD_C_LME.Close;
       dmSgq.PCP_CD_C_LME.Data :=
       dmSgq.PCP_CD_C_LME.DataRequest(
             VarArrayOf([0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('id_lme').AsString]));
     end;
  AbrirBuscas;
end;

procedure TPCP_FM_C_LME.FormShow(Sender: TObject);
begin
  inherited;
  btnExcluir.Enabled := False;
end;

procedure TPCP_FM_C_LME.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  pnlOrigem.Enabled     := Estado;
  pnlReprovacao.Enabled := Estado;
  pnlPrograma.Enabled   := Estado;
end;

procedure TPCP_FM_C_LME.pnlAlteracaoExit(Sender: TObject);
begin
  inherited;
  if (btnAddAlteracao.Focused) or (dgAlteracao.Focused) or
     (not dgAlteracaoIButton.Enabled) then
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

          dmSgq.PCP_CD_C_LME_DRV.Cancel;
          dmSgq.PCP_CD_C_LME_DRV.Edit;
          finally
             pnlAlteracao.Enabled := False;
          end;
      end;
end;

procedure TPCP_FM_C_LME.pnlOrigemExit(Sender: TObject);
begin
  inherited;
  if (btnAddOrigem.Focused) or (dgOrigem.Focused) or
     (not dgOrigemIButton.Enabled) then
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

          dmSgq.PCP_CD_C_LME_DOC.Cancel;
          dmSgq.PCP_CD_C_LME_DOC.Edit;
          finally
             pnlOrigem.Enabled := False;
          end;
      end;
end;

procedure TPCP_FM_C_LME.pnlProgramaExit(Sender: TObject);
begin
  inherited;
  if (btnAddPrograma.Focused) or (dgPrograma.Focused) or
     (not dgProgramaIButton.Enabled) then
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
          if btnGrava.Focused then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          dmSgq.PCP_CD_C_LME_DPG.Cancel;
          dmSgq.PCP_CD_C_LME_DPG.Edit;
          finally
             pnlPrograma.Enabled := False;
          end;
      end;
end;

procedure TPCP_FM_C_LME.pnlReprovacaoExit(Sender: TObject);
begin
  inherited;
  if (btnAddReprovacao.Focused) or (dgReprovacao.Focused) or
     (not dgReprovacaoIButton.Enabled) then
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
          if btnGrava.Focused then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          dmSgq.PCP_CD_C_LME_DRP.Cancel;
          dmSgq.PCP_CD_C_LME_DRP.Edit;
          finally
             pnlReprovacao.Enabled := False;
          end;
      end;
end;

procedure TPCP_FM_C_LME.txtObservacaoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if btnAddOrigem.Focused or cbbOrigem.Focused or cbbTipoDocumento.Focused or
     txtCodigoDocumento.Focused or txtRevisao.Focused or deDtaAprovacao.Focused or
     txtTituloDocumento.Focused or cbbSetor.Focused or cbbTipo.Focused or txtObservacao.Focused then
     begin
       Exit;
     end;

  dmSgq.PCP_CD_C_LME_DOC.Post;

  pnlOrigem.Enabled := False;
  btnAddOrigem.SetFocus;
end;

procedure TPCP_FM_C_LME.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_C_LME.txtProgramaButtonClick(Sender: TObject);
begin
  inherited;
    PSQ_FM_X_PRG := TPSQ_FM_X_PRG.Create(Self);
    PSQ_FM_X_PRG.ShowModal;
       if not PSQ_FM_X_PRG.BUS_CD_C_PRG.IsEmpty then
         begin
           dmSgq.PCP_CD_C_LME_DPGnome_formulario.Text :=
                PSQ_FM_X_PRG.BUS_CD_C_PRG.FieldByName('nome_programa').AsString;

           dmSgq.PCP_CD_C_LME_DPGint_nomeprg.Text :=
                PSQ_FM_X_PRG.BUS_CD_C_PRG.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_PRG.Free;
end;

procedure TPCP_FM_C_LME.txtProgramaExit(Sender: TObject);
var
nome_programa,data_programa,descricao : string;
  begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if dpkDataPrograma.Focused then
     begin
       Exit;
     end;

  if (dmSgq.PCP_CD_C_LME_DPG.FieldByName('NOME_FORMULARIO').AsString = '')  then
     begin
        ShowMessage('O campo "Programa" deve ser preenchido.');
        txtprograma.SetFocus;
        abort;
     end;   

  dmGeral.BUS_CD_C_PRG.Close;
  dmGeral.BUS_CD_C_PRG.Data :=
  dmGeral.BUS_CD_C_PRG.DataRequest(
     VarArrayOf([3,dmSgq.PCP_CD_C_LME_DPG.FieldByName('nome_formulario').Text,'']));

  if dmGeral.BUS_CD_C_PRG.IsEmpty then
     begin
       ShowMessage('Programa não cadastrado!');
       txtprograma.SetFocus;
       txtprograma.Text := '';
       Abort;
     end; 

  if dmSgq.PCP_CD_C_LME_DPG.State in [dsInsert] then
        begin

          nome_programa := dmSgq.PCP_CD_C_LME_DPGnome_formulario.Text;
          data_programa := dmSgq.PCP_CD_C_LME_DPGdata_cadastro.AsString;
              descricao := dmGeral.BUS_CD_C_PRGdescricao.AsString;;

          dmSgq.PCP_CD_C_LME_DPG.cancel;
          if dmSgq.PCP_CD_C_LME_DPG.Locate('NOME_FORMULARIO',nome_programa,[]) then
              begin
                ShowMessage('Programa já Cadastrado.');
                dmSgq.PCP_CD_C_LME_DPG.Insert;
                dmSgq.PCP_CD_C_LME_DPG.FieldByName('DATA_CADASTRO').AsString  := data_programa;
                txtPrograma.SetFocus;
                abort;
              end
           else
              begin
                dmSgq.PCP_CD_C_LME_DPG.Insert;
                dmSgq.PCP_CD_C_LME_DPG.FieldByName('DATA_CADASTRO').AsString  := data_programa;
                dmSgq.PCP_CD_C_LME_DPG.FieldByName('NOME_FORMULARIO').AsString  := nome_programa;
                dmSgq.PCP_CD_C_LME_DPGint_nomeprg.Text := descricao;
                dmSgq.PCP_CD_C_LME_DPG.Post;
                pnlPrograma.Enabled := False;
                btnAddPrograma.SetFocus;
              end;
        end;
end;

procedure TPCP_FM_C_LME.txtResumoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if btnAddAlteracao.Focused or dpkDataAlteracao.Focused or txtRevisaoAlteracao.Focused then
     begin
       Exit;
     end;

  dmSgq.PCP_CD_C_LME_DRV.Post;

  pnlAlteracao.Enabled := False;
  btnAddAlteracao.SetFocus;
end;

procedure TPCP_FM_C_LME.txtSituacaoReprovacaoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if btnAddReprovacao.Focused or dpkDataReprovacao.Focused or txtSituacaoReprovacao.Focused then
     begin
       Exit;
     end;

  dmSgq.PCP_CD_C_LME_DRP.Post;

  pnlReprovacao.Enabled := False;
  btnAddReprovacao.SetFocus;
end;

end.
