unit CAD_UN_C_CAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls;

type
  TCAD_FM_C_CAT = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    Label53: TLabel;
    lblDescricao: TLabel;
    txtCodigo: TDBEdit;
    txtCodRev: TDBEdit;
    txtDescricao: TDBEdit;
    CAD_CD_C_CAT: TClientDataSet;
    CAD_CD_C_CATid_cat: TIntegerField;
    CAD_CD_C_CATdescricao: TWideStringField;
    CAD_CD_C_CATcod_lme: TWideStringField;
    CAD_CD_C_CATrev_lme: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure CAD_CD_C_CATNewRecord(DataSet: TDataSet);
    procedure CAD_CD_C_CATBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_CAT: TCAD_FM_C_CAT;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, CAD_RN_C_CAT;

procedure TCAD_FM_C_CAT.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag, CAD_CD_C_CAT);
  txtdescricao.SetFocus;
end;

procedure TCAD_FM_C_CAT.acAlterarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag, CAD_CD_C_CAT);
  txtdescricao.SetFocus;
end;

procedure TCAD_FM_C_CAT.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet,TAction(Sender).Tag, CAD_CD_C_CAT) then
    begin
      dbgrid.SetFocus;
    end
  else
    begin
      txtDescricao.SetFocus;
    end;
end;

procedure TCAD_FM_C_CAT.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(sender).Tag, CAD_CD_C_CAT);
end;

procedure TCAD_FM_C_CAT.acGravarExecute(Sender: TObject);
var
codigo : string;
begin
  inherited;
   inherited;
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes,mbNo],0)= mrYes then
    begin
      codigo := CAD_CD_C_CAT.FieldByName('id_cat').AsString;
      dmgeral.Grava(CAD_CD_C_CAT);

      CAD_CD_C_CAT.Close;
      CAD_CD_C_CAT.Data :=
      CAD_CD_C_CAT.DataRequest(VarArrayOf([0,codigo]));
    end
  else
    begin
      txtdescricao.SetFocus;
    end;

end;

procedure TCAD_FM_C_CAT.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;

    if trim(txtPesquisa.Text) = '' then
      begin
        ShowMessage('É preciso que digite pelo menos 1 caractere para realizar a pesquisa.');
        exit;
      end;

    CAD_CD_C_CAT.Close;
    CAD_CD_C_CAT.Data :=
      CAD_CD_C_CAT.DataRequest(VarArrayOf([cbbPesquisa.ItemIndex, txtpesquisa.Text]))
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_CAT.CAD_CD_C_CATBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidaCAD_CD_C_CAT(DataSet);
end;

procedure TCAD_FM_C_CAT.CAD_CD_C_CATNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  inherited;
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    CAD_CD_C_CAT.FieldByName('ID_CAT').AsInteger :=
         SMPrincipal.enValorChave('OFI_TB_C_CAT');
  finally
    FreeAndNil(SMPrincipal);
  end;

  dmGeral.BusCodigoRevListMestre(true,false,'CAD_FM_C_CAT',xCodLme,xRevLme,CAD_CD_C_CAT);
end;

procedure TCAD_FM_C_CAT.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtpesquisa.Text := '';

  if cbbpesquisa.ItemIndex in [0] then
    txtpesquisa.NumbersOnly := true
  else
    txtpesquisa.NumbersOnly := false;
end;

procedure TCAD_FM_C_CAT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_C_CAT);
end;

procedure TCAD_FM_C_CAT.FormShow(Sender: TObject);
begin
  inherited;
  CAD_CD_C_CAT.Close;
  CAD_CD_C_CAT.Data :=
    CAD_CD_C_CAT.DataRequest(VarArrayOf([0,'']));
end;

procedure TCAD_FM_C_CAT.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
