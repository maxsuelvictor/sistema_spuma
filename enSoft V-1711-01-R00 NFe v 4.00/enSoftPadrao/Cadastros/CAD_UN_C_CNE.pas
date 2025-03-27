unit CAD_UN_C_CNE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, Data.DB, vcl.wwdatsrc,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.ComCtrls, vcl.wwriched,
  Vcl.Mask, vcl.Wwdbedit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxButtons, Vcl.ImgList, Vcl.DBCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel;

type
  TCAD_FM_C_CNE = class(TPAD_FM_X_PAD)
    txtCodigo: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtDescricao: TwwDBEdit;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtCodigoExit(Sender: TObject);
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
  CAD_FM_C_CNE: TCAD_FM_C_CNE;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_CNE.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CNE);
  txtCodigo.Enabled := True;
  txtCodigo.SetFocus;
end;

procedure TCAD_FM_C_CNE.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CNE) then
      begin
        inherited;
        txtCodigo.Enabled := False;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_CNE.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CNE) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_CNE.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CNE);
end;

procedure TCAD_FM_C_CNE.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_CNE.FieldByName('ID_CNAE').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_CNE);
  inherited;
  dmGeral.CAD_CD_C_CNE.Close;
  dmGeral.CAD_CD_C_CNE.Data :=
  dmGeral.CAD_CD_C_CNE.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_CNE.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_CNE.Close;
    dmGeral.CAD_CD_C_CNE.Data :=
    dmGeral.CAD_CD_C_CNE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_CNE.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
end;

procedure TCAD_FM_C_CNE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_CNE.Close;
  FreeAndNil(CAD_FM_C_CNE);
end;

procedure TCAD_FM_C_CNE.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_CNE.Close;
  dmGeral.CAD_CD_C_CNE.Data := dmGeral.CAD_CD_C_CNE.DataRequest(VarArrayOf([1, '']));
  dmGeral.CAD_CD_C_CNE.Open;
end;

procedure TCAD_FM_C_CNE.FormShow(Sender: TObject);
begin
  inherited;
  txtCodigo.Enabled := False;
end;

procedure TCAD_FM_C_CNE.txtCodigoExit(Sender: TObject);
begin
  inherited;
  try
    if btnCancelar.focused then
       begin
         exit;
       end
  finally
    begin
      if btnCancelar.focused then
         begin
           txtDescricao.Text := '';
           acCancelarExecute(self);
         end;
    end;
  end;
end;
procedure TCAD_FM_C_CNE.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
