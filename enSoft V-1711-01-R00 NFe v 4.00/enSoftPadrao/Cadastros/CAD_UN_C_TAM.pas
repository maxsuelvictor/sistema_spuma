unit CAD_UN_C_TAM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TCAD_FM_C_TAM = class(TPAD_FM_X_PAD)
    lblDescricao: TLabel;
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_TAM: TCAD_FM_C_TAM;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_TAM.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TAM);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_TAM.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TAM) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_TAM.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TAM) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_TAM.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_TAM);
end;

procedure TCAD_FM_C_TAM.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_TAM.FieldByName('ID_TAMANHO').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_TAM);
  inherited;
  dmGeral.CAD_CD_C_TAM.Close;
  dmGeral.CAD_CD_C_TAM.Data :=
  dmGeral.CAD_CD_C_TAM.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_TAM.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_TAM.Close;
    dmGeral.CAD_CD_C_TAM.Data :=
    dmGeral.CAD_CD_C_TAM.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_TAM.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_TAM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_TAM.Close;
  FreeAndNil(CAD_FM_C_TAM);
end;

procedure TCAD_FM_C_TAM.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_TAM.Close;
  dmGeral.CAD_CD_C_TAM.Data := dmGeral.CAD_CD_C_TAM.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_TAM.Open;
end;

procedure TCAD_FM_C_TAM.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
