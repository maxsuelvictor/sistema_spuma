unit PCP_UN_M_RAA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  vcl.wwdblook, vcl.Wwdbedit, JvDBControls, Vcl.Mask, JvExMask, JvToolEdit,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_M_RAA = class(TPAD_FM_X_PAD)
    deEmissao: TJvDBDateEdit;
    Label53: TLabel;
    txt_Cod_Doc_Rev: TDBEdit;
    Label7: TLabel;
    Label1: TLabel;
    deRecebimento: TJvDBDateEdit;
    Label41: TLabel;
    lblItem: TLabel;
    txtFornNome: TDBText;
    txtNroRAA: TJvDBComboEdit;
    txtDescProduto: TDBText;
    Label2: TLabel;
    txtQtdeAmostra: TwwDBEdit;
    Label4: TLabel;
    txtCodFabrica: TDBText;
    Label5: TLabel;
    txtCodFabricante: TJvDBComboEdit;
    txtNomeFabric: TDBText;
    cbbAnalista: TwwDBLookupCombo;
    Label6: TLabel;
    Label8: TLabel;
    deAnalise: TJvDBDateEdit;
    Label15: TLabel;
    txtObservacao: TDBMemo;
    gbPlanoAcao: TGroupBox;
    btn_Add_Itens: TBitBtn;
    grdPlano: TwwDBGrid;
    grdItensIButton: TwwIButton;
    pnItens: TPanel;
    Label9: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    dsRaaItens: TwwDataSource;
    cbbResponsavel: TwwDBLookupCombo;
    dePrazo: TJvDBDateEdit;
    deExecutadoEm: TJvDBDateEdit;
    Label11: TLabel;
    txtAcaoNecess: TwwDBEdit;
    Label13: TLabel;
    txtObs: TwwDBEdit;
    rg_Pergunta1: TDBRadioGroup;
    rg_Pergunta2: TDBRadioGroup;
    rg_Pergunta3: TDBRadioGroup;
    rg_Pergunta4: TDBRadioGroup;
    rg_Pergunta5: TDBRadioGroup;
    rg_Pergunta6: TDBRadioGroup;
    rg_Pergunta7: TDBRadioGroup;
    rg_Pergunta8: TDBRadioGroup;
    rgResultado: TDBRadioGroup;
    chkIncorporaItem: TDBCheckBox;
    lblCodFabrica: TLabel;
    Label3: TLabel;
    txtGrupoDescricao: TDBText;
    lblSetor: TLabel;
    cbbSetor: TwwDBLookupCombo;
    lblCor: TLabel;
    lblTamanho: TLabel;
    txtDescCor: TDBText;
    txtDescTamanho: TDBText;
    txtCor: TDBText;
    txtCodTam: TDBText;
    txtGrupo: TDBText;
    txtIdItem: TDBText;
    txtIdFornecedor: TDBText;
    Label14: TLabel;
    txtQtdeNf: TwwDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure cbbSetorEnter(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbAnalistaEnter(Sender: TObject);
    procedure cbbAnalistaExit(Sender: TObject);
    procedure txtCodFabricanteButtonClick(Sender: TObject);
    procedure txtCodFabricanteExit(Sender: TObject);
    procedure cbbResponsavelEnter(Sender: TObject);
    procedure cbbResponsavelExit(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure grdPlanoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtObsExit(Sender: TObject);
    procedure rgResultadoClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtNroRAAButtonClick(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    procedure AcoesIniciais;
  public
    { Public declarations }
  end;

var
  PCP_FM_M_RAA: TPCP_FM_M_RAA;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FOR, PSQ_UN_X_NRA;

procedure TPCP_FM_M_RAA.AbrirBuscas;
begin
  dmGeral.BusFuncionario(1,'%');
  dmGeral.BusFuncionario2(1,'%');
end;

procedure TPCP_FM_M_RAA.acAdicionaExecute(Sender: TObject);
begin
  inherited;



  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_RAA);

  AcoesIniciais;

  pnItens.Enabled := false;
  HabilDesabCampos(True, clWhite);

  deEmissao.SetFocus;

  dmGeral.PCP_CD_M_RAA.BeforePost := nil;

end;

procedure TPCP_FM_M_RAA.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_RAA) then
     begin
       inherited;
       dmGeral.PCP_CD_M_RAA.BeforePost := nil;
       pnItens.Enabled := false;
       deEmissao.SetFocus;
     end;
end;

procedure TPCP_FM_M_RAA.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_RAA) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       deEmissao.SetFocus;
     end;
end;

procedure TPCP_FM_M_RAA.acExcluirExecute(Sender: TObject);
begin
   Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_RAA);
   inherited;
end;

procedure TPCP_FM_M_RAA.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  try
    dmGeral.PCP_CD_M_RAA.BeforePost := dmGeral.PCP_CD_M_RAABeforePost;

    codigo := dmGeral.PCP_CD_M_RAA.FieldByName('id_raa').AsString;
    DmGeral.Grava(dmGeral.PCP_CD_M_RAA);
    inherited;
    dmGeral.PCP_CD_M_RAA.Close;
    dmGeral.PCP_CD_M_RAA.Data :=
    dmGeral.PCP_CD_M_RAA.DataRequest(
            VarArrayOf([5, dmGeral.CAD_CD_C_PARid_empresa.Text, codigo]));
  finally
    dmGeral.PCP_CD_M_RAA.BeforePost := nil;

  end;
end;

procedure TPCP_FM_M_RAA.AcoesIniciais;
begin

end;

procedure TPCP_FM_M_RAA.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;

  {O filtros do RAA, pode ser:
	index 0 , empresa, NRO_RAA
	index 1 , empresa, codigo frabrica
	index 2, empresa,  id_item
	index 3, empresa, fornecedor
	index 4, empresa, Data emissão.
  }

  dmGeral.PCP_CD_M_RAA.Close;
  dmGeral.PCP_CD_M_RAA.Data :=
  dmGeral.PCP_CD_M_RAA.DataRequest(
          VarArrayOf([cbbPesquisa.ItemIndex, dmGeral.CAD_CD_C_PARid_empresa.Text, txtPesquisa.Text]));

  finally
     Screen.Cursor := crDefault;
  end;

end;

procedure TPCP_FM_M_RAA.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled  := true;

  dmGeral.PCP_CD_M_RAA_ITE.Insert;
  cbbResponsavel.SetFocus;
end;

procedure TPCP_FM_M_RAA.cbbAnalistaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(1,'%');
  cbbAnalista.DropDown;
end;

procedure TPCP_FM_M_RAA.cbbAnalistaExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if dmGeral.PCP_CD_M_RAA.FieldByName('id_analista').Text = '' then
     begin
       ShowMessage('O campo "Analista" deve ser prenchido.');
       cbbAnalista.SetFocus;
       abort;
     end;

  dmGeral.BusFuncionario(0,dmGeral.PCP_CD_M_RAA.FieldByName('id_analista').Text);

  if not dmGeral.CAD_CD_C_FUN_TesValObrigatorio(dmGeral.BUS_CD_C_FUN) then
     begin
       dmGeral.PCP_CD_M_RAA.FieldByName('id_analista').text := '';
       cbbAnalista.SetFocus;
       exit;
     end;
end;

procedure TPCP_FM_M_RAA.cbbPesquisaChange(Sender: TObject);
begin
  inherited;

  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [1,2] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPCP_FM_M_RAA.cbbResponsavelEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario2(1,'%');
  cbbResponsavel.DropDown;
end;

procedure TPCP_FM_M_RAA.cbbResponsavelExit(Sender: TObject);
begin
  inherited;

  if dmGeral.PCP_CD_M_RAA_ITE.FieldByName('ID_RESPONSAVEL').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btn_Add_Itens.Focused then
          exit;

       if grdPlano.Focused then
          exit;

       if not grdItensIButton.Enabled then
          exit;

       if (dePrazo.Focused) or (deRecebimento.Focused) or
          (txtAcaoNecess.Focused) or (txtObs.Focused) then
           begin
             ShowMessage('O campo "Item" deve ser prenchido.');
             cbbResponsavel.SetFocus;
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
       if dmGeral.PCP_CD_M_RAA_ITE.state in [dsBrowse] then
          dmGeral.PCP_CD_M_RAA_ITE.edit;
     end;

  if dmGeral.PCP_CD_M_RAA_ITE.FieldByName('id_responsavel').Text = '' then
     begin
       ShowMessage('O campo "Responsável" deve ser prenchido.');
       cbbResponsavel.SetFocus;
       abort;
     end;

  dmGeral.BusFuncionario2(0,dmGeral.PCP_CD_M_RAA_ITE.FieldByName('id_responsavel').Text);
  if not dmGeral.CAD_CD_C_FUN_TesValObrigatorio(dmGeral.BUS_CD_C_FU2) then
     begin
       dmGeral.PCP_CD_M_RAA_ITE.FieldByName('id_responsavel').text := '';
       cbbResponsavel.SetFocus;
       exit;
     end;
  dmGeral.PCP_CD_M_RAA_ITEint_nomeres.AsString := dmGeral.BUS_CD_C_FU2.FieldByName('NOME').AsString;
  dmGeral.BUS_CD_C_FU2.Close;
end;

procedure TPCP_FM_M_RAA.cbbSetorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusSetor(1,'%');
  cbbSetor.DropDown;
end;

procedure TPCP_FM_M_RAA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_RAA.Close;
  FreeAndNil(PCP_FM_M_RAA);
end;

procedure TPCP_FM_M_RAA.FormShow(Sender: TObject);
begin
  inherited;

  dmGeral.PCP_CD_M_RAA.Close;
  dmGeral.PCP_CD_M_RAA.Data :=
  dmGeral.PCP_CD_M_RAA.DataRequest(
            VarArrayOf([0, '']));
  AbrirBuscas;

  cbbPesquisa.ItemIndex := 0;
  cbbPesquisaChange(self);
end;

procedure TPCP_FM_M_RAA.grdPlanoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  pnItens.Enabled := true;

  dmGeral.PCP_CD_M_RAA_ITE.cancel;

  if dmGeral.PCP_CD_M_RAA_ITE.IsEmpty then
     begin
       dmGeral.PCP_CD_M_RAA_ITE.Insert;
       pnItens.Enabled := true;
       dePrazo.SetFocus;
     end
  else
    begin
      dmGeral.PCP_CD_M_RAA_ITE.Edit;
      pnItens.Enabled := true;
      dePrazo.SetFocus;
    end;
end;

procedure TPCP_FM_M_RAA.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin

end;

procedure TPCP_FM_M_RAA.pnItensExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Itens.Focused) or (grdPlano.Focused) or
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

          dmGeral.PCP_CD_M_RAA_ITE.Cancel;
          dmGeral.PCP_CD_M_RAA_ITE.edit;

        finally
           pnItens.Enabled := false;
        end;
      end;

end;

procedure TPCP_FM_M_RAA.rgResultadoClick(Sender: TObject);
begin
  inherited;
  if rgResultado.ItemIndex = 1 then
    begin
      //chkIncorporaItem.Enabled := True;
      if (grdPlano.DataSource.DataSet.RecordCount=0) then
         begin
           dmGeral.PCP_CD_M_RAA.FieldByName('incorpora_item').AsInteger := -1;
         end;
    end
end;

procedure TPCP_FM_M_RAA.txtCodFabricanteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
  PSQ_FM_X_FOR.ShowModal;
  if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
     begin
       dmGeral.PCP_CD_M_RAA.FieldByName('ID_FABRICANTE').AsInteger :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;
       dmGeral.PCP_CD_M_RAA.FieldByName('int_nomefab').text       :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('FANTASIA').AsString;
     end;
   PSQ_FM_X_FOR.Free;
end;

procedure TPCP_FM_M_RAA.txtCodFabricanteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.PCP_CD_M_RAA.FieldByName('INT_NOMEFAB').Text := '';

  if dmGeral.PCP_CD_M_RAA.FieldByName('ID_FABRICANTE').Text = '' then
     begin
       ShowMessage('O campo "Fabricante" deve ser prenchido.');
       txtCodFabricante.SetFocus;
       abort;
     end;


  dmGeral.BusFornecedor(0,txtCodFabricante.Text);
  if not dmGeral.CAD_CD_C_FOR_TesValObrigatorio(dmGeral.BUS_CD_C_FOR) then
     begin
       dmGeral.PCP_CD_M_RAA.FieldByName('ID_FABRICANTE').text := '';
       dmGeral.PCP_CD_M_RAA.FieldByName('INT_NOMEFAB').text  := '';
       txtCodFabricante.SetFocus;
       exit;
     end;

  dmGeral.PCP_CD_M_RAA.FieldByName('INT_NOMEFAB').text :=
          dmGeral.BUS_CD_C_FOR.FieldByName('FANTASIA').AsString;
end;

procedure TPCP_FM_M_RAA.txtNroRAAButtonClick(Sender: TObject);
begin
  inherited;

  PSQ_FM_X_NRA := TPSQ_FM_X_NRA.Create(Self);
  PSQ_FM_X_NRA.ShowModal;
  if not PSQ_FM_X_NRA.BUS_CD_M_NFI_RAA.IsEmpty then
     begin
       dmGeral.PCP_CD_M_RAA.FieldByName('NRO_RAA').AsString :=
               PSQ_FM_X_NRA.BUS_CD_M_NFI_RAA.FieldByName('NUM_LOTE').AsString;
       dmGeral.PCP_CD_M_RAA.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_NRA.BUS_CD_M_NFI_RAA.FieldByName('ID_ITEM').AsInteger;
       dmGeral.PCP_CD_M_RAA.FieldByName('codigo_fabrica').text  :=
               PSQ_FM_X_NRA.BUS_CD_M_NFI_RAA.FieldByName('COD_FABRICA').AsString;
       dmGeral.PCP_CD_M_RAA.FieldByName('int_nomeite').text  :=
               PSQ_FM_X_NRA.BUS_CD_M_NFI_RAA.FieldByName('INT_NOMEITE').AsString;
       dmGeral.PCP_CD_M_RAA.FieldByName('id_cor').text  :=
               PSQ_FM_X_NRA.BUS_CD_M_NFI_RAA.FieldByName('ID_COR').text;
       dmGeral.PCP_CD_M_RAA.FieldByName('int_nomecor').text  :=
               PSQ_FM_X_NRA.BUS_CD_M_NFI_RAA.FieldByName('int_nomecor').AsString;
       dmGeral.PCP_CD_M_RAA.FieldByName('id_tamanho').text  :=
               PSQ_FM_X_NRA.BUS_CD_M_NFI_RAA.FieldByName('ID_TAMANHO').text;
       dmGeral.PCP_CD_M_RAA.FieldByName('int_nometam').text  :=
               PSQ_FM_X_NRA.BUS_CD_M_NFI_RAA.FieldByName('int_nometam').AsString;
       dmGeral.PCP_CD_M_RAA.FieldByName('id_fornecedor').text  :=
               PSQ_FM_X_NRA.BUS_CD_M_NFI_RAA.FieldByName('id_emitente').AsString;
       dmGeral.PCP_CD_M_RAA.FieldByName('int_nomefor').text  :=
               PSQ_FM_X_NRA.BUS_CD_M_NFI_RAA.FieldByName('int_nomefor').AsString;
       dmGeral.PCP_CD_M_RAA.FieldByName('int_codigru').text  :=
               PSQ_FM_X_NRA.BUS_CD_M_NFI_RAA.FieldByName('id_grupo').AsString;
       dmGeral.PCP_CD_M_RAA.FieldByName('int_nomegru').text  :=
               PSQ_FM_X_NRA.BUS_CD_M_NFI_RAA.FieldByName('int_nomegru').AsString;
       dmGeral.PCP_CD_M_RAA.FieldByName('qtde_nf').text  :=
               PSQ_FM_X_NRA.BUS_CD_M_NFI_RAA.FieldByName('qtde').AsString;

       dmGeral.BusItens(0, dmGeral.PCP_CD_M_RAA.FieldByName('ID_ITEM').text);
       if not dmGeral.BUS_CD_C_ITE.IsEmpty then
          begin
             dmGeral.PCP_CD_M_RAA.FieldByName('id_fabricante').text  :=
                     dmGeral.BUS_CD_C_ITEid_fornecedor.text;
             dmGeral.PCP_CD_M_RAA.FieldByName('int_nomefab').text  :=
                     dmGeral.BUS_CD_C_ITEint_nomefor.text;
          end;
        dmGeral.BUS_CD_C_ITE.Close;
     end;
   PSQ_FM_X_NRA.Free;
end;

procedure TPCP_FM_M_RAA.txtObsExit(Sender: TObject);

begin
  inherited;

  if dePrazo.Focused    or deExecutadoEm.Focused  or
     txtAcaoNecess.Focused or
     grdPlano.Focused then
     begin
       abort;
     end;

  dmGeral.PCP_CD_M_RAA_ITE.Post;

  pnItens.Enabled := false;
  btn_Add_Itens.SetFocus;

end;

procedure TPCP_FM_M_RAA.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
