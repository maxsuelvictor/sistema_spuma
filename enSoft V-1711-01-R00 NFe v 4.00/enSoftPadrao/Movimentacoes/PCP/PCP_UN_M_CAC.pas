unit PCP_UN_M_CAC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, vcl.Wwdbedit, JvExMask, JvToolEdit, JvDBControls, Vcl.ComCtrls,
  vcl.wwdblook, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_M_CAC = class(TPAD_FM_X_PAD)
    dsoAna: TwwDataSource;
    dsoPla: TwwDataSource;
    lblControle: TLabel;
    txtControle: TDBEdit;
    cbbProcesso: TwwDBLookupCombo;
    lblProcesso: TLabel;
    rgCorretivaPreventiva: TDBRadioGroup;
    lblOrigem: TLabel;
    cbbOrigem: TwwDBLookupCombo;
    lblDescricaoNaoConformidade: TLabel;
    txtDescricaoNaoConformidade: TDBMemo;
    pcMovimento: TPageControl;
    tbiAnaliseCausasReaisPotenciais: TTabSheet;
    grdAnalise: TwwDBGrid;
    tsPlanoAcao: TTabSheet;
    btnAddPlanoAcao: TBitBtn;
    grdPlanoAcao: TwwDBGrid;
    btnAddAnalise: TBitBtn;
    grdAnaliseIButton: TwwIButton;
    grdPlanoAcaoIButton: TwwIButton;
    lblData: TLabel;
    dpkData: TJvDBDateEdit;
    pnlAna: TPanel;
    lblCausa: TLabel;
    Label15: TLabel;
    lblMotivo: TLabel;
    lblCausaRaiz: TLabel;
    lblResponsavel: TLabel;
    cbbCausa: TwwDBLookupCombo;
    cbbResponsavel: TwwDBLookupCombo;
    pnlPlanoAcao: TPanel;
    lblResponsavel2: TLabel;
    lblEfetivo: TLabel;
    lblPrazoAte: TLabel;
    lblAcao: TLabel;
    cbbResponsavel2: TwwDBLookupCombo;
    txtAcao: TDBEdit;
    dpkPrazoAte: TJvDBDateEdit;
    dpkDataEfetivo: TJvDBDateEdit;
    txtSubCausa: TDBMemo;
    txtMotivo: TDBMemo;
    txtCausaRaiz: TDBMemo;
    tbiAnaliseCritica: TTabSheet;
    lblVerificarEficacia: TLabel;
    lblEficaciaConformidade: TLabel;
    lblFuncionariosEnvolvidos: TLabel;
    lblRequerTreinamento: TLabel;
    lblAnexarCopia: TLabel;
    lblComentarios: TLabel;
    lblDiretor: TLabel;
    lblChefeSetor: TLabel;
    lblEficaciaVerificada: TLabel;
    cbbEficaciaConformidade: TwwDBLookupCombo;
    chkFuncionariosEnvolvidos: TDBCheckBox;
    chkRequerTreinamento: TDBCheckBox;
    txtComentarios: TDBEdit;
    cbbDiretor: TwwDBLookupCombo;
    cbbChefeSetor: TwwDBLookupCombo;
    dpkEficaciaVerificada: TJvDBDateEdit;
    dpkVerificarEficacia: TJvDBDateEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbResponsavelEnter(Sender: TObject);
    procedure cbbResponsavelExit(Sender: TObject);
    procedure cbbResponsavel2Exit(Sender: TObject);
    procedure cbbDiretorEnter(Sender: TObject);
    procedure cbbChefeSetorEnter(Sender: TObject);
    procedure btnAddAnaliseClick(Sender: TObject);
    procedure btnAddPlanoAcaoClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbProcessoEnter(Sender: TObject);
    procedure cbbProcessoExit(Sender: TObject);
    procedure pnlAnaExit(Sender: TObject);
    procedure grdAnaliseMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdAnaliseIButtonClick(Sender: TObject);
    procedure dpkDataEfetivoExit(Sender: TObject);
    procedure cbbResponsavel2Enter(Sender: TObject);
    procedure cbbDiretorExit(Sender: TObject);
    procedure cbbChefeSetorExit(Sender: TObject);
    procedure cbbOrigemEnter(Sender: TObject);
    procedure cbbEficaciaConformidadeEnter(Sender: TObject);
    procedure cbbOrigemExit(Sender: TObject);
    procedure grdPlanoAcaoIButtonClick(Sender: TObject);
    procedure grdPlanoAcaoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbCausaEnter(Sender: TObject);
    procedure txtCausaRaizExit(Sender: TObject);
    procedure chkRequerTreinamentoClick(Sender: TObject);
    procedure pnlPlanoAcaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_CAC: TPCP_FM_M_CAC;

implementation

{$R *.dfm}

uses uDmGeral, uDmSgq;

procedure TPCP_FM_M_CAC.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CAC);

  dmGeral.PCP_CD_M_CAC.FieldByName('DTA_ENTRADA').AsDateTime := xDataSis;
  dmGeral.PCP_CD_M_CAC.FieldByName('TIPO_ACAO').AsInteger := 0;
  pnlAna.Enabled := False;
  pnlPlanoAcao.Enabled := False;
  cbbProcesso.SetFocus;
end;

procedure TPCP_FM_M_CAC.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CAC) then
      begin
        inherited;
        pnlAna.Enabled := False;
        pnlPlanoAcao.Enabled := False;

        txtDescricaoNaoConformidade.SetFocus;
      end;
end;

procedure TPCP_FM_M_CAC.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CAC) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbProcesso.SetFocus;
     end;
end;

procedure TPCP_FM_M_CAC.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CAC);
end;

procedure TPCP_FM_M_CAC.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.PCP_CD_M_CAC.FieldByName('ID_CAC').AsString;
  DmGeral.Grava(dmGeral.PCP_CD_M_CAC);
  inherited;
  dmGeral.PCP_CD_M_CAC.Close;
  dmGeral.PCP_CD_M_CAC.Data :=
  dmGeral.PCP_CD_M_CAC.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_M_CAC.btnAddPlanoAcaoClick(Sender: TObject);
begin
  inherited;
  pnlPlanoAcao.Enabled := True;

  dmGeral.PCP_CD_M_CAC_PLA.Insert;
  txtAcao.SetFocus;
end;

procedure TPCP_FM_M_CAC.btnAddAnaliseClick(Sender: TObject);
begin
  inherited;
  pnlAna.Enabled  := True;

  dmGeral.PCP_CD_M_CAC_ANA.Insert;
  cbbCausa.SetFocus;
end;

procedure TPCP_FM_M_CAC.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.PCP_CD_M_CAC.Close;
    dmGeral.PCP_CD_M_CAC.Data :=
    dmGeral.PCP_CD_M_CAC.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_CAC.cbbCausaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_CAC_001;
  cbbCausa.DropDown;
end;

procedure TPCP_FM_M_CAC.cbbChefeSetorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario3(1,'%');
  cbbChefeSetor.DropDown;
end;

procedure TPCP_FM_M_CAC.cbbChefeSetorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       Exit;
     end;

  if dmGeral.PCP_CD_M_CAC.FieldByName('FEC_ID_RESPONSAVEL').Text = '' then
     begin
       ShowMessage('O campo "Chefe de Setor" deve ser prenchido.');
       cbbChefeSetor.SetFocus;
       Exit;
     end;

  dmGeral.BusFuncionario3(0,dmGeral.PCP_CD_M_CAC.FieldByName('FEC_ID_RESPONSAVEL').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Chefe de Setor não encontrado.');
       cbbChefeSetor.SetFocus;
       Exit;
     end;
end;

procedure TPCP_FM_M_CAC.cbbDiretorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario3(1,'%');
  cbbDiretor.DropDown;
end;

procedure TPCP_FM_M_CAC.cbbDiretorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       Exit;
     end;

  if dmGeral.PCP_CD_M_CAC.FieldByName('FEC_ID_RESP_DIRETORIA').Text = '' then
     begin
       ShowMessage('O campo "Diretor" deve ser prenchido.');
       cbbDiretor.SetFocus;
       Exit;
     end;

  dmGeral.BusFuncionario3(0,dmGeral.PCP_CD_M_CAC.FieldByName('FEC_ID_RESP_DIRETORIA').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Diretor não encontrado.');
       cbbDiretor.SetFocus;
       Exit;
     end;
end;

procedure TPCP_FM_M_CAC.cbbEficaciaConformidadeEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_CAC_002;
  cbbEficaciaConformidade.DropDown;
end;

procedure TPCP_FM_M_CAC.cbbOrigemEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BusOrigem(1,'%');
  cbbOrigem.DropDown;
end;

procedure TPCP_FM_M_CAC.cbbOrigemExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       Exit;
     end;

  if dmGeral.PCP_CD_M_CAC.FieldByName('ID_ORI').Text = '' then
     begin
       ShowMessage('O campo "Origem" deve ser prenchido.');
       cbbOrigem.SetFocus;
       Exit;
     end;

  dmSgq.BusOrigem(0,dmGeral.PCP_CD_M_CAC.FieldByName('ID_ORI').Text);
  if dmSgq.BUS_CD_C_ORI.IsEmpty then
     begin
       ShowMessage('Origem não encontrada.');
       cbbProcesso.SetFocus;
       Exit;
     end;
end;

procedure TPCP_FM_M_CAC.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_M_CAC.cbbProcessoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusSetor(1,'%');
  cbbProcesso.DropDown;
end;

procedure TPCP_FM_M_CAC.cbbProcessoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       Exit;
     end;

  if dmGeral.PCP_CD_M_CAC.FieldByName('ID_SETOR_ORIGEM').Text = '' then
     begin
       ShowMessage('O campo "Processo" deve ser prenchido.');
       cbbProcesso.SetFocus;
       Exit;
     end;

  dmGeral.BusSetor(0,dmGeral.PCP_CD_M_CAC.FieldByName('ID_SETOR_ORIGEM').Text);
  if dmGeral.BUS_CD_C_SET.IsEmpty then
     begin
       ShowMessage('Processo não encontrado.');
       cbbProcesso.SetFocus;
       Exit;
     end;
end;

procedure TPCP_FM_M_CAC.cbbResponsavel2Enter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario2(1,'%');
  cbbResponsavel2.DropDown;
end;

procedure TPCP_FM_M_CAC.cbbResponsavel2Exit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       Exit;
     end;

  if dmGeral.PCP_CD_M_CAC_PLA.FieldByName('ID_RESPONSAVEL').Text = '' then
     begin
       ShowMessage('O campo "Responsável" deve ser prenchido.');
       cbbResponsavel2.SetFocus;
       Exit;
     end;

  dmGeral.BusFuncionario2(0,dmGeral.PCP_CD_M_CAC_PLA.FieldByName('ID_RESPONSAVEL').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsável não encontrado.');
       cbbResponsavel2.SetFocus;
       Exit;
     end
  else
    begin
      dmGeral.PCP_CD_M_CAC_PLA.FieldByName('INT_NOMERES').text :=
              dmGeral.BUS_CD_C_FUN.FieldByName('NOME').Text;
    end;
end;

procedure TPCP_FM_M_CAC.cbbResponsavelEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel.DropDown;
end;

procedure TPCP_FM_M_CAC.cbbResponsavelExit(Sender: TObject);
begin
  inherited;
  if dmGeral.PCP_CD_M_CAC_ANA.FieldByName('ID_RESPONSAVEL').Text = '' then
     begin
       ShowMessage('O campo "Responsável" deve ser prenchido.');
       cbbResponsavel.SetFocus;
       Exit;
     end;

  dmGeral.BusFuncionario(0,dmGeral.PCP_CD_M_CAC_ANA.FieldByName('ID_RESPONSAVEL').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsável não encontrado.');
       cbbResponsavel.SetFocus;
       Exit;
     end
  else
    begin
      dmGeral.PCP_CD_M_CAC_ANA.FieldByName('INT_NOMERES').text :=
              dmGeral.BUS_CD_C_FUN.FieldByName('NOME').Text;
    end;
end;

procedure TPCP_FM_M_CAC.chkRequerTreinamentoClick(Sender: TObject);
begin
  inherited;
  if chkRequerTreinamento.Checked = True then
    begin
      lblAnexarCopia.Visible := True;
    end
  else
    begin
      lblAnexarCopia.Visible := False;
    end;
end;

procedure TPCP_FM_M_CAC.dpkDataEfetivoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if btnAddPlanoAcao.Focused or txtAcao.Focused or cbbResponsavel2.Focused or
     dpkPrazoAte.Focused or dpkDataEfetivo.Focused then
     begin
       Exit;
     end;

  dmGeral.PCP_CD_M_CAC_PLA.Post;

  pnlPlanoAcao.Enabled := False;
  btnAddPlanoAcao.SetFocus;
end;

procedure TPCP_FM_M_CAC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_CAC.Close;
  FreeAndNil(PCP_FM_M_CAC);
end;

procedure TPCP_FM_M_CAC.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_CAC.Close;
  dmGeral.PCP_CD_M_CAC.Data := dmGeral.PCP_CD_M_CAC.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_CAC.Open;

  lblAnexarCopia.Visible := False;

  dmGeral.BusFuncionario(1,'%');
  dmSgq.BusOrigem(1,'%');
  dmGeral.BusFuncionario2(1,'%');
  dmGeral.BusFuncionario3(1,'%');
  dmGeral.BUS_PR_X_SXN;
  dmGeral.BUS_PR_X_CAC_001;
  dmGeral.BUS_PR_X_CAC_002;
end;

procedure TPCP_FM_M_CAC.grdPlanoAcaoIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdPlanoAcaoIButton.Enabled := False;
     if dmGeral.PCP_CD_M_CAC_PLA.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          Abort;
        end;
     dmGeral.PCP_CD_M_CAC_PLA.Delete;
     dmGeral.PCP_CD_M_CAC_PLA.Edit;
  finally
    grdPlanoAcaoIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_CAC.grdPlanoAcaoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlPlanoAcao.Enabled = False then
     pnlPlanoAcao.Enabled := True;

  dmGeral.PCP_CD_M_CAC_PLA.Cancel;

  if dmGeral.PCP_CD_M_CAC_PLA.IsEmpty then
     begin
       dmGeral.PCP_CD_M_CAC_PLA.Append;
       pnlPlanoAcao.Enabled := True;
       txtAcao.SetFocus;
     end
  else
     begin
       dmGeral.PCP_CD_M_CAC_PLA.Edit;
       pnlPlanoAcao.Enabled := True;
       txtAcao.SetFocus;
     end;
end;

procedure TPCP_FM_M_CAC.grdAnaliseIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdAnaliseIButton.Enabled := False;
     if dmGeral.PCP_CD_M_CAC_ANA.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          Abort;
        end;
     dmGeral.PCP_CD_M_CAC_ANA.Delete;
     dmGeral.PCP_CD_M_CAC_ANA.Edit;
  finally
    grdAnaliseIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_CAC.grdAnaliseMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlAna.Enabled = False then
     pnlAna.Enabled := True;

  dmGeral.PCP_CD_M_CAC_ANA.Cancel;

  if dmGeral.PCP_CD_M_CAC_ANA.IsEmpty then
     begin
       dmGeral.PCP_CD_M_CAC_ANA.Append;
       pnlAna.Enabled := True;
       cbbCausa.SetFocus;
     end
  else
     begin
       dmGeral.PCP_CD_M_CAC_ANA.Edit;
       pnlAna.Enabled := True;
       cbbCausa.SetFocus;
     end;
end;

procedure TPCP_FM_M_CAC.pnlAnaExit(Sender: TObject);
begin
  inherited;
  if (btnAddAnalise.Focused) or (grdAnalise.Focused) or
     (not grdAnaliseIButton.Enabled) then
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

          dmGeral.PCP_CD_M_CAC_ANA.Cancel;
          dmGeral.PCP_CD_M_CAC_ANA.Edit;
          finally
             pnlAna.Enabled := False;
          end;
      end;
end;

procedure TPCP_FM_M_CAC.pnlPlanoAcaoExit(Sender: TObject);
begin
  inherited;
  if (btnAddPlanoAcao.Focused) or (grdPlanoAcao.Focused) or (not grdPlanoAcaoIButton.Enabled) then
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

          dmGeral.PCP_CD_M_CAC_PLA.Cancel;
          dmGeral.PCP_CD_M_CAC_PLA.Edit;
          finally
             pnlPlanoAcao.Enabled := False;
          end;
      end;
end;

procedure TPCP_FM_M_CAC.txtCausaRaizExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if btnAddAnalise.Focused or cbbCausa.Focused or txtSubCausa.Focused or
     txtMotivo.Focused or txtCausaRaiz.Focused or cbbResponsavel.Focused then
     begin
       Exit;
     end;

  dmGeral.PCP_CD_M_CAC_ANA.Post;

  pnlAna.Enabled := False;
  btnAddAnalise.SetFocus;
end;

procedure TPCP_FM_M_CAC.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

end.
