unit FAT_UN_R_PED;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, frxClass,
  frxExportXLS, frxExportPDF, frxDBSet, Vcl.Menus, Data.DB, Datasnap.DBClient,
  Vcl.Mask, JvExMask, JvToolEdit;

type
  TFAT_FM_R_PED = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    FAT_FR_R_PED_SIT: TfrxReport;
    FAT_DB_R_PED: TfrxDBDataset;
    FAT_PD_R_PEX: TfrxPDFExport;
    FAT_XL_R_PEX: TfrxXLSExport;
    lblOrde: TLabel;
    cbbOrde: TComboBox;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    FAT_DB_R_PED_ITE: TfrxDBDataset;
    FAT_DB_R_PED_TIT: TfrxDBDataset;
    FAT_CD_R_PED: TClientDataSet;
    FAT_CD_R_PED_ITE: TClientDataSet;
    FAT_CD_R_PED_TIT: TClientDataSet;
    FAT_CD_R_PEDid_pedido: TIntegerField;
    FAT_CD_R_PEDid_empresa: TIntegerField;
    FAT_CD_R_PEDdta_pedido: TDateField;
    FAT_CD_R_PEDid_tipo_mov_estoque: TIntegerField;
    FAT_CD_R_PEDid_vendedor: TIntegerField;
    FAT_CD_R_PEDobs: TWideStringField;
    FAT_CD_R_PEDvlr_bruto: TFMTBCDField;
    FAT_CD_R_PEDvlr_desconto: TFMTBCDField;
    FAT_CD_R_PEDper_desconto: TFloatField;
    FAT_CD_R_PEDvlr_liquido: TFMTBCDField;
    FAT_CD_R_PEDhor_pedido: TSQLTimeStampField;
    FAT_CD_R_PEDid_condicao_pag: TIntegerField;
    FAT_CD_R_PEDpcp_obs: TWideStringField;
    FAT_CD_R_PEDpcp_id_opr: TIntegerField;
    FAT_CD_R_PEDsituacao: TIntegerField;
    FAT_CD_R_PEDsituacao_aprovacao: TIntegerField;
    FAT_CD_R_PEDid_atendente: TIntegerField;
    FAT_CD_R_PEDid_responsavel: TIntegerField;
    FAT_CD_R_PEDid_cliente: TIntegerField;
    FAT_CD_R_PEDtipo_restricao: TWideStringField;
    FAT_CD_R_PEDid_almoxarifado: TIntegerField;
    FAT_CD_R_PEDjustificativa: TWideStringField;
    FAT_CD_R_PEDid_usuario_lib: TIntegerField;
    FAT_CD_R_PEDcod_lme: TWideStringField;
    FAT_CD_R_PEDrev_lme: TWideStringField;
    FAT_CD_R_PEDorigem: TIntegerField;
    FAT_CD_R_PEDdispositivo: TWideStringField;
    FAT_CD_R_PEDgps_latitude: TFloatField;
    FAT_CD_R_PEDgps_longitude: TFloatField;
    FAT_CD_R_PEDcubagem: TFloatField;
    FAT_CD_R_PEDid_orcamento: TIntegerField;
    FAT_CD_R_PEDenvia_carga: TBooleanField;
    FAT_CD_R_PEDdta_prev_entrega: TDateField;
    FAT_CD_R_PEDid_abertura: TIntegerField;
    FAT_CD_R_PEDint_nomecli: TWideStringField;
    FAT_CD_R_PEDint_nometme: TWideStringField;
    FAT_CD_R_PEDint_nomefun: TWideStringField;
    FAT_CD_R_PEDint_nomecpg: TWideStringField;
    FAT_CD_R_PEDint_nomeate: TWideStringField;
    FAT_CD_R_PEDint_nomeres: TWideStringField;
    FAT_CD_R_PEDint_nomecid: TWideStringField;
    FAT_CD_R_PEDint_nomeest: TWideStringField;
    FAT_CD_R_PEDint_cpfcnpj: TWideStringField;
    FAT_CD_R_PEDint_pessoacli: TIntegerField;
    FAT_CD_R_PEDint_id_perfil: TIntegerField;
    FAT_CD_R_PEDint_sitaprov: TWideStringField;
    FAT_CD_R_PEDint_sitped: TWideStringField;
    FAT_CD_R_PEDint_ie_rg_cli: TWideStringField;
    FAT_CD_R_PEDFAT_SQ_R_PED_TIT: TDataSetField;
    FAT_CD_R_PEDFAT_SQ_R_PED_ITE: TDataSetField;
    FAT_CD_R_PED_ITEid_pedido: TIntegerField;
    FAT_CD_R_PED_ITEid_sequencia: TIntegerField;
    FAT_CD_R_PED_ITEid_item: TIntegerField;
    FAT_CD_R_PED_ITEqtde: TFloatField;
    FAT_CD_R_PED_ITEvlr_unitario: TFMTBCDField;
    FAT_CD_R_PED_ITEvlr_bruto: TFMTBCDField;
    FAT_CD_R_PED_ITEper_desconto: TFloatField;
    FAT_CD_R_PED_ITEvlr_desconto: TFMTBCDField;
    FAT_CD_R_PED_ITEvlr_liquido: TFMTBCDField;
    FAT_CD_R_PED_ITEid_cor: TIntegerField;
    FAT_CD_R_PED_ITEid_tamanho: TIntegerField;
    FAT_CD_R_PED_ITEid_busca_item: TWideStringField;
    FAT_CD_R_PED_ITEvlr_unitario_orig: TFMTBCDField;
    FAT_CD_R_PED_ITEint_nomeite: TWideStringField;
    FAT_CD_R_PED_ITEint_nomecor: TWideStringField;
    FAT_CD_R_PED_ITEint_id_und_venda: TWideStringField;
    FAT_CD_R_PED_ITEint_tipo_item: TWideStringField;
    FAT_CD_R_PED_ITEint_nometam: TWideStringField;
    FAT_CD_R_PED_TITid_pedido: TIntegerField;
    FAT_CD_R_PED_TITid_titulo: TIntegerField;
    FAT_CD_R_PED_TITdias: TIntegerField;
    FAT_CD_R_PED_TITdta_vencimento: TDateField;
    FAT_CD_R_PED_TITvlr_titulo: TFMTBCDField;
    FAT_CD_R_PED_TITche_banco: TWideStringField;
    FAT_CD_R_PED_TITche_agencia: TWideStringField;
    FAT_CD_R_PED_TITche_conta: TIntegerField;
    FAT_CD_R_PED_TITche_numero: TIntegerField;
    FAT_CD_R_PED_TITche_emitente: TWideStringField;
    FAT_CD_R_PED_TITid_forma_pag: TIntegerField;
    FAT_CD_R_PED_TITbol_nosso_numero: TIntegerField;
    FAT_CD_R_PED_TITid_maquineta: TIntegerField;
    FAT_CD_R_PED_TITint_nomefpg: TWideStringField;
    chbExibirTit: TCheckBox;
    chbExibirItens: TCheckBox;
    FAT_FR_R_PED_GER: TfrxReport;
    FAT_CD_R_PEDint_empfantasia: TWideStringField;
    tsVendedor: TTabSheet;
    lboxVendSel: TListBox;
    lbl_TextoF3Vend: TLabel;
    pmExcluirVend: TPopupMenu;
    btnExcluirVend: TMenuItem;
    Label3: TLabel;
    deInicial: TJvDateEdit;
    Label4: TLabel;
    deFinal: TJvDateEdit;
    FAT_CD_R_PEDmod_frete: TIntegerField;
    FAT_CD_R_PEDint_modfrete: TWideStringField;
    FAT_CD_R_PEDvlr_frete: TFMTBCDField;
    Label5: TLabel;
    cbbPeriodo: TComboBox;
    FAT_CD_R_PEDdta_emissao_nfe: TDateField;
    FAT_CD_R_PEDordem_fat: TIntegerField;
    FAT_CD_R_PEDint_sitped2: TWideStringField;
    FAT_FR_R_PED_ITE: TfrxReport;
    tsItem: TTabSheet;
    lboxItemSel: TListBox;
    Label2: TLabel;
    pmExcluirItem: TPopupMenu;
    btnExcluirItem: TMenuItem;
    chbExibirPed: TCheckBox;
    FAT_CD_R_PED_ITE_NFE: TClientDataSet;
    FAT_DB_R_PED_ITE_NFE: TfrxDBDataset;
    FAT_FR_R_PED_ITE_PDN: TfrxReport;
    tsCndPagamentos: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    pmSelCondicaoPag: TPopupMenu;
    btnSelFormaPag: TMenuItem;
    pmRemoverCondicaoPag: TPopupMenu;
    btnRemoverFormaPag: TMenuItem;
    lboxCondicaoPagamentoDisponivel: TListBox;
    lboxCondicaoPagamentoSelecionada: TListBox;
    FAT_CD_R_PEDint_desc_cond_pag: TWideMemoField;
    TabSheet1: TTabSheet;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    TabSheet3: TTabSheet;
    Label10: TLabel;
    ListBox3: TListBox;
    TabSheet4: TTabSheet;
    Label11: TLabel;
    ListBox4: TListBox;
    TabSheet5: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    lboxSituacaoDisponivel: TListBox;
    lboxSituacaoSelecionada: TListBox;
    TabSheet6: TTabSheet;
    pmSelSituacao: TPopupMenu;
    MenuItem1: TMenuItem;
    pmRemoverSituacao: TPopupMenu;
    MenuItem2: TMenuItem;
    chkFaturado: TCheckBox;
    BUS_CD_C_FUN: TClientDataSet;
    BUS_CD_C_FUNid_funcionario: TIntegerField;
    BUS_CD_C_FUNativo: TBooleanField;
    BUS_CD_C_FUNnome: TWideStringField;
    BUS_CD_C_FUNendereco: TWideStringField;
    BUS_CD_C_FUNcep: TWideStringField;
    BUS_CD_C_FUNnumero: TWideStringField;
    BUS_CD_C_FUNtel_fixo: TWideStringField;
    BUS_CD_C_FUNtel_movel: TWideStringField;
    BUS_CD_C_FUNdoc_cpf: TWideStringField;
    BUS_CD_C_FUNdoc_identidade: TWideStringField;
    BUS_CD_C_FUNbairro: TWideStringField;
    BUS_CD_C_FUNid_cidade: TWideStringField;
    BUS_CD_C_FUNestado: TWideStringField;
    BUS_CD_C_FUNemail: TWideStringField;
    BUS_CD_C_FUNsexo: TIntegerField;
    BUS_CD_C_FUNdta_nascimento: TDateField;
    BUS_CD_C_FUNdta_cadastro: TDateField;
    BUS_CD_C_FUNlogin: TWideStringField;
    BUS_CD_C_FUNsenha: TWideStringField;
    BUS_CD_C_FUNdta_senha_expira: TDateField;
    BUS_CD_C_FUNid_perfil_seg: TIntegerField;
    BUS_CD_C_FUNseg_alt_lim_cli: TBooleanField;
    BUS_CD_C_FUNseg_alt_sit_cli: TBooleanField;
    BUS_CD_C_FUNseg_alt_pre_pro: TBooleanField;
    BUS_CD_C_FUNseg_hab_bot_exc: TBooleanField;
    BUS_CD_C_FUNint_nomecid: TWideStringField;
    BUS_CD_C_FUNcod_lme: TWideStringField;
    BUS_CD_C_FUNrev_lme: TWideStringField;
    BUS_CD_C_FUNCAD_SQ_C_FUN_CRG: TDataSetField;
    BUS_CD_C_FUNseg_vis_ult_cmp_ite: TBooleanField;
    BUS_CD_C_FUNseg_vis_msg_sol_cmp: TBooleanField;
    BUS_CD_C_FUNseg_apr_rep_cmp_ped: TBooleanField;
    BUS_CD_C_FUNseg_per_canc_orv: TBooleanField;
    BUS_CD_C_FUNseg_habilitar_seg: TBooleanField;
    BUS_CD_C_FUNseg_redef_senha: TBooleanField;
    BUS_CD_C_FUNseg_hab_bot_alt_fun: TBooleanField;
    BUS_CD_C_FUNseq_vis_msg_ped_exp_fat: TBooleanField;
    BUS_CD_C_FUNseg_ctc_apg: TBooleanField;
    BUS_CD_C_FUNseg_alt_vend_ped: TBooleanField;
    BUS_CD_C_FUNseq_vis_alert_est_min: TBooleanField;
    BUS_CD_C_FUNexcluir_caixa: TBooleanField;
    BUS_CD_C_FUNseg_hab_lib_brd: TBooleanField;
    BUS_CD_C_FUNseg_vis_custo_csu_ite: TBooleanField;
    BUS_CD_C_FUNseg_zerar_est: TBooleanField;
    BUS_CD_C_FUNseg_vis_nota_csu_ite: TBooleanField;
    BUS_CD_C_FUNid_empresa_mob: TIntegerField;
    BUS_CD_C_FUNvnd_interno_externo: TIntegerField;
    BUS_CD_C_FUNtipo: TIntegerField;
    BUS_CD_C_FUNaniversariante_mes: TBooleanField;
    BUS_CD_C_FUNCAD_SQ_C_FUN_EMP: TDataSetField;
    BUS_CD_C_FUNsgq_reimprime_etq: TBooleanField;
    BUS_CD_C_FUNmob_alt_preco_ped: TBooleanField;
    BUS_CD_C_FUNseg_per_desc_maior: TBooleanField;
    BUS_CD_C_FUNseg_cancelar_os: TBooleanField;
    BUS_CD_C_FUNadm_sistema: TBooleanField;
    BUS_CD_C_FUNper_comissao: TFloatField;
    BUS_CD_C_FUNseg_alt_cli_ped: TBooleanField;
    BUS_CD_C_FUNsgq_perm_alt_comissao_ped: TBooleanField;
    BUS_CD_C_FUNseg_alterar_local_tit_fin: TBooleanField;
    BUS_CD_C_FUNseg_vis_aviso_tit_spc_protesto: TBooleanField;
    BUS_CD_C_FUNsgq_perm_botao_ger_prod: TBooleanField;
    BUS_CD_C_FUNsgq_perm_atual_contagem: TBooleanField;
    BUS_CD_C_FUNsgq_vis_vlr_tot_carga: TBooleanField;
    BUS_CD_C_FUNseg_alterar_fpg_tit_fin: TBooleanField;
    BUS_CD_C_FUNseg_alterar_ped_sit: TIntegerField;
    BUS_CD_C_FUNsgq_per_comissao: TFloatField;
    BUS_CD_C_FUNper_alterar_repres: TBooleanField;
    BUS_CD_C_FUNCAD_SQ_C_FUN_CPN: TDataSetField;
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxVendSelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluirVendClick(Sender: TObject);
    procedure lboxItemSelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluirItemClick(Sender: TObject);
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure btnSelFormaPagClick(Sender: TObject);
    procedure btnRemoverFormaPagClick(Sender: TObject);
    procedure lboxCondicaoPagamentoDisponivelDblClick(Sender: TObject);
    procedure lboxCondicaoPagamentoSelecionadaDblClick(Sender: TObject);
    procedure lboxSituacaoDisponivelDblClick(Sender: TObject);
    procedure lboxSituacaoSelecionadaDblClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure chkFaturadoClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos:Boolean;
    procedure BusFuncionario(index:integer; filtro: string);
    var
      xCondEmpresa,xCondVend,xCondCondicaoPagamento,xCondItem,xCondSituacao,xOpcoes,
      xSituacao, xUsaSGQ:String;
      xSituacaoDigitada, xSituacaoEmabertoApv: Boolean;
  public
    { Public declarations }
  end;

var
  FAT_FM_R_PED: TFAT_FM_R_PED;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, enConstantes, PSQ_UN_X_FUN, PSQ_UN_X_ITE;



procedure TFAT_FM_R_PED.PreencherCondicao;
var
  opcoesEmpresa,opcoesVendedor,opcoesItem, opcoesCondicaoPagamento, opcoesSituacao:String;
  i,SitSelecionada:Integer;
begin

  xUsaSGQ := UpperCase(dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsString);


   // Empresas ------------------------------------------------------------------
  xCondEmpresa := '';
  if lboxEmpresaSelecionada.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Count - 1 do
          begin
            if xCondEmpresa <> '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa + ',' +''''+trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa +'                    '+lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
          end;
     end;


    // Vendedor ------------------------------------------------------------------
  xCondVend := '';
  if lboxVendSel.Count > 0 then
     begin
       for i := 0 to lboxVendSel.Count - 1 do
          begin
            if xCondVend <> '' then
               begin
                 xCondVend :=
                 xCondVend + ',' +''''+trim(copy(lboxVendSel.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor +'                    '+lboxVendSel.Items[i] + #13+#10;
               end;
            if xCondVend = '' then
               begin
                 xCondVend :=
                 xCondVend +''''+ trim(copy(lboxVendSel.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor + lboxVendSel.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
       opcoesVendedor := 'Todos';
     end;

   // Item ------------------------------------------------------------------
  xCondItem := '';
  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Por Item') then
    begin
      if lboxItemSel.Count > 0 then
         begin
           for i := 0 to lboxItemSel.Count - 1 do
              begin
                if xCondItem <> '' then
                   begin
                     xCondItem :=
                     xCondItem + ',' +''''+trim(copy(lboxItemSel.Items[i],1,6))+'''';
                     opcoesItem :=
                     opcoesItem +'                    '+lboxItemSel.Items[i] + #13+#10;
                   end;
                if xCondItem = '' then
                   begin
                     xCondItem :=
                     xCondItem +''''+ trim(copy(lboxItemSel.Items[i],1,6))+'''';
                     opcoesItem :=
                     opcoesItem + lboxItemSel.Items[i] + #13+#10;
                   end;
              end;
         end
       else
         begin
           opcoesItem := 'Todos';
         end;
    end;


   // Condição de Pagamento -----------------------------------------------------
  xCondCondicaoPagamento := '';

  if lboxCondicaoPagamentoSelecionada.Count > 0 then
     begin
        for i := 0 to lboxCondicaoPagamentoSelecionada.Count - 1 do
          begin
            if xCondCondicaoPagamento <> '' then
               begin
               xCondCondicaoPagamento :=
               xCondCondicaoPagamento + ',' +''''+trim(copy(lboxCondicaoPagamentoSelecionada.Items[i],1,3))+'''';
               opcoesCondicaoPagamento :=
               opcoesCondicaoPagamento +'                                 '+lboxCondicaoPagamentoSelecionada.Items[i]+ #13+#10;
               end;
            if xCondCondicaoPagamento = '' then
               begin
               xCondCondicaoPagamento :=
               xCondCondicaoPagamento +''''+trim(copy(lboxCondicaoPagamentoSelecionada.Items[i],1,3))+'''';
               opcoesCondicaoPagamento :=
               opcoesCondicaoPagamento + lboxCondicaoPagamentoSelecionada.Items[i]+ #13+#10;
               end;
          end
     end
  else
     begin
       opcoesCondicaoPagamento:= 'Todos';
     end;


  // Situacao ------------------------------------------------------------------
  xCondSituacao := '';

  xSituacaoDigitada    := false;
  xSituacaoEmabertoApv := false;

  if chkFaturado.Checked then
     begin
       xCondSituacao := '3'; // no banco de dados o valor é 3,  Faturado
       opcoesSituacao := '4 - Faturado';
     end
  else
     begin
        if lboxSituacaoSelecionada.Count > 0 then
           begin
             for i := 0 to lboxSituacaoSelecionada.Count - 1 do
                begin
                  if copy(lboxSituacaoSelecionada.Items[i],1,1) = '0' then
                     begin
                       xSituacaoDigitada := true;
                     end;
                  if copy(lboxSituacaoSelecionada.Items[i],1,1) = '1' then
                     begin
                       xSituacaoEmabertoApv := true;
                     end;

                  if xCondSituacao <> '' then
                     begin
                       SitSelecionada := strtoint(copy(lboxSituacaoSelecionada.Items[i],1,1));
                       if SitSelecionada in [2,3,5] then
                          begin
                            SitSelecionada := SitSelecionada - 1;
                            xCondSituacao :=
                            xCondSituacao + ',' +''''+inttostr(SitSelecionada)+'''';
                          end;
                       opcoesSituacao :=
                       opcoesSituacao +'                    '+lboxSituacaoSelecionada.Items[i] + #13+#10;
                     end;

                  if xCondSituacao = '' then
                     begin
                       SitSelecionada := strtoint(copy(lboxSituacaoSelecionada.Items[i],1,1));
                       if SitSelecionada in [2,3,5] then
                          begin
                            SitSelecionada := SitSelecionada - 1;
                            xCondSituacao :=
                            xCondSituacao +''''+ inttostr(SitSelecionada)+'''';
                          end;
                       opcoesSituacao :=
                       opcoesSituacao + lboxSituacaoSelecionada.Items[i] + #13+#10;
                     end;

                  //if xSituacaoDigitada or xSituacaoEmabertoApv then
                  //   xCondSituacao := '';

                end;
           end
         else
           begin
             opcoesSituacao := 'Todos';
           end;
     end;


   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text +' à '+deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Ordenação.........: ' + cbbOrde.Text + #13+#10;
   if chbExibirItens.Checked then
     xOpcoes := xOpcoes + 'Exibir Itens......: ' + 'Sim' + #13+#10
   else
     xOpcoes := xOpcoes + 'Exibir Itens......: ' + 'Não' + #13+#10;

   if chbExibirTit.Checked then
     xOpcoes := xOpcoes + 'Exibir Títulos....: ' + 'Sim' + #13+#10
   else
     xOpcoes := xOpcoes + 'Exibir Títulos....: ' + 'Não' + #13+#10;

   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa + #13+#10;
   xOpcoes := xOpcoes + 'Vendedor..........: ' + opcoesVendedor + #13+#10;
   xOpcoes := xOpcoes + 'Condição de pagto.: ' + opcoesCondicaoPagamento + #13+#10;
   xOpcoes := xOpcoes + 'Situação..........: ' + opcoesSituacao + #13+#10;

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Por Item')  then
     xOpcoes := xOpcoes + 'Item..............: ' + opcoesItem + #13+#10;

end;

procedure TFAT_FM_R_PED.ExibirRel;
var
  PathImg:string;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
    begin
     Showmessage('Nenhum relatório foi selecionado.');
     exit;
    end;

  PreencherCondicao;

  FAT_CD_R_PED.Close;
  FAT_CD_R_PED_ITE_NFE.Close;


  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Por Item') then
    begin
      FAT_CD_R_PED_ITE_NFE.Data :=
      FAT_CD_R_PED_ITE_NFE.DataRequest(
         VarArrayOf([lbxRelatorios.ItemIndex,
         deInicial.Text,
         deFinal.Text,
         cbbOrde.ItemIndex,
         xCondSituacao,
         xCondEmpresa,
         xCondVend,
         cbbPeriodo.ItemIndex,
         xCondItem,
         xCondCondicaoPagamento,
         xSituacaoDigitada,xSituacaoEmabertoApv,
         xUsaSGQ]));
    end
  else
    begin
      FAT_CD_R_PED.Data :=
      FAT_CD_R_PED.DataRequest(
         VarArrayOf([lbxRelatorios.ItemIndex,
         deInicial.Text,
         deFinal.Text,
         cbbOrde.ItemIndex,
         xCondSituacao,
         xCondEmpresa,
         xCondVend,
         cbbPeriodo.ItemIndex,
         xCondCondicaoPagamento,
         xSituacaoDigitada,
         xSituacaoEmabertoApv,
         xUsaSGQ]));
    end;
  if (not FAT_CD_R_PED.IsEmpty) OR (not FAT_CD_R_PED_ITE_NFE.IsEmpty) then
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

      if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '0 - Geral') then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(FAT_FR_R_PED_GER.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_R_PED_GER.Name,xCodLme,xRevLme,nil);


          TfrxHeader(FAT_FR_R_PED_GER.FindComponent('Header2')).Visible := chbExibirItens.Checked;
          TfrxDetailData(FAT_FR_R_PED_GER.FindComponent('DetailData1')).Visible := chbExibirItens.Checked;
          TfrxFooter(FAT_FR_R_PED_GER.FindComponent('Footer2')).Visible := chbExibirItens.Checked;

          TfrxHeader(FAT_FR_R_PED_GER.FindComponent('Header3')).Visible := chbExibirTit.Checked;
          TfrxDetailData(FAT_FR_R_PED_GER.FindComponent('DetailData2')).Visible := chbExibirTit.Checked;
          TfrxFooter(FAT_FR_R_PED_GER.FindComponent('Footer3')).Visible := chbExibirTit.Checked;

          if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
            FAT_FR_R_PED_GER.Variables['ativa_cor'] := true
          else
            FAT_FR_R_PED_GER.Variables['ativa_cor'] := false;

          if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
            FAT_FR_R_PED_GER.Variables['ativa_tamanho'] := true
          else
            FAT_FR_R_PED_GER.Variables['ativa_tamanho'] := false;


          FAT_FR_R_PED_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          FAT_FR_R_PED_GER.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          FAT_FR_R_PED_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);

          FAT_FR_R_PED_GER.Variables['ft_lb_vendedor'] := QuotedStr('Vendedor');
          FAT_FR_R_PED_GER.Variables['ft_ordem_fat'] := QuotedStr('''');
          if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
             begin
               FAT_FR_R_PED_GER.Variables['ft_lb_vendedor'] := QuotedStr('Representante');
               FAT_FR_R_PED_GER.Variables['ft_ordem_fat'] := QuotedStr('Ordem de Faturamento');
             end;
          FAT_FR_R_PED_GER.PrepareReport();
          FAT_FR_R_PED_GER.ShowReport();
        end;

      if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '1 - Por Situação') then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(FAT_FR_R_PED_SIT.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_R_PED_SIT.Name,xCodLme,xRevLme,nil);


          TfrxHeader(FAT_FR_R_PED_SIT.FindComponent('Header2')).Visible := chbExibirItens.Checked;
          TfrxDetailData(FAT_FR_R_PED_SIT.FindComponent('DetailData1')).Visible := chbExibirItens.Checked;
          TfrxFooter(FAT_FR_R_PED_SIT.FindComponent('Footer2')).Visible := chbExibirItens.Checked;

          TfrxHeader(FAT_FR_R_PED_SIT.FindComponent('Header3')).Visible := chbExibirTit.Checked;
          TfrxDetailData(FAT_FR_R_PED_SIT.FindComponent('DetailData2')).Visible := chbExibirTit.Checked;
          TfrxFooter(FAT_FR_R_PED_SIT.FindComponent('Footer3')).Visible := chbExibirTit.Checked;


          //BUS_CD_C_FUN.Close;
         // BUS_CD_C_FUN.Data :=
         // BUS_CD_C_FUN.DataRequest(VarArrayOf([0, xFuncionario]));

         { if BUS_CD_C_FUN.FieldByName('vnd_interno_externo').AsInteger = 1 then // Externo
             begin
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo2')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo13')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo49')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo50')).Visible := false;

               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('FAT_DB_R_PEDvlr_bruto')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('FAT_DB_R_PEDvlr_desconto')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('FAT_DB_R_PEDvlr_frete')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('FAT_DB_R_PEDvlr_liquido')).Visible := false;

               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo32')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo55')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo56')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo42')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo45')).Visible := false;

               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo46')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo51')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo52')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo53')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo54')).Visible := false;

               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo47')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo59')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo58')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo57')).Visible := false;
               TfrxMemoView(FAT_FR_R_PED_SIT.FindComponent('memo48')).Visible := false;
            end; }

          if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
            FAT_FR_R_PED_SIT.Variables['ativa_cor'] := true
          else
            FAT_FR_R_PED_SIT.Variables['ativa_cor'] := false;

          if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
            FAT_FR_R_PED_SIT.Variables['ativa_tamanho'] := true
          else
            FAT_FR_R_PED_SIT.Variables['ativa_tamanho'] := false;


          FAT_FR_R_PED_SIT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          FAT_FR_R_PED_SIT.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          FAT_FR_R_PED_SIT.Variables['Opcoes'] := QuotedStr(xOpcoes);
          FAT_FR_R_PED_SIT.Variables['ft_lb_vendedor'] := QuotedStr('Vendedor');
          FAT_FR_R_PED_SIT.Variables['ft_ordem_fat'] := QuotedStr('''');
          if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
             begin
               FAT_FR_R_PED_SIT.Variables['ft_lb_vendedor'] := QuotedStr('Representante');
               FAT_FR_R_PED_SIT.Variables['ft_ordem_fat'] := QuotedStr('Ordem de Faturamento');
             end;
          FAT_FR_R_PED_SIT.PrepareReport();
          FAT_FR_R_PED_SIT.ShowReport();
        end;

      if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Por Item') then
        begin



          if chbExibirPed.Checked=true then
            begin
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(FAT_FR_R_PED_ITE_PDN.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
               dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_R_PED_ITE_PDN.Name,xCodLme,xRevLme,nil);


              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
               FAT_FR_R_PED_ITE_PDN.Variables['ativa_cor'] := true
              else
               FAT_FR_R_PED_ITE_PDN.Variables['ativa_cor'] := false;

              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
               FAT_FR_R_PED_ITE_PDN.Variables['ativa_tamanho'] := true
              else
               FAT_FR_R_PED_ITE_PDN.Variables['ativa_tamanho'] := false;

              FAT_FR_R_PED_ITE_PDN.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              FAT_FR_R_PED_ITE_PDN.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              FAT_FR_R_PED_ITE_PDN.Variables['Opcoes'] := QuotedStr(xOpcoes);
              FAT_FR_R_PED_ITE_PDN.Variables['ft_lb_vendedor'] := QuotedStr('Vendedor');
              if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
                 begin
                   FAT_FR_R_PED_ITE_PDN.Variables['ft_lb_vendedor'] := QuotedStr('Representante');
                 end;
              FAT_FR_R_PED_ITE_PDN.PrepareReport();
              FAT_FR_R_PED_ITE_PDN.ShowReport();
            end
          else
            begin
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(FAT_FR_R_PED_ITE.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
               dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_R_PED_ITE.Name,xCodLme,xRevLme,nil);

              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
               FAT_FR_R_PED_ITE.Variables['ativa_cor'] := true
              else
               FAT_FR_R_PED_ITE.Variables['ativa_cor'] := false;

              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
               FAT_FR_R_PED_ITE.Variables['ativa_tamanho'] := true
              else
               FAT_FR_R_PED_ITE.Variables['ativa_tamanho'] := false;


              FAT_FR_R_PED_ITE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              FAT_FR_R_PED_ITE.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              FAT_FR_R_PED_ITE.Variables['Opcoes'] := QuotedStr(xOpcoes);
              FAT_FR_R_PED_ITE.Variables['ft_lb_vendedor'] := QuotedStr('Vendedor');
              if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
                 begin
                   FAT_FR_R_PED_ITE.Variables['ft_lb_vendedor'] := QuotedStr('Representante');
                 end;
              FAT_FR_R_PED_ITE.PrepareReport();
              FAT_FR_R_PED_ITE.ShowReport();
            end;





        end;

    end
  else
    begin
      ShowMessage('Nenhum registro foi encontrado.');
    end;
end;

function TFAT_FM_R_PED.TestarCampos:Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
     begin
       mens := mens +  '.O período deve ser preenchido.' + #13;
     end
  else
    if (deInicial.Date >  deFinal.Date) then
     begin
       mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
     end;


  if (lboxEmpresaSelecionada.Count=0) then
    begin
      mens := mens +  '.É necessário selecionar pelo menos 1 empresa.' + #13;
    end;


  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end;

end;




procedure TFAT_FM_R_PED.btnExcluirItemClick(Sender: TObject);
begin
  inherited;
 if lboxItemSel.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxItemSel.DeleteSelected;
end;

procedure TFAT_FM_R_PED.btnExcluirVendClick(Sender: TObject);
begin
  inherited;
  if lboxVendSel.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxVendSel.DeleteSelected;
end;

procedure TFAT_FM_R_PED.btnImprimirClick(Sender: TObject);
begin
  inherited;

  if TestarCampos then
    begin
      ExibirRel;
    end;

end;

procedure TFAT_FM_R_PED.btnRemoverFormaPagClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxCondicaoPagamentoSelecionada.ClearSelection;

  if lboxCondicaoPagamentoSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCondicaoPagamentoSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxCondicaoPagamentoSelecionada.Items.Count - 1 do
           begin
             lboxCondicaoPagamentoDisponivel.Items.Add(lboxCondicaoPagamentoSelecionada.Items[i]);
             lboxCondicaoPagamentoSelecionada.Items.Delete(lboxCondicaoPagamentoSelecionada.ItemIndex);
           end;
       lboxCondicaoPagamentoSelecionada.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PED.btnRemoverTodosEmpresaClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxEmpresaSelecionada.ClearSelection;

  if lboxEmpresaSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresaSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Items.Count - 1 do
           begin
             lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[i]);
             lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
           end;
       lboxEmpresaSelecionada.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PED.btnSelFormaPagClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxCondicaoPagamentoDisponivel.ClearSelection;
  if lboxCondicaoPagamentoDisponivel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCondicaoPagamentoDisponivel.Items.Count > 0 then
     begin
       for i := 0 to lboxCondicaoPagamentoDisponivel.Items.Count - 1 do
           begin
             lboxCondicaoPagamentoSelecionada.Items.Add(lboxCondicaoPagamentoDisponivel.Items[i]);
             lboxCondicaoPagamentoDisponivel.Items.Delete(lboxCondicaoPagamentoDisponivel.ItemIndex);
           end;
       lboxCondicaoPagamentoDisponivel.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PED.chkFaturadoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  if chkFaturado.Checked then
     begin
       cbbPeriodo.ItemIndex := 1;

       if lboxSituacaoSelecionada.Items.Count > 0 then
          begin
            for i := 0 to lboxSituacaoSelecionada.Items.Count - 1 do
                begin
                  lboxSituacaoDisponivel.Items.Add(lboxSituacaoSelecionada.Items[i]);
                  lboxSituacaoSelecionada.Items.Delete(lboxSituacaoSelecionada.ItemIndex);
                end;
            lboxSituacaoSelecionada.Items.Clear;
          end;
       if lboxSituacaoSelecionada.Items.Count > 0 then
           begin
             for i := 0 to lboxSituacaoSelecionada.Items.Count - 1 do
                 begin
                   lboxSituacaoDisponivel.Items.Add(lboxSituacaoSelecionada.Items[i]);
                   lboxSituacaoSelecionada.Items.Delete(lboxSituacaoSelecionada.ItemIndex);
                 end;
             lboxSituacaoSelecionada.Items.Clear;
           end;
     end
  else
     begin
       cbbPeriodo.ItemIndex := 0;
     end;

end;

procedure TFAT_FM_R_PED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_PED);
end;

procedure TFAT_FM_R_PED.FormShow(Sender: TObject);
begin
  inherited;

  lbxRelatorios.ItemIndex :=0;
  lbxRelatoriosClick(self);

  FAT_FR_R_PED_GER.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  FAT_FR_R_PED_SIT.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  FAT_FR_R_PED_ITE.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  FAT_FR_R_PED_ITE_PDN.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);

  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
    dmGeral.BUS_CD_C_PAR.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_PAR.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PAR.First;
       while not dmGeral.BUS_CD_C_PAR.eof do
          begin
            lboxEmpresas.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
              ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
     begin
       tsVendedor.Caption := 'Representante';
       lbl_TextoF3Vend.Caption :=  'Dê um click no campo abaixo e tecle <F3> para selecionar algum representante';
     end;


  BUS_CD_C_FUN.Close;
  BUS_CD_C_FUN.Data :=
  BUS_CD_C_FUN.DataRequest(VarArrayOf([0, xFuncionario]));

  if BUS_CD_C_FUN.FieldByName('vnd_interno_externo').AsInteger = 1 then // Externo
     begin
       lboxVendSel.Items.Add(StrZero(BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                              ' - ' + BUS_CD_C_FUN.FieldByName('NOME').AsString);
       tsVendedor.TabVisible := false;

       {deInicial.Date    := date - 120;
       deInicial.Enabled := false;
       deFinal.Date      := date;
       deFinal.Enabled   := false; }

       // 10/06/20 por Maxsuel Victor
       // Deixei somente para esse relatório para que eu não tivesse o trabalho de tirar os totais dos outros
       //  relatórios

       // Comentado por Maxsuel Victor, 08/10/2024
       // lbxRelatorios.ItemIndex := 1;
       // lbxRelatoriosClick(self);
       //  lbxRelatorios.Enabled := false;

       //  chbExibirItens.Visible := false;
       //  chbExibirTit.Visible   := false;
     end;

 // Condição de Pagamento -------------------------------------------------------
 dmGeral.BUS_CD_C_CPG.Close;
 dmGeral.BUS_CD_C_CPG.Data :=
 dmGeral.BUS_CD_C_CPG.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       dmGeral.BUS_CD_C_CPG.First;

       while not dmGeral.BUS_CD_C_CPG.eof do
          begin
            lboxCondicaoPagamentoDisponivel.Items.Add(StrZero(dmGeral.BUS_CD_C_CPG.FieldByName('ID_CONDICAO_PAG').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_CPG.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_CPG.Next;
          end;
     end;

 dmGeral.BUS_CD_C_CPG.IndexFieldNames := 'ID_CONDICAO_PAG';

 dmGeral.BUS_CD_C_CPG.Close;

end;

procedure TFAT_FM_R_PED.lboxCondicaoPagamentoDisponivelDblClick(
  Sender: TObject);
begin
  inherited;
  if lboxCondicaoPagamentoDisponivel.ItemIndex > - 1 then
     begin
       lboxCondicaoPagamentoSelecionada.Items.Add(lboxCondicaoPagamentoDisponivel.Items[lboxCondicaoPagamentoDisponivel.ItemIndex]);
       lboxCondicaoPagamentoDisponivel.Items.Delete(lboxCondicaoPagamentoDisponivel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PED.lboxCondicaoPagamentoSelecionadaDblClick(
  Sender: TObject);
begin
  inherited;
  if lboxCondicaoPagamentoSelecionada.ItemIndex > -1 then
     begin
       lboxCondicaoPagamentoDisponivel.Items.Add(lboxCondicaoPagamentoSelecionada.Items[lboxCondicaoPagamentoSelecionada.ItemIndex]);
       lboxCondicaoPagamentoSelecionada.Items.Delete(lboxCondicaoPagamentoSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PED.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PED.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PED.lboxItemSelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if key = vk_f3 then
     begin
        PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
        PSQ_FM_X_ITE.ShowModal;
        if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxItemSel,6,StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger,6,0)) then
                begin
                  lboxItemSel.Items.Add(StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger,6,0) +
                                             ' - ' + PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_ITE.Free;
     end;
end;

procedure TFAT_FM_R_PED.lboxSituacaoDisponivelDblClick(Sender: TObject);
begin
  inherited;
  if lboxSituacaoDisponivel.ItemIndex > - 1 then
     begin
       if chkFaturado.Checked then
          chkFaturado.Checked := false;


       lboxSituacaoSelecionada.Items.Add(lboxSituacaoDisponivel.Items[lboxSituacaoDisponivel.ItemIndex]);
       lboxSituacaoDisponivel.Items.Delete(lboxSituacaoDisponivel.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PED.lboxSituacaoSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxSituacaoSelecionada.ItemIndex > -1 then
     begin
       lboxSituacaoDisponivel.Items.Add(lboxSituacaoSelecionada.Items[lboxSituacaoSelecionada.ItemIndex]);
       lboxSituacaoSelecionada.Items.Delete(lboxSituacaoSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PED.lboxVendSelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxVendSel,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger,6,0)) then
                begin
                  lboxVendSel.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TFAT_FM_R_PED.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
  chbExibirPed.Visible := true;
  chbExibirItens.Visible := true;
  chbExibirTit.Visible := true;
  tsItem.TabVisible := true;


  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Por Item') then
    begin
     chbExibirItens.Visible := false;
     chbExibirTit.Visible := false;
    end
  else
    begin
      chbExibirPed.Visible := false;
      tsItem.TabVisible := false;
    end;

end;

procedure TFAT_FM_R_PED.MenuItem1Click(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxSituacaoDisponivel.ClearSelection;
  if lboxSituacaoDisponivel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSituacaoDisponivel.Items.Count > 0 then
     begin
       for i := 0 to lboxSituacaoDisponivel.Items.Count - 1 do
           begin
             lboxSituacaoSelecionada.Items.Add(lboxSituacaoDisponivel.Items[i]);
             lboxSituacaoDisponivel.Items.Delete(lboxSituacaoDisponivel.ItemIndex);
           end;
       lboxSituacaoDisponivel.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PED.MenuItem2Click(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxSituacaoSelecionada.ClearSelection;

  if lboxSituacaoSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSituacaoSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxSituacaoSelecionada.Items.Count - 1 do
           begin
             lboxSituacaoDisponivel.Items.Add(lboxSituacaoSelecionada.Items[i]);
             lboxSituacaoSelecionada.Items.Delete(lboxSituacaoSelecionada.ItemIndex);
           end;
       lboxSituacaoSelecionada.Items.Clear;
     end;
end;

procedure TFAT_FM_R_PED.menuItemEmpresasClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxEmpresas.ClearSelection;

  if lboxEmpresas.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresas.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresas.Items.Count - 1 do
           begin
             lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[i]);
             lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
           end;
       lboxEmpresas.Items.Clear;
     end;
end;


procedure TFAT_FM_R_PED.BusFuncionario(index:integer; filtro: string);
begin
  BUS_CD_C_FUN.Close;
  BUS_CD_C_FUN.Data :=
  BUS_CD_C_FUN.DataRequest(VarArrayOf([index, filtro]));
end;


end.
