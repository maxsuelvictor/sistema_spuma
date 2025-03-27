unit PCP_UN_C_TLM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_C_TLM = class(TPAD_FM_X_PAD)
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
    procedure txtPesquisaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_C_TLM: TPCP_FM_C_TLM;

implementation

{$R *.dfm}

uses uDmGeral, uDmSgq;

procedure TPCP_FM_C_TLM.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_TLM);
  txtDescricao.SetFocus;
end;

procedure TPCP_FM_C_TLM.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_TLM) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TPCP_FM_C_TLM.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_TLM) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TPCP_FM_C_TLM.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_TLM);
end;

procedure TPCP_FM_C_TLM.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_TLM.FieldByName('ID_TLM').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_TLM);
   inherited;
   dmSgq.PCP_CD_C_TLM.Close;
   dmSgq.PCP_CD_C_TLM.Data :=
   dmSgq.PCP_CD_C_TLM.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_TLM.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_TLM.Close;
    dmSgq.PCP_CD_C_TLM.Data :=
    dmSgq.PCP_CD_C_TLM.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_TLM.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_C_TLM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_TLM.Close;
  FreeAndNil(PCP_FM_C_TLM);
end;

procedure TPCP_FM_C_TLM.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_TLM.Close;
  dmSgq.PCP_CD_C_TLM.Data := dmSgq.PCP_CD_C_TLM.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_TLM.Open;
end;

procedure TPCP_FM_C_TLM.txtPesquisaExit(Sender: TObject);
begin
  inherited;
  btnFiltroClick(Self);
end;

end.
