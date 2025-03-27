unit CAD_UN_C_TXS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, vcl.wwdblook,
  Vcl.Mask, vcl.Wwdbedit, Vcl.DBCtrls, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TCAD_FM_C_TXS = class(TPAD_FM_X_PAD)
    lblSetor: TLabel;
    dsoTds: TwwDataSource;
    gbDefeitos: TGroupBox;
    dgTiposDefeitos: TwwDBGrid;
    dgTipoDefeitoIButton: TwwIButton;
    btnAddDefeito: TBitBtn;
    txtSetor: TwwDBEdit;
    pnlTipoDefeito: TPanel;
    lblTipoDefeito: TLabel;
    cbbTipoDefeito: TwwDBLookupCombo;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbTipoDefeitoEnter(Sender: TObject);
    procedure cbbSetorExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddDefeitoClick(Sender: TObject);
    procedure dgTipoDefeitoIButtonClick(Sender: TObject);
    procedure dgTiposDefeitosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbTipoDefeitoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure pnlTipoDefeitoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_TXS: TCAD_FM_C_TXS;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_C_TXS.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_SET) then
      begin
        inherited;
        pnlTipoDefeito.Enabled := False;
        btnAddDefeito.SetFocus;
      end;
end;

procedure TCAD_FM_C_TXS.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_SET) then
     begin
       inherited;
       dbGrid.SetFocus;
       btnIncluir.Enabled := False;
       btnExcluir.Enabled := False;
     end
  else
     begin
       btnAddDefeito.SetFocus;
     end;
end;

procedure TCAD_FM_C_TXS.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_SET);
end;

procedure TCAD_FM_C_TXS.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmGeral.CAD_CD_C_SET.FieldByName('ID_SETOR').AsString;
   DmGeral.Grava(dmGeral.CAD_CD_C_SET);
   inherited;
   dmGeral.CAD_CD_C_SET.Close;
   dmGeral.CAD_CD_C_SET.Data :=
   dmGeral.CAD_CD_C_SET.DataRequest(
           VarArrayOf([0, codigo]));

   btnIncluir.Enabled := False;
   btnExcluir.Enabled := False;
end;

procedure TCAD_FM_C_TXS.btnAddDefeitoClick(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_SET_TDS.Insert;
  pnlTipoDefeito.Enabled := True;
  cbbTipoDefeito.SetFocus;
end;

procedure TCAD_FM_C_TXS.btnFiltroClick(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_SET.Close;
  dmGeral.CAD_CD_C_SET.Data :=
          dmGeral.CAD_CD_C_SET.DataRequest(
          VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  btnIncluir.Enabled := False;
  btnExcluir.Enabled := False;
end;

procedure TCAD_FM_C_TXS.cbbTipoDefeitoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTiposDefeito(1,'%');
  cbbTipoDefeito.DropDown;
end;

procedure TCAD_FM_C_TXS.cbbTipoDefeitoExit(Sender: TObject);
var
  tipoDefeito: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if btnAddDefeito.Focused then
     begin
       abort;
     end;

  tipoDefeito := dmGeral.CAD_CD_C_SET_TDS.FieldByName('ID_TDF').AsString;
  dmGeral.CAD_CD_C_SET_TDS.Post;

  pnlTipoDefeito.Enabled := False;
  btnAddDefeito.SetFocus;

  dmGeral.CAD_CD_C_SET_TDS.locate('ID_TDF',tipoDefeito,[]);
end;

procedure TCAD_FM_C_TXS.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  btnIncluir.Enabled := False;
  btnExcluir.Enabled := False;
end;

procedure TCAD_FM_C_TXS.dgTipoDefeitoIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgTipoDefeitoIButton.Enabled := False;
     if dmGeral.CAD_CD_C_SET_TDS.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmGeral.CAD_CD_C_SET_TDS.Delete;
     dmGeral.CAD_CD_C_SET_TDS.Edit;
  finally
    pnlTipoDefeito.Enabled := True;
  end;
end;

procedure TCAD_FM_C_TXS.dgTiposDefeitosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlTipoDefeito.Enabled = False then
     pnlTipoDefeito.Enabled := True;

  dmGeral.CAD_CD_C_SET_TDS.cancel;

  if dmGeral.CAD_CD_C_SET_TDS.IsEmpty then
     begin
       dmGeral.CAD_CD_C_SET_TDS.Append;
       pnlTipoDefeito.Enabled := True;
       cbbTipoDefeito.SetFocus;
     end
  else
     begin
       dmGeral.CAD_CD_C_SET_TDS.Edit;
       pnlTipoDefeito.Enabled := True;
       cbbTipoDefeito.SetFocus;
     end;
end;

procedure TCAD_FM_C_TXS.cbbSetorExit(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_SET.Close;
end;

procedure TCAD_FM_C_TXS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_SET.Close;
  FreeAndNil(CAD_FM_C_TXS);
end;

procedure TCAD_FM_C_TXS.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_SET.Close;
  dmGeral.CAD_CD_C_SET.Data := dmGeral.CAD_CD_C_SET.DataRequest(VarArrayOf([1, '%']));

  dmGeral.BusTiposDefeito(1,'%');
end;

procedure TCAD_FM_C_TXS.FormShow(Sender: TObject);
begin
  inherited;
  pnlDatagrid.Height := pnlEsquerda.Height div 2 - 64;
  pnlTipoDefeito.Height := pnlEsquerda.Height div 2 - 54;
end;

procedure TCAD_FM_C_TXS.pnlTipoDefeitoExit(Sender: TObject);
begin
  inherited;
  if (btnAddDefeito.Focused) or (dgTiposDefeitos.Focused) or (not dgTipoDefeitoIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               exit;
             end;
          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                exit;
             end;

          dmGeral.CAD_CD_C_SET_TDS.Cancel;
          dmGeral.CAD_CD_C_SET_TDS.Edit;
        finally
           pnlTipoDefeito.Enabled := False;
        end;
      end;
end;

procedure TCAD_FM_C_TXS.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
