unit CAD_UN_C_NCM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, vcl.Wwdbedit, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TCAD_FM_C_NCM = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    txtCodigo: TwwDBEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    Label1: TLabel;
    txtValorTributoAproximado: TDBEdit;
    txtCEST: TwwDBEdit;
    lblCEST: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  CAD_FM_C_NCM: TCAD_FM_C_NCM;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_NCM.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_NCM);
  txtCodigo.Enabled := True;
  txtCodigo.SetFocus;
end;

procedure TCAD_FM_C_NCM.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_NCM) then
     begin
       inherited;
       txtCodigo.Enabled := False;
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_NCM.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_NCM) then
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

procedure TCAD_FM_C_NCM.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_NCM);
end;

procedure TCAD_FM_C_NCM.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_NCM.FieldByName('ID_NCM').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_NCM);
  inherited;
  dmGeral.CAD_CD_C_NCM.Close;
  dmGeral.CAD_CD_C_NCM.Data :=
  dmGeral.CAD_CD_C_NCM.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_NCM.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_NCM.Close;
    dmGeral.CAD_CD_C_NCM.Data :=
    dmGeral.CAD_CD_C_NCM.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_NCM.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
end;

procedure TCAD_FM_C_NCM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_NCM.Close;
  FreeAndNil(CAD_FM_C_NCM);
end;

procedure TCAD_FM_C_NCM.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_NCM.Close;
  dmGeral.CAD_CD_C_NCM.Data := dmGeral.CAD_CD_C_NCM.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_NCM.Open;
end;

procedure TCAD_FM_C_NCM.FormShow(Sender: TObject);
begin
  inherited;
  txtCodigo.Enabled := False;
end;

procedure TCAD_FM_C_NCM.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
