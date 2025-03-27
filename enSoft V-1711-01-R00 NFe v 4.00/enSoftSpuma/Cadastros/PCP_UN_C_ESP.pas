unit PCP_UN_C_ESP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_C_ESP = class(TPAD_FM_X_PAD)
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
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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
  PCP_FM_C_ESP: TPCP_FM_C_ESP;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, uDmSgq;

procedure TPCP_FM_C_ESP.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_ESP);
  txtDescricao.SetFocus;
end;

procedure TPCP_FM_C_ESP.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_ESP) then
    begin
      inherited;
      txtDescricao.SetFocus;
    end;
end;

procedure TPCP_FM_C_ESP.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_ESP) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TPCP_FM_C_ESP.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_ESP);
end;

procedure TPCP_FM_C_ESP.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_ESP.FieldByName('ID_ESPECIFICACAO').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_ESP);
   inherited;
   dmSgq.PCP_CD_C_ESP.Close;
   dmSgq.PCP_CD_C_ESP.Data :=
   dmSgq.PCP_CD_C_ESP.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_ESP.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_ESP.Close;
    dmSgq.PCP_CD_C_ESP.Data :=
    dmSgq.PCP_CD_C_ESP.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_ESP.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_C_ESP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_ESP.Close;
  FreeAndNil(PCP_FM_C_ESP);
end;

procedure TPCP_FM_C_ESP.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_ESP.Close;
  dmSgq.PCP_CD_C_ESP.Data := dmSgq.PCP_CD_C_ESP.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_ESP.Open;
end;

procedure TPCP_FM_C_ESP.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
