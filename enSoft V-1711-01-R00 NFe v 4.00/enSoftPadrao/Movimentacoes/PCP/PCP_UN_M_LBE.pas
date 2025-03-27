unit PCP_UN_M_LBE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvDBControls,
  Vcl.DBCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, vcl.wwdblook, vcl.Wwdbedit,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_M_LBE = class(TPAD_FM_X_PAD)
    dsBlocos: TwwDataSource;
    lblData: TLabel;
    rgTipo: TDBRadioGroup;
    lblSetor: TLabel;
    lblItemAcabado: TLabel;
    lblLamina: TLabel;
    txtItemAcabado: TJvDBComboEdit;
    txtLamina: TJvDBComboEdit;
    cbbSetor: TwwDBLookupCombo;
    gbBlocoLaminado: TGroupBox;
    btnAddBloco: TBitBtn;
    grdBlocos: TwwDBGrid;
    lblQtdeLaminar: TLabel;
    txtQtdeLaminar: TwwDBEdit;
    grdBlocosIButton: TwwIButton;
    dpkDataEmissao: TJvDBDateEdit;
    txtItemAcabadoDescricao: TDBText;
    txtLaminaDescricao: TDBText;
    pnlBlocoLaminado: TPanel;
    lblLote: TLabel;
    lblQtde: TLabel;
    txtLote: TwwDBEdit;
    txtQuantidade: TwwDBEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    procedure btnAddBlocoClick(Sender: TObject);
    procedure cbbSetorEnter(Sender: TObject);
    procedure txtItemAcabadoButtonClick(Sender: TObject);
    procedure txtItemAcabadoExit(Sender: TObject);
    procedure txtLaminaButtonClick(Sender: TObject);
    procedure txtLaminaExit(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbSetorExit(Sender: TObject);
    procedure grdBlocosIButtonClick(Sender: TObject);
    procedure grdBlocosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtQuantidadeExit(Sender: TObject);
    procedure pnlBlocoLaminadoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_LBE: TPCP_FM_M_LBE;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE;

procedure TPCP_FM_M_LBE.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_LBE);

  dmGeral.PCP_CD_M_LBE.FieldByName('DTA_LAMINACAO').AsDateTime := xDataSis;
  rgTipo.ItemIndex := 0;

  pnlBlocoLaminado.Enabled := False;
  cbbSetor.SetFocus;
end;

procedure TPCP_FM_M_LBE.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_LBE) then
      begin
        inherited;
        pnlBlocoLaminado.Enabled := False;
        cbbSetor.SetFocus;
      end;
end;

procedure TPCP_FM_M_LBE.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_LBE) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbSetor.SetFocus;
     end;
end;

procedure TPCP_FM_M_LBE.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_LBE);
end;

procedure TPCP_FM_M_LBE.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.PCP_CD_M_LBE.FieldByName('ID_LBE').AsString;
  DmGeral.Grava(dmGeral.PCP_CD_M_LBE);
  inherited;
  dmGeral.PCP_CD_M_LBE.Close;
  dmGeral.PCP_CD_M_LBE.Data :=
  dmGeral.PCP_CD_M_LBE.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_M_LBE.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.PCP_CD_M_LBE.Close;
    dmGeral.PCP_CD_M_LBE.Data :=
    dmGeral.PCP_CD_M_LBE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_LBE.btnAddBlocoClick(Sender: TObject);
begin
  inherited;
  pnlBlocoLaminado.Enabled := True;

  dmGeral.PCP_CD_M_LBE_BLO.Insert;
  txtLote.SetFocus;
end;

procedure TPCP_FM_M_LBE.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_M_LBE.cbbSetorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusSetor(1,'%');
  cbbSetor.DropDown;
end;

procedure TPCP_FM_M_LBE.cbbSetorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused then
     begin
       Exit;
     end;

  if dmGeral.PCP_CD_M_LBE.FieldByName('ID_SETOR').Text = '' then
     begin
       ShowMessage('O campo "Setor" deve ser prenchido.');
       cbbSetor.SetFocus;
       Exit;
     end;

  dmGeral.BusSetor(0,dmGeral.PCP_CD_M_LBE.FieldByName('ID_SETOR').Text);
  if dmGeral.BUS_CD_C_SET.IsEmpty then
     begin
       ShowMessage('Setor não encontrado.');
       cbbSetor.SetFocus;
       Exit;
     end;
end;

procedure TPCP_FM_M_LBE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_LBE.Close;
  FreeAndNil(PCP_FM_M_LBE);
end;

procedure TPCP_FM_M_LBE.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_LBE.Close;
  dmGeral.PCP_CD_M_LBE.Data := dmGeral.PCP_CD_M_LBE.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_LBE.Open;
end;

procedure TPCP_FM_M_LBE.grdBlocosIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdBlocosIButton.Enabled := False;
     if dmGeral.PCP_CD_M_LBE_BLO.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          Abort;
        end;
     dmGeral.PCP_CD_M_LBE_BLO.Delete;
     dmGeral.PCP_CD_M_LBE_BLO.Edit;
  finally
    grdBlocosIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_LBE.grdBlocosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlBlocoLaminado.Enabled = False then
     pnlBlocoLaminado.Enabled := True;

  dmGeral.PCP_CD_M_LBE_BLO.Cancel;

  if dmGeral.PCP_CD_M_LBE_BLO.IsEmpty then
     begin
       dmGeral.PCP_CD_M_LBE_BLO.Append;
       pnlBlocoLaminado.Enabled := True;
       txtLote.SetFocus;
     end
  else
     begin
       dmGeral.PCP_CD_M_LBE_BLO.Edit;
       pnlBlocoLaminado.Enabled := True;
       txtLote.SetFocus;
     end;
end;

procedure TPCP_FM_M_LBE.pnlBlocoLaminadoExit(Sender: TObject);
begin
  inherited;
  if (btnAddBloco.Focused) or (grdBlocos.Focused) or (not grdBlocosIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               Exit;
             end;
          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          dmGeral.PCP_CD_M_LBE_BLO.Cancel;
          dmGeral.PCP_CD_M_LBE_BLO.Edit;
        finally
           pnlBlocoLaminado.Enabled := False;
        end;
      end;
end;

procedure TPCP_FM_M_LBE.txtItemAcabadoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.PCP_CD_M_LBE.FieldByName('INT_NOMEACA').AsString :=
                PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

           dmGeral.PCP_CD_M_LBE.FieldByName('ID_ITEM_ACABADO').AsInteger :=
                PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_M_LBE.txtItemAcabadoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_ITE.Close;

  dmGeral.PCP_CD_M_LBE.FieldByName('INT_NOMEACA').Text := '';

  dmGeral.BUS_CD_C_ITE.Close;
  dmGeral.BUS_CD_C_ITE.Data :=
  dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtItemAcabado.Text]));

  dmGeral.PCP_CD_M_LBE.FieldByName('INT_NOMEACA').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
end;

procedure TPCP_FM_M_LBE.txtLaminaButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.PCP_CD_M_LBE.FieldByName('INT_NOMELAM').AsString :=
                PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

           dmGeral.PCP_CD_M_LBE.FieldByName('ID_ITEM_LAMINA').AsInteger :=
                PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_M_LBE.txtLaminaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_ITE.Close;

  dmGeral.PCP_CD_M_LBE.FieldByName('INT_NOMELAM').Text := '';

  dmGeral.BUS_CD_C_ITE.Close;
  dmGeral.BUS_CD_C_ITE.Data :=
  dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtLamina.Text]));

  dmGeral.PCP_CD_M_LBE.FieldByName('INT_NOMELAM').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
end;

procedure TPCP_FM_M_LBE.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_M_LBE.txtQuantidadeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if btnAddBloco.Focused or txtLote.Focused then
     begin
       Exit;
     end;

  dmGeral.PCP_CD_M_LBE_BLO.Post;

  pnlBlocoLaminado.Enabled := False;
  btnAddBloco.SetFocus;
end;

end.
