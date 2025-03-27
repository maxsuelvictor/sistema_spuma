unit FIN_UN_R_OBR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, frxExportXLS, frxClass, frxExportPDF, frxDBSet, Data.DB,
  Datasnap.DBClient, Vcl.Menus;

type
  TFIN_FM_R_OBR = class(TPAD_FM_X_REL)
    Label1: TLabel;
    Label2: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsFornecedores: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxFornecedores: TListBox;
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
    tsCentroCusto: TTabSheet;
    lblCentroCustoDisponiveis: TLabel;
    lblCentroCustoSelecionado: TLabel;
    lboxCentroCustoSelecionado: TListBox;
    lboxCentroCustoDisponiveis: TListBox;
    tsObra: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    lboxObraDisp: TListBox;
    lboxObraSel: TListBox;
    FIN_DB_R_OBR_ABE: TfrxDBDataset;
    FIN_PD_R_OBR_ABE: TfrxPDFExport;
    FIN_XL_R_OBR_ABE: TfrxXLSExport;
    FIN_CD_R_OBR_ABE: TClientDataSet;
    FIN_CD_R_OBR_ABEid_empresa: TIntegerField;
    FIN_CD_R_OBR_ABEnum_parcela: TWideStringField;
    FIN_CD_R_OBR_ABEid_forma_pag: TIntegerField;
    FIN_CD_R_OBR_ABEdta_emissao: TDateField;
    FIN_CD_R_OBR_ABEdta_vencimento: TDateField;
    FIN_CD_R_OBR_ABEid_fornecedor: TIntegerField;
    FIN_CD_R_OBR_ABEid_local_titulo: TIntegerField;
    FIN_CD_R_OBR_ABEid_plano: TWideStringField;
    FIN_CD_R_OBR_ABEid_ccusto: TIntegerField;
    FIN_CD_R_OBR_ABEid_obra: TIntegerField;
    FIN_CD_R_OBR_ABEint_nomefor: TWideStringField;
    FIN_CD_R_OBR_ABEint_nomefpg: TWideStringField;
    FIN_CD_R_OBR_ABEint_nomelto: TWideStringField;
    FIN_CD_R_OBR_ABEint_nomepct: TWideStringField;
    FIN_CD_R_OBR_ABEint_nomeccu: TWideStringField;
    FIN_CD_R_OBR_ABEint_nomeobr: TWideStringField;
    FIN_CD_R_OBR_ABEvlr_saldo: TFMTBCDField;
    FIN_CD_R_OBR_ABEvlr_parcela: TFMTBCDField;
    FIN_CD_R_OBR_ABEhistorico: TWideStringField;
    FIN_CD_R_OBR_ABEprazo: TWideMemoField;
    FIN_CD_R_OBR_ABEint_atraso: TIntegerField;
    FIN_CD_R_OBR_ABEint_vlr_corrigido: TFloatField;
    FIN_CD_R_OBR_ABEint_vlr_juros: TFloatField;
    Label5: TLabel;
    cbbTipoRel: TComboBox;
    Label4: TLabel;
    cbbOrdenacao: TComboBox;
    Label3: TLabel;
    cbbPorData: TComboBox;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmSelPlanosConta: TPopupMenu;
    MenuItemPlanoConta: TMenuItem;
    pmSelObra: TPopupMenu;
    btnSelObra: TMenuItem;
    pmExcluirObra: TPopupMenu;
    btnRemoverObra: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmRemoverTodosPlanoContas: TPopupMenu;
    btnRemoverRegistros: TMenuItem;
    pmSelFormasPagamento: TPopupMenu;
    MenuItemFormasPagamento: TMenuItem;
    pmSelCentrosCusto: TPopupMenu;
    MenuItemCentroCusto: TMenuItem;
    pmExcluirFornecedor: TPopupMenu;
    btnRemoverRegistroFornecedor: TMenuItem;
    pmSelLocaisTitulo: TPopupMenu;
    MenuItemLocalTitulo: TMenuItem;
    pmRemoverTodosCentroCusto: TPopupMenu;
    btnRemoverTodosCentroCusto: TMenuItem;
    pmRemoverTodosLocalTitulo: TPopupMenu;
    btnRemoverTodosLocalTitulo: TMenuItem;
    pmRemoverTodosFormaPag: TPopupMenu;
    btnRemoverTodosFormaPag: TMenuItem;
    FIN_FR_R_OBR_ABE_GER: TfrxReport;
    FIN_FR_R_OBR_BXA_GER: TfrxReport;
    FIN_FR_R_OBR_TOT_GER: TfrxReport;
    FIN_FR_R_OBR_ABE_RES: TfrxReport;
    FIN_FR_R_OBR_BXA_RES: TfrxReport;
    FIN_FR_R_OBR_TOT_RES: TfrxReport;
    FIN_CD_R_OBR_BXA: TClientDataSet;
    FIN_CD_R_OBR_BXAint_substituicao: TBooleanField;
    FIN_CD_R_OBR_BXAid_titulo: TIntegerField;
    FIN_CD_R_OBR_BXAid_baixa: TIntegerField;
    FIN_CD_R_OBR_BXAdta_pagamento: TDateField;
    FIN_CD_R_OBR_BXAvlr_pagamento: TFMTBCDField;
    FIN_CD_R_OBR_BXAper_juros: TFMTBCDField;
    FIN_CD_R_OBR_BXAvlr_juros: TFMTBCDField;
    FIN_CD_R_OBR_BXAvlr_desconto: TFMTBCDField;
    FIN_CD_R_OBR_BXAhistorico: TWideStringField;
    FIN_CD_R_OBR_BXAid_forma_pag: TIntegerField;
    FIN_CD_R_OBR_BXAid_plano: TWideStringField;
    FIN_CD_R_OBR_BXAid_plano_juros: TWideStringField;
    FIN_CD_R_OBR_BXAchp_vlr_anterior: TFMTBCDField;
    FIN_CD_R_OBR_BXAid_responsavel: TIntegerField;
    FIN_CD_R_OBR_BXAid_ccusto: TIntegerField;
    FIN_CD_R_OBR_BXAid_plano_desconto: TWideStringField;
    FIN_CD_R_OBR_BXAvlr_multa: TFMTBCDField;
    FIN_CD_R_OBR_BXAid_abertura: TIntegerField;
    FIN_CD_R_OBR_BXAvlr_cred_utilizado: TFMTBCDField;
    FIN_CD_R_OBR_BXAcom_substituicao: TBooleanField;
    FIN_CD_R_OBR_BXAid_empresa_bxa: TIntegerField;
    FIN_CD_R_OBR_BXAid_brd: TIntegerField;
    FIN_CD_R_OBR_BXAid_fornecedor: TIntegerField;
    FIN_CD_R_OBR_BXAvlr_titulo: TFMTBCDField;
    FIN_CD_R_OBR_BXAnum_parcela: TWideStringField;
    FIN_CD_R_OBR_BXAdta_emissao: TDateField;
    FIN_CD_R_OBR_BXAdta_vencimento: TDateField;
    FIN_CD_R_OBR_BXAid_obra: TIntegerField;
    FIN_CD_R_OBR_BXAint_nomefor: TWideStringField;
    FIN_CD_R_OBR_BXAint_nomefpg: TWideStringField;
    FIN_CD_R_OBR_BXAint_nomepct: TWideStringField;
    FIN_CD_R_OBR_BXAint_nomeccu: TWideStringField;
    FIN_CD_R_OBR_BXAint_nomeobr: TWideStringField;
    FIN_DB_R_OBR_BXA: TfrxDBDataset;
    FIN_CD_R_OBR_CXA: TClientDataSet;
    FIN_CD_R_OBR_CXAdeb_cre: TIntegerField;
    FIN_CD_R_OBR_CXAdta_movimento: TDateField;
    FIN_CD_R_OBR_CXAnum_doc: TIntegerField;
    FIN_CD_R_OBR_CXAsigla: TWideStringField;
    FIN_CD_R_OBR_CXAid_plano: TWideStringField;
    FIN_CD_R_OBR_CXAid_tipo_financeiro: TIntegerField;
    FIN_CD_R_OBR_CXAhistorico: TWideStringField;
    FIN_CD_R_OBR_CXAvlr_creditodia: TFMTBCDField;
    FIN_CD_R_OBR_CXAvlr_debitodia: TFMTBCDField;
    FIN_CD_R_OBR_CXAvlr_saldodia: TFMTBCDField;
    FIN_CD_R_OBR_CXAvlr_acumulado: TFMTBCDField;
    FIN_DB_R_OBR_CXA: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbbTipoRelChange(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxFormaDisponivelDblClick(Sender: TObject);
    procedure lboxFormaSelecionadaDblClick(Sender: TObject);
    procedure lboxLocaisDisponiveisDblClick(Sender: TObject);
    procedure lboxLocalSelecionadoDblClick(Sender: TObject);
    procedure lboxPlanosDisponiveisDblClick(Sender: TObject);
    procedure lboxPlanoSelecionadoDblClick(Sender: TObject);
    procedure lboxCentroCustoDisponiveisDblClick(Sender: TObject);
    procedure lboxCentroCustoSelecionadoDblClick(Sender: TObject);
    procedure lboxObraDispDblClick(Sender: TObject);
    procedure lboxObraSelDblClick(Sender: TObject);
    procedure btnSelObraClick(Sender: TObject);
    procedure btnRemoverObraClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverRegistrosClick(Sender: TObject);
    procedure MenuItemFormasPagamentoClick(Sender: TObject);
    procedure MenuItemCentroCustoClick(Sender: TObject);
    procedure btnRemoverTodosCentroCustoClick(Sender: TObject);
    procedure MenuItemLocalTituloClick(Sender: TObject);
    procedure btnRemoverRegistroFornecedorClick(Sender: TObject);
    procedure btnRemoverTodosLocalTituloClick(Sender: TObject);
    procedure btnRemoverTodosFormaPagClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;
    var
      xOpcoes, xCondEmpresa, xCondFornecedor, xCondFormaPagamento,
      xCondLocalTitulo, xCondPlanoContas, xCondCentroCusto,xCondObra: string;
  public
    { Public declarations }
  end;

var
  FIN_FM_R_OBR: TFIN_FM_R_OBR;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes, enFunc, PSQ_UN_X_FOR;

procedure TFIN_FM_R_OBR.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TFIN_FM_R_OBR.btnRemoverObraClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxObraSel.ClearSelection;

  if lboxObraSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxObraSel.Items.Count > 0 then
     begin
       for i := 0 to lboxObraSel.Items.Count - 1 do
           begin
             lboxObraDisp.Items.Add(lboxObraSel.Items[i]);
             lboxObraSel.Items.Delete(lboxObraSel.ItemIndex);
           end;
       lboxObraSel.Items.Clear;
     end;
end;

procedure TFIN_FM_R_OBR.btnRemoverRegistroFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxFornecedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedores.DeleteSelected;
end;

procedure TFIN_FM_R_OBR.btnRemoverRegistrosClick(Sender: TObject);
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
procedure TFIN_FM_R_OBR.btnRemoverTodosCentroCustoClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxCentroCustoSelecionado.ClearSelection;

  if lboxCentroCustoSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCentroCustoSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxCentroCustoSelecionado.Items.Count - 1 do
           begin
             lboxCentroCustoDisponiveis.Items.Add(lboxCentroCustoSelecionado.Items[i]);
             lboxCentroCustoSelecionado.Items.Delete(lboxCentroCustoSelecionado.ItemIndex);
           end;
       lboxCentroCustoSelecionado.Items.Clear;
     end;
end;

procedure TFIN_FM_R_OBR.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFIN_FM_R_OBR.btnRemoverTodosFormaPagClick(Sender: TObject);
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

procedure TFIN_FM_R_OBR.btnRemoverTodosLocalTituloClick(Sender: TObject);
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

procedure TFIN_FM_R_OBR.btnSelObraClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxObraDisp.ClearSelection;
  if lboxObraDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxObraDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxObraDisp.Items.Count - 1 do
           begin
             lboxObraSel.Items.Add(lboxObraDisp.Items[i]);
             lboxObraDisp.Items.Delete(lboxObraDisp.ItemIndex);
           end;
       lboxObraDisp.Items.Clear;
     end;
end;

procedure TFIN_FM_R_OBR.cbbTipoRelChange(Sender: TObject);
begin
  inherited;
  cbbPorData.Clear;
  if (cbbTipoRel.ItemIndex = 0) then
    begin
      cbbPorData.AddItem('0 - Emissão',nil);
      cbbPorData.AddItem('1 - Vencimento',nil);
      cbbPorData.AddItem('2 - Prev. de Baixa',nil);
      cbbPorData.AddItem('3 - Lançamento',nil);
      cbbPorData.ItemIndex := 0;
    end;
  if (cbbTipoRel.ItemIndex = 1) then
    begin
      cbbPorData.AddItem('0 - Emissão',nil);
      cbbPorData.AddItem('1 - Vencimento',nil);
      cbbPorData.AddItem('2 - Prev. de Baixa',nil);
      cbbPorData.AddItem('3 - Lançamento',nil);
      cbbPorData.AddItem('4 - Pagamento',nil);
      cbbPorData.ItemIndex := 0;
    end;
  if (cbbTipoRel.ItemIndex = 2) then
    begin
      cbbPorData.AddItem('0 - Emissão',nil);
      cbbPorData.AddItem('1 - Vencimento',nil);
      cbbPorData.AddItem('2 - Prev. de Baixa',nil);
      cbbPorData.ItemIndex := 0;
    end;
end;

procedure TFIN_FM_R_OBR.ExibirRel;
Var
  rTipoData, rDtaIni, rDtaFin, rOrdenacao, PathImg: String;
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

  // Ordenação
  rOrdenacao := copy(cbbOrdenacao.Text,1,1);

  PreencherCondicao;

  if cbbTipoRel.ItemIndex = 0 then
    begin
      FIN_CD_R_OBR_ABE.Active:= False;
      FIN_CD_R_OBR_ABE.Close;
      FIN_CD_R_OBR_ABE.Data :=
        FIN_CD_R_OBR_ABE.DataRequest(
          VarArrayOf([rTipoData, rDtaIni, rDtaFin, xCondEmpresa, xCondFornecedor, xCondFormaPagamento,
            xCondLocalTitulo, xCondPlanoContas, xCondCentroCusto,xCondObra, rOrdenacao,8]));

      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

      if not FIN_CD_R_OBR_ABE.IsEmpty then
        begin
          if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '0 - Analítico' then
            begin
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(FIN_FR_R_OBR_ABE_GER.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;

              dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_OBR_ABE_GER.Name,xCodLme,xRevLme,nil);

              FIN_FR_R_OBR_ABE_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              FIN_FR_R_OBR_ABE_GER.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              FIN_FR_R_OBR_ABE_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
              FIN_FR_R_OBR_ABE_GER.PrepareReport();
              FIN_FR_R_OBR_ABE_GER.ShowReport();
            end;

          if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '1 - Sintético' then
            begin
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(FIN_FR_R_OBR_ABE_RES.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;

              dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_OBR_ABE_RES.Name,xCodLme,xRevLme,nil);

              FIN_FR_R_OBR_ABE_RES.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              FIN_FR_R_OBR_ABE_RES.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              FIN_FR_R_OBR_ABE_RES.Variables['Opcoes'] := QuotedStr(xOpcoes);
              FIN_FR_R_OBR_ABE_RES.PrepareReport();
              FIN_FR_R_OBR_ABE_RES.ShowReport();
            end;
        end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;
    end
  else
    begin
      if cbbTipoRel.ItemIndex = 1 then
        begin
          FIN_CD_R_OBR_BXA.Active := False;
          FIN_CD_R_OBR_BXA.Close;
          FIN_CD_R_OBR_BXA.Data :=
            FIN_CD_R_OBR_BXA.DataRequest(
              VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondFornecedor, xCondFormaPagamento,
                xCondPlanoContas,xCondCentroCusto,xCondObra,rOrdenacao,7,rTipoData]));

          if not FIN_CD_R_OBR_BXA.IsEmpty then
            begin
              PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

              if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '0 - Analítico' then
                begin
                  FIN_CD_R_OBR_CXA.Close;
                  FIN_CD_R_OBR_CXA.Data :=
                    FIN_CD_R_OBR_CXA.DataRequest(VarArrayOf([rDtaIni, rDtaFin,dmGeral.BUS_CD_C_CXA_BCOid_conta.Text]));
                  if FileExists(PathImg) then
                   begin
                     LogoEmpresa := TfrxPictureView(FIN_FR_R_OBR_BXA_GER.FindObject('imgEmpresa9'));
                     if Assigned(LogoEmpresa) then
                         LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;

                  dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_OBR_BXA_GER.Name,xCodLme,xRevLme,nil);
                  FIN_FR_R_OBR_BXA_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  FIN_FR_R_OBR_BXA_GER.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  FIN_FR_R_OBR_BXA_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
                  FIN_FR_R_OBR_BXA_GER.PrepareReport();
                  FIN_FR_R_OBR_BXA_GER.ShowReport();
                end;

              if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '1 - Sintético' then
                begin
                  FIN_CD_R_OBR_CXA.Close;
                  FIN_CD_R_OBR_CXA.Data :=
                    FIN_CD_R_OBR_CXA.DataRequest(VarArrayOf([rDtaIni, rDtaFin,dmGeral.BUS_CD_C_CXA_BCOid_conta.Text]));
                  if FileExists(PathImg) then
                   begin
                     LogoEmpresa := TfrxPictureView(FIN_FR_R_OBR_BXA_RES.FindObject('imgEmpresa9'));
                     if Assigned(LogoEmpresa) then
                         LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;

                  dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_OBR_BXA_RES.Name,xCodLme,xRevLme,nil);
                  FIN_FR_R_OBR_BXA_RES.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  FIN_FR_R_OBR_BXA_RES.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  FIN_FR_R_OBR_BXA_RES.Variables['Opcoes'] := QuotedStr(xOpcoes);
                  FIN_FR_R_OBR_BXA_RES.PrepareReport();
                  FIN_FR_R_OBR_BXA_RES.ShowReport();
                end;
            end
          else
            begin
              ShowMessage('Nenhum registro foi encontrado.');
            end;
        end
      else
        begin
          if cbbTipoRel.ItemIndex = 2 then
            begin
              FIN_CD_R_OBR_BXA.Active := False;
              FIN_CD_R_OBR_BXA.Close;
              FIN_CD_R_OBR_BXA.Data :=
                FIN_CD_R_OBR_BXA.DataRequest(
                    VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondFornecedor, xCondFormaPagamento,
                                xCondPlanoContas,xCondCentroCusto,xCondObra,rOrdenacao, 7,rTipoData]));

              FIN_CD_R_OBR_ABE.Active:= False;
              FIN_CD_R_OBR_ABE.Close;
              FIN_CD_R_OBR_ABE.Data :=
                FIN_CD_R_OBR_ABE.DataRequest(
                      VarArrayOf([rTipoData, rDtaIni, rDtaFin, xCondEmpresa, xCondFornecedor, xCondFormaPagamento,
                                  xCondLocalTitulo, xCondPlanoContas, xCondCentroCusto,xCondObra, rOrdenacao, 8]));

              if (not FIN_CD_R_OBR_BXA.IsEmpty) or (not FIN_CD_R_OBR_ABE.IsEmpty) then
                begin
                  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '0 - Analítico' then
                    begin
                      if FileExists(PathImg) then
                       begin
                         LogoEmpresa := TfrxPictureView(FIN_FR_R_OBR_TOT_GER.FindObject('imgEmpresa9'));
                         if Assigned(LogoEmpresa) then
                             LogoEmpresa.Picture.LoadFromFile(PathImg);
                       end;

                      dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_OBR_TOT_GER.Name,xCodLme,xRevLme,nil);
                      FIN_FR_R_OBR_TOT_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                      FIN_FR_R_OBR_TOT_GER.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                      FIN_FR_R_OBR_TOT_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
                      FIN_FR_R_OBR_TOT_GER.PrepareReport();
                      FIN_FR_R_OBR_TOT_GER.ShowReport();
                    end;

                  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '1 - Sintético' then
                    begin
                      if FileExists(PathImg) then
                       begin
                         LogoEmpresa := TfrxPictureView(FIN_FR_R_OBR_TOT_RES.FindObject('imgEmpresa9'));
                         if Assigned(LogoEmpresa) then
                             LogoEmpresa.Picture.LoadFromFile(PathImg);
                       end;

                      dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_OBR_TOT_RES.Name,xCodLme,xRevLme,nil);
                      FIN_FR_R_OBR_TOT_RES.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                      FIN_FR_R_OBR_TOT_RES.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                      FIN_FR_R_OBR_TOT_RES.Variables['Opcoes'] := QuotedStr(xOpcoes);
                      FIN_FR_R_OBR_TOT_RES.PrepareReport();
                      FIN_FR_R_OBR_TOT_RES.ShowReport();
                    end;
                end
              else
                begin
                  ShowMessage('Nenhum registro foi encontrado.');
                end;
            end;
        end;
    end;
end;

procedure TFIN_FM_R_OBR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_R_OBR);
end;

procedure TFIN_FM_R_OBR.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;

  tsObra.TabVisible := false;
  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean=True then
    begin
     tsObra.TabVisible := true;
    end;

  dmGeral.BUS_CD_C_CXA_BCO.Close;
  dmGeral.BUS_CD_C_CXA_BCO.Data :=
          dmGeral.BUS_CD_C_CXA_BCO.DataRequest(VarArrayOf([3,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger]));

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

  // Fornecedores --------------------------------------------------------------

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
            dmGeral.BUS_CD_C_PCT.Next;
          end;
     end;

 dmGeral.BUS_CD_C_PCT.Close;

  // Centros de Custo ----------------------------------------------------------


  dmGeral.BUS_CD_C_CCU.Close;
  dmGeral.BUS_CD_C_CCU.Data :=
  dmGeral.BUS_CD_C_CCU.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_CCU.IsEmpty then
     begin
       dmGeral.BUS_CD_C_CCU.First;

       while not dmGeral.BUS_CD_C_CCU.eof do
          begin
            lboxCentroCustoDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_C_CCU.FieldByName('ID_CCUSTO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_CCU.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_CCU.Next;
          end;
     end;

 dmGeral.BUS_CD_C_CCU.Close;


   // Obra -------------------------------------------------------
  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean=True then
      begin

        dmGeral.BUS_CD_C_OBR.Close;
        dmGeral.BUS_CD_C_OBR.Data :=
        dmGeral.BUS_CD_C_OBR.DataRequest(
                VarArrayOf([1, '%','']));

       if not dmGeral.BUS_CD_C_OBR.IsEmpty then
           begin
             dmGeral.BUS_CD_C_OBR.First;

             while not dmGeral.BUS_CD_C_OBR.eof do
                begin
                  lboxObraDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_OBR.FieldByName('ID_OBRA').AsFloat,6,0) +
                                          ' - ' + dmGeral.BUS_CD_C_OBR.FieldByName('DESCRICAO').AsString);
                  dmGeral.BUS_CD_C_OBR.Next;
                end;
           end;
         dmGeral.BUS_CD_C_OBR.Close;
      end;
end;

procedure TFIN_FM_R_OBR.lboxCentroCustoDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxCentroCustoDisponiveis.ItemIndex > - 1 then
     begin
       lboxCentroCustoSelecionado.Items.Add(lboxCentroCustoDisponiveis.Items[lboxCentroCustoDisponiveis.ItemIndex]);
       lboxCentroCustoDisponiveis.Items.Delete(lboxCentroCustoDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_OBR.lboxCentroCustoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxCentroCustoSelecionado.ItemIndex > -1 then
     begin
       lboxCentroCustoDisponiveis.Items.Add(lboxCentroCustoSelecionado.Items[lboxCentroCustoSelecionado.ItemIndex]);
       lboxCentroCustoSelecionado.Items.Delete(lboxCentroCustoSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_OBR.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFIN_FM_R_OBR.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_OBR.lboxFormaDisponivelDblClick(Sender: TObject);
begin
  inherited;
  if lboxFormaDisponivel.ItemIndex > - 1 then
     begin
       lboxFormaSelecionada.Items.Add(lboxFormaDisponivel.Items[lboxFormaDisponivel.ItemIndex]);
       lboxFormaDisponivel.Items.Delete(lboxFormaDisponivel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_OBR.lboxFormaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxFormaSelecionada.ItemIndex > -1 then
     begin
       lboxFormaDisponivel.Items.Add(lboxFormaSelecionada.Items[lboxFormaSelecionada.ItemIndex]);
       lboxFormaSelecionada.Items.Delete(lboxFormaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_OBR.lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFornecedores,6,StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0)) then
                begin
                  lboxFornecedores.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TFIN_FM_R_OBR.lboxLocaisDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxLocaisDisponiveis.ItemIndex > - 1 then
     begin
       lboxLocalSelecionado.Items.Add(lboxLocaisDisponiveis.Items[lboxLocaisDisponiveis.ItemIndex]);
       lboxLocaisDisponiveis.Items.Delete(lboxLocaisDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_OBR.lboxLocalSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxLocalSelecionado.ItemIndex > -1 then
     begin
       lboxLocaisDisponiveis.Items.Add(lboxLocalSelecionado.Items[lboxLocalSelecionado.ItemIndex]);
       lboxLocalSelecionado.Items.Delete(lboxLocalSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_OBR.lboxObraDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxObraDisp.ItemIndex > - 1 then
     begin
       lboxObraSel.Items.Add(lboxObraDisp.Items[lboxObraDisp.ItemIndex]);
       lboxObraDisp.Items.Delete(lboxObraDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_OBR.lboxObraSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxObraSel.ItemIndex > -1 then
     begin
       lboxObraDisp.Items.Add(lboxObraSel.Items[lboxObraSel.ItemIndex]);
       lboxObraSel.Items.Delete(lboxObraSel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_OBR.lboxPlanosDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxplanosDisponiveis.ItemIndex > -1 then
     begin
       lboxPlanoSelecionado.Items.Add(lboxplanosDisponiveis.Items[lboxplanosDisponiveis.ItemIndex]);
       lboxplanosDisponiveis.Items.Delete(lboxplanosDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_OBR.lboxPlanoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxPlanoSelecionado.ItemIndex > -1 then
     begin
       lboxplanosDisponiveis.Items.Add(lboxPlanoSelecionado.Items[lboxPlanoSelecionado.ItemIndex]);
       lboxPlanoSelecionado.Items.Delete(lboxPlanoSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_OBR.MenuItemCentroCustoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxCentroCustoDisponiveis.ClearSelection;
  if lboxCentroCustoDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCentroCustoDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxCentroCustoDisponiveis.Items.Count - 1 do
           begin
             lboxCentroCustoSelecionado.Items.Add(lboxCentroCustoDisponiveis.Items[i]);
             lboxCentroCustoDisponiveis.Items.Delete(lboxCentroCustoDisponiveis.ItemIndex);
           end;
       lboxCentroCustoDisponiveis.Items.Clear;
     end;
end;

procedure TFIN_FM_R_OBR.menuItemEmpresasClick(Sender: TObject);
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

procedure TFIN_FM_R_OBR.MenuItemFormasPagamentoClick(Sender: TObject);
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

procedure TFIN_FM_R_OBR.MenuItemLocalTituloClick(Sender: TObject);
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

procedure TFIN_FM_R_OBR.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesFornecedor,opcoesFormaPagamento,opcoesLocalTitulo,
  opcoesPlanoContas,opcoesCentroCusto, opcoesObra:string;
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

  // Fornecedores --------------------------------------------------------------
  xCondFornecedor := '';
  if lboxFornecedores.Count > 0 then
     begin
       for i := 0 to lboxFornecedores.Count - 1 do
          begin
            if xCondFornecedor <> '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor + ',' +''''+trim(copy(lboxFornecedores.Items[i],1,6))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor +'                    '+lboxFornecedores.Items[i] + #13+#10;
               end;
            if xCondFornecedor = '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor +''''+trim(copy(lboxFornecedores.Items[i],1,6))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor + lboxFornecedores.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
        opcoesFornecedor := 'Todos';
      end;

  // Formas de Pagamento ----------------------------------------------------------------
  xCondFormaPagamento := '';
  if lboxFormaSelecionada.Count > 0 then
     begin
      if lboxFormaDisponivel.Count > 0 then
        begin
         for i := 0 to lboxFormaSelecionada.Count - 1 do
          begin
            if xCondFormaPagamento <> '' then
               begin
                 xCondFormaPagamento :=
                 xCondFormaPagamento + ',' +''''+trim(copy(lboxFormaSelecionada.Items[i],1,3))+'''';
                 opcoesFormaPagamento :=
                 opcoesFormaPagamento +'                    '+lboxFormaSelecionada.Items[i] + #13+#10;
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
                 opcoesLocalTitulo +'                    '+lboxLocalSelecionado.Items[i] + #13+#10;
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
                 opcoesPlanoContas +'                    '+lboxPlanoSelecionado.Items[i] + #13+#10;
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

  // Centros de Custos ---------------------------------------------------------
  xCondCentroCusto := '';
  if lboxCentroCustoSelecionado.Count > 0 then
     begin
       if lboxCentroCustoDisponiveis.Count > 0 then
     begin

       for i := 0 to lboxCentroCustoSelecionado.Count - 1 do
          begin
            if xCondCentroCusto <> '' then
               begin
                 xCondCentroCusto :=
                 xCondCentroCusto + ',' +''''+trim(copy(lboxCentroCustoSelecionado.Items[i],1,3))+'''';
                 opcoesCentroCusto :=
                 opcoesCentroCusto +'                    '+lboxCentroCustoSelecionado.Items[i] + #13+#10;
               end;
            if xCondCentroCusto = '' then
               begin
                 xCondCentroCusto :=
                 xCondCentroCusto +''''+trim(copy(lboxCentroCustoSelecionado.Items[i],1,3))+'''';
                 opcoesCentroCusto :=
                 opcoesCentroCusto +lboxCentroCustoSelecionado.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
        opcoesCentroCusto :=  'Todos';
     end;
     end
   else
     begin
        opcoesCentroCusto :=  'Todos';
     end;


   // Obra ----------------------------------------------------------------
  xCondObra := '';
  if lboxObraSel.Count > 0 then
     begin
         for i := 0 to lboxObraSel.Count - 1 do
          begin
            if xCondObra <> '' then
               begin
                 xCondObra :=
                 xCondObra + ',' +''''+trim(copy(lboxObraSel.Items[i],1,6))+'''';
                 opcoesObra :=
                 opcoesObra +'                    '+lboxObraSel.Items[i] + #13+#10;
               end;
            if xCondObra = '' then
               begin
                 xCondObra :=
                 xCondObra +''''+trim(copy(lboxObraSel.Items[i],1,6))+'''';
                 opcoesObra :=
                 opcoesObra + lboxObraSel.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
       opcoesObra:= 'Todos';
     end;


  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Por data de.......: ' + cbbPorData.Text + #13+#10;
   xOpcoes := xOpcoes + 'Ordenação.........: ' + cbbOrdenacao.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Fornecedor........: ' + opcoesFornecedor+#13+#10;
   xOpcoes := xOpcoes + 'Forma de Pagamento: ' + opcoesFormaPagamento+#13+#10;
   xOpcoes := xOpcoes + 'Local do Título...: ' + opcoesLocalTitulo+#13+#10;
   xOpcoes := xOpcoes + 'Plano de Contas...: ' + opcoesPlanoContas+#13+#10;
   xOpcoes := xOpcoes + 'Centro de Custo...: ' + opcoesCentroCusto+#13+#10;

   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean=true then
      xOpcoes := xOpcoes + 'Obra..............: ' + opcoesObra+#13+#10;
end;

function TFIN_FM_R_OBR.TestarCampos: Boolean;
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

        if lboxObraSel.Count = 0 then
           begin
             mens := mens +  '.É necessário selecionar pelos menos 1 obra' + #13;
           end;

       if trim(mens) <> '' then
          begin
            ShowMessage('Atenção!' + #13 + mens);
            Result := False;
            exit;
          end;
     end;
end;

end.
