unit PCP_UN_C_CUE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit;

type
  TPCP_FM_C_CUE = class(TPAD_FM_X_PAD)
    txtCodigo: TwwDBEdit;
    txtDescricao: TwwDBEdit;
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_C_CUE: TPCP_FM_C_CUE;

implementation

{$R *.dfm}

uses uDmGeral, uDmSgq;

procedure TPCP_FM_C_CUE.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CUE);
  txtDescricao.SetFocus;
end;

procedure TPCP_FM_C_CUE.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CUE) then
     begin
       inherited;
       txtDescricao.SetFocus;
     end;
end;

procedure TPCP_FM_C_CUE.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CUE) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TPCP_FM_C_CUE.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CUE);
end;

procedure TPCP_FM_C_CUE.acGravarExecute(Sender: TObject);
var
  codigo:string;
begin
  inherited;
   codigo := dmSgq.PCP_CD_C_CUE.FieldByName('ID_CUE').AsString;
  DmGeral.Grava(dmSgq.PCP_CD_C_CUE);
  inherited;
  dmSgq.PCP_CD_C_CUE.Close;
  dmSgq.PCP_CD_C_CUE.Data :=
  dmSgq.PCP_CD_C_CUE.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_CUE.btnFiltroClick(Sender: TObject);
begin
  inherited;
    Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_CUE.Close;
    dmSgq.PCP_CD_C_CUE.Data :=
    dmSgq.PCP_CD_C_CUE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_CUE.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  if cbbPesquisa.ItemIndex = 0 then
    begin
      txtPesquisa.NumbersOnly := true;
    end;
  if cbbPesquisa.ItemIndex = 1 then
    begin
      txtPesquisa.NumbersOnly := false;
    end;
end;

procedure TPCP_FM_C_CUE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_CUE.Close;
  FreeAndNil(PCP_FM_C_CUE);
end;

procedure TPCP_FM_C_CUE.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_CUE.Close;
  dmSgq.PCP_CD_C_CUE.Data := dmSgq.PCP_CD_C_CUE.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_CUE.Open;
end;

end.
