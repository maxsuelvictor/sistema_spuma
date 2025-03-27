unit FIN_UN_R_REC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.ComCtrls, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Menus, enFunc,
  frxClass, frxDBSet, frxExportPDF, frxExportXLS, Data.DB, Datasnap.DBClient,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Grids, Vcl.DBGrids,
  frxExportXLSX;

type
  TFIN_FM_R_REC = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    cbbOrdenacao: TComboBox;
    Label3: TLabel;
    cbbPorData: TComboBox;
    tsCliente: TTabSheet;
    lblClientesDisponiveis: TLabel;
    lboxCliente: TListBox;
    tsFormaPagamento: TTabSheet;
    lblFormaDisponivel: TLabel;
    lblFormaSelecionada: TLabel;
    lboxFormaSelecionada: TListBox;
    lboxFormaDisponivel: TListBox;
    tsLocalTitulo: TTabSheet;
    lblLocaisDisponiveis: TLabel;
    lblLocalSelecionado: TLabel;
    lboxLocalSelecionado: TListBox;
    lboxLocaisDisponiveis: TListBox;
    tsPlanoContas: TTabSheet;
    lblPlanosDisponiveis: TLabel;
    lblPlanoSelecionado: TLabel;
    lboxPlanoSelecionado: TListBox;
    lboxPlanosDisponiveis: TListBox;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmSelFormasPagamento: TPopupMenu;
    MenuItemFormasPagamento: TMenuItem;
    pmSelLocaisTitulo: TPopupMenu;
    MenuItemLocalTitulo: TMenuItem;
    pmSelPlanosConta: TPopupMenu;
    MenuItemPlanoConta: TMenuItem;
    FIN_PD_R_REC_ABE: TfrxPDFExport;
    FIN_DB_R_REC_ABE: TfrxDBDataset;
    pmExcluirCliente: TPopupMenu;
    btnRemoverRegistroCliente: TMenuItem;
    FIN_DB_R_REC_ABE_PPG: TfrxDBDataset;
    cbbTipoRel: TComboBox;
    Label5: TLabel;
    FIN_DB_R_REC_BXA: TfrxDBDataset;
    pmRemoverTodosPlanoContas: TPopupMenu;
    btnRemoverRegistros: TMenuItem;
    pmRemoverTodosLocalTitulo: TPopupMenu;
    btnRemoverTodosLocalTitulo: TMenuItem;
    pmRemoverTodosFormaPag: TPopupMenu;
    btnRemoverTodosFormaPag: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    cdsTempResABE_PPG: TClientDataSet;
    cdsTempResABE_PPGFAIXA: TStringField;
    cdsTempResABE_PPGtotAVencer: TCurrencyField;
    cdsTempResABE_PPGtotVencidos: TCurrencyField;
    DBTempResABE_PPG: TfrxDBDataset;
    cdsTempResABE_PPGOrdemGrupo: TIntegerField;
    tsVendedor: TTabSheet;
    lblVendedoresDisponiveis: TLabel;
    lboxVendedores: TListBox;
    pmRemoverVendedor: TPopupMenu;
    btnRemoverVendedor: TMenuItem;
    tsFormaPagBxa: TTabSheet;
    lboxFpgBxaDisp: TListBox;
    lboxFpgBxaSel: TListBox;
    lblFormaPagBxaDisp: TLabel;
    lblFormaPagBxaSel: TLabel;
    pmSelTodosFpgBxa: TPopupMenu;
    pmRemoverTodosFpgBxa: TPopupMenu;
    btnSelTodasFpgBxa: TMenuItem;
    btnRemoverFpgBxa: TMenuItem;
    FIN_FR_R_REC_ABE_CNO: TfrxReport;
    FIN_FR_R_REC_BXA_CNO: TfrxReport;
    tsCidade: TTabSheet;
    lboxCidade: TListBox;
    Label6: TLabel;
    pmRemoverCidade: TPopupMenu;
    btnRemoverCidade: TMenuItem;
    FIN_CD_R_REC_ABE: TClientDataSet;
    FIN_CD_R_REC_ABE_PPG: TClientDataSet;
    FIN_CD_R_REC_BXA: TClientDataSet;
    FIN_FR_R_REC_ABE_GER: TfrxReport;
    FIN_FR_R_REC_BXA_CID: TfrxReport;
    FIN_FR_R_REC_ABE_CLI: TfrxReport;
    FIN_FR_R_REC_ABE_PCT: TfrxReport;
    FIN_FR_R_REC_ABE_CID: TfrxReport;
    FIN_FR_R_REC_ABE_VND: TfrxReport;
    FIN_FR_R_REC_ABE_RFP: TfrxReport;
    FIN_FR_R_REC_ABE_RPC: TfrxReport;
    FIN_FR_R_REC_ABE_PPG: TfrxReport;
    FIN_FR_R_REC_ABE_FPG: TfrxReport;
    FIN_FR_R_REC_ABE_COB: TfrxReport;
    FIN_FR_R_REC_BXA_GER: TfrxReport;
    FIN_FR_R_REC_BXA_PCT: TfrxReport;
    FIN_FR_R_REC_BXA_VND: TfrxReport;
    FIN_FR_R_REC_BXA_RPC: TfrxReport;
    FIN_FR_R_REC_BXA_RFP: TfrxReport;
    FIN_FR_R_REC_BXA_FPG: TfrxReport;
    FIN_XL_R_REC_ABE: TfrxXLSExport;
    tsPctBaixa: TTabSheet;
    lboxPlanoBxaSelecionado: TListBox;
    Label7: TLabel;
    lboxPlanoBxaDisponiveis: TListBox;
    Label8: TLabel;
    pmExcluirTodosPctBxa: TPopupMenu;
    pmSelTodosPctBxa: TPopupMenu;
    btnRemoverTodosPctBxa: TMenuItem;
    btnSelTodosPctBxa: TMenuItem;
    FIN_FR_R_REC_BXA_CLI: TfrxReport;
    cbbBuscaVnd: TComboBox;
    lblBuscaVnd: TLabel;
    txtOrdFaturamento: TEdit;
    lblOf: TLabel;
    lblDadosOf: TLabel;
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxFormaDisponivelDblClick(Sender: TObject);
    procedure lboxLocaisDisponiveisDblClick(Sender: TObject);
    procedure lboxPlanosDisponiveisDblClick(Sender: TObject);
    procedure lboxFormaSelecionadaDblClick(Sender: TObject);
    procedure lboxLocalSelecionadoDblClick(Sender: TObject);
    procedure lboxPlanoSelecionadoDblClick(Sender: TObject);
    procedure MenuItemFormasPagamentoClick(Sender: TObject);
    procedure MenuItemLocalTituloClick(Sender: TObject);
    procedure MenuItemPlanoContaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverRegistroClienteClick(Sender: TObject);
    procedure btnRemoverRegistrosClick(Sender: TObject);
    procedure btnRemoverTodosLocalTituloClick(Sender: TObject);
    procedure btnRemoverTodosFormaPagClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnRemoverVendedorClick(Sender: TObject);
    procedure lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbTipoRelChange(Sender: TObject);
    procedure btnSelTodasFpgBxaClick(Sender: TObject);
    procedure btnRemoverFpgBxaClick(Sender: TObject);
    procedure lboxFpgBxaDispDblClick(Sender: TObject);
    procedure lboxFpgBxaSelDblClick(Sender: TObject);
    procedure FIN_FR_R_REC_ABE_CNOBeforePrint(Sender: TfrxReportComponent);
    procedure FIN_FR_R_REC_BXA_CNOBeforePrint(Sender: TfrxReportComponent);
    procedure lboxCidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverCidadeClick(Sender: TObject);
    procedure lboxPlanoBxaDisponiveisDblClick(Sender: TObject);
    procedure lboxPlanoBxaSelecionadoDblClick(Sender: TObject);
    procedure btnRemoverTodosPctBxaClick(Sender: TObject);
    procedure btnSelTodosPctBxaClick(Sender: TObject);
    procedure txtOrdFaturamentoExit(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;
    function SelecionadaEmpresa: Boolean;

    procedure MontarDadosABE_PPG;
    procedure MontarTotResumo;
    var
      xOpcoes, xCondEmpresa, xCondCliente, xCondFormaPagamento,xCondPctBxa,
      xCondLocalTitulo, xCondPlanoContas, xCondVendedor,xCondFpgBxa,xCondCidade: string;
  public
    { Public declarations }
  end;

var
  FIN_FM_R_REC: TFIN_FM_R_REC;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, PSQ_UN_X_FUN, enConstantes, PSQ_UN_X_CID;

procedure TFIN_FM_R_REC.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TFIN_FM_R_REC.btnRemoverCidadeClick(Sender: TObject);
begin
  inherited;
   if lboxCidade.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxCidade.DeleteSelected;
end;

procedure TFIN_FM_R_REC.btnRemoverFpgBxaClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxFpgBxaSel.ClearSelection;

  if lboxFpgBxaSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxFpgBxaSel.Items.Count > 0 then
     begin
       for i := 0 to lboxFpgBxaSel.Items.Count - 1 do
           begin
             lboxFpgBxaDisp.Items.Add(lboxFpgBxaSel.Items[i]);
             lboxFpgBxaSel.Items.Delete(lboxFpgBxaSel.ItemIndex);
           end;
       lboxFpgBxaSel.Items.Clear;
     end;
end;

procedure TFIN_FM_R_REC.btnRemoverRegistroClienteClick(Sender: TObject);
begin
  inherited;
  if lboxCliente.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxCliente.DeleteSelected;
end;

procedure TFIN_FM_R_REC.btnRemoverRegistrosClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxPlanoSelecionado.ClearSelection;

  if lboxPlanoSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPlanoSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxPlanoSelecionado.Items.Count - 1 do
           begin
             lboxPlanosDisponiveis.Items.Add(lboxPlanoSelecionado.Items[i]);
             lboxPlanoSelecionado.Items.Delete(lboxPlanoSelecionado.ItemIndex);
           end;
       lboxPlanoSelecionado.Items.Clear;
     end;

end;

procedure TFIN_FM_R_REC.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFIN_FM_R_REC.btnRemoverTodosFormaPagClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxFormaSelecionada.ClearSelection;

  if lboxFormaSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxFormaSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxFormaSelecionada.Items.Count - 1 do
           begin
             lboxFormaDisponivel.Items.Add(lboxFormaSelecionada.Items[i]);
             lboxFormaSelecionada.Items.Delete(lboxFormaSelecionada.ItemIndex);
           end;
       lboxFormaSelecionada.Items.Clear;
     end;
end;

procedure TFIN_FM_R_REC.btnRemoverTodosLocalTituloClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxLocalSelecionado.ClearSelection;

  if lboxLocalSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxLocalSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxLocalSelecionado.Items.Count - 1 do
           begin
             lboxLocaisDisponiveis.Items.Add(lboxLocalSelecionado.Items[i]);
             lboxLocalSelecionado.Items.Delete(lboxLocalSelecionado.ItemIndex);
           end;
       lboxLocalSelecionado.Items.Clear;
     end;
end;

procedure TFIN_FM_R_REC.btnRemoverTodosPctBxaClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxPlanoBxaSelecionado.ClearSelection;

  if lboxPlanoBxaSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPlanoBxaSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxPlanoBxaSelecionado.Items.Count - 1 do
           begin
             lboxPlanoBxaDisponiveis.Items.Add(lboxPlanoBxaSelecionado.Items[i]);
             lboxPlanoBxaSelecionado.Items.Delete(lboxPlanoBxaSelecionado.ItemIndex);
           end;
       lboxPlanoBxaSelecionado.Items.Clear;
     end;
end;

procedure TFIN_FM_R_REC.btnRemoverVendedorClick(Sender: TObject);
begin
  inherited;
  if lboxVendedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxVendedores.DeleteSelected;
end;

procedure TFIN_FM_R_REC.btnSelTodasFpgBxaClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxFpgBxaDisp.ClearSelection;

  if lboxFpgBxaDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxFpgBxaDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxFpgBxaDisp.Items.Count - 1 do
           begin
             lboxFpgBxaSel.Items.Add(lboxFpgBxaDisp.Items[i]);
             lboxFpgBxaDisp.Items.Delete(lboxFpgBxaDisp.ItemIndex);
           end;
       lboxFpgBxaDisp.Items.Clear;
     end;
end;

procedure TFIN_FM_R_REC.btnSelTodosPctBxaClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxPlanoBxaDisponiveis.ClearSelection;

  if lboxPlanoBxaDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPlanoBxaDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxPlanoBxaDisponiveis.Items.Count - 1 do
           begin
             lboxPlanoBxaSelecionado.Items.Add(lboxPlanoBxaDisponiveis.Items[i]);
             lboxPlanoBxaDisponiveis.Items.Delete(lboxPlanoBxaDisponiveis.ItemIndex);
           end;
       lboxPlanoBxaDisponiveis.Items.Clear;
     end;
end;

procedure TFIN_FM_R_REC.cbbTipoRelChange(Sender: TObject);
begin
  inherited;
  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '10 - Cobrança') and
     (cbbTipoRel.ItemIndex = 1) then
    begin
      cbbTipoRel.OnChange := nil;
      ShowMessage('O tipo de relatório selecionado é incompatível.');
      cbbTipoRel.ItemIndex := 0;
    end;


  cbbPorData.Clear;
  if (cbbTipoRel.ItemIndex = 0) or (cbbTipoRel.ItemIndex = 2) then
    begin
      cbbPorData.AddItem('0 - Emissão',nil);
      cbbPorData.AddItem('1 - Vencto original',nil);
      cbbPorData.AddItem('2 - Vencimento atual',nil);
      cbbPorData.ItemIndex := 0;
      tsFormaPagBxa.TabVisible := false;

      lblOf.Visible := true;
      txtOrdFaturamento.Visible := true;
      lblDadosOf.Visible := true;

    end;
  if (cbbTipoRel.ItemIndex = 1) then
    begin
      cbbPorData.AddItem('0 - Emissão',nil);
      cbbPorData.AddItem('1 - Vencimento',nil);
      cbbPorData.AddItem('2 - Vencimento atual',nil);
      cbbPorData.AddItem('3 - Pagamento',nil);
      cbbPorData.ItemIndex := 0;
      tsFormaPagBxa.TabVisible := true;

      lblOf.Visible := true;
      txtOrdFaturamento.Visible := true;
      lblDadosOf.Visible := true;
    end;

     cbbTipoRel.OnChange := cbbTipoRelChange;
end;

procedure TFIN_FM_R_REC.ExibirRel;
var
  rTipoData, rDtaIni, rDtaFin, rOrdenacao,rBuscaVnd, PathImg: String;
  rIndexRelatorio:integer;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   // Por Data de Emissão / Vencimento
   rTipoData := copy(cbbPorData.Text,1,1);

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

  // rIndexRelatorio :=
   // Ordenação
   rOrdenacao := copy(cbbOrdenacao.Text,1,1);

   rBuscaVnd := copy(cbbBuscaVnd.Text,1,1);

   PreencherCondicao;

   if (cbbTipoRel.ItemIndex = 0) or (cbbTipoRel.ItemIndex = 2) then
      begin
         if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Geral') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Cliente') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Plano de Contas') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Forma de Pagamento') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Resumo por Plano de Contas') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06 - Resumo por Forma de Pagamento') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '07 - Por Vendedor') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '08 - Boleto Bancário Por Cliente') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '09 - Por Cidade') or
            (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '10 - Cobrança') then
             begin
               FIN_CD_R_REC_ABE.Active:= False;
               FIN_CD_R_REC_ABE.Close;
               FIN_CD_R_REC_ABE.Data :=
                 FIN_CD_R_REC_ABE.DataRequest(
                      VarArrayOf([rTipoData, rDtaIni, rDtaFin, xCondEmpresa, xCondCliente, xCondFormaPagamento,
                                  xCondLocalTitulo, xCondPlanoContas,rOrdenacao,lbxRelatorios.ItemIndex,
                                  xCondVendedor,xCondCidade,rBuscaVnd, cbbTipoRel.ItemIndex, txtOrdFaturamento.text]));

              


               if not FIN_CD_R_REC_ABE.IsEmpty then
                  begin
                    PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Geral' then
                      begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_ABE_GER.FindObject('imgEmpresa1'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_ABE_GER.Name,xCodLme,xRevLme,nil);

                        if rTipoData = '2' then
                          FIN_FR_R_REC_ABE_GER.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                        else
                          FIN_FR_R_REC_ABE_GER.Variables['ft_data'] := QuotedStr('Vencimento');

                        FIN_FR_R_REC_ABE_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                        FIN_FR_R_REC_ABE_GER.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                        FIN_FR_R_REC_ABE_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
                        FIN_FR_R_REC_ABE_GER.PrepareReport();
                        FIN_FR_R_REC_ABE_GER.ShowReport();
                      end;

                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Cliente' then
                       begin


                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_ABE_CLI.FindObject('imgEmpresa1'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_ABE_CLI.Name,xCodLme,xRevLme,nil);

                        if rTipoData = '2' then
                          FIN_FR_R_REC_ABE_CLI.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                        else
                          FIN_FR_R_REC_ABE_CLI.Variables['ft_data'] := QuotedStr('Vencimento');

                         FIN_FR_R_REC_ABE_CLI.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                         FIN_FR_R_REC_ABE_CLI.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                         FIN_FR_R_REC_ABE_CLI.Variables['Opcoes'] := QuotedStr(xOpcoes);
                         FIN_FR_R_REC_ABE_CLI.PrepareReport();
                         FIN_FR_R_REC_ABE_CLI.ShowReport();
                       end;

                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Plano de Contas' then
                       begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_ABE_PCT.FindObject('imgEmpresa1'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_ABE_PCT.Name,xCodLme,xRevLme,nil);

                        if rTipoData = '2' then
                          FIN_FR_R_REC_ABE_PCT.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                        else
                          FIN_FR_R_REC_ABE_PCT.Variables['ft_data'] := QuotedStr('Vencimento');

                         FIN_FR_R_REC_ABE_PCT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                         FIN_FR_R_REC_ABE_PCT.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                         FIN_FR_R_REC_ABE_PCT.Variables['Opcoes'] := QuotedStr(xOpcoes);
                         FIN_FR_R_REC_ABE_PCT.PrepareReport();
                         FIN_FR_R_REC_ABE_PCT.ShowReport();
                       end;

                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Forma de Pagamento' then
                       begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_ABE_FPG.FindObject('imgEmpresa1'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_ABE_FPG.Name,xCodLme,xRevLme,nil);

                        if rTipoData = '2' then
                          FIN_FR_R_REC_ABE_FPG.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                        else
                          FIN_FR_R_REC_ABE_FPG.Variables['ft_data'] := QuotedStr('Vencimento');

                         FIN_FR_R_REC_ABE_FPG.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                         FIN_FR_R_REC_ABE_FPG.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                         FIN_FR_R_REC_ABE_FPG.Variables['Opcoes'] := QuotedStr(xOpcoes);
                         FIN_FR_R_REC_ABE_FPG.PrepareReport();
                         FIN_FR_R_REC_ABE_FPG.ShowReport();
                       end;



                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Resumo por Plano de Contas' then
                       begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_ABE_RPC.FindObject('imgEmpresa1'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_ABE_RPC.Name,xCodLme,xRevLme,nil);
                        FIN_FR_R_REC_ABE_RPC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                        FIN_FR_R_REC_ABE_RPC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                        FIN_FR_R_REC_ABE_RPC.Variables['Opcoes'] := QuotedStr(xOpcoes);
                        FIN_FR_R_REC_ABE_RPC.PrepareReport();
                        FIN_FR_R_REC_ABE_RPC.ShowReport();
                       end;

                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06 - Resumo por Forma de Pagamento' then
                       begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_ABE_RFP.FindObject('imgEmpresa1'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_ABE_RFP.Name,xCodLme,xRevLme,nil);
                        FIN_FR_R_REC_ABE_RFP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                        FIN_FR_R_REC_ABE_RFP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                        FIN_FR_R_REC_ABE_RFP.Variables['Opcoes'] := QuotedStr(xOpcoes);
                        FIN_FR_R_REC_ABE_RFP.PrepareReport();
                        FIN_FR_R_REC_ABE_RFP.ShowReport();
                       end;

                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '07 - Por Vendedor' then
                       begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_ABE_VND.FindObject('imgEmpresa1'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_ABE_VND.Name,xCodLme,xRevLme,nil);

                        if rTipoData = '2' then
                          FIN_FR_R_REC_ABE_VND.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                        else
                          FIN_FR_R_REC_ABE_VND.Variables['ft_data'] := QuotedStr('Vencimento');

                        FIN_FR_R_REC_ABE_VND.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                        FIN_FR_R_REC_ABE_VND.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                        FIN_FR_R_REC_ABE_VND.Variables['Opcoes'] := QuotedStr(xOpcoes);
                        FIN_FR_R_REC_ABE_VND.PrepareReport();
                        FIN_FR_R_REC_ABE_VND.ShowReport();
                       end;

                     if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '08 - Boleto Bancário Por Cliente' then
                       begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_ABE_CNO.FindObject('imgEmpresa1'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_ABE_CNO.Name,xCodLme,xRevLme,nil);

                        if rTipoData = '2' then
                          FIN_FR_R_REC_ABE_CNO.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                        else
                          FIN_FR_R_REC_ABE_CNO.Variables['ft_data'] := QuotedStr('Vencimento');

                        FIN_FR_R_REC_ABE_CNO.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                        FIN_FR_R_REC_ABE_CNO.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                        FIN_FR_R_REC_ABE_CNO.Variables['Opcoes'] := QuotedStr(xOpcoes);
                        FIN_FR_R_REC_ABE_CNO.PrepareReport();
                        FIN_FR_R_REC_ABE_CNO.ShowReport();
                       end;
                      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '09 - Por Cidade' then
                       begin
                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_ABE_CID.FindObject('imgEmpresa1'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_ABE_CID.Name,xCodLme,xRevLme,nil);

                        if rTipoData = '2' then
                          FIN_FR_R_REC_ABE_CID.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                        else
                          FIN_FR_R_REC_ABE_CID.Variables['ft_data'] := QuotedStr('Vencimento');

                        FIN_FR_R_REC_ABE_CID.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                        FIN_FR_R_REC_ABE_CID.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                        FIN_FR_R_REC_ABE_CID.Variables['Opcoes'] := QuotedStr(xOpcoes);
                        FIN_FR_R_REC_ABE_CID.PrepareReport();
                        FIN_FR_R_REC_ABE_CID.ShowReport();
                       end;

                      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '10 - Cobrança' then
                       begin
                        if cbbTipoRel.ItemIndex=0 then
                          begin
                            if FileExists(PathImg) then
                               begin
                                  LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_ABE_COB.FindObject('imgEmpresa1'));
                                  if Assigned(LogoEmpresa) then
                                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                               end;

                            dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_ABE_COB.Name,xCodLme,xRevLme,nil);

                        if rTipoData = '2' then
                          FIN_FR_R_REC_ABE_COB.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                        else
                          FIN_FR_R_REC_ABE_COB.Variables['ft_data'] := QuotedStr('Vencimento');

                            FIN_FR_R_REC_ABE_COB.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                            FIN_FR_R_REC_ABE_COB.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                            FIN_FR_R_REC_ABE_COB.Variables['Opcoes'] := QuotedStr(xOpcoes);
                            FIN_FR_R_REC_ABE_COB.PrepareReport();
                            FIN_FR_R_REC_ABE_COB.ShowReport();
                          end
                        else
                          begin
                            ShowMessage('Tipo de Relatório dever ser "em aberto".');
                          end;
                       end;
                  end
               else
                  begin
                     ShowMessage('Nenhum registro foi encontrado.');
                  end;
             end
         else
             begin
               FIN_CD_R_REC_ABE_PPG.Active:= False;
               FIN_CD_R_REC_ABE_PPG.Close;
               FIN_CD_R_REC_ABE_PPG.Data :=
                 FIN_CD_R_REC_ABE_PPG.DataRequest(
                      VarArrayOf([rTipoData, rDtaIni, rDtaFin, xCondEmpresa, xCondCliente, xCondFormaPagamento,
                                  xCondLocalTitulo, xCondPlanoContas, lbxRelatorios.ItemIndex]));

               if not FIN_CD_R_REC_ABE_PPG.IsEmpty then
                  begin
                    PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
                    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04 - Por Faixa de Vencimento' then
                       begin
                          if FileExists(PathImg) then
                             begin
                                LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_ABE_PPG.FindObject('imgEmpresa1'));
                                if Assigned(LogoEmpresa) then
                                   LogoEmpresa.Picture.LoadFromFile(PathImg);
                             end;

                          MontarTotResumo;

                          dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_ABE_PPG.Name,xCodLme,xRevLme,nil);

                          if rTipoData = '2' then
                          FIN_FR_R_REC_ABE_PPG.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                        else
                          FIN_FR_R_REC_ABE_PPG.Variables['ft_data'] := QuotedStr('Vencimento');

                          FIN_FR_R_REC_ABE_PPG.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                          FIN_FR_R_REC_ABE_PPG.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                          FIN_FR_R_REC_ABE_PPG.Variables['Opcoes'] := QuotedStr(xOpcoes);
                          FIN_FR_R_REC_ABE_PPG.PrepareReport();
                          FIN_FR_R_REC_ABE_PPG.ShowReport();
                       end;
                  end
               else
                  begin
                     ShowMessage('Nenhum registro foi encontrado.');
                  end;
             end;
      end
   else
     if cbbTipoRel.ItemIndex = 1 then
        begin
          if lbxRelatorios.ItemIndex <> 4 then
             begin
               if lbxRelatorios.ItemIndex in [0,1,2,3] then
                  begin
                    rIndexRelatorio := lbxRelatorios.ItemIndex;
                  end
               else
                  begin
                    rIndexRelatorio := lbxRelatorios.ItemIndex - 1;
                  end;

                FIN_CD_R_REC_BXA.Active:= False;
                FIN_CD_R_REC_BXA.Close;
                FIN_CD_R_REC_BXA.Data :=
                FIN_CD_R_REC_BXA.DataRequest(
                      VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondCliente, xCondFormaPagamento,
                                  xCondPlanoContas, xCondLocalTitulo, rOrdenacao, rIndexRelatorio, xCondVendedor,
                                  rTipoData,xCondFpgBxa,xCondCidade,xCondPctBxa,rBuscaVnd,txtOrdFaturamento.text]));

                if not FIN_CD_R_REC_BXA.IsEmpty then
                  begin
                   PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Geral' then
                    begin
                     if FileExists(PathImg) then
                       begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_BXA_GER.FindObject('imgEmpresa1'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                       end;

                     dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_BXA_GER.Name,xCodLme,xRevLme,nil);

                     if rTipoData = '2' then
                          FIN_FR_R_REC_BXA_GER.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                     else
                          FIN_FR_R_REC_BXA_GER.Variables['ft_data'] := QuotedStr('Vencimento');

                     FIN_FR_R_REC_BXA_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                     FIN_FR_R_REC_BXA_GER.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                     FIN_FR_R_REC_BXA_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
                     FIN_FR_R_REC_BXA_GER.PrepareReport();
                     FIN_FR_R_REC_BXA_GER.ShowReport();
                    end;

                   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Cliente' then
                     begin
                     if FileExists(PathImg) then
                       begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_BXA_CLI.FindObject('imgEmpresa1'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                       end;

                     dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_BXA_CLI.Name,xCodLme,xRevLme,nil);

                     if rTipoData = '2' then
                          FIN_FR_R_REC_BXA_CLI.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                     else
                          FIN_FR_R_REC_BXA_CLI.Variables['ft_data'] := QuotedStr('Vencimento');

                     FIN_FR_R_REC_BXA_CLI.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                     FIN_FR_R_REC_BXA_CLI.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                     FIN_FR_R_REC_BXA_CLI.Variables['Opcoes'] := QuotedStr(xOpcoes);
                     FIN_FR_R_REC_BXA_CLI.PrepareReport();
                     FIN_FR_R_REC_BXA_CLI.ShowReport();
                   end;

                   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Plano de Contas' then
                    begin
                     if FileExists(PathImg) then
                      begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_BXA_PCT.FindObject('imgEmpresa1'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                      end;

                     dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_BXA_PCT.Name,xCodLme,xRevLme,nil);

                     if rTipoData = '2' then
                          FIN_FR_R_REC_BXA_PCT.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                     else
                          FIN_FR_R_REC_BXA_PCT.Variables['ft_data'] := QuotedStr('Vencimento');

                     FIN_FR_R_REC_BXA_PCT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                     FIN_FR_R_REC_BXA_PCT.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                     FIN_FR_R_REC_BXA_PCT.Variables['Opcoes'] := QuotedStr(xOpcoes);
                     FIN_FR_R_REC_BXA_PCT.PrepareReport();
                     FIN_FR_R_REC_BXA_PCT.ShowReport();
                    end;

                   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Forma de Pagamento' then
                    begin
                     if FileExists(PathImg) then
                      begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_BXA_FPG.FindObject('imgEmpresa1'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                    end;

                    dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_BXA_FPG.Name,xCodLme,xRevLme,nil);

                    if rTipoData = '2' then
                          FIN_FR_R_REC_BXA_FPG.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                     else
                          FIN_FR_R_REC_BXA_FPG.Variables['ft_data'] := QuotedStr('Vencimento');

                    FIN_FR_R_REC_BXA_FPG.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                    FIN_FR_R_REC_BXA_FPG.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                    FIN_FR_R_REC_BXA_FPG.Variables['Opcoes'] := QuotedStr(xOpcoes);
                    FIN_FR_R_REC_BXA_FPG.PrepareReport();
                    FIN_FR_R_REC_BXA_FPG.ShowReport();
                   end;


                 if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Resumo por Plano de Contas' then
                   begin
                    if FileExists(PathImg) then
                     begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_BXA_RPC.FindObject('imgEmpresa1'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                     end;

                    dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_BXA_RPC.Name,xCodLme,xRevLme,nil);
                  FIN_FR_R_REC_BXA_RPC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  FIN_FR_R_REC_BXA_RPC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  FIN_FR_R_REC_BXA_RPC.Variables['Opcoes'] := QuotedStr(xOpcoes);
                  FIN_FR_R_REC_BXA_RPC.PrepareReport();
                  FIN_FR_R_REC_BXA_RPC.ShowReport();
                 end;

                 if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06 - Resumo por Forma de Pagamento' then
                  begin
                   if FileExists(PathImg) then
                     begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_BXA_RFP.FindObject('imgEmpresa1'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                     end;

                   dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_BXA_RFP.Name,xCodLme,xRevLme,nil);
                   FIN_FR_R_REC_BXA_RFP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                   FIN_FR_R_REC_BXA_RFP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                   FIN_FR_R_REC_BXA_RFP.Variables['Opcoes'] := QuotedStr(xOpcoes);
                   FIN_FR_R_REC_BXA_RFP.PrepareReport();
                   FIN_FR_R_REC_BXA_RFP.ShowReport();
                  end;

                 if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '07 - Por Vendedor' then
                   begin
                    if FileExists(PathImg) then
                       begin
                          LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_BXA_VND.FindObject('imgEmpresa1'));
                          if Assigned(LogoEmpresa) then
                             LogoEmpresa.Picture.LoadFromFile(PathImg);
                       end;

                    dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_BXA_VND.Name,xCodLme,xRevLme,nil);

                    if rTipoData = '2' then
                          FIN_FR_R_REC_BXA_VND.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                     else
                          FIN_FR_R_REC_BXA_VND.Variables['ft_data'] := QuotedStr('Vencimento');

                    FIN_FR_R_REC_BXA_VND.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                    FIN_FR_R_REC_BXA_VND.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                    FIN_FR_R_REC_BXA_VND.Variables['Opcoes'] := QuotedStr(xOpcoes);
                    FIN_FR_R_REC_BXA_VND.PrepareReport();
                    FIN_FR_R_REC_BXA_VND.ShowReport();
                   end;

                 if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '08 - Boleto Bancário Por Cliente' then
                   begin
                     if FileExists(PathImg) then
                       begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_BXA_CNO.FindObject('imgEmpresa1'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                       end;

                     dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_BXA_CNO.Name,xCodLme,xRevLme,nil);

                     if rTipoData = '2' then
                          FIN_FR_R_REC_BXA_CNO.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                     else
                          FIN_FR_R_REC_BXA_CNO.Variables['ft_data'] := QuotedStr('Vencimento');

                     FIN_FR_R_REC_BXA_CNO.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                     FIN_FR_R_REC_BXA_CNO.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                     FIN_FR_R_REC_BXA_CNO.Variables['Opcoes'] := QuotedStr(xOpcoes);
                     FIN_FR_R_REC_BXA_CNO.PrepareReport();
                     FIN_FR_R_REC_BXA_CNO.ShowReport();
                   end;

                 if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '09 - Por Cidade' then
                   begin
                     if FileExists(PathImg) then
                       begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_REC_BXA_CID.FindObject('imgEmpresa1'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                       end;

                     dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_REC_BXA_CID.Name,xCodLme,xRevLme,nil);

                     if rTipoData = '2' then
                          FIN_FR_R_REC_BXA_CID.Variables['ft_data'] := QuotedStr('Prev. Baixa')
                     else
                          FIN_FR_R_REC_BXA_CID.Variables['ft_data'] := QuotedStr('Vencimento');

                     FIN_FR_R_REC_BXA_CID.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                     FIN_FR_R_REC_BXA_CID.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                     FIN_FR_R_REC_BXA_CID.Variables['Opcoes'] := QuotedStr(xOpcoes);
                     FIN_FR_R_REC_BXA_CID.PrepareReport();
                     FIN_FR_R_REC_BXA_CID.ShowReport();
                   end;

             end
          else
            begin
             ShowMessage('Nenhum registro foi encontrado.');
            end;
        end
       else
         if lbxRelatorios.ItemIndex = 4 then
           begin
              ShowMessage('Não existe relatorio.');
           end;
      end;
end;


procedure TFIN_FM_R_REC.FIN_FR_R_REC_ABE_CNOBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
   FIN_FR_R_REC_ABE_CNO.Variables['banco_agencia_contacorrente'] := QuotedStr(trim(FIN_CD_R_REC_ABE.FieldByName('INT_BANCO').AsString) +' /'+trim(FIN_CD_R_REC_ABE.FieldByName('INT_AGENCIA').AsString)+' /'+
                                                                                                                      trim(FIN_CD_R_REC_ABE.FieldByName('INT_CONTACORRENTE').AsString));
end;

procedure TFIN_FM_R_REC.FIN_FR_R_REC_BXA_CNOBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
   FIN_FR_R_REC_BXA_CNO.Variables['banco_agencia_contacorrente'] := QuotedStr(trim(FIN_CD_R_REC_BXA.FieldByName('INT_BANCO').AsString) +' /'+trim(FIN_CD_R_REC_BXA.FieldByName('INT_AGENCIA').AsString)+' /'+
                                                                                                                      trim(FIN_CD_R_REC_BXA.FieldByName('INT_CONTACORRENTE').AsString));
end;

procedure TFIN_FM_R_REC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_R_REC);
end;

procedure TFIN_FM_R_REC.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  lbxRelatoriosClick(self);

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

  // Cliente --------------------------------------------------------------

  // Formas de Pagamento -------------------------------------------------------
  dmGeral.BUS_CD_C_FPG.Close;
  dmGeral.BUS_CD_C_FPG.Data :=
  dmGeral.BUS_CD_C_FPG.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       dmGeral.BUS_CD_C_FPG.First;

       while not dmGeral.BUS_CD_C_FPG.eof do
          begin
            lboxFormaDisponivel.Items.Add(StrZero(dmGeral.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString);
            lboxFpgBxaDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_FPG.Next;
          end;
     end;

 dmGeral.BUS_CD_C_FPG.Close;


  // Locais de Títulos ---------------------------------------------------------
  dmGeral.BUS_CD_C_LTO.Close;
  dmGeral.BUS_CD_C_LTO.Data :=
  dmGeral.BUS_CD_C_LTO.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_LTO.IsEmpty then
     begin
       dmGeral.BUS_CD_C_LTO.First;

       while not dmGeral.BUS_CD_C_LTO.eof do
          begin
            lboxLocaisDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_C_LTO.FieldByName('ID_LOCAL_TITULO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_LTO.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_LTO.Next;
          end;
     end;

 dmGeral.BUS_CD_C_LTO.Close;

  // Planos de Contas ----------------------------------------------------------
  dmGeral.BUS_CD_C_PCT.Close;
  dmGeral.BUS_CD_C_PCT.Data :=
  dmGeral.BUS_CD_C_PCT.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PCT.First;

       while not dmGeral.BUS_CD_C_PCT.eof do
          begin
            lboxPlanosDisponiveis.Items.Add(dmGeral.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString);
            lboxPlanoBxaDisponiveis.Items.Add(dmGeral.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_PCT.Next;
          end;
     end;

  dmGeral.BUS_CD_C_PCT.Close;

  cbbPorData.Clear;
  cbbPorData.AddItem('0 - Emissão',nil);
  cbbPorData.AddItem('1 - Vencto original',nil);
  cbbPorData.AddItem('2 - Vencimento atual',nil);
  cbbPorData.ItemIndex := 0;
  tsFormaPagBxa.TabVisible := false;

  lblOf.Visible := false;
  txtOrdFaturamento.Visible := false;
  lblDadosOf.Visible := false;
  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
     begin
       lblOf.Visible := true;
       txtOrdFaturamento.Visible := true;
       lblDadosOf.Visible := true;
     end;
end;

procedure TFIN_FM_R_REC.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFIN_FM_R_REC.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_REC.lboxFormaDisponivelDblClick(Sender: TObject);
begin
  inherited;
  if lboxFormaDisponivel.ItemIndex > - 1 then
     begin
       lboxFormaSelecionada.Items.Add(lboxFormaDisponivel.Items[lboxFormaDisponivel.ItemIndex]);
       lboxFormaDisponivel.Items.Delete(lboxFormaDisponivel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_REC.lboxFormaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxFormaSelecionada.ItemIndex > -1 then
     begin
       lboxFormaDisponivel.Items.Add(lboxFormaSelecionada.Items[lboxFormaSelecionada.ItemIndex]);
       lboxFormaSelecionada.Items.Delete(lboxFormaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_REC.lboxFpgBxaDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxFpgBxaDisp.ItemIndex > - 1 then
     begin
       lboxFpgBxaSel.Items.Add(lboxFpgBxaDisp.Items[lboxFpgBxaDisp.ItemIndex]);
       lboxFpgBxaDisp.Items.Delete(lboxFpgBxaDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_REC.lboxFpgBxaSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxFpgBxaSel.ItemIndex > -1 then
   begin
     lboxFpgBxaDisp.Items.Add(lboxFpgBxaSel.Items[lboxFpgBxaSel.ItemIndex]);
     lboxFpgBxaSel.Items.Delete(lboxFpgBxaSel.ItemIndex);
   end;
end;

procedure TFIN_FM_R_REC.lboxPlanoBxaDisponiveisDblClick(Sender: TObject);
begin
  inherited;
   if lboxPlanoBxaDisponiveis.ItemIndex > - 1 then
     begin
       lboxPlanoBxaSelecionado.Items.Add(lboxPlanoBxaDisponiveis.Items[lboxPlanoBxaDisponiveis.ItemIndex]);
       lboxPlanoBxaDisponiveis.Items.Delete(lboxPlanoBxaDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_REC.lboxPlanoBxaSelecionadoDblClick(Sender: TObject);
begin
  inherited;
   if lboxPlanoBxaSelecionado.ItemIndex > -1 then
     begin
       lboxPlanoBxaDisponiveis.Items.Add(lboxPlanoBxaSelecionado.Items[lboxPlanoBxaSelecionado.ItemIndex]);
       lboxPlanoBxaSelecionado.Items.Delete(lboxPlanoBxaSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_REC.lboxCidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
        PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
        PSQ_FM_X_CID.ShowModal;
        if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxCidade,10,PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString) then
                begin
                  lboxCidade.Items.Add(PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString +
                                             ' - ' + TRIM(PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString)+'-'+PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('UF').AsString);
                end;
           end;
         PSQ_FM_X_CID.Free;
     end;
end;

procedure TFIN_FM_R_REC.lboxClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
        PSQ_FM_X_CLI.ShowModal;
        if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxCliente,6,StrZero( PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0)) then
                begin
                  lboxCliente.Items.Add(StrZero( PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0) +
                                             ' - ' +  PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_CLI.Free;
     end;
end;

procedure TFIN_FM_R_REC.lboxLocaisDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxLocaisDisponiveis.ItemIndex > - 1 then
     begin
       lboxLocalSelecionado.Items.Add(lboxLocaisDisponiveis.Items[lboxLocaisDisponiveis.ItemIndex]);
       lboxLocaisDisponiveis.Items.Delete(lboxLocaisDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_REC.lboxLocalSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxLocalSelecionado.ItemIndex > -1 then
     begin
       lboxLocaisDisponiveis.Items.Add(lboxLocalSelecionado.Items[lboxLocalSelecionado.ItemIndex]);
       lboxLocalSelecionado.Items.Delete(lboxLocalSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_REC.lboxPlanosDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxPlanosDisponiveis.ItemIndex > - 1 then
     begin
       lboxPlanoSelecionado.Items.Add(lboxPlanosDisponiveis.Items[lboxPlanosDisponiveis.ItemIndex]);
       lboxPlanosDisponiveis.Items.Delete(lboxPlanosDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_REC.lboxPlanoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxPlanoSelecionado.ItemIndex > -1 then
     begin
       lboxplanosDisponiveis.Items.Add(lboxPlanoSelecionado.Items[lboxPlanoSelecionado.ItemIndex]);
       lboxPlanoSelecionado.Items.Delete(lboxPlanoSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_REC.lboxVendedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxCliente,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0)) then
                begin
                  lboxVendedores.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TFIN_FM_R_REC.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;

   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
      begin
         lblOf.Visible := true;
         txtOrdFaturamento.Visible := true;
         lblDadosOf.Visible := true;
      end;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Geral' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');
        cbbOrdenacao.Items.Add('2 - Cliente');
      end;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Cliente' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');
      end;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Plano de Contas' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');
        cbbOrdenacao.Items.Add('2 - Cliente');
      end;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Forma de Pagamento' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');
        cbbOrdenacao.Items.Add('2 - Cliente');

        if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
           begin
              lblOf.Visible := false;
              txtOrdFaturamento.Visible := false;
              lblDadosOf.Visible := false;
           end;

      end;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04 - Por Faixa de Vencimento' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');
        cbbOrdenacao.Items.Add('2 - Cliente');

        if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
           begin
             lblOf.Visible := false;
             txtOrdFaturamento.Visible := false;
           end;

      end;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Resumo por Plano de Contas' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');
        cbbOrdenacao.Items.Add('2 - Cliente');

        if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
           begin
             lblOf.Visible := false;
             txtOrdFaturamento.Visible := false;
             lblDadosOf.Visible := false;
           end;

      end;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06 - Resumo por Forma de Pagamento' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');
        cbbOrdenacao.Items.Add('2 - Cliente');

        if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
           begin
             lblOf.Visible := false;
             txtOrdFaturamento.Visible := false;
           end;

      end;



   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '10 - Cobrança' then
      begin
        cbbOrdenacao.Items.Clear;
        cbbOrdenacao.Items.Add('0 - Emissão');
        cbbOrdenacao.Items.Add('1 - Vencimento');


          if cbbTipoRel.Items[cbbTipoRel.ItemIndex] = 'Títulos pagos' then
            begin
               cbbTipoRel.OnChange := nil;
               ShowMessage('O tipo de relatório selecionado é incompativel.');
               cbbTipoRel.ItemIndex := 0;
               cbbPorData.Clear;
               if (cbbTipoRel.ItemIndex = 0) or  (cbbTipoRel.ItemIndex = 2) then
                 begin
                  cbbPorData.AddItem('0 - Emissão',nil);
                  cbbPorData.AddItem('1 - Vencto original',nil);
                  cbbPorData.AddItem('2 - Vencimento atual',nil);
                  cbbPorData.ItemIndex := 0;
                  tsFormaPagBxa.TabVisible := false;
                 end;
               if (cbbTipoRel.ItemIndex = 1) then
                begin
                  cbbPorData.AddItem('0 - Emissão',nil);
                  cbbPorData.AddItem('1 - Vencto original',nil);
                  cbbPorData.AddItem('2 - Vencimento atual',nil);
                  cbbPorData.AddItem('3 - Pagamento',nil);
                  cbbPorData.ItemIndex := 0;
                  tsFormaPagBxa.TabVisible := true;
                end;

               cbbTipoRel.OnChange := cbbTipoRelChange;
            end;
        if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
           begin
             lblOf.Visible := false;
             txtOrdFaturamento.Visible := false;
             lblDadosOf.Visible := false;
           end;
      end;

   cbbOrdenacao.ItemIndex := 0;
end;

procedure TFIN_FM_R_REC.menuItemEmpresasClick(Sender: TObject);
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

procedure TFIN_FM_R_REC.MenuItemFormasPagamentoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxFormaDisponivel.ClearSelection;
  if lboxFormaDisponivel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxFormaDisponivel.Items.Count > 0 then
     begin
       for i := 0 to lboxFormaDisponivel.Items.Count - 1 do
           begin
             lboxFormaSelecionada.Items.Add(lboxFormaDisponivel.Items[i]);
             lboxFormaDisponivel.Items.Delete(lboxFormaDisponivel.ItemIndex);
           end;
       lboxFormaDisponivel.Items.Clear;
     end;
end;

procedure TFIN_FM_R_REC.MenuItemLocalTituloClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
   lboxLocaisDisponiveis.ClearSelection;

  if lboxLocaisDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxLocaisDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxLocaisDisponiveis.Items.Count - 1 do
           begin
             lboxLocalSelecionado.Items.Add(lboxLocaisDisponiveis.Items[i]);
             lboxLocaisDisponiveis.Items.Delete(lboxLocaisDisponiveis.ItemIndex);
           end;
       lboxLocaisDisponiveis.Items.Clear;
     end;
end;

procedure TFIN_FM_R_REC.MenuItemPlanoContaClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxPlanosDisponiveis.ClearSelection;

  if lboxPlanosDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPlanosDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxPlanosDisponiveis.Items.Count - 1 do
           begin
             lboxPlanoSelecionado.Items.Add(lboxPlanosDisponiveis.Items[i]);
             lboxPlanosDisponiveis.Items.Delete(lboxPlanosDisponiveis.ItemIndex);
           end;
       lboxPlanosDisponiveis.Items.Clear;
     end;
end;

procedure TFIN_FM_R_REC.MontarDadosABE_PPG;
begin



end;

procedure TFIN_FM_R_REC.MontarTotResumo;
var
  i, OrdemGrupo: integer;
begin

  if not cdsTempResABE_PPG.IsEmpty then
     cdsTempResABE_PPG.EmptyDataSet;

  cdsTempResABE_PPG.Close;
  cdsTempResABE_PPG.CreateDataSet;


  FIN_CD_R_REC_ABE_PPG.First;

  i := 1;

  cdsTempResABE_PPG.Insert;

  cdsTempResABE_PPGFAIXA.AsString := FIN_CD_R_REC_ABE_PPG.FieldByName('PRAZO').AsVariant;
   if cdsTempResABE_PPGFAIXA.AsString = 'MENOS DE 30 DIAS' then
      OrdemGrupo := 1;
   if cdsTempResABE_PPGFAIXA.AsString = 'DE 31 A 60 DIAS' then
      OrdemGrupo := 2;
   if cdsTempResABE_PPGFAIXA.AsString = 'DE 61 A 90 DIAS' then
      OrdemGrupo := 3;
   if cdsTempResABE_PPGFAIXA.AsString = 'DE 91 A 120 DIAS' then
      OrdemGrupo := 4;
   if cdsTempResABE_PPGFAIXA.AsString = 'DE 121 A 150 DIA' then
      OrdemGrupo := 5;
   if cdsTempResABE_PPGFAIXA.AsString = 'DE 151 A 180 DIAS' then
      OrdemGrupo := 6;
   if cdsTempResABE_PPGFAIXA.AsString = 'A PARTIR DE 181 DIAS' then
      OrdemGrupo := 7;

   cdsTempResABE_PPGOrdemGrupo.AsInteger   := OrdemGrupo;
  cdsTempResABE_PPGtotAVencer.AsCurrency     := 0;
  cdsTempResABE_PPGtotVencidos.AsCurrency    := 0;

  OrdemGrupo := 1;

  while not FIN_CD_R_REC_ABE_PPG.Eof  do
    begin

      if not (cdsTempResABE_PPG.Locate('FAIXA',trim(FIN_CD_R_REC_ABE_PPG.FieldByName('PRAZO').AsVariant),[])) then
         begin
           cdsTempResABE_PPG.Insert;
           cdsTempResABE_PPGFAIXA.AsString         := trim(FIN_CD_R_REC_ABE_PPG.FieldByName('PRAZO').AsVariant);
           cdsTempResABE_PPGtotAVencer.AsCurrency  := 0;
           cdsTempResABE_PPGtotVencidos.AsCurrency := 0;
         end;
      cdsTempResABE_PPG.edit;
       if cdsTempResABE_PPGFAIXA.AsString = 'MENOS DE 30 DIAS' then
          OrdemGrupo := 1
       else if cdsTempResABE_PPGFAIXA.AsString = 'DE 31 A 60 DIAS' then
          OrdemGrupo := 2
       else if cdsTempResABE_PPGFAIXA.AsString = 'DE 61 A 90 DIAS' then
          OrdemGrupo := 3
       else if cdsTempResABE_PPGFAIXA.AsString = 'DE 91 A 120 DIAS' then
          OrdemGrupo := 4
       else if cdsTempResABE_PPGFAIXA.AsString = 'DE 121 A 150 DIA' then
          OrdemGrupo := 5
       else if cdsTempResABE_PPGFAIXA.AsString = 'DE 151 A 180 DIAS' then
          OrdemGrupo := 6
       else if cdsTempResABE_PPGFAIXA.AsString = 'A PARTIR DE 181 DIAS' then
          OrdemGrupo := 7;

       cdsTempResABE_PPGOrdemGrupo.AsInteger   := OrdemGrupo;
      if FIN_CD_R_REC_ABE_PPG.FieldByName('DTA_VENCIMENTO').AsDateTime <= xDataSis then
         begin

           cdsTempResABE_PPGtotVencidos.AsCurrency  := cdsTempResABE_PPGtotVencidos.AsCurrency +  FIN_CD_R_REC_ABE_PPG.FieldByName('VLR_SALDO').AsCurrency;
         end
      else
         begin
           cdsTempResABE_PPGtotAVencer.AsCurrency   := cdsTempResABE_PPGtotAVencer.AsCurrency + FIN_CD_R_REC_ABE_PPG.FieldByName('VLR_SALDO').AsCurrency;
         end;
      cdsTempResABE_PPG.Post;
      FIN_CD_R_REC_ABE_PPG.Next;
    end;
  FIN_CD_R_REC_ABE_PPG.First;

  cdsTempResABE_PPG.Cancel;

  if cdsTempResABE_PPG.IsEmpty then
     cdsTempResABE_PPG.Close
  else
     begin
       cdsTempResABE_PPG.IndexFieldNames := 'OrdemGrupo';
       //cdsTempResABE_PPG.First;
     end;
end;

procedure TFIN_FM_R_REC.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesCliente,opcoesFormaPagamento,opcoesFpgBxa,opcoesPctBxa,opcoesLocalTitulo,
  opcoesPlanoContas, opcoesVendedor, opcoesCidade:string;
begin

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
                 opcoesEmpresa +'                             '+lboxEmpresaSelecionada.Items[i] + #13+#10;
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

  // Cliente --------------------------------------------------------------
  xCondCliente := '';
  if lboxCliente.Count > 0 then
     begin
       for i := 0 to lboxCliente.Count - 1 do
          begin
            if xCondCliente <> '' then
               begin
                 xCondCliente :=
                 xCondCliente+ ',' +''''+trim(copy(lboxCliente.Items[i],1,6))+'''';
                 opcoesCliente :=
                 opcoesCliente +'                             '+lboxCliente.Items[i] + #13+#10;
               end;
            if xCondCliente = '' then
               begin
                 xCondCliente :=
                 xCondCliente +''''+trim(copy(lboxCliente.Items[i],1,6))+'''';
                 opcoesCliente :=
                 opcoesCliente + lboxCliente.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
          opcoesCliente := 'Todos';
      end;

  // Formas de Pagamento ----------------------------------------------------------------
  xCondFormaPagamento := '';
  if lboxFormaSelecionada.Count > 0 then
  begin
    if lboxFormaDisponivel.Count <> 0 then
     begin
       for i := 0 to lboxFormaSelecionada.Count - 1 do
          begin
            if xCondFormaPagamento <> '' then
               begin
                 xCondFormaPagamento :=
                 xCondFormaPagamento + ',' +''''+trim(copy(lboxFormaSelecionada.Items[i],1,3))+'''';
                 opcoesFormaPagamento :=
                 opcoesFormaPagamento +'                             '+lboxFormaSelecionada.Items[i] + #13+#10;
               end;
            if xCondFormaPagamento = '' then
               begin
                 xCondFormaPagamento :=
                 xCondFormaPagamento +''''+trim(copy(lboxFormaSelecionada.Items[i],1,3))+'''';
                 opcoesFormaPagamento :=
                 opcoesFormaPagamento + lboxFormaSelecionada.Items[i] + #13+#10;
               end;
          end;
     end
      else
        begin
          opcoesFormaPagamento:= 'Todos';
        End;
  end
   else
     begin
      opcoesFormaPagamento:= 'Todos';
     end;


   // Formas de Pagamento da Baixa ----------------------------------------------------------------
  xCondFpgBxa := '';
  if lboxFpgBxaSel.Count > 0 then
  begin
    if lboxFpgBxaDisp.Count <> 0 then
     begin
       for i := 0 to lboxFpgBxaSel.Count - 1 do
          begin
            if xCondFpgBxa <> '' then
               begin
                 xCondFpgBxa :=
                 xCondFpgBxa + ',' +''''+trim(copy(lboxFpgBxaSel.Items[i],1,3))+'''';
                 opcoesFpgBxa :=
                 opcoesFpgBxa +'                             '+lboxFpgBxaSel.Items[i] + #13+#10;
               end;
            if xCondFpgBxa = '' then
               begin
                 xCondFpgBxa :=
                 xCondFpgBxa +''''+trim(copy(lboxFpgBxaSel.Items[i],1,3))+'''';
                 opcoesFpgBxa :=
                 opcoesFpgBxa + lboxFpgBxaSel.Items[i] + #13+#10;
               end;
          end;
     end
      else
        begin
          opcoesFpgBxa := 'Todos';
        End;
  end
   else
     begin
      opcoesFpgBxa := 'Todos';
     end;

  // Locais de Títulos ---------------------------------------------------------
  xCondLocalTitulo := '';
  if lboxLocalSelecionado.Count > 0 then
     begin
    if lboxLocaisDisponiveis.Count > 0 then
      begin

       for i := 0 to lboxLocalSelecionado.Count - 1 do
          begin
            if xCondLocalTitulo <> '' then
               begin
                 xCondLocalTitulo :=
                 xCondLocalTitulo + ',' +''''+trim(copy(lboxLocalSelecionado.Items[i],1,3))+'''';
                 opcoesLocalTitulo :=
                 opcoesLocalTitulo +'                             '+lboxLocalSelecionado.Items[i] + #13+#10;
               end;
            if xCondLocalTitulo = '' then
               begin
                 xCondLocalTitulo :=
                 xCondLocalTitulo +''''+trim(copy(lboxLocalSelecionado.Items[i],1,3))+'''';
                 opcoesLocalTitulo :=
                 opcoesLocalTitulo +lboxLocalSelecionado.Items[i] + #13+#10;
               end;
          end;
     end
     else
     begin
       opcoesLocalTitulo :='Todos';
     end;
     end
  else
     begin
        opcoesLocalTitulo :='Todos';
     end;

  // Planos de Contas ----------------------------------------------------------
  xCondPlanoContas := '';
  if lboxPlanoSelecionado.Count > 0 then
     begin
      if lboxPlanosDisponiveis.Count > 0 then
        begin
       for i := 0 to lboxPlanoSelecionado.Count - 1 do
          begin
            if xCondPlanoContas <> '' then
               begin
                 xCondPlanoContas :=
                 xCondPlanoContas + ',' +''''+trim(copy(lboxPlanoSelecionado.Items[i],1,9))+'''';
                 opcoesPlanoContas :=
                 opcoesPlanoContas +'                             '+lboxPlanoSelecionado.Items[i] + #13+#10;
               end;
            if xCondPlanoContas = '' then
               begin
                 xCondPlanoContas :=
                 xCondPlanoContas +''''+trim(copy(lboxPlanoSelecionado.Items[i],1,9))+'''';
                 opcoesPlanoContas :=
                 opcoesPlanoContas +lboxPlanoSelecionado.Items[i] + #13+#10;
               end;
          end;
     end
     else
      begin
        opcoesPlanoContas := 'Todos';
      end;
     end
  else
     begin
        opcoesPlanoContas := 'Todos';
     end;


   // Plano de Contas da Baixa ----------------------------------------------------------------
  xCondPctBxa := '';
  if lboxPlanoBxaSelecionado.Count > 0 then
  begin
    if lboxPlanoBxaDisponiveis.Count <> 0 then
     begin
       for i := 0 to  lboxPlanoBxaSelecionado.Count - 1 do
          begin
            if xCondPctBxa <> '' then
               begin
                 xCondPctBxa :=
                 xCondPctBxa + ',' +''''+trim(copy(lboxPlanoBxaSelecionado.Items[i],1,9))+'''';
                 opcoesPctBxa :=
                 opcoesPctBxa +'                             '+lboxPlanoBxaSelecionado.Items[i] + #13+#10;
               end;
            if xCondPctBxa = '' then
               begin
                 xCondPctBxa :=
                 xCondPctBxa +''''+trim(copy(lboxPlanoBxaSelecionado.Items[i],1,9))+'''';
                 opcoesPctBxa :=
                 opcoesPctBxa + lboxPlanoBxaSelecionado.Items[i] + #13+#10;
               end;
          end;
     end
      else
        begin
          opcoesPctBxa := 'Todos';
        End;
  end
   else
     begin
      opcoesPctBxa := 'Todos';
     end;

    // Vendedores ----------------------------------------------------------------
 xCondVendedor := '';
  if lboxVendedores.Count > 0 then
     begin
       for i := 0 to lboxVendedores.Count - 1 do
          begin
            if xCondVendedor <> '' then
               begin
                 xCondVendedor :=
                 xCondVendedor + ',' +''''+trim(copy(lboxVendedores.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor +'                             '+lboxVendedores.Items[i]+ #13+#10;
               end;
            if xCondVendedor = '' then
               begin
                 xCondVendedor :=
                 xCondVendedor +''''+trim(copy(lboxVendedores.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor + lboxVendedores.Items[i]+ #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesVendedor:= 'Todos';
    end;


   // Cidades ----------------------------------------------------------------
 xCondCidade := '';
  if lboxCidade.Count > 0 then
     begin
       for i := 0 to lboxCidade.Count - 1 do
          begin
            if xCondCidade <> '' then
               begin
                 xCondCidade :=
                 xCondCidade + ',' +''''+trim(copy(lboxCidade.Items[i],1,10))+'''';
                 opcoesCidade :=
                 opcoesCidade +'                             '+lboxCidade.Items[i]+ #13+#10;
               end;
            if xCondCidade = '' then
               begin
                 xCondCidade :=
                 xCondCidade +''''+trim(copy(lboxCidade.Items[i],1,10))+'''';
                 opcoesCidade :=
                 opcoesCidade + lboxCidade.Items[i]+ #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesCidade := 'Todos';
    end;

   // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período....................: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Por data de................: ' + cbbPorData.Text + #13+#10;
   xOpcoes := xOpcoes + 'Ordenação..................: ' + cbbOrdenacao.Text + #13+#10;
   xOpcoes := xOpcoes + 'Busca do Vendedor por......: ' + cbbBuscaVnd.Text + #13+#10;

   xOpcoes := xOpcoes + 'Empresa....................: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Cliente....................: ' + opcoesCliente+#13+#10;
   xOpcoes := xOpcoes + 'Forma de Pagamento.........: ' + opcoesFormaPagamento+#13+#10;
   if (cbbTipoRel.Items[cbbTipoRel.ItemIndex] = 'Títulos pagos') then
     begin
       xOpcoes := xOpcoes + 'Forma de Pagamento da Baixa: ' + opcoesFpgBxa+#13+#10;
       xOpcoes := xOpcoes + 'Plano de Contas da Baixa...: ' + opcoesPctBxa+#13+#10;
     end;
   xOpcoes := xOpcoes + 'Local do Título............: ' + opcoesLocalTitulo+#13+#10;
   xOpcoes := xOpcoes + 'Plano de Contas............: ' + opcoesPlanoContas+#13+#10;
   xOpcoes := xOpcoes + 'Vendedor...................: ' + opcoesVendedor+#13+#10;
   xOpcoes := xOpcoes + 'Cidade.....................: ' + opcoesCidade+#13+#10;
end;

function TFIN_FM_R_REC.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';
  if ((lbxRelatorios.ItemIndex = 4) and (cbbTipoRel.ItemIndex = 1)) then
       begin
         mens := mens +  '.Esta opção de relatório não existe para Títulos Pagos.' + #13;
       end;

  if trim(mens) <> '' then
     begin
       ShowMessage('Atenção!' + #13 + mens);
       Result := False;
       exit;
     end
  else
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
end;

procedure TFIN_FM_R_REC.txtOrdFaturamentoExit(Sender: TObject);
begin
  inherited;
  lblDadosOf.Caption := '';

  if trim(txtOrdFaturamento.Text) <> '' then
     begin
       dmGeral.BUS_CD_M_ORS.Close;
            dmGeral.BUS_CD_M_ORS.Data :=
                dmGeral.BUS_CD_M_ORS.DataRequest(
                      VarArrayOf([0,txtOrdFaturamento.text]));
       if (dmGeral.BUS_CD_M_ORS.IsEmpty) then
          begin
            Showmessage('Ordem de faturamento não encontrada.');
            txtOrdFaturamento.Text :=  '';
            txtOrdFaturamento.Setfocus;
            dmGeral.BUS_CD_M_ORS.close;
            exit;
          end;

       lblDadosOf.Caption := ' Pedido: ' + dmGeral.BUS_CD_M_ORSid_pedido.AsString + ' - ' +
                                           dmGeral.BUS_CD_M_ORSint_nomecli.AsString;

     end;
end;

function TFIN_FM_R_REC.SelecionadaEmpresa: Boolean;
begin

end;

end.
