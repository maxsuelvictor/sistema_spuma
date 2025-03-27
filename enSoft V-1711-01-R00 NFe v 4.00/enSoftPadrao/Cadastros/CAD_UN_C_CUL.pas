unit CAD_UN_C_CUL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit;

type
  TCAD_FM_C_CUL = class(TPAD_FM_X_PAD)
    txtCodigo: TwwDBEdit;
    Label1: TLabel;
    lblDescricao: TLabel;
    txtDescricao: TwwDBEdit;
    procedure btnFiltroClick(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_CUL: TCAD_FM_C_CUL;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_CUL.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CUL);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_CUL.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ITE) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_CUL.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CUL) then
    begin
      inherited;
      dbGrid.SetFocus;
    end
  else
    begin
      txtDescricao.SetFocus;
    end;
end;

procedure TCAD_FM_C_CUL.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CUL);
end;

procedure TCAD_FM_C_CUL.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_CUL.FieldByName('ID_CULTURA').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_CUL);
  inherited;
  dmGeral.CAD_CD_C_CUL.Close;
  dmGeral.CAD_CD_C_CUL.Data :=
  dmGeral.CAD_CD_C_CUL.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_CUL.btnFiltroClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
  try
    inherited;

    dmGeral.CAD_CD_C_CUL.Close;
    dmGeral.CAD_CD_C_CUL.Data :=
    dmGeral.CAD_CD_C_CUL.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_CUL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_C_CUL);
end;

procedure TCAD_FM_C_CUL.FormShow(Sender: TObject);
begin
  inherited;
   dmGeral.CAD_CD_C_CUL.Close;
    dmGeral.CAD_CD_C_CUL.Data :=
    dmGeral.CAD_CD_C_CUL.DataRequest(
            VarArrayOf([0, '0']));
end;

end.
