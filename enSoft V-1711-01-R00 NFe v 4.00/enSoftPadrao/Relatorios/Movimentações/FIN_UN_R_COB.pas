unit FIN_UN_R_COB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.ComCtrls, Vcl.ImgList, JvExExtCtrls, JvExtComponent,
  JvPanel, Vcl.ExtCtrls, Vcl.Menus, frxExportXLS, frxClass, frxExportPDF,
  frxDBSet, Data.DB, Datasnap.DBClient;

type
  TFIN_FM_R_COB = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsCliente: TTabSheet;
    lblClienteDisponiveis: TLabel;
    lboxClientes: TListBox;
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
    Label1: TLabel;
    deInicial: TJvDateEdit;
    Label2: TLabel;
    deFinal: TJvDateEdit;
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
    pmExcluirCliente: TPopupMenu;
    btnRemoverRegistroCliente: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmRemoverTodosFormaPag: TPopupMenu;
    btnRemoverTodosFormaPag: TMenuItem;
    pmRemoverTodosLocalTitulo: TPopupMenu;
    btnRemoverTodosLocalTitulo: TMenuItem;
    FIN_FR_R_COB_COB: TfrxReport;
    FIN_DB_R_COB_COB: TfrxDBDataset;
    FIN_PD_R_COB: TfrxPDFExport;
    FIN_XL_R_COB: TfrxXLSExport;
    FIN_FR_R_COB_CAR: TfrxReport;
    FIN_FR_R_COB_CTR: TfrxReport;
    FIN_DB_R_COB_ACO: TfrxDBDataset;
    tsVendedor: TTabSheet;
    lboxVendedor: TListBox;
    Label3: TLabel;
    pmExcluirVend: TPopupMenu;
    btnRemoverVend: TMenuItem;
    FIN_CD_R_COB_COB: TClientDataSet;
    FIN_CD_R_COB_ACO: TClientDataSet;
    FIN_FR_R_COB_CAR1: TfrxReport;
    Label4: TLabel;
    cbbOrdenacao: TComboBox;
    Label5: TLabel;
    lboxFormaSelecionadaExc: TListBox;
    pmRetornarFormaPg: TPopupMenu;
    MenuItem1: TMenuItem;
    Retirarformadepagamento1: TMenuItem;
    Retirartodososcartes1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxClientesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxFormaDisponivelDblClick(Sender: TObject);
    procedure lboxFormaSelecionadaDblClick(Sender: TObject);
    procedure lboxLocaisDisponiveisDblClick(Sender: TObject);
    procedure lboxLocalSelecionadoDblClick(Sender: TObject);
    procedure lboxPlanosDisponiveisDblClick(Sender: TObject);
    procedure lboxPlanoSelecionadoDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosFormaPagClick(Sender: TObject);
    procedure MenuItemPlanoContaClick(Sender: TObject);
    procedure MenuItemLocalTituloClick(Sender: TObject);
    procedure MenuItemFormasPagamentoClick(Sender: TObject);
    procedure btnRemoverRegistroClienteClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnRemoverRegistrosClick(Sender: TObject);
    procedure btnRemoverTodosLocalTituloClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverVendClick(Sender: TObject);
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure lboxFormaSelecionadaExcDblClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure Retirarformadepagamento1Click(Sender: TObject);
    procedure Retirartodososcartes1Click(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;
    var
      xOpcoes, xCondEmpresa, xCondCliente, xCondFormaPagamento,
      xCondFormaPagamentoExc,
      xCondLocalTitulo, xCondPlanoContas,xCondVendedor: string;
  public
    { Public declarations }
  end;

var
  FIN_FM_R_COB: TFIN_FM_R_COB;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_CLI, enConstantes, PSQ_UN_X_FUN;

procedure TFIN_FM_R_COB.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TFIN_FM_R_COB.btnRemoverRegistroClienteClick(Sender: TObject);
begin
  inherited;
   if lboxClientes.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxClientes.DeleteSelected;
end;

procedure TFIN_FM_R_COB.btnRemoverRegistrosClick(Sender: TObject);
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

procedure TFIN_FM_R_COB.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFIN_FM_R_COB.btnRemoverTodosFormaPagClick(Sender: TObject);
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

procedure TFIN_FM_R_COB.btnRemoverTodosLocalTituloClick(Sender: TObject);
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

procedure TFIN_FM_R_COB.btnRemoverVendClick(Sender: TObject);
begin
  inherited;
   if lboxVendedor.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxVendedor.DeleteSelected;
end;

procedure TFIN_FM_R_COB.ExibirRel;
var
  rDtaIni, rDtaFin, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
    begin
      Showmessage('Nenhum relatório foi selecionado.');
    end
  else
    begin
      // Período
        rDtaIni := deInicial.Text;
        rDtaFin := deFinal.Text;

      PreencherCondicao;

      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Cobrança' then
      begin
        FIN_CD_R_COB_COB.Close;
        FIN_CD_R_COB_COB.Data :=
          FIN_CD_R_COB_COB.DataRequest(
              VarArrayOf([lbxRelatorios.ItemIndex,rDtaIni,rDtaFin,xCondEmpresa,xCondCliente,
              xCondFormaPagamento,xCondLocalTitulo,
              xCondPlanoContas,xCondVendedor,cbbOrdenacao.ItemIndex,xCondFormaPagamentoExc]));

      if not FIN_CD_R_COB_COB.IsEmpty then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(FIN_FR_R_COB_CTR.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_COB_CTR.Name,xCodLme,xRevLme,nil);
          FIN_FR_R_COB_CTR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          FIN_FR_R_COB_CTR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          FIN_FR_R_COB_CTR.Variables['Opcoes'] := QuotedStr(xOpcoes);
          FIN_FR_R_COB_CTR.PrepareReport();
          FIN_FR_R_COB_CTR.ShowReport();
        end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;
    end;

     if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Carta de Cobrança' then
      begin
        FIN_CD_R_COB_COB.Close;
        FIN_CD_R_COB_COB.Data :=
          FIN_CD_R_COB_COB.DataRequest(
              VarArrayOf([lbxRelatorios.ItemIndex,rDtaIni,rDtaFin,xCondEmpresa,xCondCliente,xCondFormaPagamento,
              xCondLocalTitulo,
              xCondPlanoContas,xCondVendedor,xCondFormaPagamentoExc]));

      if not FIN_CD_R_COB_COB.IsEmpty then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(FIN_FR_R_COB_CAR.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_COB_CAR.Name,xCodLme,xRevLme,nil);
          FIN_FR_R_COB_CAR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          FIN_FR_R_COB_CAR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          FIN_FR_R_COB_CAR.Variables['Opcoes'] := QuotedStr(xOpcoes);
          FIN_FR_R_COB_CAR.PrepareReport();
          FIN_FR_R_COB_CAR.ShowReport();
        end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;
    end;

    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Acompanhamento de Cobrança' then
      begin
        FIN_CD_R_COB_ACO.Close;
        FIN_CD_R_COB_ACO.Data :=
          FIN_CD_R_COB_ACO.DataRequest(
              VarArrayOf([rDtaIni,rDtaFin,xCondEmpresa,xCondCliente,xCondFormaPagamento,
               xCondLocalTitulo,xCondPlanoContas,xCondVendedor,xCondFormaPagamentoExc]));

      if not FIN_CD_R_COB_ACO.IsEmpty then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(FIN_FR_R_COB_COB.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_COB_COB.Name,xCodLme,xRevLme,nil);
          FIN_FR_R_COB_COB.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          FIN_FR_R_COB_COB.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          FIN_FR_R_COB_COB.Variables['Opcoes'] := QuotedStr(xOpcoes);
          FIN_FR_R_COB_COB.PrepareReport();
          FIN_FR_R_COB_COB.ShowReport();
        end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;
    end;

    end;
end;

procedure TFIN_FM_R_COB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_R_COB);
end;

procedure TFIN_FM_R_COB.FormShow(Sender: TObject);
begin
  inherited;
  //lbxRelatorios.ItemIndex := 0;

  cbbOrdenacao.Enabled := false;
  //lbxRelatoriosClick(self);

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

  // Clientes --------------------------------------------------------------

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
end;

procedure TFIN_FM_R_COB.lboxClientesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
        PSQ_FM_X_CLI.ShowModal;
        if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxClientes,7,StrZero(PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,7,0)) then
                begin
                  lboxClientes.Items.Add(StrZero(PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,7,0) +
                                             ' - ' + PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_CLI.Free;
     end;
end;

procedure TFIN_FM_R_COB.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFIN_FM_R_COB.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_COB.lboxFormaDisponivelDblClick(Sender: TObject);
begin
  inherited;
  if lboxFormaDisponivel.ItemIndex > - 1 then
     begin
       lboxFormaSelecionada.Items.Add(lboxFormaDisponivel.Items[lboxFormaDisponivel.ItemIndex]);
       lboxFormaDisponivel.Items.Delete(lboxFormaDisponivel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_COB.lboxFormaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxFormaSelecionada.ItemIndex > -1 then
     begin
       lboxFormaDisponivel.Items.Add(lboxFormaSelecionada.Items[lboxFormaSelecionada.ItemIndex]);
       lboxFormaSelecionada.Items.Delete(lboxFormaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_COB.lboxFormaSelecionadaExcDblClick(Sender: TObject);
begin
  inherited;
  if lboxFormaSelecionadaExc.ItemIndex > -1 then
     begin
       lboxFormaDisponivel.Items.Add(lboxFormaSelecionadaExc.Items[lboxFormaSelecionadaExc.ItemIndex]);
       lboxFormaSelecionadaExc.Items.Delete(lboxFormaSelecionadaExc.ItemIndex);
     end;
end;

procedure TFIN_FM_R_COB.lboxLocaisDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxLocaisDisponiveis.ItemIndex > - 1 then
     begin
       lboxLocalSelecionado.Items.Add(lboxLocaisDisponiveis.Items[lboxLocaisDisponiveis.ItemIndex]);
       lboxLocaisDisponiveis.Items.Delete(lboxLocaisDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_COB.lboxLocalSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxLocalSelecionado.ItemIndex > -1 then
     begin
       lboxLocaisDisponiveis.Items.Add(lboxLocalSelecionado.Items[lboxLocalSelecionado.ItemIndex]);
       lboxLocalSelecionado.Items.Delete(lboxLocalSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_COB.lboxPlanosDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxplanosDisponiveis.ItemIndex > -1 then
     begin
       lboxPlanoSelecionado.Items.Add(lboxplanosDisponiveis.Items[lboxplanosDisponiveis.ItemIndex]);
       lboxplanosDisponiveis.Items.Delete(lboxplanosDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_COB.lboxPlanoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxPlanoSelecionado.ItemIndex > -1 then
     begin
       lboxplanosDisponiveis.Items.Add(lboxPlanoSelecionado.Items[lboxPlanoSelecionado.ItemIndex]);
       lboxPlanoSelecionado.Items.Delete(lboxPlanoSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_COB.lboxVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.funAtivo := true;
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxVendedor,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0)) then
                begin
                  lboxVendedor.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TFIN_FM_R_COB.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
  cbbOrdenacao.Enabled := false;
  if lbxRelatorios.ItemIndex = 0 then
     cbbOrdenacao.Enabled := true;
end;

procedure TFIN_FM_R_COB.MenuItem1Click(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxFormaSelecionadaExc.ClearSelection;

  if lboxFormaSelecionadaExc.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxFormaSelecionadaExc.Items.Count > 0 then
     begin
       for i := 0 to lboxFormaSelecionadaExc.Items.Count - 1 do
           begin
             lboxFormaDisponivel.Items.Add(lboxFormaSelecionadaExc.Items[i]);
             lboxFormaSelecionadaExc.Items.Delete(lboxFormaSelecionadaExc.ItemIndex);
           end;
       lboxFormaSelecionadaExc.Items.Clear;
     end;
end;

procedure TFIN_FM_R_COB.menuItemEmpresasClick(Sender: TObject);
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

procedure TFIN_FM_R_COB.MenuItemFormasPagamentoClick(Sender: TObject);
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

procedure TFIN_FM_R_COB.MenuItemLocalTituloClick(Sender: TObject);
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

procedure TFIN_FM_R_COB.MenuItemPlanoContaClick(Sender: TObject);
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

procedure TFIN_FM_R_COB.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesCliente,opcoesFormaPagamento, opcoesFormaPagamentoExc,
  opcoesLocalTitulo, opcoesPlanoContas,opcoesVendedor:string;
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

  // Cliente --------------------------------------------------------------
  xCondCliente := '';
  if lboxClientes.Count > 0 then
     begin
       for i := 0 to lboxClientes.Count - 1 do
          begin
            if xCondCliente <> '' then
               begin
                 xCondCliente :=
                 xCondCliente + ',' +''''+trim(copy(lboxClientes.Items[i],1,7))+'''';
                 opcoesCliente :=
                 opcoesCliente +'                    '+lboxClientes.Items[i] + #13+#10;
               end;
            if xCondCliente = '' then
               begin
                 xCondCliente :=
                 xCondCliente +''''+trim(copy(lboxClientes.Items[i],1,7))+'''';
                 opcoesCliente :=
                 opcoesCliente + lboxClientes.Items[i] + #13+#10;
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

  // Formas de Pagamento que não irá fazer parte do relatório ----------------------------------------------------------------
  xCondFormaPagamentoExc := '';
  if lboxFormaSelecionadaExc.Count > 0 then
     begin
       for i := 0 to lboxFormaSelecionadaExc.Count - 1 do
          begin
            if xCondFormaPagamentoExc <> '' then
               begin
                 xCondFormaPagamentoExc :=
                 xCondFormaPagamentoExc + ',' +''''+trim(copy(lboxFormaSelecionadaExc.Items[i],1,3))+'''';
                 opcoesFormaPagamentoExc :=
                 opcoesFormaPagamentoExc +'                    '+lboxFormaSelecionadaExc.Items[i] + #13+#10;
               end;
            if xCondFormaPagamentoExc = '' then
               begin
                 xCondFormaPagamentoExc :=
                 xCondFormaPagamentoExc +''''+trim(copy(lboxFormaSelecionadaExc.Items[i],1,3))+'''';
                 opcoesFormaPagamentoExc :=
                 opcoesFormaPagamentoExc + lboxFormaSelecionadaExc.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
       opcoesFormaPagamentoExc:= 'Nenhum';
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


  // Vendedor --------------------------------------------------------------
  xCondVendedor := '';
  if lboxVendedor.Count > 0 then
     begin
       for i := 0 to lboxVendedor.Count - 1 do
          begin
            if xCondVendedor <> '' then
               begin
                 xCondVendedor :=
                 xCondVendedor + ',' +''''+trim(copy(lboxVendedor.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor +'                    '+lboxVendedor.Items[i] + #13+#10;
               end;
            if xCondVendedor = '' then
               begin
                 xCondVendedor :=
                 xCondVendedor +''''+trim(copy(lboxVendedor.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor + lboxVendedor.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
        opcoesVendedor := 'Todos';
      end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Cliente...........: ' + opcoesCliente+#13+#10;
   xOpcoes := xOpcoes + 'Forma de Pagamento: ' + opcoesFormaPagamento+#13+#10;
   xOpcoes := xOpcoes + 'Local do Título...: ' + opcoesLocalTitulo+#13+#10;
   xOpcoes := xOpcoes + 'Plano de Contas...: ' + opcoesPlanoContas+#13+#10;
   xOpcoes := xOpcoes + 'Vendedor..........: ' + opcoesVendedor+#13+#10;
end;

procedure TFIN_FM_R_COB.Retirarformadepagamento1Click(Sender: TObject);
begin
  inherited;

  if lboxFormaDisponivel.ItemIndex > - 1 then
     begin
       lboxFormaSelecionadaExc.Items.Add(lboxFormaDisponivel.Items[lboxFormaDisponivel.ItemIndex]);
       lboxFormaDisponivel.Items.Delete(lboxFormaDisponivel.ItemIndex);
     end;

end;

procedure TFIN_FM_R_COB.Retirartodososcartes1Click(Sender: TObject);
var
  z,i,n: integer;
  index: Array[0..19] of integer;
begin
  inherited;


  // Formas de Pagamento que não irá fazer parte do relatório ----------------------------------------------------------------
  xCondFormaPagamentoExc := '';
  i:= 0;

  if lboxFormaDisponivel.Count > 0 then
     begin
       z := lboxFormaDisponivel.Count - 1;
       while not (i = z) do
          begin
            i := i + 1;
            dmGeral.BUS_CD_C_FPG2.Close;
            dmGeral.BUS_CD_C_FPG2.Data :=
                dmGeral.BUS_CD_C_FPG2.DataRequest(
                           VarArrayOf([0, trim(copy(lboxFormaDisponivel.Items[i],1,3))]));
            if dmGeral.BUS_CD_C_FPG2.FieldByName('doc_impresso').AsInteger = 3 then  // Cartão
               begin
                 lboxFormaSelecionadaExc.Items.Add(lboxFormaDisponivel.Items[i]);
                 lboxFormaDisponivel.Items.Delete(i);
                 z := lboxFormaDisponivel.Count - 1;
                 i := -1;
               end;
            //else
               //i := i + 1;
          end;
     end;
end;

function TFIN_FM_R_COB.TestarCampos: Boolean;
var
mens: String;
begin

  result := True;
  mens := '';

  if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
    begin
      mens := mens +  '.O período deve ser preenchido.' + #13;
    end;
  if (deInicial.Date >  deFinal.Date) then
    begin
      mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
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
