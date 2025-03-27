unit CTC_UN_C_TPR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvExExtCtrls, JvExtComponent, JvPanel, vcl.wwdblook, JvExMask,
  JvToolEdit, JvDBControls, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb;

type
  TCTC_FM_C_TPR = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    dsoIte: TwwDataSource;
    dsoIteCom: TwwDataSource;
    gbItens: TGroupBox;
    btnAddItens: TBitBtn;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    pnlItens: TPanel;
    lblComposicaoEspecificacao: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    txtUnid: TDBEdit;
    txtVlrUnit: TDBEdit;
    cbbClasse: TwwDBComboBox;
    txtDescItem: TDBEdit;
    dpkDtaBase: TJvDBDateEdit;
    gbComposicao: TGroupBox;
    BtnAddComp: TBitBtn;
    grdComp: TwwDBGrid;
    grdCompIButton: TwwIButton;
    pnlComp: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    txtItemComp: TJvDBComboEdit;
    txtQtde: TDBEdit;
    txtItemDescricao: TDBText;
    Label7: TLabel;
    txtItem: TJvDBComboEdit;
    cbbClasse2: TwwDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnAddItensClick(Sender: TObject);
    procedure pnlItensExit(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure txtItemCompButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnlCompExit(Sender: TObject);
    procedure cbbClasseEnter(Sender: TObject);
    procedure BtnAddCompClick(Sender: TObject);
    procedure txtItemCompExit(Sender: TObject);
    procedure grdCompIButtonClick(Sender: TObject);
    procedure txtItemButtonClick(Sender: TObject);
    procedure txtItemExit(Sender: TObject);
    procedure btnCancelarEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_C_TPR: TCTC_FM_C_TPR;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_TPR, PSQ_UN_X_ITE, uDmCtc;

procedure TCTC_FM_C_TPR.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_TPR);
  txtDescricao.SetFocus;
end;

procedure TCTC_FM_C_TPR.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_TPR) then
      begin
        inherited;
        txtDescricao.SetFocus;
      end;
end;

procedure TCTC_FM_C_TPR.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_TPR) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCTC_FM_C_TPR.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.CTC_CD_C_TPR);
end;

procedure TCTC_FM_C_TPR.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmCtc.CTC_CD_C_TPR.FieldByName('ID_TPR').AsString;
  DmGeral.Grava(dmCtc.CTC_CD_C_TPR);
  inherited;
  dmCtc.CTC_CD_C_TPR.Close;
  dmCtc.CTC_CD_C_TPR.Data :=
  dmCtc.CTC_CD_C_TPR.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCTC_FM_C_TPR.BtnAddCompClick(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_C_TPR_ITE_COM.Insert;
  pnlComp.Enabled := True;
  txtItemComp.SetFocus;
end;

procedure TCTC_FM_C_TPR.btnAddItensClick(Sender: TObject);
begin
  inherited;
  try
    dmCtc.CTC_CD_C_TPR.BeforePost := nil;
    dmCtc.CTC_CD_C_TPR_ITE.Insert;
    pnlItens.Enabled := True;
    txtItem.SetFocus;
  finally
    dmCtc.CTC_CD_C_TPR.BeforePost :=   dmCtc.CTC_CD_C_TPRBeforePost;
  end;
end;

procedure TCTC_FM_C_TPR.btnCancelarEnter(Sender: TObject);
begin
  inherited;
  // Por Esaú: depois do "Locate"  o "Focus" ficava se perdendo,
  // entao estabilizei o "Focus" com o "enter" e aqui ele retorna para o campo de origem.
  {if (pnlComp.Enabled) and (dmCtc.ctc_cd_c_tpr_ite_comint_nomeitetpr.Text <> '') then
  begin
    txtQtde.SetFocus;
  end; } // 1.116 - Quando clica no "+" para adicionar um item dá erro
end;

procedure TCTC_FM_C_TPR.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.CTC_CD_C_TPR.Close;
    dmCtc.CTC_CD_C_TPR.Data :=
    dmCtc.CTC_CD_C_TPR.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_C_TPR.cbbClasseEnter(Sender: TObject);
begin
  inherited;
cbbClasse.DropDown;
end;

procedure TCTC_FM_C_TPR.cbbPesquisaChange(Sender: TObject);
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

procedure TCTC_FM_C_TPR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmCtc.CTC_CD_C_TPR.Close;
  FreeAndNil(CTC_FM_C_TPR);
end;

procedure TCTC_FM_C_TPR.FormCreate(Sender: TObject);
begin
  inherited;
  dmCtc.CTC_CD_C_TPR.Close;
  dmCtc.CTC_CD_C_TPR.Data := dmCtc.CTC_CD_C_TPR.DataRequest(VarArrayOf([1, '%']));
  dmCtc.CTC_CD_C_TPR.Open;
end;

procedure TCTC_FM_C_TPR.FormShow(Sender: TObject);
begin
  inherited;
  txtpesquisa.SetFocus;
end;

procedure TCTC_FM_C_TPR.grdCompIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdCompIButton.Enabled := False;
     if dmCtc.CTC_CD_C_TPR_ITE_COM.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmCtc.CTC_CD_C_TPR_ITE_COM.Delete;
     //dmGeral.CTC_CD_C_TPR_ITE.Edit;
  finally
    grdCompIButton.Enabled := True;
  end;
end;

procedure TCTC_FM_C_TPR.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := False;
     if dmCtc.CTC_CD_C_TPR_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmCtc.CTC_CD_C_TPR_ITE.Delete;
     //dmGeral.CTC_CD_C_TPR_ITE.Edit;
  finally
    grdItensIButton.Enabled := True;
  end;
end;

procedure TCTC_FM_C_TPR.pnlCompExit(Sender: TObject);
begin
  inherited;
  if (btnAddComp.Focused) or (grdComp.Focused) or
     (not grdCompIButton.Enabled) then
      begin
        dmCtc.CTC_CD_C_TPR_ITE_COM.Cancel;
        pnlComp.Enabled := False;
      end
  else
      begin
        if (txtqtde.Text = '') or (txtqtde.Text = '0')then
          begin
            showmessage('Qtde devem ser preenchida.');
            txtQtde.SetFocus;
            exit;
          end;

        try
        dmCtc.ctc_cd_c_tpr.BeforePost := nil;

        dmCtc.CTC_CD_C_TPR_ITE_COM.Post;
        btnAddComp.SetFocus;
        pnlComp.Enabled := False;
        finally
          dmCtc.ctc_cd_c_tpr.BeforePost := dmCtc.ctc_cd_c_tpr.BeforePost;
        end;
      end;
end;

procedure TCTC_FM_C_TPR.pnlItensExit(Sender: TObject);
begin
  inherited;
  if (btnAddItens.Focused) or (grdItens.Focused) or
     (not grdItensIButton.Enabled) then
      begin
         dmCtc.CTC_CD_C_TPR_ITE.Cancel;
         pnlItens.Enabled := False;
      end
  else
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

        if (txtdescitem.Text = '') or (txtunid.Text = '') or (txtvlrunit.Text = '') or
          (txtvlrunit.Text = '0') or (dpkDtaBase.text = '')  then
          begin
            showmessage('Todos os campos devem ser preenchido.');
            txtdescricao.SetFocus;
            exit;
          end;

        try
        dmCtc.ctc_cd_c_tpr.BeforePost := nil;

        dmCtc.CTC_CD_C_TPR_ITE.Post;
        btnAddItens.SetFocus;
        pnlItens.Enabled := False;

        finally
          dmCtc.ctc_cd_c_tpr.BeforePost := dmCtc.ctc_cd_c_tpr.BeforePost;
        end;
      end;
end;

procedure TCTC_FM_C_TPR.txtItemCompButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_TPR := TPSQ_FM_X_TPR.Create(Self);

  PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.Close;
  PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.Data :=
      PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.DataRequest(
          VarArrayOf([0,dmCtc.CTC_CD_C_TPR.FieldByName('ID_TPR').Text]));

  PSQ_FM_X_TPR.ShowModal;
      if not PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.IsEmpty then
         begin
           dmCtc.CTC_CD_C_TPR_ITE_COM.FieldByName('ID_ITEM_COMP').AsString :=
              PSQ_FM_X_TPR.BUS_CD_M_CTC_TPR.FieldByName('ID_ITEM').AsString;
         end;
   PSQ_FM_X_TPR.Free;
end;

procedure TCTC_FM_C_TPR.txtItemCompExit(Sender: TObject);
var
id_item,id_tpr,id_item_comp,descricao : string;
begin
  inherited;
  dmCtc.bus_cd_m_ctc_tpr.Close;
  dmCtc.bus_cd_m_ctc_tpr.Data :=
      dmCtc.bus_cd_m_ctc_tpr.DataRequest(
          VarArrayOf([1,dmCtc.CTC_CD_C_TPR.FieldByName('ID_TPR').Text,txtitemComp.Text]));

  if  dmCtc.bus_cd_m_ctc_tpr.IsEmpty then
    begin
      ShowMessage('Item deve ser informado.');
      exit;
    end;

  try
    pnlComp.OnExit := nil;
  if dmCtc.CTC_CD_C_TPR_ITE_COM.State in [dsInsert] then
    begin
      id_item_comp := dmCtc.CTC_CD_C_TPR_ITE_COM.FieldByName('ID_ITEM_COMP').AsString;
      id_item := dmCtc.CTC_CD_C_TPR_ITE.FieldByName('ID_ITEM').AsString;
      id_tpr := dmCtc.CTC_CD_C_TPR_ITE_COM.FieldByName('ID_TPR').AsString;
      descricao := dmCtc.bus_cd_m_ctc_tpr.FieldByName('DESCRICAO').AsString;

      dmCtc.CTC_CD_C_TPR_ITE_COM.cancel;
      if dmCtc.CTC_CD_C_TPR_ITE_COM.Locate('ID_ITEM_COMP;ID_ITEM',VarArrayOf([id_item_comp,id_item]),[]) then
        begin
          ShowMessage('Item já inserido.');
          dmCtc.CTC_CD_C_TPR_ITE_COM.Insert;
          txtItemComp.SetFocus;
          abort;
        end
      else
        begin
          dmCtc.CTC_CD_C_TPR_ITE_COM.Insert;
          dmCtc.CTC_CD_C_TPR_ITE_COM.FieldByName('ID_ITEM_COMP').AsString := id_item_comp;
          dmCtc.CTC_CD_C_TPR_ITE_COM.FieldByName('ID_ITEM').AsString := id_item;
          dmCtc.CTC_CD_C_TPR_ITE_COM.FieldByName('ID_TPR').AsString := id_tpr;
          dmCtc.CTC_CD_C_TPR_ITE_COM.FieldByName('INT_NOMEITETPR').AsString := descricao;
        end;
    end;
  finally
     pnlComp.OnExit :=  pnlCompExit;
  end;
  // Por Esaú: depois do "Locate"  o "Focus" ficava se perdendo,
  // entao estabilizei o "Focus" com o "enter".
  Keybd_event(13,0,0,0);
end;

procedure TCTC_FM_C_TPR.txtItemExit(Sender: TObject);
var
id_item,id_tpr,id_item_interno,descricao : string;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;
    dmGeral.BUS_CD_C_ITE.Data :=
      dmGeral.BUS_CD_C_ITE.DataRequest(
            VarArrayOf([0, txtItem.Text]));

  if  dmgeral.BUS_CD_C_ITE.IsEmpty then
    begin
      ShowMessage('Item deve ser informado.');
      exit;
    end;

  try
    pnlItens.OnExit := nil;
  if dmCtc.CTC_CD_C_TPR_ITE.State in [dsInsert] then
    begin
      id_item := dmCtc.CTC_CD_C_TPR_ITE.FieldByName('ID_ITEM').AsString;
      id_tpr := dmCtc.CTC_CD_C_TPR_ITE.FieldByName('ID_TPR').AsString;
      id_item_interno := dmCtc.CTC_CD_C_TPR_ITE.FieldByName('ID_ITEM_INTERNO').AsString;
      descricao := dmgeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

      dmCtc.CTC_CD_C_TPR_ITE.cancel;
      if dmCtc.CTC_CD_C_TPR_ITE.Locate('ID_ITEM;ID_ITEM_INTERNO',VarArrayOf([id_item,id_item_interno]),[]) then
        begin
          ShowMessage('Item já inserido.');
          dmCtc.CTC_CD_C_TPR_ITE.Insert;
          txtItem.SetFocus;
          abort;
        end
      else
        begin
          dmCtc.CTC_CD_C_TPR_ITE.Insert;
          dmCtc.CTC_CD_C_TPR_ITE.FieldByName('ID_ITEM').AsString := id_item;
          dmCtc.CTC_CD_C_TPR_ITE.FieldByName('ID_TPR').AsString := id_tpr;
          dmCtc.CTC_CD_C_TPR_ITE.FieldByName('ID_ITEM_INTERNO').AsString := id_item_interno;
          dmCtc.CTC_CD_C_TPR_ITE.FieldByName('DESCRICAO').AsString := descricao;

          CbbClasse.SetFocus;
        end;
    end;
  finally
     pnlitens.OnExit :=  pnlitensExit;
  end;
end;

procedure TCTC_FM_C_TPR.txtItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmCtc.CTC_CD_C_TPR_ITE.FieldByName('ID_ITEM_INTERNO').AsString :=
            PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TCTC_FM_C_TPR.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
