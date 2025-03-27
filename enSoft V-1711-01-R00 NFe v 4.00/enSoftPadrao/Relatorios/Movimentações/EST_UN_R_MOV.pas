unit EST_UN_R_MOV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.ComCtrls, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Menus,
  frxClass, frxDBSet, frxExportPDF, frxExportXLS, JvExExtCtrls, JvExtComponent,
  JvPanel, Data.DB, Datasnap.DBClient;

type
  TEST_FM_R_MOV = class(TPAD_FM_X_REL)
    lblPeriodo: TLabel;
    lblAte: TLabel;
    lblImprimirCodigo: TLabel;
    pcFiltros: TPageControl;
    tsEmpresa: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsItem: TTabSheet;
    lblSelecionarItens: TLabel;
    lboxItens: TListBox;
    tsAlmoxarifado: TTabSheet;
    lblAlmoxarifadoDisponivel: TLabel;
    lblAlmoxarifadoSelecionado: TLabel;
    lboxAlmoxarifadoSelecionado: TListBox;
    lboxAlmoxarifadoDisponivel: TListBox;
    tsTiposEstoque: TTabSheet;
    lblTiposEstoqueDisponiveis: TLabel;
    lblTiposEstoqueSelecionados: TLabel;
    lboxTiposEstoqueSelecionados: TListBox;
    lboxTiposEstoqueDisponiveis: TListBox;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    cbbImprimirCodigo: TComboBox;
    tsGrupoItem: TTabSheet;
    tsFornecedor: TTabSheet;
    lblClassificarPor: TLabel;
    cbbClassificarPor: TComboBox;
    lblTipoItem: TLabel;
    cbbTipoItem: TComboBox;
    EST_XL_R_MOV: TfrxXLSExport;
    EST_PD_R_MOV: TfrxPDFExport;
    EST_FR_R_MOV_GER: TfrxReport;
    EST_DB_R_MOV: TfrxDBDataset;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmSelAlmoxarifado: TPopupMenu;
    MenuItemAlmoxarifados: TMenuItem;
    pmSelTipoEstoque: TPopupMenu;
    MenuItemTipoEstoque: TMenuItem;
    pmSelGrupoItem: TPopupMenu;
    MenuItemGruposItens: TMenuItem;
    lblGruposDisponiveis: TLabel;
    lblGruposSelecionados: TLabel;
    lboxGruposSelecionados: TListBox;
    lboxGruposDisponiveis: TListBox;
    lblSelecionarFornecedores: TLabel;
    lboxFornecedores: TListBox;
    pmExcluirFornecedor: TPopupMenu;
    MenuItemRemoverFornecedor: TMenuItem;
    tsCor: TTabSheet;
    lboxCorDisp: TListBox;
    lboxCorSel: TListBox;
    lblCoresDisp: TLabel;
    lblCoresSel: TLabel;
    tsTamanho: TTabSheet;
    lboxTamDisp: TListBox;
    lboxTamSel: TListBox;
    pmSelCor: TPopupMenu;
    btnSelecionarTudoCor: TMenuItem;
    pmSelTam: TPopupMenu;
    btnSelecionarTudoTam: TMenuItem;
    lblTamanhoDisp: TLabel;
    lblTamanhoSel: TLabel;
    pmExcluirItem: TPopupMenu;
    btnRemoverItem: TMenuItem;
    EST_FR_R_MOV_ALM: TfrxReport;
    pmRemoverTodasEmpresas: TPopupMenu;
    btnRemoverTodasEmpresas: TMenuItem;
    pmRemoverTodosAlmoxarifado: TPopupMenu;
    btnRemoverTodosAlmoxarifado: TMenuItem;
    pmRemoverTodosTiposEstoque: TPopupMenu;
    btnRemoverTodosTiposEstoque: TMenuItem;
    pmRemoverTodosGrupos: TPopupMenu;
    btnRemoverTodosGrupos: TMenuItem;
    pmRemoverTodasCores: TPopupMenu;
    btnRemoverTodasCores: TMenuItem;
    pmRemoverTodosTamanho: TPopupMenu;
    btnRemoverTodosTamanhos: TMenuItem;
    EST_FR_R_MOV_GRU: TfrxReport;
    EST_DB_R_MOV_SPR: TfrxDBDataset;
    EST_FR_R_MOV_SPR: TfrxReport;
    EST_FR_R_MOV_GAL: TfrxReport;
    EST_CD_R_MOV: TClientDataSet;
    EST_CD_R_MOV_SPR: TClientDataSet;
    TabSheet1: TTabSheet;
    lblCentroCustoDisponiveis: TLabel;
    lblCentroCustoSelecionado: TLabel;
    lboxCentroCustoSelecionado: TListBox;
    lboxCentroCustoDisponiveis: TListBox;
    pmRemoverTodosCentroCusto: TPopupMenu;
    btnRemoverTodosCentroCusto: TMenuItem;
    pmSelCentrosCusto: TPopupMenu;
    MenuItemCentroCusto: TMenuItem;
    EST_FR_R_MOV_LOC: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure MenuItemAlmoxarifadosClick(Sender: TObject);
    procedure MenuItemTipoEstoqueClick(Sender: TObject);
    procedure MenuItemGruposItensClick(Sender: TObject);
    procedure btnRemoverRegistroFornecedorClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxAlmoxarifadoDisponivelDblClick(Sender: TObject);
    procedure lboxAlmoxarifadoSelecionadoDblClick(Sender: TObject);
    procedure lboxTiposEstoqueDisponiveisDblClick(Sender: TObject);
    procedure lboxTiposEstoqueSelecionadosDblClick(Sender: TObject);
    procedure lboxGruposDisponiveisDblClick(Sender: TObject);
    procedure lboxGruposSelecionadosDblClick(Sender: TObject);
    procedure lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelecionarTudoCorClick(Sender: TObject);
    procedure btnSelecionarTudoTamClick(Sender: TObject);
    procedure lboxCorDispDblClick(Sender: TObject);
    procedure lboxCorSelDblClick(Sender: TObject);
    procedure lboxTamDispDblClick(Sender: TObject);
    procedure lboxTamSelDblClick(Sender: TObject);
    procedure btnRemoverItemClick(Sender: TObject);
    procedure EST_DB_R_MOVCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure btnRemoverTodasEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosAlmoxarifadoClick(Sender: TObject);
    procedure btnRemoverTodosTiposEstoqueClick(Sender: TObject);
    procedure btnRemoverTodosGruposClick(Sender: TObject);
    procedure btnRemoverTodasCoresClick(Sender: TObject);
    procedure btnRemoverTodosTamanhosClick(Sender: TObject);
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure EST_DB_R_MOV_SPRCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure lboxCentroCustoDisponiveisDblClick(Sender: TObject);
    procedure lboxCentroCustoSelecionadoDblClick(Sender: TObject);
    procedure MenuItemCentroCustoClick(Sender: TObject);
    procedure btnRemoverTodosCentroCustoClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;
    var
      xOpcoes, xCondEmpresa, xCondItem, xCondAlmoxarifado, xCondTipoEstoque,
      xCondTipoItem,xCondGrupoItem, xCondFornecedor, xCondCor, xCondTam, xCondCentroCusto: string;
  public
    { Public declarations }
  end;

var
  EST_FM_R_MOV: TEST_FM_R_MOV;
implementation

{$R *.dfm}

uses PSQ_UN_X_ITE, enFunc, uDmGeral, PSQ_UN_X_FOR, enConstantes;

procedure TEST_FM_R_MOV.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TEST_FM_R_MOV.btnRemoverItemClick(Sender: TObject);
begin
  inherited;
  if lboxItens.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxItens.DeleteSelected;
end;

procedure TEST_FM_R_MOV.btnRemoverRegistroFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxFornecedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxFornecedores.DeleteSelected;
end;

procedure TEST_FM_R_MOV.btnRemoverTodasCoresClick(Sender: TObject);
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

procedure TEST_FM_R_MOV.btnRemoverTodasEmpresasClick(Sender: TObject);
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

procedure TEST_FM_R_MOV.btnRemoverTodosAlmoxarifadoClick(Sender: TObject);
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

procedure TEST_FM_R_MOV.btnRemoverTodosCentroCustoClick(Sender: TObject);
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

procedure TEST_FM_R_MOV.btnRemoverTodosGruposClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxGruposSelecionados.ClearSelection;
  if lboxGruposSelecionados.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxGruposSelecionados.Items.Count > 0 then
     begin
       for i := 0 to lboxGruposSelecionados.Items.Count - 1 do
           begin
             lboxGruposDisponiveis.Items.Add(lboxGruposSelecionados.Items[i]);
             lboxGruposSelecionados.Items.Delete(lboxGruposSelecionados.ItemIndex);
           end;
       lboxGruposSelecionados.Items.Clear;
     end;
end;

procedure TEST_FM_R_MOV.btnRemoverTodosTamanhosClick(Sender: TObject);
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

procedure TEST_FM_R_MOV.btnRemoverTodosTiposEstoqueClick(Sender: TObject);
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

procedure TEST_FM_R_MOV.btnSelecionarTudoCorClick(Sender: TObject);
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

procedure TEST_FM_R_MOV.btnSelecionarTudoTamClick(Sender: TObject);
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

procedure TEST_FM_R_MOV.EST_DB_R_MOVCheckEOF(Sender: TObject; var Eof: Boolean);
begin
  inherited;
  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '1 - Geral' then
     begin
       case cbbImprimirCodigo.ItemIndex of
          0: EST_FR_R_MOV_GER.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV.DataSet.FieldByName('ID_ITEM').Text);
          1: EST_FR_R_MOV_GER.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV.DataSet.FieldByName('COD_BARRA').Text);
          2: EST_FR_R_MOV_GER.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV.DataSet.FieldByName('COD_FABRICA').Text);
       end;
     end;
  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Por Almoxarifado' then
     begin
       case cbbImprimirCodigo.ItemIndex of
          0: EST_FR_R_MOV_ALM.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV.DataSet.FieldByName('ID_ITEM').Text);
          1: EST_FR_R_MOV_ALM.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV.DataSet.FieldByName('COD_BARRA').Text);
          2: EST_FR_R_MOV_ALM.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV.DataSet.FieldByName('COD_FABRICA').Text);
       end;
     end;
  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '3 - Por Grupo' then
     begin
       if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').IsNull) or
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = false)) then
         begin
           case cbbImprimirCodigo.ItemIndex of
              0: EST_FR_R_MOV_GRU.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV.DataSet.FieldByName('ID_ITEM').Text);
              1: EST_FR_R_MOV_GRU.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV.DataSet.FieldByName('COD_BARRA').Text);
              2: EST_FR_R_MOV_GRU.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV.DataSet.FieldByName('COD_FABRICA').Text);
           end;
         end;

       if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').IsNull) and
           (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true))  then
         begin
           case cbbImprimirCodigo.ItemIndex of
              0: EST_FR_R_MOV_GAL.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV.DataSet.FieldByName('ID_ITEM').Text);
              1: EST_FR_R_MOV_GAL.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV.DataSet.FieldByName('COD_BARRA').Text);
              2: EST_FR_R_MOV_GAL.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV.DataSet.FieldByName('COD_FABRICA').Text);
           end;
         end;
     end;
  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '5 - Por Localização' then
     begin
       case cbbImprimirCodigo.ItemIndex of
          0: EST_FR_R_MOV_LOC.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV.DataSet.FieldByName('ID_ITEM').Text);
          1: EST_FR_R_MOV_LOC.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV.DataSet.FieldByName('COD_BARRA').Text);
          2: EST_FR_R_MOV_LOC.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV.DataSet.FieldByName('COD_FABRICA').Text);
       end;
     end;
end;

procedure TEST_FM_R_MOV.EST_DB_R_MOV_SPRCheckEOF(Sender: TObject;
  var Eof: Boolean);
begin
  inherited;
   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '4 - Saldo Atual Por Grupo' then
     begin
       case cbbImprimirCodigo.ItemIndex of
            0: EST_FR_R_MOV_SPR.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV_SPR.DataSet.FieldByName('ID_ITEM').Text);
            1: EST_FR_R_MOV_SPR.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV_SPR.DataSet.FieldByName('COD_BARRA').Text);
            2: EST_FR_R_MOV_SPR.Variables['CodigoItem'] := QuotedStr(EST_DB_R_MOV_SPR.DataSet.FieldByName('COD_FABRICA').Text);
         end;
     end;
end;

procedure TEST_FM_R_MOV.ExibirRel;
var
  rImprimirCodigo, rDtaIni, rDtaFin, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;


   PreencherCondicao;


   if ((lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '1 - Geral') or
       (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Por Almoxarifado') or
       (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '3 - Por Grupo') or
       (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '5 - Por Localização') ) then
      begin

       EST_CD_R_MOV.Close;
       EST_CD_R_MOV.Data :=
               EST_CD_R_MOV.DataRequest(
                    VarArrayOf([lbxRelatorios.ItemIndex+1, rDtaIni, rDtaFin, xCondEmpresa, xCondItem,
                    xCondAlmoxarifado, xCondCor, xCondTam, xCondTipoItem,xCondTipoEstoque, xCondGrupoItem, xCondFornecedor,
                    cbbClassificarPor.ItemIndex,xCondCentroCusto]));


       if not EST_CD_R_MOV.IsEmpty then
          begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

            if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '1 - Geral' then
              begin
                if FileExists(PathImg) then
                   begin
                      LogoEmpresa := TfrxPictureView(EST_FR_R_MOV_GER.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                         LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;
                dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_MOV_GER.Name,xCodLme,xRevLme,nil);

                EST_FR_R_MOV_GER.Variables['ativado_almoxarifado'] := false;
                if  ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').IsNull) and
                    (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = True)) then
                  begin
                   EST_FR_R_MOV_GER.Variables['ativado_almoxarifado'] := true;
                  end;

                EST_FR_R_MOV_GER.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
                EST_FR_R_MOV_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                EST_FR_R_MOV_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
                EST_FR_R_MOV_GER.PrepareReport();
                EST_FR_R_MOV_GER.ShowReport();
              end;

            if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Por Almoxarifado' then
               begin
                if FileExists(PathImg) then
                   begin
                      LogoEmpresa := TfrxPictureView(EST_FR_R_MOV_ALM.FindObject('imgEmpresa2'));
                      if Assigned(LogoEmpresa) then
                         LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;

                 dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_MOV_ALM.Name,xCodLme,xRevLme,nil);
                 EST_FR_R_MOV_ALM.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
                 EST_FR_R_MOV_ALM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                 EST_FR_R_MOV_ALM.Variables['Opcoes'] := QuotedStr(xOpcoes);
                 EST_FR_R_MOV_ALM.PrepareReport();
                 EST_FR_R_MOV_ALM.ShowReport();
               end;
             if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '3 - Por Grupo' then
               begin

                if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').IsNull) or
                    (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = false)) then
                   begin
                      if FileExists(PathImg) then
                         begin
                            LogoEmpresa := TfrxPictureView(EST_FR_R_MOV_GRU.FindObject('imgEmpresa3'));
                            if Assigned(LogoEmpresa) then
                               LogoEmpresa.Picture.LoadFromFile(PathImg);
                         end;


                       dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_MOV_GRU.Name,xCodLme,xRevLme,nil);
                       EST_FR_R_MOV_GRU.Variables['ativado_almoxarifado'] := false;
                       if  ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').IsNull) and
                          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = True)) then
                        begin
                         EST_FR_R_MOV_GRU.Variables['ativado_almoxarifado'] := true;
                        end;

                       EST_FR_R_MOV_GRU.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
                       EST_FR_R_MOV_GRU.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                       EST_FR_R_MOV_GRU.Variables['Opcoes'] := QuotedStr(xOpcoes);
                       EST_FR_R_MOV_GRU.PrepareReport();
                       EST_FR_R_MOV_GRU.ShowReport();
                   end;

                 if ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').IsNull) and
                    (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true)) then
                   begin
                      if FileExists(PathImg) then
                         begin
                            LogoEmpresa := TfrxPictureView(EST_FR_R_MOV_GAL.FindObject('imgEmpresa5'));
                            if Assigned(LogoEmpresa) then
                               LogoEmpresa.Picture.LoadFromFile(PathImg);
                         end;

                       dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_MOV_GAL.Name,xCodLme,xRevLme,nil);

                       EST_FR_R_MOV_GAL.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
                       EST_FR_R_MOV_GAL.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                       EST_FR_R_MOV_GAL.Variables['Opcoes'] := QuotedStr(xOpcoes);
                       EST_FR_R_MOV_GAL.PrepareReport();
                       EST_FR_R_MOV_GAL.ShowReport();
                   end;
               end;

           if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '5 - Por Localização' then
              begin
                if FileExists(PathImg) then
                   begin
                      LogoEmpresa := TfrxPictureView(EST_FR_R_MOV_LOC.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                         LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;
                dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_MOV_LOC.Name,xCodLme,xRevLme,nil);

                EST_FR_R_MOV_LOC.Variables['ativado_almoxarifado'] := false;
                if  ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').IsNull) and
                    (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = True)) then
                  begin
                   EST_FR_R_MOV_LOC.Variables['ativado_almoxarifado'] := true;
                  end;

                EST_FR_R_MOV_LOC.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
                EST_FR_R_MOV_LOC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                EST_FR_R_MOV_LOC.Variables['Opcoes'] := QuotedStr(xOpcoes);
                EST_FR_R_MOV_LOC.PrepareReport();
                EST_FR_R_MOV_LOC.ShowReport();
              end;
          end
       else
          begin
             ShowMessage('Nenhum registro foi encontrado.');
             exit;
          end;
     end;


   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '4 - Saldo Atual Por Grupo' then
      begin
       EST_CD_R_MOV_SPR.Close;
       EST_CD_R_MOV_SPR.Data :=
               EST_CD_R_MOV_SPR.DataRequest(
                    VarArrayOf([xCondEmpresa, xCondItem,
                    xCondAlmoxarifado, xCondCor, xCondTam, xCondTipoItem,xCondTipoEstoque, xCondGrupoItem, xCondFornecedor,
                    cbbClassificarPor.ItemIndex,rDtaIni,rDtaFin,xCondCentroCusto]));

       if not EST_CD_R_MOV_SPR.IsEmpty then
         begin
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_MOV_SPR.FindObject('imgEmpresa4'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
             dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_MOV_SPR.Name,xCodLme,xRevLme,nil);

             EST_FR_R_MOV_SPR.Variables['ativado_almoxarifado'] := false;
             if  ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').IsNull) and
                    (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = True)) then
               begin
                   EST_FR_R_MOV_SPR.Variables['ativado_almoxarifado'] := true;
               end;

             EST_FR_R_MOV_SPR.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
             EST_FR_R_MOV_SPR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             EST_FR_R_MOV_SPR.Variables['Opcoes'] := QuotedStr(xOpcoes);
             EST_FR_R_MOV_SPR.PrepareReport();
             EST_FR_R_MOV_SPR.ShowReport();
         end
       else
         begin
           ShowMessage('Nenhum registro foi encontrado.');
           exit;
         end;

      end;
end;

procedure TEST_FM_R_MOV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(EST_FM_R_MOV);
end;

procedure TEST_FM_R_MOV.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  tsAlmoxarifado.TabVisible := false;
  tsCor.TabVisible := false;
  tsTamanho.TabVisible := false;
  EST_FR_R_MOV_GER.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  EST_FR_R_MOV_ALM.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  EST_FR_R_MOV_GRU.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  EST_FR_R_MOV_LOC.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  EST_FR_R_MOV_SPR.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  EST_FR_R_MOV_GAL.Variables['ft_TituloCorTam'] := QuotedStr(dmGeral.MostrarTitCorTamanho);
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

  // Grupo de Itens ------------------------------------------------------------
  dmGeral.BUS_CD_C_GRU.Close;
  dmGeral.BUS_CD_C_GRU.Data :=
  dmGeral.BUS_CD_C_GRU.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_GRU.IsEmpty then
     begin
       dmGeral.BUS_CD_C_GRU.First;

       while not dmGeral.BUS_CD_C_GRU.eof do
          begin
            lboxGruposDisponiveis.Items.Add(dmGeral.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_GRU.Next;
          end;
     end;

  dmGeral.BUS_CD_C_GRU.Close;


  //Cores--------------------------------------------------------------

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

   //Tamanho--------------------------------------------------------------------
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
  // Fornecedores --------------------------------------------------------------

  lbxRelatorios.Clear;
  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').IsNull) or
      (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = False)) then
    begin
       lbxRelatorios.AddItem('1 - Geral',nil);
    end;
  lbxRelatorios.AddItem('2 - Por Almoxarifado',nil);
  lbxRelatorios.AddItem('3 - Por Grupo',nil);
  lbxRelatorios.AddItem('4 - Saldo Atual Por Grupo',nil);
  lbxRelatorios.AddItem('5 - Por Localização',nil);


  lbxRelatorios.ItemIndex := 0;

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
end;

procedure TEST_FM_R_MOV.lboxAlmoxarifadoDisponivelDblClick(Sender: TObject);
begin
  inherited;
  if lboxAlmoxarifadoDisponivel.ItemIndex > - 1 then
     begin
       lboxAlmoxarifadoSelecionado.Items.Add(lboxAlmoxarifadoDisponivel.Items[lboxAlmoxarifadoDisponivel.ItemIndex]);
       lboxAlmoxarifadoDisponivel.Items.Delete(lboxAlmoxarifadoDisponivel.ItemIndex);
     end;
end;

procedure TEST_FM_R_MOV.lboxAlmoxarifadoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxAlmoxarifadoSelecionado.ItemIndex > -1 then
     begin
       lboxAlmoxarifadoDisponivel.Items.Add(lboxAlmoxarifadoSelecionado.Items[lboxAlmoxarifadoSelecionado.ItemIndex]);
       lboxAlmoxarifadoSelecionado.Items.Delete(lboxAlmoxarifadoSelecionado.ItemIndex);
     end;
end;

procedure TEST_FM_R_MOV.lboxCentroCustoDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxCentroCustoDisponiveis.ItemIndex > - 1 then
     begin
       lboxCentroCustoSelecionado.Items.Add(lboxCentroCustoDisponiveis.Items[lboxCentroCustoDisponiveis.ItemIndex]);
       lboxCentroCustoDisponiveis.Items.Delete(lboxCentroCustoDisponiveis.ItemIndex);
     end;
end;

procedure TEST_FM_R_MOV.lboxCentroCustoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxCentroCustoSelecionado.ItemIndex > -1 then
     begin
       lboxCentroCustoDisponiveis.Items.Add(lboxCentroCustoSelecionado.Items[lboxCentroCustoSelecionado.ItemIndex]);
       lboxCentroCustoSelecionado.Items.Delete(lboxCentroCustoSelecionado.ItemIndex);
     end;
end;

procedure TEST_FM_R_MOV.lboxCorDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxCorDisp.ItemIndex > -1 then
     begin
       lboxCorSel.Items.Add(lboxCorDisp.Items[lboxCorDisp.ItemIndex]);
       lboxCorDisp.Items.Delete(lboxCorDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_MOV.lboxCorSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxCorSel.ItemIndex > -1 then
     begin
       lboxCorDisp.Items.Add(lboxCorSel.Items[lboxCorSel.ItemIndex]);
       lboxCorSel.Items.Delete(lboxCorSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_MOV.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TEST_FM_R_MOV.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TEST_FM_R_MOV.lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFornecedores,3,StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,3,0)) then
                begin
                  lboxFornecedores.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,3,0) +
                                             ' - ' + PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TEST_FM_R_MOV.lboxGruposDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxGruposDisponiveis.ItemIndex > - 1 then
     begin
       lboxGruposSelecionados.Items.Add(lboxGruposDisponiveis.Items[lboxGruposDisponiveis.ItemIndex]);
       lboxGruposDisponiveis.Items.Delete(lboxGruposDisponiveis.ItemIndex);
     end;
end;

procedure TEST_FM_R_MOV.lboxGruposSelecionadosDblClick(Sender: TObject);
begin
  inherited;
  if lboxGruposSelecionados.ItemIndex > -1 then
     begin
       lboxGruposDisponiveis.Items.Add(lboxGruposSelecionados.Items[lboxGruposSelecionados.ItemIndex]);
       lboxGruposSelecionados.Items.Delete(lboxGruposSelecionados.ItemIndex);
     end;
end;

procedure TEST_FM_R_MOV.lboxItensKeyDown(Sender: TObject; var Key: Word;
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

procedure TEST_FM_R_MOV.lboxTamDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxTamDisp.ItemIndex > -1 then
     begin
       lboxTamSel.Items.Add(lboxTamDisp.Items[lboxTamDisp.ItemIndex]);
       lboxTamDisp.Items.Delete(lboxTamDisp.ItemIndex);
     end;

end;

procedure TEST_FM_R_MOV.lboxTamSelDblClick(Sender: TObject);
begin
   if lboxTamSel.ItemIndex > -1 then
     begin
       lboxTamDisp.Items.Add(lboxTamSel.Items[lboxTamSel.ItemIndex]);
       lboxTamSel.Items.Delete(lboxTamSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_MOV.lboxTiposEstoqueDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxTiposEstoqueDisponiveis.ItemIndex > - 1 then
     begin
       lboxTiposEstoqueSelecionados.Items.Add(lboxTiposEstoqueDisponiveis.Items[lboxTiposEstoqueDisponiveis.ItemIndex]);
       lboxTiposEstoqueDisponiveis.Items.Delete(lboxTiposEstoqueDisponiveis.ItemIndex);
     end;
end;

procedure TEST_FM_R_MOV.lboxTiposEstoqueSelecionadosDblClick(Sender: TObject);
begin
  inherited;
  if lboxTiposEstoqueSelecionados.ItemIndex > -1 then
     begin
       lboxTiposEstoqueDisponiveis.Items.Add(lboxTiposEstoqueSelecionados.Items[lboxTiposEstoqueSelecionados.ItemIndex]);
       lboxTiposEstoqueSelecionados.Items.Delete(lboxTiposEstoqueSelecionados.ItemIndex);
     end;
end;

procedure TEST_FM_R_MOV.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
 { if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '4 - Saldo Atual Por Grupo' then
    begin
      deFinal.Text := '  /  /    ';
      deInicial.Text := '  /  /    ';
      deFinal.Visible := false;
      deInicial.Visible := false;
      lblPeriodo.Visible := false;
      lblAte.Visible := false;
    end;
  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] <> '4 - Saldo Atual Por Grupo' then
    begin
      deFinal.Visible := true;
      deInicial.Visible := true;
      lblPeriodo.Visible := true;
      lblAte.Visible := true;
    end; }
end;

procedure TEST_FM_R_MOV.MenuItemAlmoxarifadosClick(Sender: TObject);
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

procedure TEST_FM_R_MOV.MenuItemCentroCustoClick(Sender: TObject);
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

procedure TEST_FM_R_MOV.menuItemEmpresasClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
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

procedure TEST_FM_R_MOV.MenuItemGruposItensClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxGruposDisponiveis.ClearSelection;

  if lboxGruposDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxGruposDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxGruposDisponiveis.Items.Count - 1 do
           begin
             lboxGruposSelecionados.Items.Add(lboxGruposDisponiveis.Items[i]);
             lboxGruposDisponiveis.Items.Delete(lboxGruposDisponiveis.ItemIndex);
           end;
       lboxGruposDisponiveis.Items.Clear;
     end;
end;

procedure TEST_FM_R_MOV.MenuItemTipoEstoqueClick(Sender: TObject);
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
procedure TEST_FM_R_MOV.PreencherCondicao;
var
  i: integer;
  opcoesEmpresa,opcoesItem,opcoesAlmoxarifado,opcoesTipoEstoque,
  opcoesGrupo,opcoesFornecedor,opcoesCor,opcoesTamanho,opcoesCentroCusto:string;
begin
   opcoesEmpresa := '';
   opcoesItem := '';
   opcoesAlmoxarifado := 'O sistema está configurado para não utilização por almoxarifado.';
   opcoesTipoEstoque := '';
   opcoesGrupo := '';
   opcoesFornecedor := '';
   opcoesCor := 'O sistema está configurado para não utilização por cor.';
   opcoesTamanho := 'O sistema está configurado para não utilização por tamanho.';
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
                 opcoesEmpresa +'                 '+lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
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
                 opcoesEmpresa +'                 '+lboxEmpresas.Items[i] + #13+#10;
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
                 opcoesItem +'                 '+lboxItens.Items[i] + #13+#10;
               end;
            if xCondItem = '' then
               begin
                 xCondItem :=
                 xCondItem  +''''+trim(copy(lboxItens.Items[i],1,6))+'''';
                 opcoesItem :=
                 opcoesItem +lboxItens.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
         opcoesItem := 'Todos';
      end;


  // Almoxarifados -------------------------------------------------------------

  xCondAlmoxarifado := '''0''';

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
   begin
   xCondAlmoxarifado := '';
   opcoesAlmoxarifado := '';
   if lboxAlmoxarifadoSelecionado.Count > 0 then
     begin
      if lboxAlmoxarifadoDisponivel.Count > 0 then
        begin
         for i := 0 to lboxAlmoxarifadoSelecionado.Count - 1 do
          begin
            if xCondAlmoxarifado <> '' then
               begin
                 xCondAlmoxarifado :=
                 xCondAlmoxarifado + ',' +''''+trim(copy(lboxAlmoxarifadoSelecionado.Items[i],1,3))+'''';
                 opcoesAlmoxarifado :=
                 opcoesAlmoxarifado +'                 '+lboxAlmoxarifadoSelecionado.Items[i] + #13+#10;
               end;
            if xCondAlmoxarifado = '' then
               begin
                 xCondAlmoxarifado :=
                 xCondAlmoxarifado +''''+trim(copy(lboxAlmoxarifadoSelecionado.Items[i],1,3))+'''';
                 opcoesAlmoxarifado :=
                 opcoesAlmoxarifado +lboxAlmoxarifadoSelecionado.Items[i] + #13+#10;
               end;
          end;
     end
     else
      begin
         opcoesAlmoxarifado := 'Todos';
      end;
     end
   else
   begin
      opcoesAlmoxarifado := 'Todos';
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
                 opcoesTipoEstoque +'                 '+lboxTiposEstoqueSelecionados.Items[i] + #13+#10;
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
       opcoesTipoEstoque := 'Todos';
     end;
     end
   else
    begin
      opcoesTipoEstoque := 'Todos';
    end;

  // Grupos de Itens -----------------------------------------------------------
  xCondGrupoItem := '';
  if lboxGruposSelecionados.Count > 0 then
     begin
      if lboxGruposDisponiveis.Count > 0 then
        begin
          for i := 0 to lboxGruposSelecionados.Count - 1 do
            begin
             if xCondGrupoItem <> '' then
               begin
                 xCondGrupoItem :=
                 xCondGrupoItem + ',' +trim(copy(lboxGruposSelecionados.Items[i],1,8));
                 opcoesGrupo :=
                 opcoesGrupo +'                 '+lboxGruposSelecionados.Items[i] + #13+#10;
               end;
            if xCondGrupoItem = '' then
               begin
                 xCondGrupoItem :=
                 xCondGrupoItem +trim(copy(lboxGruposSelecionados.Items[i],1,8));
                 opcoesGrupo :=
                 opcoesGrupo + lboxGruposSelecionados.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
        opcoesGrupo := 'Todos';
     end;
     end
   else
    begin
       opcoesGrupo := 'Todos';
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
                 xCondFornecedor + ',' +''''+trim(copy(lboxFornecedores.Items[i],1,3))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor +'                 '+lboxFornecedores.Items[i] + #13+#10;
               end;
            if xCondFornecedor = '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor +''''+trim(copy(lboxFornecedores.Items[i],1,3))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor + lboxFornecedores.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
       opcoesFornecedor := 'Todos';
     end;

   //Cores----------------------------------------------------------------------

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
                 opcoesCor +'                 '+lboxCorSel.Items[i] + #13+#10;
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
        opcoesCor := 'Todos';
      end;
     end
   else
   begin
     opcoesCor := 'Todos';
   end;
   end;


  //Tamanho---------------------------------------------------------------------
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
                 opcoesTamanho +'                 '+lboxTamSel.Items[i] + #13+#10;
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
        opcoesTamanho := 'Todos';
      end;
     end
    else
    begin
      opcoesTamanho := 'Todos';
    end;
    end;

  xCondTipoItem := '';
  if cbbTipoItem.Text <> 'Todos' then
   begin
    xCondTipoItem := trim(copy(cbbTipoItem.Text,1,2));
   end;

   // Centros de Custos ---------------------------------------------------------
  xCondCentroCusto := '';
  if lboxCentroCustoSelecionado.Count > 0 then
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

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
  // if lbxRelatorios.Items[lbxRelatorios.ItemIndex] <> '4 - Saldo Atual Por Grupo' then
     // begin
        xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
      //end;
   xOpcoes := xOpcoes + 'Imprimir Código...: ' + cbbImprimirCodigo.Text + #13+#10;
   xOpcoes := xOpcoes + 'Classificar Por...: ' + cbbClassificarPor.Text + #13+#10;
   xOpcoes := xOpcoes + 'Tipo do Item......: ' + cbbTipoItem.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa + #13+#10;
   xOpcoes := xOpcoes + 'Item..............: ' + opcoesItem +#13+#10;
   xOpcoes := xOpcoes + 'Almoxarifado......: ' + opcoesAlmoxarifado + #13+#10;
   xOpcoes := xOpcoes + 'Tipo de Estoque...: ' + opcoesTipoEstoque +#13+#10;
   xOpcoes := xOpcoes + 'Grupo de Item.....: ' + opcoesGrupo+#13+#10;
   xOpcoes := xOpcoes + 'Fornecedor........: ' + opcoesFornecedor+#13+#10;
   xOpcoes := xOpcoes + 'Cor...............: ' + opcoesCor+#13+#10;
   xOpcoes := xOpcoes + 'Tamanho...........: ' + opcoesTamanho+#13+#10;
   xOpcoes := xOpcoes + 'Centro de Custo...: ' + opcoesCentroCusto+#13+#10;
end;

function TEST_FM_R_MOV.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';
 // if lbxRelatorios.Items[lbxRelatorios.ItemIndex] <> '4 - Saldo Atual Por Grupo' then
   // begin
      if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
             begin
               mens := mens +  '.O período deve ser preenchido.' + #13;
             end;
      if (deInicial.Date >  deFinal.Date) then
         begin
           mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
         end;
    //end;

  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end;
end;

end.
