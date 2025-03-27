unit CAD_UN_C_CID;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons,
  Vcl.ExtCtrls, vcl.wwdblook, JvExExtCtrls, JvExtComponent, JvPanel,
  Datasnap.DBClient;

type
  TCAD_FM_C_CID = class(TPAD_FM_X_PAD)
    lblCEP: TLabel;
    lblEstado: TLabel;
    lblDescricao: TLabel;
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    txtCEP: TDBEdit;
    cbbEstado: TwwDBLookupCombo;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    cbbPais: TwwDBLookupCombo;
    Label1: TLabel;
    Panel1: TPanel;
    txtPais: TDBText;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure txtCodigoExit(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbEstadoEnter(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbPaisEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_CID: TCAD_FM_C_CID;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_CID.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CID);
  txtCodigo.Enabled := True;
  txtCodigo.SetFocus;
end;

procedure TCAD_FM_C_CID.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CID) then
     begin
       inherited;
       txtCodigo.Enabled := False;
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_CID.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CID) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
       txtCodigo.Enabled := True;
     end;
end;

procedure TCAD_FM_C_CID.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CID);
end;

procedure TCAD_FM_C_CID.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_CID.FieldByName('ID_CIDADE').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_CID);
  inherited;
  dmGeral.CAD_CD_C_CID.Close;
  dmGeral.CAD_CD_C_CID.Data :=
  dmGeral.CAD_CD_C_CID.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_CID.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_CID.Close;
    dmGeral.CAD_CD_C_CID.Data :=
    dmGeral.CAD_CD_C_CID.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_CID.cbbEstadoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_UFS;
  cbbEstado.DropDown;
end;

procedure TCAD_FM_C_CID.cbbPaisEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_C_PAI.Close;
  dmGeral.BUS_CD_C_PAI.Data :=
  dmGeral.BUS_CD_C_PAI.DataRequest(
          VarArrayOf([1, '']));

  cbbPais.DropDown;
end;

procedure TCAD_FM_C_CID.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
end;

procedure TCAD_FM_C_CID.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_CID.Close;
  dmgeral.BUS_CD_C_PAI.Close;
  FreeAndNil(CAD_FM_C_CID);
end;

procedure TCAD_FM_C_CID.FormShow(Sender: TObject);
begin
  inherited;
  txtCodigo.Enabled := false;

  dmGeral.CAD_CD_C_CID.Close;
  dmGeral.CAD_CD_C_CID.Data :=
  dmGeral.CAD_CD_C_CID.DataRequest(
          VarArrayOf([0, '']));

  dmgeral.BUS_CD_C_PAI.Close;
  dmGeral.BUS_CD_C_PAI.Data :=
  dmGeral.BUS_CD_C_PAI.DataRequest(
          VarArrayOf([1, '']));
end;

procedure TCAD_FM_C_CID.txtCodigoExit(Sender: TObject);
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

procedure TCAD_FM_C_CID.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
