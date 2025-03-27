unit CAD_UN_C_PEC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Datasnap.DBClient;

type
  TCAD_FM_C_PEC = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    lblPerCorrecao: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    txtPerCorrecao: TDBEdit;
    rgOperacao: TDBRadioGroup;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    Label1: TLabel;
    txtPerCorrAprazo: TDBEdit;
    txtPerCorrFinan: TDBEdit;
    lblCorrFinan: TLabel;
    dsoEmp: TwwDataSource;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_PEC: TCAD_FM_C_PEC;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_PEC.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PEC);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_PEC.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PEC) then
      begin
        inherited;
        dmGeral.CAD_CD_C_PEC_EMP.Edit;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_PEC.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PEC) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_PEC.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PEC);
end;

procedure TCAD_FM_C_PEC.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_PEC.FieldByName('ID_PERFIL_CLI').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_PEC);
  inherited;
  dmGeral.CAD_CD_C_PEC.Close;
  dmGeral.CAD_CD_C_PEC.Data :=
  dmGeral.CAD_CD_C_PEC.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCAD_FM_C_PEC.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_PEC.Close;
    dmGeral.CAD_CD_C_PEC.Data :=
    dmGeral.CAD_CD_C_PEC.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_PEC.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_PEC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_PEC.Close;
  FreeAndNil(CAD_FM_C_PEC);
end;

procedure TCAD_FM_C_PEC.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_PEC_EMP.Filter := 'ID_EMPRESA='+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;


  dmGeral.CAD_CD_C_PEC.Close;
  dmGeral.CAD_CD_C_PEC.Data := dmGeral.CAD_CD_C_PEC.DataRequest(VarArrayOf([1, '']));
  dmGeral.CAD_CD_C_PEC.Open;
end;

procedure TCAD_FM_C_PEC.FormShow(Sender: TObject);
begin
  inherited;
  txtPerCorrFinan.Visible := false;
  lblCorrFinan.Visible := false;

  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_corr_preco_prazo').AsBoolean = True))  then
    BEGIN
       txtPerCorrFinan.Visible := true;
       lblCorrFinan.Visible := true;
    END;
end;

procedure TCAD_FM_C_PEC.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
