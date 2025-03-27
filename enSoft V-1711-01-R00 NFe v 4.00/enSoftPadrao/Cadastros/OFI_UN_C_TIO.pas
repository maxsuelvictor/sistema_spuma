unit OFI_UN_C_TIO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  vcl.Wwdbedit, JvExExtCtrls, JvExtComponent, JvPanel, vcl.Wwdotdot,
  vcl.Wwdbcomb;

type
  TOFI_FM_C_TIO = class(TPAD_FM_X_PAD)
    txtIdOS: TwwDBEdit;
    lblIdTipoOS: TLabel;
    lblDescricaoOS: TLabel;
    txtDescricaoOS: TwwDBEdit;
    cbbTipo: TwwDBComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OFI_FM_C_TIO: TOFI_FM_C_TIO;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TOFI_FM_C_TIO.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_C_TIO);
  txtDescricaoOS.SetFocus;
end;

procedure TOFI_FM_C_TIO.acAlterarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_C_TIO);
  txtDescricaoOS.SetFocus;
end;

procedure TOFI_FM_C_TIO.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_C_TIO) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricaoOS.SetFocus;
     end;
end;

procedure TOFI_FM_C_TIO.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.OFI_CD_C_TIO);
end;

procedure TOFI_FM_C_TIO.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.OFI_CD_C_TIO.FieldByName('ID_TIPO_OS').AsString;
  DmGeral.Grava(dmGeral.OFI_CD_C_TIO);
  inherited;
  dmGeral.OFI_CD_C_TIO.Close;
  dmGeral.OFI_CD_C_TIO.Data :=
          dmGeral.OFI_CD_C_TIO.DataRequest(VarArrayOf([0, codigo]));
end;

procedure TOFI_FM_C_TIO.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.OFI_CD_C_TIO.Close;
    dmGeral.OFI_CD_C_TIO.Data :=
    dmGeral.OFI_CD_C_TIO.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));

  finally
     Screen.Cursor := crDefault;
  end;

end;

procedure TOFI_FM_C_TIO.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  if cbbPesquisa.ItemIndex = 0 then
    begin
     txtPesquisa.NumbersOnly := true;
     end
  else
    begin
     txtPesquisa.NumbersOnly := false;
   end;
end;

procedure TOFI_FM_C_TIO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.OFI_CD_C_TIO.Close;
  FreeAndNil(OFI_FM_C_TIO);
end;

procedure TOFI_FM_C_TIO.FormCreate(Sender: TObject);
begin
  inherited;

  dmGeral.OFI_CD_C_TIO.Close;
  dmGeral.OFI_CD_C_TIO.Data := dmGeral.OFI_CD_C_TIO.DataRequest(VarArrayOf([1, '']));
  dmGeral.OFI_CD_C_TIO.Open;

 // FreeAndNil(OFI_FM_C_TIO);
end;

procedure TOFI_FM_C_TIO.FormShow(Sender: TObject);
begin
  inherited;
   txtPesquisa.SetFocus;
end;

procedure TOFI_FM_C_TIO.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
