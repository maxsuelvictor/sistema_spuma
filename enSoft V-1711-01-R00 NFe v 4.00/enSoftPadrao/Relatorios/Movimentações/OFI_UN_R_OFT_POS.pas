unit OFI_UN_R_OFT_POS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, vcl.Wwdbedit, Vcl.Mask,
  JvExMask, JvToolEdit, vcl.Wwdotdot, vcl.Wwdbcomb, Vcl.ComCtrls, Vcl.Menus,
  frxClass, frxDBSet, frxExportPDF, frxExportXLS, Data.DB, Datasnap.DBClient;

type
  TOFI_FM_R_OFT_POS = class(TPAD_FM_X_REL)
    lblPeriodo: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    Label4: TLabel;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsFuncionario: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxFuncionario: TListBox;
    tsVeiculo: TTabSheet;
    lblVeiculoDisponivel: TLabel;
    lboxVeiculoDisponivel: TListBox;
    tsCondPag: TTabSheet;
    lblCondPagDisp: TLabel;
    lblCondpagSel: TLabel;
    lboxCondSelecionado: TListBox;
    lboxCondDisponivel: TListBox;
    tsAnalista: TTabSheet;
    lblAnalistaDisponivel: TLabel;
    lboxAnalista: TListBox;
    tsTipoOrdemServ: TTabSheet;
    lblTipoOrdServDisponiveis: TLabel;
    lblTipoOrdServSelecionado: TLabel;
    lboxTipoOrdServSelecionado: TListBox;
    lboxTipoOrdServDisponivel: TListBox;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmExcluirFuncionario: TPopupMenu;
    btnRemoverRegistroFuncionario: TMenuItem;
    pmSelTipoOrdServ: TPopupMenu;
    MenuItemTipoOrdServ: TMenuItem;
    pmRemoverTodosTipoOrdServ: TPopupMenu;
    btnRemoverTipoOrdServ: TMenuItem;
    pmSelCondPag: TPopupMenu;
    MenuItemCondPag: TMenuItem;
    pmRemoverTodosCondPag: TPopupMenu;
    btnRemoverTodasCondPag: TMenuItem;
    pmExcluirVeiculos: TPopupMenu;
    btnRemoverVeiculo: TMenuItem;
    lblAte: TLabel;
    cbbSituacao: TComboBox;
    OFI_FR_R_OFV_POS_01: TfrxReport;
    OFI_XL_R_OFV_POS: TfrxXLSExport;
    OFI_PD_R_OFV_POS: TfrxPDFExport;
    OFI_DB_R_OFV_POS_001: TfrxDBDataset;
    OFI_DB_R_OFV_POS_001_SER: TfrxDBDataset;
    OFI_DB_R_OFV_POS_001_PRO: TfrxDBDataset;
    OFI_DB_R_OFV_POS_002: TfrxDBDataset;
    OFI_FR_R_OFV_POS_02: TfrxReport;
    OFI_FR_R_OFV_POS_03: TfrxReport;
    OFI_FR_R_OFV_POS_04: TfrxReport;
    OFI_FR_R_OFV_POS_05: TfrxReport;
    OFI_FR_R_OFV_POS_07: TfrxReport;
    OFI_FR_R_OFV_POS_08: TfrxReport;
    OFI_FR_R_OFV_POS_09: TfrxReport;
    OFI_FR_R_OFV_POS_10: TfrxReport;
    pnlFaixaOrdem: TPanel;
    txtOrdFin: TEdit;
    txtOrdIni: TEdit;
    Label3: TLabel;
    Label6: TLabel;
    cbbFiltroTipo: TComboBox;
    Label7: TLabel;
    pmExcluirAnalista: TPopupMenu;
    btnRemoverAnalista: TMenuItem;
    OFI_CD_R_OFV_POS_001: TClientDataSet;
    OFI_CD_R_OFV_POS_001id_ordem: TIntegerField;
    OFI_CD_R_OFV_POS_001id_empresa: TIntegerField;
    OFI_CD_R_OFV_POS_001dta_emissao: TDateField;
    OFI_CD_R_OFV_POS_001dta_entrega: TDateField;
    OFI_CD_R_OFV_POS_001id_cliente: TIntegerField;
    OFI_CD_R_OFV_POS_001id_veiculo: TIntegerField;
    OFI_CD_R_OFV_POS_001km_atual: TIntegerField;
    OFI_CD_R_OFV_POS_001tanque_combus: TIntegerField;
    OFI_CD_R_OFV_POS_001id_forma_pag: TIntegerField;
    OFI_CD_R_OFV_POS_001id_condicao_pag: TIntegerField;
    OFI_CD_R_OFV_POS_001id_analista: TIntegerField;
    OFI_CD_R_OFV_POS_001id_orcamento: TIntegerField;
    OFI_CD_R_OFV_POS_001obs_reclamacao: TWideStringField;
    OFI_CD_R_OFV_POS_001obs_problema: TWideStringField;
    OFI_CD_R_OFV_POS_001status: TIntegerField;
    OFI_CD_R_OFV_POS_001vlr_produtos: TFMTBCDField;
    OFI_CD_R_OFV_POS_001vlr_desc_produtos: TFMTBCDField;
    OFI_CD_R_OFV_POS_001per_desc_produtos: TFloatField;
    OFI_CD_R_OFV_POS_001vlr_prod_liquido: TFMTBCDField;
    OFI_CD_R_OFV_POS_001vlr_serv_bruto: TFMTBCDField;
    OFI_CD_R_OFV_POS_001vlr_desc_servicos: TFMTBCDField;
    OFI_CD_R_OFV_POS_001per_desc_servicos: TFloatField;
    OFI_CD_R_OFV_POS_001vlr_ser_liquido: TFMTBCDField;
    OFI_CD_R_OFV_POS_001vlr_terceiro: TFMTBCDField;
    OFI_CD_R_OFV_POS_001vlr_desc_terceiro: TFMTBCDField;
    OFI_CD_R_OFV_POS_001per_desc_terceiro: TFloatField;
    OFI_CD_R_OFV_POS_001vlr_terc_liquido: TFMTBCDField;
    OFI_CD_R_OFV_POS_001vlr_despesas: TFMTBCDField;
    OFI_CD_R_OFV_POS_001vlr_credito: TFMTBCDField;
    OFI_CD_R_OFV_POS_001vlr_total: TFMTBCDField;
    OFI_CD_R_OFV_POS_001id_tipo_os: TIntegerField;
    OFI_CD_R_OFV_POS_001id_responsavel: TIntegerField;
    OFI_CD_R_OFV_POS_001can_usuario: TIntegerField;
    OFI_CD_R_OFV_POS_001can_data: TDateField;
    OFI_CD_R_OFV_POS_001can_motivo: TWideStringField;
    OFI_CD_R_OFV_POS_001can_hora: TTimeField;
    OFI_CD_R_OFV_POS_001rea_usuario: TIntegerField;
    OFI_CD_R_OFV_POS_001rea_data: TDateField;
    OFI_CD_R_OFV_POS_001rea_hora: TTimeField;
    OFI_CD_R_OFV_POS_001rea_motivo: TWideStringField;
    OFI_CD_R_OFV_POS_001dta_fechamento: TDateField;
    OFI_CD_R_OFV_POS_001id_almoxarifado: TIntegerField;
    OFI_CD_R_OFV_POS_001vlr_cred_produtos: TFMTBCDField;
    OFI_CD_R_OFV_POS_001vlr_cred_servicos: TFMTBCDField;
    OFI_CD_R_OFV_POS_001int_cpfcnpj: TWideStringField;
    OFI_CD_R_OFV_POS_001int_pessoacli: TIntegerField;
    OFI_CD_R_OFV_POS_001int_nomecli: TWideStringField;
    OFI_CD_R_OFV_POS_001int_telfix: TWideStringField;
    OFI_CD_R_OFV_POS_001int_telmov: TWideStringField;
    OFI_CD_R_OFV_POS_001int_nomecom: TWideMemoField;
    OFI_CD_R_OFV_POS_001int_placa: TWideStringField;
    OFI_CD_R_OFV_POS_001int_nomevei: TWideStringField;
    OFI_CD_R_OFV_POS_001int_nometio: TWideStringField;
    OFI_CD_R_OFV_POS_001int_ufcli: TWideStringField;
    OFI_CD_R_OFV_POS_001OFI_SQ_R_OFV_POS_001_SER: TDataSetField;
    OFI_CD_R_OFV_POS_001OFI_SQ_R_OFV_POS_001_PRO: TDataSetField;
    OFI_CD_R_OFV_POS_001int_orvsituacao: TWideMemoField;
    OFI_CD_R_OFV_POS_001int_nomeana: TWideStringField;
    OFI_CD_R_OFV_POS_001int_nomecpg: TWideStringField;
    OFI_CD_R_OFV_POS_001_SER: TClientDataSet;
    OFI_CD_R_OFV_POS_001_SERid_ordem: TIntegerField;
    OFI_CD_R_OFV_POS_001_SERid_sequencia: TIntegerField;
    OFI_CD_R_OFV_POS_001_SERid_item: TIntegerField;
    OFI_CD_R_OFV_POS_001_SERid_busca_item: TWideStringField;
    OFI_CD_R_OFV_POS_001_SERqtde: TFloatField;
    OFI_CD_R_OFV_POS_001_SERvlr_unitario: TFMTBCDField;
    OFI_CD_R_OFV_POS_001_SERvlr_bruto: TFMTBCDField;
    OFI_CD_R_OFV_POS_001_SERper_desconto: TFloatField;
    OFI_CD_R_OFV_POS_001_SERvlr_desconto: TFMTBCDField;
    OFI_CD_R_OFV_POS_001_SERvlr_liquido: TFMTBCDField;
    OFI_CD_R_OFV_POS_001_SERid_mecanico: TIntegerField;
    OFI_CD_R_OFV_POS_001_SERid_terceiro: TIntegerField;
    OFI_CD_R_OFV_POS_001_SERid_responsavel: TIntegerField;
    OFI_CD_R_OFV_POS_001_SERcancelada: TBooleanField;
    OFI_CD_R_OFV_POS_001_SERvlr_unitario_orig: TFMTBCDField;
    OFI_CD_R_OFV_POS_001_SERid_sequencia_ite_ocv: TIntegerField;
    OFI_CD_R_OFV_POS_001_SERid_requisicao: TIntegerField;
    OFI_CD_R_OFV_POS_001_SERcan_usuario: TIntegerField;
    OFI_CD_R_OFV_POS_001_SERcan_data: TDateField;
    OFI_CD_R_OFV_POS_001_SERcan_hora: TTimeField;
    OFI_CD_R_OFV_POS_001_SERcan_motivo: TWideStringField;
    OFI_CD_R_OFV_POS_001_SERdta_requisicao: TDateField;
    OFI_CD_R_OFV_POS_001_SERid_cor: TIntegerField;
    OFI_CD_R_OFV_POS_001_SERid_tamanho: TIntegerField;
    OFI_CD_R_OFV_POS_001_SERint_nomeite: TWideStringField;
    OFI_CD_R_OFV_POS_001_SERint_nomeund: TWideStringField;
    OFI_CD_R_OFV_POS_001_SERint_nomeapl: TWideStringField;
    OFI_CD_R_OFV_POS_001_SERint_nomeref: TWideStringField;
    OFI_CD_R_OFV_POS_001_SERint_nomemec: TWideStringField;
    OFI_CD_R_OFV_POS_001_SERint_nometer: TWideStringField;
    OFI_CD_R_OFV_POS_001_SERint_tipoitem: TWideStringField;
    OFI_CD_R_OFV_POS_001_SERint_serterceiro: TBooleanField;
    OFI_CD_R_OFV_POS_001_PRO: TClientDataSet;
    OFI_CD_R_OFV_POS_001_PROid_ordem: TIntegerField;
    OFI_CD_R_OFV_POS_001_PROid_sequencia: TIntegerField;
    OFI_CD_R_OFV_POS_001_PROid_item: TIntegerField;
    OFI_CD_R_OFV_POS_001_PROid_busca_item: TWideStringField;
    OFI_CD_R_OFV_POS_001_PROqtde: TFloatField;
    OFI_CD_R_OFV_POS_001_PROvlr_unitario: TFMTBCDField;
    OFI_CD_R_OFV_POS_001_PROvlr_bruto: TFMTBCDField;
    OFI_CD_R_OFV_POS_001_PROper_desconto: TFloatField;
    OFI_CD_R_OFV_POS_001_PROvlr_desconto: TFMTBCDField;
    OFI_CD_R_OFV_POS_001_PROvlr_liquido: TFMTBCDField;
    OFI_CD_R_OFV_POS_001_PROid_mecanico: TIntegerField;
    OFI_CD_R_OFV_POS_001_PROid_terceiro: TIntegerField;
    OFI_CD_R_OFV_POS_001_PROid_responsavel: TIntegerField;
    OFI_CD_R_OFV_POS_001_PROcancelada: TBooleanField;
    OFI_CD_R_OFV_POS_001_PROvlr_unitario_orig: TFMTBCDField;
    OFI_CD_R_OFV_POS_001_PROid_sequencia_ite_ocv: TIntegerField;
    OFI_CD_R_OFV_POS_001_PROid_requisicao: TIntegerField;
    OFI_CD_R_OFV_POS_001_PROcan_usuario: TIntegerField;
    OFI_CD_R_OFV_POS_001_PROcan_data: TDateField;
    OFI_CD_R_OFV_POS_001_PROcan_hora: TTimeField;
    OFI_CD_R_OFV_POS_001_PROcan_motivo: TWideStringField;
    OFI_CD_R_OFV_POS_001_PROdta_requisicao: TDateField;
    OFI_CD_R_OFV_POS_001_PROid_cor: TIntegerField;
    OFI_CD_R_OFV_POS_001_PROid_tamanho: TIntegerField;
    OFI_CD_R_OFV_POS_001_PROint_nomeite: TWideStringField;
    OFI_CD_R_OFV_POS_001_PROint_nomeund: TWideStringField;
    OFI_CD_R_OFV_POS_001_PROint_nomeapl: TWideStringField;
    OFI_CD_R_OFV_POS_001_PROint_nomeref: TWideStringField;
    OFI_CD_R_OFV_POS_001_PROint_nomemec: TWideStringField;
    OFI_CD_R_OFV_POS_001_PROint_nometer: TWideStringField;
    OFI_CD_R_OFV_POS_001_PROint_tipoitem: TWideStringField;
    OFI_CD_R_OFV_POS_002: TClientDataSet;
    OFI_CD_R_OFV_POS_002id_ordem: TIntegerField;
    OFI_CD_R_OFV_POS_002dta_emissao: TDateField;
    OFI_CD_R_OFV_POS_002id_cliente: TIntegerField;
    OFI_CD_R_OFV_POS_002int_nomecli: TWideStringField;
    OFI_CD_R_OFV_POS_002int_nomeana: TWideStringField;
    OFI_CD_R_OFV_POS_002int_nomecpg: TWideStringField;
    OFI_CD_R_OFV_POS_002id_veiculo: TIntegerField;
    OFI_CD_R_OFV_POS_002int_placa: TWideStringField;
    OFI_CD_R_OFV_POS_002int_nomevei: TWideStringField;
    OFI_CD_R_OFV_POS_002int_nometio: TWideStringField;
    OFI_CD_R_OFV_POS_002int_orvsituacao: TWideStringField;
    OFI_CD_R_OFV_POS_002dta_entrega: TDateField;
    OFI_CD_R_OFV_POS_002can_data: TDateField;
    OFI_CD_R_OFV_POS_002can_motivo: TWideStringField;
    OFI_CD_R_OFV_POS_002vlr_despesas: TFMTBCDField;
    OFI_CD_R_OFV_POS_002dta_emissao_1: TDateField;
    OFI_CD_R_OFV_POS_002int_atraso: TIntegerField;
    OFI_CD_R_OFV_POS_002vlr_liquido_ser: TFMTBCDField;
    OFI_CD_R_OFV_POS_002vlr_liquido_pro: TFMTBCDField;
    OFI_CD_R_OFV_POS_002vlr_total_sem_desp: TFMTBCDField;
    OFI_CD_R_OFV_POS_002vlr_total_com_desp: TFMTBCDField;
    OFI_CD_R_OFV_POS_002id_analista: TIntegerField;
    OFI_CD_R_OFV_POS_003: TClientDataSet;
    WideStringField1: TWideStringField;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    IntegerField2: TIntegerField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    IntegerField3: TIntegerField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    IntegerField4: TIntegerField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    DateField2: TDateField;
    DateField3: TDateField;
    WideStringField9: TWideStringField;
    FMTBCDField1: TFMTBCDField;
    DateField4: TDateField;
    IntegerField5: TIntegerField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    FMTBCDField4: TFMTBCDField;
    FMTBCDField5: TFMTBCDField;
    IntegerField6: TIntegerField;
    OFI_DB_R_OFV_POS_003: TfrxDBDataset;
    cbTipoPeriodo: TComboBox;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxFuncionarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure lboxCondDisponivelDblClick(Sender: TObject);
    procedure lboxCondSelecionadoDblClick(Sender: TObject);

    procedure lboxTipoOrdServDisponivelDblClick(Sender: TObject);
    procedure lboxTipoOrdServSelecionadoClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnRemoverRegistroFuncionarioClick(Sender: TObject);
    procedure MenuItemVeiculoClick(Sender: TObject);
    procedure btnRemoverVeiculoClick(Sender: TObject);
    procedure MenuItemCondPagClick(Sender: TObject);
    procedure btnRemoverTodasCondPagClick(Sender: TObject);
    procedure MenuItemTipoOrdServClick(Sender: TObject);
    procedure btnRemoverTipoOrdServClick(Sender: TObject);
    procedure cbbFiltroTipoChange(Sender: TObject);
     procedure btnImprimirClick(Sender: TObject);
    procedure btnRemoverAnalistaClick(Sender: TObject);
    procedure lboxAnalistaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxVeiculoDisponivelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure OFI_FR_R_OFV_POS_05BeforePrint(Sender: TfrxReportComponent);
    procedure OFI_FR_R_OFV_POS_08BeforePrint(Sender: TfrxReportComponent);
    procedure OFI_FR_R_OFV_POS_10BeforePrint(Sender: TfrxReportComponent);
    procedure OFI_FR_R_OFV_POS_09BeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function TestarCampos:Boolean;
    var
      xCondEmpresa,xCondFuncionario,xCondVeiculo,xCondPag,xCondAnalista,xCondTipoOrdem,xOpcoes:string;
  public

    { Public declarations }

  end;

var
  OFI_FM_R_OFT_POS: TOFI_FM_R_OFT_POS;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_FUN, enConstantes, PSQ_UN_X_VEI;

function TOFI_FM_R_OFT_POS.TestarCampos;
var
  mens: String;
begin
  result := True;
  mens := '';
  if (cbbFiltroTipo.ItemIndex = 0) then
    begin
      if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
        begin
          mens := mens +  '.O período deve ser preenchido.' + #13;
        end
      else
        begin
          if (deInicial.Date >  deFinal.Date) then
            begin
              mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
            end;
        end;
    end;
   if (cbbFiltroTipo.ItemIndex = 1) then
     begin
       if ((txtOrdIni.Text = '') or (txtOrdFin.Text = '')) then
        begin
          mens := mens +  '.Faixa de ordem de serviço deve ser preenchido.' + #13;
        end;
     end;
    if lboxEmpresaSelecionada.Count = 0 then
      begin
        mens := mens +  '.É necessário selecionar pelos menos 1 empresa' + #13;
      end;

    if trim(mens) <> '' then
     begin
       ShowMessage('Atenção!' + #13 + mens);
       Result := False;
       exit;
     end;

end;


procedure TOFI_FM_R_OFT_POS.PreencherCondicao;
var
  i: integer;
  opcoesEmpresa,opcoesFuncionario,opcoesVeiculo,
  opcoesCondPag,opcoesAnalista, opcoesTipoOrdem:string;
begin
  xOpcoes :='';
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

   // Funcionario --------------------------------------------------------------
  xCondFuncionario := '';
  if lboxFuncionario.Count > 0 then
     begin
       for i := 0 to lboxFuncionario.Count - 1 do
          begin
            if xCondFuncionario <> '' then
               begin
                 xCondFuncionario :=
                 xCondFuncionario+ ',' +''''+trim(copy(lboxFuncionario.Items[i],1,6))+'''';
                 opcoesFuncionario :=
                 opcoesFuncionario +'                    '+lboxFuncionario.Items[i] + #13+#10;
               end;
            if xCondFuncionario = '' then
               begin
                 xCondFuncionario :=
                 xCondFuncionario +''''+trim(copy(lboxFuncionario.Items[i],1,6))+'''';
                 opcoesFuncionario :=
                 opcoesFuncionario + lboxFuncionario.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
          opcoesFuncionario := 'Todos';
      end;

   // Veículo --------------------------------------------------------------
  xCondVeiculo := '';
  if lboxVeiculoDisponivel.Count > 0 then
     begin
       for i := 0 to lboxVeiculoDisponivel.Count - 1 do
          begin
            if xCondVeiculo <> '' then
               begin
                 xCondVeiculo :=
                 xCondVeiculo+ ',' +''''+trim(copy(lboxVeiculoDisponivel.Items[i],1,9))+'''';
                 opcoesVeiculo :=
                 opcoesVeiculo +'                    '+lboxVeiculoDisponivel.Items[i] + #13+#10;
               end;
            if xCondVeiculo = '' then
               begin
                 xCondVeiculo :=
                 xCondVeiculo +''''+trim(copy(lboxVeiculoDisponivel.Items[i],1,9))+'''';
                 opcoesVeiculo :=
                 opcoesVeiculo + lboxVeiculoDisponivel.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
          opcoesVeiculo := 'Todos';
      end;

  // Cond de Pagamento ----------------------------------------------------------------
  xCondPag := '';
  if lboxCondSelecionado.Count > 0 then
  begin
    if lboxCondDisponivel.Count <> 0 then
     begin
       for i := 0 to lboxCondSelecionado.Count - 1 do
          begin
            if xCondPag <> '' then
               begin
                 xCondPag :=
                 xCondPag + ',' +''''+trim(copy(lboxCondSelecionado.Items[i],1,3))+'''';
                 opcoesCondPag :=
                 opcoesCondPag +'                    '+lboxCondSelecionado.Items[i] + #13+#10;
               end;
            if xCondPag = '' then
               begin
                 xCondPag :=
                 xCondPag +''''+trim(copy(lboxCondSelecionado.Items[i],1,3))+'''';
                 opcoesCondPag :=
                 opcoesCondPag + lboxCondSelecionado.Items[i] + #13+#10;
               end;
          end;
     end
      else
        begin
          opcoesCondPag:= 'Todos';
        End;
  end
   else
     begin
      opcoesCondPag:= 'Todos';
     end;


   // Analista ----------------------------------------------------------------
  xCondAnalista := '';
  if lboxAnalista.Count > 0 then
     begin
       for i := 0 to lboxAnalista.Count - 1 do
          begin
            if xCondAnalista <> '' then
               begin
                 xCondAnalista :=
                 xCondAnalista+ ',' +''''+trim(copy(lboxAnalista.Items[i],1,6))+'''';
                 opcoesAnalista :=
                 opcoesAnalista +'                    '+lboxAnalista.Items[i] + #13+#10;
               end;
            if xCondAnalista = '' then
               begin
                 xCondAnalista :=
                 xCondAnalista +''''+trim(copy(lboxAnalista.Items[i],1,6))+'''';
                 opcoesAnalista :=
                 opcoesAnalista + lboxAnalista.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
          opcoesAnalista := 'Todos';
      end;


  // Tipo Ordem Serviço ----------------------------------------------------------------
  xCondTipoOrdem := '';
  if lboxTipoOrdServSelecionado.Count > 0 then
  begin
    if lboxTipoOrdServDisponivel.Count <> 0 then
     begin
       for i := 0 to lboxTipoOrdServSelecionado.Count - 1 do
          begin
            if xCondTipoOrdem <> '' then
               begin
                 xCondTipoOrdem :=
                 xCondTipoOrdem + ',' +''''+trim(copy(lboxTipoOrdServSelecionado.Items[i],1,3))+'''';
                 opcoesTipoOrdem :=
                 opcoesTipoOrdem +'                    '+lboxTipoOrdServSelecionado.Items[i] + #13+#10;
               end;
            if xCondTipoOrdem = '' then
               begin
                 xCondTipoOrdem :=
                 xCondTipoOrdem +''''+trim(copy(lboxTipoOrdServSelecionado.Items[i],1,3))+'''';
                 opcoesTipoOrdem :=
                 opcoesTipoOrdem + lboxTipoOrdServSelecionado.Items[i] + #13+#10;
               end;
          end;
     end
      else
        begin
          opcoesTipoOrdem := 'Todos';
        End;
  end
   else
     begin
      opcoesTipoOrdem := 'Todos';
     end;

   // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   if (cbbFiltroTipo.ItemIndex = 0) then
     begin
       xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
     end;
   if (cbbFiltroTipo.ItemIndex = 1) then
     begin
       xOpcoes := xOpcoes + 'Ordem de Serviço..: ' + txtOrdIni.Text +' à '  + txtOrdFin.Text + #13+#10;
     end;
   xOpcoes := xOpcoes + 'Situação..........: ' + cbbSituacao.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Funcionário.......: ' + opcoesFuncionario+#13+#10;
   xOpcoes := xOpcoes + 'Veículo...........: ' + opcoesVeiculo+#13+#10;
   xOpcoes := xOpcoes + 'Cond. Pagamento...: ' + opcoesCondPag+#13+#10;
   xOpcoes := xOpcoes + 'Analista..........: ' + opcoesAnalista+#13+#10;
   xOpcoes := xOpcoes + 'Tipo Ordem Serviço: ' + opcoesTipoOrdem+#13+#10;

end;


procedure TOFI_FM_R_OFT_POS.ExibirRel;
var
  rTipoData, rDtaIni, rDtaFin, rOrdIni,rOrdFin,rSituacao, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   rDtaIni := '';
   if (deInicial.Text <> '  /  /    ') then
     begin
      rDtaIni := deInicial.Text;
     end;
   rDtaFin := '';
   if (deFinal.Text <> '  /  /    ') then
     begin
      rDtaFin := deFinal.Text;
     end;

   rOrdIni := txtOrdIni.Text;
   rOrdFin := txtOrdFin.Text;
   rSituacao := '';
   if (cbbSituacao.ItemIndex <>5) then
     begin
       rSituacao := cbbSituacao.ItemIndex.ToString(cbbSituacao.ItemIndex);
     end;

   PreencherCondicao;

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Detalhado') then
      begin
        OFI_CD_R_OFV_POS_001.Active:= False;
        OFI_CD_R_OFV_POS_001.Close;
        OFI_CD_R_OFV_POS_001.Data :=
                OFI_CD_R_OFV_POS_001.DataRequest(
                      VarArrayOf([rDtaIni,rDtaFin,rOrdIni,rOrdFin,rSituacao,xCondEmpresa,xCondFuncionario,
                                  xCondVeiculo,xCondPag,xCondAnalista,xCondTipoOrdem,cbTipoPeriodo.ItemIndex,'2','','']));

        if not OFI_CD_R_OFV_POS_001.IsEmpty then
           begin
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
                begin
                   LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_POS_01.FindObject('imgEmpresa1'));
                   if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;

             dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_POS_01.Name,xCodLme,xRevLme,nil);
             OFI_FR_R_OFV_POS_01.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             OFI_FR_R_OFV_POS_01.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
             OFI_FR_R_OFV_POS_01.Variables['Opcoes'] := QuotedStr(xOpcoes);
             OFI_FR_R_OFV_POS_01.PrepareReport();
             OFI_FR_R_OFV_POS_01.ShowReport();
           end
        else
           begin
             ShowMessage('Nenhum registro foi encontrado.');
           end;
      end
   else
      begin
         if ((lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Por Mecânico')) or
            ((lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '08 - Faturamento por Mecânico')) then
             begin
               OFI_CD_R_OFV_POS_003.Active:= False;
               OFI_CD_R_OFV_POS_003.Close;
               OFI_CD_R_OFV_POS_003.Data :=
                      OFI_CD_R_OFV_POS_003.DataRequest(
                            VarArrayOf([rDtaIni,rDtaFin,rOrdIni,rOrdFin,rSituacao,xCondEmpresa,xCondFuncionario,
                                        xCondVeiculo,xCondPag,xCondAnalista,xCondTipoOrdem,cbTipoPeriodo.ItemIndex,'2','','']));
               if OFI_CD_R_OFV_POS_003.IsEmpty then
                  begin
                    ShowMessage('Nenhum registro foi encontrado.');
                    OFI_CD_R_OFV_POS_003.close;
                    exit;
                  end;

               if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Por Mecânico') then
                   begin
                     OFI_CD_R_OFV_POS_003.IndexFieldNames := 'ID_MECANICO;DTA_EMISSAO';
                     if FileExists(PathImg) then
                       begin
                         LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_POS_05.FindObject('imgEmpresa5'));
                         if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                       end;
                     dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_POS_05.Name,xCodLme,xRevLme,nil);
                     OFI_FR_R_OFV_POS_05.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                     OFI_FR_R_OFV_POS_05.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                     OFI_FR_R_OFV_POS_05.Variables['Opcoes'] := QuotedStr(xOpcoes);
                     OFI_FR_R_OFV_POS_05.PrepareReport();
                     OFI_FR_R_OFV_POS_05.ShowReport();
                   end;

               if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '08 - Faturamento por Mecânico') then
                   begin
                     OFI_CD_R_OFV_POS_003.IndexFieldNames := 'ID_MECANICO;DTA_EMISSAO';
                     if FileExists(PathImg) then
                       begin
                         LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_POS_09.FindObject('imgEmpresa9'));
                         if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                       end;
                     dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_POS_09.Name,xCodLme,xRevLme,nil);
                     OFI_FR_R_OFV_POS_09.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                     OFI_FR_R_OFV_POS_09.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                     OFI_FR_R_OFV_POS_09.Variables['Opcoes'] := QuotedStr(xOpcoes);
                     OFI_FR_R_OFV_POS_09.PrepareReport();
                     OFI_FR_R_OFV_POS_09.ShowReport();
                   end;
             end
        else
          begin
              OFI_CD_R_OFV_POS_002.Active:= False;
              OFI_CD_R_OFV_POS_002.Close;
              OFI_CD_R_OFV_POS_002.Data :=
                      OFI_CD_R_OFV_POS_002.DataRequest(
                            VarArrayOf([rDtaIni,rDtaFin,rOrdIni,rOrdFin,rSituacao,xCondEmpresa,xCondFuncionario,
                                        xCondVeiculo,xCondPag,xCondAnalista,xCondTipoOrdem,lbxRelatorios.ItemIndex,cbTipoPeriodo.ItemIndex,'2','','']));
              if not OFI_CD_R_OFV_POS_002.IsEmpty then
                 begin
                   PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
                   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Resumido') then
                     begin
                         OFI_CD_R_OFV_POS_002.IndexFieldNames := 'int_orvsituacao;DTA_EMISSAO';
                         if FileExists(PathImg) then
                           begin
                             LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_POS_02.FindObject('imgEmpresa2'));
                             if Assigned(LogoEmpresa) then
                               LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;
                         dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_POS_02.Name,xCodLme,xRevLme,nil);
                         OFI_FR_R_OFV_POS_02.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                         OFI_FR_R_OFV_POS_02.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                         OFI_FR_R_OFV_POS_02.Variables['Opcoes'] := QuotedStr(xOpcoes);
                         OFI_FR_R_OFV_POS_02.PrepareReport();
                         OFI_FR_R_OFV_POS_02.ShowReport();
                     end;
                   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Trator') then
                     begin
                          OFI_CD_R_OFV_POS_002.IndexFieldNames := 'ID_VEICULO;DTA_EMISSAO';
                         if FileExists(PathImg) then
                           begin
                             LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_POS_03.FindObject('imgEmpresa3'));
                             if Assigned(LogoEmpresa) then
                               LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;
                         dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_POS_03.Name,xCodLme,xRevLme,nil);
                         OFI_FR_R_OFV_POS_03.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                         OFI_FR_R_OFV_POS_03.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                         OFI_FR_R_OFV_POS_03.Variables['Opcoes'] := QuotedStr(xOpcoes);
                         OFI_FR_R_OFV_POS_03.PrepareReport();
                         OFI_FR_R_OFV_POS_03.ShowReport();
                     end;
                   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04 - Por Cliente') then
                     begin
                          OFI_CD_R_OFV_POS_002.IndexFieldNames := 'ID_CLIENTE;DTA_EMISSAO';
                         if FileExists(PathImg) then
                           begin
                             LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_POS_04.FindObject('imgEmpresa4'));
                             if Assigned(LogoEmpresa) then
                               LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;
                         dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_POS_04.Name,xCodLme,xRevLme,nil);
                         OFI_FR_R_OFV_POS_04.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                         OFI_FR_R_OFV_POS_04.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                         OFI_FR_R_OFV_POS_04.Variables['Opcoes'] := QuotedStr(xOpcoes);
                         OFI_FR_R_OFV_POS_04.PrepareReport();
                         OFI_FR_R_OFV_POS_04.ShowReport();
                     end;


                   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06 - Trator com entrega atrasada') then
                     begin
                         OFI_CD_R_OFV_POS_002.IndexFieldNames := 'DTA_EMISSAO';
                         if FileExists(PathImg) then
                           begin
                             LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_POS_07.FindObject('imgEmpresa7'));
                             if Assigned(LogoEmpresa) then
                               LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;
                         dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_POS_07.Name,xCodLme,xRevLme,nil);
                         OFI_FR_R_OFV_POS_07.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                         OFI_FR_R_OFV_POS_07.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                         OFI_FR_R_OFV_POS_07.Variables['Opcoes'] := QuotedStr(xOpcoes);
                         OFI_FR_R_OFV_POS_07.PrepareReport();
                         OFI_FR_R_OFV_POS_07.ShowReport();
                     end;
                  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '07 - Atendimento por Analista') then
                     begin
                         OFI_CD_R_OFV_POS_002.IndexFieldNames := 'ID_ANALISTA;DTA_EMISSAO';
                         if FileExists(PathImg) then
                           begin
                             LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_POS_08.FindObject('imgEmpresa8'));
                             if Assigned(LogoEmpresa) then
                               LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;
                         dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_POS_08.Name,xCodLme,xRevLme,nil);
                         OFI_FR_R_OFV_POS_08.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                         OFI_FR_R_OFV_POS_08.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                         OFI_FR_R_OFV_POS_08.Variables['Opcoes'] := QuotedStr(xOpcoes);
                         OFI_FR_R_OFV_POS_08.PrepareReport();
                         OFI_FR_R_OFV_POS_08.ShowReport();
                     end;

                  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '09 - Ordem de Serviço Cancelada') then
                     begin
                         OFI_CD_R_OFV_POS_002.IndexFieldNames := 'DTA_EMISSAO';
                         if FileExists(PathImg) then
                           begin
                             LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_POS_10.FindObject('imgEmpresa10'));
                             if Assigned(LogoEmpresa) then
                               LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;
                         dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_POS_10.Name,xCodLme,xRevLme,nil);
                         OFI_FR_R_OFV_POS_10.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                         OFI_FR_R_OFV_POS_10.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                         OFI_FR_R_OFV_POS_10.Variables['Opcoes'] := QuotedStr(xOpcoes);
                         OFI_FR_R_OFV_POS_10.PrepareReport();
                         OFI_FR_R_OFV_POS_10.ShowReport();
                     end;
                 end
             else
                 begin
                     ShowMessage('Nenhum registro foi encontrado.');
                 end;
          end;
      end;
end;

procedure TOFI_FM_R_OFT_POS.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TOFI_FM_R_OFT_POS.btnRemoverAnalistaClick(Sender: TObject);
begin
  inherited;
    if lboxAnalista.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxAnalista.DeleteSelected;
end;

procedure TOFI_FM_R_OFT_POS.btnRemoverRegistroFuncionarioClick(Sender: TObject);
begin
  inherited;
    if lboxFuncionario.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFuncionario.DeleteSelected;
end;

procedure TOFI_FM_R_OFT_POS.btnRemoverTipoOrdServClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxTipoOrdServSelecionado.ClearSelection;

  if lboxTipoOrdServSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoOrdServSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoOrdServSelecionado.Items.Count - 1 do
           begin
             lboxTipoOrdServDisponivel.Items.Add(lboxTipoOrdServSelecionado.Items[i]);
             lboxTipoOrdServSelecionado.Items.Delete(lboxTipoOrdServSelecionado.ItemIndex);
           end;
       lboxEmpresaSelecionada.Items.Clear;
     end;
end;

procedure TOFI_FM_R_OFT_POS.btnRemoverTodasCondPagClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxCondSelecionado.ClearSelection;

  if lboxCondSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCondSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxCondSelecionado.Items.Count - 1 do
           begin
             lboxCondDisponivel.Items.Add(lboxCondSelecionado.Items[i]);
             lboxCondSelecionado.Items.Delete(lboxCondSelecionado.ItemIndex);
           end;
       lboxEmpresaSelecionada.Items.Clear;
     end;
end;



procedure TOFI_FM_R_OFT_POS.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TOFI_FM_R_OFT_POS.btnRemoverVeiculoClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
    if lboxVeiculoDisponivel.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxVeiculoDisponivel.DeleteSelected;
end;

procedure TOFI_FM_R_OFT_POS.cbbFiltroTipoChange(Sender: TObject);
begin
  inherited;
  if (cbbFiltroTipo.ItemIndex = 0) then
    begin
      lblPeriodo.Visible := true;
      lblAte.Visible:= true;
      deInicial.Visible := true;
      deFinal.Visible := true;
      pnlFaixaOrdem.Visible := false;
      txtOrdIni.Text := '';
      txtOrdFin.Text := '';
    end;

  if (cbbFiltroTipo.ItemIndex = 1) then
    begin
       lblPeriodo.Visible := false;
       lblAte.Visible:= false;
       deInicial.Visible := false;
       deFinal.Visible := false;
       pnlFaixaOrdem.Visible := true;
       pnlFaixaOrdem.Top := 37;
       deInicial.Text := '  /  /    ';
       deFinal.Text := '  /  /    ';
    end;


end;

procedure TOFI_FM_R_OFT_POS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(OFI_FM_R_OFT_POS);
end;

procedure TOFI_FM_R_OFT_POS.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  // Empresas ------------------------------------------------------------------
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

  // Veículo -------------------------------------------------------------------
 { dmgeral.BUS_CD_C_VEI.Close;
  dmgeral.BUS_CD_C_VEI.Data :=
  dmgeral.BUS_CD_C_VEI.DataRequest(VarArrayOf([1,'%']));
   if not dmGeral.BUS_CD_C_VEI.IsEmpty then
     begin
       dmGeral.BUS_CD_C_VEI.First;

       while not dmGeral.BUS_CD_C_VEI.eof do
          begin
            lboxVeiculoDisponivel.Items.Add(StrZero(dmGeral.BUS_CD_C_VEI.FieldByName('ID_veiculo').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_VEI.FieldByName('int_nomemve').AsString);
            dmGeral.BUS_CD_C_VEI.Next;
          end;
     end;
  dmGeral.BUS_CD_C_VEI.Close; }

  // Condição de Pagamento -----------------------------------------------------
  dmgeral.BUS_CD_C_CPG.Close;
  dmgeral.BUS_CD_C_CPG.Data :=
  dmgeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([1,'%']));
   if not dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       dmGeral.BUS_CD_C_CPG.First;

       while not dmGeral.BUS_CD_C_CPG.eof do
          begin
            lboxCondDisponivel.Items.Add(StrZero(dmGeral.BUS_CD_C_CPG.FieldByName('ID_condicao_pag').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_CPG.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_CPG.Next;
          end;
     end;
  dmGeral.BUS_CD_C_CPG.Close;

  // Analista ------------------------------------------------------------------
  {dmgeral.BUS_CD_C_FUN.Close;
  dmgeral.BUS_CD_C_FUN.Data :=
  dmgeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([1,'%']));
   if not dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       dmGeral.BUS_CD_C_FUN.First;

       while not dmGeral.BUS_CD_C_FUN.eof do
          begin
            lboxAnalista.Items.Add(StrZero(dmGeral.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString);
            dmGeral.BUS_CD_C_FUN.Next;
          end;
     end;
  dmGeral.BUS_CD_C_FUN.Close;   }

  // Tipo de Ordem de Serviço --------------------------------------------------
  dmgeral.BUS_CD_C_TIO.Close;
  dmgeral.BUS_CD_C_TIO.Data :=
  dmgeral.BUS_CD_C_TIO.DataRequest(VarArrayOf([1,'%']));
   if not dmGeral.BUS_CD_C_TIO.IsEmpty then
     begin
       dmGeral.BUS_CD_C_TIO.First;

       while not dmGeral.BUS_CD_C_TIO.eof do
          begin
            lboxTipoOrdServDisponivel.Items.Add(StrZero(dmGeral.BUS_CD_C_TIO.FieldByName('ID_TIPO_OS').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_TIO.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_TIO.Next;
          end;
     end;
  dmGeral.BUS_CD_C_TIO.Close;
end;


procedure TOFI_FM_R_OFT_POS.lboxAnalistaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxAnalista,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0)) then
                begin
                  lboxAnalista.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;



procedure TOFI_FM_R_OFT_POS.lboxCondDisponivelDblClick(Sender: TObject);
begin
  inherited;
  if lboxCondDisponivel.ItemIndex > - 1 then
     begin
       lboxCondSelecionado.Items.Add(lboxCondDisponivel.Items[lboxCondDisponivel.ItemIndex]);
       lboxCondDisponivel.Items.Delete(lboxCondDisponivel.ItemIndex);
     end;
end;

procedure TOFI_FM_R_OFT_POS.lboxCondSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxCondSelecionado.ItemIndex > -1 then
     begin
       lboxCondDisponivel.Items.Add(lboxCondSelecionado.Items[lboxCondSelecionado.ItemIndex]);
       lboxCondSelecionado.Items.Delete(lboxCondSelecionado.ItemIndex);
     end;
end;

procedure TOFI_FM_R_OFT_POS.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TOFI_FM_R_OFT_POS.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TOFI_FM_R_OFT_POS.lboxFuncionarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFuncionario,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0)) then
                begin
                  lboxFuncionario.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TOFI_FM_R_OFT_POS.lboxTipoOrdServDisponivelDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoOrdServDisponivel.ItemIndex > - 1 then
     begin
       lboxTipoOrdServSelecionado.Items.Add(lboxTipoOrdServDisponivel.Items[lboxTipoOrdServDisponivel.ItemIndex]);
       lboxTipoOrdServDisponivel.Items.Delete(lboxTipoOrdServDisponivel.ItemIndex);
     end;
end;

procedure TOFI_FM_R_OFT_POS.lboxTipoOrdServSelecionadoClick(Sender: TObject);
begin
  inherited;
  if lboxTipoOrdServSelecionado.ItemIndex > -1 then
     begin
       lboxTipoOrdServDisponivel.Items.Add(lboxTipoOrdServSelecionado.Items[lboxTipoOrdServSelecionado.ItemIndex]);
       lboxTipoOrdServSelecionado.Items.Delete(lboxTipoOrdServSelecionado.ItemIndex);
     end;
end;

procedure TOFI_FM_R_OFT_POS.lboxVeiculoDisponivelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
        PSQ_FM_X_VEI := TPSQ_FM_X_VEI.Create(Self);
        PSQ_FM_X_VEI.ShowModal;
        if not PSQ_FM_X_VEI.BUS_CD_C_VEI.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxVeiculoDisponivel,9,StrZero(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('ID_VEICULO').AsFloat,9,0)) then
                begin
                  lboxVeiculoDisponivel.Items.Add(StrZero(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('ID_VEICULO').AsFloat,9,0) +
                                             ' - ' + trim(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('CHASSI').AsString)+'-'+
                                                     PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_VEI.Free;
     end;
end;

procedure TOFI_FM_R_OFT_POS.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
 if (lbxRelatorios.ItemIndex = 7) then
    begin
      cbbSituacao.ItemIndex := 3;
      cbbSituacao.Enabled := false;
    end;
  if (lbxRelatorios.ItemIndex = 8) then
    begin
      cbbSituacao.ItemIndex := 4;
      cbbSituacao.Enabled := false;
    end;

  if not (lbxRelatorios.ItemIndex in [7,8]) then
    begin
       cbbSituacao.ItemIndex := 5;
       cbbSituacao.Enabled := true;
    end;

end;

procedure TOFI_FM_R_OFT_POS.MenuItemCondPagClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxCondDisponivel.ClearSelection;

  if lboxCondDisponivel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCondDisponivel.Items.Count > 0 then
     begin
       for i := 0 to lboxCondDisponivel.Items.Count - 1 do
           begin
             lboxCondSelecionado.Items.Add(lboxCondDisponivel.Items[i]);
             lboxCondDisponivel.Items.Delete(lboxCondDisponivel.ItemIndex);
           end;
       lboxCondDisponivel.Items.Clear;
     end;
end;

procedure TOFI_FM_R_OFT_POS.menuItemEmpresasClick(Sender: TObject);
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

procedure TOFI_FM_R_OFT_POS.MenuItemTipoOrdServClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxTipoOrdServDisponivel.ClearSelection;

  if lboxTipoOrdServDisponivel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoOrdServDisponivel.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoOrdServDisponivel.Items.Count - 1 do
           begin
             lboxTipoOrdServSelecionado.Items.Add(lboxTipoOrdServDisponivel.Items[i]);
             lboxTipoOrdServDisponivel.Items.Delete(lboxTipoOrdServDisponivel.ItemIndex);
           end;
       lboxVeiculoDisponivel.Items.Clear;
     end;
end;

procedure TOFI_FM_R_OFT_POS.MenuItemVeiculoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxVeiculoDisponivel.ClearSelection;

  if lboxVeiculoDisponivel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxVeiculoDisponivel.Items.Count > 0 then
     begin
       for i := 0 to lboxVeiculoDisponivel.Items.Count - 1 do
           begin
           //  lboxVeiculoSelecionado.Items.Add(lboxVeiculoDisponivel.Items[i]);
             lboxVeiculoDisponivel.Items.Delete(lboxVeiculoDisponivel.ItemIndex);
           end;
       lboxVeiculoDisponivel.Items.Clear;
     end;
end;

procedure TOFI_FM_R_OFT_POS.OFI_FR_R_OFV_POS_05BeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
   if (OFI_CD_R_OFV_POS_003.FieldByName('INT_NOMEMEC').AsString <>'') then
     begin
       OFI_FR_R_OFV_POS_05.Variables['ft_nomemec'] := QuotedStr(OFI_CD_R_OFV_POS_003.FieldByName('INT_NOMEMEC').AsString);
     end
   else
     begin
       OFI_FR_R_OFV_POS_05.Variables['ft_nomemec'] := QuotedStr('INDEFINIDO');
     end;
end;

procedure TOFI_FM_R_OFT_POS.OFI_FR_R_OFV_POS_08BeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
 {  if (OFI_CD_R_OFV_POS_002.FieldByName('INT_NOMEMEC').AsString <>'') then
     begin
       OFI_FR_R_OFV_POS_08.Variables['ft_nomemec'] := QuotedStr(OFI_CD_R_OFV_POS_002.FieldByName('INT_NOMEMEC').AsString);
     end
   else
     begin
       OFI_FR_R_OFV_POS_08.Variables['ft_nomemec'] := QuotedStr('INDEFINIDO');
     end; }
end;

procedure TOFI_FM_R_OFT_POS.OFI_FR_R_OFV_POS_09BeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
   if (OFI_CD_R_OFV_POS_003.FieldByName('INT_NOMEMEC').AsString <>'') then
     begin
       OFI_FR_R_OFV_POS_09.Variables['ft_nomemec'] := QuotedStr(OFI_CD_R_OFV_POS_003.FieldByName('INT_NOMEMEC').AsString);
     end
   else
     begin
       OFI_FR_R_OFV_POS_09.Variables['ft_nomemec'] := QuotedStr('INDEFINIDO');
     end;
end;

procedure TOFI_FM_R_OFT_POS.OFI_FR_R_OFV_POS_10BeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
   {if (OFI_CD_R_OFV_POS_003.FieldByName('INT_NOMEMEC').AsString <>'') then
     begin
       OFI_FR_R_OFV_POS_10.Variables['ft_nomemec'] := QuotedStr(OFI_CD_R_OFV_POS_003.FieldByName('INT_NOMEMEC').AsString);
     end
   else
     begin
       OFI_FR_R_OFV_POS_10.Variables['ft_nomemec'] := QuotedStr('INDEFINIDO');
     end;   }
end;

end.
