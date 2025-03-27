unit CAD_UN_C_TDF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TCAD_FM_C_TDF = class(TPAD_FM_X_PAD)
    txtCodigo: TDBEdit;
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
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
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_TDF: TCAD_FM_C_TDF;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_TDF.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TDF);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_TDF.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TDF) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_TDF.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TDF) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_TDF.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TDF);
end;

procedure TCAD_FM_C_TDF.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  inherited;
  codigo := dmGeral.CAD_CD_C_TDF.FieldByName('ID_TDF').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_TDF);
  inherited;
  dmGeral.CAD_CD_C_TDF.Close;
  dmGeral.CAD_CD_C_TDF.Data :=
  dmGeral.CAD_CD_C_TDF.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_TDF.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_TDF.Close;
    dmGeral.CAD_CD_C_TDF.Data :=
    dmGeral.CAD_CD_C_TDF.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_TDF.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_TDF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_TDF.Close;
  FreeAndNil(CAD_FM_C_TDF);
end;

procedure TCAD_FM_C_TDF.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_TDF.Close;
  dmGeral.CAD_CD_C_TDF.Data := dmGeral.CAD_CD_C_TDF.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_TDF.Open;
end;

procedure TCAD_FM_C_TDF.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
