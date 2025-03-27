unit FIN_UN_R_EXC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.ComCtrls, Vcl.ImgList, JvExExtCtrls, JvExtComponent,
  JvPanel, Vcl.ExtCtrls, Vcl.Menus, frxExportXLS, frxClass, frxExportPDF,
  frxDBSet, JvDBControls, Data.DB, Datasnap.DBClient;

type
  TFIN_FM_R_EXC = class(TPAD_FM_X_REL)
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
    Label1: TLabel;
    deInicial: TJvDateEdit;
    Label2: TLabel;
    deFinal: TJvDateEdit;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmSelPlanosConta: TPopupMenu;
    MenuItemPlanoConta: TMenuItem;
    pmSelFormasPagamento: TPopupMenu;
    MenuItemFormasPagamento: TMenuItem;
    pmRemoverTodosPlanoContas: TPopupMenu;
    btnRemoverRegistros: TMenuItem;
    pmSelLocaisTitulo: TPopupMenu;
    MenuItemLocalTitulo: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmRemoverTodosFormaPag: TPopupMenu;
    btnRemoverTodosFormaPag: TMenuItem;
    pmRemoverTodosLocalTitulo: TPopupMenu;
    btnRemoverTodosLocalTitulo: TMenuItem;
    lblSituacao: TLabel;
    cbbSituacao: TComboBox;
    FIN_FR_R_EXC_CLI: TfrxReport;
    FIN_DP_R_EXC_CLI_ABE: TfrxDBDataset;
    FIN_PD_R_EXC_CLI: TfrxPDFExport;
    FIN_XL_R_EXC_CLI: TfrxXLSExport;
    FIN_DP_R_EXC_CLI_PAG: TfrxDBDataset;
    lblCliente: TLabel;
    txtCliente: TJvComboEdit;
    Label3: TLabel;
    FIN_FR_R_EXC_CLI_NCR: TfrxReport;
    FIN_DB_R_EXC_CLI_NCR: TfrxDBDataset;
    txtJurosAtraso: TEdit;
    lblJurosAtraso: TLabel;
    chbMostrarEst: TCheckBox;
    FIN_DB_R_EXC_CLI_EST: TfrxDBDataset;
    txtDataBase: TJvDateEdit;
    Label4: TLabel;
    FIN_CD_R_EXT_CLI_ABE: TClientDataSet;
    FIN_CD_R_EXT_CLI_ABEnum_parcela: TWideStringField;
    FIN_CD_R_EXT_CLI_ABEint_numnfe: TIntegerField;
    FIN_CD_R_EXT_CLI_ABEint_nomefpg: TWideStringField;
    FIN_CD_R_EXT_CLI_ABEdta_emissao: TDateField;
    FIN_CD_R_EXT_CLI_ABEdta_vencimento: TDateField;
    FIN_CD_R_EXT_CLI_ABEid_cliente: TIntegerField;
    FIN_CD_R_EXT_CLI_ABEid_local_titulo: TIntegerField;
    FIN_CD_R_EXT_CLI_ABEid_plano: TWideStringField;
    FIN_CD_R_EXT_CLI_ABEint_nomecli: TWideStringField;
    FIN_CD_R_EXT_CLI_ABEcob_endereco: TWideStringField;
    FIN_CD_R_EXT_CLI_ABEcob_bairro: TWideStringField;
    FIN_CD_R_EXT_CLI_ABEcob_cidade: TWideStringField;
    FIN_CD_R_EXT_CLI_ABEcob_estado: TWideStringField;
    FIN_CD_R_EXT_CLI_ABEcob_cep: TWideStringField;
    FIN_CD_R_EXT_CLI_ABElim_saldo: TFMTBCDField;
    FIN_CD_R_EXT_CLI_ABEdoc_cnpj_cpf: TWideStringField;
    FIN_CD_R_EXT_CLI_ABEvlr_parcela: TFMTBCDField;
    FIN_CD_R_EXT_CLI_ABEvlr_original: TFMTBCDField;
    FIN_CD_R_EXT_CLI_ABEvlr_pago: TFMTBCDField;
    FIN_CD_R_EXT_CLI_ABEint_atraso: TIntegerField;
    FIN_CD_R_EXT_CLI_ABEint_vlr_restante: TFMTBCDField;
    FIN_CD_R_EXT_CLI_ABEint_vlr_juros: TFMTBCDField;
    FIN_CD_R_EXT_CLI_PAG: TClientDataSet;
    FIN_CD_R_EXT_CLI_PAGnum_parcela: TWideStringField;
    FIN_CD_R_EXT_CLI_PAGint_numnfe: TIntegerField;
    FIN_CD_R_EXT_CLI_PAGint_nomefpg: TWideStringField;
    FIN_CD_R_EXT_CLI_PAGcob_endereco: TWideStringField;
    FIN_CD_R_EXT_CLI_PAGcob_bairro: TWideStringField;
    FIN_CD_R_EXT_CLI_PAGcob_cidade: TWideStringField;
    FIN_CD_R_EXT_CLI_PAGcob_estado: TWideStringField;
    FIN_CD_R_EXT_CLI_PAGcob_cep: TWideStringField;
    FIN_CD_R_EXT_CLI_PAGlim_saldo: TFMTBCDField;
    FIN_CD_R_EXT_CLI_PAGdoc_cnpj_cpf: TWideStringField;
    FIN_CD_R_EXT_CLI_PAGdta_pagamento: TDateField;
    FIN_CD_R_EXT_CLI_PAGdta_vencimento: TDateField;
    FIN_CD_R_EXT_CLI_PAGid_cliente: TIntegerField;
    FIN_CD_R_EXT_CLI_PAGid_local_titulo: TIntegerField;
    FIN_CD_R_EXT_CLI_PAGid_plano: TWideStringField;
    FIN_CD_R_EXT_CLI_PAGint_nomecli: TWideStringField;
    FIN_CD_R_EXT_CLI_PAGvlr_saldo: TFMTBCDField;
    FIN_CD_R_EXT_CLI_PAGvlr_original: TFMTBCDField;
    FIN_CD_R_EXT_CLI_PAGvlr_pago: TFMTBCDField;
    FIN_CD_R_EXT_CLI_PAGint_atraso: TIntegerField;
    FIN_CD_R_EXT_CLI_PAGint_vlr_juros: TFMTBCDField;
    FIN_CD_R_EXT_CLI_NCR: TClientDataSet;
    FIN_CD_R_EXT_CLI_EST: TClientDataSet;
    FIN_FR_R_EXC_ITE: TfrxReport;
    FIN_CD_R_EXT_CLI_ITE: TClientDataSet;
    FIN_DB_R_EXT_CLI_ITE: TfrxDBDataset;
    FIN_CD_R_EXT_CLI_PAGdta_original: TDateField;
    FIN_CD_R_EXT_CLI_ABEdta_original: TDateField;
    FIN_FR_R_EXC_CLI_RPC: TfrxReport;
    FIN_CD_R_EXT_CLI_RPC: TClientDataSet;
    FIN_DB_R_EXC_CLI_RPC: TfrxDBDataset;
    FIN_CD_R_EXT_CLI_RPCid_cliente: TIntegerField;
    FIN_CD_R_EXT_CLI_RPCnome: TWideStringField;
    FIN_CD_R_EXT_CLI_RPCsaldo: TFMTBCDField;
    txtDesc: TEdit;
    Label5: TLabel;
    FIN_CD_R_EXT_CLI_ABEint_vlr_desconto: TFMTBCDField;
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
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosFormaPagClick(Sender: TObject);
    procedure MenuItemPlanoContaClick(Sender: TObject);
    procedure MenuItemLocalTituloClick(Sender: TObject);
    procedure MenuItemFormasPagamentoClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnRemoverRegistrosClick(Sender: TObject);
    procedure btnRemoverTodosLocalTituloClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure txtJurosAtrasoKeyPress(Sender: TObject; var Key: Char);
    procedure txtDescKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;
    var
      xOpcoes,xCondEmpresa,xCondFormaPagamento,
      xCondLocalTitulo, xCondPlanoContas,
      codigo,nome,cnpj,ende,cid,est,cep,bairro: string;
  end;

var
  FIN_FM_R_EXC: TFIN_FM_R_EXC;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_CLI, enConstantes;

procedure TFIN_FM_R_EXC.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
       ExibirRel;
     end;
end;

procedure TFIN_FM_R_EXC.btnRemoverRegistrosClick(Sender: TObject);
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

procedure TFIN_FM_R_EXC.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFIN_FM_R_EXC.btnRemoverTodosFormaPagClick(Sender: TObject);
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

procedure TFIN_FM_R_EXC.btnRemoverTodosLocalTituloClick(Sender: TObject);
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

procedure TFIN_FM_R_EXC.txtJurosAtrasoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if pos(',',txtJurosAtraso.Text)<> 0 then
    begin
     if  not ( Key in ['0'..'9', Chr(8)] ) then
       Key := #0;
    end
  else
    begin
     if  (not ( Key in ['0'..'9', Chr(8)] )) and  (not ( Key in [',', Chr(8)] )) then
      Key := #0;
    end;
end;

procedure TFIN_FM_R_EXC.ExibirRel;
var
  rDtaIni, rDtaFin,rDtaBase,rCliente, PathImg,rJurosAtraso,rDesc: String;
  LogoEmpresa: TfrxPictureView;
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

      // Cliente
        rCliente := txtCliente.Text;


        if txtDataBase.Text ='  /  /    ' then
          begin
            rDtaBase :=  DateTimeToStr(xDataSis);
          end
        else
          begin
            rDtaBase := txtDataBase.Text;
          end;


      rJurosAtraso := StringReplace(txtJurosAtraso.Text,',','.', [rfReplaceAll, rfIgnoreCase]);
      rDesc := StringReplace(txtDesc.Text,',','.', [rfReplaceAll, rfIgnoreCase]);
      if rJurosAtraso = '' then
        rJurosAtraso := '0';
      if rDesc = '' then
        rDesc := '0';

      PreencherCondicao;

      if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] <> '04 - Nota de Crédito - Resumido por Cliente') then
        begin
          FIN_CD_R_EXT_CLI_EST.Close;
          FIN_CD_R_EXT_CLI_EST.Data :=
            FIN_CD_R_EXT_CLI_EST.DataRequest(VarArrayOf([rCliente]));
        end;


      if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Geral') then
         begin

            // Necessario para limpar o Cds para as Situações: "Aberto" ou "Fechado" ; Esaú
            FIN_CD_R_EXT_CLI_ABE.Close;
            FIN_CD_R_EXT_CLI_ABE.CreateDataSet;
            FIN_CD_R_EXT_CLI_PAG.Close;
            FIN_CD_R_EXT_CLI_PAG.CreateDataSet;

            if (cbbSituacao.ItemIndex = 0) or (cbbSituacao.ItemIndex = 1) then
              begin
                FIN_CD_R_EXT_CLI_ABE.Close;
                FIN_CD_R_EXT_CLI_ABE.Data :=
                  FIN_CD_R_EXT_CLI_ABE.DataRequest(
                    VarArrayOf([rDtaIni,rDtaFin,xCondEmpresa,rCliente,xCondFormaPagamento,xCondLocalTitulo,
                      xCondPlanoContas,'',rJurosAtraso,rDtaBase,rDesc]));
              end;
            if (cbbSituacao.ItemIndex = 0) or (cbbSituacao.ItemIndex = 2) then
              begin
                FIN_CD_R_EXT_CLI_PAG.Close;
                FIN_CD_R_EXT_CLI_PAG.Data :=
                  FIN_CD_R_EXT_CLI_PAG.DataRequest(
                    VarArrayOf([rDtaIni,rDtaFin,xCondEmpresa,rCliente,xCondFormaPagamento,xCondLocalTitulo,
                      xCondPlanoContas]));
              end;

            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

            if not (FIN_CD_R_EXT_CLI_ABE.IsEmpty and  FIN_CD_R_EXT_CLI_PAG.IsEmpty) then
              begin
                if FileExists(PathImg) then
                  begin
                    LogoEmpresa := TfrxPictureView(FIN_FR_R_EXC_CLI.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                      LogoEmpresa.Picture.LoadFromFile(PathImg);
                  end;


               for I := 1 to 28 do
                 begin
                  memo := TfrxMemoView (FIN_FR_R_EXC_CLI.FindComponent('mm'+IntToStr(i)));
                  memo.Visible := chbMostrarEst.Checked;
                 end;



                if cbbSituacao.ItemIndex = 1 then
                  begin
                    dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_EXC_CLI.Name,xCodLme,xRevLme,nil);
                    FIN_FR_R_EXC_CLI.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                    FIN_FR_R_EXC_CLI.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                    FIN_FR_R_EXC_CLI.Variables['Opcoes'] := QuotedStr(xOpcoes);
                    FIN_FR_R_EXC_CLI.Variables['codigo'] := QuotedStr(codigo);
                    FIN_FR_R_EXC_CLI.Variables['nome'] := QuotedStr(nome);
                    FIN_FR_R_EXC_CLI.Variables['cnpj'] := QuotedStr(cnpj);
                    FIN_FR_R_EXC_CLI.Variables['ende'] := QuotedStr(ende);
                    FIN_FR_R_EXC_CLI.Variables['cid'] := QuotedStr(cid);
                    FIN_FR_R_EXC_CLI.Variables['est'] := QuotedStr(est);
                    FIN_FR_R_EXC_CLI.Variables['cep'] := QuotedStr(cep);
                    FIN_FR_R_EXC_CLI.Variables['bairro'] := QuotedStr(bairro);
                    FIN_FR_R_EXC_CLI.Variables['taxa'] := QuotedStr(txtJurosAtraso.Text);
                    FIN_FR_R_EXC_CLI.Variables['data_base'] := QuotedStr(rDtaBase);
                    FIN_FR_R_EXC_CLI.PrepareReport();
                    FIN_FR_R_EXC_CLI.ShowReport();
                  end
                else
                  begin
                    dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_EXC_CLI.Name,xCodLme,xRevLme,nil);
                    FIN_FR_R_EXC_CLI.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                    FIN_FR_R_EXC_CLI.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                    FIN_FR_R_EXC_CLI.Variables['Opcoes'] := QuotedStr(xOpcoes);
                    FIN_FR_R_EXC_CLI.Variables['codigo'] := QuotedStr(codigo);
                    FIN_FR_R_EXC_CLI.Variables['nome'] := QuotedStr(nome);
                    FIN_FR_R_EXC_CLI.Variables['cnpj'] := QuotedStr(cnpj);
                    FIN_FR_R_EXC_CLI.Variables['ende'] := QuotedStr(ende);
                    FIN_FR_R_EXC_CLI.Variables['cid'] := QuotedStr(cid);
                    FIN_FR_R_EXC_CLI.Variables['est'] := QuotedStr(est);
                    FIN_FR_R_EXC_CLI.Variables['cep'] := QuotedStr(cep);
                    FIN_FR_R_EXC_CLI.Variables['bairro'] := QuotedStr(bairro);
                    FIN_FR_R_EXC_CLI.Variables['taxa'] := QuotedStr(txtJurosAtraso.Text);
                    FIN_FR_R_EXC_CLI.Variables['data_base'] := QuotedStr(rDtaBase);
                    FIN_FR_R_EXC_CLI.PrepareReport();
                    FIN_FR_R_EXC_CLI.ShowReport();
                  end;
              end
            else
              begin
                ShowMessage('Nenhum registro foi encontrado.');
              end;
         end;

         if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Nota de Crédito') then
            begin
                FIN_CD_R_EXT_CLI_NCR.Close;
                FIN_CD_R_EXT_CLI_NCR.Data :=
                  FIN_CD_R_EXT_CLI_NCR.DataRequest(
                    VarArrayOf([rDtaIni,rDtaFin,rCliente,xCondEmpresa]));

                if (not FIN_CD_R_EXT_CLI_NCR.IsEmpty) then
                  begin
                    PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                        if FileExists(PathImg) then
                          begin
                            LogoEmpresa := TfrxPictureView(FIN_FR_R_EXC_CLI_NCR.FindObject('imgEmpresa1'));
                            if Assigned(LogoEmpresa) then
                              LogoEmpresa.Picture.LoadFromFile(PathImg);
                          end;

                         for I := 1 to 28 do
                           begin
                            memo := TfrxMemoView (FIN_FR_R_EXC_CLI_NCR.FindComponent('mm'+IntToStr(i)));
                            memo.Visible := chbMostrarEst.Checked;
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_EXC_CLI_NCR.Name,xCodLme,xRevLme,nil);

                        FIN_CD_R_EXT_CLI_NCR.First;
                        FIN_FR_R_EXC_CLI_NCR.Variables['cod_cliente'] := QuotedStr(FIN_CD_R_EXT_CLI_NCR.FieldByName('ID_CLIENTE').AsString);
                        FIN_FR_R_EXC_CLI_NCR.Variables['nome_cliente'] := QuotedStr(FIN_CD_R_EXT_CLI_NCR.FieldByName('INT_NOMECLI').AsString);
                        FIN_FR_R_EXC_CLI_NCR.Variables['saldo_anterior'] :=
                         QuotedStr(FormatCurr('###,###,##0.00' ,FIN_CD_R_EXT_CLI_NCR.FieldByName('SALDO_ANTERIOR').AsCurrency));
                        FIN_FR_R_EXC_CLI_NCR.Variables['saldo_atual'] :=
                           QuotedStr(FormatCurr('###,###,##0.00' ,dmGeral.BusSaldoCreCli(txtCliente.Text,1)));
                        FIN_FR_R_EXC_CLI_NCR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                        FIN_FR_R_EXC_CLI_NCR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                        FIN_FR_R_EXC_CLI_NCR.Variables['Opcoes'] := QuotedStr(xOpcoes);
                        FIN_FR_R_EXC_CLI_NCR.PrepareReport();
                        FIN_FR_R_EXC_CLI_NCR.ShowReport();
                  end
                else
                  begin
                    ShowMessage('Nenhum registro foi encontrado.');
                  end;
            end;


      if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Extrato de Produtos') then
        begin
          FIN_CD_R_EXT_CLI_ITE.Close;
          FIN_CD_R_EXT_CLI_ITE.Data :=
            FIN_CD_R_EXT_CLI_ITE.DataRequest(
              VarArrayOf([xCondEmpresa,txtCliente.Text,rDtaIni,rDtaFin]));

          if (not FIN_CD_R_EXT_CLI_ITE.IsEmpty) then
            begin
              PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

              if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(FIN_FR_R_EXC_ITE.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;

              dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_EXC_ITE.Name,xCodLme,xRevLme,nil);
              FIN_FR_R_EXC_ITE.Variables['xCor'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsString);
              FIN_FR_R_EXC_ITE.Variables['xTamanho'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsString);
              FIN_FR_R_EXC_ITE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              FIN_FR_R_EXC_ITE.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              FIN_FR_R_EXC_ITE.Variables['Opcoes'] := QuotedStr(xOpcoes);
              FIN_FR_R_EXC_ITE.Variables['codigo'] := QuotedStr(codigo);
              FIN_FR_R_EXC_ITE.Variables['nome'] := QuotedStr(nome);
              FIN_FR_R_EXC_ITE.Variables['cnpj'] := QuotedStr(cnpj);
              FIN_FR_R_EXC_ITE.Variables['ende'] := QuotedStr(ende);
              FIN_FR_R_EXC_ITE.Variables['cid'] := QuotedStr(cid);
              FIN_FR_R_EXC_ITE.Variables['est'] := QuotedStr(est);
              FIN_FR_R_EXC_ITE.Variables['cep'] := QuotedStr(cep);
              FIN_FR_R_EXC_ITE.Variables['bairro'] := QuotedStr(bairro);
              FIN_FR_R_EXC_ITE.Variables['taxa'] := QuotedStr(txtJurosAtraso.Text);
              FIN_FR_R_EXC_ITE.PrepareReport();
              FIN_FR_R_EXC_ITE.ShowReport();
            end;

        end;

      if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04 - Nota de Crédito - Resumido por Cliente') then
        begin
          FIN_CD_R_EXT_CLI_RPC.Close;
          FIN_CD_R_EXT_CLI_RPC.Data :=
            FIN_CD_R_EXT_CLI_RPC.DataRequest(
              VarArrayOf([rDtaIni,rDtaFin,rCliente]));

          if (not FIN_CD_R_EXT_CLI_RPC.IsEmpty) then
            begin
              PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                  if FileExists(PathImg) then
                    begin
                      LogoEmpresa := TfrxPictureView(FIN_FR_R_EXC_CLI_RPC.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                        LogoEmpresa.Picture.LoadFromFile(PathImg);
                    end;

                  dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_EXC_CLI_RPC.Name,xCodLme,xRevLme,nil);

                  FIN_FR_R_EXC_CLI_RPC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  FIN_FR_R_EXC_CLI_RPC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  FIN_FR_R_EXC_CLI_RPC.Variables['Opcoes'] := QuotedStr(xOpcoes);
                  FIN_FR_R_EXC_CLI_RPC.PrepareReport();
                  FIN_FR_R_EXC_CLI_RPC.ShowReport();
            end
          else
            begin
              ShowMessage('Nenhum registro foi encontrado.');
            end;
        end;

    end;
end;

procedure TFIN_FM_R_EXC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_R_EXC);
end;

procedure TFIN_FM_R_EXC.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  //lbxRelatoriosClick(self);

  txtJurosAtraso.Text := dmGeral.CAD_CD_C_PAR_CTR.FieldByName('tax_juros_mensal').AsString;

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
end;

procedure TFIN_FM_R_EXC.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXC.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXC.lboxFormaDisponivelDblClick(Sender: TObject);
begin
  inherited;
  if lboxFormaDisponivel.ItemIndex > - 1 then
     begin
       lboxFormaSelecionada.Items.Add(lboxFormaDisponivel.Items[lboxFormaDisponivel.ItemIndex]);
       lboxFormaDisponivel.Items.Delete(lboxFormaDisponivel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXC.lboxFormaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxFormaSelecionada.ItemIndex > -1 then
     begin
       lboxFormaDisponivel.Items.Add(lboxFormaSelecionada.Items[lboxFormaSelecionada.ItemIndex]);
       lboxFormaSelecionada.Items.Delete(lboxFormaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXC.lboxLocaisDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxLocaisDisponiveis.ItemIndex > - 1 then
     begin
       lboxLocalSelecionado.Items.Add(lboxLocaisDisponiveis.Items[lboxLocaisDisponiveis.ItemIndex]);
       lboxLocaisDisponiveis.Items.Delete(lboxLocaisDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXC.lboxLocalSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxLocalSelecionado.ItemIndex > -1 then
     begin
       lboxLocaisDisponiveis.Items.Add(lboxLocalSelecionado.Items[lboxLocalSelecionado.ItemIndex]);
       lboxLocalSelecionado.Items.Delete(lboxLocalSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXC.lboxPlanosDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxplanosDisponiveis.ItemIndex > -1 then
     begin
       lboxPlanoSelecionado.Items.Add(lboxplanosDisponiveis.Items[lboxplanosDisponiveis.ItemIndex]);
       lboxplanosDisponiveis.Items.Delete(lboxplanosDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXC.lboxPlanoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxPlanoSelecionado.ItemIndex > -1 then
     begin
       lboxplanosDisponiveis.Items.Add(lboxPlanoSelecionado.Items[lboxPlanoSelecionado.ItemIndex]);
       lboxPlanoSelecionado.Items.Delete(lboxPlanoSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_EXC.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
  lblSituacao.Visible := true;
  cbbSituacao.Visible := true;
  pcFiltros.Visible   := true;
  lblJurosAtraso.Visible := true;
  txtJurosAtraso.Visible := true;
  chbMostrarEst.Visible := true;
  Label4.Visible := true;
  txtDataBase.Visible := true;
  tsFormaPagamento.TabVisible := true;
  tsLocalTitulo.TabVisible := true;
  tsPlanoContas.TabVisible := true;

  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Nota de Crédito') then
    begin
      lblSituacao.Visible := false;
      cbbSituacao.Visible := false;
      // pcFiltros.Visible   := false;
      tsFormaPagamento.TabVisible := false;
      tsLocalTitulo.TabVisible := false;
      tsPlanoContas.TabVisible := false;

      lblJurosAtraso.Visible := false;
      txtJurosAtraso.Visible := false;
    end;

  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Extrato de Produtos') then
    begin
      lblSituacao.Visible := false;
      cbbSituacao.Visible := false;
      tsFormaPagamento.TabVisible := false;
      tsLocalTitulo.TabVisible := false;
      tsPlanoContas.TabVisible := false;
      chbMostrarEst.Visible := false;
      Label4.Visible := false;
      txtDataBase.Visible := false;
      lblJurosAtraso.Visible := false;
      txtJurosAtraso.Visible := false;
    end;

  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04 - Nota de Crédito - Resumido por Cliente')then
    begin
      lblSituacao.Visible := false;
      cbbSituacao.Visible := false;
      pcFiltros.Visible   := false;
      lblJurosAtraso.Visible := false;
      txtJurosAtraso.Visible := false;
      txtDataBase.Visible := false;
      Label4.Visible := false;
    end;
end;

procedure TFIN_FM_R_EXC.menuItemEmpresasClick(Sender: TObject);
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

procedure TFIN_FM_R_EXC.MenuItemFormasPagamentoClick(Sender: TObject);
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

procedure TFIN_FM_R_EXC.MenuItemLocalTituloClick(Sender: TObject);
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

procedure TFIN_FM_R_EXC.MenuItemPlanoContaClick(Sender: TObject);
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

procedure TFIN_FM_R_EXC.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesFormaPagamento,opcoesLocalTitulo,opcoesCentroCusto,
  opcoesPlanoContas:string;
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
     end
  else
    begin
      opcoesEmpresa:= 'Todos';
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

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;

   if ((lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Nota de Crédito') or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Extrato de Produtos')) then
    begin
      xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
    end;

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Geral') then
     begin
       xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
       xOpcoes := xOpcoes + 'Forma de Pagamento: ' + opcoesFormaPagamento+#13+#10;
       xOpcoes := xOpcoes + 'Local do Título...: ' + opcoesLocalTitulo+#13+#10;
       xOpcoes := xOpcoes + 'Plano de Contas...: ' + opcoesPlanoContas+#13+#10;
     end;
end;

function TFIN_FM_R_EXC.TestarCampos: Boolean;
var
mens: String;
begin

  result := True;
  mens := '';

  if (((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    '))) and
    ((lbxRelatorios.Items[lbxRelatorios.ItemIndex] <> '03 - Extrato de Produtos'))then
    begin
      mens := mens +  '.O período deve ser preenchido.' + #13;
    end;
  if (deInicial.Date >  deFinal.Date) then
    begin
      mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
    end;
  if ((lbxRelatorios.Items[lbxRelatorios.ItemIndex]='01 - Geral') or
    (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Extrato de Produtos'))  and
      (lboxEmpresaSelecionada.Count = 0) then
    begin
      mens := mens +  '.É necessário selecionar pelos menos 1 empresa' + #13;
    end;

  if (txtCliente.Text = '') and (lbxRelatorios.Items[lbxRelatorios.ItemIndex] <> '04 - Nota de Crédito - Resumido por Cliente') then
    begin
      mens := mens +  '.É necessario selecionar um Cliente.' + #13;
    end;

  if trim(mens) <> '' then
          begin
            ShowMessage('Atenção!' + #13 + mens);
            Result := False;
            abort;
          end;
end;

procedure TFIN_FM_R_EXC.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
  PSQ_FM_X_CLI.ShowModal;
  if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
    begin
      txtCliente.Text := PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString;
      lblCliente.Caption:= PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
    end;
  PSQ_FM_X_CLI.Free;
end;
procedure TFIN_FM_R_EXC.txtClienteExit(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_C_CLI.Close;
  dmgeral.BUS_CD_C_CLI.Data :=
  dmgeral.BUS_CD_C_CLI.DataRequest(
     VarArrayOf([0, txtcliente.Text]));

  if not dmgeral.BUS_CD_C_CLI.IsEmpty then
    begin
      lblCliente.Caption:= dmgeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;
    CODIGO := dmgeral.BUS_CD_C_CLI.FieldByName('id_cliente').AsString;
      NOME := dmgeral.BUS_CD_C_CLI.FieldByName('nome').AsString;
      CNPJ := dmgeral.BUS_CD_C_CLI.FieldByName('doc_cnpj_cpf').AsString;
      ENDE := dmgeral.BUS_CD_C_CLI.FieldByName('endereco').AsString;;
       CID := dmgeral.BUS_CD_C_CLI.FieldByName('int_nomecid').AsString;
       EST := dmgeral.BUS_CD_C_CLI.FieldByName('int_uf').AsString;
       CEP := dmgeral.BUS_CD_C_CLI.FieldByName('cob_cep').AsString;
    BAIRRO := dmgeral.BUS_CD_C_CLI.FieldByName('bairro').AsString;

    end
  else
    begin
      showmessage('Cliente não Encontrado!');
      txtCliente.Text := '';
      lblCliente.Caption := '';
    end;
end;
procedure TFIN_FM_R_EXC.txtDescKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if pos(',',txtDesc.Text)<> 0 then
    begin
     if  not ( Key in ['0'..'9', Chr(8)] ) then
       Key := #0;
    end
  else
    begin
     if  (not ( Key in ['0'..'9', Chr(8)] )) and  (not ( Key in [',', Chr(8)] )) then
      Key := #0;
    end;
end;

end.
