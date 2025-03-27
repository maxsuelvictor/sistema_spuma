unit PCP_UN_C_ORI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_C_ORI = class(TPAD_FM_X_PAD)
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
  PCP_FM_C_ORI: TPCP_FM_C_ORI;

implementation

{$R *.dfm}

uses uDmGeral, uDmSgq;

procedure TPCP_FM_C_ORI.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_ORI);
  txtDescricao.SetFocus;
end;

procedure TPCP_FM_C_ORI.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_ORI) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TPCP_FM_C_ORI.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_ORI) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TPCP_FM_C_ORI.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_ORI);
end;

procedure TPCP_FM_C_ORI.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmSgq.PCP_CD_C_ORI.FieldByName('ID_ORI').AsString;
  DmGeral.Grava(dmSgq.PCP_CD_C_ORI);
  inherited;
  dmSgq.PCP_CD_C_ORI.Close;
  dmSgq.PCP_CD_C_ORI.Data :=
  dmSgq.PCP_CD_C_ORI.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_ORI.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_ORI.Close;
    dmSgq.PCP_CD_C_ORI.Data :=
    dmSgq.PCP_CD_C_ORI.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_ORI.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_C_ORI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_ORI.Close;
  FreeAndNil(PCP_FM_C_ORI);
end;

procedure TPCP_FM_C_ORI.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_ORI.Close;
  dmSgq.PCP_CD_C_ORI.Data := dmSgq.PCP_CD_C_ORI.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_ORI.Open;
end;

procedure TPCP_FM_C_ORI.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
