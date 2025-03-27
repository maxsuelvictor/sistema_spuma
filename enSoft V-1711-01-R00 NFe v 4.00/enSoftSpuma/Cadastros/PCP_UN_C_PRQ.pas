unit PCP_UN_C_PRQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  JvDBControls, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, vcl.wwdblook, vcl.Wwdbedit,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_C_PRQ = class(TPAD_FM_X_PAD)
    lblGrupo: TLabel;
    cbbGrupo: TwwDBLookupCombo;
    lblDataCadastro: TLabel;
    lblItem: TLabel;
    lblResponsavel: TLabel;
    txtItem: TJvDBComboEdit;
    txtItemDescricao: TDBText;
    txtResponsavel: TJvDBComboEdit;
    txtResponsavelDescricao: TDBText;
    dpkDataCadastro: TJvDBDateEdit;
    dsoEsp: TwwDataSource;
    btnAddEspecificacao: TBitBtn;
    dgEspecificacao: TwwDBGrid;
    dgEspecificacaoIButton: TwwIButton;
    gbEspecificacao: TGroupBox;
    lblEspecificacao: TLabel;
    lblMinimo: TLabel;
    lblMaximo: TLabel;
    lblMetodoVerificacao: TLabel;
    lblAmostragem: TLabel;
    lblManuseioTransporte: TLabel;
    lblArmazenamento: TLabel;
    lblPreservacao: TLabel;
    cbbEspecificacao: TwwDBLookupCombo;
    txtMetodoVerificacao: TwwDBEdit;
    txtAmostragem: TwwDBEdit;
    txtManuseioTransporte: TwwDBEdit;
    txtArmazenamento: TwwDBEdit;
    txtPreservacao: TwwDBEdit;
    txtMinimo: TwwDBEdit;
    txtMaximo: TwwDBEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbGrupoEnter(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtItemButtonClick(Sender: TObject);
    procedure txtItemExit(Sender: TObject);
    procedure txtResponsavelButtonClick(Sender: TObject);
    procedure txtResponsavelExit(Sender: TObject);
    procedure btnAddEspecificacaoClick(Sender: TObject);
    procedure dgEspecificacaoIButtonClick(Sender: TObject);
    procedure dgEspecificacaoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtPreservacaoExit(Sender: TObject);
    procedure cbbEspecificacaoEnter(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbEspecificacaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_C_PRQ: TPCP_FM_C_PRQ;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE, PSQ_UN_X_FUN, uDmSgq;

procedure TPCP_FM_C_PRQ.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_PRQ);
  cbbGrupo.SetFocus;
end;

procedure TPCP_FM_C_PRQ.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_PRQ) then
      begin
        inherited;
        cbbGrupo.SetFocus;
      end;
end;

procedure TPCP_FM_C_PRQ.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_PRQ) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbGrupo.SetFocus;
     end;
end;

procedure TPCP_FM_C_PRQ.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_PRQ);
end;

procedure TPCP_FM_C_PRQ.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_PRQ.FieldByName('ID_PRQ').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_PRQ);
   inherited;
   dmSgq.PCP_CD_C_PRQ.Close;
   dmSgq.PCP_CD_C_PRQ.Data :=
   dmSgq.PCP_CD_C_PRQ.DataRequest(
           VarArrayOf([0, codigo]));
end;


procedure TPCP_FM_C_PRQ.btnAddEspecificacaoClick(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_PRQ_ESP.Insert;
  cbbEspecificacao.Enabled := true;
  cbbEspecificacao.SetFocus;
end;

procedure TPCP_FM_C_PRQ.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_PRQ.Close;
    dmSgq.PCP_CD_C_PRQ.Data :=
    dmSgq.PCP_CD_C_PRQ.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_PRQ.cbbEspecificacaoEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BusEspecificacao(1,'%');
  cbbEspecificacao.DropDown;
end;

procedure TPCP_FM_C_PRQ.cbbEspecificacaoExit(Sender: TObject);
begin
  inherited;
  if dmSgq.PCP_CD_C_PRQ_ESP.FieldByName('ID_ESPECIFICACAO').Text = '' then
     begin
       ShowMessage('O campo "Especificação" deve ser prenchido.');
       cbbEspecificacao.SetFocus;
       Exit;
     end;

  dmSgq.BusEspecificacao(0,dmSgq.PCP_CD_C_PRQ_ESP.FieldByName('ID_ESPECIFICACAO').Text);
  if dmSgq.BUS_CD_C_ESP.IsEmpty then
     begin
       ShowMessage('Especificação não encontrada.');
       cbbEspecificacao.SetFocus;
       Exit;
     end
  else
    begin
      dmSgq.PCP_CD_C_PRQ_ESP.FieldByName('INT_NOMEESP').text :=
              dmSgq.BUS_CD_C_ESP.FieldByName('DESCRICAO').Text;
    end;
end;

procedure TPCP_FM_C_PRQ.cbbGrupoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusGrupoEst(1,'%');
  cbbGrupo.DropDown;
end;

procedure TPCP_FM_C_PRQ.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,1] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPCP_FM_C_PRQ.dgEspecificacaoIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgEspecificacaoIButton.Enabled := False;
     if dmSgq.PCP_CD_C_PRQ_ESP.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmSgq.PCP_CD_C_PRQ_ESP.Delete;
     dmSgq.PCP_CD_C_PRQ_ESP.Edit;
  finally
    dgEspecificacaoIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_C_PRQ.dgEspecificacaoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  dmSgq.PCP_CD_C_PRQ_ESP.Cancel;

  if dmSgq.PCP_CD_C_PRQ_ESP.IsEmpty then
     begin
       cbbEspecificacao.Enabled := True;
       dmSgq.PCP_CD_C_PRQ_ESP.Append;
       cbbEspecificacao.SetFocus;
     end
  else
    begin
     cbbEspecificacao.Enabled := False;
     dmSgq.PCP_CD_C_PRQ_ESP.Edit;
     cbbEspecificacao.SetFocus;
    end;
end;

procedure TPCP_FM_C_PRQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_PRQ.Close;
  FreeAndNil(PCP_FM_C_PRQ);
end;

procedure TPCP_FM_C_PRQ.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_PRQ.Close;
  dmSgq.PCP_CD_C_PRQ.Data := dmSgq.PCP_CD_C_PRQ.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_PRQ.Open;

  dmGeral.BusGrupoEst(1,'%');
    dmSgq.BusEspecificacao(1,'%');
end;

procedure TPCP_FM_C_PRQ.txtItemButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmSgq.PCP_CD_C_PRQ.FieldByName('ID_ITEM').AsInteger :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmSgq.PCP_CD_C_PRQ.FieldByName('INT_NOMEITE').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_C_PRQ.txtItemExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmSgq.PCP_CD_C_PRQ.FieldByName('INT_NOMEITE').Text := '';

    dmGeral.BUS_CD_C_ITE.Close;
    dmGeral.BUS_CD_C_ITE.Data :=
    dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtItem.Text]));

    dmSgq.PCP_CD_C_PRQ.FieldByName('INT_NOMEITE').Text :=
         dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
end;

procedure TPCP_FM_C_PRQ.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_C_PRQ.txtPreservacaoExit(Sender: TObject);
var
  especificacao: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if btnAddEspecificacao.Focused or cbbEspecificacao.Focused or txtMinimo.Focused or txtMaximo.Focused
     or txtMetodoVerificacao.Focused or txtAmostragem.Focused or txtManuseioTransporte.Focused
     or txtArmazenamento.Focused or txtPreservacao.Focused then
     begin
       abort;
     end;

  especificacao := dmSgq.PCP_CD_C_PRQ_ESP.FieldByName('ID_PRQ_ESP').AsString;
  dmSgq.PCP_CD_C_PRQ_ESP.Post;
  btnAddEspecificacao.SetFocus;

  dmSgq.PCP_CD_C_CIN_LNS.locate('ID_CIN_LNS',especificacao,[]);
end;

procedure TPCP_FM_C_PRQ.txtResponsavelButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
   PSQ_FM_X_FUN.ShowModal;
      if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
         begin
           dmSgq.PCP_CD_C_PRQ.FieldByName('ID_RESPONSAVEL').AsInteger :=
              PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;

           dmSgq.PCP_CD_C_PRQ.FieldByName('INT_NOMEFUN').Text :=
              PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_FUN.Free;
end;

procedure TPCP_FM_C_PRQ.txtResponsavelExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmSgq.PCP_CD_C_PRQ.FieldByName('INT_NOMEFUN').Text := '';

    dmGeral.BUS_CD_C_FUN.Close;
    dmGeral.BUS_CD_C_FUN.Data :=
    dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, txtResponsavel.Text]));

    dmSgq.PCP_CD_C_PRQ.FieldByName('INT_NOMEFUN').Text :=
         dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
end;

end.
