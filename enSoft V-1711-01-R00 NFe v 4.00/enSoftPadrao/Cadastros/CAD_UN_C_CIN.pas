unit CAD_UN_C_CIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TCAD_FM_C_CIN = class(TPAD_FM_X_PAD)
    Label1: TLabel;
    Label2: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    Label53: TLabel;
    txtCodRev: TDBEdit;
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
    { Public declarations }
  end;

var
  CAD_FM_C_CIN: TCAD_FM_C_CIN;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_CIN.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CIN);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_CIN.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CIN) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;
procedure TCAD_FM_C_CIN.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CIN) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_CIN.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CIN);
end;

procedure TCAD_FM_C_CIN.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmGeral.CAD_CD_C_CIN.FieldByName('ID_CLI_INFORMA').AsString;
   DmGeral.Grava(dmGeral.CAD_CD_C_CIN);
   inherited;
   dmGeral.CAD_CD_C_CIN.Close;
   dmGeral.CAD_CD_C_CIN.Data :=
   dmGeral.CAD_CD_C_CIN.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_CIN.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_CIN.Close;
    dmGeral.CAD_CD_C_CIN.Data :=
    dmGeral.CAD_CD_C_CIN.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_CIN.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_CIN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_CIN.Close;
  FreeAndNil(CAD_FM_C_CIN);
end;

procedure TCAD_FM_C_CIN.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_CIN.Close;
  dmGeral.CAD_CD_C_CIN.Data := dmGeral.CAD_CD_C_CIN.DataRequest(VarArrayOf([1, '']));
  dmGeral.CAD_CD_C_CIN.Open;
end;

procedure TCAD_FM_C_CIN.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
