unit CTC_UN_C_OCO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TCTC_FM_C_OCO = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    Label53: TLabel;
    lblDescricao: TLabel;
    txtCodigo: TDBEdit;
    txtCodRev: TDBEdit;
    txtDescricao: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
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
  CTC_FM_C_OCO: TCTC_FM_C_OCO;

implementation

{$R *.dfm}

uses uDmCtc, uDmGeral;

procedure TCTC_FM_C_OCO.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag, dmctc.ctc_cd_c_oco);
  txtdescricao.SetFocus;
end;

procedure TCTC_FM_C_OCO.acAlterarExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag, dmctc.ctc_cd_c_oco);
  txtdescricao.SetFocus;
end;

procedure TCTC_FM_C_OCO.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet,TAction(Sender).Tag, dmctc.ctc_cd_c_oco) then
    begin
      dbgrid.SetFocus;
    end
  else
    begin
      txtDescricao.SetFocus;
    end;
end;

procedure TCTC_FM_C_OCO.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(sender).Tag, dmctc.ctc_cd_c_oco);
end;

procedure TCTC_FM_C_OCO.acGravarExecute(Sender: TObject);
var
codigo : string;
begin
  inherited;
   inherited;
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes,mbNo],0)= mrYes then
    begin
      codigo := dmctc.ctc_cd_c_oco.FieldByName('id_ocorrencia').AsString;
      dmgeral.Grava(dmctc.ctc_cd_c_oco);

      dmctc.ctc_cd_c_oco.Close;
      dmctc.ctc_cd_c_oco.Data :=
      dmctc.ctc_cd_c_oco.DataRequest(VarArrayOf([0,codigo]));
    end
  else
    begin
      txtdescricao.SetFocus;
    end;
end;

procedure TCTC_FM_C_OCO.btnFiltroClick(Sender: TObject);
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

     dmctc.ctc_cd_c_oco.Close;
     dmctc.ctc_cd_c_oco.Data :=
       dmctc.ctc_cd_c_oco.DataRequest(VarArrayOf([cbbPesquisa.ItemIndex, txtpesquisa.Text]))
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_C_OCO.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtpesquisa.Text := '';

  if cbbpesquisa.ItemIndex in [0] then
    txtpesquisa.NumbersOnly := true
  else
    txtpesquisa.NumbersOnly := false;
end;

procedure TCTC_FM_C_OCO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CTC_FM_C_OCO);
end;

procedure TCTC_FM_C_OCO.FormShow(Sender: TObject);
begin
  inherited;
  dmctc.ctc_cd_c_oco.Close;
  dmctc.ctc_cd_c_oco.Data :=
  dmctc.ctc_cd_c_oco.DataRequest(VarArrayOf([0,'']));
end;

procedure TCTC_FM_C_OCO.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
