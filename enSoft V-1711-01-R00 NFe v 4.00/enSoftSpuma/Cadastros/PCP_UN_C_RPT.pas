unit PCP_UN_C_RPT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_C_RPT = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    lblDescricao: TLabel;
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
    procedure txtPesquisaExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_C_RPT: TPCP_FM_C_RPT;

implementation

{$R *.dfm}

uses uDmGeral, uDmSgq;

procedure TPCP_FM_C_RPT.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_RPT);
  txtDescricao.SetFocus;
end;

procedure TPCP_FM_C_RPT.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_RPT) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TPCP_FM_C_RPT.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_RPT) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TPCP_FM_C_RPT.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_RPT);
end;

procedure TPCP_FM_C_RPT.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_RPT.FieldByName('ID_RPT').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_RPT);
   inherited;
   dmSgq.PCP_CD_C_RPT.Close;
   dmSgq.PCP_CD_C_RPT.Data :=
   dmSgq.PCP_CD_C_RPT.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_RPT.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_RPT.Close;
    dmSgq.PCP_CD_C_RPT.Data :=
    dmSgq.PCP_CD_C_RPT.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_RPT.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_C_RPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_RPT.Close;
  FreeAndNil(PCP_FM_C_RPT);
end;

procedure TPCP_FM_C_RPT.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_RPT.Close;
  dmSgq.PCP_CD_C_RPT.Data := dmSgq.PCP_CD_C_RPT.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_RPT.Open;
end;

procedure TPCP_FM_C_RPT.txtPesquisaExit(Sender: TObject);
begin
  inherited;
  btnFiltroClick(Self);
end;

procedure TPCP_FM_C_RPT.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
