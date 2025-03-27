unit PCP_UN_M_LPR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, Vcl.DBCtrls,
  vcl.Wwdbedit, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, vcl.wwdblook, Vcl.Mask, Vcl.ImgList,
  Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, cxButtons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvDBControls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_M_LPR = class(TPAD_FM_X_PAD)
    lblControle: TLabel;
    lblData: TLabel;
    txtControle: TDBEdit;
    lblHoraInicio: TLabel;
    txtHoraInicio: TwwDBEdit;
    lblRespReuniao: TLabel;
    cbbRespReuniao: TwwDBLookupCombo;
    lblObservacao: TLabel;
    txtObservacao: TwwDBEdit;
    txtConteudo: TDBMemo;
    lblMotivo: TLabel;
    gbFuncionarios: TGroupBox;
    btnAddFuncionario: TBitBtn;
    grdFuncionarios: TwwDBGrid;
    PCP_DS_M_LPR_FUN: TwwDataSource;
    lblHoraFim: TLabel;
    txtHoraFim: TwwDBEdit;
    grdFuncionariosIButton: TwwIButton;
    dpkDataPresenca: TJvDBDateEdit;
    txtCargaHoraria: TwwDBEdit;
    lbCargaHoraria: TLabel;
    pnlFuncionarios: TPanel;
    lblNome: TLabel;
    cbbFuncionario: TwwDBLookupCombo;
    cbbTipo: TJvDBComboBox;
    lblTipo: TLabel;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    procedure cbbRespReuniaoEnter(Sender: TObject);
    procedure cbbRespReuniaoExit(Sender: TObject);
    procedure cbbFuncionarioEnter(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure btnAddFuncionarioClick(Sender: TObject);
    procedure pnlFuncionariosExit(Sender: TObject);
    procedure grdFuncionariosIButtonClick(Sender: TObject);
    procedure grdFuncionariosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbFuncionarioExit(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_LPR: TPCP_FM_M_LPR;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPCP_FM_M_LPR.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_LPR);

  pnlFuncionarios.Enabled := False;
  dpkDataPresenca.SetFocus;
end;

procedure TPCP_FM_M_LPR.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_LPR) then
      begin
        inherited;
        pnlFuncionarios.Enabled := False;
        dpkDataPresenca.SetFocus;
      end;
end;

procedure TPCP_FM_M_LPR.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_LPR) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       dpkDataPresenca.SetFocus;
     end;
end;

procedure TPCP_FM_M_LPR.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_LPR);
end;

procedure TPCP_FM_M_LPR.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.PCP_CD_M_LPR.FieldByName('ID_LPR').AsString;
  DmGeral.Grava(dmGeral.PCP_CD_M_LPR);
  inherited;
  dmGeral.PCP_CD_M_LPR.Close;
  dmGeral.PCP_CD_M_LPR.Data :=
  dmGeral.PCP_CD_M_LPR.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_M_LPR.btnAddFuncionarioClick(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_LPR_FUN.Insert;
  pnlFuncionarios.Enabled := True;
  cbbFuncionario.SetFocus;
end;

procedure TPCP_FM_M_LPR.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.PCP_CD_M_LPR.Close;
    dmGeral.PCP_CD_M_LPR.Data :=
    dmGeral.PCP_CD_M_LPR.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_LPR.cbbFuncionarioEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario2(1,'%');
  cbbFuncionario.DropDown;
end;

procedure TPCP_FM_M_LPR.cbbFuncionarioExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        Exit;
     end;

  dmGeral.PCP_CD_M_LPR_FUN.FieldByName('INT_NOMERES').text := '';

  if (dmGeral.PCP_CD_M_LPR_FUN.FieldByName('ID_FUNCIONARIO').text = '') or
     (dmGeral.PCP_CD_M_LPR_FUN.FieldByName('ID_FUNCIONARIO').AsInteger = 0) then
     begin
        if grdFuncionarios.Focused then
           begin
             Exit;
           end;

        if not grdFuncionariosIButton.Enabled then
           Exit;

        if (btnAddFuncionario.Focused) then
           begin
             Showmessage('O campo "Funcionário" deve ser preenchido.');
             cbbFuncionario.SetFocus;
             Exit;
           end
        else
           begin
             pnlFuncionarios.Enabled := false;
             Exit;
           end;
     end
  else
     begin
       if dmGeral.PCP_CD_M_LPR_FUN.state in [dsBrowse] then
          dmGeral.PCP_CD_M_LPR_FUN.edit;
     end;

  dmGeral.BusFuncionario(0,dmGeral.PCP_CD_M_LPR_FUN.FieldByName('ID_FUNCIONARIO').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       Showmessage('Funcionário não encontrado.');
       dmGeral.PCP_CD_M_LPR_FUN.FieldByName('ID_FUNCIONARIO').Text := '';
       cbbFuncionario.SetFocus;
       Exit;
     end;

  dmGeral.PCP_CD_M_LPR_FUN.FieldByName('INT_NOMERES').text :=
          dmGeral.BUS_CD_C_FUN.FieldByName('NOME').Text;

  dmGeral.PCP_CD_M_LPR_FUN.Post;
  pnlFuncionarios.Enabled := False;
  btnAddFuncionario.SetFocus;
end;

procedure TPCP_FM_M_LPR.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_M_LPR.cbbRespReuniaoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbRespReuniao.DropDown;
end;

procedure TPCP_FM_M_LPR.cbbRespReuniaoExit(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(0,dmGeral.PCP_CD_M_LPR.FieldByName('ID_RESP_REUNIAO').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       Showmessage('Responsável não encontrado.');
       dmGeral.PCP_CD_M_LPR.FieldByName('ID_RESP_REUNIAO').Text := '';
       cbbRespReuniao.SetFocus;
       Exit;
     end
  else
     begin
       dmGeral.PCP_CD_M_LPR.FieldByName('INT_NOMERES').AsString :=
              dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
     end;
end;
procedure TPCP_FM_M_LPR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_LPR.Close;
  FreeAndNil(PCP_FM_M_LPR);
end;

procedure TPCP_FM_M_LPR.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_LPR.Close;
  dmGeral.PCP_CD_M_LPR.Data := dmGeral.PCP_CD_M_LPR.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_LPR.Open;

  dmGeral.BusFuncionario(1,'%');
  dmGeral.BusFuncionario2(1,'%');
end;

procedure TPCP_FM_M_LPR.grdFuncionariosIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdFuncionariosIButton.Enabled := False;
     if dmGeral.PCP_CD_M_LPR_FUN.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmGeral.PCP_CD_M_LPR_FUN.Delete;
     dmGeral.PCP_CD_M_LPR_FUN.Edit;
  finally
    grdFuncionariosIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_LPR.grdFuncionariosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlFuncionarios.Enabled = False then
     pnlFuncionarios.Enabled := True;

  dmGeral.PCP_CD_M_LPR_FUN.Cancel;

  if dmGeral.PCP_CD_M_LPR_FUN.IsEmpty then
     begin
       dmGeral.PCP_CD_M_LPR_FUN.Append;
       pnlFuncionarios.Enabled := True;
       pnlFuncionarios.SetFocus;
     end
  else
     begin
       dmGeral.PCP_CD_M_LPR_FUN.Edit;
       pnlFuncionarios.Enabled := True;
     end;
end;

procedure TPCP_FM_M_LPR.pnlFuncionariosExit(Sender: TObject);
begin
  inherited;
  if (btnAddFuncionario.Focused) or (grdFuncionarios.Focused) or (not grdFuncionariosIButton.Enabled) then
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

          dmGeral.PCP_CD_M_LPR_FUN.Cancel;
          dmGeral.PCP_CD_M_LPR_FUN.Edit;
        finally
           pnlFuncionarios.Enabled := False;
        end;
      end;
end;

procedure TPCP_FM_M_LPR.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
