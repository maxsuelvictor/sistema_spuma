unit EST_UN_M_NFE_TIT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,datasnap.DBClient,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons, Vcl.ExtCtrls, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, Vcl.DBCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, vcl.wwdblook, vcl.Wwdbedit,
  vcl.wwcheckbox, Vcl.ComCtrls, frxClass, frxDBSet, frxExportPDF, frxExportXLS,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TEST_FM_M_NFE_TIT = class(TPAD_FM_X_PAD)
    Label7: TLabel;
    txt_Emitente: TJvDBComboEdit;
    Label6: TLabel;
    Label1: TLabel;
    txt_Numero: TDBEdit;
    Label2: TLabel;
    txt_Serie: TDBEdit;
    Label65: TLabel;
    txt_SubSerie: TDBEdit;
    Label3: TLabel;
    Label41: TLabel;
    txt_NFe_Chave: TDBEdit;
    Label8: TLabel;
    Label25: TLabel;
    Label37: TLabel;
    Label5: TLabel;
    Label47: TLabel;
    txt_Cod_Doc_Rev: TDBEdit;
    Label53: TLabel;
    Label9: TLabel;
    cbbTipoFrete: TwwDBLookupCombo;
    cbbModelo: TwwDBLookupCombo;
    dsoItens: TwwDataSource;
    pcMovimento: TPageControl;
    tsTitulos: TTabSheet;
    gbTotalizacao: TGroupBox;
    Label71: TLabel;
    Label72: TLabel;
    Label62: TLabel;
    num_VlrICMSSubst: TDBEdit;
    num_Total_VlrDesc: TwwDBEdit;
    Label23: TLabel;
    Label22: TLabel;
    num_TotalLiquido: TwwDBEdit;
    Label55: TLabel;
    num_VlrBaseICMSSubst: TDBEdit;
    num_VlrICMS: TDBEdit;
    Label56: TLabel;
    num_VlrBaseICMS: TDBEdit;
    Label57: TLabel;
    Label39: TLabel;
    num_VlrOutrasDesp: TwwDBEdit;
    num_VlrSeguro: TwwDBEdit;
    Label60: TLabel;
    num_VlrFreteNF: TwwDBEdit;
    Label61: TLabel;
    Label24: TLabel;
    num_Total_VlrMercadoria: TDBEdit;
    btn_Add_Fpg: TBitBtn;
    grdTitulos: TwwDBGrid;
    dsoTitulos: TwwDataSource;
    cbbCondicaoPagamento: TwwDBLookupCombo;
    cbbCFOP: TwwDBLookupCombo;
    cbbTipoEstoque: TwwDBLookupCombo;
    cbbAlmoxarifado: TwwDBLookupCombo;
    pnTitulos: TPanel;
    lbl6: TLabel;
    lb2: TLabel;
    lbl8: TLabel;
    lbl7: TLabel;
    txtDias: TDBEdit;
    txtVlrTitulo: TDBEdit;
    cbbFormaPgto: TwwDBLookupCombo;
    txtVencimento: TJvDBDateEdit;
    txt_IdPlanoContas: TJvDBComboEdit;
    Label63: TLabel;
    txtPctDescricao: TDBText;
    de_Emissao: TJvDBDateEdit;
    de_DataDocumento: TJvDBDateEdit;
    txtCodPedCmp: TJvDBComboEdit;
    Label17: TLabel;
    lbl_Fornecedor: TwwDBEdit;
    grdTitulosIButton: TwwIButton;
    btnRetirarCmpPed: TSpeedButton;
    txtVlrFrete: TwwDBEdit;
    Label18: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label19: TLabel;
    Label29: TLabel;
    txtCodIqm: TJvDBComboEdit;
    btnRetirarIqm: TSpeedButton;
    txtHistoricoPag: TDBEdit;
    Label30: TLabel;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    Panel1: TPanel;
    Label50: TLabel;
    txtIdPlanoContasFor: TEdit;
    txtDescPctFor: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure num_CondicaoPgtoEnter(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    //procedure txt_IdSituacaoICMSExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txt_IdPlanoContasExit(Sender: TObject);
    procedure txt_IdPlanoContasButtonClick(Sender: TObject);
    procedure cbbCondicaoPagamentoEnter(Sender: TObject);
    procedure cbbCondicaoPagamentoExit(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure cbbFormaPgtoEnter(Sender: TObject);
    procedure cbbFormaPgtoExit(Sender: TObject);
    procedure txtDiasExit(Sender: TObject);
    procedure txtVencimentoExit(Sender: TObject);
    procedure txtVlrTituloExit(Sender: TObject);
    procedure grdTitulosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Add_FpgClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure grdTitulosIButtonClick(Sender: TObject);
    procedure pnTitulosExit(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dbGridRowChanged(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
    Var
       //xAntIdTipoEstoque: String;
       //xAntEmitente: String;
       xAntCondicaoPgto:String;
       //xAntCfo:String;
       xOperacaoForm:String;
       // xbusca_item: String;

  public
    { Public declarations }
  end;

var
  EST_FM_M_NFE_TIT: TEST_FM_M_NFE_TIT;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes, uProxy,UApplayClassProxy, PSQ_UN_X_TME, PSQ_UN_X_FUN, PSQ_UN_X_ALM,
  PSQ_UN_X_CPG, PSQ_UN_X_CFO, PSQ_UN_X_ITE, PSQ_UN_X_FPG, PSQ_UN_X_PCT,
  PSQ_UN_X_FOR, FAT_UN_M_NFE_IPE, FAT_RN_M_NFE, FAT_UN_M_NFE_IPQ, FIN_RN_M_PAG;

procedure TEST_FM_M_NFE_TIT.AbrirBuscas;
begin
  dmGeral.BusAlmox(1,'%');
  dmGeral.BusCondPgto(1,'');
  dmGeral.BusTipoEstoque(1,'%');
  dmGeral.BusFuncionario(1,'%');
  dmGeral.BusFormaPgtos(3,'');
  dmGeral.BusCfop(2,CCfoNFE_ENTRADA);
  dmGeral.BUS_PR_X_FRE;
  dmGeral.BUS_PR_X_MOD_NFE;
end;

procedure TEST_FM_M_NFE_TIT.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE) then
     begin
       inherited;

       cbbCondicaoPagamento.ReadOnly := false;
       tsTitulos.Enabled := true;
       if FIN_RN_M_PAG.FatExisteFinBxaNfe(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_TIT) then
          begin
            Showmessage('Nota fiscal com título já movimentado.' + #13 +
                        'Não será possível alterar os títulos da nota fiscal.');
            cbbCondicaoPagamento.ReadOnly := true;
            tsTitulos.Enabled := false;
          end;

       txtIdPlanoContasFor.text := '';
       txtDescPctFor.Text       := '';

       if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
          begin
             dmGeral.bus_cd_c_for.Close;
             dmGeral.bus_cd_c_for.Data :=
                dmGeral.bus_cd_c_for.DataRequest(
                     VarArrayOf([0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString]));

             if trim(dmGeral.bus_cd_c_for.FieldByName('id_plano').AsString) = '' then
                begin
                  showmessage('O plano de contas do fornecedor não foi encontrado.' +#13 +
                              'Se continuar, terá que informar o plano de contas nos títulos manualmente.');
                end
             else
                begin
                  txtIdPlanoContasFor.text := dmGeral.bus_cd_c_for.FieldByName('id_plano').AsString;
                  txtDescPctFor.Text       := dmGeral.bus_cd_c_for.FieldByName('int_nomepct').AsString;
                end;

             dmGeral.bus_cd_c_for.Close;
          end;

       cbbCondicaoPagamento.SetFocus;
     end;
  btnIncluir.Enabled := false;
  btnExcluir.Enabled := false;
end;

procedure TEST_FM_M_NFE_TIT.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_NFE) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbCondicaoPagamento.SetFocus;
     end;
  btnIncluir.Enabled := false;
  btnExcluir.Enabled := false;
end;

procedure TEST_FM_M_NFE_TIT.acGravarExecute(Sender: TObject);
var
  codigo: String;
begin
  if FAT_CD_M_NFE_Ent_TesCampos then
     begin
        if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
             codigo := dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL').AsString;

             if not FIN_RN_M_PAG.FatExisteFinBxaNfe(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_TIT) then
                begin
                    FatGravarNumParcNfe(dmGeral.FAT_CD_M_NFE,dmGeral.FAT_CD_M_NFE_TIT);
                end;

             DmGeral.Grava(dmGeral.FAT_CD_M_NFE);
             inherited;
             {dmGeral.FAT_CD_M_NFE.Close;
             dmGeral.FAT_CD_M_NFE.Data :=
             dmGeral.FAT_CD_M_NFE.DataRequest(
                             VarArrayOf([17+0,'''E'',''F''',codigo]));}

             dmGeral.FAT_CD_M_NFE.Close;
             dmGeral.FAT_CD_M_NFE.Data :=
             dmGeral.FAT_CD_M_NFE.DataRequest(
                     VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'E',codigo]));
          end
        else
          begin
            cbbCondicaoPagamento.SetFocus;
            exit;
          end;
     end
  else
     begin
       cbbCondicaoPagamento.SetFocus;
       exit;
     end;
   btnIncluir.Enabled := false;
   btnExcluir.Enabled := false;

end;


procedure TEST_FM_M_NFE_TIT.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;

   { index:
    0-tipo_nf,Controle (ID_FISCAL)           0  Controle
    1-tipo_nf,Numero                         1  Número
    2-tipo_nf,Cliente
    3-tipo_nf,Fornecedor                     2  Fornecedor
    4-tipo_nf,Situação_doc
    5-tipo_nf,Modelo                         3  Modelo
    6-tipo_nf,Tipo Estoque                   4  Tipo de estoque
    7-tipo_nf,Data Documento                 5  Data documento
    8-tipo_nf,Data Emissao                   6  Emissão
    9-tipo_nf, id_pedido_venda
    10-tipo_nf, Descrição tipo de estoque    7  Tipo de estoque}

  if cbbPesquisa.ItemIndex = 2 then
     begin
       dmGeral.FAT_CD_M_NFE.Close;
       dmGeral.FAT_CD_M_NFE.Data :=
       dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([17+cbbPesquisa.ItemIndex+1,dmgeral.CAD_CD_C_PARid_empresa.Text,'''E'',''F''',txtPesquisa.Text]));
     end;

  if (cbbPesquisa.ItemIndex > 2) and (cbbPesquisa.ItemIndex < 7) then
     begin
       dmGeral.FAT_CD_M_NFE.Close;
       dmGeral.FAT_CD_M_NFE.Data :=
       dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([17+cbbPesquisa.ItemIndex+2,dmgeral.CAD_CD_C_PARid_empresa.Text,'''E'',''F''',txtPesquisa.Text]));
     end
  else
     begin
       if cbbPesquisa.ItemIndex < 2 then
          begin
            dmGeral.FAT_CD_M_NFE.Close;
            if (cbbPesquisa.ItemIndex = 0) and (trim(txtPesquisa.Text) = '') then
                dmGeral.FAT_CD_M_NFE.DataRequest(
                        VarArrayOf([0,'','']))
            else
                dmGeral.FAT_CD_M_NFE.Data :=
                    dmGeral.FAT_CD_M_NFE.DataRequest(
                            VarArrayOf([17+cbbPesquisa.ItemIndex,dmgeral.CAD_CD_C_PARid_empresa.Text,'''E'',''F''',txtPesquisa.Text]));
          end;
       if cbbPesquisa.ItemIndex = 7 then
          begin
             dmGeral.FAT_CD_M_NFE.Close;
             dmGeral.FAT_CD_M_NFE.Data :=
             dmGeral.FAT_CD_M_NFE.DataRequest(
                  VarArrayOf([17+cbbPesquisa.ItemIndex+3,dmgeral.CAD_CD_C_PARid_empresa.Text,'''E'',''F''',txtPesquisa.Text]));
          end;
     end;
  finally
     Screen.Cursor := crDefault;
  end;
  btnIncluir.Enabled := false;
  btnExcluir.Enabled := false;
end;



procedure TEST_FM_M_NFE_TIT.btn_Add_FpgClick(Sender: TObject);
begin
  inherited;
  if trim(dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text) = '' then
     begin
       ShowMessage('Condição de pagamento deve ser preenchido!');
       abort;
     end;

  dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text);
  if (dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger in [2]) then //  Sem pagamento
     begin
       ShowMessage('Condição de pagamento não permite inclusão de títulos.');
       abort;
     end;

  dmGeral.FAT_CD_M_NFE_ITE.Cancel;
  if dmGeral.FAT_CD_M_NFE_ITE.IsEmpty then
     begin
       ShowMessage('Nenhum item foi inserido na nota fiscal.');
       abort;
     end;

  pnTitulos.Enabled  := true;

  dmGeral.FAT_CD_M_NFE_TIT.Insert;
  cbbFormaPgto.enabled := true;
  cbbFormaPgto.SetFocus;
end;



procedure TEST_FM_M_NFE_TIT.cbbCondicaoPagamentoEnter(Sender: TObject);
begin
  inherited;

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text <> '' then
     xAntCondicaoPgto := dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text;

  //dmGeral.BusCondPgto(2,'%');
   dmGeral.BusCondPgto(1,'');
  cbbCondicaoPagamento.DropDown;
end;


procedure TEST_FM_M_NFE_TIT.cbbCondicaoPagamentoExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

  if dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text = '' then
     begin
       Showmessage('O campo "Condição de pagamento" deve ser preenchido.');
       cbbCondicaoPagamento.SetFocus;
       abort;
     end;

  dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text);

  if dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       ShowMessage('Condição de pagamento não encontrada!');
       cbbCondicaoPagamento.SetFocus;
       cbbCondicaoPagamento.Text := '';
       Abort;
     end;

  if (dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').AsString <> xAntCondicaoPgto) then
    begin
      dmGeral.FAT_CD_M_NFE_TIT.Cancel;
      if not dmGeral.FAT_CD_M_NFE_TIT.IsEmpty then
        begin
          if MessageDlg('Existe títulos lançado na nota fiscal.' + #13 +
                    'Se continuar os títulos serão apagados.' + #13 +
                    'Confirma?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              dmGeral.FAT_CD_M_NFE_TIT.First;
              while not dmGeral.FAT_CD_M_NFE_TIT.Eof do
               begin
                 dmGeral.FAT_CD_M_NFE_TIT.Delete;
               end;
            end
          else
            begin
              if xAntCondicaoPgto <> '' then
                begin
                 dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').text := xAntCondicaoPgto;
                end;
            end;
        end;
    end;
end;

procedure TEST_FM_M_NFE_TIT.cbbPesquisaChange(Sender: TObject);
begin
  inherited;

  {  0-Controle
     1-Número
     2-Fornecedor
     3-Modelo
     4-Tipo de estoque
     5-Data documento
     6-Emissão
    }

  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,1,4] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;



procedure TEST_FM_M_NFE_TIT.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
   if (dmGeral.FAT_CD_M_NFE.FieldByName('TIPO_NF').AsString = 'F') then
     begin
       Abrush.Color := clBlue;
     end;
end;

procedure TEST_FM_M_NFE_TIT.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  txtIdPlanoContasFor.text := '';
  txtDescPctFor.Text       := '';

end;

procedure TEST_FM_M_NFE_TIT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CMP_CD_M_PED.close;
  dmGeral.FIN_CD_M_PAG.Close;
  dmGeral.FAT_CD_M_NFE.Close;
  FreeAndNil(EST_FM_M_NFE_TIT);
end;

procedure TEST_FM_M_NFE_TIT.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_NFE.Close;
  dmGeral.FAT_CD_M_NFE.Data :=
  dmGeral.FAT_CD_M_NFE.DataRequest(
            VarArrayOf([0, '']));

  AbrirBuscas;
  txtPesquisa.SetFocus;
  btnIncluir.Enabled := false;
  btnExcluir.Enabled := false;

  txtIdPlanoContasFor.text := '';
  txtDescPctFor.Text       := '';

end;



procedure TEST_FM_M_NFE_TIT.grdTitulosIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdTitulosIButton.Enabled := false;
     if dmGeral.FAT_CD_M_NFE_TIT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.FAT_CD_M_NFE_TIT.Delete;
     dmGeral.FAT_CD_M_NFE_TIT.Edit;
  finally
     grdTitulosIButton.Enabled := true;
  end;
end;

procedure TEST_FM_M_NFE_TIT.grdTitulosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnTitulos.Enabled = false then
     pnTitulos.Enabled := true;

  dmGeral.FAT_CD_M_NFE_TIT.cancel;

  if dmGeral.FAT_CD_M_NFE_TIT.IsEmpty then
     begin
       cbbFormaPgto.Enabled := true;
       dmGeral.FAT_CD_M_NFE_TIT.Append;
       pnTitulos.Enabled := true;
       cbbFormaPgto.SetFocus;
     end
  else
    begin
      cbbFormaPgto.Enabled := false;
      dmGeral.FAT_CD_M_NFE_TIT.Edit;
      pnTitulos.Enabled := true;
      txtDias.SetFocus;
    end;
end;


procedure TEST_FM_M_NFE_TIT.num_CondicaoPgtoEnter(Sender: TObject);
begin
  inherited;
  xAntCondicaoPgto := dmGeral.FAT_CD_M_NFE.FieldByName('ID_CONDICAO_PAG').Text;

end;



procedure TEST_FM_M_NFE_TIT.pnTitulosExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Fpg.Focused) or (grdTitulos.Focused) or
     (not grdTitulosIButton.Enabled) then
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
        dmGeral.FAT_CD_M_NFE_TIT.Cancel;
        dmGeral.FAT_CD_M_NFE_TIT.edit;
        finally
           pnTitulos.Enabled := false;
        end;
      end;
end;


procedure TEST_FM_M_NFE_TIT.txt_IdPlanoContasButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_PCT := TPSQ_FM_X_PCT.Create(Self);
   PSQ_FM_X_PCT.xPctChamadaPor := 'E';
   PSQ_FM_X_PCT.ShowModal;
      if not PSQ_FM_X_PCT.BUS_CD_C_PCT.IsEmpty then
         begin
           dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').AsString :=
             PSQ_FM_X_PCT.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString;
         end;
   PSQ_FM_X_PCT.Free;
end;

procedure TEST_FM_M_NFE_TIT.txt_IdPlanoContasExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if grdTitulos.Focused or cbbFormaPgto.Focused  then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text = '') or
     (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       cbbFormaPgto.SetFocus;
       abort;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').text = '') then
     begin
       Showmessage('O campo "Plano de contas" deve ser preenchido.');
       txt_IdPlanoContas.SetFocus;
       abort;
     end;

  dmGeral.BusPlanoCta(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text);

  if dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       ShowMessage('Plano de contas não encontrada.');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('int_nomepct').Text := '';
       txt_IdPlanoContas.SetFocus;
       abort;
     end;

  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text    := dmGeral.BUS_CD_C_PCT.FieldByName('ID_PLANO').Text;
  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('int_nomepct').Text := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;

  if dmGeral.BUS_CD_C_PCT.FieldByName('TIPO').AsInteger <> 0 then
     begin
       ShowMessage('Só é permitido plano de contas do tipo "Analítico".');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('int_nomepct').Text := '';
       txt_IdPlanoContas.SetFocus;
       abort;
     end;

  if not (dmGeral.BUS_CD_C_PCT.FieldByName('TIPO_DESP').AsInteger in [0,2]) then
     begin
       ShowMessage('Só é permitido plano de contas com tipo "Despesa" ou "Sem fluxo".');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('int_nomepct').Text := '';
       txt_IdPlanoContas.SetFocus;
       abort;
     end;
end;


procedure TEST_FM_M_NFE_TIT.txtDiasExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if grdTitulos.Focused or cbbFormaPgto.Focused or
     txt_IdPlanoContas.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').text = '') then
     begin
       Showmessage('O campo "Plano de contas" deve ser preenchido.');
       txt_IdPlanoContas.SetFocus;
       abort;
     end;

  if not (dmGeral.TesValDias(dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DIAS').AsInteger)) then
     begin
       txtDias.SetFocus;
       abort;
     end;

  dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime :=
           dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime +
                   dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DIAS').AsInteger;

end;

procedure TEST_FM_M_NFE_TIT.cbbFormaPgtoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos(3,'');
  cbbFormaPgto.DropDown;
end;

procedure TEST_FM_M_NFE_TIT.cbbFormaPgtoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Fpg.Focused or grdTitulos.Focused  then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text = '')     or
     (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
         if btnCancelar.Focused or
            btnGrava.Focused  then
            begin
              exit;
            end;

         if grdTitulos.Focused then
            exit;

         if not grdTitulosIButton.Enabled then
            exit;

         if txt_IdPlanoContas.Focused or txtDias.Focused  or
            txtVencimento.Focused or txtVlrTitulo.Focused then
            begin
              Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
              cbbFormaPgto.SetFocus;
              abort;
            end
         else
            begin
              pnTitulos.Enabled := false;
              exit;
            end;
     end
  else
     begin
       if dmGeral.FAT_CD_M_NFE_TIT.state in [dsBrowse] then
          dmGeral.FAT_CD_M_NFE_TIT.edit;
     end;

  dmGeral.BusFormaPgtos(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').Text);
  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       ShowMessage('Forma de pagamento não encontrada.');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text := '';
       cbbFormaPgto.SetFocus;
       abort;
     end;

  if not dmGeral.BUS_CD_C_FPG.FieldByName('TIPO_PAGAMENTO').AsInteger = 1 then
     begin
       ShowMessage('Só é permitido forma de pagamento do tipo "A prazo".');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text := '';
       cbbFormaPgto.SetFocus;
       abort;
     end;

  { doc_impresso :
    0 - nenhum
    1 - duplicata
    2 - promissória
    3 - cartão
    4 - boleto
    5 - dinheiro
    6 - cheque
  }

  if not (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [1,2,4]) then
     begin
       ShowMessage('Só é permitido forma de pagamento do tipo: Duplicata, Promissória ou Boleto.');
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text := '';
       cbbFormaPgto.SetFocus;
       abort;
     end;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
     begin
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text  := txtIdPlanoContasFor.text;
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_CCUSTO').Text := dmGeral.BUS_CD_C_FPG.FieldByName('ID_CCUSTO').Text;
       dmGeral.BusPlanoCta(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text);
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('INT_NOMEPCT').Text := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
     end
  else
     begin
        if trim(dmGeral.BUS_CD_C_FPG.FieldByName('COM_ID_PLANO').Text) <> '' then
           begin
              dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text    := dmGeral.BUS_CD_C_FPG.FieldByName('COM_ID_PLANO').Text;
              dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_CCUSTO').Text    := dmGeral.BUS_CD_C_FPG.FieldByName('ID_CCUSTO').Text;
              dmGeral.BusPlanoCta(0,dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_PLANO').Text);
              dmGeral.FAT_CD_M_NFE_TIT.FieldByName('INT_NOMEPCT').Text := dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString;
           end;
     end;

end;



procedure TEST_FM_M_NFE_TIT.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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



procedure TEST_FM_M_NFE_TIT.txtVencimentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if grdTitulos.Focused or cbbFormaPgto.Focused or
     txt_IdPlanoContas.Focused or txtDias.Focused then
     begin
       exit;
     end;

  if not (dmGeral.TesValDias(dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DIAS').AsInteger)) then
     begin
       txtDias.SetFocus;
       abort;
     end;

  if not (dmGeral.TesValVencto(dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsDateTime,
                               dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime)) then
     begin
       txtVencimento.SetFocus;
       abort;
     end;
  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DTA_VENCIMENTO').text <> '' then
     begin
       dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DIAS').Value :=
          dmGeral.FAT_CD_M_NFE_TIT.FieldByName('DTA_VENCIMENTO').AsVariant -
                  dmGeral.FAT_CD_M_NFE.FieldByName('DTA_EMISSAO').AsVariant;
     end;
end;

procedure TEST_FM_M_NFE_TIT.txtVlrTituloExit(Sender: TObject);
var
  lSMPrincipal : TSMClient;
  lid_nfe_tit: string;
  lQtdeReg: integer;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if cbbFormaPgto.Focused  or txt_IdPlanoContas.Focused or
     txtDias.Focused or txtVencimento.Focused or txtHistoricoPag.Focused then
     begin
       exit;
     end;

  if (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').text = '')     or
     (dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       cbbFormaPgto.SetFocus;
       abort;
     end;

  if not (dmGeral.TesValVlr(dmGeral.FAT_CD_M_NFE_TIT.FieldByName('VLR_TITULO').AsCurrency)) then
     begin
       txtVlrTitulo.SetFocus;
       abort;
     end;


  lQtdeReg   := dmGeral.FAT_CD_M_NFE_TIT.RecordCount;

  if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('id_nfe_tit').text = '' then
     begin
        lSMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          dmGeral.FAT_CD_M_NFE_TITid_nfe_tit.AsInteger :=
               lSMPrincipal.enValorChave('FAT_TB_M_NFE_TIT');
        finally
          FreeAndNil(lSMPrincipal);
        end;
     end;

  lid_nfe_tit := dmGeral.FAT_CD_M_NFE_TIT.FieldByName('ID_NFE_TIT').AsString;

  {if dmGeral.FAT_CD_M_NFE_TIT.FieldByName('NUM_PARCELA').AsInteger = 0 then
     begin
        dmGeral.FAT_CD_M_NFE_TIT.FieldByName('NUM_PARCELA').text :=
            dmGeral.FAT_CD_M_NFE.FieldByName('NUMERO').text + '-' +
            inttostr(dmGeral.FAT_CD_M_NFE_TIT.RecordCount+1)
            + '/' + inttostr(lQtdeReg);
     end;}

  dmGeral.FAT_CD_M_NFE_TIT.Post;

  pnTitulos.Enabled := false;
  btn_Add_Fpg.SetFocus;
  dmGeral.FAT_CD_M_NFE_TIT.locate('ID_NFE_TIT',lid_nfe_tit,[]);
end;
end.
