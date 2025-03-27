unit EST_UN_R_FIC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, frxClass, frxDBSet, frxExportPDF, frxExportXLS, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.ComCtrls, Vcl.Menus, Data.DB, Datasnap.DBClient,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TEST_FM_R_FIC = class(TPAD_FM_X_REL)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsItens: TTabSheet;
    lblSelecionarItens: TLabel;
    lboxItens: TListBox;
    tsAlmoxarifado: TTabSheet;
    lblAlmoxarifadoDisponivel: TLabel;
    lblAlmoxarifadoSelecionado: TLabel;
    lboxAlmoxarifadoSelecionado: TListBox;
    lboxAlmoxarifadoDisponivel: TListBox;
    tsTiposEstoques: TTabSheet;
    lblTiposEstoqueDisponiveis: TLabel;
    lblTiposEstoqueSelecionados: TLabel;
    lboxTiposEstoqueSelecionados: TListBox;
    lboxTiposEstoqueDisponiveis: TListBox;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    cbbImprimirCodigo: TComboBox;
    EST_XL_R_FIC: TfrxXLSExport;
    EST_PD_R_FIC: TfrxPDFExport;
    EST_DB_R_FIC: TfrxDBDataset;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmSelAlmoxarifado: TPopupMenu;
    MenuItemAlmoxarifados: TMenuItem;
    pmSelTipoEstoque: TPopupMenu;
    MenuItemTipoEstoque: TMenuItem;
    pmExcluirItem: TPopupMenu;
    btnRemoverRegistroFornecedor: TMenuItem;
    tsCor: TTabSheet;
    tsTamanho: TTabSheet;
    lboxCorDisp: TListBox;
    lboxCorSel: TListBox;
    lblCorDisp: TLabel;
    lblCorSel: TLabel;
    lboxTamDisp: TListBox;
    lboxTamSel: TListBox;
    lblTamanhoDisp: TLabel;
    lblTamanhoSel: TLabel;
    pmSelCor: TPopupMenu;
    btnSelecionaTodosCor: TMenuItem;
    pmSelTam: TPopupMenu;
    btnSelecionaTodosTam: TMenuItem;
    cdsTempFIC: TClientDataSet;
    cdsTempFICid_empresa: TIntegerField;
    cdsTempFICid_item: TIntegerField;
    cdsTempFICid_cor: TIntegerField;
    cdsTempFICint_nomecor: TStringField;
    cdsTempFICid_tamanho: TIntegerField;
    cdsTempFICint_nometam: TStringField;
    cdsTempFICid_almoxarifado: TIntegerField;
    cdsTempFICint_nomealm: TStringField;
    cdsTempFICtipo_movimento: TIntegerField;
    cdsTempFICqtde: TFloatField;
    cdsTempFICint_origem: TStringField;
    cdsTempFICint_nomeite: TStringField;
    cdsTempFICint_tipomov: TStringField;
    cdsTempFICsaldo_atual: TFloatField;
    cdsTempFICsaldo_anterior: TFloatField;
    cdsTempFICint_nometme: TStringField;
    cdsTempFICid_und_compra: TStringField;
    cdsTempFICint_nomeraz: TStringField;
    cdsTempFICint_nomefan: TStringField;
    cdsTempFICdocumento: TIntegerField;
    cdsTempFICdata: TDateField;
    EST_FR_R_FIC_EMP: TfrxReport;
    cdsTempFICcod_fabrica: TStringField;
    cdsTempFICcod_barra: TStringField;
    cdsTempFICid_fea: TIntegerField;
    EST_FR_R_FIC_ALM: TfrxReport;
    pmRemoverTodasEmpresas: TPopupMenu;
    btnRemoverTodasEmpresas: TMenuItem;
    pmRemoverTodosAlmoxarifado: TPopupMenu;
    btnRemoverTodosAlmoxarifado: TMenuItem;
    pmRemoverTodosTipoEstoque: TPopupMenu;
    btnRemoverTodosTipoEstoque: TMenuItem;
    pmRemoverTodasCores: TPopupMenu;
    btnRemoverTodasCores: TMenuItem;
    pmRemoverTodosTamanhos: TPopupMenu;
    btnRemoverTodosTamanhos: TMenuItem;
    cdsTempFICnum_lote: TStringField;
    EST_CD_R_FIC: TClientDataSet;
    cdsTempFICdesc_cid: TStringField;
    cdsTempFICuf: TStringField;
    cdsTempFICcod_cid: TStringField;
    EST_CD_R_FICid_empresa: TIntegerField;
    EST_CD_R_FICint_nomeraz: TWideStringField;
    EST_CD_R_FICint_nomefan: TWideStringField;
    EST_CD_R_FICid_fea: TIntegerField;
    EST_CD_R_FICid_item: TIntegerField;
    EST_CD_R_FICcod_fabrica: TWideStringField;
    EST_CD_R_FICcod_barra: TWideStringField;
    EST_CD_R_FICint_nomeite: TWideStringField;
    EST_CD_R_FICnum_lote: TWideStringField;
    EST_CD_R_FICid_und_compra: TWideStringField;
    EST_CD_R_FICdata: TDateField;
    EST_CD_R_FICdocumento: TIntegerField;
    EST_CD_R_FICid_cor: TIntegerField;
    EST_CD_R_FICint_nomecor: TWideMemoField;
    EST_CD_R_FICid_tamanho: TIntegerField;
    EST_CD_R_FICint_nometam: TWideMemoField;
    EST_CD_R_FICid_almoxarifado: TIntegerField;
    EST_CD_R_FICint_nomealm: TWideMemoField;
    EST_CD_R_FICtipo_movimento: TIntegerField;
    EST_CD_R_FICqtde: TFloatField;
    EST_CD_R_FICint_nometme: TWideStringField;
    EST_CD_R_FICint_tipomov: TWideMemoField;
    EST_CD_R_FICint_origem: TWideMemoField;
    EST_CD_R_FICint_uf: TWideMemoField;
    EST_CD_R_FICint_desc_cid: TWideMemoField;
    EST_CD_R_FICint_cod_cid: TWideMemoField;
    EST_CD_R_FICint_nome_emi: TWideMemoField;
    EST_CD_R_FICint_vlr_unitario: TFMTBCDField;
    EST_CD_R_FICvlr_custo_medio: TFMTBCDField;
    cdsTempFICint_nome_emitente: TStringField;
    cdsTempFICint_vlr_unitario: TFloatField;
    cdsTempFICvlr_custo_medio: TFloatField;
    EST_FR_R_FIC_LOC: TfrxReport;
    EST_CD_R_FICpreco_sugerido: TFMTBCDField;
    cdsTempFICpreco_sugerido: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure lboxItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverRegistroFornecedorClick(Sender: TObject);
    procedure lboxAlmoxarifadoDisponivelDblClick(Sender: TObject);
    procedure MenuItemAlmoxarifadosClick(Sender: TObject);
    procedure lboxAlmoxarifadoSelecionadoDblClick(Sender: TObject);
    procedure lboxTiposEstoqueDisponiveisDblClick(Sender: TObject);
    procedure lboxTiposEstoqueSelecionadosDblClick(Sender: TObject);
    procedure MenuItemTipoEstoqueClick(Sender: TObject);
    procedure btnSelecionaTodosCorClick(Sender: TObject);
    procedure btnSelecionaTodosTamClick(Sender: TObject);
    procedure lboxCorDispDblClick(Sender: TObject);
    procedure lboxTamDispDblClick(Sender: TObject);
    procedure lboxCorSelDblClick(Sender: TObject);
    procedure lboxTamSelDblClick(Sender: TObject);
    procedure EST_DB_R_FICCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure EST_FR_R_FIC_EMPBeforePrint(Sender: TfrxReportComponent);
    procedure EST_FR_R_FIC_ALMBeforePrint(Sender: TfrxReportComponent);
    procedure btnRemoverTodasEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosAlmoxarifadoClick(Sender: TObject);
    procedure btnRemoverTodosTipoEstoqueClick(Sender: TObject);
    procedure btnRemoverTodasCoresClick(Sender: TObject);
    procedure btnRemoverTodosTamanhosClick(Sender: TObject);
    procedure EST_FR_R_FIC_LOCBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function VerificarUtilizacaoAlm: Boolean;
    function TestarCampos: Boolean;
    var
      xOpcoes,xCondEmp,xCondItem,xCondAlm,xCondTipoEstoque,
      xImprimirCodigo,xDataIni,xDataFin,xCondCor,xCondTam: string;
  public
    { Public declarations }
  end;

var
  EST_FM_R_FIC: TEST_FM_R_FIC;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_ITE, enConstantes;

procedure TEST_FM_R_FIC.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if VerificarUtilizacaoAlm then
    begin
    if TestarCampos then
      begin
       ExibirRel;
      end;
    end;
end;

procedure TEST_FM_R_FIC.btnRemoverRegistroFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxItens.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxItens.DeleteSelected;
end;

procedure TEST_FM_R_FIC.btnRemoverTodasCoresClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxCorSel.ClearSelection;

  if lboxCorSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCorSel.Items.Count > 0 then
     begin
       for i := 0 to lboxCorSel.Items.Count - 1 do
           begin
             lboxCorDisp.Items.Add(lboxCorSel.Items[i]);
             lboxCorSel.Items.Delete(lboxCorSel.ItemIndex);
           end;
       lboxCorSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_FIC.btnRemoverTodasEmpresasClick(Sender: TObject);
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



procedure TEST_FM_R_FIC.btnRemoverTodosAlmoxarifadoClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxAlmoxarifadoSelecionado.ClearSelection;

  if lboxAlmoxarifadoSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxAlmoxarifadoSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxAlmoxarifadoSelecionado.Items.Count - 1 do
           begin
             lboxAlmoxarifadoDisponivel.Items.Add(lboxAlmoxarifadoSelecionado.Items[i]);
             lboxAlmoxarifadoSelecionado.Items.Delete(lboxAlmoxarifadoSelecionado.ItemIndex);
           end;
       lboxAlmoxarifadoSelecionado.Items.Clear;
     end;
end;

procedure TEST_FM_R_FIC.btnRemoverTodosTamanhosClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxTamSel.ClearSelection;

  if lboxTamSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTamSel.Items.Count > 0 then
     begin
       for i := 0 to lboxTamSel.Items.Count - 1 do
           begin
             lboxTamDisp.Items.Add(lboxTamSel.Items[i]);
             lboxTamSel.Items.Delete(lboxTamSel.ItemIndex);
           end;
       lboxTamSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_FIC.btnRemoverTodosTipoEstoqueClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxTiposEstoqueSelecionados.ClearSelection;

  if lboxTiposEstoqueSelecionados.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTiposEstoqueSelecionados.Items.Count > 0 then
     begin
       for i := 0 to lboxTiposEstoqueSelecionados.Items.Count - 1 do
           begin
             lboxTiposEstoqueDisponiveis.Items.Add(lboxTiposEstoqueSelecionados.Items[i]);
             lboxTiposEstoqueSelecionados.Items.Delete(lboxTiposEstoqueSelecionados.ItemIndex);
           end;
       lboxTiposEstoqueSelecionados.Items.Clear;
     end;
end;

procedure TEST_FM_R_FIC.btnSelecionaTodosCorClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxCorDisp.ClearSelection;

  if lboxCorDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCorDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxCorDisp.Items.Count - 1 do
           begin
             lboxCorSel.Items.Add(lboxCorDisp.Items[i]);
             lboxCorDisp.Items.Delete(lboxCorDisp.ItemIndex);
           end;
       lboxCorDisp.Items.Clear;
     end;
end;

procedure TEST_FM_R_FIC.btnSelecionaTodosTamClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxTamDisp.ClearSelection;

  if lboxTamDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTamDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxTamDisp.Items.Count - 1 do
           begin
             lboxTamSel.Items.Add(lboxTamDisp.Items[i]);
             lboxTamDisp.Items.Delete(lboxTamDisp.ItemIndex);
           end;
       lboxTamDisp.Items.Clear;
     end;
end;

procedure TEST_FM_R_FIC.EST_DB_R_FICCheckEOF(Sender: TObject; var Eof: Boolean);
begin
  inherited;
  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Por Empresa' then
     begin
       case cbbImprimirCodigo.ItemIndex of
          0: EST_FR_R_FIC_EMP.Variables['CodigoItem'] := QuotedStr(EST_DB_R_FIC.DataSet.FieldByName('ID_ITEM').Text);
          1: EST_FR_R_FIC_EMP.Variables['CodigoItem'] := QuotedStr(EST_DB_R_FIC.DataSet.FieldByName('COD_BARRA').Text);
          2: EST_FR_R_FIC_EMP.Variables['CodigoItem'] := QuotedStr(EST_DB_R_FIC.DataSet.FieldByName('COD_FABRICA').Text);
       end;
     end;
  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Almoxarifado' then
     begin
       case cbbImprimirCodigo.ItemIndex of
          0: EST_FR_R_FIC_ALM.Variables['CodigoItem'] := QuotedStr(EST_DB_R_FIC.DataSet.FieldByName('ID_ITEM').Text);
          1: EST_FR_R_FIC_ALM.Variables['CodigoItem'] := QuotedStr(EST_DB_R_FIC.DataSet.FieldByName('COD_BARRA').Text);
          2: EST_FR_R_FIC_ALM.Variables['CodigoItem'] := QuotedStr(EST_DB_R_FIC.DataSet.FieldByName('COD_FABRICA').Text);
       end;
     end;
  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Localidade' then
     begin
       case cbbImprimirCodigo.ItemIndex of
          0: EST_FR_R_FIC_LOC.Variables['CodigoItem'] := QuotedStr(EST_DB_R_FIC.DataSet.FieldByName('ID_ITEM').Text);
          1: EST_FR_R_FIC_LOC.Variables['CodigoItem'] := QuotedStr(EST_DB_R_FIC.DataSet.FieldByName('COD_BARRA').Text);
          2: EST_FR_R_FIC_LOC.Variables['CodigoItem'] := QuotedStr(EST_DB_R_FIC.DataSet.FieldByName('COD_FABRICA').Text);
       end;
     end;
end;

procedure TEST_FM_R_FIC.EST_FR_R_FIC_ALMBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
    begin
       EST_FR_R_FIC_ALM.Variables['ft_usaAlmoxarifado'] := QuotedStr('True');
    end
   else
    begin
        EST_FR_R_FIC_ALM.Variables['ft_usaAlmoxarifado'] := QuotedStr('False');
    end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
   begin
      EST_FR_R_FIC_ALM.Variables['ft_usaTamanho'] := QuotedStr('True');
   end
   else
     begin
        EST_FR_R_FIC_ALM.Variables['ft_usaTamanho'] := QuotedStr('False');
     end;

   if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
    begin
       EST_FR_R_FIC_ALM.Variables['ft_usaCor'] := QuotedStr('True');
    end
   else
    begin
        EST_FR_R_FIC_ALM.Variables['ft_usaCor'] := QuotedStr('False');
    end;
end;

procedure TEST_FM_R_FIC.EST_FR_R_FIC_EMPBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
    begin
       EST_FR_R_FIC_EMP.Variables['ft_usaAlmoxarifado'] := QuotedStr('True');
    end
   else
    begin
        EST_FR_R_FIC_EMP.Variables['ft_usaAlmoxarifado'] := QuotedStr('False');
    end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
   begin
      EST_FR_R_FIC_EMP.Variables['ft_usaTamanho'] := QuotedStr('True');
   end
   else
     begin
        EST_FR_R_FIC_EMP.Variables['ft_usaTamanho'] := QuotedStr('False');
     end;

   if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
    begin
       EST_FR_R_FIC_EMP.Variables['ft_usaCor'] := QuotedStr('True');
    end
   else
    begin
        EST_FR_R_FIC_EMP.Variables['ft_usaCor'] := QuotedStr('False');
    end;


end;

procedure TEST_FM_R_FIC.EST_FR_R_FIC_LOCBeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
    begin
       EST_FR_R_FIC_LOC.Variables['ft_usaAlmoxarifado'] := QuotedStr('True');
    end
   else
    begin
        EST_FR_R_FIC_LOC.Variables['ft_usaAlmoxarifado'] := QuotedStr('False');
    end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
   begin
      EST_FR_R_FIC_LOC.Variables['ft_usaTamanho'] := QuotedStr('True');
   end
   else
     begin
        EST_FR_R_FIC_LOC.Variables['ft_usaTamanho'] := QuotedStr('False');
     end;

   if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
    begin
       EST_FR_R_FIC_LOC.Variables['ft_usaCor'] := QuotedStr('True');
    end
   else
    begin
        EST_FR_R_FIC_LOC.Variables['ft_usaCor'] := QuotedStr('False');
    end;
end;

procedure TEST_FM_R_FIC.ExibirRel;
var
  PathImg: String;
  codCor,codTam,codAlmoxarifado,codItem,codEmp:integer;
  saldo_anterior,qtde_estoque_atual:double;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   PreencherCondicao;

  {dmGeral.BUS_CD_M_EST_SLD_ANT.Close;
   dmGeral.BUS_CD_M_EST_SLD_ANT.Data :=
           dmGeral.BUS_CD_M_EST_SLD_ANT.DataRequest(
                VarArrayOf([xCondEmp, xCondTipoEstoque, xDataIni, xCondItem,
                               xCondAlm, xCondCor, xCondTam]));}

   EST_CD_R_FIC.Active:= False;
   EST_CD_R_FIC.Close;
   EST_CD_R_FIC.Data :=
           EST_CD_R_FIC.DataRequest(VarArrayOf([xCondEmp, xCondTipoEstoque, xDataIni,xDataFin, xCondItem,
                               xCondAlm, xCondCor, xCondTam]));



   if not EST_CD_R_FIC.IsEmpty then
     begin
         cdsTempFIC.Close;
         cdstempFIC.CreateDataSet;
         cdsTempFIC.Open;
         cdsTempFIC.EmptyDataSet;
         saldo_anterior := 0;
         codAlmoxarifado := 0;
         codCor := 0;
         codTam := 0;
         codItem := 0;
         codEmp := 0;
         qtde_estoque_atual := 0;
         EST_CD_R_FIC.First;
       while not EST_CD_R_FIC.Eof do
        begin
          cdsTempFIC.Insert;
          if  (codEmp <> EST_CD_R_FIC.FieldByName('ID_EMPRESA').AsInteger) OR
              (codItem <> EST_CD_R_FIC.FieldByName('ID_ITEM').AsInteger) OR
              (codAlmoxarifado <> EST_CD_R_FIC.FieldByName('ID_ALMOXARIFADO').AsInteger) OR
              (codCor <> EST_CD_R_FIC.FieldByName('ID_COR').AsInteger) OR
               (codTam <> EST_CD_R_FIC.FieldByName('ID_TAMANHO').AsInteger) then
            begin
              saldo_anterior := 0;
              qtde_estoque_atual := 0;
              codAlmoxarifado := EST_CD_R_FIC.FieldByName('ID_ALMOXARIFADO').AsInteger;
              codCor := EST_CD_R_FIC.FieldByName('ID_COR').AsInteger;
              codTam := EST_CD_R_FIC.FieldByName('ID_TAMANHO').AsInteger;
              codItem := EST_CD_R_FIC.FieldByName('ID_ITEM').AsInteger;
              codEmp :=  EST_CD_R_FIC.FieldByName('ID_EMPRESA').AsInteger;


              dmGeral.BUS_CD_M_EST_SLD_ANT.Close;
              dmGeral.BUS_CD_M_EST_SLD_ANT.Data :=
              dmGeral.BUS_CD_M_EST_SLD_ANT.DataRequest(
                VarArrayOf([EST_CD_R_FIC.FieldByName('ID_EMPRESA').TEXT,
                           xCondTipoEstoque, xDataIni,
                               EST_CD_R_FIC.FieldByName('ID_ITEM').Text,
                               EST_CD_R_FIC.FieldByName('ID_ALMOXARIFADO').Text,
                               EST_CD_R_FIC.FieldByName('ID_COR').Text,
                               EST_CD_R_FIC.FieldByName('ID_TAMANHO').Text]));

              if not dmGeral.BUS_CD_M_EST_SLD_ANT.eof then
                begin
                  saldo_anterior := dmGeral.BUS_CD_M_EST_SLD_ANT.FieldByName('SALDO_ANTERIOR').AsFloat;
                  qtde_estoque_atual := qtde_estoque_atual + saldo_anterior;
                end;



             { if dmGeral.BUS_CD_M_EST_SLD_ANT.Locate('ID_EMPRESA;ID_ITEM;ID_ALMOXARIFADO;ID_COR;ID_TAMANHO',
                                             VarArrayOf([EST_CD_R_FIC.FieldByName('ID_EMPRESA').TEXT,
                                             EST_CD_R_FIC.FieldByName('ID_ITEM').Text,
                                             EST_CD_R_FIC.FieldByName('ID_ALMOXARIFADO').Text,
                                             EST_CD_R_FIC.FieldByName('ID_COR').Text,
                                             EST_CD_R_FIC.FieldByName('ID_TAMANHO').Text]),[]) then
                begin
                  saldo_anterior := dmGeral.BUS_CD_M_EST_SLD_ANT.FieldByName('SALDO_ANTERIOR').AsFloat;
                  qtde_estoque_atual := qtde_estoque_atual + saldo_anterior;
                end; }
            end;

            if EST_CD_R_FIC.FieldByName('TIPO_MOVIMENTO').AsInteger = 0 then
              begin
                qtde_estoque_atual := qtde_estoque_atual + EST_CD_R_FIC.FieldByName('qtde').AsFloat;
              end
            else
              if EST_CD_R_FIC.FieldByName('TIPO_MOVIMENTO').AsInteger = 1 then
                begin
                   qtde_estoque_atual := qtde_estoque_atual - EST_CD_R_FIC.FieldByName('qtde').AsFloat;
                end;


            cdsTempFIC.FieldByName('ID_EMPRESA').AsInteger := EST_CD_R_FIC.FieldByName('ID_EMPRESA').AsInteger;
            cdsTempFIC.FieldByName('ID_ITEM').AsInteger := EST_CD_R_FIC.FieldByName('ID_ITEM').AsInteger;
            cdsTempFIC.FieldByName('ID_COR').AsInteger := EST_CD_R_FIC.FieldByName('ID_COR').AsInteger;
            cdsTempFIC.FieldByName('ID_TAMANHO').AsInteger := EST_CD_R_FIC.FieldByName('ID_TAMANHO').AsInteger;
            cdsTempFIC.FieldByName('ID_ALMOXARIFADO').AsInteger := EST_CD_R_FIC.FieldByName('ID_ALMOXARIFADO').AsInteger;
            cdsTempFIC.FieldByName('TIPO_MOVIMENTO').AsInteger := EST_CD_R_FIC.FieldByName('TIPO_MOVIMENTO').AsInteger;
            cdsTempFIC.FieldByName('ID_ALMOXARIFADO').AsInteger := EST_CD_R_FIC.FieldByName('ID_ALMOXARIFADO').AsInteger;
            cdsTempFIC.FieldByName('INT_NOMECOR').AsString := EST_CD_R_FIC.FieldByName('INT_NOMECOR').AsString;
            cdsTempFIC.FieldByName('INT_NOMETAM').AsString := EST_CD_R_FIC.FieldByName('INT_NOMETAM').AsString;
            cdsTempFIC.FieldByName('INT_NOMEALM').AsString := EST_CD_R_FIC.FieldByName('INT_NOMEALM').AsString;
            cdsTempFIC.FieldByName('INT_ORIGEM').AsString := EST_CD_R_FIC.FieldByName('INT_ORIGEM').AsString;
            cdsTempFIC.FieldByName('INT_NOMEITE').AsString := EST_CD_R_FIC.FieldByName('INT_NOMEITE').AsString;
            cdsTempFIC.FieldByName('INT_TIPOMOV').AsString := EST_CD_R_FIC.FieldByName('INT_TIPOMOV').AsString;
            cdsTempFIC.FieldByName('INT_NOMETME').AsString := EST_CD_R_FIC.FieldByName('INT_NOMETME').AsString;
            cdsTempFIC.FieldByName('ID_UND_COMPRA').AsString := EST_CD_R_FIC.FieldByName('ID_UND_COMPRA').AsString;
            cdsTempFIC.FieldByName('QTDE').AsFloat := EST_CD_R_FIC.FieldByName('QTDE').AsFloat;
            cdsTempFIC.FieldByName('NUM_LOTE').AsString := EST_CD_R_FIC.FieldByName('NUM_LOTE').AsString;

            cdsTempFIC.FieldByName('INT_NOMERAZ').AsString := EST_CD_R_FIC.FieldByName('INT_NOMERAZ').AsString;
            cdsTempFIC.FieldByName('INT_NOMEFAN').AsString := EST_CD_R_FIC.FieldByName('INT_NOMEFAN').AsString;
            cdsTempFIC.FieldByName('INT_NOME_EMITENTE').AsString := EST_CD_R_FIC.FieldByName('INT_NOME_EMI').AsString;
            cdsTempFIC.FieldByName('DOCUMENTO').AsInteger := EST_CD_R_FIC.FieldByName('DOCUMENTO').AsInteger;
            cdsTempFIC.FieldByName('DATA').AsDateTime := EST_CD_R_FIC.FieldByName('DATA').AsDateTime;

            cdsTempFIC.FieldByName('COD_FABRICA').AsString := EST_CD_R_FIC.FieldByName('COD_FABRICA').AsString;
            cdsTempFIC.FieldByName('COD_BARRA').AsString := EST_CD_R_FIC.FieldByName('COD_BARRA').AsString;
            cdsTempFIC.FieldByName('ID_FEA').AsInteger := EST_CD_R_FIC.FieldByName('ID_FEA').AsInteger;
            cdsTempFIC.FieldByName('INT_VLR_UNITARIO').AsCurrency := EST_CD_R_FIC.FieldByName('INT_VLR_UNITARIO').AsCurrency;
            cdsTempFIC.FieldByName('VLR_CUSTO_MEDIO').AsCurrency := EST_CD_R_FIC.FieldByName('VLR_CUSTO_MEDIO').AsCurrency;
            cdsTempFIC.FieldByName('SALDO_ATUAL').AsFloat := qtde_estoque_atual;
            cdsTempFIC.FieldByName('SALDO_ANTERIOR').AsFloat := saldo_anterior;


            cdsTempFIC.FieldByName('COD_CID').AsString := EST_CD_R_FIC.FieldByName('INT_COD_CID').AsString;
            cdsTempFIC.FieldByName('DESC_CID').AsString := EST_CD_R_FIC.FieldByName('INT_DESC_CID').AsString;
            cdsTempFIC.FieldByName('UF').AsString := EST_CD_R_FIC.FieldByName('INT_UF').AsString;
            cdsTempFIC.FieldByName('preco_sugerido').AsCurrency := EST_CD_R_FIC.FieldByName('preco_sugerido').AsCurrency;
            EST_CD_R_FIC.Next;
        end;
        EST_CD_R_FIC.Close;

        //cdsTempFIC.IndexFieldNames := 'ID_EMPRESA;ID_ITEM;ID_ALMOXARIFADO;ID_TAMANHO;ID_COR;DATA;ID_FEA';
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Por Empresa' then
          begin
            cdsTempFIC.IndexFieldNames := 'ID_EMPRESA;ID_ITEM;ID_ALMOXARIFADO;ID_TAMANHO;ID_COR;DATA;ID_FEA';
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_FIC_EMP.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_FIC_EMP.Name,xCodLme,xRevLme,nil);
            EST_FR_R_FIC_EMP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            EST_FR_R_FIC_EMP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            EST_FR_R_FIC_EMP.Variables['Opcoes'] := QuotedStr(xOpcoes);
            EST_FR_R_FIC_EMP.PrepareReport();
            EST_FR_R_FIC_EMP.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Almoxarifado' then
           begin
             cdsTempFIC.IndexFieldNames := 'ID_EMPRESA;ID_ALMOXARIFADO;ID_ITEM;ID_TAMANHO;ID_COR;DATA;ID_FEA';
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_FIC_ALM.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_FIC_ALM.Name,xCodLme,xRevLme,nil);
            EST_FR_R_FIC_ALM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            EST_FR_R_FIC_ALM.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            EST_FR_R_FIC_ALM.Variables['Opcoes'] := QuotedStr(xOpcoes);
            EST_FR_R_FIC_ALM.PrepareReport();
            EST_FR_R_FIC_ALM.ShowReport();
           end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Localidade' then
           begin
             cdsTempFIC.IndexFieldNames := 'ID_EMPRESA;UF;COD_CID;ID_ITEM;ID_ALMOXARIFADO;ID_TAMANHO;ID_COR;DATA;ID_FEA';
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_FIC_LOC.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_FIC_LOC.Name,xCodLme,xRevLme,nil);
            EST_FR_R_FIC_LOC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            EST_FR_R_FIC_LOC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            EST_FR_R_FIC_LOC.Variables['Opcoes'] := QuotedStr(xOpcoes);
            EST_FR_R_FIC_LOC.PrepareReport();
            EST_FR_R_FIC_LOC.ShowReport();
           end;
   end
   else
      begin
         ShowMessage('Nenhum registro foi encontrado.');
      end;
end;

procedure TEST_FM_R_FIC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(EST_FM_R_FIC);
end;

procedure TEST_FM_R_FIC.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  tsAlmoxarifado.TabVisible := false;
  tsCor.TabVisible := false;
  tsTamanho.TabVisible := false;
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

  // Itens ---------------------------------------------------------------------

  // Almoxarifados -------------------------------------------------------------
  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
    begin
    tsAlmoxarifado.TabVisible := true;
    dmGeral.BUS_CD_C_ALM.Close;
    dmGeral.BUS_CD_C_ALM.Data :=
    dmGeral.BUS_CD_C_ALM.DataRequest(
           VarArrayOf([1, '%']));

    if not dmGeral.BUS_CD_C_ALM.IsEmpty then
     begin
       dmGeral.BUS_CD_C_ALM.First;

       while not dmGeral.BUS_CD_C_ALM.eof do
          begin
            lboxAlmoxarifadoDisponivel.Items.Add(StrZero(dmGeral.BUS_CD_C_ALM.FieldByName('ID_ALMOXARIFADO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_ALM.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_ALM.Next;
          end;
     end;

     dmGeral.BUS_CD_C_ALM.Close;
  end;

  // Tipos de Estoque ----------------------------------------------------------
  dmGeral.BUS_CD_C_TME.Close;
  dmGeral.BUS_CD_C_TME.Data :=
  dmGeral.BUS_CD_C_TME.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_TME.IsEmpty then
     begin
       dmGeral.BUS_CD_C_TME.First;

       while not dmGeral.BUS_CD_C_TME.eof do
          begin
            lboxTiposEstoqueDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_C_TME.FieldByName('ID_TIPO_MOV_ESTOQUE').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_TME.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_TME.Next;
          end;
     end;

 dmGeral.BUS_CD_C_TME.Close;

 //Cores------------------------------------------------------------------------
  if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) then
      begin
         tsCor.TabVisible := true;
         dmGeral.BUS_CD_C_COR.Close;
         dmGeral.BUS_CD_C_COR.Data := dmGeral.BUS_CD_C_COR.DataRequest(VarArrayOf([1, '%']));

         if not dmGeral.BUS_CD_C_COR.IsEmpty then
          begin
            dmGeral.BUS_CD_C_COR.First;
            while not dmGeral.BUS_CD_C_COR.eof do
              begin
                lboxCorDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_COR.FieldByName('ID_COR').AsFloat,2,0) +
                                    ' - ' + dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString);
                dmGeral.BUS_CD_C_COR.Next;
            end;
          end;
          dmGeral.BUS_CD_C_COR.Close;
   end;

 //Tamanho----------------------------------------------------------------------
   if (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
      begin
         tsTamanho.TabVisible := true;
         dmGeral.BUS_CD_C_TAM.Close;
         dmGeral.BUS_CD_C_TAM.Data := dmGeral.BUS_CD_C_TAM.DataRequest(VarArrayOf([1, '%']));

         if not dmGeral.BUS_CD_C_TAM.IsEmpty then
          begin
            dmGeral.BUS_CD_C_TAM.First;
            while not dmGeral.BUS_CD_C_TAM.eof do
              begin
                lboxTamDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_TAM.FieldByName('ID_TAMANHO').AsFloat,2,0) +
                                    ' - ' + dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').AsString);
                dmGeral.BUS_CD_C_TAM.Next;
            end;
          end;
          dmGeral.BUS_CD_C_TAM.Close;
      end;
end;

procedure TEST_FM_R_FIC.lboxAlmoxarifadoDisponivelDblClick(Sender: TObject);
begin
  inherited;
  if lboxAlmoxarifadoDisponivel.ItemIndex > - 1 then
     begin
       lboxAlmoxarifadoSelecionado.Items.Add(lboxAlmoxarifadoDisponivel.Items[lboxAlmoxarifadoDisponivel.ItemIndex]);
       lboxAlmoxarifadoDisponivel.Items.Delete(lboxAlmoxarifadoDisponivel.ItemIndex);
     end;
end;

procedure TEST_FM_R_FIC.lboxAlmoxarifadoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxAlmoxarifadoSelecionado.ItemIndex > -1 then
     begin
       lboxAlmoxarifadoDisponivel.Items.Add(lboxAlmoxarifadoSelecionado.Items[lboxAlmoxarifadoSelecionado.ItemIndex]);
       lboxAlmoxarifadoSelecionado.Items.Delete(lboxAlmoxarifadoSelecionado.ItemIndex);
     end;
end;

procedure TEST_FM_R_FIC.lboxCorDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxCorDisp.ItemIndex > - 1 then
     begin
       lboxCorSel.Items.Add(lboxCorDisp.Items[lboxCorDisp.ItemIndex]);
       lboxCorDisp.Items.Delete(lboxCorDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_FIC.lboxCorSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxCorSel.ItemIndex > -1 then
     begin
       lboxCorDisp.Items.Add(lboxCorSel.Items[lboxCorSel.ItemIndex]);
       lboxCorSel.Items.Delete(lboxCorSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_FIC.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TEST_FM_R_FIC.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TEST_FM_R_FIC.lboxItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
        PSQ_FM_X_ITE.ShowModal;
        if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxItens,6,StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0)) then
                begin
                  lboxItens.Items.Add(StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_ITE.Free;
     end;
end;

procedure TEST_FM_R_FIC.lboxTamDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxTamDisp.ItemIndex > - 1 then
     begin
       lboxTamSel.Items.Add(lboxTamDisp.Items[lboxTamDisp.ItemIndex]);
       lboxTamDisp.Items.Delete(lboxTamDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_FIC.lboxTamSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxTamSel.ItemIndex > -1 then
     begin
       lboxTamDisp.Items.Add(lboxTamSel.Items[lboxTamSel.ItemIndex]);
       lboxTamSel.Items.Delete(lboxTamSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_FIC.lboxTiposEstoqueDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxTiposEstoqueDisponiveis.ItemIndex > - 1 then
     begin
       lboxTiposEstoqueSelecionados.Items.Add(lboxTiposEstoqueDisponiveis.Items[lboxTiposEstoqueDisponiveis.ItemIndex]);
       lboxTiposEstoqueDisponiveis.Items.Delete(lboxTiposEstoqueDisponiveis.ItemIndex);
     end;
end;

procedure TEST_FM_R_FIC.lboxTiposEstoqueSelecionadosDblClick(Sender: TObject);
begin
  inherited;
  if lboxTiposEstoqueSelecionados.ItemIndex > -1 then
     begin
       lboxTiposEstoqueDisponiveis.Items.Add(lboxTiposEstoqueSelecionados.Items[lboxTiposEstoqueSelecionados.ItemIndex]);
       lboxTiposEstoqueSelecionados.Items.Delete(lboxTiposEstoqueSelecionados.ItemIndex);
     end;
end;

procedure TEST_FM_R_FIC.MenuItemAlmoxarifadosClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
   lboxAlmoxarifadoDisponivel.ClearSelection;

  if lboxAlmoxarifadoDisponivel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxAlmoxarifadoDisponivel.Items.Count > 0 then
     begin
       for i := 0 to lboxAlmoxarifadoDisponivel.Items.Count - 1 do
           begin
             lboxAlmoxarifadoSelecionado.Items.Add(lboxAlmoxarifadoDisponivel.Items[i]);
             lboxAlmoxarifadoDisponivel.Items.Delete(lboxAlmoxarifadoDisponivel.ItemIndex);
           end;
       lboxAlmoxarifadoDisponivel.Items.Clear;
     end;
end;

procedure TEST_FM_R_FIC.menuItemEmpresasClick(Sender: TObject);
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

procedure TEST_FM_R_FIC.MenuItemTipoEstoqueClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxTiposEstoqueDisponiveis.ClearSelection;

  if lboxTiposEstoqueDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxTiposEstoqueDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxTiposEstoqueDisponiveis.Items.Count - 1 do
           begin
             lboxTiposEstoqueSelecionados.Items.Add(lboxTiposEstoqueDisponiveis.Items[i]);
             lboxTiposEstoqueDisponiveis.Items.Delete(lboxTiposEstoqueDisponiveis.ItemIndex);
           end;
       lboxTiposEstoqueDisponiveis.Items.Clear;
     end;
end;

procedure TEST_FM_R_FIC.PreencherCondicao;
var
  i: integer;
  opcoesTipoEstoque,opcoesEmpresa,opcoesItem,opcoesAlmoxarifado,
  opcoesCor,opcoesTamanho:string;
begin
   opcoesEmpresa := '';
   opcoesTipoEstoque := '';
   opcoesItem := '';
   opcoesAlmoxarifado := 'O sistema está configurado para não utilização por almoxarifado.';
   opcoesCor := 'O sistema está configurado para não utilização por cor.';
   opcoesTamanho := 'O sistema está configurado para não utilização por tamanho.';
    // Período
   xDataIni := deInicial.Text;
   xDataFin := deFinal.Text;

   // Código Interno
   xImprimirCodigo := copy(cbbImprimirCodigo.Text,1,1);
  // Empresas ------------------------------------------------------------------
  xCondEmp := '';
  if lboxEmpresaSelecionada.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Count - 1 do
          begin
            if xCondEmp <> '' then
               begin
                 xCondEmp :=
                 xCondEmp + ',' +''''+trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa +'                       '+lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
            if xCondEmp = '' then
               begin
                 xCondEmp :=
                 xCondEmp +''''+ trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
        for i := 0 to lboxEmpresas.Count - 1 do
          begin
            if opcoesEmpresa <> '' then
               begin
                 opcoesEmpresa :=
                 opcoesEmpresa +'                       '+lboxEmpresas.Items[i] + #13+#10;
               end;
            if opcoesEmpresa = '' then
               begin
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpresas.Items[i] + #13+#10;
               end;
          end;
     end;
  // Itens ---------------------------------------------------------------------
  xCondItem := '';
  if lboxItens.Count > 0 then
     begin
       for i := 0 to lboxItens.Count - 1 do
          begin
            if xCondItem <> '' then
               begin
                 xCondItem :=
                 xCondItem + ',' +''''+trim(copy(lboxItens.Items[i],1,6))+'''';
                 opcoesItem :=
                 opcoesItem +'                       '+lboxItens.Items[i] + #13+#10;
               end;
            if xCondItem = '' then
               begin
                 xCondItem :=
                 xCondItem + ''''+trim(copy(lboxItens.Items[i],1,6))+'''';
                 opcoesItem :=
                 opcoesItem +lboxItens.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
     opcoesItem := 'Todos' + #13+#10;
     end;

  // Almoxarifados -------------------------------------------------------------

  xCondAlm := '''0''';

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
   begin
   xCondAlm := '';
   opcoesAlmoxarifado := '';
   if lboxAlmoxarifadoSelecionado.Count > 0 then
     begin
        if lboxAlmoxarifadoDisponivel.Count > 0 then
          begin
            for i := 0 to lboxAlmoxarifadoSelecionado.Count - 1 do
            begin
              if xCondAlm <> '' then
                 begin
                   xCondAlm :=
                   xCondAlm + ',' +''''+trim(copy(lboxAlmoxarifadoSelecionado.Items[i],1,3))+'''';
                   opcoesAlmoxarifado :=
                   opcoesAlmoxarifado +'                       '+lboxAlmoxarifadoSelecionado.Items[i] + #13+#10;
                 end;
              if xCondAlm = '' then
                 begin
                   xCondAlm :=
                   xCondAlm +''''+trim(copy(lboxAlmoxarifadoSelecionado.Items[i],1,3))+'''';
                   opcoesAlmoxarifado :=
                   opcoesAlmoxarifado +lboxAlmoxarifadoSelecionado.Items[i] + #13+#10;
                 end;
          end;
     end
     else
      begin
        opcoesAlmoxarifado := 'Todos' + #13+#10;
      End;
   end
  else
    begin
      opcoesAlmoxarifado := 'Todos' + #13+#10;
    end;
  end;

  // Tipos de Estoque ----------------------------------------------------------
  xCondTipoEstoque := '';
  if lboxTiposEstoqueSelecionados.Count > 0 then
     begin
      if lboxTiposEstoqueDisponiveis.Count > 0 then
        begin
         for i := 0 to lboxTiposEstoqueSelecionados.Count - 1 do
          begin
            if xCondTipoEstoque <> '' then
               begin
                 xCondTipoEstoque :=
                 xCondTipoEstoque + ',' +''''+trim(copy(lboxTiposEstoqueSelecionados.Items[i],1,3))+'''';
                 opcoesTipoEstoque :=
                 opcoesTipoEstoque +'                       '+lboxTiposEstoqueSelecionados.Items[i] + #13+#10;
               end;
            if xCondTipoEstoque = '' then
               begin
                 xCondTipoEstoque :=
                 xCondTipoEstoque +''''+trim(copy(lboxTiposEstoqueSelecionados.Items[i],1,3))+'''';
                 opcoesTipoEstoque :=
                 opcoesTipoEstoque + lboxTiposEstoqueSelecionados.Items[i] + #13+#10;
               end;
          end;
     end
     else
     begin
       opcoesTipoEstoque := 'Todos' + #13+#10;
     End;
  end
else
  begin
  opcoesTipoEstoque := 'Todos' + #13+#10;
  end;
  // Cor ----------------------------------------------------------
   xCondCor := '''0''';
   if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
    begin
      xCondCor := '';
      opcoesCor := '';
      if lboxCorSel.Count > 0 then
        begin
          if lboxCorDisp.Count > 0 then
            begin
              for i := 0 to lboxCorSel.Count - 1 do
                begin
                  if xCondCor <> '' then
                    begin
                      xCondCor :=
                      xCondCor + ',' +''''+copy(lboxCorSel.Items[i],1,2)+'''';
                      opcoesCor :=
                      opcoesCor +'                       '+lboxCorSel.Items[i] + #13+#10;
                    end;
                  if xCondCor = '' then
                    begin
                      xCondCor :=
                      xCondCor +''''+copy(lboxCorSel.Items[i],1,2)+'''';
                      opcoesCor :=
                      opcoesCor +lboxCorSel.Items[i] + #13+#10;
                    end;
            end;
     end
     else
      begin
        opcoesCor := 'Todos' + #13+#10;
      end;
   end
  else
    begin
      opcoesCor := 'Todos' + #13+#10;
    end;
    end;

  // Tamanho ----------------------------------------------------------
  xCondTam := '''0''';
  if (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
    begin
    xCondTam :='';
    opcoesTamanho := '';
    if lboxTamSel.Count > 0 then
     begin
      if lboxTamDisp.Count > 0 then
        begin
          for i := 0 to lboxTamSel.Count - 1 do
            begin
              if xCondTam <> '' then
                 begin
                   xCondTam :=
                   xCondTam + ',' +''''+copy(lboxTamSel.Items[i],1,2)+'''';
                   opcoesTamanho :=
                   opcoesTamanho +'                       '+lboxTamSel.Items[i] + #13+#10;
                 end;
              if xCondTam = '' then
                 begin
                  xCondTam :=
                  xCondTam +''''+copy(lboxTamSel.Items[i],1,2)+'''';
                  opcoesTamanho :=
                  opcoesTamanho +lboxTamSel.Items[i] + #13+#10;
                 end;
            end;
     end
     else
      begin
        opcoesTamanho := 'Todos' + #13+#10;
      end;
      end
  else
    begin
      opcoesTamanho := 'Todos' + #13+#10;
    end;
  end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período..............: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Imprimir Código......: ' + cbbImprimirCodigo.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa..............: ' + opcoesEmpresa+ #13+#10;
   xOpcoes := xOpcoes + 'Itens................: ' + opcoesItem+ #13+#10;
   xOpcoes := xOpcoes + 'Almoxarifado.........: ' + opcoesAlmoxarifado+ #13+#10;
   xOpcoes := xOpcoes + 'Tipo de Estoque......: ' + opcoesTipoEstoque+ #13+#10;
   xOpcoes := xOpcoes + 'Cor..................: ' + opcoesCor+ #13+#10;
   xOpcoes := xOpcoes + 'Tamanho..............: ' + opcoesTamanho+ #13+#10;
end;

function TEST_FM_R_FIC.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

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

function TEST_FM_R_FIC.VerificarUtilizacaoAlm: Boolean;
begin
  result := True;
  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean = false then
    begin
      if lbxRelatorios.ItemIndex = 1 then
       begin
         ShowMessage('O sistema está configurado para não utilização do almoxarifado');
         result := False;
       end;
    end;
end;
end.
