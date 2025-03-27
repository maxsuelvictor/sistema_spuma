unit CAD_UN_C_PAI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Datasnap.DBClient, Vcl.ImgList, vcl.wwdatsrc, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, cxButtons, Vcl.ExtCtrls, vcl.Wwdbedit;

type
  TCAD_FM_C_PAI = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    txtCodigo: TwwDBEdit;
    txtDescricao: TwwDBEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_PAI: TCAD_FM_C_PAI;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_PAI.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PAI);
  txtCodigo.Enabled := true;
  txtCodigo.SetFocus;
end;

procedure TCAD_FM_C_PAI.acAlterarExecute(Sender: TObject);
begin
  inherited;
 if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PAI) then
     begin
       inherited;
       txtCodigo.Enabled := False;
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_PAI.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PAI) then
     begin
       inherited;
       dbGrid.SetFocus;
     end;
end;

procedure TCAD_FM_C_PAI.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PAI);
end;

procedure TCAD_FM_C_PAI.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_PAI.FieldByName('ID_PAIS').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_PAI);
  inherited;
  dmGeral.CAD_CD_C_PAI.Close;
  dmGeral.CAD_CD_C_PAI.Data :=
  dmGeral.CAD_CD_C_PAI.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_PAI.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_PAI.Close;
    dmGeral.CAD_CD_C_PAI.Data :=
    dmGeral.CAD_CD_C_PAI.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_PAI.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  if (cbbPesquisa.ItemIndex = 0) then
    begin
      txtPesquisa.NumbersOnly := true;
    end
  else
    begin
      txtPesquisa.NumbersOnly := false;
    end;
  txtPesquisa.Text := '';
end;

procedure TCAD_FM_C_PAI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_PAI.Close;
  FreeAndNil(CAD_FM_C_PAI);
end;

procedure TCAD_FM_C_PAI.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_PAI.Close;
  dmGeral.CAD_CD_C_PAI.Data :=
  dmGeral.CAD_CD_C_PAI.DataRequest(
          VarArrayOf([0, '']));
end;

end.
