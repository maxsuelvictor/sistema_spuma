unit PCP_UN_M_VVE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, vcl.wwdblook,
  Vcl.Mask, Vcl.DBCtrls, JvExMask, JvToolEdit, JvDBControls, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TPCP_FM_M_VVE = class(TPAD_FM_X_PAD)
    lblControle: TLabel;
    txtControle: TDBEdit;
    cbbVeiculo: TwwDBLookupCombo;
    lblVeiculo: TLabel;
    lblLimpeza: TLabel;
    lblRevestimento: TLabel;
    lblBau: TLabel;
    lblMadeiramento: TLabel;
    lblResponsavel: TLabel;
    lblPrazoAdequacao: TLabel;
    cbbResponsavel: TwwDBLookupCombo;
    chkLimpeza: TDBCheckBox;
    chkRevestimento: TDBCheckBox;
    chkMadeiramento: TDBCheckBox;
    chkBau: TDBCheckBox;
    txtPrazoAdequacao: TDBEdit;
    lblDataFim: TLabel;
    dpkDataCadastro: TJvDBDateEdit;
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
    procedure cbbVeiculoEnter(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_VVE: TPCP_FM_M_VVE;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPCP_FM_M_VVE.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_VVE);

  dmGeral.PCP_CD_M_VVE.FieldByName('DTA_CADASTRO').AsDateTime := xDataSis;
  cbbVeiculo.SetFocus;
end;

procedure TPCP_FM_M_VVE.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_VVE) then
      begin
        inherited;
        cbbVeiculo.SetFocus;
      end;
end;

procedure TPCP_FM_M_VVE.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_VVE) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbVeiculo.SetFocus;
     end;
end;

procedure TPCP_FM_M_VVE.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_VVE);
end;

procedure TPCP_FM_M_VVE.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.PCP_CD_M_VVE.FieldByName('ID_VVE').AsString;
  DmGeral.Grava(dmGeral.PCP_CD_M_VVE);
  inherited;
  dmGeral.PCP_CD_M_VVE.Close;
  dmGeral.PCP_CD_M_VVE.Data :=
  dmGeral.PCP_CD_M_VVE.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_M_VVE.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.PCP_CD_M_VVE.Close;
    dmGeral.PCP_CD_M_VVE.Data :=
    dmGeral.PCP_CD_M_VVE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_VVE.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_M_VVE.cbbResponsavelEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbResponsavel.DropDown;
end;

procedure TPCP_FM_M_VVE.cbbVeiculoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusVeiculo(1,'%');
  cbbVeiculo.DropDown;
end;

procedure TPCP_FM_M_VVE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_VVE.Close;
  FreeAndNil(PCP_FM_M_VVE);
end;

procedure TPCP_FM_M_VVE.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_VVE.Close;
  dmGeral.PCP_CD_M_VVE.Data := dmGeral.PCP_CD_M_VVE.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_VVE.Open;

  dmGeral.BusVeiculo(1,'%');
  dmGeral.BusFuncionario(1,'%');
end;

procedure TPCP_FM_M_VVE.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
