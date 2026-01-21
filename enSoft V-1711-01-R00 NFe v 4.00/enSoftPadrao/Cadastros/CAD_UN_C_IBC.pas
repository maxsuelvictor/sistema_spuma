unit CAD_UN_C_IBC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Datasnap.DBClient, Vcl.ImgList, vcl.wwdatsrc, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, cxButtons, Vcl.ExtCtrls;

type
  TCAD_FM_C_IBC = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    CAD_CD_C_IBC: TClientDataSet;
    chk_ind_g_ibscbs: TDBCheckBox;
    CAD_CD_C_IBCid_cst_ibs_cbs: TWideStringField;
    CAD_CD_C_IBCdescricao: TWideStringField;
    CAD_CD_C_IBCind_gibscbs: TSmallintField;
    CAD_CD_C_IBCind_gibscbsmono: TSmallintField;
    CAD_CD_C_IBCind_gred: TSmallintField;
    CAD_CD_C_IBCind_gdif: TSmallintField;
    CAD_CD_C_IBCind_gtransfcred: TSmallintField;
    CAD_CD_C_IBCind_gcredpresibszfm: TSmallintField;
    CAD_CD_C_IBCind_gajustecompet: TSmallintField;
    CAD_CD_C_IBCind_redutorbc: TSmallintField;
    CAD_CD_C_IBCcod_lme: TWideStringField;
    CAD_CD_C_IBCrev_lme: TWideStringField;
    chk_ind_g_ibscbsmono: TDBCheckBox;
    chk_ind_g_red: TDBCheckBox;
    chk_ind_g_dif: TDBCheckBox;
    chk_ind_g_transfcred: TDBCheckBox;
    chk_ind_g_credpresibszfm: TDBCheckBox;
    chk_ind_g_ajustecompet: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure CAD_CD_C_IBCBeforePost(DataSet: TDataSet);
    procedure CAD_CD_C_IBCNewRecord(DataSet: TDataSet);
    procedure cbbPesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_IBC: TCAD_FM_C_IBC;

implementation

{$R *.dfm}

uses uDmGeral,uValidacoes;

procedure TCAD_FM_C_IBC.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_IBC);
  txtCodigo.Enabled := true;
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_IBC.acAlterarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_IBC);
  txtCodigo.Enabled := false;
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_IBC.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_IBC) then
     begin
       inherited;
       txtCodigo.Enabled := true;
       dbGrid.SetFocus;
     end
end;

procedure TCAD_FM_C_IBC.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_IBC);
end;

procedure TCAD_FM_C_IBC.acGravarExecute(Sender: TObject);
begin
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       txtCodigo.Enabled := true;
       DmGeral.Grava(CAD_CD_C_IBC);
       inherited;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_IBC.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    CAD_CD_C_IBC.Close;
    CAD_CD_C_IBC.Data :=
    CAD_CD_C_IBC.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_IBC.CAD_CD_C_IBCBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidaCAD_CD_C_IBC(DataSet);
end;

procedure TCAD_FM_C_IBC.CAD_CD_C_IBCNewRecord(DataSet: TDataSet);
begin
  inherited;

  CAD_CD_C_IBC.FieldByName('ind_gibscbs').AsInteger := 0;
  CAD_CD_C_IBC.FieldByName('ind_gibscbsmono').AsInteger := 0;
  CAD_CD_C_IBC.FieldByName('ind_gred').AsInteger := 0;
  CAD_CD_C_IBC.FieldByName('ind_gdif').AsInteger := 0;
  CAD_CD_C_IBC.FieldByName('ind_gtransfcred').AsInteger := 0;
  CAD_CD_C_IBC.FieldByName('ind_gcredpresibszfm').AsInteger := 0;
  CAD_CD_C_IBC.FieldByName('ind_gajustecompet').AsInteger := 0;
  CAD_CD_C_IBC.FieldByName('ind_redutorbc').AsInteger := 0;

end;

procedure TCAD_FM_C_IBC.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_IBC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CAD_CD_C_IBC.Close;
  FreeAndNil(CAD_FM_C_IBC);
end;

procedure TCAD_FM_C_IBC.FormCreate(Sender: TObject);
begin
  inherited;
  CAD_CD_C_IBC.Close;
  CAD_CD_C_IBC.Data :=
  CAD_CD_C_IBC.DataRequest(VarArrayOf([1, '']));
  CAD_CD_C_IBC.Open;
end;

procedure TCAD_FM_C_IBC.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
