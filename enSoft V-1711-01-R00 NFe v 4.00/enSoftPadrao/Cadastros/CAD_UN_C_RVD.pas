unit CAD_UN_C_RVD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit, Datasnap.DBClient;

type
  TCAD_FM_C_RVD = class(TPAD_FM_X_PAD)
    CAD_CD_C_RVD: TClientDataSet;
    CAD_CD_C_RVDid_rvd: TIntegerField;
    CAD_CD_C_RVDdescricao: TWideStringField;
    Label1: TLabel;
    lblDescricao: TLabel;
    txtCodigo: TwwDBEdit;
    txtDescricao: TwwDBEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure CAD_CD_C_RVDBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CAD_CD_C_RVDNewRecord(DataSet: TDataSet);
    procedure btnFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_RVD: TCAD_FM_C_RVD;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_C_RVD,uProxy;

procedure TCAD_FM_C_RVD.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_RVD);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_RVD.acAlterarExecute(Sender: TObject);
begin
   if Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_RVD) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;

end;

procedure TCAD_FM_C_RVD.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_RVD) then
    begin
      inherited;
      dbGrid.SetFocus;
    end
  else
    begin
      txtDescricao.SetFocus;
    end;

end;

procedure TCAD_FM_C_RVD.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_RVD);
end;

procedure TCAD_FM_C_RVD.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := CAD_CD_C_RVD.FieldByName('id_rvd').AsString;
  DmGeral.Grava(CAD_CD_C_rvd);
  inherited;
  CAD_CD_C_rvd.Close;
  CAD_CD_C_rvd.Data :=
  CAD_CD_C_rvd.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_RVD.btnFiltroClick(Sender: TObject);
begin
  inherited;
   Screen.Cursor := crHourGlass;
  try
    inherited;

    CAD_CD_C_RVD.Close;
    CAD_CD_C_RVD.Data :=
    CAD_CD_C_RVD.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_RVD.CAD_CD_C_RVDBeforePost(DataSet: TDataSet);
begin
  inherited;
  CAD_RN_C_RVD.ValidaCAD_CD_C_RVD(CAD_CD_C_RVD);
end;

procedure TCAD_FM_C_RVD.CAD_CD_C_RVDNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    CAD_CD_C_RVD.FieldByName('id_rvd').AsInteger :=
         SMPrincipal.enValorChave('CAD_TB_C_RVD');
  finally
    FreeAndNil(SMPrincipal);
  end;

end;

procedure TCAD_FM_C_RVD.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  txtPesquisa.NumbersOnly := false;
  if cbbPesquisa.ItemIndex = 0 then
     begin
       txtPesquisa.NumbersOnly := true;
     end;

end;

procedure TCAD_FM_C_RVD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_C_RVD);
end;

procedure TCAD_FM_C_RVD.FormShow(Sender: TObject);
begin
  inherited;
   CAD_CD_C_RVD.Close;
   CAD_CD_C_RVD.Data :=
    CAD_CD_C_RVD.DataRequest(
            VarArrayOf([0, '0']));
end;

end.
