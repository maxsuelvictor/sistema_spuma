unit PCP_UN_M_MCP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, vcl.wwdblook, Vcl.Mask, Vcl.DBCtrls, JvDBControls,
  Vcl.ComCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TPCP_FM_M_MCP = class(TPAD_FM_X_PAD)
    dsoIve: TwwDataSource;
    lblControle: TLabel;
    txtControle: TDBEdit;
    cbbSetor: TwwDBLookupCombo;
    lblSetor: TLabel;
    lblMaquina: TLabel;
    cbbMaquina: TwwDBLookupCombo;
    txtProblema: TDBEdit;
    lblProblema: TLabel;
    lblAtendimentoMecanico: TLabel;
    lblInicio: TLabel;
    lblFim: TLabel;
    lblHoraInicio: TLabel;
    txtHoraInicio: TDBEdit;
    txtHoraFim: TDBEdit;
    lblHoraFim: TLabel;
    dpkDataInicio: TJvDBDateEdit;
    lblDataInicio: TLabel;
    lblDataFim: TLabel;
    dpkDataFim: TJvDBDateEdit;
    Label1: TLabel;
    cbbCronograma: TwwDBLookupCombo;
    dsoSer: TwwDataSource;
    lblCidade: TLabel;
    txtResponsavel: TJvDBComboEdit;
    txtResponsavelDescricao: TDBText;
    lblAniversario: TLabel;
    dpkDataAutorizacao: TJvDBDateEdit;
    lblTipoManutencao: TLabel;
    gbTotais: TGroupBox;
    lblTotalPecas: TLabel;
    txtTotalPecas: TDBEdit;
    txtTotalMaoObra: TDBEdit;
    lblTotalMaoObra: TLabel;
    txtTotalPecasGarantia: TDBEdit;
    lblTotalPecasGarantia: TLabel;
    txtTotalPecasMaoObra: TDBEdit;
    lblTotalPecasMaoObra: TLabel;
    txtTotalServicosGarantia: TDBEdit;
    lblTotalServicosGarantia: TLabel;
    txtTotalGarantia: TDBEdit;
    lblTotalGarantia: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pcFilhos: TPageControl;
    tbiChecklist: TTabSheet;
    dgChecklist: TwwDBGrid;
    dgChecklistIButton: TwwIButton;
    pnlCheckList: TPanel;
    lblVerificado: TLabel;
    lblSubstituido: TLabel;
    lblLubrificado: TLabel;
    lblAjustado: TLabel;
    lblCompletado: TLabel;
    lblTrocado: TLabel;
    lblLimpo: TLabel;
    lblReparado: TLabel;
    lblOutros: TLabel;
    lblObservacoes: TLabel;
    lblOqueFoiVerificado: TLabel;
    txtOqueFoiVerificado: TDBEdit;
    chkVerificado: TDBCheckBox;
    chkSubstituido: TDBCheckBox;
    chkLubrificado: TDBCheckBox;
    chkAjustado: TDBCheckBox;
    chkCompletado: TDBCheckBox;
    chkTrocado: TDBCheckBox;
    chkLimpo: TDBCheckBox;
    chkReparado: TDBCheckBox;
    chkOutros: TDBCheckBox;
    txtObservacoes: TDBEdit;
    btnAddChecklist: TBitBtn;
    tbiItens: TTabSheet;
    btnAddItem: TBitBtn;
    dgItens: TwwDBGrid;
    dgItensIButton: TwwIButton;
    pnlItem: TPanel;
    lblItem: TLabel;
    txtItemDescricao: TDBText;
    txtItem: TJvDBComboEdit;
    lblItensDescricao: TLabel;
    cbbTipoManutencao: TJvDBComboBox;
    txtUnidade: TDBText;
    lblUnidade: TLabel;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnAddChecklistClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtObservacoesExit(Sender: TObject);
    procedure dgChecklistMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbSetorEnter(Sender: TObject);
    procedure cbbMaquinaEnter(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dgChecklistIButtonClick(Sender: TObject);
    procedure pnlCheckListExit(Sender: TObject);
    procedure cbbCronogramaEnter(Sender: TObject);
    procedure txtResponsavelButtonClick(Sender: TObject);
    procedure txtResponsavelExit(Sender: TObject);
    procedure btnAddItemClick(Sender: TObject);
    procedure pnlItemExit(Sender: TObject);
    procedure dgItensIButtonClick(Sender: TObject);
    procedure dgItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtItemExit(Sender: TObject);
    procedure txtItemButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_MCP: TPCP_FM_M_MCP;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FUN, PSQ_UN_X_ITE;

procedure TPCP_FM_M_MCP.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_MCP);

  dmGeral.BusFuncionario(0,dmGeral.PCP_CD_M_MCP.FieldByName('ID_RESPONSAVEL').text);
  if not dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       dmGeral.PCP_CD_M_MCP.FieldByName('INT_NOMERES').text :=
               dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
     end;

  pnlCheckList.Enabled := False;
  cbbSetor.SetFocus;
end;

procedure TPCP_FM_M_MCP.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_MCP) then
      begin
        inherited;
        pnlCheckList.Enabled := False;
        cbbSetor.SetFocus;
      end;
end;

procedure TPCP_FM_M_MCP.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_MCP) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbSetor.SetFocus;
     end;
end;

procedure TPCP_FM_M_MCP.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_MCP);
end;

procedure TPCP_FM_M_MCP.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmGeral.PCP_CD_M_MCP.FieldByName('ID_MCP').AsString;
   DmGeral.Grava(dmGeral.PCP_CD_M_MCP);
   inherited;
   dmGeral.PCP_CD_M_MCP.Close;
   dmGeral.PCP_CD_M_MCP.Data :=
   dmGeral.PCP_CD_M_MCP.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_M_MCP.btnAddChecklistClick(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_MCP_IVE.Insert;
  txtOqueFoiVerificado.Enabled := true;
  pnlCheckList.Enabled := True;
  txtOqueFoiVerificado.SetFocus;
end;

procedure TPCP_FM_M_MCP.btnAddItemClick(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_MCP_SER.Insert;
  txtItem.Enabled := true;
  pnlItem.Enabled := True;
  txtItem.SetFocus;
end;

procedure TPCP_FM_M_MCP.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.PCP_CD_M_MCP.Close;
    dmGeral.PCP_CD_M_MCP.Data :=
    dmGeral.PCP_CD_M_MCP.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_MCP.cbbCronogramaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCME(2,'%');
  cbbCronograma.DropDown;
end;

procedure TPCP_FM_M_MCP.cbbMaquinaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusMaquinas(1,'%');
  cbbMaquina.DropDown;
end;

procedure TPCP_FM_M_MCP.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_M_MCP.cbbSetorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusSetor(1,'%');
  cbbSetor.DropDown;
end;

procedure TPCP_FM_M_MCP.dgChecklistIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgCheckListIButton.Enabled := False;
     if dmGeral.PCP_CD_M_MCP_IVE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmGeral.PCP_CD_M_MCP_IVE.Delete;
     dmGeral.PCP_CD_M_MCP_IVE.Edit;
  finally
    dgCheckListIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_MCP.dgChecklistMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlCheckList.Enabled = False then
     pnlCheckList.Enabled := True;

  dmGeral.PCP_CD_M_MCP_IVE.cancel;

  if dmGeral.PCP_CD_M_MCP_IVE.IsEmpty then
     begin
       dmGeral.PCP_CD_M_MCP_IVE.Append;
       pnlCheckList.Enabled := True;
       txtOqueFoiVerificado.SetFocus;
     end
  else
     begin
       dmGeral.PCP_CD_M_MCP_IVE.Edit;
       pnlCheckList.Enabled := True;
       txtOqueFoiVerificado.SetFocus;
     end;
end;

procedure TPCP_FM_M_MCP.dgItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgItensIButton.Enabled := False;
     if dmGeral.PCP_CD_M_MCP_SER.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          Abort;
        end;

     dmGeral.PCP_CD_M_MCP_SER.Delete;
     dmGeral.PCP_CD_M_MCP_SER.Edit;
  finally
    dgItensIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_MCP.dgItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlItem.Enabled = False then
     pnlItem.Enabled := True;

  dmGeral.PCP_CD_M_MCP_SER.cancel;

  if dmGeral.PCP_CD_M_MCP_SER.IsEmpty then
     begin
       dmGeral.PCP_CD_M_MCP_SER.Append;
       pnlItem.Enabled := True;
       txtItem.SetFocus;
     end
  else
     begin
       dmGeral.PCP_CD_M_MCP_SER.Edit;
       pnlItem.Enabled := True;
       txtItem.SetFocus;
     end;
end;

procedure TPCP_FM_M_MCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_MCP.Close;
  FreeAndNil(PCP_FM_M_MCP);
end;

procedure TPCP_FM_M_MCP.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_MCP.Close;
  dmGeral.PCP_CD_M_MCP.Data := dmGeral.PCP_CD_M_MCP.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_MCP.Open;

  dmGeral.BusSetor(1,'%');
  dmGeral.BusMaquinas(1,'%');
end;

procedure TPCP_FM_M_MCP.pnlCheckListExit(Sender: TObject);
begin
  inherited;
  if (btnAddChecklist.Focused) or (dgChecklist.Focused) or (not dgChecklistIButton.Enabled) then
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

          dmGeral.PCP_CD_M_MCP_IVE.Cancel;
          dmGeral.PCP_CD_M_MCP_IVE.Edit;
        finally
           pnlCheckList.Enabled := False;
        end;
      end;
end;

procedure TPCP_FM_M_MCP.pnlItemExit(Sender: TObject);
begin
  inherited;
  if (btnAddItem.Focused) or (dgItens.Focused) or (not dgItensIButton.Enabled) then
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

          dmGeral.PCP_CD_M_MCP_SER.Cancel;
          dmGeral.PCP_CD_M_MCP_SER.Edit;
        finally
           pnlItem.Enabled := False;
        end;
      end;
end;

procedure TPCP_FM_M_MCP.txtItemButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.PCP_CD_M_MCP_SER.FieldByName('INT_NOMEITE').AsString :=
                PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

           dmGeral.PCP_CD_M_MCP_SER.FieldByName('ID_ITEM').AsString :=
                PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_M_MCP.txtItemExit(Sender: TObject);
var
  item: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if btnAddItem.Focused then
     begin
       Abort;
     end;

  dmGeral.PCP_CD_M_MCP_SER.FieldByName('INT_NOMEITE').text := '';

  if trim(dmGeral.PCP_CD_M_MCP_SER.FieldByName('ID_ITEM').Text) <> '' then
     begin
        dmGeral.BusItens(0,dmGeral.PCP_CD_M_MCP_SER.FieldByName('ID_ITEM').Text);
        if dmGeral.BUS_CD_C_ITE.IsEmpty then
           begin
             Showmessage('Item não encontrado.');
             dmGeral.PCP_CD_M_MCP_SER.FieldByName('ID_ITEM').Text := '';
             txtItem.SetFocus;
             Exit;
           end;
        dmGeral.PCP_CD_M_MCP_SER.FieldByName('INT_NOMEITE').text :=
                dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').Text;
     end;

  item := dmGeral.PCP_CD_M_MCP_SER.FieldByName('ID_ITEM').AsString;
  dmGeral.PCP_CD_M_MCP_SER.Post;
  pnlItem.Enabled := False;
  btnAddItem.SetFocus;

  dmGeral.PCP_CD_M_MCP_SER.locate('ID_ITEM',item,[]);
end;

procedure TPCP_FM_M_MCP.txtObservacoesExit(Sender: TObject);
var
  checklist: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if btnAddChecklist.Focused or txtOqueFoiVerificado.Focused or chkVerificado.Focused or
     chkSubstituido.Focused or chkLubrificado.Focused or chkAjustado.Focused or chkCompletado.Focused or
     chkTrocado.Focused or chkLimpo.Focused or chkReparado.Focused or chkOutros.Focused then
     begin
       abort;
     end;

  checklist := dmGeral.PCP_CD_M_MCP_IVE.FieldByName('ID_MCP_IVE').AsString;
  dmGeral.PCP_CD_M_MCP_IVE.Post;

  pnlCheckList.Enabled := False;
  btnAddChecklist.SetFocus;

  dmGeral.PCP_CD_M_MCP_IVE.locate('ID_MCP_IVE',checklist,[]);
end;

procedure TPCP_FM_M_MCP.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_M_MCP.txtResponsavelButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
   PSQ_FM_X_FUN.ShowModal;
      if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
         begin
           dmGeral.PCP_CD_M_MCP.FieldByName('INT_NOMERAU').AsString :=
                PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString;

           dmGeral.PCP_CD_M_MCP.FieldByName('ID_RESP_AUTORIZOU').AsString :=
                PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsString;
         end;
   PSQ_FM_X_FUN.Free;
end;

procedure TPCP_FM_M_MCP.txtResponsavelExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_FUN.Close;

  dmGeral.PCP_CD_M_MCP.FieldByName('INT_NOMERAU').Text := '';

  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, txtResponsavel.Text]));

  dmGeral.PCP_CD_M_MCP.FieldByName('INT_NOMERAU').Text :=
       dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
end;

end.
