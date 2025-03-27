unit CTC_UN_C_SER;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, vcl.wwdblook, Vcl.Buttons, vcl.Wwdbedit,
  JvExMask, JvToolEdit, JvDBControls;

type
  TCTC_FM_C_SER = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    txtUnd: TDBEdit;
    Label1: TLabel;
    dsoSerCom: TwwDataSource;
    pnItens: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    txtDescItem: TDBText;
    cbbTabela: TwwDBLookupCombo;
    txtBuscaItem: TJvDBComboEdit;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    btn_Add_Itens: TBitBtn;
    txtVlrUnit: TwwDBEdit;
    Label12: TLabel;
    Label8: TLabel;
    txtQtde: TwwDBEdit;
    Label4: TLabel;
    txtVlrTot: TwwDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure cbbTabelaEnter(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure cbbTabelaExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure txtVlrUnitExit(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_C_SER: TCTC_FM_C_SER;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE;

procedure TCTC_FM_C_SER.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_C_SER);
  txtdescricao.SetFocus;
end;

procedure TCTC_FM_C_SER.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_C_SER) then
     begin
       inherited;
       txtDescricao.SetFocus;
     end;
end;

procedure TCTC_FM_C_SER.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_C_SER) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCTC_FM_C_SER.acExcluirExecute(Sender: TObject);
begin
  inherited;
   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_C_SER);
end;

procedure TCTC_FM_C_SER.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  inherited;
  codigo := dmGeral.CTC_CD_C_SER.FieldByName('ID').AsString;
  DmGeral.Grava(dmGeral.CTC_CD_C_SER);

  dmGeral.CTC_CD_C_SER.Close;
  dmGeral.CTC_CD_C_SER.Data :=
  dmGeral.CTC_CD_C_SER.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCTC_FM_C_SER.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    dmGeral.CTC_CD_C_SER.Close;
    dmGeral.CTC_CD_C_SER.Data :=
      dmGeral.CTC_CD_C_SER.DataRequest(
        VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
    finally
      Screen.Cursor := crDefault;
    end;
  if  dmGeral.CTC_CD_C_SER.IsEmpty then
    btnIncluir.SetFocus
  else
    btnAlterar.SetFocus;
end;

procedure TCTC_FM_C_SER.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  try
    dmgeral.CTC_CD_C_SER.BeforePost := nil;
  pnItens.Enabled  := true;

  dmGeral.CTC_CD_C_SER_COM.Insert;
  dmGeral.CTC_CD_C_SER_COM.FieldByName('ID_SER').AsString :=
    dmGeral.CTC_CD_C_SER.FieldByName('ID').AsString;

  cbbTabela.SetFocus;
  finally
    dmgeral.CTC_CD_C_SER.BeforePost := dmgeral.CTC_CD_C_SER.BeforePost;
  end;
end;

procedure TCTC_FM_C_SER.cbbTabelaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_TPR.Close;
  dmGeral.BUS_CD_C_TPR.Data := dmGeral.BUS_CD_C_TPR.DataRequest( VarArrayOf([1,'%']));

  cbbTabela.DropDown;
end;

procedure TCTC_FM_C_SER.cbbTabelaExit(Sender: TObject);
begin
  inherited;
   dmGeral.CTC_CD_C_SER_COM.FieldByName('INT_NOMETPR').AsString :=
               dmGeral.BUS_CD_C_TPR.FieldByName('DESCRICAO').AsString;
end;

procedure TCTC_FM_C_SER.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CTC_CD_C_SER.Close;
  FreeAndNil(CTC_FM_C_SER);
end;

procedure TCTC_FM_C_SER.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CTC_CD_C_SER.Close;
  dmGeral.CTC_CD_C_SER.Data :=
  dmGeral.CTC_CD_C_SER.DataRequest(
          VarArrayOf([0, '']));
end;

procedure TCTC_FM_C_SER.FormShow(Sender: TObject);
begin
  inherited;
  txtpesquisa.SetFocus;
end;

procedure TCTC_FM_C_SER.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := false;
     if dmGeral.CTC_CD_C_SER_COM.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CTC_CD_C_SER_COM.Delete;
     dmGeral.CTC_CD_C_SER_COM.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TCTC_FM_C_SER.pnItensExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Itens.Focused) or (grdItens.Focused) or
     (not grdItensIButton.Enabled) then
      begin
        txtVlrTot.Text := CurrToStr(dmgeral.ctc_cd_c_ser_com.FieldByName('qtde').AsCurrency *
                            dmgeral.ctc_cd_c_ser_com.FieldByName('vlr_unitario').AsCurrency);
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
              exit;
           end;

        txtVlrTot.Text := CurrToStr(dmgeral.ctc_cd_c_ser_com.FieldByName('qtde').AsCurrency *
                            dmgeral.ctc_cd_c_ser_com.FieldByName('vlr_unitario').AsCurrency);
      end;
end;

procedure TCTC_FM_C_SER.txtBuscaItemButtonClick(Sender: TObject);

begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.CTC_CD_C_SER_COM.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmGeral.CTC_CD_C_SER_COM.FieldByName('int_nomeite').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TCTC_FM_C_SER.txtBuscaItemExit(Sender: TObject);
var
id_item,id_tpr : integer;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;
  dmGeral.BUS_CD_C_ITE.Data :=
    dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBuscaItem.Text]));

   if dmGeral.BUS_CD_C_ITE.IsEmpty then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btn_Add_Itens.Focused then
          exit;

       if grdItens.Focused then
          exit;

       if not grdItensIButton.Enabled then
          exit;

       if (txtQtde.Focused) or (txtVlrUnit.Focused) then
           begin
             ShowMessage('Item não Cadastrado.');
             txtBuscaItem.SetFocus;
             exit;
           end
       else
           begin
             pnItens.Enabled := false;
             exit;
           end;

     end
  else
    begin
      if dmGeral.CTC_CD_C_SER_COM.State in [dsInsert] then
        begin
          id_item := dmGeral.CTC_CD_C_SER_COM.FieldByName('ID_ITEM').AsInteger;
          id_tpr  := dmGeral.CTC_CD_C_SER_COM.FieldByName('ID_TPR').AsInteger;

          dmGeral.CTC_CD_C_SER_COM.cancel;
          if dmGeral.CTC_CD_C_SER_COM.Locate('ID_TPR;ID_ITEM',VarArrayOf([id_tpr,id_item]),[]) then
            begin
              ShowMessage('Item já inserido para esta tabela.');
              dmGeral.CTC_CD_C_SER_COM.Insert;
              dmGeral.CTC_CD_C_SER_COM.FieldByName('ID_SER').AsString := dmGeral.CTC_CD_C_SER.FieldByName('ID').AsString;
              dmGeral.CTC_CD_C_SER_COM.FieldByName('ID_TPR').AsInteger  := id_tpr;
              abort;
            end
          else
            begin
              dmGeral.CTC_CD_C_SER_COM.Insert;
              dmGeral.CTC_CD_C_SER_COM.FieldByName('ID_SER').AsString := dmGeral.CTC_CD_C_SER.FieldByName('ID').AsString;
              dmGeral.CTC_CD_C_SER_COM.FieldByName('ID_ITEM').AsInteger := id_item;
              dmGeral.CTC_CD_C_SER_COM.FieldByName('ID_TPR').AsInteger  := id_tpr;

              dmGeral.BUS_CD_C_ITE.Data :=
              dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.CTC_CD_C_SER_COM.FieldByName('ID_ITEM').Text]));

              dmGeral.CTC_CD_C_SER_COM.FieldByName('int_nomeite').AsString := dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
            end;
        end;
     end;
  txtQtde.SetFocus;
end;

procedure TCTC_FM_C_SER.txtQtdeExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (txtQtde.Text = '0') or (txtQtde.Text = '') then
    begin
      showMessage('Quatidade não pode ser zero.');
      txtQtde.SetFocus;
    end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     grdItens.Focused  then
     begin
       exit;
     end;
end;

procedure TCTC_FM_C_SER.txtVlrUnitExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (txtVlrUnit.Text = '0') or (txtVlrUnit.Text = '') then
    begin
      showMessage('Valor unitário não pode ser zero.');
      txtVlrUnit.SetFocus;
    end;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.CTC_CD_C_SER_COM.Post;

  pnItens.Enabled := false;
  btn_Add_Itens.SetFocus;
end;

end.
