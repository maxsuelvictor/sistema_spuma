unit CTC_UN_M_ORC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvExMask,
  JvToolEdit, JvDBControls, Vcl.DBCtrls, Vcl.Mask;

type
  TCTC_FM_M_ORC = class(TPAD_FM_X_PAD)
    txtCodigo: TDBEdit;
    lblCodigo: TLabel;
    lblObra: TLabel;
    txtObraDescricao: TDBText;
    txtObra: TJvDBComboEdit;
    lblDataObra: TLabel;
    dpkDtaObra: TJvDBDateEdit;
    gbItens: TGroupBox;
    btnAddItens: TBitBtn;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    pnlItens: TPanel;
    lblQuantidade: TLabel;
    lblItem: TLabel;
    lblComposicaoEspecificacao: TLabel;
    txtItemDescricao: TDBText;
    txtQdte: TDBEdit;
    txtItem: TJvDBComboEdit;
    dsoItens: TwwDataSource;
    txtVlrUnit: TDBEdit;
    txtVlrTotal: TDBEdit;
    lblVlrUnit: TLabel;
    lblVlrTotal: TLabel;
    lblTotal: TLabel;
    txtTotal: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtObraButtonClick(Sender: TObject);
    procedure txtObraExit(Sender: TObject);
    procedure pnlItensExit(Sender: TObject);
    procedure btnAddItensClick(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtVlrTotalExit(Sender: TObject);
    procedure txtItemButtonClick(Sender: TObject);
    procedure txtItemExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_M_ORC: TCTC_FM_M_ORC;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_OBR, PSQ_UN_X_ITE;

procedure TCTC_FM_M_ORC.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_M_ORC);
  txtObra.SetFocus;
end;

procedure TCTC_FM_M_ORC.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_M_ORC) then
      begin
        inherited;
        txtObra.SetFocus;
      end;
end;

procedure TCTC_FM_M_ORC.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_M_ORC) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtObra.SetFocus;
     end;
end;

procedure TCTC_FM_M_ORC.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_M_ORC);
end;

procedure TCTC_FM_M_ORC.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CTC_CD_M_ORC.FieldByName('ID_ORC').AsString;
  DmGeral.Grava(dmGeral.CTC_CD_M_ORC);

  inherited;

  dmGeral.CTC_CD_M_ORC.Close;
  dmGeral.CTC_CD_M_ORC.Data :=
  dmGeral.CTC_CD_M_ORC.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCTC_FM_M_ORC.btnAddItensClick(Sender: TObject);
begin
  inherited;
  pnlItens.Enabled := True;

  dmGeral.CTC_CD_M_ORC_ITE.Insert;
  txtItem.SetFocus;
end;

procedure TCTC_FM_M_ORC.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CTC_CD_M_ORC.Close;
    dmGeral.CTC_CD_M_ORC.Data :=
    dmGeral.CTC_CD_M_ORC.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_M_ORC.cbbPesquisaChange(Sender: TObject);
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

procedure TCTC_FM_M_ORC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CTC_CD_M_ORC.Close;
  FreeAndNil(CTC_FM_M_ORC);
end;

procedure TCTC_FM_M_ORC.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CTC_CD_M_ORC.Close;
  dmGeral.CTC_CD_M_ORC.Data := dmGeral.CTC_CD_M_ORC.DataRequest(VarArrayOf([0, '']));
  dmGeral.CTC_CD_M_ORC.Open;
end;

procedure TCTC_FM_M_ORC.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := False;
     if dmGeral.CTC_CD_M_ORC_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CTC_CD_M_ORC_ITE.Delete;
     dmGeral.CTC_CD_M_ORC_ITE.Edit;
  finally
    grdItensIButton.Enabled := True;
  end;
end;

procedure TCTC_FM_M_ORC.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlItens.Enabled = False then
     pnlItens.Enabled := True;

  dmGeral.CTC_CD_M_ORC_ITE.Cancel;

  if dmGeral.CTC_CD_M_ORC_ITE.IsEmpty then
     begin
       dmGeral.CTC_CD_M_ORC_ITE.Append;
       pnlItens.Enabled := True;
       txtItem.SetFocus;
     end
  else
     begin
       dmGeral.CTC_CD_M_ORC_ITE.Edit;
       pnlItens.Enabled := true;
       txtItem.SetFocus;
     end;
end;

procedure TCTC_FM_M_ORC.pnlItensExit(Sender: TObject);
begin
  inherited;
  if (btnAddItens.Focused) or (grdItens.Focused) or
     (not grdItensIButton.Enabled) then
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
              Exit;
           end;

        dmGeral.CTC_CD_M_ORC_ITE.Cancel;
        dmGeral.CTC_CD_M_ORC_ITE.edit;
        finally
           pnlItens.Enabled := False;
        end;
      end;
end;

procedure TCTC_FM_M_ORC.txtItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.CTC_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmGeral.CTC_CD_M_ORC_ITE.FieldByName('INT_NOMEITE').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TCTC_FM_M_ORC.txtItemExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  dmGeral.CTC_CD_M_ORC_ITE.FieldByName('INT_NOMEITE').Text := '';

  dmGeral.BusItens(0,dmGeral.CTC_CD_M_ORC_ITE.FieldByName('ID_ITEM').Text);
  if dmGeral.BUS_CD_C_ITE.IsEmpty then
     begin
       dmGeral.CTC_CD_M_ORC_ITE.FieldByName('ID_ITEM').Text := '';
       dmGeral.CTC_CD_M_ORC_ITE.FieldByName('INT_NOMEITE').text  := '';
       txtItem.SetFocus;
       Exit;
     end
  else
     begin
       dmGeral.CTC_CD_M_ORC_ITE.FieldByName('INT_NOMEITE').text :=
               dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
end;

procedure TCTC_FM_M_ORC.txtObraButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_OBR := TPSQ_FM_X_OBR.Create(Self);
   PSQ_FM_X_OBR.ShowModal;
      if not PSQ_FM_X_OBR.BUS_CD_C_OBR.IsEmpty then
         begin
           dmGeral.CTC_CD_M_ORC.FieldByName('ID_OBRA').AsString :=
              PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('ID_OBRA').AsString;

           dmGeral.CTC_CD_M_ORC.FieldByName('INT_NOMEOBR').Text :=
              PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_OBR.Free;
end;

procedure TCTC_FM_M_ORC.txtObraExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         Exit;
       end;

    dmGeral.CTC_CD_M_ORC.FieldByName('INT_NOMEOBR').Text := '';

    dmGeral.BUS_CD_C_OBR.Close;
    dmGeral.BUS_CD_C_OBR.Data :=
    dmGeral.BUS_CD_C_OBR.DataRequest(VarArrayOf([0, txtObra.Text]));

    dmGeral.CTC_CD_M_ORC.FieldByName('INT_NOMEOBR').Text :=
         dmGeral.BUS_CD_C_OBR.FieldByName('DESCRICAO').AsString;
end;

procedure TCTC_FM_M_ORC.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCTC_FM_M_ORC.txtVlrTotalExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       Exit;
     end;

  if txtItem.Focused or
     grdItens.Focused or txtQdte.Focused or txtVlrUnit.Focused or txtVlrTotal.Focused then
     begin
       Exit;
     end;

  dmGeral.CTC_CD_M_ORC_ITE.Post;

  pnlItens.Enabled := False;
  btnAddItens.SetFocus;
end;

end.
