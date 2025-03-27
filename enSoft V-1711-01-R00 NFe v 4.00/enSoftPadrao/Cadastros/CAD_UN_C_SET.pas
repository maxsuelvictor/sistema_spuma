unit CAD_UN_C_SET;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, vcl.wwdblook, JvExExtCtrls, JvExtComponent, JvPanel,
  Datasnap.DBClient;

type
  TCAD_FM_C_SET = class(TPAD_FM_X_PAD)
    lblDescricao: TLabel;
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    chkControlaLote: TDBCheckBox;
    lblControlaLote: TLabel;
    cbbTipo: TwwDBLookupCombo;
    Label1: TLabel;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbTipoEnter(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_SET: TCAD_FM_C_SET;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_SET.acAdicionaExecute(Sender: TObject);
begin
  inherited;

  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_SET);
  txtDescricao.SetFocus;

end;

procedure TCAD_FM_C_SET.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_SET) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;

end;

procedure TCAD_FM_C_SET.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_SET) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_SET.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_SET);
end;

procedure TCAD_FM_C_SET.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_SET.FieldByName('ID_SETOR').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_SET);
  inherited;
  dmGeral.CAD_CD_C_SET.Close;
  dmGeral.CAD_CD_C_SET.Data :=
  dmGeral.CAD_CD_C_SET.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_SET.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_SET.Close;
    dmGeral.CAD_CD_C_SET.Data :=
    dmGeral.CAD_CD_C_SET.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_SET.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_SET.cbbTipoEnter(Sender: TObject);
begin
  inherited;
  cbbTipo.DropDown;
end;

procedure TCAD_FM_C_SET.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_SET.Close;
  FreeAndNil(CAD_FM_C_SET);
end;

procedure TCAD_FM_C_SET.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_SET.Close;
  dmGeral.CAD_CD_C_SET.Data := dmGeral.CAD_CD_C_SET.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_SET.Open;

  dmGeral.BUS_PR_X_SE1;
end;

procedure TCAD_FM_C_SET.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
