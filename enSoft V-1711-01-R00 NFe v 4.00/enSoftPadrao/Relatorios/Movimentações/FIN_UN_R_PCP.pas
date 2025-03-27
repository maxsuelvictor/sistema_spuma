unit FIN_UN_R_PCP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.ComCtrls, Vcl.ImgList, JvExExtCtrls, JvExtComponent,
  JvPanel, Vcl.ExtCtrls, Vcl.Menus, frxExportXLS, frxClass, frxExportPDF,
  frxDBSet, Data.DB, Datasnap.DBClient;

type
  TFIN_FM_R_PCP = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsFornecedor: TTabSheet;
    lblClienteDisponiveis: TLabel;
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
    Label1: TLabel;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmSelPlanosConta: TPopupMenu;
    MenuItemPlanoConta: TMenuItem;
    pmSelCentrosCusto: TPopupMenu;
    MenuItemCentroCusto: TMenuItem;
    pmSelFormasPagamento: TPopupMenu;
    MenuItemFormasPagamento: TMenuItem;
    pmRemoverTodosPlanoContas: TPopupMenu;
    btnRemoverRegistros: TMenuItem;
    pmRemoverTodosCentroCusto: TPopupMenu;
    btnRemoverTodosCentroCusto: TMenuItem;
    pmSelLocaisTitulo: TPopupMenu;
    MenuItemLocalTitulo: TMenuItem;
    pmExcluirFornecedor: TPopupMenu;
    btnRemoverRegistroFornecedor: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmRemoverTodosFormaPag: TPopupMenu;
    btnRemoverTodosFormaPag: TMenuItem;
    pmRemoverTodosLocalTitulo: TPopupMenu;
    btnRemoverTodosLocalTitulo: TMenuItem;
    FIN_FR_R_PCP_PCT: TfrxReport;
    FIN_DB_R_PCP_FOR: TfrxDBDataset;
    FIN_PD_R_PCP: TfrxPDFExport;
    FIN_XL_R_PCP: TfrxXLSExport;
    FIN_DB_R_PCP_PCT: TfrxDBDataset;
    FIN_DB_R_PCP_OBR: TfrxDBDataset;
    FIN_CD_R_PCP_OBR: TClientDataSet;
    FIN_CD_R_PCP_PCT: TClientDataSet;
    FIN_CD_R_PCP_FOR: TClientDataSet;
    tsObra: TTabSheet;
    lboxObraDisp: TListBox;
    lboxObraSel: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    pmSelObra: TPopupMenu;
    btnSelObra: TMenuItem;
    pmRemoverTodosObra: TPopupMenu;
    btnRemoverObra: TMenuItem;
    FIN_FR_R_PCP_OBR: TfrxReport;
    FIN_FR_R_PCP_FOR: TfrxReport;
    txtAno: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
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
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosFormaPagClick(Sender: TObject);
    procedure MenuItemPlanoContaClick(Sender: TObject);
    procedure MenuItemLocalTituloClick(Sender: TObject);
    procedure MenuItemFormasPagamentoClick(Sender: TObject);
    procedure MenuItemCentroCustoClick(Sender: TObject);
    procedure btnRemoverRegistroFornecedorClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnRemoverRegistrosClick(Sender: TObject);
    procedure btnRemoverTodosLocalTituloClick(Sender: TObject);
    procedure btnRemoverTodosCentroCustoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxObraDispDblClick(Sender: TObject);
    procedure lboxObraSelDblClick(Sender: TObject);
    procedure btnSelObraClick(Sender: TObject);
    procedure btnRemoverObraClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;
    var
      xOpcoes, xCondEmpresa, xCondFornecedor, xCondFormaPagamento,
      xCondLocalTitulo, xCondPlanoContas,xCondCentroCusto,xCondObra: string;
  public
    { Public declarations }
  end;

var
  FIN_FM_R_PCP: TFIN_FM_R_PCP;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_CLI, PSQ_UN_X_FOR, enConstantes;

procedure TFIN_FM_R_PCP.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TFIN_FM_R_PCP.btnRemoverObraClick(Sender: TObject);
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

procedure TFIN_FM_R_PCP.btnRemoverRegistroFornecedorClick(Sender: TObject);
begin
  inherited;
   if lboxFornecedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedores.DeleteSelected;
end;

procedure TFIN_FM_R_PCP.btnRemoverRegistrosClick(Sender: TObject);
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

procedure TFIN_FM_R_PCP.btnRemoverTodosCentroCustoClick(Sender: TObject);
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

procedure TFIN_FM_R_PCP.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFIN_FM_R_PCP.btnRemoverTodosFormaPagClick(Sender: TObject);
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

procedure TFIN_FM_R_PCP.btnRemoverTodosLocalTituloClick(Sender: TObject);
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

procedure TFIN_FM_R_PCP.btnSelObraClick(Sender: TObject);
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

procedure TFIN_FM_R_PCP.ExibirRel;
var
  rDtaIni, rDtaFin, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
    begin
     Showmessage('Nenhum relatório foi selecionado.');
     exit;
    end;
  
  PreencherCondicao;

  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '0 - Por Fornecedor') then
    begin
     FIN_CD_R_PCP_FOR.Close;
     FIN_CD_R_PCP_FOR.Data :=
     FIN_CD_R_PCP_FOR.DataRequest(
           VarArrayOf([txtAno.Text,xCondEmpresa,xCondFornecedor,xCondFormaPagamento,
                       xCondLocalTitulo,xCondPlanoContas,xCondCentroCusto,xCondObra]));


     if not FIN_CD_R_PCP_FOR.IsEmpty then
       begin
           PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
           if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(FIN_FR_R_PCP_FOR.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PCP_FOR.Name,xCodLme,xRevLme,nil);
          FIN_FR_R_PCP_FOR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          FIN_FR_R_PCP_FOR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          FIN_FR_R_PCP_FOR.Variables['Opcoes'] := QuotedStr(xOpcoes);
          FIN_FR_R_PCP_FOR.PrepareReport();
          FIN_FR_R_PCP_FOR.ShowReport();
       end
     else
       begin
         ShowMessage('Nenhum registro foi encontrado.');
       end;
    end;


  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '1 - Por Plano de Contas') then
    begin
     FIN_CD_R_PCP_PCT.Close;
     FIN_CD_R_PCP_PCT.Data :=
     FIN_CD_R_PCP_PCT.DataRequest(
           VarArrayOf([txtAno.Text,xCondEmpresa,xCondFornecedor,xCondFormaPagamento,
                       xCondLocalTitulo,xCondPlanoContas,xCondCentroCusto,xCondObra]));


     if not FIN_CD_R_PCP_PCT.IsEmpty then
       begin
           PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
           if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(FIN_FR_R_PCP_PCT.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PCP_PCT.Name,xCodLme,xRevLme,nil);
          FIN_FR_R_PCP_PCT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          FIN_FR_R_PCP_PCT.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          FIN_FR_R_PCP_PCT.Variables['Opcoes'] := QuotedStr(xOpcoes);
          FIN_FR_R_PCP_PCT.PrepareReport();
          FIN_FR_R_PCP_PCT.ShowReport();
       end
     else
       begin
         ShowMessage('Nenhum registro foi encontrado.');
       end;
    end;


  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Por Obra') then
    begin
     FIN_CD_R_PCP_OBR.Close;
     FIN_CD_R_PCP_OBR.Data :=
     FIN_CD_R_PCP_OBR.DataRequest(
           VarArrayOf([txtAno.Text,xCondEmpresa,xCondFornecedor,xCondFormaPagamento,
                       xCondLocalTitulo,xCondPlanoContas,xCondCentroCusto,xCondObra]));


     if not FIN_CD_R_PCP_OBR.IsEmpty then
       begin
           PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
           if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(FIN_FR_R_PCP_OBR.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_PCP_OBR.Name,xCodLme,xRevLme,nil);
          FIN_FR_R_PCP_OBR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          FIN_FR_R_PCP_OBR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          FIN_FR_R_PCP_OBR.Variables['Opcoes'] := QuotedStr(xOpcoes);
          FIN_FR_R_PCP_OBR.PrepareReport();
          FIN_FR_R_PCP_OBR.ShowReport();
       end
     else
       begin
         ShowMessage('Nenhum registro foi encontrado.');
       end;
    end;

end;

procedure TFIN_FM_R_PCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_R_PCP);
end;

procedure TFIN_FM_R_PCP.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.Clear;
  lbxRelatorios.AddItem('0 - Por Fornecedor',nil);
  lbxRelatorios.AddItem('1 - Por Plano de Contas',nil);
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean=true) then
    begin
      lbxRelatorios.AddItem('2 - Por Obra',nil);
    end;

  lbxRelatorios.ItemIndex := 0;
  //lbxRelatoriosClick(self);

  tsObra.TabVisible := false;

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
        tsObra.TabVisible := true;
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

procedure TFIN_FM_R_PCP.lboxCentroCustoDisponiveisDblClick(Sender: TObject);
begin
  inherited;
   if lboxCentroCustoDisponiveis.ItemIndex > - 1 then
     begin
       lboxCentroCustoSelecionado.Items.Add(lboxCentroCustoDisponiveis.Items[lboxCentroCustoDisponiveis.ItemIndex]);
       lboxCentroCustoDisponiveis.Items.Delete(lboxCentroCustoDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PCP.lboxCentroCustoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxCentroCustoSelecionado.ItemIndex > -1 then
     begin
       lboxCentroCustoDisponiveis.Items.Add(lboxCentroCustoSelecionado.Items[lboxCentroCustoSelecionado.ItemIndex]);
       lboxCentroCustoSelecionado.Items.Delete(lboxCentroCustoSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PCP.lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFornecedores,6,StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger,6,0)) then
                begin
                  lboxFornecedores.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TFIN_FM_R_PCP.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PCP.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PCP.lboxFormaDisponivelDblClick(Sender: TObject);
begin
  inherited;
  if lboxFormaDisponivel.ItemIndex > - 1 then
     begin
       lboxFormaSelecionada.Items.Add(lboxFormaDisponivel.Items[lboxFormaDisponivel.ItemIndex]);
       lboxFormaDisponivel.Items.Delete(lboxFormaDisponivel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PCP.lboxFormaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxFormaSelecionada.ItemIndex > -1 then
     begin
       lboxFormaDisponivel.Items.Add(lboxFormaSelecionada.Items[lboxFormaSelecionada.ItemIndex]);
       lboxFormaSelecionada.Items.Delete(lboxFormaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PCP.lboxLocaisDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxLocaisDisponiveis.ItemIndex > - 1 then
     begin
       lboxLocalSelecionado.Items.Add(lboxLocaisDisponiveis.Items[lboxLocaisDisponiveis.ItemIndex]);
       lboxLocaisDisponiveis.Items.Delete(lboxLocaisDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PCP.lboxLocalSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxLocalSelecionado.ItemIndex > -1 then
     begin
       lboxLocaisDisponiveis.Items.Add(lboxLocalSelecionado.Items[lboxLocalSelecionado.ItemIndex]);
       lboxLocalSelecionado.Items.Delete(lboxLocalSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PCP.lboxObraDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxObraDisp.ItemIndex > - 1 then
     begin
       lboxObraSel.Items.Add(lboxObraDisp.Items[lboxObraDisp.ItemIndex]);
       lboxObraDisp.Items.Delete(lboxObraDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PCP.lboxObraSelDblClick(Sender: TObject);
begin
  inherited;
   if lboxObraSel.ItemIndex > -1 then
     begin
       lboxObraDisp.Items.Add(lboxObraSel.Items[lboxObraSel.ItemIndex]);
       lboxObraSel.Items.Delete(lboxObraSel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PCP.lboxPlanosDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxPlanosDisponiveis.ItemIndex > - 1 then
     begin
       lboxPlanoSelecionado.Items.Add(lboxPlanosDisponiveis.Items[lboxPlanosDisponiveis.ItemIndex]);
       lboxPlanosDisponiveis.Items.Delete(lboxPlanosDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PCP.lboxPlanoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxPlanoSelecionado.ItemIndex > -1 then
     begin
       lboxplanosDisponiveis.Items.Add(lboxPlanoSelecionado.Items[lboxPlanoSelecionado.ItemIndex]);
       lboxPlanoSelecionado.Items.Delete(lboxPlanoSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_PCP.MenuItemCentroCustoClick(Sender: TObject);
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

procedure TFIN_FM_R_PCP.menuItemEmpresasClick(Sender: TObject);
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

procedure TFIN_FM_R_PCP.MenuItemFormasPagamentoClick(Sender: TObject);
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

procedure TFIN_FM_R_PCP.MenuItemLocalTituloClick(Sender: TObject);
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

procedure TFIN_FM_R_PCP.MenuItemPlanoContaClick(Sender: TObject);
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

procedure TFIN_FM_R_PCP.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesFornecedor,opcoesFormaPagamento,opcoesLocalTitulo,
  opcoesPlanoContas,opcoesCentroCusto,opcoesObra:string;
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
                 opcoesEmpresa  +'                      '+lboxEmpresaSelecionada.Items[i] + #13+#10;
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

  // Fornecedor --------------------------------------------------------------
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
                 opcoesFornecedor  +'                      '+lboxFornecedores.Items[i] + #13+#10;
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
                 opcoesFormaPagamento  +'                      '+lboxFormaSelecionada.Items[i] + #13+#10;
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
                 opcoesLocalTitulo  +'                      '+lboxLocalSelecionado.Items[i] + #13+#10;
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
                 opcoesPlanoContas +'                      '+lboxPlanoSelecionado.Items[i] + #13+#10;
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
                 opcoesCentroCusto  +'                      '+lboxCentroCustoSelecionado.Items[i] + #13+#10;
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
       if lboxObraDisp.Count > 0 then
         begin
           for i := 0 to lboxObraSel.Count - 1 do
            begin
              if xCondObra <> '' then
                 begin
                   xCondObra :=
                   xCondObra + ',' +''''+trim(copy(lboxObraSel.Items[i],1,6))+'''';
                   opcoesObra :=
                   opcoesObra  +'                      '+lboxObraSel.Items[i] + #13+#10;
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
     end
   else
     begin
       opcoesObra:= 'Todos';
     end;


  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Ano.................: ' + txtAno.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa.............: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Fornecedor..........: ' + opcoesFornecedor+#13+#10;
   xOpcoes := xOpcoes + 'Forma de Pagamento..: ' + opcoesFormaPagamento+#13+#10;
   xOpcoes := xOpcoes + 'Local do Título.....: ' + opcoesLocalTitulo+#13+#10;
   xOpcoes := xOpcoes + 'Plano de Contas.....: ' + opcoesPlanoContas+#13+#10;
   xOpcoes := xOpcoes + 'Centro de Custo.....: ' + opcoesCentroCusto+#13+#10;
   xOpcoes := xOpcoes + 'Obras...............: ' + opcoesObra+#13+#10;
end;

function TFIN_FM_R_PCP.TestarCampos: Boolean;
var
mens: String;
begin

  result := True;
  mens := '';

  if (txtAno.Text = '') then
    begin
      mens := mens +  '.O ano deve ser preenchido.' + #13;
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

end.
