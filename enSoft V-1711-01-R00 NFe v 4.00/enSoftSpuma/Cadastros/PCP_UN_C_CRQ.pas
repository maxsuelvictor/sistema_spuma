unit PCP_UN_C_CRQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit,
  vcl.wwdblook, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, Data.DB, vcl.wwdatsrc,
  System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls, cxButtons, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvDBControls, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TPCP_FM_C_CRQ = class(TPAD_FM_X_PAD)
    lblControle: TLabel;
    lblResponsavel: TLabel;
    lblDataCriacao: TLabel;
    txtControle: TDBEdit;
    cbbResponsavel: TwwDBLookupCombo;
    gbListaMestra: TGroupBox;
    btnAddRegistro: TBitBtn;
    grdRegistro: TwwDBGrid;
    lblDataAtualizacao: TLabel;
    lblObservacao: TLabel;
    txtObservacao: TDBEdit;
    PCP_DS_M_CRQ_REG: TwwDataSource;
    grdRegistroIButton: TwwIButton;
    dpkDataCriacao: TJvDBDateEdit;
    dpkDataAtualizacao: TJvDBDateEdit;
    lblListaMestra: TLabel;
    lblSetor: TLabel;
    lblForma: TLabel;
    lblIndexacao: TLabel;
    lblMetodoRecuperacao: TLabel;
    lblTempoRetencao: TLabel;
    lblDisposicao: TLabel;
    cbbListaMestra: TwwDBLookupCombo;
    cbbSetor: TwwDBLookupCombo;
    cbbForma: TwwDBLookupCombo;
    cbbIndexacao: TwwDBLookupCombo;
    cbbMetodoRecuperacao: TwwDBLookupCombo;
    cbbTempoRetencao: TwwDBLookupCombo;
    cbbDisposicao: TwwDBLookupCombo;
    procedure cbbResponsavelEnter(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAddRegistroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure grdRegistroMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdRegistroIButtonClick(Sender: TObject);
    procedure cbbFormaEnter(Sender: TObject);
    procedure cbbIndexacaoEnter(Sender: TObject);
    procedure cbbMetodoRecuperacaoEnter(Sender: TObject);
    procedure cbbTempoRetencaoEnter(Sender: TObject);
    procedure cbbDisposicaoEnter(Sender: TObject);
    procedure cbbDisposicaoExit(Sender: TObject);
    procedure txtPesquisaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_C_CRQ: TPCP_FM_C_CRQ;

implementation

{$R *.dfm}

uses uDmGeral, uProxy;

procedure TPCP_FM_C_CRQ.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CRQ);
  cbbResponsavel.SetFocus;
end;

procedure TPCP_FM_C_CRQ.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CRQ) then
      begin
        inherited;
        cbbResponsavel.SetFocus;
      end;
end;

procedure TPCP_FM_C_CRQ.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CRQ) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbResponsavel.SetFocus;
     end;
end;

procedure TPCP_FM_C_CRQ.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_CRQ);
end;

procedure TPCP_FM_C_CRQ.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmGeral.PCP_CD_M_CRQ.FieldByName('ID_CRQ').AsString;
   DmGeral.Grava(dmGeral.PCP_CD_M_CRQ);
   inherited;
   dmGeral.PCP_CD_M_CRQ.Close;
   dmGeral.PCP_CD_M_CRQ.Data :=
   dmGeral.PCP_CD_M_CRQ.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_CRQ.btnAddRegistroClick(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_CRQ_REG.Insert;
  cbbListaMestra.Enabled := True;
  cbbListaMestra.SetFocus;
end;

procedure TPCP_FM_C_CRQ.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.PCP_CD_M_CRQ.Close;
    dmGeral.PCP_CD_M_CRQ.Data :=
    dmGeral.PCP_CD_M_CRQ.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_CRQ.cbbDisposicaoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_CR5;
  cbbDisposicao.DropDown;
end;

procedure TPCP_FM_C_CRQ.cbbDisposicaoExit(Sender: TObject);
var
  registro: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if (btnAddRegistro.Focused) or (grdRegistro.Focused) or (cbbListaMestra.Focused) or
     (cbbSetor.Focused) or (cbbForma.Focused) or (cbbIndexacao.Focused) or
     (cbbMetodoRecuperacao.Focused) or (cbbTempoRetencao.Focused) or
     (cbbDisposicao.Focused) or (not grdRegistroIButton.Enabled) then
     begin
       abort;
     end;

  registro := dmGeral.PCP_CD_M_CRQ_REG.FieldByName('ID_LME_D').AsString;
  dmGeral.PCP_CD_M_CRQ_REG.Post;
  btnGrava.SetFocus;
  dmGeral.PCP_CD_M_CRQ_REG.locate('ID_LME_D',registro,[]);

end;

procedure TPCP_FM_C_CRQ.cbbFormaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_CR1;
  cbbForma.DropDown;
end;

procedure TPCP_FM_C_CRQ.cbbIndexacaoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_CR2;
  cbbIndexacao.DropDown;
end;

procedure TPCP_FM_C_CRQ.cbbMetodoRecuperacaoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_CR3;
  cbbMetodoRecuperacao.DropDown;
end;

procedure TPCP_FM_C_CRQ.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_C_CRQ.cbbResponsavelEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel.DropDown;
end;

procedure TPCP_FM_C_CRQ.cbbTempoRetencaoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_CR4;
  cbbTempoRetencao.DropDown;
end;

procedure TPCP_FM_C_CRQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_CRQ.Close;
  FreeAndNil(PCP_FM_C_CRQ);
end;

procedure TPCP_FM_C_CRQ.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_CRQ.Close;
  dmGeral.PCP_CD_M_CRQ.Data := dmGeral.PCP_CD_M_CRQ.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_CRQ.Open;

  dmGeral.BusFuncionario(1,'%');
end;

procedure TPCP_FM_C_CRQ.grdRegistroIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdRegistroIButton.Enabled := False;
     if dmGeral.PCP_CD_M_CRQ_REG.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.PCP_CD_M_CRQ_REG.Delete;
     dmGeral.PCP_CD_M_CRQ_REG.Edit;
  finally
    grdRegistroIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_C_CRQ.grdRegistroMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  dmGeral.PCP_CD_M_CRQ_REG.Cancel;

  if dmGeral.PCP_CD_M_CRQ_REG.IsEmpty then
     begin
       cbbListaMestra.Enabled := True;
       dmGeral.PCP_CD_M_CRQ_REG.Append;
       cbbListaMestra.SetFocus;
     end
  else
    begin
     cbbListaMestra.Enabled := False;
     dmGeral.PCP_CD_M_CRQ_REG.Edit;
     cbbListaMestra.SetFocus;
    end;
end;

procedure TPCP_FM_C_CRQ.txtPesquisaExit(Sender: TObject);
begin
  inherited;
  btnFiltroClick(Self);
end;

end.
