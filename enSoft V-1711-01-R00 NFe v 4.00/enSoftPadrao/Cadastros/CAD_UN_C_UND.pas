unit CAD_UN_C_UND;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Datasnap.DBClient;

type
  TCAD_FM_C_UND = class(TPAD_FM_X_PAD)
    lblDescricao: TLabel;
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    txtCasasDecimais: TDBEdit;
    Label1: TLabel;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    chbPermitirInfTempo: TDBCheckBox;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  CAD_FM_C_UND: TCAD_FM_C_UND;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_UND.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_UND);
  txtCodigo.Enabled := True;
  txtCodigo.SetFocus;
end;

procedure TCAD_FM_C_UND.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_UND) then
      begin
        inherited;
        txtCodigo.Enabled := False;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_UND.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_UND) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtCodigo.Enabled := True;
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_UND.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_UND);
end;

procedure TCAD_FM_C_UND.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_UND.FieldByName('ID_UNIDADE').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_UND);
  inherited;
  dmGeral.CAD_CD_C_UND.Close;
  dmGeral.CAD_CD_C_UND.Data :=
  dmGeral.CAD_CD_C_UND.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_UND.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_UND.Close;
    dmGeral.CAD_CD_C_UND.Data :=
    dmGeral.CAD_CD_C_UND.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_UND.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
end;

procedure TCAD_FM_C_UND.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_UND.Close;
  FreeAndNil(CAD_FM_C_UND);
end;

procedure TCAD_FM_C_UND.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_UND.Close;
  dmGeral.CAD_CD_C_UND.Data := dmGeral.CAD_CD_C_UND.DataRequest(VarArrayOf([1, '%']));
  dmGeral.CAD_CD_C_UND.Open;
end;

procedure TCAD_FM_C_UND.FormShow(Sender: TObject);
begin
  inherited;
  txtCodigo.Enabled := False;
end;

procedure TCAD_FM_C_UND.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
