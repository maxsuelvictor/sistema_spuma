unit CTC_UN_M_APG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls;

type
  TCTC_FM_M_APG = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    lblCodigoFabrico: TLabel;
    lblCodigoDeBarras: TLabel;
    txtDia: TDBEdit;
    lblDescricao: TLabel;
    lblPrecoVista: TLabel;
    txtValorPrevisto: TDBEdit;
    memohistorico: TDBMemo;
    txtobra: TJvDBComboEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure txtObraKeyPress(Sender: TObject; var Key: Char);
    procedure txtDiaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure txtobraButtonClick(Sender: TObject);
    procedure txtobraExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_M_APG: TCTC_FM_M_APG;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_OBR, uDmCtc;

procedure TCTC_FM_M_APG.acAdicionaExecute(Sender: TObject);
begin
  inherited;
   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_M_APG);
   txtObra.SetFocus;
end;

procedure TCTC_FM_M_APG.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_M_APG) then
    begin
      txtObra.SetFocus;
    end;
end;

procedure TCTC_FM_M_APG.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_M_APG) then
    begin
      inherited;
      dbGrid.SetFocus;
    end
  else
    begin
      txtObra.SetFocus;
    end;
end;

procedure TCTC_FM_M_APG.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_M_APG);
end;

procedure TCTC_FM_M_APG.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CTC_CD_M_APG.FieldByName('ID_APG').AsString;
  DmGeral.Grava(dmGeral.CTC_CD_M_APG);
  inherited;
  dmGeral.CTC_CD_M_APG.Close;
  dmGeral.CTC_CD_M_APG.Data :=
  dmGeral.CTC_CD_M_APG.DataRequest(
           VarArrayOf([0, dmgeral.CAD_CD_C_PARid_empresa.Text, codigo]));
end;

procedure TCTC_FM_M_APG.btnFiltroClick(Sender: TObject);
begin
  inherited;
  if (IntToSTR(cbbPesquisa.ItemIndex) <> '2')and (txtpesquisa.Text = '') then
    begin
      Showmessage('Informe ao menos um caracter.');
      exit;
    end;

  dmGeral.CTC_CD_M_APG.Close;
  dmGeral.CTC_CD_M_APG.Data :=
    dmGeral.CTC_CD_M_APG.DataRequest(
      VarArrayOf([cbbPesquisa.ItemIndex, dmgeral.CAD_CD_C_PARid_empresa.Text, txtPesquisa.Text]));
end;

procedure TCTC_FM_M_APG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CTC_CD_M_APG.Close;
  FreeAndNil(CTC_FM_M_APG);
end;

procedure TCTC_FM_M_APG.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CTC_CD_M_APG.Close;
  dmGeral.CTC_CD_M_APG.Data :=
    dmGeral.CTC_CD_M_APG.DataRequest(VarArrayOf([0,'']));
end;

procedure TCTC_FM_M_APG.FormShow(Sender: TObject);
begin
  inherited;
  txtPesquisa.SetFocus;
end;

procedure TCTC_FM_M_APG.txtDiaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
    key:=#0;
end;

procedure TCTC_FM_M_APG.txtobraButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_OBR := TPSQ_FM_X_OBR.Create(Self);
   PSQ_FM_X_OBR.ShowModal;
      if not PSQ_FM_X_OBR.BUS_CD_C_OBR.IsEmpty then
         begin
           dmGeral.CTC_CD_M_APG.FieldByName('ID_OBRA').AsString :=
              PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('ID_OBRA').AsString;
         end;
   PSQ_FM_X_OBR.Free;
end;

procedure TCTC_FM_M_APG.txtobraExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmgeral.CTC_CD_M_APG.FieldByName('id_obra').Text) = '' then
     begin
       ShowMessage('O campo "Obra" não foi preenchido.');
       exit;
     end;

  dmCtc.BusObra(0,dmgeral.CTC_CD_M_APG.FieldByName('id_obra').Text);
  if dmCtc.BUS_CD_C_OBR.IsEmpty then
     begin
       ShowMessage('Obra não Cadastrado.');
       exit;
     end;
end;

procedure TCTC_FM_M_APG.txtObraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
    key:=#0;
end;

procedure TCTC_FM_M_APG.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCTC_FM_M_APG.txtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   If (not( key in['0'..'9',#08] )) and (IntToSTR(cbbPesquisa.ItemIndex) <> '2') then
    key:=#0;
end;

end.
