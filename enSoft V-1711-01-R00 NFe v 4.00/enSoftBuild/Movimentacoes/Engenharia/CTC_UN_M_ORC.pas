unit CTC_UN_M_ORC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvExMask,
  JvToolEdit, JvDBControls, Vcl.DBCtrls, Vcl.Mask, JvExExtCtrls, JvExtComponent,
  JvPanel, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb, vcl.wwdblook;

type
  TCTC_FM_M_ORC = class(TPAD_FM_X_PAD)
    txtCodigo: TDBEdit;
    lblCodigo: TLabel;
    lblObra: TLabel;
    txtObraDescricao: TDBText;
    txtObra: TJvDBComboEdit;
    lblDataObra: TLabel;
    dpkDtaObra: TJvDBDateEdit;
    gbGrupo: TGroupBox;
    btnAddGrupo: TBitBtn;
    grdItens: TwwDBGrid;
    grdGrupoIButton: TwwIButton;
    pnlGrupo: TPanel;
    lblItem: TLabel;
    dsoGrupo: TwwDataSource;
    gbComposicao: TGroupBox;
    BtnAddComp: TBitBtn;
    grdComp: TwwDBGrid;
    grdCompIButton: TwwIButton;
    pnlComp: TPanel;
    Label6: TLabel;
    dsoGrupoCom: TwwDataSource;
    gbTotais: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    txtPerLs: TDBEdit;
    txtVrlLs: TDBEdit;
    txtPerBDI: TDBEdit;
    txtVrlBDI: TDBEdit;
    txtPerADM: TDBEdit;
    txtVrlADM: TDBEdit;
    txtVrlTotTax: TDBEdit;
    txtQtdeTot: TDBEdit;
    txtVrlTot: TDBEdit;
    txtVlrMat: TDBEdit;
    txtVlrMO: TDBEdit;
    Label20: TLabel;
    cbbEstrutura: TwwDBLookupCombo;
    Label1: TLabel;
    lblComposicaoEspecificacao: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    txtDescricao: TDBEdit;
    txtUnid: TDBEdit;
    txtClasse: TDBEdit;
    txtCodigo2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label19: TLabel;
    txtDescComp: TDBEdit;
    txtQtde: TDBEdit;
    txtVlrUnit: TDBEdit;
    txtGrupo: TDBEdit;
    Label5: TLabel;
    txtItem: TJvDBComboEdit;
    Label23: TLabel;
    txtVlrTotal: TDBEdit;
    txtFoco: TDBEdit;
    txtFoco2: TDBEdit;
    Label14: TLabel;
    txtVlrUnitTot: TDBEdit;
    Label24: TLabel;
    txtGeral: TDBEdit;
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
    procedure pnlGrupoExit(Sender: TObject);
    procedure btnAddGrupoClick(Sender: TObject);
    procedure grdGrupoIButtonClick(Sender: TObject);
    procedure txtVlrTotalExit(Sender: TObject);
    procedure txtGrupoButtonClick(Sender: TObject);
    procedure txtGrupoExit(Sender: TObject);
    procedure BtnAddCompClick(Sender: TObject);
    procedure pnlCompExit(Sender: TObject);
    procedure grdCompIButtonClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gbTotaisExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbEstruturaEnter(Sender: TObject);
    procedure cbbEstruturaExit(Sender: TObject);
    procedure txtDescricaoExit(Sender: TObject);
    procedure grdItensDblClick(Sender: TObject);
    procedure txtItemButtonClick(Sender: TObject);
    procedure txtItemExit(Sender: TObject);
    procedure grdCompDblClick(Sender: TObject);
    procedure gbTotaisEnter(Sender: TObject);
    procedure txtPerLsExit(Sender: TObject);
    procedure txtVrlLsExit(Sender: TObject);
    procedure txtPerBDIExit(Sender: TObject);
    procedure txtVrlBDIExit(Sender: TObject);
    procedure txtPerADMExit(Sender: TObject);
    procedure txtVrlADMExit(Sender: TObject);
    procedure txtQtdeTotEnter(Sender: TObject);
    procedure txtQtdeTotExit(Sender: TObject);
  private
    { Private declarations }
    var
    id_tpr,estrutura: string;

  public
    { Public declarations }
  end;

var
  CTC_FM_M_ORC: TCTC_FM_M_ORC;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_OBR, PSQ_UN_X_ITE, PSQ_UN_X_TPR, uDmCtc;

procedure TCTC_FM_M_ORC.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_ORC);
  dpkDtaObra.SetFocus;
  estrutura := '';
end;

procedure TCTC_FM_M_ORC.acAlterarExecute(Sender: TObject);
begin

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_ORC) then
      begin
        inherited;
        txtObra.SetFocus;
        estrutura := dmCtc.CTC_CD_M_ORC.FieldByName('ID_ESTRUTURA').AsString;;
      end;
end;

procedure TCTC_FM_M_ORC.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_ORC) then
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
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_M_ORC);
end;

procedure TCTC_FM_M_ORC.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmCtc.CTC_CD_M_ORC.FieldByName('ID_ORC').AsString;
  DmGeral.Grava(dmCtc.CTC_CD_M_ORC);

  inherited;

  dmCtc.CTC_CD_M_ORC.Close;
  dmCtc.CTC_CD_M_ORC.Data :=
  dmCtc.CTC_CD_M_ORC.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCTC_FM_M_ORC.BtnAddCompClick(Sender: TObject);
begin
  inherited;
  if copy(dmCtc.ctc_cd_m_orc_ite.FieldByName('GRUPO').Text,3,3) <> '000' then
    begin
      dmCtc.CTC_CD_M_ORC_ITE_COM.Insert;
      pnlComp.Enabled := True;
      txtItem.SetFocus;
    end
  else
    begin
      ShowMessage('Grupo invalido.');
      grdItens.SetFocus;
    end;
end;

procedure TCTC_FM_M_ORC.btnAddGrupoClick(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_ORC_ITE.Insert;
  pnlGrupo.Enabled := True;
  txtGrupo.SetFocus;
end;

procedure TCTC_FM_M_ORC.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.CTC_CD_M_ORC.Close;
    dmCtc.CTC_CD_M_ORC.Data :=
    dmCtc.CTC_CD_M_ORC.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_M_ORC.cbbEstruturaEnter(Sender: TObject);
begin
  inherited;
  dmCtc.BUS_CD_C_EOC.Close;
  dmCtc.BUS_CD_C_EOC.Data := dmCtc.BUS_CD_C_EOC.DataRequest(
    VarArrayOf([1,'']));

  cbbEstrutura.DropDown;
end;

procedure TCTC_FM_M_ORC.cbbEstruturaExit(Sender: TObject);
begin
  inherited;
  if dmCtc.BUS_CD_C_EOC_GRU.IsEmpty then
    begin
      ShowMessage('Estrutura de Orçamento deve ser selecionada.');
      exit;
    end;

  if (estrutura = dmCtc.CTC_CD_M_ORC.FieldByName('ID_ESTRUTURA').AsString) then
    exit;

  if (not dmCtc.ctc_cd_m_orc_ite.IsEmpty) and (estrutura <> dmCtc.CTC_CD_M_ORC.FieldByName('ID_ESTRUTURA').AsString) then
    begin
      if MessageDlg('Se a estrutura for alterada os dados da tabela abaixo será cancelado!', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        Begin
          dmCtc.ctc_cd_m_orc_ite.First;
          while not dmCtc.ctc_cd_m_orc_ite.IsEmpty do
            begin
              dmCtc.ctc_cd_m_orc_ite.Delete;
            end;
        End
      else
        begin
          dmCtc.CTC_CD_M_ORC.FieldByName('ID_ESTRUTURA').AsString := estrutura;
          exit;
        end;
    end;

  try
    dmCtc.CTC_CD_M_ORC.BeforePost := nil;

    dmCtc.BUS_CD_C_EOC_GRU.First;
    while not dmCtc.BUS_CD_C_EOC_GRU.Eof do
      begin
        dmCtc.ctc_cd_m_orc_ite.Insert;

        dmCtc.ctc_cd_m_orc_ite.FieldByName('ID_ORC').AsString := dmCtc.ctc_cd_m_orc.FieldByName('ID_ORC').AsString;
        dmCtc.ctc_cd_m_orc_ite.FieldByName('GRUPO').AsString := dmCtc.BUS_CD_C_EOC_GRU.FieldByName('GRUPO').AsString;
        dmCtc.ctc_cd_m_orc_ite.FieldByName('COD_PRPOPRIO').AsString := dmCtc.BUS_CD_C_EOC_GRU.FieldByName('COD_PRPOPRIO').AsString;
        dmCtc.ctc_cd_m_orc_ite.FieldByName('DESCRICAO').AsString := dmCtc.BUS_CD_C_EOC_GRU.FieldByName('DESCRICAO').AsString;
        dmCtc.ctc_cd_m_orc_ite.FieldByName('UND').AsString := dmCtc.BUS_CD_C_EOC_GRU.FieldByName('UND').AsString;
        dmCtc.ctc_cd_m_orc_ite.FieldByName('CLASSE').AsString := dmCtc.BUS_CD_C_EOC_GRU.FieldByName('CLASSE').AsString;

        dmCtc.ctc_cd_m_orc_ite.Post;
        dmCtc.BUS_CD_C_EOC_GRU.Next;
      end;
    estrutura := dmCtc.CTC_CD_M_ORC.FieldByName('ID_ESTRUTURA').AsString;
  finally
    dmCtc.CTC_CD_M_ORC.BeforePost := dmCtc.CTC_CD_M_ORC.BeforePost;
  end;
  txtFoco2.SetFocus;
  Keybd_event(13,0,0,0);
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
  dmCtc.CTC_CD_M_ORC.Close;
  FreeAndNil(CTC_FM_M_ORC);
end;

procedure TCTC_FM_M_ORC.FormCreate(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_ORC.Close;
  dmCtc.CTC_CD_M_ORC.Data := dmCtc.CTC_CD_M_ORC.DataRequest(VarArrayOf([0, '']));
  dmCtc.CTC_CD_M_ORC.Open;
end;

procedure TCTC_FM_M_ORC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_f2 then
    begin
      if not ((dmCtc.CTC_CD_M_ORC.State in [dsInsert]) or (dmCtc.CTC_CD_M_ORC.State in [dsEdit])) then
        begin
          exit;
        end;
      if dmCtc.ctc_cd_m_orc_ite_com.FieldByName('ID_COM').Text <> '' then
        begin
          gbTotais.Enabled := True;
          dmCtc.ctc_cd_m_orc_ite.Edit;

          dmCtc.ctc_cd_m_orc_ite.FieldByName('per_ls').AsCurrency := 124.28;
          dmCtc.ctc_cd_m_orc_ite.FieldByName('per_bdi').AsCurrency := 25;

          txtPerls.SetFocus;
        end
      else
        begin
          ShowMessage('Composição deve ser informada.');
        end;
    end;
end;

procedure TCTC_FM_M_ORC.FormShow(Sender: TObject);
begin
  inherited;
  txtpesquisa.SetFocus;

  dmCtc.BUS_CD_C_EOC.Close;
  dmCtc.BUS_CD_C_EOC.Data := dmCtc.BUS_CD_C_EOC.DataRequest(
    VarArrayOf([1,'']));
end;

procedure TCTC_FM_M_ORC.gbTotaisEnter(Sender: TObject);
var
tot_mo,tot_mat: Currency;
begin
  inherited;
  tot_mo := 0;
  tot_mat := 0;

  dmCtc.CTC_CD_M_ORC_ITE_COM.First;
  while not dmCtc.CTC_CD_M_ORC_ITE_COM.Eof do
    begin
      if dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('INT_CLASSEITETPR').AsString = '0'then
        tot_mat := tot_mat + dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('VLR_TOTAL').AsCurrency
      else
        tot_mo := tot_mo + dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('VLR_TOTAL').AsCurrency;
      dmCtc.CTC_CD_M_ORC_ITE_COM.Next;
    end;
  dmCtc.CTC_CD_M_ORC_ITE.FieldByName('VLR_MO').AsCurrency := TOT_MO;
  dmCtc.CTC_CD_M_ORC_ITE.FieldByName('VLR_MAT').AsCurrency := TOT_MAT;
end;

procedure TCTC_FM_M_ORC.gbTotaisExit(Sender: TObject);
var
total: Currency;
begin
  inherited;
  dmCtc.CTC_CD_M_ORC_ITE.Post;
  gbTotais.Enabled := False;

  total := 0;
  dmCtc.CTC_CD_M_ORC_ITE.First;
  while not dmCtc.CTC_CD_M_ORC_ITE.Eof do
    begin
      total := total + dmCtc.CTC_CD_M_ORC_ITE.FieldByName('vlr_total').AsCurrency;
      dmCtc.CTC_CD_M_ORC_ITE.Next;
    end;
  dmCtc.CTC_CD_M_ORC.FieldByName('vlr_total').AsCurrency := total;
end;

procedure TCTC_FM_M_ORC.grdCompDblClick(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_ORC_ITE_COM.cancel;

  if dmCtc.CTC_CD_M_ORC_ITE_COM.IsEmpty then
    begin
      dmCtc.CTC_CD_M_ORC_ITE_COM.Append;
      pnlComp.Enabled := true;
      txtItem.SetFocus;
    end
  else
    begin
      dmCtc.CTC_CD_M_ORC_ITE_COM.Edit;
      pnlComp.Enabled := true;
      txtItem.Enabled := false;
      txtQtde.SetFocus;
    end;
end;

procedure TCTC_FM_M_ORC.grdCompIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdCompIButton.Enabled := False;
     if dmCtc.CTC_CD_M_ORC_ITE_COM.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmCtc.CTC_CD_M_ORC_ITE_COM.Delete;
     //dmGeral.CTC_CD_M_ORC_ITE.Edit;
  finally
    grdCompIButton.Enabled := True;
  end;
end;

procedure TCTC_FM_M_ORC.grdGrupoIButtonClick(Sender: TObject);
begin
  inherited;
  if txtGrupo.Focused then
    begin
      btnAddGrupo.SetFocus;
      exit;
    end;
  try
     grdGrupoIButton.Enabled := False;
     if dmCtc.CTC_CD_M_ORC_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmCtc.CTC_CD_M_ORC_ITE.Delete;
     //dmGeral.CTC_CD_M_ORC_ITE.Edit;
  finally
    grdGrupoIButton.Enabled := True;
  end;
end;

procedure TCTC_FM_M_ORC.grdItensDblClick(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_ORC_ITE.cancel;

  if dmCtc.CTC_CD_M_ORC_ITE.IsEmpty then
    begin
      dmCtc.CTC_CD_M_ORC_ITE.Append;
      pnlGrupo.Enabled := true;
      txtGrupo.SetFocus;
    end
  else
    begin
      if copy(dmCtc.CTC_CD_M_ORC_ITE.FieldByName('GRUPO').AsString,3,3) = '000' then
        begin
          dmCtc.CTC_CD_M_ORC_ITE.Edit;
          pnlGrupo.Enabled := true;
          txtGrupo.Enabled := false;
          txtUnid.Enabled := false;
          txtClasse.Enabled := false;
          txtCodigo2.Enabled := false;
          txtDescricao.SetFocus;
        end
      else
        begin
          dmCtc.CTC_CD_M_ORC_ITE.Edit;
          pnlGrupo.Enabled := true;
          txtGrupo.Enabled := false;
          txtCodigo2.SetFocus;
        end;
    end;
end;

procedure TCTC_FM_M_ORC.pnlCompExit(Sender: TObject);
var
valor_total: Currency;
begin
inherited;
  if (BtnAddComp.Focused) or (pnlComp.Enabled = False) then
    begin
      //
    end
  else
    begin
      if btnCancelar.Focused then
        begin
          acCancelarExecute(acCancelar);
          //exit;
        end;
      if btnGrava.Focused  then
        begin
          acGravarExecute(acGravar);
          //Exit;
        end;

      try
        dmCtc.ctc_cd_m_orc.BeforePost := nil;

        dmCtc.ctc_cd_m_orc_ite_com.FieldByName('VLR_TOTAL').AsCurrency :=
          dmCtc.ctc_cd_m_orc_ite_com.FieldByName('COEFICIENTE').AsCurrency *
            dmCtc.ctc_cd_m_orc_ite_com.FieldByName('VLR_UNITARIO').AsCurrency;
        dmCtc.CTC_CD_M_ORC_ITE_COM.Post;
        btnAddComp.SetFocus;
        txtItem.Enabled := true;
        pnlComp.Enabled := False;

      finally
        dmCtc.ctc_cd_m_orc.BeforePost := dmCtc.ctc_cd_m_orc.BeforePost;
      end;
    end;
end;

procedure TCTC_FM_M_ORC.pnlGrupoExit(Sender: TObject);
var
Vlr_Tot_MO,Vlr_Tot_Mat,Vlr_Tot: Currency;
begin
  inherited;

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

   if (length(trim(txtGrupo.Text)) < 5) or
      (txtDescricao.Text = '') then
      begin
        dmCtc.CTC_CD_M_ORC_ITE.Cancel;
        txtGrupo.Enabled   := true;
        txtCodigo2.Enabled := true;
        txtUnid.Enabled    := true;
        txtClasse.Enabled  := true;
        pnlGrupo.Enabled   := False;
      end
  else
      begin
        try
        dmCtc.CTC_CD_M_ORC.BeforePost := nil;

        dmCtc.CTC_CD_M_ORC_ITE.Post;
        btnAddGrupo.SetFocus;
        txtGrupo.Enabled   := true;
        txtCodigo2.Enabled := true;
        txtUnid.Enabled    := true;
        txtClasse.Enabled  := true;
        pnlGrupo.Enabled   := False;

        finally
          dmCtc.CTC_CD_M_ORC.BeforePost := dmCtc.CTC_CD_M_ORC.BeforePost;
        end;
      end;
end;

procedure TCTC_FM_M_ORC.txtDescricaoExit(Sender: TObject);
begin
  inherited;
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

  if txtDescricao.Text = '' Then
    begin
      if (dmCtc.CTC_CD_M_ORC_ITE.State in [dsInsert]) or (dmCtc.CTC_CD_M_ORC_ITE.State in [dsEdit]) then
        begin
          ShowMessage('Descrição dee ser preenchida.');
          txtDescricao.SetFocus;
          Abort;
        end;
    end;
end;

procedure TCTC_FM_M_ORC.txtGrupoButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_TPR := TPSQ_FM_X_TPR.Create(Self);

  PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.Close;
  PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.Data :=
      PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.DataRequest(
          VarArrayOf([0,id_tpr]));

   PSQ_FM_X_TPR.ShowModal;
      if not (PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.IsEmpty) then
         begin
           dmCtc.CTC_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.FieldByName('ID_ITEM').AsInteger;

           dmCtc.CTC_CD_M_ORC_ITE.FieldByName('INT_NOMEITETPR').Text :=
              PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.FieldByName('DESCRICAO').AsString;


         end;
   PSQ_FM_X_TPR.Free;
end;

procedure TCTC_FM_M_ORC.txtGrupoExit(Sender: TObject);
VAR
  grupo,univ: String;
  I,a,b: integer;
begin
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

  if length(trim(txtGrupo.Text)) > 4 then
    begin
      a := StrToInt(copy(txtGrupo.Text,1,1));
      b := StrToInt(copy(txtGrupo.Text,3,3));
    end
  else
    begin
      if (dmCtc.ctc_cd_m_orc_ite.State in [dsInsert]) or (dmCtc.ctc_cd_m_orc_ite.State in [dsEdit]) then
        begin
          if txtgrupo.Text =' .   ' then
            begin
             btnAddGrupo.SetFocus;
            end
          else
            begin
              ShowMessage('Grupo inválido.');
              txtGrupo.Text:= '';
              txtGrupo.SetFocus;
            end;
        end;
      exit;
    end;

  try
    pnlGrupo.OnExit := nil;

  if dmCtc.ctc_cd_m_orc_ite.State in [dsInsert] then
    begin
      grupo := dmCtc.ctc_cd_m_orc_ite.FieldByName('GRUPO').AsString;
      dmCtc.ctc_cd_m_orc_ite.cancel;

      for I := 1 to a-1 do
        begin
          univ  := intTostr(I) + '.000';

          if not (dmCtc.ctc_cd_m_orc_ite.Locate('GRUPO',univ,[])) then
            begin
              ShowMessage('Grupo inválido, Falta o grupo principal '+'"'+univ+'"'+';');
              dmCtc.ctc_cd_m_orc_ite.Insert;
              txtGrupo.SetFocus;
              exit;
            end;
        end;

      if b > 0 then  // Critica de Hieranquia , grupo não pricipal.
        begin
          univ := intTostr(a) + '.000';
          if dmCtc.ctc_cd_m_orc_ite.Locate('GRUPO',univ,[]) then
            begin
              if dmCtc.ctc_cd_m_orc_ite.Locate('GRUPO',grupo,[]) then
                begin
                  ShowMessage('Grupo já cadastrado.');
                  dmCtc.ctc_cd_m_orc_ite.Insert;
                  txtGrupo.SetFocus;
                  //Abort;
                end
              else
                begin
                  dmCtc.ctc_cd_m_orc_ite.Insert;

                  dmCtc.ctc_cd_m_orc_ite.FieldByName('ID_ORC').AsString :=
                    dmCtc.ctc_cd_m_orc.FieldByName('ID_ORC').AsString;

                  dmCtc.ctc_cd_m_orc_ite.FieldByName('GRUPO').AsString := grupo;

                  txtFoco.SetFocus;
                  Keybd_event(13,0,0,0);
                end;
            end
          else
            begin
              ShowMessage('Grupo inválido, Falta o grupo principal '+'"'+univ+'"'+';');
              dmCtc.ctc_cd_m_orc_ite.Insert;
              txtGrupo.SetFocus;
            end;
        end
      else  // Critica de Hieranquia , grupo pricipal.
        begin
          txtCodigo2.Enabled := false;
          txtUnid.Enabled    := false;
          txtClasse.Enabled  := False;

          if dmCtc.ctc_cd_m_orc_ite.Locate('GRUPO',grupo,[]) then
            begin
              ShowMessage('Grupo já cadastrado.');
              dmCtc.ctc_cd_m_orc_ite.Insert;
              txtGrupo.SetFocus;
             // Abort;
            end
          else
            begin
              dmCtc.CTC_CD_C_EOC_GRU.Insert;

              dmCtc.ctc_cd_m_orc_ite.FieldByName('ID_ORC').AsString :=
                dmCtc.ctc_cd_m_orc.FieldByName('ID_ORC').AsString;

              dmCtc.ctc_cd_m_orc_ite.FieldByName('GRUPO').AsString := grupo;

              txtFoco.SetFocus;
              Keybd_event(13,0,0,0);
            end;
        end;
    end;
  finally
    pnlGrupo.OnExit :=  pnlGrupoExit;
  end;
end;

procedure TCTC_FM_M_ORC.txtItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_TPR := TPSQ_FM_X_TPR.Create(Self);

  PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.Close;
  PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.Data :=
      PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.DataRequest(
          VarArrayOf([0,id_tpr]));


  PSQ_FM_X_TPR.ShowModal;
  if not PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.IsEmpty then
    begin
    dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('ID_ITEM').AsString :=
      PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.FieldByName('ID_ITEM').AsString;

    dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('INT_NOMEITETPR').AsString :=
      PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.FieldByName('DESCRICAO').AsString;
  end;
  PSQ_FM_X_TPR.Free;
end;

procedure TCTC_FM_M_ORC.txtItemExit(Sender: TObject);
VAR
id_item,id_com,descricao,sequencia:string;
vlr_unit : Currency;
begin
  inherited;
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

  if trim(dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('id_item').Text) = '' then
     begin
       ShowMessage('O campo "Item" não foi preenchido.');
       dmCtc.CTC_CD_M_ORC_ITE_COM.Cancel;
       pnlComp.Enabled := False;
       btnAddComp.SetFocus;
       exit;
     end
  else
    begin
      dmCtc.bus_cd_m_ctc_tpr.Close;
      dmCtc.bus_cd_m_ctc_tpr.Data :=
        dmCtc.bus_cd_m_ctc_tpr.DataRequest(
          VarArrayOf([1,id_tpr,txtItem.Text]));
    end;

  try
    pnlComp.OnExit := nil;
  if dmCtc.CTC_CD_M_ORC_ITE_COM.State in [dsInsert] then
    begin
      id_com    := dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('ID_COM').AsString;
      id_item   := dmCtc.bus_cd_m_ctc_tpr.FieldByName('ID_ITEM').AsString;
      descricao := dmCtc.bus_cd_m_ctc_tpr.FieldByName('DESCRICAO').AsString;
      vlr_unit   := dmCtc.bus_cd_m_ctc_tpr.FieldByName('PRECO_UNITARIO').AsCurrency;

      dmCtc.CTC_CD_M_ORC_ITE_COM.cancel;
      if dmCtc.CTC_CD_M_ORC_ITE_COM.Locate('ID_ITEM',id_item,[]) then
        begin
          ShowMessage('Item já inserido.');
          dmCtc.CTC_CD_M_ORC_ITE_COM.Insert;
          txtGrupo.SetFocus;
        end
      else
        begin
          dmCtc.CTC_CD_M_ORC_ITE_COM.Insert;
          dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('ID_COM').AsString := id_com;
          dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('ID_ITEM').AsString := id_item;
          dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('INT_NOMEITETPR').AsString := descricao;
          dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('ID_ORC').AsString := dmCtc.CTC_CD_M_ORC.FieldByName('ID_ORC').AsString;
          dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('GRUPO').AsString := dmCtc.CTC_CD_M_ORC_ITE.FieldByName('GRUPO').AsString;
          dmCtc.CTC_CD_M_ORC_ITE_COM.FieldByName('VLR_UNITARIO').AsCurrency := vlr_unit;
        end;
    end;
  finally
     pnlComp.OnExit :=  pnlCompExit;
  end;
end;

procedure TCTC_FM_M_ORC.txtObraButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_OBR := TPSQ_FM_X_OBR.Create(Self);
   PSQ_FM_X_OBR.ShowModal;
      if not PSQ_FM_X_OBR.BUS_CD_C_OBR.IsEmpty then
         begin
           dmCtc.CTC_CD_M_ORC.FieldByName('ID_OBRA').AsString :=
              PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('ID_OBRA').AsString;

           dmCtc.CTC_CD_M_ORC.FieldByName('INT_NOMEOBR').Text :=
              PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('DESCRICAO').AsString;

           id_tpr := PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('ID_TPR').AsString;
         end;
   PSQ_FM_X_OBR.Free;
end;

procedure TCTC_FM_M_ORC.txtObraExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_ORC.FieldByName('id_obra').Text) = '' then
     begin
       ShowMessage('O campo "Obra" não foi preenchido.');
       exit;
     end;

  dmCtc.BusObra(0,dmCtc.CTC_CD_M_ORC.FieldByName('id_obra').Text);
  if dmCtc.BUS_CD_C_OBR.IsEmpty then
     begin
       ShowMessage('Obra não Cadastrado.');
       exit;
     end;

  dmCtc.bus_cd_c_obr.Close;
    dmCtc.bus_cd_c_obr.Data :=
      dmCtc.bus_cd_c_obr.DataRequest(
        VarArrayOf([0, dmCtc.CTC_CD_M_ORC.FieldByName('id_obra').Text,'True']));

   dmCtc.CTC_CD_M_ORC.FieldByName('INT_NOMEOBR').Text := dmCtc.bus_cd_c_obr.FieldByName('DESCRICAO').AsString;
   id_tpr := dmCtc.bus_cd_c_obr.FieldByName('ID_TPR').AsString;
end;

procedure TCTC_FM_M_ORC.txtPerADMExit(Sender: TObject);
var
vlr_tot : Currency;
begin
  inherited;
  vlr_tot :=  dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_mo').AsCurrency +
    dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_mat').AsCurrency;

  dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_adm').AsCurrency :=
    (dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_mo').AsCurrency +
     dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_mat').AsCurrency +
     dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_ls').AsCurrency)*
     dmCtc.ctc_cd_m_orc_ite.FieldByName('per_adm').AsCurrency / 100;

end;

procedure TCTC_FM_M_ORC.txtPerBDIExit(Sender: TObject);
var
vlr_tot : Currency;
begin
  inherited;
  vlr_tot :=  dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_mo').AsCurrency +
    dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_mat').AsCurrency;

  dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_bdi').AsCurrency :=
     (dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_mo').AsCurrency +
      dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_mat').AsCurrency +
      dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_ls').AsCurrency)*
      dmCtc.ctc_cd_m_orc_ite.FieldByName('per_bdi').AsCurrency / 100;
end;

procedure TCTC_FM_M_ORC.txtPerLsExit(Sender: TObject);
begin
  inherited;
  dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_ls').AsCurrency :=
    dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_mo').AsCurrency *
    dmCtc.ctc_cd_m_orc_ite.FieldByName('per_ls').AsCurrency / 100;
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

procedure TCTC_FM_M_ORC.txtQtdeTotEnter(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_ORC_ITE.FieldByName('total_taxa').AsCurrency :=
    dmCtc.CTC_CD_M_ORC_ITE.FieldByName('vlr_ls').AsCurrency +
    dmCtc.CTC_CD_M_ORC_ITE.FieldByName('vlr_bdi').AsCurrency +
    dmCtc.CTC_CD_M_ORC_ITE.FieldByName('vlr_adm').AsCurrency;

  dmCtc.CTC_CD_M_ORC_ITE.FieldByName('vlr_unitario').AsCurrency :=
    dmCtc.CTC_CD_M_ORC_ITE.FieldByName('total_taxa').AsCurrency +
    dmCtc.CTC_CD_M_ORC_ITE.FieldByName('vlr_mo').AsCurrency +
    dmCtc.CTC_CD_M_ORC_ITE.FieldByName('vlr_mat').AsCurrency;
end;

procedure TCTC_FM_M_ORC.txtQtdeTotExit(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_M_ORC_ITE.FieldByName('vlr_total').AsCurrency :=
    dmCtc.CTC_CD_M_ORC_ITE.FieldByName('qtde').AsCurrency *
      dmCtc.CTC_CD_M_ORC_ITE.FieldByName('vlr_unitario').AsCurrency;
end;

procedure TCTC_FM_M_ORC.txtVlrTotalExit(Sender: TObject);
begin
  inherited;
  {if btnCancelar.Focused or
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
  btnAddItens.SetFocus;}
end;

procedure TCTC_FM_M_ORC.txtVrlADMExit(Sender: TObject);
var
vlr_tot : Currency;
begin
  inherited;
  vlr_tot :=  dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_mo').AsCurrency +
    dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_mat').AsCurrency;

//  dmCtc.ctc_cd_m_orc_ite.FieldByName('per_adm').AsCurrency :=
//   dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_adm').AsCurrency / vlr_tot * 100;
end;

procedure TCTC_FM_M_ORC.txtVrlBDIExit(Sender: TObject);
var
vlr_tot : Currency;
begin
  inherited;
  vlr_tot :=  dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_mo').AsCurrency +
    dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_mat').AsCurrency;

//  dmCtc.ctc_cd_m_orc_ite.FieldByName('per_bdi').AsCurrency :=
//    dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_bdi').AsCurrency / vlr_tot * 100;
end;

procedure TCTC_FM_M_ORC.txtVrlLsExit(Sender: TObject);
begin
  inherited;
//  dmCtc.ctc_cd_m_orc_ite.FieldByName('per_ls').AsCurrency :=
//    dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_ls').AsCurrency / dmCtc.ctc_cd_m_orc_ite.FieldByName('vlr_mo').AsCurrency * 100;
end;

end.
