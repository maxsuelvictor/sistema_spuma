unit FIN_UN_R_EXF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.ComCtrls, Vcl.ImgList, JvExExtCtrls, JvExtComponent,
  JvPanel, Vcl.ExtCtrls, Vcl.Menus, frxExportXLS, frxClass, frxExportPDF,
  frxDBSet, Data.DB, Datasnap.DBClient;

type
  TFIN_FM_R_EXF = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
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
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmRemoverTodosFormaPag: TPopupMenu;
    btnRemoverTodosFormaPag: TMenuItem;
    pmRemoverTodosLocalTitulo: TPopupMenu;
    btnRemoverTodosLocalTitulo: TMenuItem;
    lblSituacao: TLabel;
    FIN_DP_R_EXT_FOR_PAG: TfrxDBDataset;
    FIN_DP_R_EXT_FOR_ABE: TfrxDBDataset;
    FIN_PD_R_EXC_FOR: TfrxPDFExport;
    FIN_XL_R_EXC_FOR: TfrxXLSExport;
    Label3: TLabel;
    txtFornecedor: TJvComboEdit;
    lblFornecedor: TLabel;
    FIN_FR_R_EXC_FOR: TfrxReport;
    cbbSituacao: TComboBox;
    txtobra: TJvComboEdit;
    Label4: TLabel;
    FIN_CD_R_EXT_FOR_ABE: TClientDataSet;
    FIN_CD_R_EXT_FOR_ABEnum_parcela: TWideStringField;
    FIN_CD_R_EXT_FOR_ABEint_numnfe: TIntegerField;
    FIN_CD_R_EXT_FOR_ABEint_nomefpg: TWideStringField;
    FIN_CD_R_EXT_FOR_ABEdta_emissao: TDateField;
    FIN_CD_R_EXT_FOR_ABEdta_vencimento: TDateField;
    FIN_CD_R_EXT_FOR_ABEid_fornecedor: TIntegerField;
    FIN_CD_R_EXT_FOR_ABEid_local_titulo: TIntegerField;
    FIN_CD_R_EXT_FOR_ABEid_plano: TWideStringField;
    FIN_CD_R_EXT_FOR_ABEint_nomefor: TWideStringField;
    FIN_CD_R_EXT_FOR_ABEdoc_cnpj_cpf: TWideMemoField;
    FIN_CD_R_EXT_FOR_ABEvlr_parcela: TFMTBCDField;
    FIN_CD_R_EXT_FOR_ABEvlr_original: TFMTBCDField;
    FIN_CD_R_EXT_FOR_ABEvlr_pago: TFMTBCDField;
    FIN_CD_R_EXT_FOR_ABEint_atraso: TIntegerField;
    FIN_CD_R_EXT_FOR_ABEint_vlr_restante: TFloatField;
    FIN_CD_R_EXT_FOR_ABEint_vlr_juros: TFloatField;
    FIN_CD_R_EXT_FOR_ABEid_obra: TIntegerField;
    FIN_CD_R_EXT_FOR_PAG: TClientDataSet;
    FIN_CD_R_EXT_FOR_PAGnum_parcela: TWideStringField;
    FIN_CD_R_EXT_FOR_PAGint_numnfe: TIntegerField;
    FIN_CD_R_EXT_FOR_PAGint_nomefpg: TWideStringField;
    FIN_CD_R_EXT_FOR_PAGdoc_cnpj_cpf: TWideMemoField;
    FIN_CD_R_EXT_FOR_PAGdta_pagamento: TDateField;
    FIN_CD_R_EXT_FOR_PAGdta_vencimento: TDateField;
    FIN_CD_R_EXT_FOR_PAGid_fornecedor: TIntegerField;
    FIN_CD_R_EXT_FOR_PAGid_local_titulo: TIntegerField;
    FIN_CD_R_EXT_FOR_PAGid_plano: TWideStringField;
    FIN_CD_R_EXT_FOR_PAGint_nomefor: TWideStringField;
    FIN_CD_R_EXT_FOR_PAGvlr_saldo: TFMTBCDField;
    FIN_CD_R_EXT_FOR_PAGvlr_original: TFMTBCDField;
    FIN_CD_R_EXT_FOR_PAGvlr_pago: TFMTBCDField;
    FIN_CD_R_EXT_FOR_PAGint_atraso: TIntegerField;
    FIN_CD_R_EXT_FOR_PAGint_vlr_juros: TFMTBCDField;
    FIN_CD_R_EXT_FOR_PAGint_id_obra: TIntegerField;
    FIN_FR_R_EXC_FOR_NCR: TfrxReport;
    FIN_CD_R_EXT_FOR_NCR: TClientDataSet;
    FIN_DP_R_EXT_FOR_NCR: TfrxDBDataset;
    FIN_CD_R_EXT_FOR_NCRid_empresa: TIntegerField;
    FIN_CD_R_EXT_FOR_NCRid_credito: TIntegerField;
    FIN_CD_R_EXT_FOR_NCRdta_credito: TDateField;
    FIN_CD_R_EXT_FOR_NCRid_fornecedor: TIntegerField;
    FIN_CD_R_EXT_FOR_NCRint_nomefor: TWideStringField;
    FIN_CD_R_EXT_FOR_NCRhistorico: TWideStringField;
    FIN_CD_R_EXT_FOR_NCRint_descorigem: TWideStringField;
    FIN_CD_R_EXT_FOR_NCRsaldo_anterior: TFMTBCDField;
    FIN_CD_R_EXT_FOR_NCRentrada: TFMTBCDField;
    FIN_CD_R_EXT_FOR_NCRsaida: TFMTBCDField;
    FIN_CD_R_EXT_FOR_EST: TClientDataSet;
    FIN_DP_R_EXT_FOR_EST: TfrxDBDataset;
    FIN_CD_R_EXT_FOR_ESTid_fornecedor: TIntegerField;
    FIN_CD_R_EXT_FOR_ESTlim_valor: TFMTBCDField;
    FIN_CD_R_EXT_FOR_ESTvlr_total_tit_aberto: TFMTBCDField;
    FIN_CD_R_EXT_FOR_ESTvlr_total_tit_vencido: TFMTBCDField;
    FIN_CD_R_EXT_FOR_ESTvlr_total_tit_juros: TFloatField;
    FIN_CD_R_EXT_FOR_ESTvlr_total_tit_corrigido: TFloatField;
    FIN_CD_R_EXT_FOR_ESTvlr_total_tit_vencer: TFMTBCDField;
    FIN_CD_R_EXT_FOR_ESTvlr_che_aberto: TFMTBCDField;
    FIN_CD_R_EXT_FOR_ESTvlr_total_tit_pagos: TFMTBCDField;
    FIN_CD_R_EXT_FOR_ESTvlr_total_compras: TFMTBCDField;
    FIN_CD_R_EXT_FOR_ESTvlr_total_dev: TFMTBCDField;
    chbMostrarEst: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
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
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnRemoverRegistrosClick(Sender: TObject);
    procedure btnRemoverTodosLocalTituloClick(Sender: TObject);
    procedure btnRemoverTodosCentroCustoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure txtFornecedorButtonClick(Sender: TObject);
    procedure txtFornecedorExit(Sender: TObject);
    procedure txtobraButtonClick(Sender: TObject);
    procedure txtobraExit(Sender: TObject);
    procedure lbxRelatoriosClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;
    var
      xOpcoes, xCondEmpresa, xCondFormaPagamento,
      xCondLocalTitulo, xCondPlanoContas,Centro,xCondCentroCusto,
      nome,cnpj,ende,cid,est,cep,bairro,obra: string;
  public
    { Public declarations }
  end;

var
  FIN_FM_R_EXF: TFIN_FM_R_EXF;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_CLI, PSQ_UN_X_FOR, enConstantes, PSQ_UN_X_OBR,
  uDmCtc;

procedure TFIN_FM_R_EXF.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TFIN_FM_R_EXF.btnRemoverRegistrosClick(Sender: TObject);
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

procedure TFIN_FM_R_EXF.btnRemoverTodosCentroCustoClick(Sender: TObject);
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

procedure TFIN_FM_R_EXF.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFIN_FM_R_EXF.btnRemoverTodosFormaPagClick(Sender: TObject);
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

procedure TFIN_FM_R_EXF.btnRemoverTodosLocalTituloClick(Sender: TObject);
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

procedure TFIN_FM_R_EXF.ExibirRel;
var
  rDtaIni, rDtaFin,rFornecedor, PathImg: String;
  LogoEmpresa: TfrxPictureView;
  memoOpcao: TfrxmemoView;
  Memo: TfrxMemoView;
  rm: TfrxReportSummary;
  rd: TfrxFooter;
  i:integer;
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
      // Fornecedor
      rFornecedor := txtFornecedor.Text;

      PreencherCondicao;
      FIN_CD_R_EXT_FOR_EST.Close;
      FIN_CD_R_EXT_FOR_EST.Data :=
        FIN_CD_R_EXT_FOR_EST.DataRequest(VarArrayOf([rFornecedor]));

      if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Geral') then
         begin
          // Necessario para limpar o Cds para as Situações: "Aberto" ou "Fechado" ; Esaú
            FIN_CD_R_EXT_FOR_ABE.Close;
            FIN_CD_R_EXT_FOR_ABE.CreateDataSet;
            FIN_CD_R_EXT_FOR_PAG.Close;
            FIN_CD_R_EXT_FOR_PAG.CreateDataSet;

          if (cbbSituacao.ItemIndex = 0) or (cbbSituacao.ItemIndex = 1) then
            begin
              FIN_CD_R_EXT_FOR_ABE.Close;
              FIN_CD_R_EXT_FOR_ABE.Data :=
                FIN_CD_R_EXT_FOR_ABE.DataRequest(
                  VarArrayOf([rDtaIni,rDtaFin,xCondEmpresa,rFornecedor,xCondFormaPagamento,xCondLocalTitulo,
                    xCondPlanoContas,xCondCentroCusto,txtobra.Text]));
            end;
          if (cbbSituacao.ItemIndex = 0) or (cbbSituacao.ItemIndex = 2) then
            begin
              FIN_CD_R_EXT_FOR_PAG.Close;
              FIN_CD_R_EXT_FOR_PAG.Data :=
                FIN_CD_R_EXT_FOR_PAG.DataRequest(
                  VarArrayOf([rDtaIni,rDtaFin,xCondEmpresa,rFornecedor,xCondFormaPagamento,xCondLocalTitulo,
                    xCondPlanoContas,xCondCentroCusto,txtobra.Text]));
            end;
          memoOpcao := TfrxMemoView (FIN_FR_R_EXC_FOR.FindComponent('txtOpcoesRelGer2'));
          memoOpcao.Visible := True;
          if (cbbSituacao.ItemIndex in [0,2]) and (not FIN_CD_R_EXT_FOR_PAG.IsEmpty)  then
             begin
               memoOpcao := TfrxMemoView (FIN_FR_R_EXC_FOR.FindComponent('txtOpcoesRelGer2'));
               memoOpcao.Visible := False;
             end;
          PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

          if not (FIN_CD_R_EXT_FOR_ABE.IsEmpty and  FIN_CD_R_EXT_FOR_PAG.IsEmpty) then
            begin
              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(FIN_FR_R_EXC_FOR.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
              if cbbSituacao.ItemIndex = 1 then
                begin
                  dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_EXC_FOR.Name,xCodLme,xRevLme,nil);
                  FIN_FR_R_EXC_FOR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  FIN_FR_R_EXC_FOR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  FIN_FR_R_EXC_FOR.Variables['Opcoes'] := QuotedStr(xOpcoes);
                  FIN_FR_R_EXC_FOR.Variables['nome'] := QuotedStr(nome);
                  FIN_FR_R_EXC_FOR.Variables['cnpj'] := QuotedStr(cnpj);
                  FIN_FR_R_EXC_FOR.Variables['ende'] := QuotedStr(ende);
                  FIN_FR_R_EXC_FOR.Variables['cid'] := QuotedStr(cid);
                  FIN_FR_R_EXC_FOR.Variables['est'] := QuotedStr(est);
                  FIN_FR_R_EXC_FOR.Variables['cep'] := QuotedStr(cep);
                  FIN_FR_R_EXC_FOR.Variables['bairro'] := QuotedStr(bairro);
                  FIN_FR_R_EXC_FOR.Variables['obra'] := QuotedStr(obra);
                  FIN_FR_R_EXC_FOR.PrepareReport();
                  FIN_FR_R_EXC_FOR.ShowReport();
                end
              else
                begin
                  dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_EXC_FOR.Name,xCodLme,xRevLme,nil);
                  FIN_FR_R_EXC_FOR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  FIN_FR_R_EXC_FOR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  FIN_FR_R_EXC_FOR.Variables['Opcoes'] := QuotedStr(xOpcoes);
                  FIN_FR_R_EXC_FOR.Variables['nome'] := QuotedStr(nome);
                  FIN_FR_R_EXC_FOR.Variables['cnpj'] := QuotedStr(cnpj);
                  FIN_FR_R_EXC_FOR.Variables['ende'] := QuotedStr(ende);
                  FIN_FR_R_EXC_FOR.Variables['cid'] := QuotedStr(cid);
                  FIN_FR_R_EXC_FOR.Variables['est'] := QuotedStr(est);
                  FIN_FR_R_EXC_FOR.Variables['cep'] := QuotedStr(cep);
                  FIN_FR_R_EXC_FOR.Variables['bairro'] := QuotedStr(bairro);
                  FIN_FR_R_EXC_FOR.Variables['obra'] := QuotedStr(obra);
                  FIN_FR_R_EXC_FOR.PrepareReport();
                  FIN_FR_R_EXC_FOR.ShowReport();
                end;
            end
          else
            begin
              ShowMessage('Nenhum registro foi encontrado.');
            end;
         end;

      if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Nota de Crédito') then
        begin
            FIN_CD_R_EXT_FOR_NCR.Close;
            FIN_CD_R_EXT_FOR_NCR.Data :=
              FIN_CD_R_EXT_FOR_NCR.DataRequest(
                VarArrayOf([rDtaIni,rDtaFin,rFornecedor,xCondEmpresa]));

            if (not FIN_CD_R_EXT_FOR_NCR.IsEmpty) then
              begin
                PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                if FileExists(PathImg) then
                  begin
                    LogoEmpresa := TfrxPictureView(FIN_FR_R_EXC_FOR_NCR.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                      LogoEmpresa.Picture.LoadFromFile(PathImg);
                  end;



                 for I := 1 to 24 do
                   begin
                    memo := TfrxMemoView (FIN_FR_R_EXC_FOR_NCR.FindComponent('mm'+IntToStr(i)));
                    memo.Visible := chbMostrarEst.Checked;
                   end;


                dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_EXC_FOR_NCR.Name,xCodLme,xRevLme,nil);

                FIN_CD_R_EXT_FOR_NCR.First;
                FIN_FR_R_EXC_FOR_NCR.Variables['cod_fornecedor'] := QuotedStr(FIN_CD_R_EXT_FOR_NCR.FieldByName('ID_FORNECEDOR').AsString);
                FIN_FR_R_EXC_FOR_NCR.Variables['nome_fornecedor'] := QuotedStr(FIN_CD_R_EXT_FOR_NCR.FieldByName('INT_NOMEFOR').AsString);
                FIN_FR_R_EXC_FOR_NCR.Variables['saldo_anterior'] :=
                 QuotedStr(FormatCurr('###,###,##0.00' ,FIN_CD_R_EXT_FOR_NCR.FieldByName('SALDO_ANTERIOR').AsCurrency));
                FIN_FR_R_EXC_FOR_NCR.Variables['saldo_atual'] :=
                   QuotedStr(FormatCurr('###,###,##0.00' ,dmGeral.BusSaldoCreFor(txtFornecedor.Text)));
                FIN_FR_R_EXC_FOR_NCR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                FIN_FR_R_EXC_FOR_NCR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                FIN_FR_R_EXC_FOR_NCR.Variables['Opcoes'] := QuotedStr(xOpcoes);
                FIN_FR_R_EXC_FOR_NCR.PrepareReport();
                FIN_FR_R_EXC_FOR_NCR.ShowReport();
              end
            else
              begin
                ShowMessage('Nenhum registro foi encontrado.');
              end;
        end;
    end;
end;

procedure TFIN_FM_R_EXF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_R_EXF);
end;

procedure TFIN_FM_R_EXF.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  //lbxRelatoriosClick(self);
  label4.Visible := dmgeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean;
  txtobra.Visible := dmgeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean;


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
end;

procedure TFIN_FM_R_EXF.txtobraButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_OBR := TPSQ_FM_X_OBR.Create(Self);
  PSQ_FM_X_OBR.ShowModal;
  if not PSQ_FM_X_OBR.BUS_CD_C_OBR.IsEmpty then
    begin
      txtobra.Text := PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('id_obra').AsString;
    end;
  PSQ_FM_X_OBR.Free;
end;

procedure TFIN_FM_R_EXF.txtobraExit(Sender: TObject);
begin
  inherited;
  dmCtc.BUS_CD_C_OBR.Close;
  dmCtc.BUS_CD_C_OBR.Data :=
    dmCtc.BUS_CD_C_OBR.DataRequest( VarArrayOf([0, txtobra.Text,'True']));

  if not dmCtc.BUS_CD_C_OBR.IsEmpty then
    begin
      OBRA := dmCtc.BUS_CD_C_OBR.FieldByName('id_obra').AsString;
    end
  else
    begin
      if txtobra.Text <> '' then
        begin
          showmessage('Obra não Encontrada!');
          txtobra.Text := '';
        end;
    end;
end;

procedure TFIN_FM_R_EXF.lboxCentroCustoDisponiveisDblClick(Sender: TObject);
begin
  inherited;
   if lboxCentroCustoDisponiveis.ItemIndex > - 1 then
     begin
       lboxCentroCustoSelecionado.Items.Add(lboxCentroCustoDisponiveis.Items[lboxCentroCustoDisponiveis.ItemIndex]);
       lboxCentroCustoDisponiveis.Items.Delete(lboxCentroCustoDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXF.lboxCentroCustoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxCentroCustoSelecionado.ItemIndex > -1 then
     begin
       lboxCentroCustoDisponiveis.Items.Add(lboxCentroCustoSelecionado.Items[lboxCentroCustoSelecionado.ItemIndex]);
       lboxCentroCustoSelecionado.Items.Delete(lboxCentroCustoSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXF.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXF.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXF.lboxFormaDisponivelDblClick(Sender: TObject);
begin
  inherited;
  if lboxFormaDisponivel.ItemIndex > - 1 then
     begin
       lboxFormaSelecionada.Items.Add(lboxFormaDisponivel.Items[lboxFormaDisponivel.ItemIndex]);
       lboxFormaDisponivel.Items.Delete(lboxFormaDisponivel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXF.lboxFormaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxFormaSelecionada.ItemIndex > -1 then
     begin
       lboxFormaDisponivel.Items.Add(lboxFormaSelecionada.Items[lboxFormaSelecionada.ItemIndex]);
       lboxFormaSelecionada.Items.Delete(lboxFormaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXF.lboxLocaisDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxLocaisDisponiveis.ItemIndex > - 1 then
     begin
       lboxLocalSelecionado.Items.Add(lboxLocaisDisponiveis.Items[lboxLocaisDisponiveis.ItemIndex]);
       lboxLocaisDisponiveis.Items.Delete(lboxLocaisDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXF.lboxLocalSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxLocalSelecionado.ItemIndex > -1 then
     begin
       lboxLocaisDisponiveis.Items.Add(lboxLocalSelecionado.Items[lboxLocalSelecionado.ItemIndex]);
       lboxLocalSelecionado.Items.Delete(lboxLocalSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXF.lboxPlanosDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxplanosDisponiveis.ItemIndex > -1 then
     begin
       lboxPlanoSelecionado.Items.Add(lboxplanosDisponiveis.Items[lboxplanosDisponiveis.ItemIndex]);
       lboxplanosDisponiveis.Items.Delete(lboxplanosDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXF.lboxPlanoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxPlanoSelecionado.ItemIndex > -1 then
     begin
       lboxplanosDisponiveis.Items.Add(lboxPlanoSelecionado.Items[lboxPlanoSelecionado.ItemIndex]);
       lboxPlanoSelecionado.Items.Delete(lboxPlanoSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXF.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
  lblSituacao.Visible := true;
  cbbSituacao.Visible := true;
  pcFiltros.Visible   := true;
  chbMostrarEst.Visible := false;
  Label4.Visible := true;
  txtobra.Visible := true;
  tsFormaPagamento.TabVisible := true;
  tsLocalTitulo.TabVisible := true;
  tsPlanoContas.TabVisible := true;

  tsCentroCusto.TabVisible := true;

  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Nota de Crédito') then
    begin
      lblSituacao.Visible := false;
      cbbSituacao.Visible := false;
     // pcFiltros.Visible   := false;
      tsFormaPagamento.TabVisible := false;
      tsLocalTitulo.TabVisible := false;
      tsPlanoContas.TabVisible := false;
      tsCentroCusto.TabVisible := false;

      chbMostrarEst.Visible := true;
      Label4.Visible := false;
      txtobra.Visible := false;

    end;
end;

procedure TFIN_FM_R_EXF.MenuItemCentroCustoClick(Sender: TObject);
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

procedure TFIN_FM_R_EXF.menuItemEmpresasClick(Sender: TObject);
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

procedure TFIN_FM_R_EXF.MenuItemFormasPagamentoClick(Sender: TObject);
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

procedure TFIN_FM_R_EXF.MenuItemLocalTituloClick(Sender: TObject);
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

procedure TFIN_FM_R_EXF.MenuItemPlanoContaClick(Sender: TObject);
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

procedure TFIN_FM_R_EXF.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesFormaPagamento,opcoesLocalTitulo,
  opcoesPlanoContas,opcoesCentroCusto:string;
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

  // Centro de Custo ---------------------------------------------------------
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
       opcoesCentroCusto :='Todos';
     end;
     end
  else
     begin
       opcoesCentroCusto :='Todos';
     end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Forma de Pagamento: ' + opcoesFormaPagamento+#13+#10;
   xOpcoes := xOpcoes + 'Local do Título...: ' + opcoesLocalTitulo+#13+#10;
   xOpcoes := xOpcoes + 'Plano de Contas...: ' + opcoesPlanoContas+#13+#10;
   xOpcoes := xOpcoes + 'Centro de Custo...: ' + opcoesCentroCusto+#13+#10;
end;

function TFIN_FM_R_EXF.TestarCampos: Boolean;
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
  if (lboxEmpresaSelecionada.Count = 0) and (lbxRelatorios.Items[lbxRelatorios.ItemIndex] <> '02 - Nota de Crédito') then
    begin
      mens := mens +  '.É necessário selecionar pelos menos 1 empresa' + #13;
    end;
  if txtFornecedor.Text = '' then
    begin
      mens := mens +  '.É necessario selecionar um Fornecedor.' + #13;
    end;

  if trim(mens) <> '' then
          begin
            ShowMessage('Atenção!' + #13 + mens);
            Result := False;
            exit;
          end;
end;

procedure TFIN_FM_R_EXF.txtFornecedorButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
  PSQ_FM_X_FOR.ShowModal;
  if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
    begin
      txtFornecedor.Text := PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('id_fornecedor').AsString;
      lblFornecedor.Caption:= PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('descricao').AsString;
    end;
  PSQ_FM_X_FOR.Free;
end;

procedure TFIN_FM_R_EXF.txtFornecedorExit(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_C_FOR.Close;
  dmgeral.BUS_CD_C_FOR.Data :=
  dmgeral.BUS_CD_C_FOR.DataRequest(
     VarArrayOf([0, txtFornecedor.Text]));

  if not dmgeral.BUS_CD_C_FOR.IsEmpty then
    begin
      lblFornecedor.Caption:= dmgeral.BUS_CD_C_FOR.FieldByName('descricao').AsString;
      NOME := dmgeral.BUS_CD_C_FOR.FieldByName('descricao').AsString;
      CNPJ := dmgeral.BUS_CD_C_FOR.FieldByName('doc_cnpj').AsString;
      ENDE := dmgeral.BUS_CD_C_FOR.FieldByName('endereco').AsString;;
       CID := dmgeral.BUS_CD_C_FOR.FieldByName('int_nomecid').AsString;
       EST := dmgeral.BUS_CD_C_FOR.FieldByName('int_uf').AsString;
       CEP := dmgeral.BUS_CD_C_FOR.FieldByName('cep').AsString;
    BAIRRO := dmgeral.BUS_CD_C_FOR.FieldByName('bairro').AsString;
    end
  else
    begin
      showmessage('Fornecedor não Encontrado!');
      txtFornecedor.Text := '';
    end;
end;

end.
