unit CAD_UN_C_MAR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,System.Math,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Datasnap.DBClient;

type
  TCAD_FM_C_MAR = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    CAD_CD_C_MAR: TClientDataSet;
    CAD_CD_C_MARid_mar: TIntegerField;
    CAD_CD_C_MARdescricao: TWideStringField;
    CAD_CD_C_MARcod_lme: TWideStringField;
    CAD_CD_C_MARrev_lme: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure CAD_CD_C_MARBeforePost(DataSet: TDataSet);
    procedure CAD_CD_C_MARNewRecord(DataSet: TDataSet);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_MAR: TCAD_FM_C_MAR;

implementation

{$R *.dfm}

uses uDmGeral, uValidacoes, uProxy, CAD_RN_C_MAR;

procedure TCAD_FM_C_MAR.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag, CAD_CD_C_MAR);
  txtdescricao.SetFocus;
end;

procedure TCAD_FM_C_MAR.acAlterarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag, CAD_CD_C_MAR);
  txtDescricao.Setfocus;
end;

procedure TCAD_FM_C_MAR.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet,TAction(Sender).Tag, CAD_CD_C_MAR) then
    begin
      dbgrid.SetFocus;
    end
  else
    begin
      txtDescricao.SetFocus;
    end;
end;

procedure TCAD_FM_C_MAR.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(sender).Tag, CAD_CD_C_MAR);
end;

procedure TCAD_FM_C_MAR.acGravarExecute(Sender: TObject);
var
codigo : string;
begin
  inherited;
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes,mbNo],0)= mrYes then
    begin
      codigo := CAD_CD_C_MAR.FieldByName('id_mar').AsString;
      dmgeral.Grava(CAD_CD_C_MAR);

      CAD_CD_C_MAR.Close;
      CAD_CD_C_MAR.Data :=
      CAD_CD_C_MAR.DataRequest(VarArrayOf([0,codigo]));
    end
  else
    begin
      txtdescricao.SetFocus;
    end;
end;

procedure TCAD_FM_C_MAR.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;

    if trim(txtPesquisa.Text) = '' then
      begin
        ShowMessage('É preciso que digite pelo menos 1 caractere para realizar a pesquisa.');
        exit;
      end;

    CAD_CD_C_MAR.Close;
    CAD_CD_C_MAR.Data :=
      CAD_CD_C_MAR.DataRequest(VarArrayOf([cbbPesquisa.ItemIndex, txtpesquisa.Text]))
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_MAR.CAD_CD_C_MARBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidaCAD_CD_C_MAR(DataSet);
end;

procedure TCAD_FM_C_MAR.CAD_CD_C_MARNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  inherited;
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    CAD_CD_C_MAR.FieldByName('ID_MAR').AsInteger :=
         SMPrincipal.enValorChave('CAD_TB_C_MAR');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'CAD_FM_C_MAR',xCodLme,xRevLme,CAD_CD_C_MAR);
end;

procedure TCAD_FM_C_MAR.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtpesquisa.Text := '';

  if cbbpesquisa.ItemIndex in [0] then
    txtpesquisa.NumbersOnly := true
  else
    txtpesquisa.NumbersOnly := false;
end;

procedure TCAD_FM_C_MAR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CAD_CD_C_MAR.Close;
  FreeAndNil(CAD_FM_C_MAR);
end;

procedure TCAD_FM_C_MAR.FormShow(Sender: TObject);
begin
  inherited;
  CAD_CD_C_MAR.Close;
  CAD_CD_C_MAR.Data :=
    CAD_CD_C_MAR.DataRequest(VarArrayOf([0,'']));
end;

procedure TCAD_FM_C_MAR.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
    begin
      if trim(txtpesquisa.Text) <> '' then
        begin
          btnFiltroClick(Self);
        end;
    end;
end;

end.
