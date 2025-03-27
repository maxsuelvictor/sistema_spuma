unit CTC_UN_C_EPI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, vcl.Wwdbedit,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, cxButtons, Vcl.ExtCtrls, vcl.wwdblook;

type
  TCTC_FM_C_EPI = class(TPAD_FM_X_PAD)
    txtDescricao: TwwDBEdit;
    lblDescricao: TLabel;
    lblunidade: TLabel;
    cbbunidade: TwwDBLookupCombo;
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
    procedure cbbunidadeEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_C_EPI: TCTC_FM_C_EPI;

implementation

{$R *.dfm}

uses uDmGeral, uDmCtc;

procedure TCTC_FM_C_EPI.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_EPI);
  txtDescricao.SetFocus;
end;

procedure TCTC_FM_C_EPI.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_EPI) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TCTC_FM_C_EPI.acCancelarExecute(Sender: TObject);
begin
 if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_EPI) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCTC_FM_C_EPI.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_EPI);
end;

procedure TCTC_FM_C_EPI.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmCtc.CTC_CD_C_EPI.FieldByName('ID_EPI').AsString;
  DmGeral.Grava(dmCtc.CTC_CD_C_EPI);
  inherited;
  dmCtc.CTC_CD_C_EPI.Close;
  dmCtc.CTC_CD_C_EPI.Data :=
  dmCtc.CTC_CD_C_EPI.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCTC_FM_C_EPI.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.CTC_CD_C_EPI.Close;
    dmCtc.CTC_CD_C_EPI.Data :=
    dmCtc.CTC_CD_C_EPI.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_C_EPI.cbbPesquisaChange(Sender: TObject);
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

procedure TCTC_FM_C_EPI.cbbunidadeEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_UND.Open;
  cbbunidade.DropDown;
end;

procedure TCTC_FM_C_EPI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmCtc.CTC_CD_C_EPI.Close;
  FreeAndNil(CTC_FM_C_EPI);
end;

procedure TCTC_FM_C_EPI.FormCreate(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_C_EPI.Close;
  dmCtc.CTC_CD_C_EPI.Data := dmCtc.CTC_CD_C_EPI.DataRequest(VarArrayOf([0, '']));
  dmCtc.ctc_cd_c_epi.Open;
end;

procedure TCTC_FM_C_EPI.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
