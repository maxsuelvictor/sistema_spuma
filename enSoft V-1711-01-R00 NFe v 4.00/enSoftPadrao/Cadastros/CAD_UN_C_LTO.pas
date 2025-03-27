unit CAD_UN_C_LTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Datasnap.DBClient;

type
  TCAD_FM_C_LTO = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
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
  CAD_FM_C_LTO: TCAD_FM_C_LTO;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_LTO.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_LTO);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_LTO.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_LTO) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_LTO.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_LTO) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_LTO.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_LTO);
end;

procedure TCAD_FM_C_LTO.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_LTO.FieldByName('ID_LOCAL_TITULO').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_LTO);
  inherited;
  dmGeral.CAD_CD_C_LTO.Close;
  dmGeral.CAD_CD_C_LTO.Data :=
  dmGeral.CAD_CD_C_LTO.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_LTO.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_LTO.Close;
    dmGeral.CAD_CD_C_LTO.Data :=
    dmGeral.CAD_CD_C_LTO.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_LTO.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_LTO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_LTO.Close;
  FreeAndNil(CAD_FM_C_LTO);
end;

procedure TCAD_FM_C_LTO.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_LTO.Close;
  dmGeral.CAD_CD_C_LTO.Data := dmGeral.CAD_CD_C_LTO.DataRequest(VarArrayOf([1, '']));
  dmGeral.CAD_CD_C_LTO.Open;
end;

procedure TCAD_FM_C_LTO.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
