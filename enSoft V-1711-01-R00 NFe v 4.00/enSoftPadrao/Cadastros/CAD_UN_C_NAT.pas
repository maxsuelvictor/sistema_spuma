unit CAD_UN_C_NAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TCAD_FM_C_NAT = class(TPAD_FM_X_PAD)
    lblClasse: TLabel;
    lblDescricao: TLabel;
    txtClasse: TDBEdit;
    txtDescricao: TDBEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
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
  CAD_FM_C_NAT: TCAD_FM_C_NAT;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_NAT.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_NAT);
  txtClasse.Enabled := True;
  txtClasse.SetFocus;
end;

procedure TCAD_FM_C_NAT.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_NAT) then
      begin
        inherited;
        txtClasse.Enabled := False;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_NAT.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_NAT) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtClasse.Enabled := True;
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_NAT.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_NAT);
end;

procedure TCAD_FM_C_NAT.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_NAT.FieldByName('ID_CLASSE').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_NAT);
  inherited;
  dmGeral.CAD_CD_C_NAT.Close;
  dmGeral.CAD_CD_C_NAT.Data :=
  dmGeral.CAD_CD_C_NAT.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_NAT.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_NAT.Close;
    dmGeral.CAD_CD_C_NAT.Data :=
    dmGeral.CAD_CD_C_NAT.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_NAT.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
end;

procedure TCAD_FM_C_NAT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_NAT.Close;
  FreeAndNil(CAD_FM_C_NAT);
end;

procedure TCAD_FM_C_NAT.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_NAT.Close;
  dmGeral.CAD_CD_C_NAT.Data := dmGeral.CAD_CD_C_NAT.DataRequest(VarArrayOf([1, '']));
  dmGeral.CAD_CD_C_NAT.Open;
end;

procedure TCAD_FM_C_NAT.FormShow(Sender: TObject);
begin
  inherited;
  txtClasse.Enabled := False;
end;
procedure TCAD_FM_C_NAT.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
