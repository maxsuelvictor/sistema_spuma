unit PCP_UN_M_NCF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, vcl.wwdblook, JvDBControls, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, vcl.Wwdbedit,
  Vcl.ComCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, vcl.wwcheckbox,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_M_NCF = class(TPAD_FM_X_PAD)
    dsoDis: TwwDataSource;
    lblControle: TLabel;
    txtControle: TDBEdit;
    lblQtdeLote: TLabel;
    txtQtdeLote: TDBEdit;
    lblSetor: TLabel;
    cbbSetor: TwwDBLookupCombo;
    lblItem: TLabel;
    txtItem: TJvDBComboEdit;
    lblQtdeNC: TLabel;
    txtQtdeNC: TDBEdit;
    lblPerNC: TLabel;
    txtPerNC: TDBEdit;
    lblDevTroca: TLabel;
    txtDevTroca: TDBEdit;
    lblTexto: TLabel;
    txtTexto: TDBMemo;
    gbDisposicao: TGroupBox;
    btnAddDisposicao: TBitBtn;
    grdDisposicao: TwwDBGrid;
    tabRetrabalhoFechamento: TPageControl;
    tbiRetrabalho: TTabSheet;
    tbiFechamento: TTabSheet;
    lblResponsavelRetrabalho: TLabel;
    cbbResponsavelRetrabalho: TwwDBLookupCombo;
    lblEspecifique: TLabel;
    txtEspecifique: TDBEdit;
    lblPrazoFoi: TLabel;
    lblDisposicaoFoi: TLabel;
    lblANCRequerRACP: TLabel;
    cbbANCRequerRACP: TwwDBLookupCombo;
    lblRequerTreinamento: TLabel;
    cbbRequerTreinamento: TwwDBLookupCombo;
    lblForamInformados: TLabel;
    cbbForamInformados: TwwDBLookupCombo;
    cbbResponsavelFechamento: TwwDBLookupCombo;
    lblResponsavelFechamento: TLabel;
    cbbDiretoria: TwwDBLookupCombo;
    lblDiretoria: TLabel;
    lblComentarios: TLabel;
    txtComentarios: TDBEdit;
    lblExterno: TLabel;
    lblData: TLabel;
    dpkData: TJvDBDateEdit;
    txtItemDescricao: TDBText;
    grdDisposicaoIButton: TwwIButton;
    dpkEmitidoEm: TJvDBDateEdit;
    Label1: TLabel;
    pnlDisposicao: TPanel;
    Label22: TLabel;
    lblEfetivo: TLabel;
    lblResponsavel: TLabel;
    txtPrazo: TwwDBEdit;
    txtEfetivo: TwwDBEdit;
    cbbResponsavel: TwwDBLookupCombo;
    lblDisposicao: TLabel;
    cbbDisposicao: TwwDBLookupCombo;
    Label2: TLabel;
    dpkRetrabalho: TJvDBDateEdit;
    lblDataFechamento: TLabel;
    dpkDataResponsavelFechamento: TJvDBDateEdit;
    Label3: TLabel;
    dpkDataDiretoriaFechamento: TJvDBDateEdit;
    cbbPrazoFoi: TJvDBComboBox;
    cbbDisposicaoFoi: TJvDBComboBox;
    chbSatisfatoria: TwwCheckBox;
    pnlCorTamanho: TPanel;
    lblCor: TLabel;
    lblTamanho: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
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
    procedure cbbSetorEnter(Sender: TObject);
    procedure txtItemButtonClick(Sender: TObject);
    procedure txtItemExit(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbResponsavelEnter(Sender: TObject);
    procedure cbbResponsavelRetrabalhoEnter(Sender: TObject);
    procedure cbbDiretoriaEnter(Sender: TObject);
    procedure cbbResponsavelFechamentoEnter(Sender: TObject);
    procedure btnAddDisposicaoClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure grdDisposicaoIButtonClick(Sender: TObject);
    procedure grdDisposicaoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtEfetivoExit(Sender: TObject);
    procedure pnlDisposicaoExit(Sender: TObject);
    procedure cbbDisposicaoEnter(Sender: TObject);
    procedure dpkRetrabalhoExit(Sender: TObject);
    procedure chbSatisfatoriaClick(Sender: TObject);
    procedure cbbANCRequerRACPEnter(Sender: TObject);
    procedure cbbForamInformadosEnter(Sender: TObject);
    procedure cbbRequerTreinamentoEnter(Sender: TObject);
    procedure cbbSetorExit(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbResponsavelRetrabalhoExit(Sender: TObject);
    procedure cbbResponsavelFechamentoExit(Sender: TObject);
    procedure cbbDiretoriaExit(Sender: TObject);
    procedure cbbResponsavelExit(Sender: TObject);
    procedure cbbDisposicaoExit(Sender: TObject);
  private
    { Private declarations }
    procedure ChamaCorTamanho;
  public
    { Public declarations }
  end;

var
  PCP_FM_M_NCF: TPCP_FM_M_NCF;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE, PSQ_UN_X_DIS, uDmSgq;

procedure TPCP_FM_M_NCF.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_NCF);

  pnlDisposicao.Enabled := False;
  dpkData.Date := xDataSis;
  cbbSetor.SetFocus;
end;

procedure TPCP_FM_M_NCF.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_NCF) then
      begin
        inherited;
        pnlDisposicao.Enabled := False;
        cbbSetor.SetFocus;
      end;
end;

procedure TPCP_FM_M_NCF.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_NCF) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbSetor.SetFocus;
     end;
end;

procedure TPCP_FM_M_NCF.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_NCF);
end;

procedure TPCP_FM_M_NCF.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmGeral.PCP_CD_M_NCF.FieldByName('ID_NCF').AsString;
   DmGeral.Grava(dmGeral.PCP_CD_M_NCF);
   inherited;
   dmGeral.PCP_CD_M_NCF.Close;
   dmGeral.PCP_CD_M_NCF.Data :=
   dmGeral.PCP_CD_M_NCF.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_M_NCF.btnAddDisposicaoClick(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_NCF_DIS.Insert;
  pnlDisposicao.Enabled := True;
  cbbDisposicao.SetFocus;
end;

procedure TPCP_FM_M_NCF.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.PCP_CD_M_NCF.Close;
    dmGeral.PCP_CD_M_NCF.Data :=
    dmGeral.PCP_CD_M_NCF.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_NCF.cbbANCRequerRACPEnter(Sender: TObject);
begin
  inherited;
  cbbANCRequerRACP.DropDown;
end;

procedure TPCP_FM_M_NCF.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TPCP_FM_M_NCF.cbbCorExit(Sender: TObject);
begin
  inherited;
  if trim(dmGeral.PCP_CD_M_NCF.FieldByName('ID_COR').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           Exit;
         end;

       if cbbTamanho.Focused then
          Exit;

       Showmessage('O campo "Cor" deve ser preenchido.');
       dmGeral.PCP_CD_M_NCF.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.PCP_CD_M_NCF.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.PCP_CD_M_NCF.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       Exit;
     end;

  if cbbTamanho.Focused then
     Exit;

  txtQtdeLote.SetFocus;
  pnlCorTamanho.Visible := False;
end;

procedure TPCP_FM_M_NCF.cbbDiretoriaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario3(1,'%');
  cbbDiretoria.DropDown;
end;

procedure TPCP_FM_M_NCF.cbbDiretoriaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused then
     begin
       Exit;
     end;

  dmGeral.BusFuncionario(0,dmGeral.PCP_CD_M_NCF.FieldByName('RE_ID_RESPONSAVEL').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Diretor não encontrado.');
       cbbDiretoria.SetFocus;
       Exit;
     end;
end;

procedure TPCP_FM_M_NCF.cbbDisposicaoEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BusDisposicao(1,'%');
  cbbDisposicao.DropDown;
end;

procedure TPCP_FM_M_NCF.cbbDisposicaoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       Exit;
     end;

  if dmGeral.PCP_CD_M_NCF_DIS.FieldByName('ID_DIS').Text = '' then
     begin
       ShowMessage('O campo "Disposição" deve ser prenchido.');
       cbbDisposicao.SetFocus;
       Exit;
     end;

  dmSgq.BusDisposicao(0,dmGeral.PCP_CD_M_NCF_DIS.FieldByName('ID_DIS').Text);
  if dmSgq.BUS_CD_C_DIS.IsEmpty then
     begin
       ShowMessage('Disposição não encontrada.');
       cbbDisposicao.SetFocus;
       Exit;
     end;
end;

procedure TPCP_FM_M_NCF.cbbForamInformadosEnter(Sender: TObject);
begin
  inherited;
  cbbForamInformados.DropDown;
end;

procedure TPCP_FM_M_NCF.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_M_NCF.cbbRequerTreinamentoEnter(Sender: TObject);
begin
  inherited;
  cbbRequerTreinamento.DropDown;
end;

procedure TPCP_FM_M_NCF.cbbResponsavelEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel.DropDown;
end;

procedure TPCP_FM_M_NCF.cbbResponsavelExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused then
     begin
       Exit;
     end;

  if dmGeral.PCP_CD_M_NCF_DIS.FieldByName('ID_RESPONSAVEL').Text = '' then
     begin
       ShowMessage('O campo "Responsável" deve ser prenchido.');
       cbbResponsavel.SetFocus;
       Exit;
     end;

  dmGeral.BusFuncionario(0,dmGeral.PCP_CD_M_NCF_DIS.FieldByName('ID_RESPONSAVEL').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsável não encontrado.');
       cbbResponsavel.SetFocus;
       Exit;
     end;
end;

procedure TPCP_FM_M_NCF.cbbResponsavelRetrabalhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavelRetrabalho.DropDown;
end;

procedure TPCP_FM_M_NCF.cbbResponsavelRetrabalhoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused then
     begin
       Exit;
     end;

  dmGeral.BusFuncionario(0,dmGeral.PCP_CD_M_NCF.FieldByName('RE_ID_RESPONSAVEL').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsável não encontrado.');
       cbbResponsavelRetrabalho.SetFocus;
       Exit;
     end;
end;

procedure TPCP_FM_M_NCF.cbbSetorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusSetor(1,'%');
  cbbSetor.DropDown;
end;

procedure TPCP_FM_M_NCF.cbbSetorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused then
     begin
       Exit;
     end;

  if dmGeral.PCP_CD_M_NCF.FieldByName('ID_SETOR_ORIGEM').Text = '' then
     begin
       ShowMessage('O campo "Setor" deve ser prenchido.');
       cbbSetor.SetFocus;
       Exit;
     end;

  dmGeral.BusSetor(0,dmGeral.PCP_CD_M_NCF.FieldByName('ID_SETOR_ORIGEM').Text);
  if dmGeral.BUS_CD_C_SET.IsEmpty then
     begin
       ShowMessage('Setor não encontrado.');
       cbbSetor.SetFocus;
       Exit;
     end
  else
     begin
       dmGeral.PCP_CD_M_NCF.FieldByName('INT_NOMESET').AsString :=
              dmGeral.BUS_CD_C_SET.FieldByName('DESCRICAO').AsString;
     end;
end;

procedure TPCP_FM_M_NCF.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TPCP_FM_M_NCF.cbbTamanhoExit(Sender: TObject);
begin
  inherited;
  if trim(dmGeral.PCP_CD_M_NCF.FieldByName('ID_TAMANHO').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           Exit;
         end;

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.PCP_CD_M_NCF.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       Exit;
     end;

  dmGeral.BusTamanho(0,dmGeral.PCP_CD_M_NCF.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.PCP_CD_M_NCF.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       Exit;
     end;

  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    begin
     txtQtdeLote.SetFocus;
     pnlCorTamanho.Visible := False;
    end;
end;

procedure TPCP_FM_M_NCF.ChamaCorTamanho;
begin
if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanho.Visible := False;
        txtQtdeLote.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := 322;
            pnlCorTamanho.Top := 28;
            pnlCorTamanho.Width := 290;

            lblCor.Left         := 183;
            lblCor.Visible      := True;

            cbbCor.Visible     := True;
            cbbTamanho.Visible := True;
            lblTamanho.Left    := 0;
            lblTamanho.Visible := true;

            cbbCor.TabStop := True;
            cbbCor.Left := 213;
            cbbTamanho.TabStop := True;

            pnlCorTamanho.Visible := True;
            cbbTamanho.SetFocus;
          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  pnlCorTamanho.Left  := 322;
                  pnlCorTamanho.Top   := 28;
                  pnlCorTamanho.Width := 145;
                  lblTamanho.Visible  := True;

                  cbbCor.Visible := False;
                  cbbCor.TabStop := False;
                  lblCor.Visible := False;

                  pnlCorTamanho.Visible := True;
                  cbbTamanho.SetFocus;
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  pnlCorTamanho.Visible := True;
                  pnlCorTamanho.Left := 322;
                  pnlCorTamanho.Top := 28;
                  pnlCorTamanho.Width := 145;
                  lblTamanho.Visible  := False;

                  cbbTamanho.Visible := False;
                  cbbTamanho.TabStop := False;

                  cbbCor.Left := 59;
                  cbbCor.SetFocus;
                  lblCor.left := 29;
                  lblCor.Visible := True;
               end;
         end;
     end;
end;

procedure TPCP_FM_M_NCF.chbSatisfatoriaClick(Sender: TObject);
begin
  inherited;
  if chbSatisfatoria.Checked = True then
    begin
      chbSatisfatoria.Caption := 'Satisfatória';
    end
  else
    begin
      chbSatisfatoria.Caption := 'Insatisfatória';
    end;

end;

procedure TPCP_FM_M_NCF.dpkRetrabalhoExit(Sender: TObject);
begin
  inherited;
  tabRetrabalhoFechamento.ActivePage := tbiFechamento;
  if cbbPrazoFoi.CanFocus = True then
     begin
       cbbPrazoFoi.SetFocus;
     end;
end;

procedure TPCP_FM_M_NCF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_NCF.Close;
  FreeAndNil(PCP_FM_M_NCF);
end;

procedure TPCP_FM_M_NCF.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_NCF.Close;
  dmGeral.PCP_CD_M_NCF.Data := dmGeral.PCP_CD_M_NCF.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_NCF.Open;

  dmGeral.BUS_PR_X_SXN;
  dmGeral.BusCor(1,'%');
  dmGeral.BusSetor(1,'%');
  dmGeral.BusTamanho(1,'%');
  dmSgq.BusDisposicao(1,'%');
  dmGeral.BusFuncionario(1,'%');
  dmGeral.BusFuncionario2(1,'%');
  dmGeral.BusFuncionario3(1,'%');
end;

procedure TPCP_FM_M_NCF.grdDisposicaoIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdDisposicaoIButton.Enabled := False;
     if dmGeral.PCP_CD_M_NCF_DIS.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmGeral.PCP_CD_M_NCF_DIS.Delete;
     dmGeral.PCP_CD_M_NCF_DIS.Edit;
  finally
    grdDisposicaoIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_NCF.grdDisposicaoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlDisposicao.Enabled = False then
     pnlDisposicao.Enabled := True;

  dmGeral.PCP_CD_M_NCF_DIS.cancel;

  if dmGeral.PCP_CD_M_NCF_DIS.IsEmpty then
     begin
       dmGeral.PCP_CD_M_NCF_DIS.Append;
       pnlDisposicao.Enabled := True;
       cbbDisposicao.SetFocus;
     end
  else
     begin
       dmGeral.PCP_CD_M_NCF_DIS.Edit;
       pnlDisposicao.Enabled := True;
       cbbDisposicao.SetFocus;
     end;
end;

procedure TPCP_FM_M_NCF.pnlDisposicaoExit(Sender: TObject);
begin
  inherited;
  if (btnAddDisposicao.Focused) or (grdDisposicao.Focused) or (not grdDisposicaoIButton.Enabled) then
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

          dmGeral.PCP_CD_M_NCF_DIS.Cancel;
          dmGeral.PCP_CD_M_NCF_DIS.Edit;
        finally
           pnlDisposicao.Enabled := False;
        end;
      end;
end;

procedure TPCP_FM_M_NCF.txtEfetivoExit(Sender: TObject);
var
  disposicao: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if btnAddDisposicao.Focused or cbbDisposicao.Focused or cbbResponsavel.Focused or
     txtPrazo.Focused or txtEfetivo.Focused then
     begin
       abort;
     end;

  disposicao := dmGeral.PCP_CD_M_NCF_DIS.FieldByName('ID_DIS').AsString;
  dmGeral.PCP_CD_M_NCF_DIS.Post;
  pnlDisposicao.Enabled := False;
  btnAddDisposicao.SetFocus;

  dmGeral.PCP_CD_M_NCF_DIS.locate('ID_DIS',disposicao,[]);
end;

procedure TPCP_FM_M_NCF.txtItemButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.PCP_CD_M_NCF.FieldByName('INT_NOMEITE').AsString :=
                PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

           dmGeral.PCP_CD_M_NCF.FieldByName('ID_ITEM_MOTIVO').AsString :=
                PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_M_NCF.txtItemExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_ITE.Close;

  dmGeral.PCP_CD_M_NCF.FieldByName('INT_NOMEITE').Text := '';

  dmGeral.BUS_CD_C_ITE.Close;
  dmGeral.BUS_CD_C_ITE.Data :=
  dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtItem.Text]));

  dmGeral.PCP_CD_M_NCF.FieldByName('INT_NOMEITE').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  ChamaCorTamanho;
end;

procedure TPCP_FM_M_NCF.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_M_NCF.cbbResponsavelFechamentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario2(1,'%');
  cbbResponsavelFechamento.DropDown;
end;

procedure TPCP_FM_M_NCF.cbbResponsavelFechamentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused then
     begin
       Exit;
     end;

  dmGeral.BusFuncionario(0,dmGeral.PCP_CD_M_NCF.FieldByName('ANA_ID_RESPONSAVEL').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Responsável não encontrado.');
       cbbResponsavelFechamento.SetFocus;
       Exit;
     end;
end;

end.
