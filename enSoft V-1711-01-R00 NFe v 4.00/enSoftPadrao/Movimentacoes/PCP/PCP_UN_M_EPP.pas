unit PCP_UN_M_EPP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Buttons, vcl.Wwdbedit,
  Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, vcl.wwdblook, vcl.wwdbigrd,
  Data.DB, Datasnap.DBClient, Vcl.ImgList, vcl.wwdatsrc, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Grids,
  vcl.wwdbgrid, cxButtons, Vcl.ExtCtrls, Vcl.DBCtrls, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit, cxDBEdit,winapi.MMSystem;

type
  TPCP_FM_M_EPP = class(TPAD_FM_X_PAD)
    PCP_CD_M_EPP: TClientDataSet;
    PCP_CD_M_EPPid_epp: TIntegerField;
    PCP_CD_M_EPPid_empresa: TIntegerField;
    PCP_CD_M_EPPcod_lme: TWideStringField;
    PCP_CD_M_EPPrev_lme: TWideStringField;
    PCP_CD_M_EPPid_responsavel: TIntegerField;
    PCP_CD_M_EPPid_almoxarifado: TIntegerField;
    PCP_CD_M_EPPdta_entrada: TDateField;
    PCP_CD_M_EPPhor_entrada: TTimeField;
    PCP_CD_M_EPPint_nomefun: TWideStringField;
    PCP_CD_M_EPPint_nomealm: TWideStringField;
    PCP_CD_M_EPPPCP_SQ_M_EPP_ITE: TDataSetField;
    dsEppIte: TDataSource;
    PCP_CD_M_EPP_ITE: TClientDataSet;
    PCP_CD_M_EPP_ITEid_epp: TIntegerField;
    PCP_CD_M_EPP_ITEid_epp_ite: TIntegerField;
    PCP_CD_M_EPP_ITEid_item: TIntegerField;
    PCP_CD_M_EPP_ITEid_busca_item: TWideStringField;
    PCP_CD_M_EPP_ITEid_cor: TIntegerField;
    PCP_CD_M_EPP_ITEid_tamanho: TIntegerField;
    PCP_CD_M_EPP_ITEcod_barra: TWideStringField;
    PCP_CD_M_EPP_ITEint_nomeite: TWideStringField;
    PCP_CD_M_EPP_ITEint_nomecor: TWideStringField;
    PCP_CD_M_EPP_ITEint_nometam: TWideStringField;
    PCP_CD_M_EPP_ITEint_oprorigem: TIntegerField;
    PCP_CD_M_EPP_ITEint_opr: TIntegerField;
    gbItens: TGroupBox;
    Label9: TLabel;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    Panel4: TPanel;
    pnItens: TPanel;
    lblItem: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    txtBuscaItem: TJvDBComboEdit;
    txtDescricao: TwwDBEdit;
    txtUnd: TwwDBEdit;
    btn_Add_Itens: TBitBtn;
    PCP_CD_M_EPP_ITEint_undvenda: TWideStringField;
    lblDtaEntrega: TLabel;
    txtDtaEntrega: TJvDBDateEdit;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    lblAlmoxarifado: TLabel;
    cbbAlmoxarifado: TwwDBLookupCombo;
    lblControle: TLabel;
    txtControle: TDBEdit;
    lblResponsavel: TLabel;
    txtNomeResp: TDBEdit;
    PCP_CD_M_ETQ: TClientDataSet;
    PCP_CD_M_EPP_ITEqtde: TFloatField;
    PCP_CD_M_EPP_ITEint_tipo_item: TWideStringField;
    Label2: TLabel;
    txtHoraEnt: TcxDBTimeEdit;
    Label3: TLabel;
    pnInfo: TPanel;
    txtQtdeInserido: TEdit;
    Label4: TLabel;
    shpInfoInsercao: TShape;
    lblStatusInsercao: TLabel;
    lblUltimaInsercao: TLabel;
    PCP_CD_M_ETQid_opr: TIntegerField;
    PCP_CD_M_ETQid_item: TIntegerField;
    PCP_CD_M_ETQid_cor: TIntegerField;
    PCP_CD_M_ETQid_tamanho: TIntegerField;
    PCP_CD_M_ETQcod_barra: TWideStringField;
    PCP_CD_M_ETQsequencia: TIntegerField;
    PCP_CD_M_ETQdta_criacao: TDateField;
    PCP_CD_M_ETQhor_criacao: TTimeField;
    PCP_CD_M_ETQimpressa: TBooleanField;
    PCP_CD_M_ETQint_nomeite: TWideStringField;
    PCP_CD_M_ETQint_und_venda: TWideStringField;
    PCP_CD_M_ETQint_nomecor: TWideStringField;
    PCP_CD_M_ETQint_nometam: TWideStringField;
    PCP_CD_M_ETQid_etq: TIntegerField;
    PCP_CD_M_ETQdta_entrada_est: TDateField;
    PCP_CD_M_ETQhor_entrada_est: TTimeField;
    PCP_CD_M_ETQid_funcionario_est: TIntegerField;
    PCP_CD_M_ETQhor_impressa: TTimeField;
    PCP_CD_M_ETQdta_impressa: TDateField;
    PCP_CD_M_ETQid_func_impressa: TIntegerField;
    PCP_CD_M_ETQid_opr_origem: TIntegerField;
    PCP_CD_M_ETQint_selecao: TBooleanField;
    PCP_CD_M_ETQint_medidaite: TWideStringField;
    PCP_CD_M_ETQint_etiq_espuma1ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_espuma2ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_espuma3ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_madeiraite: TWideStringField;
    PCP_CD_M_ETQint_etiq_revestimento1ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_revestimento2ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_revestimento3ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_recomendacoes1ite: TWideStringField;
    PCP_CD_M_ETQint_etiq_recomendacoes2ite: TWideStringField;
    PCP_CD_M_ETQint_nomecue: TWideStringField;
    PCP_CD_M_ETQint_nomecle: TWideStringField;
    PCP_CD_M_ETQint_nomeseloetq: TWideStringField;
    PCP_CD_M_ETQint_etiq_modelo: TWideStringField;
    PCP_CD_M_ETQint_fteetq: TIntegerField;
    PCP_CD_M_ETQint_impselo: TBooleanField;
    PCP_CD_M_ETQint_impmsgetq: TBooleanField;
    PCP_CD_M_ETQint_modeloftq_etq: TIntegerField;
    PCP_CD_M_ETQint_nome_layout_etq: TWideStringField;
    PCP_CD_M_ETQcod_int_etq: TWideStringField;
    PCP_CD_M_ETQcod_int_etq_rev: TWideStringField;
    PCP_CD_M_ETQdescricao: TWideStringField;
    PCP_CD_M_ETQetq_tecnica: TBooleanField;
    PCP_CD_M_ETQespecificacoes: TWideStringField;
    PCP_CD_M_ETQtexto_livre1: TWideStringField;
    PCP_CD_M_ETQtexto_livre2: TWideStringField;
    PCP_CD_M_ETQid_fte_etq: TIntegerField;
    PCP_CD_M_ETQmodelo_etq: TIntegerField;
    PCP_CD_M_ETQid_fte: TIntegerField;
    PCP_CD_M_ETQcod_lme: TWideStringField;
    PCP_CD_M_ETQrev_lme: TWideStringField;
    PCP_CD_M_ETQrequisitos: TWideStringField;
    PCP_CD_M_ETQinf_contato: TWideStringField;
    PCP_CD_M_ETQinf_remocao: TWideStringField;
    PCP_CD_M_ETQinf_sac: TWideStringField;
    PCP_CD_M_ETQid_empresa: TIntegerField;
    PCP_CD_M_ETQdta_saida: TDateField;
    PCP_CD_M_ETQhor_saida: TTimeField;
    PCP_CD_M_ETQid_ors_saida: TIntegerField;
    PCP_CD_M_ETQid_rom_saida: TIntegerField;
    PCP_CD_M_ETQid_funcionario_sai: TWideStringField;
    pnlQtde: TPanel;
    Label19: TLabel;
    txtQtdeInf: TEdit;
    PCP_CD_M_ETQid_epp: TIntegerField;
    PCP_CD_M_EPP_ITEint_numlote_opr: TWideStringField;
    PCP_CD_M_ETQint_num_lote_opr: TWideStringField;
    PCP_CD_M_ETQpcp_obs_item: TWideStringField;
    PCP_CD_M_EPPtipo_entrada: TIntegerField;
    PCP_CD_M_EPP_ITEint_ite_sgq_personalizado: TBooleanField;
    PCP_CD_M_EPP_ITEid_func_colchoaria: TIntegerField;
    pnlFuncionario: TPanel;
    Label5: TLabel;
    txtIdCostureiro: TwwDBEdit;
    PCP_CD_M_EPP_ITEint_nomefunc_colc: TWideStringField;
    PCP_CD_M_EPP_ITElancto_func_colch_manual: TBooleanField;
    procedure acAdicionaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbAlmoxarifadoEnter(Sender: TObject);
    procedure PCP_CD_M_EPPNewRecord(DataSet: TDataSet);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure PCP_CD_M_EPP_ITENewRecord(DataSet: TDataSet);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtQtdeInfExit(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure PCP_CD_M_EPP_ITEBeforePost(DataSet: TDataSet);
    procedure acAlterarExecute(Sender: TObject);
    procedure dsoStateChange(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure PCP_CD_M_ETQReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure txtIdCostureiroExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
     procedure AcoesIniciais;
     procedure AbrirBuscas;
     procedure Atualizar_xBusca;
     procedure ChamaCorTamanho;
     procedure GravarInsercaoNoBanco;
     var
       xbusca_item: String;
       xSeqIte: integer;
  public
    { Public declarations }
  end;

var
  PCP_FM_M_EPP: TPCP_FM_M_EPP;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, enFunc, PSQ_UN_X_ROM_ETQ;

{ TPCP_FM_M_EPP }

procedure TPCP_FM_M_EPP.AbrirBuscas;
begin
  dmGeral.BusAlmox(1,'%');
  dmGeral.BusTamanho(1,'%');
  dmGeral.BusCor(1,'%');

  dmGeral.BUS_CD_C_FU3.Close;
  dmGeral.BUS_CD_C_FU3.Data :=
  dmGeral.BUS_CD_C_FU3.DataRequest(VarArrayOf([8, 1, '']));

  dmGeral.BusFuncionario4(11,'');
end;

procedure TPCP_FM_M_EPP.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,PCP_CD_M_EPP);
  pnItens.Enabled := false;
  xSeqIte := 0;
  AcoesIniciais;
  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_id_almoxarifado_pad_epp').AsInteger > 0 then
     begin
        PCP_CD_M_EPP.FieldByName('id_almoxarifado').AsString :=
            dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_id_almoxarifado_pad_epp').AsString;
         btn_Add_ItensClick(self);
     end
  else
    cbbAlmoxarifado.SetFocus;

end;

procedure TPCP_FM_M_EPP.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,PCP_CD_M_EPP) then
     begin
       inherited;
     end;
end;

procedure TPCP_FM_M_EPP.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,PCP_CD_M_EPP) then
     begin
       inherited;
       dbGrid.SetFocus;
       AcoesIniciais;
       txtQtdeInserido.Text := '0';
       if not (pcp_cd_m_epp.IsEmpty) then
          begin
            txtQtdeInserido.Text :=  inttostr(PCP_CD_M_EPP_ITE.recordcount);
          end;
     end
  else
     begin
       txtNomeResp.SetFocus;
     end;
end;

procedure TPCP_FM_M_EPP.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo  := PCP_CD_M_EPP.FieldByName('ID_EPP').AsString;

  dmGeral.Grava(PCP_CD_M_EPP);
  inherited;
  PCP_CD_M_EPP.Close;
  PCP_CD_M_EPP.Data :=
  PCP_CD_M_EPP.DataRequest(
          VarArrayOf([0,codigo]));
  AbrirBuscas;
  AcoesIniciais;

  txtQtdeInserido.Text := '0';
  if not (pcp_cd_m_epp.IsEmpty) then
     begin
       txtQtdeInserido.Text :=  inttostr(PCP_CD_M_EPP_ITE.recordcount);
     end;
end;

procedure TPCP_FM_M_EPP.AcoesIniciais;
begin
  shpInfoInsercao.Brush.Color := $00DADADA;
  lblStatusInsercao.Caption := 'Aguardando inserir!';
  lblUltimaInsercao.Caption := '';

  txtQtdeInserido.Text := '0';

end;

procedure TPCP_FM_M_EPP.acSairExecute(Sender: TObject);
begin
  PCP_CD_M_EPP.Cancel;
  inherited;
end;

procedure TPCP_FM_M_EPP.Atualizar_xBusca;
begin
   if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end
   else
     if xbusca_item = 'ID_ITEM' then
        begin
          lblItem.Caption := '<F7> Cód. fábrica';
          xbusca_item := 'COD_FABRICA';
        end
     else if xbusca_item = 'COD_FABRICA' then
        begin
          lblItem.Caption := '<F7> Cód. barra';
          xbusca_item := 'COD_BARRA';
        end
     else if xbusca_item = 'COD_BARRA' then
        begin
          lblItem.Caption := '<F7> Cód. item';
          xbusca_item := 'ID_ITEM';
        end;
end;

procedure TPCP_FM_M_EPP.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;

    if cbbPesquisa.ItemIndex = 0 then
       begin
          PCP_CD_M_EPP.Close;
          PCP_CD_M_EPP.Data :=
          PCP_CD_M_EPP.DataRequest(
                  VarArrayOf([cbbPesquisa.ItemIndex,txtPesquisa.Text]));
       end
    else
       begin
          PCP_CD_M_EPP.Close;
          PCP_CD_M_EPP.Data :=
          PCP_CD_M_EPP.DataRequest(
                  VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, txtPesquisa.Text]));
          if cbbPesquisa.ItemIndex = 5 then // ser for por código de barra
             begin
                if not (PCP_CD_M_EPP.IsEmpty) then
                   begin
                     PCP_CD_M_EPP_ITE.Locate('cod_barra',txtPesquisa.Text,[]);
                   end;
             end;
       end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_EPP.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled  := true;

  PCP_CD_M_EPP_ITE.Insert;
  lblStatusInsercao.Caption := 'Aguadando inserir!';
  shpInfoInsercao.Brush.Color := $00DADADA;
  pnlQtde.Visible := false;
  pnlFuncionario.Visible := false;
  txtBuscaItem.SetFocus;
end;

procedure TPCP_FM_M_EPP.cbbAlmoxarifadoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusAlmox(1,'%');
  cbbAlmoxarifado.DropDown;
end;

procedure TPCP_FM_M_EPP.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,1,3] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPCP_FM_M_EPP.ChamaCorTamanho;
begin
    if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanho.Visible := False;

        //txtQtde.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := 126;
            pnlCorTamanho.Top := 26;
            pnlCorTamanho.Width := 276;

            lblCor.Left         := 140;
            lblCor.Visible      := true;

            cbbCor.Visible     := True;
            cbbTamanho.Visible := True;
            lblTamanho.Left    := 4;
            lblTamanho.Visible := true;

            cbbCor.TabStop := True;
            cbbCor.Left := 140;
            cbbTamanho.TabStop := True;

            pnlCorTamanho.Visible := True;
            cbbTamanho.SetFocus;
          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  pnlCorTamanho.Left  := 126;
                  pnlCorTamanho.Top   := 26;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := true;

                  cbbCor.Visible := False;
                  cbbCor.TabStop := False;
                  lblCor.Visible := false;

                  pnlCorTamanho.Visible := True;
                  cbbTamanho.SetFocus;
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  pnlCorTamanho.Visible := True;
                  pnlCorTamanho.Left := 126;
                  pnlCorTamanho.Top := 26;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := false;

                  cbbTamanho.Visible := False;
                  cbbTamanho.TabStop := False;

                  cbbCor.Left := 4;
                  cbbCor.SetFocus;
                  lblCor.left := 4;
                  lblCor.Visible := true;
               end;
         end;
     end;
end;

procedure TPCP_FM_M_EPP.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  txtQtdeInserido.Text := '0';
  if not (pcp_cd_m_epp.IsEmpty) then
     begin
       txtQtdeInserido.Text :=  inttostr(PCP_CD_M_EPP_ITE.recordcount);
     end;
end;

procedure TPCP_FM_M_EPP.dsoStateChange(Sender: TObject);
begin
  inherited;
  btnGrava.Enabled := false;
  btnSair.Enabled := true;
  acSair.Enabled  := true;
  btnCancelar.Enabled := false;
end;

procedure TPCP_FM_M_EPP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  PCP_CD_M_EPP.Close;
  FreeAndNil(PCP_FM_M_EPP);
end;

procedure TPCP_FM_M_EPP.FormShow(Sender: TObject);
begin
  inherited;
  PCP_CD_M_EPP.Close;
  PCP_CD_M_EPP.Data := PCP_CD_M_EPP.DataRequest(VarArrayOf([0, '']));
  PCP_CD_M_EPP.Open;

  AbrirBuscas;
  dmGeral.AtualizarGridItens(grdItens,'int_nomeite',16,0);

  AcoesIniciais;

  //Atualizar_xBusca;

  //lblItem.Caption := '<F7> Cód. barra';
  xbusca_item := 'COD_BARRA';

  txtPesquisa.SetFocus;
end;

procedure TPCP_FM_M_EPP.GravarInsercaoNoBanco;
begin
   if PCP_CD_M_EPP.ApplyUpdates(0) <> 0 then
      begin
        Showmessage('Erro na na gravação.');
        PCP_CD_M_EPP.cancel;
      end
end;

procedure TPCP_FM_M_EPP.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := false;
     if PCP_CD_M_EPP_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     PCP_CD_M_EPP_ITE.Delete;
     PCP_CD_M_EPP_ITE.Edit;

     txtQtdeInserido.Text :=  inttostr(PCP_CD_M_EPP_ITE.recordcount);
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TPCP_FM_M_EPP.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  grdItens.Hint := '';
  if PCP_CD_M_EPP_ITE.FieldByName('cod_barra').AsString <> '' then
     grdItens.Hint := 'Cod. barra: ' + PCP_CD_M_EPP_ITE.FieldByName('cod_barra').AsString + '  ' +
                      'Lancto manual?: ' + PCP_CD_M_EPP_ITE.FieldByName('lancto_func_colch_manual').AsString;
end;

procedure TPCP_FM_M_EPP.PCP_CD_M_EPPNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  inherited;

  PCP_CD_M_EPP.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    PCP_CD_M_EPP.FieldByName('ID_EPP').AsInteger :=
         SMPrincipal.enValorChave('PCP_TB_M_EPP');
  finally
    FreeAndNil(SMPrincipal);
  end;
  PCP_CD_M_EPP.FieldByName('DTA_ENTRADA').AsDateTime   := xDataSis;
  PCP_CD_M_EPP.FieldByName('HOR_ENTRADA').AsDateTime   := xHoraSis;
  PCP_CD_M_EPP.FieldByName('tipo_entrada').AsInteger   := 0;  // Entrada normal por Entrada de Produto Acabado

  dmGeral.BusFuncionario(0,IntToStr(xFuncionario));
  PCP_CD_M_EPP.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
  PCP_CD_M_EPP.FieldByName('int_nomefun').AsString     := dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
  dmGeral.BUS_CD_C_FUN.Close;

  dmGeral.BusCodigoRevListMestre(true,false,'PCP_FM_M_EPP',xCodLme,xRevLme,PCP_CD_M_EPP);
end;

procedure TPCP_FM_M_EPP.PCP_CD_M_EPP_ITEBeforePost(DataSet: TDataSet);
begin
  inherited;
  if trim( PCP_CD_M_EPP_ITE.FieldByName('cod_barra').AsString ) = '' then
     begin
       ShowMessage('Não é permitido inserir sem o código de barra!');
       abort;
     end;
  if PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').Text = '' then
     begin
       ShowMessage('Não é permitido inserir sem a informação do costureiro!');
       abort;
     end;
end;

procedure TPCP_FM_M_EPP.PCP_CD_M_EPP_ITENewRecord(DataSet: TDataSet);
begin
  inherited;
  inc(xSeqIte);
  PCP_CD_M_EPP_ITE.FieldByName('id_epp_ite').AsInteger := xSeqIte;
  PCP_CD_M_EPP_ITE.FieldByName('lancto_func_colch_manual').AsBoolean := false;

end;

procedure TPCP_FM_M_EPP.PCP_CD_M_ETQReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  dmgeral.VerificarErrosAcoes(DataSet,E,UpdateKind,Action);
end;

procedure TPCP_FM_M_EPP.pnItensExit(Sender: TObject);
begin
  inherited;

  if (btn_Add_Itens.Focused) or (grdItens.Focused)  or
     (cbbCor.Focused) or (cbbTamanho.Focused) or
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

        PCP_CD_M_EPP_ITE.Cancel;
        PCP_CD_M_EPP_ITE.edit;

        finally
           pnItens.Enabled := false;
        end;
      end;
end;

procedure TPCP_FM_M_EPP.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsInteger := 0;
  pnlFuncionario.Visible := false;
  txtBuscaItemExit(self);
end;

procedure TPCP_FM_M_EPP.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;

  // Comentado por Maxsuel Victor, em 25/02/2019
  // Essa função abaixo de consultar foi comentada a pedido de Allison.

{  PSQ_FM_X_ROM_ETQ := TPSQ_FM_X_ROM_ETQ.Create(Self);
  PSQ_FM_X_ROM_ETQ.xTelaOrigROM_ETQ := '0';
  PSQ_FM_X_ROM_ETQ.ShowModal;
  if not PSQ_FM_X_ROM_ETQ.BUS_CD_M_ETQ.IsEmpty then
     begin
       PCP_CD_M_EPP_ITE.FieldByName('id_busca_item').AsInteger :=
          PSQ_FM_X_ROM_ETQ.BUS_CD_M_ETQ.FieldByName('COD_BARRA').AsInteger;
     end;
  PSQ_FM_X_ROM_ETQ.Free; }
end;

procedure TPCP_FM_M_EPP.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item, cod_barra, cod_barra_primeiro, id_cor,
  int_nomecor, id_tamanho, int_nometam, int_tipo_item, int_opr, int_numlote_opr : string;
  int_ite_sgq_personalizado: Boolean;
  tipo_item: integer;
  qtdeInserir, contador, restante: integer;
  codigo, cor, tamanho, pcp_obs_item, id_func_colchoaria, nome_func_colc: String;
  filtroEtq: String;
  func_colch_manual: Boolean;
begin
  inherited;

  dmGeral.BUS_CD_C_ITE.Close;

  if PCP_CD_M_EPP_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
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


       pnItens.Enabled := false;
       exit;

     end
  else
     begin
       if PCP_CD_M_EPP_ITE.state in [dsBrowse] then
          PCP_CD_M_EPP_ITE.edit;
     end;


  PCP_CD_M_EPP_ITE.FieldByName('int_nomeite').Text  := '';
  PCP_CD_M_EPP_ITE.FieldByName('int_nomecor').Text  := '';
  PCP_CD_M_EPP_ITE.FieldByName('int_nometam').Text  := '';
  PCP_CD_M_EPP_ITE.FieldByName('int_undvenda').Text := '';
  PCP_CD_M_EPP_ITE.FieldByName('int_opr').Text := '';
  PCP_CD_M_EPP_ITE.FieldByName('cod_barra').Text    := '';

  if xbusca_item = 'ID_ITEM' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBuscaItem.Text]));
     end;
  if xbusca_item = 'COD_BARRA'  then
     begin
       PCP_CD_M_ETQ.Data :=
            PCP_CD_M_ETQ.DataRequest(VarArrayOf([4, txtBuscaItem.Text, dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text ]));
       if PCP_CD_M_ETQ.IsEmpty then
          begin
            shpInfoInsercao.Brush.Color := clRed;
            lblStatusInsercao.Caption := 'Produto com etiqueta não encontrado!';
            PCP_FM_M_EPP.Refresh;

            if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_etiqueta_nao_encontrada.wav') then
               begin
                 sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_etiqueta_nao_encontrada.wav'),SND_LOOP);
               end;

            ShowMessage('Etiqueta não encontrada.');
            PCP_CD_M_ETQ.close;
            txtBuscaItem.SetFocus;
            txtBuscaItem.Text := '';
            lblStatusInsercao.Caption := 'Aguadando inserir!';
            shpInfoInsercao.Brush.Color := $00DADADA;
            PCP_CD_M_EPP_ITE.cancel;
            PCP_CD_M_EPP_ITE.insert;
            //btn_Add_ItensClick(self);
            abort;
          end
       else
          begin
            if PCP_CD_M_ETQ.FieldByName('dta_entrada_est').Text <> '' then
               begin
                 shpInfoInsercao.Brush.Color := clYellow;
                 lblStatusInsercao.Caption := 'Já dado entrada no estoque!';
                 PCP_FM_M_EPP.Refresh;

                 if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_etiqueta_com_entrada.wav') then
                    begin
                      sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_etiqueta_com_entrada.wav'),SND_LOOP);
                    end;

                 ShowMessage('Já houve entrada no estoque para este produto com essa etiqueta.' + #13 +
                             'Código da entrada: ' + PCP_CD_M_ETQ.FieldByName('id_epp').Text + ' - '
                               + ' Entrada em : ' + PCP_CD_M_ETQ.FieldByName('dta_entrada_est').Text);
                 PCP_CD_M_ETQ.close;
                 txtBuscaItem.SetFocus;
                 txtBuscaItem.Text := '';
                 lblStatusInsercao.Caption := 'Aguadando inserir!';
                 shpInfoInsercao.Brush.Color := $00DADADA;
                 PCP_CD_M_EPP_ITE.cancel;
                 PCP_CD_M_EPP_ITE.insert;
                 exit;
               end;
            if PCP_CD_M_ETQ.FieldByName('dta_saida').Text <> '' then
               begin
                 shpInfoInsercao.Brush.Color := clYellow;
                 lblStatusInsercao.Caption := 'Já teve saída do estoque!';
                 PCP_FM_M_EPP.Refresh;

                 if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_etiqueta_com_saida.wav') then
                    begin
                      sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_etiqueta_com_saida.wav'),SND_LOOP);
                    end;

                 ShowMessage('Este produto com esta etiqueta já teve saída de estoque!' + #13 +
                             'Ordem de faturamento: ' + PCP_CD_M_ETQ.FieldByName('id_ors_saida').Text + ' - Saída em: ' +
                             PCP_CD_M_ETQ.FieldByName('dta_saida').Text);
                 PCP_CD_M_ETQ.close;
                 txtBuscaItem.SetFocus;
                 txtBuscaItem.Text := '';
                 lblStatusInsercao.Caption := 'Aguadando inserir!';
                 shpInfoInsercao.Brush.Color := $00DADADA;
                 PCP_CD_M_EPP_ITE.cancel;
                 PCP_CD_M_EPP_ITE.insert;
                 exit;
               end;

            if PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString = '' then
               begin
                 pnlFuncionario.visible := true;
                 txtIdCostureiro.setfocus;
                 exit;
               end;

            func_colch_manual := false; // refere-se se o usuário lançou manualmente.

            if strtoint(copy(PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString,1,2)) = 99 then
               begin
                 PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString :=
                     copy(PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString,3,
                              length(PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString));


               end
            else
               begin
                 PCP_CD_M_EPP_ITE.FieldByName('lancto_func_colch_manual').AsBoolean := true;
                 func_colch_manual := true;
               end;

            id_func_colchoaria := PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString;
            nome_func_colc     := PCP_CD_M_EPP_ITE.FieldByName('int_nomefunc_colc').AsString;



            codigo := '';
            contador    := 0;
            restante    := 0;
            qtdeInserir := 1;

            codigo  := PCP_CD_M_ETQ.FieldByName('ID_ITEM').AsString;
            cor     := PCP_CD_M_ETQ.FieldByName('ID_COR').AsString;
            tamanho := PCP_CD_M_ETQ.FieldByName('ID_TAMANHO').AsString;
            pcp_obs_item := PCP_CD_M_ETQ.FieldByName('pcp_obs_item').AsString;

            dmGeral.BusItens(0,PCP_CD_M_ETQ.FieldByName('ID_ITEM').AsString);
            dmGeral.BusGrupoEst(0,dmGeral.BUS_CD_C_ITE.FieldByName('ID_GRUPO').AsString);

            if dmGeral.BUS_CD_C_GRU.FieldByName('sgq_inf_qtde_ite_carg').AsBoolean then
               begin
                 if strtoint(txtQtdeInf.Text) = 0 then
                    begin
                      if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\informar_qtde.wav') then
                         begin
                           sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\informar_qtde.wav'),SND_LOOP);
                         end;

                      pnlQtde.visible := true;
                      txtQtdeInf.setfocus;
                      exit;
                    end
                 else
                    begin
                      qtdeInserir := strtoint(txtQtdeInf.Text);
                      txtQtdeInf.Text := '0';

                      PCP_CD_M_ETQ.Close;
                      PCP_CD_M_ETQ.Data :=
                              PCP_CD_M_ETQ.DataRequest(VarArrayOf([12,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                              codigo,cor,tamanho,pcp_obs_item]));
                      PCP_CD_M_ETQ.First;


                      cod_barra := PCP_CD_M_EPP_ITE.FieldByName('ID_BUSCA_ITEM').Text;
                      // --- Inserido em 17/09/2019 , por Maxsuel Victor

                      try

                      filtroEtq := '';
                      if qtdeInserir > 1 then
                         begin
                           if length(cod_barra) > 4 then
                              begin
                                filtroEtq := QuotedStr(copy(cod_barra,1,length(cod_barra)-3)+'%');
                                filtroEtq := ' cod_barra like('+filtroEtq+')';
                              end
                           else
                              begin
                                filtroEtq := QuotedStr(copy(cod_barra,1,1)+'%');;
                                filtroEtq :=  ' cod_barra like('+filtroEtq+')';
                              end;

                           PCP_CD_M_ETQ.Filtered := true;
                           PCP_CD_M_ETQ.Filter := filtroEtq;

                         end;

                      // --------------------------------------------------

                      if qtdeInserir > PCP_CD_M_ETQ.RecordCount then
                         begin
                           ShowMessage('Não há etiqueta(produto) suficiente para atender a quantidade informada.');
                           PCP_CD_M_ETQ.close;
                           txtBuscaItem.SetFocus;
                           txtBuscaItem.Text := '';
                           pnlQtde.Visible := false;

                           exit;
                         end;


                      cod_barra_primeiro := cod_barra;

                      PCP_CD_M_EPP_ITE.cancel;

                      if PCP_CD_M_EPP_ITE.Locate('cod_barra',cod_barra,[]) then
                         begin
                           shpInfoInsercao.Brush.Color := clYellow;
                           lblStatusInsercao.Caption := 'Já inserido no Grid!';
                           PCP_FM_M_EPP.Refresh;

                           if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_etiqueta_inserida_no_grid.wav') then
                              begin
                                sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_etiqueta_inserida_no_grid.wav'),SND_LOOP);
                              end;

                           ShowMessage('Esta etiqueta já foi inserida!');
                           btn_Add_ItensClick(self);
                           cod_barra := '';
                           pnlQtde.visible := false;
                           dmGeral.BUS_CD_C_GRU.close;

                           exit;
                         end;




                      while ((qtdeInserir <> restante) and (PCP_CD_M_ETQ.eof = false )) do
                           begin
                              if xbusca_item = 'COD_BARRA' then
                                 begin
                                    if not (PCP_CD_M_EPP_ITE.Locate('cod_barra',PCP_CD_M_ETQ.FieldByName('cod_barra').AsString,[])) then
                                      begin
                                        inc(restante)
                                        {shpInfoInsercao.Brush.Color := clYellow;
                                        lblStatusInsercao.Caption := 'Etiqueta com código de barra: ' + PCP_CD_M_ETQ.FieldByName('cod_barra').AsString
                                             + ' Já inserido no Grid!';
                                        PCP_FM_M_EPP.Refresh;
                                        ShowMessage('Esta etiqueta já foi inserida!');
                                        btn_Add_ItensClick(self);
                                        pnlQtde.visible := false;
                                        dmGeral.BUS_CD_C_GRU.close;
                                        exit;}
                                      end;
                                    PCP_CD_M_ETQ.Next;
                                 end;
                              //inc(contador);
                           end;

                      if qtdeInserir <> restante then
                         begin
                            shpInfoInsercao.Brush.Color := clYellow;
                            lblStatusInsercao.Caption := 'Não há quantidade usuficiente para dar a entrada!';
                            PCP_FM_M_EPP.Refresh;

                            if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_etiqueta_ja_inserida.wav') then
                               begin
                                 sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_etiqueta_ja_inserida.wav'),SND_LOOP);
                               end;

                            ShowMessage('Esta etiqueta já foi inserida!');
                            btn_Add_ItensClick(self);
                            pnlQtde.visible := false;
                            dmGeral.BUS_CD_C_GRU.close;

                            exit;
                         end;


                      contador := 0;
                      PCP_CD_M_ETQ.First;

                      while not (qtdeInserir = contador) do
                           begin
                              // Este IF é para poder pegar o código de barra digitado pelo usuário
                              if cod_barra_primeiro <> '' then
                                 begin
                                   PCP_CD_M_ETQ.Locate('cod_barra',cod_barra_primeiro,[]);
                                 end
                              else
                                 begin
                                    while (PCP_CD_M_EPP_ITE.Locate('cod_barra',PCP_CD_M_ETQ.FieldByName('cod_barra').AsString,[])) do
                                        begin
                                          PCP_CD_M_ETQ.Next;
                                        end;
                                 end;

                              cod_barra := PCP_CD_M_ETQ.FieldByName('cod_barra').Text;

                              PCP_CD_M_EPP_ITE.Append;
                              PCP_CD_M_EPP_ITE.FieldByName('cod_barra').AsString := cod_barra;

                              PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString := id_func_colchoaria;

                              PCP_CD_M_EPP_ITE.FieldByName('int_nomefunc_colc').AsString := nome_func_colc;


                              PCP_CD_M_EPP_ITE.FieldByName('lancto_func_colch_manual').AsBoolean := func_colch_manual;

                              PCP_CD_M_EPP_ITE.FieldByName('ID_ITEM').Text       :=
                                    PCP_CD_M_ETQ.FieldByName('id_item').Text;

                              PCP_CD_M_EPP_ITE.FieldByName('qtde').AsCurrency      := 1;

                              PCP_CD_M_EPP_ITE.FieldByName('int_opr').Text  := PCP_CD_M_ETQ.FieldByName('id_opr').Text;
                              PCP_CD_M_EPP_ITE.FieldByName('int_numlote_opr').Text  := PCP_CD_M_ETQ.FieldByName('int_num_lote_opr').Text;

                              PCP_CD_M_EPP_ITE.FieldByName('int_nomeite').Text   :=
                                   PCP_CD_M_ETQ.FieldByName('int_nomeite').AsString;
                              PCP_CD_M_EPP_ITE.FieldByName('int_undvenda').Text :=
                                   PCP_CD_M_ETQ.FieldByName('int_und_venda').AsString;
                              PCP_CD_M_EPP_ITE.FieldByName('id_cor').Text       := PCP_CD_M_ETQ.FieldByName('id_cor').Text;
                              PCP_CD_M_EPP_ITE.FieldByName('int_nomecor').Text  := PCP_CD_M_ETQ.FieldByName('int_nomecor').Text;
                              PCP_CD_M_EPP_ITE.FieldByName('id_tamanho').Text   := PCP_CD_M_ETQ.FieldByName('id_tamanho').Text;
                              PCP_CD_M_EPP_ITE.FieldByName('int_nometam').Text  := PCP_CD_M_ETQ.FieldByName('int_nometam').Text;

                              dmGeral.BUS_CD_C_ITE.Data :=
                                      dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, PCP_CD_M_EPP_ITE.FieldByName('ID_ITEM').Text]));

                              PCP_CD_M_EPP_ITE.FieldByName('int_tipo_item').Text   :=
                                                  dmGeral.BUS_CD_C_ITE.FieldByName('int_tipo_item').Text;
                              PCP_CD_M_EPP_ITE.FieldByName('int_ite_sgq_personalizado').AsBoolean   :=
                                                  dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean;


                              inc(contador);
                              PCP_CD_M_ETQ.Next;
                              if cod_barra_primeiro <> '' then
                                 begin
                                   cod_barra_primeiro := '';
                                   PCP_CD_M_ETQ.First;
                                 end;
                           end;

                      //txtQtdeInserido.Text :=  inttostr(PCP_CD_M_EPP_ITE.recordcount);

                      shpInfoInsercao.Brush.Color := clLime;
                      lblStatusInsercao.Caption := 'Produto inserido!';
                      lblUltimaInsercao.Caption := 'Último item inserido -> Código de barra: ' + cod_barra;
                      PCP_FM_M_EPP.Refresh;
                      //Sleep(1000);

                      finally
                        PCP_CD_M_ETQ.Filtered := false;
                      end;

                      try
                         GravarInsercaoNoBanco;
                      except
                         if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\erro_na_entrada.wav') then
                            begin
                              sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\erro_na_entrada'),SND_LOOP);
                           end;
                      end;
                         acAlterarExecute(sender);

                      btn_Add_ItensClick(self);
                    end;
               end
            else
               begin
                  //PCP_CD_M_EPP_ITE.Append;

                  cod_barra := PCP_CD_M_ETQ.FieldByName('cod_barra').Text;

                  PCP_CD_M_EPP_ITE.FieldByName('cod_barra').AsString := cod_barra;

                  PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString := id_func_colchoaria;

                  PCP_CD_M_EPP_ITE.FieldByName('int_nomefunc_colc').AsString  := nome_func_colc;

                  PCP_CD_M_EPP_ITE.FieldByName('lancto_func_colch_manual').AsBoolean := func_colch_manual;


                  PCP_CD_M_EPP_ITE.FieldByName('ID_ITEM').Text       :=
                        PCP_CD_M_ETQ.FieldByName('id_item').Text;

                  PCP_CD_M_EPP_ITE.FieldByName('int_opr').Text  := PCP_CD_M_ETQ.FieldByName('id_opr').Text;
                  PCP_CD_M_EPP_ITE.FieldByName('int_numlote_opr').Text  := PCP_CD_M_ETQ.FieldByName('int_num_lote_opr').Text;

                  PCP_CD_M_EPP_ITE.FieldByName('int_nomeite').Text   :=
                       PCP_CD_M_ETQ.FieldByName('int_nomeite').AsString;
                  PCP_CD_M_EPP_ITE.FieldByName('int_undvenda').Text :=
                       PCP_CD_M_ETQ.FieldByName('int_und_venda').AsString;
                  PCP_CD_M_EPP_ITE.FieldByName('id_cor').Text       := PCP_CD_M_ETQ.FieldByName('id_cor').Text;
                  PCP_CD_M_EPP_ITE.FieldByName('int_nomecor').Text  := PCP_CD_M_ETQ.FieldByName('int_nomecor').Text;
                  PCP_CD_M_EPP_ITE.FieldByName('id_tamanho').Text   := PCP_CD_M_ETQ.FieldByName('id_tamanho').Text;
                  PCP_CD_M_EPP_ITE.FieldByName('int_nometam').Text  := PCP_CD_M_ETQ.FieldByName('int_nometam').Text;

                  dmGeral.BUS_CD_C_ITE.Data :=
                          dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, PCP_CD_M_EPP_ITE.FieldByName('ID_ITEM').Text]));

                  PCP_CD_M_EPP_ITE.FieldByName('int_tipo_item').Text   :=
                                      dmGeral.BUS_CD_C_ITE.FieldByName('int_tipo_item').Text;
                  PCP_CD_M_EPP_ITE.FieldByName('int_ite_sgq_personalizado').AsBoolean   :=
                    dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean;


                  //PCP_CD_M_EPP_ITE.Post;
               end;
          end;
       PCP_CD_M_ETQ.close;
     end;
  if xbusca_item = 'COD_FABRICA' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([3, txtBuscaItem.Text]));
     end;

 { if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
     begin
       txtBuscaItem.SetFocus;
       PCP_CD_M_EPP_ITE.FieldByName('int_nomeite').Text := '';
       PCP_CD_M_EPP_ITE.FieldByName('int_undvenda').Text  := '';
       exit;
     end;}



  try
    pnItens.onExit := nil;
    // Se contador for igual a ZERO quer dizer que o usuário não precisou informar a QTDE de produtos
       // exato que iria dar entrada.
    if contador = 0 then
       begin
          if PCP_CD_M_EPP_ITE.State in [dsInsert] then
             begin
               id_item       := PCP_CD_M_EPP_ITE.FieldByName('ID_ITEM').Text;
               id_busca_item := PCP_CD_M_EPP_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
               int_opr       := PCP_CD_M_EPP_ITE.FieldByName('int_opr').Text;
               int_tipo_item := PCP_CD_M_EPP_ITE.FieldByName('int_tipo_item').Text;
               cod_barra     := PCP_CD_M_EPP_ITE.FieldByName('cod_barra').AsString;
               desc          := PCP_CD_M_EPP_ITE.FieldByName('int_nomeite').AsString;
               und           := PCP_CD_M_EPP_ITE.FieldByName('int_undvenda').AsString;
               id_cor        := PCP_CD_M_EPP_ITE.FieldByName('id_cor').Text ;
               int_nomecor   := PCP_CD_M_EPP_ITE.FieldByName('int_nomecor').Text;
               id_tamanho    := PCP_CD_M_EPP_ITE.FieldByName('id_tamanho').Text ;
               int_nometam   := PCP_CD_M_EPP_ITE.FieldByName('int_nometam').Text;
               int_numlote_opr :=  PCP_CD_M_EPP_ITE.FieldByName('int_numlote_opr').Text;
               int_ite_sgq_personalizado :=  PCP_CD_M_EPP_ITE.FieldByName('int_ite_sgq_personalizado').AsBoolean;

               id_func_colchoaria := PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString;
               nome_func_colc     := PCP_CD_M_EPP_ITE.FieldByName('int_nomefunc_colc').AsString;

               func_colch_manual :=   PCP_CD_M_EPP_ITE.FieldByName('lancto_func_colch_manual').AsBoolean;

               PCP_CD_M_EPP_ITE.Cancel;

               if xbusca_item = 'COD_BARRA' then
                  begin
                    if PCP_CD_M_EPP_ITE.Locate('cod_barra',cod_barra,[]) then
                       begin
                         shpInfoInsercao.Brush.Color := clYellow;
                         lblStatusInsercao.Caption := 'Já inserido no Grid!';
                         PCP_FM_M_EPP.Refresh;
                         ShowMessage('Esta etiqueta já foi inserida!');
                         btn_Add_ItensClick(self);
                         exit;
                       end;
                  end;
               PCP_CD_M_EPP_ITE.Append;
               PCP_CD_M_EPP_ITE.FieldByName('ID_ITEM').Text := id_item;
               PCP_CD_M_EPP_ITE.FieldByName('ID_BUSCA_ITEM').AsString := cod_barra;

               PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString := id_func_colchoaria;
               PCP_CD_M_EPP_ITE.FieldByName('int_nomefunc_colc').AsString  := nome_func_colc;
               PCP_CD_M_EPP_ITE.FieldByName('lancto_func_colch_manual').AsBoolean := func_colch_manual;

               PCP_CD_M_EPP_ITE.FieldByName('int_tipo_item').Text     := int_tipo_item;
               PCP_CD_M_EPP_ITE.FieldByName('cod_barra').AsString     := cod_barra;
               PCP_CD_M_EPP_ITE.FieldByName('int_nomeite').AsString   := desc;
               PCP_CD_M_EPP_ITE.FieldByName('int_ite_sgq_personalizado').AsBoolean := int_ite_sgq_personalizado;
               PCP_CD_M_EPP_ITE.FieldByName('int_undvenda').AsString  := und;
               PCP_CD_M_EPP_ITE.FieldByName('id_cor').Text          := id_cor;
               PCP_CD_M_EPP_ITE.FieldByName('int_nomecor').Text     := int_nomecor;
               PCP_CD_M_EPP_ITE.FieldByName('id_tamanho').Text      := id_tamanho;
               PCP_CD_M_EPP_ITE.FieldByName('int_nometam').Text     := int_nometam;
               PCP_CD_M_EPP_ITE.FieldByName('int_opr').Text         := int_opr;
               PCP_CD_M_EPP_ITE.FieldByName('int_numlote_opr').Text := int_numlote_opr;
               PCP_CD_M_EPP_ITE.FieldByName('qtde').AsCurrency      := 1;
               PCP_CD_M_EPP_ITE.Post;

               txtQtdeInserido.Text :=  inttostr(PCP_CD_M_EPP_ITE.recordcount);

               shpInfoInsercao.Brush.Color := clLime;
               lblStatusInsercao.Caption := 'Produto inserido!';
               lblUltimaInsercao.Caption := 'Último item inserido -> Código de barra: ' + cod_barra;
               PCP_FM_M_EPP.Refresh;
               //Sleep(1000);

                try
                   GravarInsercaoNoBanco;
                except
                   if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\erro_na_entrada.wav') then
                      begin
                        sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\erro_na_entrada'),SND_LOOP);
                     end;
                end;
               acAlterarExecute(sender);

               btn_Add_ItensClick(self);
             end;
       end;

   pnlQtde.visible := false;
   dmGeral.BUS_CD_C_GRU.close;

   txtQtdeInserido.Text :=  inttostr(PCP_CD_M_EPP_ITE.recordcount);

   // Maxsuel Victor 23/08/2016
   // Por enquanto este código não irá funcionar
   // ChamaCorTamanho;

  finally
     pnItens.OnExit := pnItensExit;
  end;

end;

procedure TPCP_FM_M_EPP.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //if key = vk_f7 then
    // Atualizar_xBusca;
end;

procedure TPCP_FM_M_EPP.txtIdCostureiroExit(Sender: TObject);
var
  IdCostureiro: String;
begin
  inherited;

  if (trim(txtIdCostureiro.Text) = '') then
      begin
        if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_costureiro_nao_informado.wav') then
           begin
             sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_costureiro_nao_informado.wav'),SND_LOOP);
           end;
        ShowMessage('Nenhum valor foi informado.');
        txtIdCostureiro.SetFocus;
        exit;
      end;

   if (trim(txtIdCostureiro.Text) = '0') then
       begin
         {if Dc_MessageDlgCheck('Confirma entrada sem ' + #13 + 'Deseja reimprimir?', mtConfirmation, [mbYes, mbNo],
            0, mrNo, true, false,'', nil) = 7 then
            begin
             exit;
            end
         else
            begin

            end; }
         PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsInteger := 0;
         PCP_CD_M_EPP_ITE.FieldByName('int_nomefunc_colc').AsString := '';
       end
   else
      begin
        IdCostureiro := PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString;

        if strtoint(copy(PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString,1,2)) = 99 then
           begin
             IdCostureiro :=
                 copy(PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString,3,
                          length(PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString));
           end;

        if not (dmGeral.BUS_CD_C_FU3.Locate('id_funcionario',IdCostureiro,[])) then
           begin

             if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_funcionario_sem_cadastro.wav') then
                begin
                  sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_funcionario_sem_cadastro.wav'),SND_LOOP);
                end;

             ShowMessage('Funcionário não cadastrado.');
             txtIdCostureiro.SetFocus;
             PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString := '';
             exit;
           end
        else
           begin
             if not (dmGeral.BUS_CD_C_FU4.Locate('id_funcionario',IdCostureiro,[])) then
                begin
                  if FileExists(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_funcionario_nao_costureiro.wav') then
                     begin
                       sndPlaySound(pchar(ExtractFilePath(Application.ExeName)+'Audios\PCP_FM_M_EPP\epp_funcionario_nao_costureiro.wav'),SND_LOOP);
                     end;
                  ShowMessage('Este funcionário não é costureiro.');
                  txtIdCostureiro.SetFocus;
                  PCP_CD_M_EPP_ITE.FieldByName('id_func_colchoaria').AsString := '';
                  exit;
                end;
           end;
        PCP_CD_M_EPP_ITE.FieldByName('int_nomefunc_colc').AsString :=
           dmGeral.BUS_CD_C_FU4.FieldByName('nome').AsString;
      end;



  pnlFuncionario.Visible := false;
  txtBuscaItemExit(self);
end;

procedure TPCP_FM_M_EPP.txtQtdeInfExit(Sender: TObject);
var
   codigo,cor,tamanho,pcp_obs_item: String;
begin

   if strtoint(txtQtdeInf.Text) > 0 then
      begin
        codigo := PCP_CD_M_ETQ.FieldByName('ID_ITEM').AsString;
        cor     := PCP_CD_M_ETQ.FieldByName('ID_COR').AsString;
        tamanho := PCP_CD_M_ETQ.FieldByName('ID_TAMANHO').AsString;
        pcp_obs_item := PCP_CD_M_ETQ.FieldByName('pcp_obs_item').AsString;


        PCP_CD_M_ETQ.Close;
        PCP_CD_M_ETQ.Data :=
                PCP_CD_M_ETQ.DataRequest(VarArrayOf([12,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                codigo,cor,tamanho,pcp_obs_item]));

        if PCP_CD_M_ETQ.RecordCount < strtoint(txtQtdeInf.Text) then
           begin
             ShowMessage('Não há saldo usuficiente para atender a quantidade digitada!');
             txtQtdeInf.text := '0';
             pnlQtde.visible := false;
             pnItens.Enabled  := true;
             txtBuscaItem.setfocus;
             exit;
           end;
        txtBuscaItemExit(self);
      end;
end;

end.
