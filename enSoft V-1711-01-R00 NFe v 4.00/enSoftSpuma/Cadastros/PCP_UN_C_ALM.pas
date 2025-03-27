unit PCP_UN_C_ALM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TPCP_FM_C_ALM = class(TPAD_FM_X_PAD)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_C_ALM: TPCP_FM_C_ALM;

implementation

{$R *.dfm}

uses uDmGeral, uProxy;

procedure TPCP_FM_C_ALM.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ALM);
  txtDescricao.SetFocus;
end;

procedure TPCP_FM_C_ALM.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ALM) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TPCP_FM_C_ALM.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ALM) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TPCP_FM_C_ALM.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ALM);
end;

procedure TPCP_FM_C_ALM.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmGeral.CAD_CD_C_ALM.FieldByName('ID_ALMOXARIFADO').AsString;
   DmGeral.Grava(dmGeral.CAD_CD_C_ALM);
   inherited;
   dmGeral.CAD_CD_C_ALM.Close;
   dmGeral.CAD_CD_C_ALM.Data :=
   dmGeral.CAD_CD_C_ALM.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_ALM.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_ALM.Close;
    dmGeral.CAD_CD_C_ALM.Data :=
    dmGeral.CAD_CD_C_ALM.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_ALM.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,1] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPCP_FM_C_ALM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_ALM.Close;
  FreeAndNil(PCP_FM_C_ALM);
end;

procedure TPCP_FM_C_ALM.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_ALM.Close;
  dmGeral.CAD_CD_C_ALM.Data := dmGeral.CAD_CD_C_ALM.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_ALM.Open;
end;

end.
