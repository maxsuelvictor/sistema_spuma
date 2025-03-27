unit CAD_UN_C_ALM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, vcl.wwdblook,
  Datasnap.DBClient;

type
  TCAD_FM_C_ALM = class(TPAD_FM_X_PAD)
    lblDescricao: TLabel;
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    lblObra: TLabel;
    cbbObra: TwwDBLookupCombo;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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
  CAD_FM_C_ALM: TCAD_FM_C_ALM;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, uDmCtc;

procedure TCAD_FM_C_ALM.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ALM);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_ALM.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ALM) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_ALM.acCancelarExecute(Sender: TObject);
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

procedure TCAD_FM_C_ALM.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_ALM);
end;

procedure TCAD_FM_C_ALM.acGravarExecute(Sender: TObject);
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

procedure TCAD_FM_C_ALM.btnFiltroClick(Sender: TObject);
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

procedure TCAD_FM_C_ALM.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_ALM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_ALM.Close;
  FreeAndNil(CAD_FM_C_ALM);
end;

procedure TCAD_FM_C_ALM.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_ALM.Close;
  dmGeral.CAD_CD_C_ALM.Data := dmGeral.CAD_CD_C_ALM.DataRequest(VarArrayOf([0, '']));
  dmGeral.CAD_CD_C_ALM.Open;

  dmCtc.bus_cd_c_obr.Close;
  dmCtc.bus_cd_c_obr.Data :=
        dmCtc.bus_cd_c_obr.DataRequest(VarArrayOf([1, '%','']));


end;

procedure TCAD_FM_C_ALM.FormShow(Sender: TObject);
begin
  inherited;

  lblObra.Visible := false;
  cbbObra.Visible := false;
  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean  then
     begin
       lblObra.Visible := true;
       cbbObra.Visible := true;
     end;

end;

procedure TCAD_FM_C_ALM.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
