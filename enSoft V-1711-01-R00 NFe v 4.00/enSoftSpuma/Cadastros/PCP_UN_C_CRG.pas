unit PCP_UN_C_CRG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, JvDBControls, JvExMask,
  JvToolEdit, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, cxButtons, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, vcl.wwdblook, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TPCP_FM_C_CRG = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    Panel1: TPanel;
    lblSetor: TLabel;
    txtSetorDescricao: TDBText;
    lblObjetivo: TLabel;
    lblAtribuicoes: TLabel;
    lblRequisitos: TLabel;
    lblAprovador: TLabel;
    lblAprovacao: TLabel;
    txtSetor: TJvDBComboEdit;
    txtObjetivo: TDBMemo;
    txtAtribuicoes: TDBMemo;
    txtRequisitos: TDBMemo;
    DBEdit1: TDBEdit;
    dpkAprovacao: TJvDBDateEdit;
    cbbTipo: TwwDBLookupCombo;
    lblTipo: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtSetorButtonClick(Sender: TObject);
    procedure txtSetorExit(Sender: TObject);
    procedure txtPesquisaExit(Sender: TObject);
    procedure cbbTipoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_C_CRG: TPCP_FM_C_CRG;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FUN, PSQ_UN_X_SET, uProxy;

procedure TPCP_FM_C_CRG.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_C_CRG);
  txtDescricao.SetFocus;
end;

procedure TPCP_FM_C_CRG.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_C_CRG) then
     begin
       inherited;
       txtDescricao.SetFocus;
     end;
end;

procedure TPCP_FM_C_CRG.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_C_CRG) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TPCP_FM_C_CRG.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_C_CRG);
end;

procedure TPCP_FM_C_CRG.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.PCP_CD_C_CRG.FieldByName('ID_CARGO').AsString;
  DmGeral.Grava(dmGeral.PCP_CD_C_CRG);
  inherited;
  dmGeral.PCP_CD_C_CRG.Close;
  dmGeral.PCP_CD_C_CRG.Data :=
  dmGeral.PCP_CD_C_CRG.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_CRG.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.PCP_CD_C_CRG.Close;
    dmGeral.PCP_CD_C_CRG.Data :=
    dmGeral.PCP_CD_C_CRG.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_CRG.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_C_CRG.cbbTipoEnter(Sender: TObject);
begin
  inherited;
  cbbTipo.DropDown;
end;

procedure TPCP_FM_C_CRG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_RAM.Close;
  FreeAndNil(PCP_FM_C_CRG);
end;

procedure TPCP_FM_C_CRG.FormCreate(Sender: TObject);
begin
  inherited;

  dmGeral.PCP_CD_C_CRG.Close;
  dmGeral.PCP_CD_C_CRG.Data := dmGeral.PCP_CD_C_CRG.DataRequest(VarArrayOf([1, '']));
  dmGeral.PCP_CD_C_CRG.Open;

  dmGeral.BUS_PR_X_CT1;

end;

procedure TPCP_FM_C_CRG.FormShow(Sender: TObject);
begin
  inherited;
  {if (dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean = false) or (dmgeral.CAD_CD_C_PAR_MODctc.AsBoolean = false) then
    begin
      panel1.Enabled := false;
      panel1.Visible := false;
    end
  else
    begin
      panel1.Enabled := true;
      panel1.Visible := true;
    end;}

  if (dmgeral.CAD_CD_C_PAR_MODrev.AsBoolean = true)  then
    begin
      panel1.Enabled := false;
      panel1.Visible := false;

      lblTipo.Left := 52;
      lblTipo.Top := 50;
      cbbTipo.Left := 86;
      cbbTipo.Top := 47;
    end;
end;

procedure TPCP_FM_C_CRG.txtPesquisaExit(Sender: TObject);
begin
  inherited;
  btnFiltroClick(Self);
end;

procedure TPCP_FM_C_CRG.txtSetorButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_SET := TPSQ_FM_X_SET.Create(Self);
   PSQ_FM_X_SET.ShowModal;
      if not PSQ_FM_X_SET.BUS_CD_C_SET.IsEmpty then
         begin
           dmGeral.PCP_CD_C_CRG.FieldByName('ID_SETOR').AsInteger :=
              PSQ_FM_X_SET.BUS_CD_C_SET.FieldByName('ID_SETOR').AsInteger;

           dmGeral.PCP_CD_C_CRG.FieldByName('INT_NOMESET').Text :=
              PSQ_FM_X_SET.BUS_CD_C_SET.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_SET.Free;
end;

procedure TPCP_FM_C_CRG.txtSetorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmGeral.PCP_CD_C_CRG.FieldByName('INT_NOMESET').Text := '';

    if dmGeral.PCP_CD_C_CRG.FieldByName('ID_SETOR').Text = '' then
       begin
         ShowMessage('O campo "Setor" deve ser prenchido.');
         abort;
       end;

    dmGeral.BUS_CD_C_SET.Close;
    dmGeral.BUS_CD_C_SET.Data :=
    dmGeral.BUS_CD_C_SET.DataRequest(VarArrayOf([0, txtSetor.Text]));

    if not dmGeral.BUS_CD_C_SET.IsEmpty then
      begin
        dmGeral.PCP_CD_C_CRG.FieldByName('INT_NOMESET').Text :=
          dmGeral.BUS_CD_C_SET.FieldByName('DESCRICAO').AsString;
      end
    else
      begin
        ShowMessage('Setor não cadastrado.');
        txtSetor.text := '';
      end;

end;

end.
