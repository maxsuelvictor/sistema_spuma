unit CAD_UN_C_GRP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit;

type
  TCAD_FM_C_GRP = class(TPAD_FM_X_PAD)
    Label1: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label2: TLabel;
    txtDescricao: TwwDBEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbPesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_GRP: TCAD_FM_C_GRP;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_GRP.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_GRP);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_GRP.acAlterarExecute(Sender: TObject);
begin
  inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_GRP) then
     begin
       inherited;
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_GRP.acCancelarExecute(Sender: TObject);
begin
  inherited;
    if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_GRP) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_GRP.acExcluirExecute(Sender: TObject);
begin
  inherited;
    Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_GRP);
end;

procedure TCAD_FM_C_GRP.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_GRP.FieldByName('ID_CODIGO').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_GRP);
  inherited;
  dmGeral.CAD_CD_C_GRP.Close;
  dmGeral.CAD_CD_C_GRP.Data :=
  dmGeral.CAD_CD_C_GRP.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_GRP.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
      dmGeral.CAD_CD_C_GRP.Close;
      dmGeral.CAD_CD_C_GRP.Data :=
      dmGeral.CAD_CD_C_GRP.DataRequest(
          VarArrayOf([cbbPesquisa.ItemIndex,txtPesquisa.Text]));  // Busca o caixa aberto para o funcionário especificado.

    finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_GRP.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex = 0 then
    txtPesquisa.NumbersOnly := true;
  if cbbPesquisa.ItemIndex = 1 then
    txtPesquisa.NumbersOnly := false;

end;

procedure TCAD_FM_C_GRP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_C_GRP);
end;

procedure TCAD_FM_C_GRP.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_GRP.Close;
  dmGeral.CAD_CD_C_GRP.Data := dmGeral.CAD_CD_C_GRP.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_GRP.Open;
end;

procedure TCAD_FM_C_GRP.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_GRP.Close;
  dmGeral.CAD_CD_C_GRP.Data :=
  dmGeral.CAD_CD_C_GRP.DataRequest(
          VarArrayOf([0, '']));
end;

end.
