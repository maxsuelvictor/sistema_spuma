unit CTC_UN_C_TPR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TCTC_FM_C_TPR = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
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
  CTC_FM_C_TPR: TCTC_FM_C_TPR;

implementation

{$R *.dfm}

uses uDmCtc, CTC_RN_C_TPR;

procedure TCTC_FM_C_TPR.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_TPR);
  txtDescricao.SetFocus;
end;

procedure TCTC_FM_C_TPR.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_TPR) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TCTC_FM_C_TPR.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_TPR) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCTC_FM_C_TPR.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_TPR);
end;

procedure TCTC_FM_C_TPR.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmCtc.CTC_CD_C_TPR.FieldByName('ID_TPR').AsString;
  gravaTpr(sender);
  inherited;
  dmCtc.CTC_CD_C_TPR.Close;
  dmCtc.CTC_CD_C_TPR.Data :=
  dmCtc.CTC_CD_C_TPR.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCTC_FM_C_TPR.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.CTC_CD_C_TPR.Close;
    dmCtc.CTC_CD_C_TPR.Data :=
    dmCtc.CTC_CD_C_TPR.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_C_TPR.cbbPesquisaChange(Sender: TObject);
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

procedure TCTC_FM_C_TPR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmCtc.CTC_CD_C_TPR.Close;
  FreeAndNil(CTC_FM_C_TPR);
end;

procedure TCTC_FM_C_TPR.FormCreate(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_C_TPR.Close;
  dmCtc.CTC_CD_C_TPR.Data := dmCtc.CTC_CD_C_TPR.DataRequest(VarArrayOf([0, '']));
  dmCtc.CTC_CD_C_TPR.Open;
end;

procedure TCTC_FM_C_TPR.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
