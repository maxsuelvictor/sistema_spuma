unit PCP_UN_M_RVC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvExMask,
  JvToolEdit, JvDBControls, Vcl.Mask, Vcl.DBCtrls, vcl.wwdblook, Vcl.DBGrids,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_M_RVC = class(TPAD_FM_X_PAD)
    lblControle: TLabel;
    txtControle: TDBEdit;
    dpkDataRevisao: TJvDBDateEdit;
    lblVeiculo: TLabel;
    lblIndicadores: TLabel;
    lblColchoesRevisados: TLabel;
    lblDefeitosIdentificados: TLabel;
    lblColchoesColados: TLabel;
    lblModeloColchaoMaiorNDefeitos: TLabel;
    lblDefeitoMaiorNOcorrencia: TLabel;
    lblPerIndiceDefeito: TLabel;
    txtColchoesRevisados: TDBEdit;
    txtDefeitosIdentificados: TDBEdit;
    txtColchoesColados: TDBEdit;
    txtModeloColchaoMaiorNDefeitos: TDBEdit;
    txtDefeitoMaiorNOcorrencia: TDBEdit;
    txtPerIndiceDefeito: TDBEdit;
    gbItens: TGroupBox;
    btnAddItens: TBitBtn;
    grdItens: TwwDBGrid;
    dsoIte: TwwDataSource;
    gbSetores: TGroupBox;
    btnAddSetor: TBitBtn;
    grdSetor: TwwDBGrid;
    lblSetor: TLabel;
    lblDefeitosSetor: TLabel;
    lblDefeitosSelecionados: TLabel;
    grdItensIButton: TwwIButton;
    grdSetorIButton: TwwIButton;
    dsoIteSet: TwwDataSource;
    dsoIteSetDef: TwwDataSource;
    pnlItem: TPanel;
    lblCor: TLabel;
    lblItem: TLabel;
    lblTamanho: TLabel;
    lblResponsavel: TLabel;
    lblObservacao: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    cbbResponsavel: TwwDBLookupCombo;
    txtObservacao: TDBEdit;
    txtItem: TJvDBComboEdit;
    pnlSetor: TPanel;
    cbbSetor: TwwDBLookupCombo;
    dsoSetTds: TwwDataSource;
    dgDefSetor: TwwDBGrid;
    dgDefSelecionado: TwwDBGrid;
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
    procedure btnAddItensClick(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbResponsavelEnter(Sender: TObject);
    procedure cbbSetorEnter(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure txtObservacaoExit(Sender: TObject);
    procedure btnAddSetorClick(Sender: TObject);
    procedure grdSetorIButtonClick(Sender: TObject);
    procedure grdSetorMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbSetorExit(Sender: TObject);
    procedure txtItemButtonClick(Sender: TObject);
    procedure txtItemExit(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbResponsavelExit(Sender: TObject);
    procedure pnlItemExit(Sender: TObject);
    procedure pnlSetorExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdSetorRowChanged(Sender: TObject);
    procedure dgDefSetorDblClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure dgDefSelecionadoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_RVC: TPCP_FM_M_RVC;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE;

procedure TPCP_FM_M_RVC.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_RVC);
  pnlItem.Enabled := False;
  pnlSetor.Enabled := False;
  dpkDataRevisao.SetFocus;
end;

procedure TPCP_FM_M_RVC.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_RVC) then
      begin
        inherited;
        pnlItem.Enabled := False;
        pnlSetor.Enabled := False;
        dpkDataRevisao.SetFocus;
      end;
end;

procedure TPCP_FM_M_RVC.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_RVC) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       dpkDataRevisao.SetFocus;
     end;
end;

procedure TPCP_FM_M_RVC.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_RVC);
end;

procedure TPCP_FM_M_RVC.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.PCP_CD_M_RVC.FieldByName('ID_RVC').AsString;
  DmGeral.Grava(dmGeral.PCP_CD_M_RVC);
  inherited;
  dmGeral.PCP_CD_M_RVC.Close;
  dmGeral.PCP_CD_M_RVC.Data :=
  dmGeral.PCP_CD_M_RVC.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_M_RVC.btnAddItensClick(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_RVC_ITE.Insert;
  pnlItem.Enabled := true;
  txtItem.SetFocus;
end;

procedure TPCP_FM_M_RVC.btnAddSetorClick(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_RVC_ITE_SET.Insert;
  pnlSetor.Enabled := True;
  cbbSetor.SetFocus;
end;

procedure TPCP_FM_M_RVC.btnFiltroClick(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_RVC.Close;
  dmGeral.PCP_CD_M_RVC.Data :=
  dmGeral.PCP_CD_M_RVC.DataRequest(
     VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
end;

procedure TPCP_FM_M_RVC.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TPCP_FM_M_RVC.cbbCorExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_RVC_ITE.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.PCP_CD_M_RVC_ITE.FieldByName('ID_COR').Text) <> '' then
     begin
        dmGeral.BusCor(0,dmGeral.PCP_CD_M_RVC_ITE.FieldByName('ID_COR').Text);
        if dmGeral.BUS_CD_C_COR.IsEmpty then
           begin
             Showmessage('Cor não encontrada.');
             dmGeral.PCP_CD_M_RVC_ITE.FieldByName('ID_COR').Text := '';
             cbbCor.SetFocus;
             exit;
           end;
        dmGeral.PCP_CD_M_RVC_ITE.FieldByName('INT_NOMECOR').text :=
                dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;
     end;
end;

procedure TPCP_FM_M_RVC.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_M_RVC.cbbResponsavelEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel.DropDown;
end;

procedure TPCP_FM_M_RVC.cbbResponsavelExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_RVC_ITE.FieldByName('INT_NOMEFUC').text := '';

  if trim(dmGeral.PCP_CD_M_RVC_ITE.FieldByName('ID_RESPONSAVEL').Text) <> '' then
     begin
        dmGeral.BusFuncionario(0,dmGeral.PCP_CD_M_RVC_ITE.FieldByName('ID_RESPONSAVEL').Text);
        if dmGeral.BUS_CD_C_FUN.IsEmpty then
           begin
             Showmessage('Responsável não encontrado.');
             dmGeral.PCP_CD_M_RVC_ITE.FieldByName('ID_RESPONSAVEL').Text := '';
             cbbResponsavel.SetFocus;
             exit;
           end;
        dmGeral.PCP_CD_M_RVC_ITE.FieldByName('INT_NOMEFUC').text :=
                dmGeral.BUS_CD_C_FUN.FieldByName('NOME').Text;
     end;
end;

procedure TPCP_FM_M_RVC.cbbSetorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusSetor(1,'%');
  cbbSetor.DropDown;
end;

procedure TPCP_FM_M_RVC.cbbSetorExit(Sender: TObject);
var
  setor: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        Exit;
     end;

  dmGeral.PCP_CD_M_RVC_ITE_SET.FieldByName('INT_NOMESET').text := '';

  if (dmGeral.PCP_CD_M_RVC_ITE_SET.FieldByName('ID_SETOR').text = '')     or
     (dmGeral.PCP_CD_M_RVC_ITE_SET.FieldByName('ID_SETOR').AsInteger = 0) then
     begin
        if grdSetor.Focused then
           begin
             exit;
           end;

        if not grdSetorIButton.Enabled then
           exit;

        if (btnAddSetor.Focused) then
           begin
             Showmessage('O campo "Setor" deve ser preenchido.');
             cbbSetor.SetFocus;
             exit;
           end
        else
           begin
             pnlSetor.Enabled := false;
             exit;
           end;
     end
  else
     begin
       if dmGeral.PCP_CD_M_RVC_ITE_SET.state in [dsBrowse] then
          dmGeral.PCP_CD_M_RVC_ITE_SET.edit;
     end;



  dmGeral.BusSetor(0,dmGeral.PCP_CD_M_RVC_ITE_SET.FieldByName('ID_SETOR').Text);
  if dmGeral.BUS_CD_C_SET.IsEmpty then
     begin
       Showmessage('Setor não encontrado.');
       dmGeral.PCP_CD_M_RVC_ITE_SET.FieldByName('ID_SETOR').Text := '';
       cbbSetor.SetFocus;
       Exit;
     end;
  dmGeral.PCP_CD_M_RVC_ITE_SET.FieldByName('INT_NOMESET').text :=
          dmGeral.BUS_CD_C_SET.FieldByName('DESCRICAO').Text;

  dmGeral.PCP_CD_M_RVC_ITE_SET.Post;
  pnlSetor.Enabled := False;
  btnAddSetor.SetFocus;
end;

procedure TPCP_FM_M_RVC.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TPCP_FM_M_RVC.cbbTamanhoExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_RVC_ITE.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.PCP_CD_M_RVC_ITE.FieldByName('ID_TAMANHO').Text) <> '' then
     begin
        dmGeral.BusTamanho(0,dmGeral.PCP_CD_M_RVC_ITE.FieldByName('ID_TAMANHO').Text);
        if dmGeral.BUS_CD_C_TAM.IsEmpty then
           begin
             Showmessage('Tamanho não encontrado.');
             dmGeral.PCP_CD_M_RVC_ITE.FieldByName('ID_TAMANHO').Text := '';
             cbbTamanho.SetFocus;
             exit;
           end;
        dmGeral.PCP_CD_M_RVC_ITE.FieldByName('INT_NOMETAM').text :=
                dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;
     end;
end;

procedure TPCP_FM_M_RVC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_RVC.Close;
  FreeAndNil(PCP_FM_M_RVC);
end;

procedure TPCP_FM_M_RVC.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_RVC.Close;
  dmGeral.PCP_CD_M_RVC.Data := dmGeral.PCP_CD_M_RVC.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_RVC.Open;

  dmGeral.BusSetor(1,'%');
end;

procedure TPCP_FM_M_RVC.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := False;
     if dmGeral.PCP_CD_M_RVC_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmGeral.PCP_CD_M_RVC_ITE.Delete;
     dmGeral.PCP_CD_M_RVC_ITE.Edit;
  finally
    grdItensIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_RVC.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlItem.Enabled = False then
     pnlItem.Enabled := True;

  dmGeral.PCP_CD_M_RVC_ITE.Cancel;

  if dmGeral.PCP_CD_M_RVC_ITE.IsEmpty then
     begin
       dmGeral.PCP_CD_M_RVC_ITE.Append;
       pnlItem.Enabled := True;
       txtItem.SetFocus;
     end
  else
     begin
       dmGeral.PCP_CD_M_RVC_ITE.Edit;
       pnlItem.Enabled := True;
       txtItem.SetFocus;
     end;
end;

procedure TPCP_FM_M_RVC.grdSetorIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdSetorIButton.Enabled := False;
     if dmGeral.PCP_CD_M_RVC_ITE_SET.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmGeral.PCP_CD_M_RVC_ITE_SET.Delete;
     dmGeral.PCP_CD_M_RVC_ITE_SET.Edit;
  finally
    grdSetorIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_RVC.grdSetorMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlSetor.Enabled = False then
     pnlSetor.Enabled := True;

  dmGeral.PCP_CD_M_RVC_ITE_SET.Cancel;

  if dmGeral.PCP_CD_M_RVC_ITE_SET.IsEmpty then
     begin
       dmGeral.PCP_CD_M_RVC_ITE_SET.Append;
       pnlSetor.Enabled := True;
       cbbSetor.SetFocus;
     end
  else
     begin
       dmGeral.PCP_CD_M_RVC_ITE_SET.Edit;
       pnlSetor.Enabled := True;
       //cbbSetor.SetFocus;
     end;
end;

procedure TPCP_FM_M_RVC.grdSetorRowChanged(Sender: TObject);
begin
  inherited;
  if not dmGeral.PCP_CD_M_RVC_ITE_SET.IsEmpty then
     begin
       if dmGeral.PCP_CD_M_RVC_ITE_SET.FieldByName('ID_SETOR').Text <> '' then
          begin
            dmGeral.BusSetor(0,dmGeral.PCP_CD_M_RVC_ITE_SET.FieldByName('ID_SETOR').Text);
          end;
     end;
end;

procedure TPCP_FM_M_RVC.pnlItemExit(Sender: TObject);
begin
  inherited;
  if (btnAddItens.Focused) or (grdItens.Focused) or (not grdItensIButton.Enabled) then
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

          dmGeral.PCP_CD_M_RVC_ITE.Cancel;
          dmGeral.PCP_CD_M_RVC_ITE.Edit;
        finally
           pnlItem.Enabled := False;
        end;
      end;
end;

procedure TPCP_FM_M_RVC.pnlSetorExit(Sender: TObject);
begin
  inherited;
  if (btnAddItens.Focused) or (grdItens.Focused) or (not grdItensIButton.Enabled) then
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

          dmGeral.PCP_CD_M_RVC_ITE_SET.Cancel;
          dmGeral.PCP_CD_M_RVC_ITE_SET.Edit;
        finally
           pnlSetor.Enabled := False;
        end;
      end;
end;

procedure TPCP_FM_M_RVC.txtItemButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.PCP_CD_M_RVC_ITE.FieldByName('ID_ITEM').AsInteger :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_M_RVC.txtItemExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmGeral.BUS_CD_C_ITE.Close;
    dmGeral.BUS_CD_C_ITE.Data :=
    dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtItem.Text]));

    dmGeral.PCP_CD_M_RVC_ITE.FieldByName('INT_NOMEITE').text :=
            dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').Text;
end;

procedure TPCP_FM_M_RVC.txtObservacaoExit(Sender: TObject);
var
  itens: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if btnAddItens.Focused or txtItem.Focused or cbbCor.Focused or
     cbbTamanho.Focused  or cbbResponsavel.Focused or txtObservacao.Focused then
     begin
       abort;
     end;

  itens := dmGeral.PCP_CD_M_RVC_ITE.FieldByName('ID_RVC_ITE').AsString;
  dmGeral.PCP_CD_M_RVC_ITE.Post;
  pnlItem.Enabled := False;
  btnAddItens.SetFocus;

  dmGeral.PCP_CD_M_RVC_ITE.locate('ID_RVC_ITE',itens,[]);
end;

procedure TPCP_FM_M_RVC.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_M_RVC.dgDefSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  try
     if dmGeral.PCP_CD_M_RVC_ITE_SET_DEF.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          Abort;
        end;

     dmGeral.PCP_CD_M_RVC_ITE_SET_DEF.Delete;
     dmGeral.PCP_CD_M_RVC_ITE_SET_DEF.Edit;
     finally
  end;

  dgDefSetor.SetFocus;
end;

procedure TPCP_FM_M_RVC.dgDefSetorDblClick(Sender: TObject);
begin
  inherited;
  if dmGeral.BUS_CD_C_SET_TDS.IsEmpty then
    begin
      ShowMessage('Nenhum registro encontrado.');
      Exit;
    end
  else
    begin
      if dmGeral.PCP_CD_M_RVC_ITE_SET_DEF.Locate('ID_TDF',dmGeral.BUS_CD_C_SET_TDS.FieldByName('ID_TDF').Text,[]) then
        begin
          ShowMessage('Tipo de defeito já selecionado.');
        end
      else
        begin
          dmGeral.PCP_CD_M_RVC_ITE_SET_DEF.Insert;
          dmGeral.PCP_CD_M_RVC_ITE_SET_DEF.FieldByName('ID_SETOR').AsInteger :=
                  dmGeral.BUS_CD_C_SET_TDS.FieldByName('ID_SETOR').AsInteger;

          dmGeral.PCP_CD_M_RVC_ITE_SET_DEF.FieldByName('ID_TDF').AsInteger :=
                  dmGeral.BUS_CD_C_SET_TDS.FieldByName('ID_TDF').AsInteger;

          dmGeral.BusTiposDefeito(0,dmGeral.PCP_CD_M_RVC_ITE_SET_DEF.FieldByName('ID_TDF').Text);
          if dmGeral.BUS_CD_C_TDF.IsEmpty then
             begin
               Showmessage('Defeito não encontrado.');
               dmGeral.PCP_CD_M_RVC_ITE_SET_DEF.FieldByName('ID_TDF').Text := '';
               dgDefSetor.SetFocus;
               Exit;
             end;
          dmGeral.PCP_CD_M_RVC_ITE_SET_DEF.FieldByName('INT_NOMETDF').text :=
          dmGeral.BUS_CD_C_TDF.FieldByName('DESCRICAO').Text;

          dmGeral.PCP_CD_M_RVC_ITE_SET_DEF.Post;
        end;
    end;
end;

end.
