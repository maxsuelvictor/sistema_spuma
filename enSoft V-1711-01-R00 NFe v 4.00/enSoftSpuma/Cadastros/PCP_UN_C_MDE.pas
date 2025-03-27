unit PCP_UN_C_MDE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_C_MDE = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    txtCodigo: TDBEdit;
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
  PCP_FM_C_MDE: TPCP_FM_C_MDE;

implementation

{$R *.dfm}

uses uDmGeral, uDmSgq;

procedure TPCP_FM_C_MDE.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_MDE);
  txtDescricao.SetFocus;
end;

procedure TPCP_FM_C_MDE.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_MDE) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TPCP_FM_C_MDE.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_MDE) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TPCP_FM_C_MDE.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_MDE);
end;

procedure TPCP_FM_C_MDE.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_MDE.FieldByName('ID_MDE').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_MDE);
   inherited;
   dmSgq.PCP_CD_C_MDE.Close;
   dmSgq.PCP_CD_C_MDE.Data :=
   dmSgq.PCP_CD_C_MDE.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_MDE.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_MDE.Close;
    dmSgq.PCP_CD_C_MDE.Data :=
    dmSgq.PCP_CD_C_MDE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_MDE.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_C_MDE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_MDE.Close;
  FreeAndNil(PCP_FM_C_MDE);
end;

procedure TPCP_FM_C_MDE.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_MDE.Close;
  dmSgq.PCP_CD_C_MDE.Data := dmSgq.PCP_CD_C_MDE.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_MDE.Open;
end;
procedure TPCP_FM_C_MDE.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
