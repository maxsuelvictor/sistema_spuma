unit PCP_UN_M_CME;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, vcl.wwdblook, Vcl.Mask, Vcl.DBCtrls, JvDBControls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_M_CME = class(TPAD_FM_X_PAD)
    dsoMeq: TwwDataSource;
    lblResponsavel: TLabel;
    cbbResponsavel: TwwDBLookupCombo;
    gbEquipamento: TGroupBox;
    btnAddEquipamento: TBitBtn;
    grdEquipamento: TwwDBGrid;
    pnlEquipamento: TPanel;
    lblSetor: TLabel;
    lblFrequencia: TLabel;
    lblControle2: TLabel;
    lblSemana: TLabel;
    lblMes: TLabel;
    lblAno: TLabel;
    cbbSetor: TwwDBLookupCombo;
    lblData: TLabel;
    dpkData: TJvDBDateEdit;
    grdEquipamentoIButton: TwwIButton;
    lblMaquinasEquipamentos: TLabel;
    txtMaquinasEquipamentos: TJvDBComboEdit;
    txtMaquinasEquipamentosDescricao: TDBText;
    pnlLegenda: TGroupBox;
    lblRealizado: TLabel;
    pnlRealizado: TPanel;
    cbbFrequencia: TJvDBComboBox;
    cbbControle: TJvDBComboBox;
    Label1: TLabel;
    cbbTipoManutencao: TJvDBComboBox;
    cbbSemana: TJvDBComboBox;
    cbbMes: TJvDBComboBox;
    cbbAno: TJvDBComboBox;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    procedure cbbResponsavelEnter(Sender: TObject);
    procedure cbbSetorEnter(Sender: TObject);
    procedure cbbEquipamentoExit(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAddEquipamentoClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdEquipamentoIButtonClick(Sender: TObject);
    procedure pnlEquipamentoExit(Sender: TObject);
    procedure grdEquipamentoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbAnoExit(Sender: TObject);
    procedure txtMaquinasEquipamentosButtonClick(Sender: TObject);
    procedure txtMaquinasEquipamentosExit(Sender: TObject);
    procedure cbbSetorExit(Sender: TObject);
    procedure cbbFrequenciaExit(Sender: TObject);
    procedure cbbControleExit(Sender: TObject);
    procedure cbbTipoManutencaoExit(Sender: TObject);
    procedure cbbSemanaExit(Sender: TObject);
    procedure cbbMesExit(Sender: TObject);
    procedure cbbResponsavelExit(Sender: TObject);
  private
    { Private declarations }
     procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
  public
    { Public declarations }
  end;

var
  PCP_FM_M_CME: TPCP_FM_M_CME;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_MEQ, uDmSgq;

procedure TPCP_FM_M_CME.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CME);

  HabilDesabCampos(True,clWindow);
  pnlEquipamento.Enabled := False;

  dmGeral.PCP_CD_M_CME.FieldByName('DTA_LANCTO').AsDateTime := xDataSis;
  txtMaquinasEquipamentos.SetFocus;
end;

procedure TPCP_FM_M_CME.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CME) then
      begin
        inherited;
        pnlEquipamento.Enabled := False;
        HabilDesabCampos(False,$00DADADA);
        cbbResponsavel.SetFocus;
      end;
end;

procedure TPCP_FM_M_CME.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CME) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbResponsavel.SetFocus;
     end;
end;

procedure TPCP_FM_M_CME.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CME);
end;

procedure TPCP_FM_M_CME.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.PCP_CD_M_CME.FieldByName('ID_MEQ').AsString;
  DmGeral.Grava(dmGeral.PCP_CD_M_CME);
  inherited;
  dmGeral.PCP_CD_M_CME.Close;
  dmGeral.PCP_CD_M_CME.Data :=
  dmGeral.PCP_CD_M_CME.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_M_CME.btnAddEquipamentoClick(Sender: TObject);
begin
  inherited;
  pnlEquipamento.Enabled  := true;

  dmGeral.PCP_CD_M_CME_MEQ.Insert;
  cbbSetor.SetFocus;
end;

procedure TPCP_FM_M_CME.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.PCP_CD_M_CME.Close;
    dmGeral.PCP_CD_M_CME.Data :=
    dmGeral.PCP_CD_M_CME.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_CME.cbbEquipamentoExit(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_MEQ.Close;
end;

procedure TPCP_FM_M_CME.cbbFrequenciaExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_CME_MEQ.FieldByName('INT_FREQUEN').AsString := cbbfrequencia.Items[cbbfrequencia.itemindex];
end;

procedure TPCP_FM_M_CME.cbbMesExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_CME_MEQ.FieldByName('INT_NOMEMES').AsString := cbbMes.Items[cbbMes.itemindex];
end;

procedure TPCP_FM_M_CME.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_M_CME.cbbResponsavelEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel.DropDown;
end;

procedure TPCP_FM_M_CME.cbbResponsavelExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (dmGeral.PCP_CD_M_CME.FieldByName('ID_RESPONSAVEL').text = '') or
     (dmGeral.PCP_CD_M_CME.FieldByName('ID_RESPONSAVEL').AsInteger = 0) then
     begin
       Showmessage('O campo "Responsável" deve ser preenchido.');
       cbbResponsavel.SetFocus;
       Abort;
     end;

  dmGeral.BusFuncionario(0,dmGeral.PCP_CD_M_CME.FieldByName('ID_RESPONSAVEL').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsável não encontrado.');
       dmGeral.PCP_CD_M_CME.FieldByName('ID_RESPONSAVEL').text := '';
       cbbResponsavel.SetFocus;
       Abort;
     end
  else
     begin
       dmGeral.PCP_CD_M_CME.FieldByName('INT_NOMEFRES').AsString :=
              dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
     end;
end;

procedure TPCP_FM_M_CME.cbbSemanaExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_CME_MEQ.FieldByName('INT_NUMESEM').AsString := cbbSemana.Items[cbbSemana.itemindex];
end;

procedure TPCP_FM_M_CME.cbbSetorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusSetor(1,'%');
  cbbSetor.DropDown;
end;

procedure TPCP_FM_M_CME.cbbSetorExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnAddEquipamento.Focused or grdEquipamento.Focused  then
     begin
       Exit;
     end;

  if (dmGeral.PCP_CD_M_CME_MEQ.FieldByName('ID_SETOR').text = '') or
     (dmGeral.PCP_CD_M_CME_MEQ.FieldByName('ID_SETOR').AsInteger = 0) then
     begin
       Showmessage('O campo "Setor" deve ser preenchido.');
       cbbSetor.SetFocus;
       Abort;
     end;

  dmGeral.BusSetor(0,dmGeral.PCP_CD_M_CME_MEQ.FieldByName('ID_SETOR').Text);
  if dmGeral.BUS_CD_C_SET.IsEmpty then
     begin
       ShowMessage('Setor não encontrado.');
       dmGeral.PCP_CD_M_CME_MEQ.FieldByName('ID_SETOR').text := '';
       cbbSetor.SetFocus;
       Abort;
     end
  else
     begin
       dmGeral.PCP_CD_M_CME_MEQ.FieldByName('INT_NOMESET').AsString :=
              dmGeral.BUS_CD_C_SET.FieldByName('DESCRICAO').AsString;
     end;
end;

procedure TPCP_FM_M_CME.cbbTipoManutencaoExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_CME_MEQ.FieldByName('INT_TIPOMAN').AsString := cbbTipoManutencao.Items[cbbTipoManutencao.itemindex];
end;

procedure TPCP_FM_M_CME.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_CME.Close;
  FreeAndNil(PCP_FM_M_CME);
end;

procedure TPCP_FM_M_CME.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_CME.Close;
  dmGeral.PCP_CD_M_CME.Data := dmGeral.PCP_CD_M_CME.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_CME.Open;
end;

procedure TPCP_FM_M_CME.grdEquipamentoIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdEquipamentoIButton.Enabled := False;
     if dmGeral.PCP_CD_M_CME_MEQ.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.PCP_CD_M_CME_MEQ.Delete;
     dmGeral.PCP_CD_M_CME_MEQ.Edit;
  finally
    grdEquipamentoIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_CME.grdEquipamentoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlEquipamento.Enabled = False then
     pnlEquipamento.Enabled := True;

  dmGeral.PCP_CD_M_CME_MEQ.cancel;

  if dmGeral.PCP_CD_M_CME_MEQ.IsEmpty then
     begin
       dmGeral.PCP_CD_M_CME_MEQ.Append;
       pnlEquipamento.Enabled := True;
       txtMaquinasEquipamentos.SetFocus;
     end
  else
     begin
       dmGeral.PCP_CD_M_CME_MEQ.Edit;
       pnlEquipamento.Enabled := True;
       txtMaquinasEquipamentos.SetFocus;
     end;
end;

procedure TPCP_FM_M_CME.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  txtMaquinasEquipamentos.Enabled := Estado;
end;

procedure TPCP_FM_M_CME.pnlEquipamentoExit(Sender: TObject);
begin
  inherited;
  if (btnAddEquipamento.Focused) or (grdEquipamento.Focused) or (not grdEquipamentoIButton.Enabled) then
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

          dmGeral.PCP_CD_M_CME_MEQ.Cancel;
          dmGeral.PCP_CD_M_CME_MEQ.edit;
        finally
          pnlEquipamento.Enabled := False;
        end;
      end;
end;

procedure TPCP_FM_M_CME.txtMaquinasEquipamentosButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_MEQ := TPSQ_FM_X_MEQ.Create(Self);
   PSQ_FM_X_MEQ.ShowModal;
      if not PSQ_FM_X_MEQ.BUS_CD_C_MEQ.IsEmpty then
         begin
           {dmGeral.PCP_CD_M_CME.FieldByName('INT_NOMECID').AsString :=
                PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('DESCRICAO').AsString;}

           dmGeral.PCP_CD_M_CME.FieldByName('ID_MEQ').AsString :=
                PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('ID_MEQ').AsString;
         end;
   PSQ_FM_X_MEQ.Free;
end;

procedure TPCP_FM_M_CME.txtMaquinasEquipamentosExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.PCP_CD_M_CME.FieldByName('INT_NOMEMEQ').Text := '';

  if dmGeral.PCP_CD_M_CME.FieldByName('ID_MEQ').Text = '' then
     begin
       ShowMessage('O campo "Máquinas/Equipamentos" deve ser prenchido.');
       txtMaquinasEquipamentos.SetFocus;
       Abort;
     end;

  dmGeral.BusMaquinas(0,dmGeral.PCP_CD_M_CME.FieldByName('ID_MEQ').Text);
   if dmGeral.BUS_CD_C_MEQ.IsEmpty then
     begin
       ShowMessage('Máquina/Equipamento não encontrado.');
       dmGeral.PCP_CD_M_CME.FieldByName('ID_MEQ').Text := '';
       dmGeral.PCP_CD_M_CME.FieldByName('INT_NOMEMEQ').text  := '';
       txtMaquinasEquipamentos.SetFocus;
       exit;
     end;

  dmGeral.BusCME(0,dmGeral.PCP_CD_M_CME.FieldByName('ID_MEQ').Text);
  if not dmGeral.BUS_CD_M_CME.IsEmpty then
      begin
       ShowMessage('Já existe cronograma para esta máquina.');
       txtMaquinasEquipamentos.SetFocus;
       Abort;
     end;

  dmGeral.PCP_CD_M_CME.FieldByName('INT_NOMEMEQ').Text :=
       dmGeral.BUS_CD_C_MEQ.FieldByName('DESCRICAO').AsString;
end;

procedure TPCP_FM_M_CME.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_M_CME.cbbAnoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtMaquinasEquipamentos.Focused or cbbSetor.Focused or cbbFrequencia.Focused or
     cbbControle.Focused or cbbSemana.Focused or cbbMes.Focused then
     begin
       Exit;
     end;

  dmGeral.PCP_CD_M_CME_MEQ.Post;

  pnlEquipamento.Enabled := False;
  btnAddEquipamento.SetFocus;
end;

procedure TPCP_FM_M_CME.cbbControleExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_CME_MEQ.FieldByName('INT_TIPOCON').AsString := cbbControle.Items[cbbControle.itemindex];
end;

end.
