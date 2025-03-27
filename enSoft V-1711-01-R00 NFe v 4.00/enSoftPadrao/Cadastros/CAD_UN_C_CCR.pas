unit CAD_UN_C_CCR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit;

type
  TCAD_FM_C_CCR = class(TPAD_FM_X_PAD)
    txtCodigo: TwwDBEdit;
    lblCodigo: TLabel;
    txtDescricao: TwwDBEdit;
    lblDescricao: TLabel;
    txtCnpj: TwwDBEdit;
    lblCnpj: TLabel;
    txtFone: TwwDBEdit;
    lblTelefone: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_CCR: TCAD_FM_C_CCR;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_CCR.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CCR);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_CCR.acAlterarExecute(Sender: TObject);
begin
  inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CCR) then
     begin
       inherited;
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_CCR.acCancelarExecute(Sender: TObject);
begin
  inherited;
     if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CCR) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_CCR.acExcluirExecute(Sender: TObject);
begin
  inherited;
   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CCR);
end;

procedure TCAD_FM_C_CCR.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  inherited;
  codigo := dmGeral.CAD_CD_C_CCR.FieldByName('ID_CCR').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_CCR);
  inherited;
  dmGeral.CAD_CD_C_CCR.Close;
  dmGeral.CAD_CD_C_CCR.Data :=
  dmGeral.CAD_CD_C_CCR.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_CCR.btnFiltroClick(Sender: TObject);
begin
  inherited;
    Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_CCR.Close;
    dmGeral.CAD_CD_C_CCR.Data :=
    dmGeral.CAD_CD_C_CCR.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_CCR.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  if cbbPesquisa.ItemIndex = 0 then
    begin
      txtPesquisa.NumbersOnly := true;
    end;
  if cbbPesquisa.ItemIndex = 1 then
    begin
      txtPesquisa.NumbersOnly := false;
    end;
end;

procedure TCAD_FM_C_CCR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_C_CCR);
end;

procedure TCAD_FM_C_CCR.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_CCR.Close;
  dmGeral.CAD_CD_C_CCR.Data := dmGeral.CAD_CD_C_CCR.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_CCR.Open;
end;

end.
