unit CAD_UN_C_FAM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Buttons, cxButtons, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit, Vcl.DBCtrls,
  Datasnap.DBClient;

type
  TCAD_FM_C_FAM = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    lblDescricao: TLabel;
    chbCorrPreco: TDBCheckBox;
    dsoEmp: TwwDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_FAM: TCAD_FM_C_FAM;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_FAM.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FAM);
 
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_FAM.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FAM) then
      begin
        inherited;
        dmGeral.CAD_CD_C_FAM_EMP.Edit;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_FAM.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FAM) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_FAM.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_FAM);
end;

procedure TCAD_FM_C_FAM.acGravarExecute(Sender: TObject);
var
  descricao: string;
begin


  descricao := dmGeral.CAD_CD_C_FAM.FieldByName('DESCRICAO').AsString;
  DmGeral.Grava(dmGeral.CAD_CD_C_FAM);

  inherited;

  dmGeral.CAD_CD_C_FAM.Close;
  dmGeral.CAD_CD_C_FAM.Data :=
  dmGeral.CAD_CD_C_FAM.DataRequest(
          VarArrayOf([1, descricao + '%']));
end;

procedure TCAD_FM_C_FAM.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_FAM.Close;
    dmGeral.CAD_CD_C_FAM.Data :=
    dmGeral.CAD_CD_C_FAM.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_FAM.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_FAM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_FAM.Close;
  FreeAndNil(CAD_FM_C_FAM);
end;

procedure TCAD_FM_C_FAM.FormCreate(Sender: TObject);
begin
  inherited;

  dmGeral.CAD_CD_C_FAM_EMP.Filter := 'ID_EMPRESA='+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;


  dmGeral.CAD_CD_C_FAM.Close;
  dmGeral.CAD_CD_C_FAM.Data := dmGeral.CAD_CD_C_FAM.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_FAM.Open;
end;

procedure TCAD_FM_C_FAM.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
