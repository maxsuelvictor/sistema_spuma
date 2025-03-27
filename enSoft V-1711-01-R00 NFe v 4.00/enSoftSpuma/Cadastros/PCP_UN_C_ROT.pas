unit PCP_UN_C_ROT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_C_ROT = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    lblKmInicial: TLabel;
    lblKmFinal: TLabel;
    txtDescricao: TDBEdit;
    txtKmInicial: TDBEdit;
    txtKmFinal: TDBEdit;
    txtCodigo: TDBEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acExcluirExecute(Sender: TObject);
    procedure txtPesquisaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_C_ROT: TPCP_FM_C_ROT;

implementation

{$R *.dfm}

uses uDmGeral, uDmSgq;

procedure TPCP_FM_C_ROT.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_ROT);
  txtDescricao.SetFocus;
end;

procedure TPCP_FM_C_ROT.acAlterarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_ROT);
  txtDescricao.SetFocus;
end;

procedure TPCP_FM_C_ROT.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_ROT) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
end;

procedure TPCP_FM_C_ROT.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_ROT);
end;

procedure TPCP_FM_C_ROT.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_ROT.FieldByName('id_rota').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_ROT);
   inherited;
   dmSgq.PCP_CD_C_ROT.Close;
   dmSgq.PCP_CD_C_ROT.Data :=
   dmSgq.PCP_CD_C_ROT.DataRequest(
           VarArrayOf([0, codigo]));
end;


procedure TPCP_FM_C_ROT.btnFiltroClick(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_ROT.Close;
  dmSgq.PCP_CD_C_ROT.Data :=
  dmSgq.PCP_CD_C_ROT.DataRequest(
     VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
end;

procedure TPCP_FM_C_ROT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_ROT.Close;
  FreeAndNil(PCP_FM_C_ROT);
end;

procedure TPCP_FM_C_ROT.FormShow(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_ROT.Open;
end;

procedure TPCP_FM_C_ROT.txtPesquisaExit(Sender: TObject);
begin
  inherited;
  btnFiltroClick(Self);
end;

end.
