unit CAD_UN_C_CPG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions,
  Vcl.ActnList, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons,
  JvExExtCtrls, JvExtComponent, JvPanel, vcl.Wwdbedit, Datasnap.DBClient;

type
  TCAD_FM_C_CPG = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    lblAtivo: TLabel;
    lblParcelas: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    cbxAtivo: TDBCheckBox;
    gbxTipoPagamento: TDBRadioGroup;
    txtParcelas: TDBEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    txtDescPer: TwwDBEdit;
    lblPerdesc: TLabel;
    gbSgq: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    chkPermDescEsp: TDBCheckBox;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_CPG: TCAD_FM_C_CPG;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_CPG.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CPG);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_CPG.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CPG) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_CPG.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CPG) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_CPG.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CPG);
end;

procedure TCAD_FM_C_CPG.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_CPG.FieldByName('ID_CONDICAO_PAG').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_CPG);
  inherited;
  dmGeral.CAD_CD_C_CPG.Close;
  dmGeral.CAD_CD_C_CPG.Data :=
  dmGeral.CAD_CD_C_CPG.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_CPG.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_CPG.Close;
    dmGeral.CAD_CD_C_CPG.Data :=
    dmGeral.CAD_CD_C_CPG.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_CPG.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_CPG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_CPG.Close;
  FreeAndNil(CAD_FM_C_CPG);
end;

procedure TCAD_FM_C_CPG.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_CPG.Close;
  dmGeral.CAD_CD_C_CPG.Data := dmGeral.CAD_CD_C_CPG.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_CPG.Open;
end;

procedure TCAD_FM_C_CPG.FormShow(Sender: TObject);
begin
  inherited;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean) then
      begin
        gbSgq.visible := true;

      end;
end;

procedure TCAD_FM_C_CPG.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
