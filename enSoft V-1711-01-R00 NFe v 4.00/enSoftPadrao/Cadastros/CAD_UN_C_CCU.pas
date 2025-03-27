unit CAD_UN_C_CCU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TCAD_FM_C_CCU = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    Label1: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations nada}
  end;

var
  CAD_FM_C_CCU: TCAD_FM_C_CCU;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_CCU.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CCU);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_CCU.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CCU) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_CCU.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CCU) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_CCU.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CCU);
end;

procedure TCAD_FM_C_CCU.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_CCU.FieldByName('ID_CCUSTO').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_CCU);
  inherited;
  dmGeral.CAD_CD_C_CCU.Close;
  dmGeral.CAD_CD_C_CCU.Data :=
  dmGeral.CAD_CD_C_CCU.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_CCU.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_CCU.Close;
    dmGeral.CAD_CD_C_CCU.Data :=
    dmGeral.CAD_CD_C_CCU.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_CCU.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_CCU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_CCU.Close;
  FreeAndNil(CAD_FM_C_CCU);
end;

procedure TCAD_FM_C_CCU.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_CCU.Close;
  dmGeral.CAD_CD_C_CCU.Data := dmGeral.CAD_CD_C_CCU.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_CCU.Open;
end;

procedure TCAD_FM_C_CCU.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
