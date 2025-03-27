unit PCP_UN_C_REG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, JvExMask, JvToolEdit,
  JvDBControls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, Data.DB, vcl.wwdatsrc,
  System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls, cxButtons, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb, Datasnap.DBClient;

type
  TPCP_FM_C_REG = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    lblRota: TLabel;
    txtDescricao: TDBEdit;
    txtCodigo: TDBEdit;
    txtRota: TJvDBComboEdit;
    txtRotaDescricao: TDBText;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    txtDescMaxPer: TLabel;
    txtMaxDescPer: TwwDBEdit;
    Label1: TLabel;
    gbItens: TGroupBox;
    pnItens: TPanel;
    lblItem: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    txtBuscaItem: TJvDBComboEdit;
    txtPerDesconto: TwwDBEdit;
    txtDescItem: TwwDBEdit;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    btn_Add_Itens: TBitBtn;
    txtUnd: TwwDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    txtCodGrupo: TJvDBComboEdit;
    txtNomeGru: TwwDBEdit;
    Label4: TLabel;
    cbbAplicar: TwwDBComboBox;
    Label5: TLabel;
    dsRegIte: TwwDataSource;
    DBCheckBox1: TDBCheckBox;
    Label6: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtRotaButtonClick(Sender: TObject);
    procedure txtRotaExit(Sender: TObject);
    procedure txtPesquisaExit(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnItensExit(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure txtCodGrupoExit(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtCodGrupoButtonClick(Sender: TObject);
    procedure txtPerDescontoExit(Sender: TObject);
    procedure cbbAplicarChange(Sender: TObject);
    procedure cbbAplicarExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_C_REG: TPCP_FM_C_REG;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ROT, uDmSgq, PSQ_UN_X_ITE, PSQ_UN_X_GRU;

procedure TPCP_FM_C_REG.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_REG);
  pnItens.Enabled := False;
  txtDescricao.SetFocus;
end;

procedure TPCP_FM_C_REG.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_REG) then
      begin
        inherited;
        txtDescricao.SetFocus;
        pnItens.Enabled := False;
      end;
end;

procedure TPCP_FM_C_REG.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_REG) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TPCP_FM_C_REG.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmSgq.PCP_CD_C_REG);
end;

procedure TPCP_FM_C_REG.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
   codigo := dmSgq.PCP_CD_C_REG.FieldByName('ID_REGIAO').AsString;
   DmGeral.Grava(dmSgq.PCP_CD_C_REG);
   inherited;
   dmSgq.PCP_CD_C_REG.Close;
   dmSgq.PCP_CD_C_REG.Data :=
   dmSgq.PCP_CD_C_REG.DataRequest(
           VarArrayOf([0, codigo]));
end;

procedure TPCP_FM_C_REG.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmSgq.PCP_CD_C_REG.Close;
    dmSgq.PCP_CD_C_REG.Data :=
    dmSgq.PCP_CD_C_REG.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_C_REG.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled  := true;

  dmSgq.PCP_CD_C_REG_ITE.Insert;

  txtBuscaItem.enabled := true;
  txtBuscaItem.color  := clWindow;

  txtCodGrupo.enabled := true;
  txtCodGrupo.color  := clWindow;

  cbbAplicar.SetFocus;
end;

procedure TPCP_FM_C_REG.cbbAplicarChange(Sender: TObject);
begin
  inherited;
  //if dmSgq.PCP_CD_C_REG_ITE.FieldByName('tipo').AsInteger = 0 then
    if cbbAplicar.ItemIndex = 0 then
     begin
       txtBuscaItem.enabled := false;
       txtBuscaItem.color := $00DADADA;
       txtCodGrupo.enabled := true;
       txtCodGrupo.color := clwindow;

       if dmSgq.PCP_CD_C_REG_ITE.State in [dsInsert,dsEdit] then
          begin
             dmSgq.PCP_CD_C_REG_ITE.FieldByName('ID_ITEM').AsString  := '';
             dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomeite').Text  := '';
             dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_undvenda').Text := '';
          end;
     end;

  //if dmSgq.PCP_CD_C_REG_ITE.FieldByName('tipo').AsInteger = 1 then
  if cbbAplicar.ItemIndex = 1 then
     begin
       txtCodGrupo.enabled := false;
       txtCodGrupo.color := $00DADADA;
       txtBuscaItem.enabled := true;
       txtBuscaItem.color := clwindow;

       if dmSgq.PCP_CD_C_REG_ITE.State in [dsInsert,dsEdit] then
          begin
           dmSgq.PCP_CD_C_REG_ITE.FieldByName('id_grupo').Text := '';
           dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomegru').Text := '';
          end;
     end;
end;

procedure TPCP_FM_C_REG.cbbAplicarExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if cbbAplicar.Focused  then
     begin
       exit;
     end;

  if (dmSgq.PCP_CD_C_REG_ITE.FieldByName('tipo').Text) = '' then
     begin
       ShowMessage('O campo "Tipo" deve ser preenchido.');
       cbbAplicar.SetFocus;
       exit;
     end;
end;

procedure TPCP_FM_C_REG.cbbPesquisaChange(Sender: TObject);
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

procedure TPCP_FM_C_REG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmSgq.PCP_CD_C_REG.Close;
  FreeAndNil(PCP_FM_C_REG);
end;

procedure TPCP_FM_C_REG.FormCreate(Sender: TObject);
begin
  inherited;
  dmSgq.PCP_CD_C_REG.Close;
  dmSgq.PCP_CD_C_REG.Data := dmSgq.PCP_CD_C_REG.DataRequest(VarArrayOf([0, '']));
  dmSgq.PCP_CD_C_REG.Open;
end;

procedure TPCP_FM_C_REG.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
try
     grdItensIButton.Enabled := false;
     if dmSgq.PCP_CD_C_REG_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmSgq.PCP_CD_C_REG_ITE.Delete;
     dmSgq.PCP_CD_C_REG_ITE.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TPCP_FM_C_REG.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnItens.Enabled = false then
     pnItens.Enabled := true;

  dmSgq.PCP_CD_C_REG_ITE.cancel;

  if dmSgq.PCP_CD_C_REG_ITE.IsEmpty then
     begin
       dmSgq.PCP_CD_C_REG_ITE.Append;
       pnItens.Enabled := true;
       txtBuscaItem.SetFocus;
     end
  else
     begin
       dmSgq.PCP_CD_C_REG_ITE.Edit;
       pnItens.Enabled := true;
       txtPerDesconto.SetFocus;
     end;
end;

procedure TPCP_FM_C_REG.pnItensExit(Sender: TObject);
begin
  inherited;
   if (btn_Add_Itens.Focused) or (grdItens.Focused) or
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
              exit;
           end;

        dmSgq.PCP_CD_C_REG_ITE.Cancel;
        dmSgq.PCP_CD_C_REG_ITE.edit;

        finally
           pnItens.Enabled := false;
        end;
      end;
end;

procedure TPCP_FM_C_REG.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmSgq.PCP_CD_C_REG_ITE.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomeite').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

           dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_undvenda').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TPCP_FM_C_REG.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
begin
  inherited;

  dmGeral.BUS_CD_C_ITE.Close;

  if (trim(dmSgq.PCP_CD_C_REG_ITE.FieldByName('id_item').Text) = '') then
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

       if (txtPerDesconto.Focused) then
           begin
             ShowMessage('O campo "Item" deve ser preenchido.');
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
       if dmSgq.PCP_CD_C_REG_ITE.state in [dsBrowse] then
          dmSgq.PCP_CD_C_REG_ITE.edit;
     end;

  dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_undvenda').Text := '';
  dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomeite').Text := '';
  dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomegru').Text  := '';

  dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBuscaItem.Text]));

  if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
     begin
       txtBuscaItem.SetFocus;
       dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_undvenda').Text := '';
       dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomeite').Text := '';
       dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomegru').Text  := '';
       exit;
     end;

  dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomeite').Text  :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_undvenda').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

  {try
   pnItens.onExit := nil;

  finally
     pnItens.OnExit := pnItensExit;
  end;  }
end;

procedure TPCP_FM_C_REG.txtCodGrupoButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_GRU:= TPSQ_FM_X_GRU.Create(Self);
  PSQ_FM_X_GRU.ShowModal;
  if not PSQ_FM_X_GRU.BUS_CD_C_GRU.IsEmpty then
     begin
       dmSgq.PCP_CD_C_REG_ITE.FieldByName('ID_GRUPO').AsString :=
           PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString;

       dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomegru').Text :=
          PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString;
     end;
   PSQ_FM_X_GRU.Free;
end;

procedure TPCP_FM_C_REG.txtCodGrupoExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
begin
  inherited;

  dmGeral.BUS_CD_C_GRU.Close;
  if (trim(dmSgq.PCP_CD_C_REG_ITE.FieldByName('id_grupo').Text) = '') then
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

       if (txtPerDesconto.Focused) then
           begin
             ShowMessage('O campo "Grupo" deve ser preenchido.');
             txtCodGrupo.SetFocus;
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
       if dmSgq.PCP_CD_C_REG_ITE.state in [dsBrowse] then
          dmSgq.PCP_CD_C_REG_ITE.edit;
     end;

  dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomegru').Text := '';

  dmGeral.BUS_CD_C_GRU.Data :=
            dmGeral.BUS_CD_C_GRU.DataRequest(VarArrayOf([0, txtCodGrupo.Text]));

  if dmGeral.BUS_CD_C_GRU.IsEmpty then
     begin
       ShowMessage('Grupo não cadastrado!');
       dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomegru').Text := '';
       exit;
     end;

  dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomegru').Text  :=
       dmGeral.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString;

end;

procedure TPCP_FM_C_REG.txtPerDescontoExit(Sender: TObject);
var
  tipo, id_item, int_nomeite, id_grupo, int_nomegru: string;
  per_desconto: Currency;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if cbbAplicar.Focused or txtBuscaItem.Focused or
     grdItens.Focused or txtCodGrupo.Focused then
     begin
       exit;
     end;

  if dmSgq.PCP_CD_C_REG_ITE.FieldByName('per_desconto').AsCurrency < 0 then
     begin
       ShowMessage('Percentual de desconto não pode ser menor que zero!');
       txtPerDesconto.SetFocus;
       exit;
     end;

  if dmSgq.PCP_CD_C_REG_ITE.FieldByName('per_desconto').AsCurrency = 100 then
     begin
       ShowMessage('Percentual de desconto não pode ser igual a 100% !');
       txtPerDesconto.SetFocus;
       exit;
     end;
  try
    cbbAplicar.OnChange := nil;

  tipo     := dmSgq.PCP_CD_C_REG_ITE.FieldByName('tipo').AsString;
  id_item  := dmSgq.PCP_CD_C_REG_ITE.FieldByName('id_item').AsString;
  int_nomeite  := dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomeite').AsString;
  id_grupo := dmSgq.PCP_CD_C_REG_ITE.FieldByName('id_grupo').AsString;
  int_nomegru := dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomegru').AsString;
  per_desconto := dmSgq.PCP_CD_C_REG_ITE.FieldByName('per_desconto').AsCurrency;

  dmSgq.PCP_CD_C_REG_ITE.cancel;
  if tipo = '0' then
     begin
        if ( dmSgq.PCP_CD_C_REG_ITE.Locate('tipo;id_grupo',VarArrayOf([tipo,id_grupo]),[]) ) then
            begin
              ShowMessage('Operação cancelada pois esse registro já foi lançado!');
              btn_Add_Itens.SetFocus;
              exit;
            end
     end;

  if tipo = '1' then
     begin
       if ( dmSgq.PCP_CD_C_REG_ITE.Locate('tipo;id_item',VarArrayOf([tipo,id_item]),[]) ) then
          begin
            ShowMessage('Operação cancelada pois esse registro já foi lançado!');
            btn_Add_Itens.SetFocus;
            exit;
          end
     end;

  dmSgq.PCP_CD_C_REG_ITE.Insert;
  dmSgq.PCP_CD_C_REG_ITE.FieldByName('tipo').AsString     := tipo;
  dmSgq.PCP_CD_C_REG_ITE.FieldByName('id_item').AsString  := id_item;
  dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomeite').AsString := int_nomeite;
  dmSgq.PCP_CD_C_REG_ITE.FieldByName('id_grupo').AsString :=  id_grupo;
  dmSgq.PCP_CD_C_REG_ITE.FieldByName('int_nomegru').AsString := int_nomegru;
  dmSgq.PCP_CD_C_REG_ITE.FieldByName('per_desconto').AsCurrency := per_desconto;

  dmSgq.PCP_CD_C_REG_ITE.Post;

  pnItens.Enabled := false;



  ActiveControl := nil;
  PostMessage(btn_Add_Itens.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Itens.SetFocus;

  finally
    cbbAplicar.OnChange :=  cbbAplicarChange;
  end;

end;

procedure TPCP_FM_C_REG.txtPesquisaExit(Sender: TObject);
begin
  inherited;
  btnFiltroClick(Self);
end;

procedure TPCP_FM_C_REG.txtRotaButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ROT := TPSQ_FM_X_ROT.Create(Self);
   PSQ_FM_X_ROT.ShowModal;
      if not PSQ_FM_X_ROT.BUS_CD_C_ROT.IsEmpty then
         begin
           dmSgq.PCP_CD_C_REG.FieldByName('ID_ROTA').AsInteger :=
              PSQ_FM_X_ROT.BUS_CD_C_ROT.FieldByName('ID_ROTA').AsInteger;

           dmSgq.PCP_CD_C_REG.FieldByName('INT_NOMEROT').Text :=
              PSQ_FM_X_ROT.BUS_CD_C_ROT.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ROT.Free;
end;

procedure TPCP_FM_C_REG.txtRotaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmSgq.PCP_CD_C_REG.FieldByName('INT_NOMEROT').Text := '';

    if dmSgq.PCP_CD_C_REG.FieldByName('ID_ROTA').Text = '' then
       begin
         ShowMessage('O campo "Rota" deve ser prenchido.');
         abort;
       end;

    dmGeral.BUS_CD_C_ROT.Close;
    dmGeral.BUS_CD_C_ROT.Data :=
    dmGeral.BUS_CD_C_ROT.DataRequest(VarArrayOf([0, txtRota.Text]));

    dmSgq.PCP_CD_C_REG.FieldByName('INT_NOMEROT').Text :=
         dmGeral.BUS_CD_C_ROT.FieldByName('DESCRICAO').AsString;
end;

end.
