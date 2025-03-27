unit CAD_UN_C_EQP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Datasnap.DBClient;

type
  TCAD_FM_C_EQP = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    chkGarantia: TDBCheckBox;
    lblNome: TLabel;
    txtSerial: TDBEdit;
    Label1: TLabel;
    txtDescricao: TDBEdit;
    Label2: TLabel;
    txtModelo: TDBEdit;
    CAD_CD_C_EQP: TClientDataSet;
    CAD_CD_C_EQPid_equipamento: TIntegerField;
    CAD_CD_C_EQPdescricao: TWideStringField;
    CAD_CD_C_EQPserial: TWideStringField;
    CAD_CD_C_EQPmodelo: TWideStringField;
    CAD_CD_C_EQPgarantia: TBooleanField;
    procedure CAD_CD_C_EQPNewRecord(DataSet: TDataSet);
    procedure CAD_CD_C_EQPBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_EQP: TCAD_FM_C_EQP;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_C_EQP;

procedure TCAD_FM_C_EQP.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_EQP);
  txtserial.SetFocus;
end;

procedure TCAD_FM_C_EQP.acAlterarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_EQP);
  txtserial.SetFocus;
end;

procedure TCAD_FM_C_EQP.acCancelarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_EQP);
end;

procedure TCAD_FM_C_EQP.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_EQP);
end;

procedure TCAD_FM_C_EQP.acGravarExecute(Sender: TObject);
var
  codigo : string;
begin
  inherited;
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      codigo := CAD_CD_C_EQP.FieldByName('ID_EQUIPAMENTO').AsString;

      DmGeral.Grava(CAD_CD_C_EQP);

      CAD_CD_C_EQP.Close;
      CAD_CD_C_EQP.Data := CAD_CD_C_EQP.DataRequest(VarArrayOf([0, codigo]));
    end;
end;

procedure TCAD_FM_C_EQP.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;

    if trim(txtPesquisa.Text) = '' then
      begin
        ShowMessage('É preciso que digite pelo menos 1 caractere para poder realizar a pesquisa.');
        exit;
      end;

    CAD_CD_C_EQP.Close;
    CAD_CD_C_EQP.Data := CAD_CD_C_EQP.DataRequest(VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_EQP.CAD_CD_C_EQPBeforePost(DataSet: TDataSet);
begin
  inherited;
  CAD_RN_C_EQP.ValidaEqp(DataSet);
end;

procedure TCAD_FM_C_EQP.CAD_CD_C_EQPNewRecord(DataSet: TDataSet);
begin
  inherited;
  CAD_RN_C_EQP.NovoEqp(DataSet);
end;

procedure TCAD_FM_C_EQP.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_EQP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CAD_CD_C_EQP.Close;
  FreeAndNil(CAD_FM_C_EQP);
end;

procedure TCAD_FM_C_EQP.FormCreate(Sender: TObject);
begin
  inherited;
  CAD_CD_C_EQP.Close;
  CAD_CD_C_EQP.Data := CAD_CD_C_EQP.DataRequest(VarArrayOf([0, '']));
end;

procedure TCAD_FM_C_EQP.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
