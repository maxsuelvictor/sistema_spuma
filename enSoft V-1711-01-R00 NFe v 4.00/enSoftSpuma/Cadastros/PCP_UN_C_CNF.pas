unit PCP_UN_C_CNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_C_CNF = class(TPAD_FM_X_PAD)
    lblDescricao: TLabel;
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
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
  PCP_FM_C_CNF: TPCP_FM_C_CNF;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, uDmSgq;

procedure TPCP_FM_C_CNF.acAdicionaExecute(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;

  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CNF);

  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmSgq.PCP_CD_C_CNF.FieldByName('ID_CONFORMIDADE').AsInteger := SMPrincipal.enValorChave('PCP_TB_C_CNF');
  finally
    FreeAndNil(SMPrincipal);
  end;

  txtDescricao.SetFocus;
end;

procedure TPCP_FM_C_CNF.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CNF) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TPCP_FM_C_CNF.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CNF) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TPCP_FM_C_CNF.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_CNF);
end;

procedure TPCP_FM_C_CNF.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_CNF.FieldByName('ID_CONFORMIDADE').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_CNF);
   inherited;
   dmSgq.PCP_CD_C_CNF.Close;
   dmSgq.PCP_CD_C_CNF.Data :=
   dmSgq.PCP_CD_C_CNF.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_CNF.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_CNF.Close;
    dmSgq.PCP_CD_C_CNF.Data :=
    dmSgq.PCP_CD_C_CNF.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_CNF.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_C_CNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_CNF.Close;
  FreeAndNil(PCP_FM_C_CNF);
end;

procedure TPCP_FM_C_CNF.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_CNF.Close;
  dmSgq.PCP_CD_C_CNF.Data := dmSgq.PCP_CD_C_CNF.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_CNF.Open;
end;

procedure TPCP_FM_C_CNF.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
