unit FIN_UN_R_CXA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls,
  vcl.wwdblook, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Menus, frxClass, frxDBSet,
  frxExportXLS, frxExportPDF, Data.DB, vcl.wwdatsrc, Vcl.DBCtrls,
  Datasnap.DBClient, Vcl.Buttons, vcl.Wwdbedit, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid;

type
  TFIN_FM_R_CXA = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    tsPlanodeContas: TTabSheet;
    tsTipoFinancerio: TTabSheet;
    Label1: TLabel;
    deInicial: TJvDateEdit;
    Label2: TLabel;
    deFinal: TJvDateEdit;
    lblOperador: TLabel;
    lblContaCorrente: TLabel;
    lboxEmpresas: TListBox;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresaSelecionada: TListBox;
    lboxPlanoSelecionado: TListBox;
    lblPlanoSelecionado: TLabel;
    lboxPlanosDisponiveis: TListBox;
    lblPlanosDisponiveis: TLabel;
    lboxTipoFinanceiro: TListBox;
    lboxTipoFinanceiroSelecionado: TListBox;
    Label3: TLabel;
    Label4: TLabel;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmSelPlanosConta: TPopupMenu;
    MenuItemPlanoConta: TMenuItem;
    pmRemoverTodosPlanoContas: TPopupMenu;
    btnRemoverRegistros: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmSelTipoFinanceiro: TPopupMenu;
    pmRemoveTodosTipoFinanceiro: TPopupMenu;
    menuItemTipoFinanceiro: TMenuItem;
    btnRemoverTodosTiposFinanceiro: TMenuItem;
    FIN_FR_R_CXA_CXD: TfrxReport;
    FIN_PD_R_CXA: TfrxPDFExport;
    FIN_XL_R_CXA: TfrxXLSExport;
    FIN_DB_R_CXA_DIA: TfrxDBDataset;
    FIN_DB_R_CXA_DIA_SLA: TfrxDBDataset;
    FIN_FR_R_CXA_MOP: TfrxReport;
    cbboperador: TComboBox;
    cbbContaCorrente: TComboBox;
    FIN_DB_R_CXA_DIA_VND: TfrxDBDataset;
    FIN_DB_R_CXA_DIA_PAG: TfrxDBDataset;
    FIN_DP_R_CXA_DIA_REC: TfrxDBDataset;
    FIN_DP_R_CXA_DIA_MOP: TfrxDBDataset;
    FIN_FR_R_CXA_MPL: TfrxReport;
    FIN_DB_R_CXA_DIA_MPL: TfrxDBDataset;
    FIN_DB_R_CXA_DIA_RVE: TfrxDBDataset;
    gbExibir: TGroupBox;
    chbPedVendaDia: TCheckBox;
    chbResumoVendas: TCheckBox;
    FIN_DB_R_CXA_DIA_NPD: TfrxDBDataset;
    FIN_DB_R_CXA_DIA_NFT: TfrxDBDataset;
    cbbRecebimento: TComboBox;
    BUS_CD_M_NFE_CAN_ANT: TClientDataSet;
    BUS_DB_R_NFE_CAN_ANT: TfrxDBDataset;
    FIN_CD_R_CXA_DIA_RVE: TClientDataSet;
    FIN_CD_R_CXA_DIA: TClientDataSet;
    FIN_CD_R_CXA_DIAdta_movimento: TDateField;
    FIN_CD_R_CXA_DIAnum_doc: TIntegerField;
    FIN_CD_R_CXA_DIAsigla: TWideStringField;
    FIN_CD_R_CXA_DIAid_plano: TWideStringField;
    FIN_CD_R_CXA_DIAid_tipo_financeiro: TIntegerField;
    FIN_CD_R_CXA_DIAhistorico: TWideStringField;
    FIN_CD_R_CXA_DIAdeb_cre: TIntegerField;
    FIN_CD_R_CXA_DIAvlr_creditodia: TFMTBCDField;
    FIN_CD_R_CXA_DIAvlr_debitodia: TFMTBCDField;
    FIN_CD_R_CXA_DIAvlr_saldodia: TFMTBCDField;
    FIN_CD_R_CXA_DIAvlr_acumulado: TFMTBCDField;
    FIN_CD_R_CXA_DIAint_nomefpg: TWideStringField;
    FIN_CD_R_CXA_DIAid_controle: TIntegerField;
    FIN_CD_R_CXA_DIAnatureza: TIntegerField;
    FIN_CD_R_CXA_DIAint_descnatureza: TWideStringField;
    FIN_CD_R_CXA_DIAvlr_lancamento: TFMTBCDField;
    FIN_CD_R_CXA_DIA_NPD: TClientDataSet;
    FIN_CD_R_CXA_DIA_NFT: TClientDataSet;
    FIN_CD_R_CXA_DIA_SLA: TClientDataSet;
    FIN_CD_R_CXA_DIA_SLAsld_anterior: TFMTBCDField;
    FIN_CD_R_CXA_DIA_VND: TClientDataSet;
    FIN_CD_R_CXA_DIA_PAG: TClientDataSet;
    FIN_CD_R_CXA_DIA_REC: TClientDataSet;
    FIN_CD_R_CXA_DIA_MPL: TClientDataSet;
    FIN_CD_R_CXA_DIA_MOP: TClientDataSet;
    Label5: TLabel;
    txtobra: TJvComboEdit;
    FIN_CD_R_CXA_DIA_MTF: TClientDataSet;
    FIN_DB_R_CXA_DIA_MTF: TfrxDBDataset;
    chbResumoTipoFinan: TCheckBox;
    cdsTempComposicao: TClientDataSet;
    cdsTempComposicaodescricao: TStringField;
    cdsTempComposicaovalor: TCurrencyField;
    tsComposicao: TTabSheet;
    grdComposicao: TwwDBGrid;
    pnComposicao: TPanel;
    Label9: TLabel;
    lblValorCompos: TLabel;
    txtValorComposicao: TwwDBEdit;
    txtDescComposicao: TwwDBEdit;
    btn_Add_Compos: TBitBtn;
    FIN_FR_R_CXA_CXD_2: TfrxReport;
    dsTempComposicao: TDataSource;
    dbTempComposicao: TfrxDBDataset;
    grdComposicaoIButton: TwwIButton;
    FIN_CD_R_CXA_DIAint_numero_nf: TIntegerField;
    FIN_CD_R_CXA_DIAint_nomefor: TWideStringField;
    FIN_FR_R_CXA_CXD_NFR: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxPlanosDisponiveisDblClick(Sender: TObject);
    procedure lboxPlanoSelecionadoDblClick(Sender: TObject);
    procedure lboxTipoFinanceiroDblClick(Sender: TObject);
    procedure lboxTipoFinanceiroSelecionadoDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure MenuItemPlanoContaClick(Sender: TObject);
    procedure btnRemoverRegistrosClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure menuItemTipoFinanceiroClick(Sender: TObject);
    procedure btnRemoverTodosTiposFinanceiroClick(Sender: TObject);
    procedure cbbOperadorEnter(Sender: TObject);
    procedure cbbContaCorrenteEnter(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FIN_DB_R_CXA_DIACheckEOF(Sender: TObject; var Eof: Boolean);
    procedure FIN_DB_R_CXA_DIA_SLACheckEOF(Sender: TObject; var Eof: Boolean);
    procedure txtobraButtonClick(Sender: TObject);
    procedure txtobraExit(Sender: TObject);
    procedure btn_Add_ComposClick(Sender: TObject);
    procedure txtValorComposicaoExit(Sender: TObject);
    procedure grdComposicaoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbxRelatoriosClick(Sender: TObject);
  private
    { Private declarations }
  procedure PreencherCondicao;
  function TestarCampos: Boolean;
  procedure ExibirRel;
     var
      xOpcoes, xCondEmpresa, xCondPlanoContas, xCondTipoFinanceiro,obra,nome_obra: string;
  public
    { Public declarations }
  end;

var
  FIN_FM_R_CXA: TFIN_FM_R_CXA;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, enConstantes, PSQ_UN_X_OBR, uDmCtc;

procedure TFIN_FM_R_CXA.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TFIN_FM_R_CXA.btnRemoverRegistrosClick(Sender: TObject);
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

procedure TFIN_FM_R_CXA.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFIN_FM_R_CXA.btnRemoverTodosTiposFinanceiroClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxTipoFinanceiroSelecionado.ClearSelection;

  if lboxTipoFinanceiroSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoFinanceiroSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoFinanceiroSelecionado.Items.Count - 1 do
           begin
             lboxTipoFinanceiro.Items.Add(lboxTipoFinanceiroSelecionado.Items[i]);
             lboxTipoFinanceiroSelecionado.Items.Delete(lboxTipoFinanceiroSelecionado.ItemIndex);
           end;
       lboxTipoFinanceiroSelecionado.Items.Clear;
     end;
end;

procedure TFIN_FM_R_CXA.btn_Add_ComposClick(Sender: TObject);
begin
  inherited;
   pnComposicao.Enabled  := true;

  cdsTempComposicao.Insert;
  txtDescComposicao.SetFocus;
end;

procedure TFIN_FM_R_CXA.cbbContaCorrenteEnter(Sender: TObject);
begin
  inherited;
  //dmgeral.BusContaCorr(1,'%');
  //cbbContaCorrente.DropDown;
end;

procedure TFIN_FM_R_CXA.cbbOperadorEnter(Sender: TObject);
begin
  inherited;
  //dmGeral.BusFuncionario(1,'%');
  //cbbOperador.DropDown;
end;

procedure TFIN_FM_R_CXA.ExibirRel;
var
  rOperador, rDtaIni, rDtaFin, rContaCorrente, PathImg: String;
  rIndexRelatorio:integer;
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
      // Operador
        if not (cbbOperador.ItemIndex = -1) then
          begin
            //rOperador := copy(cbbOperador.Text,1,2);
            rOperador :=  trim(copy(cbbOperador.Text,1,pos(' - ',cbbOperador.Text)-1));
          end
        else
          begin
            showmessage('O campo "Operador" deve ser preenchido.');
            cbbOperador.SetFocus;
            abort;
          end;

      // Conta corrente
        if not (cbbContaCorrente.ItemIndex = -1) then
          begin
            //rContaCorrente := copy(cbbContaCorrente.Text,2,1);
            rContaCorrente := trim(copy(cbbContaCorrente.Text,1,pos(' - ',cbbContaCorrente.Text)-1));
          end
        else
          begin
            showmessage('O campo "Conta Corrente" deve ser preenchido.');
            cbbContaCorrente.SetFocus;
            abort;
          end;

      PreencherCondicao;

      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

            if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Caixa Diário' then
                      begin

                        FIN_CD_R_CXA_DIA.Close;
                        FIN_CD_R_CXA_DIA.Data :=
                        FIN_CD_R_CXA_DIA.DataRequest(
                                  VarArrayOf([lbxRelatorios.ItemIndex,rDtaIni,rDtaFin,xCondEmpresa,rOperador,
                                              rContaCorrente,xCondPlanoContas,xCondTipoFinanceiro,txtobra.Text]));

                        FIN_CD_R_CXA_DIA_RVE.Close;
                        FIN_CD_R_CXA_DIA_RVE.Data :=
                        FIN_CD_R_CXA_DIA_RVE.DataRequest(
                                  VarArrayOf([xCondEmpresa,rDtaIni,rDtaFin,rOperador,rContaCorrente]));
                        FIN_CD_R_CXA_DIA_RVE.IndexFieldNames := 'ID_FORMA_PAG';

                        FIN_CD_R_CXA_DIA_SLA.Close;
                        FIN_CD_R_CXA_DIA_SLA.Data :=
                        FIN_CD_R_CXA_DIA_SLA.DataRequest(
                                  VarArrayOf([rDtaIni,xCondEmpresa,rContaCorrente,rOperador,txtobra.Text]));

                        FIN_CD_R_CXA_DIA_VND.Close;
                        FIN_CD_R_CXA_DIA_VND.Data :=
                        FIN_CD_R_CXA_DIA_VND.DataRequest(
                                  VarArrayOf([xCondEmpresa,rDtaIni,rDtaFin,rOperador,rContaCorrente]));

                        FIN_CD_R_CXA_DIA_PAG.Close;
                        FIN_CD_R_CXA_DIA_PAG.Data :=
                        FIN_CD_R_CXA_DIA_PAG.DataRequest(
                                  VarArrayOf([xCondEmpresa,rDtaIni,rDtaFin,rOperador,rContaCorrente,txtObra.Text]));


                        BUS_CD_M_NFE_CAN_ANT.Close;
                        BUS_CD_M_NFE_CAN_ANT.Data :=
                              BUS_CD_M_NFE_CAN_ANT.DataRequest(
                                       VarArrayOf([106,xCondEmpresa,DateToStr(deInicial.Date-1),
                                                     rDtaIni,rOperador]));


                        FIN_CD_R_CXA_DIA_REC.Close;
                        if cbbRecebimento.ItemIndex = 0 then
                           begin
                             FIN_CD_R_CXA_DIA_REC.Data :=
                             FIN_CD_R_CXA_DIA_REC.DataRequest(
                                  VarArrayOf([xCondEmpresa,rDtaIni,rDtaFin,rOperador,rContaCorrente,txtObra.Text]));
                           end
                        else if cbbRecebimento.ItemIndex = 1 then
                           begin
                             FIN_CD_R_CXA_DIA_REC.Data :=
                             FIN_CD_R_CXA_DIA_REC.DataRequest(
                                  VarArrayOf([xCondEmpresa,rDtaIni,rDtaFin,'','',txtObra.Text]));
                           end;

                        FIN_CD_R_CXA_DIA_NPD.Close;
                        FIN_CD_R_CXA_DIA_NPD.Data :=
                        FIN_CD_R_CXA_DIA_NPD.DataRequest(
                                  VarArrayOf([lbxRelatorios.ItemIndex,xCondEmpresa,rDtaIni,rDtaFin]));

                        FIN_CD_R_CXA_DIA_NFT.Close;
                        FIN_CD_R_CXA_DIA_NFT.Data :=
                        FIN_CD_R_CXA_DIA_NFT.DataRequest(
                                  VarArrayOf([lbxRelatorios.ItemIndex,xCondEmpresa,rDtaIni,rDtaFin,rOperador,rContaCorrente]));

                        FIN_CD_R_CXA_DIA_MPL.Close;
                        FIN_CD_R_CXA_DIA_MPL.Data :=
                        FIN_CD_R_CXA_DIA_MPL.DataRequest(
                                  VarArrayOf([2,rDtaIni,rDtaFin,xCondEmpresa,rOperador,
                                              rContaCorrente,xCondPlanoContas,xCondTipoFinanceiro,txtObra.Text]));

                        FIN_CD_R_CXA_DIA_MPL.IndexFieldNames := 'id_plano';


                        FIN_CD_R_CXA_DIA_MTF.Close;
                        FIN_CD_R_CXA_DIA_MTF.Data :=
                        FIN_CD_R_CXA_DIA_MTF.DataRequest(
                                  VarArrayOf([0,rDtaIni,rDtaFin,xCondEmpresa,rOperador,
                                              rContaCorrente,xCondPlanoContas,xCondTipoFinanceiro,txtObra.Text]));

                        FIN_CD_R_CXA_DIA_MTF.IndexFieldNames := 'id_tipo_financeiro';

                        if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('ctc').AsBoolean = true) then
                          begin
                            if FileExists(PathImg) then
                               begin
                                  LogoEmpresa := TfrxPictureView(FIN_FR_R_CXA_CXD_NFR.FindObject('imgEmpresa1'));
                                  if Assigned(LogoEmpresa) then
                                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                               end;

                            dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_CXA_CXD_NFR.Name,xCodLme,xRevLme,nil);

                            FIN_FR_R_CXA_CXD_NFR.Variables['pedido_venda'] := false;
                            if chbPedVendaDia.Checked  then
                              begin
                                FIN_FR_R_CXA_CXD_NFR.Variables['pedido_venda'] := true;
                              end;

                            FIN_FR_R_CXA_CXD_NFR.Variables['resumo_venda'] := false;
                            if chbResumoVendas.Checked  then
                              begin
                                FIN_FR_R_CXA_CXD_NFR.Variables['resumo_venda'] := true;
                              end;

                            FIN_FR_R_CXA_CXD_NFR.Variables['recebimento'] := false;
                            if cbbRecebimento.ItemIndex in [0,1]  then
                              begin
                                FIN_FR_R_CXA_CXD_NFR.Variables['recebimento'] := true;
                              end;

                            FIN_FR_R_CXA_CXD_NFR.Variables['resumo_tif'] := false;
                            if chbResumoTipoFinan.Checked  then
                              begin
                                FIN_FR_R_CXA_CXD_NFR.Variables['resumo_tif'] := true;
                              end;


                            FIN_FR_R_CXA_CXD_NFR.Variables['ft_periodo'] := QuotedStr(rDtaIni+' à '+rDtaFin);
                            FIN_FR_R_CXA_CXD_NFR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                            FIN_FR_R_CXA_CXD_NFR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                            FIN_FR_R_CXA_CXD_NFR.Variables['Opcoes'] := QuotedStr(xOpcoes);
                            FIN_FR_R_CXA_CXD_NFR.PrepareReport();
                            FIN_FR_R_CXA_CXD_NFR.ShowReport();
                          end
                        else
                          begin

                            if FileExists(PathImg) then
                               begin
                                  LogoEmpresa := TfrxPictureView(FIN_FR_R_CXA_CXD.FindObject('imgEmpresa1'));
                                  if Assigned(LogoEmpresa) then
                                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                               end;

                            dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_CXA_CXD.Name,xCodLme,xRevLme,nil);

                            FIN_FR_R_CXA_CXD.Variables['pedido_venda'] := false;
                            if chbPedVendaDia.Checked  then
                              begin
                                FIN_FR_R_CXA_CXD.Variables['pedido_venda'] := true;
                              end;

                            FIN_FR_R_CXA_CXD.Variables['resumo_venda'] := false;
                            if chbResumoVendas.Checked  then
                              begin
                                FIN_FR_R_CXA_CXD.Variables['resumo_venda'] := true;
                              end;

                            FIN_FR_R_CXA_CXD.Variables['recebimento'] := false;
                            if cbbRecebimento.ItemIndex in [0,1]  then
                              begin
                                FIN_FR_R_CXA_CXD.Variables['recebimento'] := true;
                              end;

                            FIN_FR_R_CXA_CXD.Variables['resumo_tif'] := false;
                            if chbResumoTipoFinan.Checked  then
                              begin
                                FIN_FR_R_CXA_CXD.Variables['resumo_tif'] := true;
                              end;


                            FIN_FR_R_CXA_CXD.Variables['ft_periodo'] := QuotedStr(rDtaIni+' à '+rDtaFin);
                            FIN_FR_R_CXA_CXD.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                            FIN_FR_R_CXA_CXD.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                            FIN_FR_R_CXA_CXD.Variables['Opcoes'] := QuotedStr(xOpcoes);
                            FIN_FR_R_CXA_CXD.PrepareReport();
                            FIN_FR_R_CXA_CXD.ShowReport();
                          end;


                      end;

          if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Movimento por Operação' then
                      begin

                        FIN_CD_R_CXA_DIA_MOP.Close;
                        FIN_CD_R_CXA_DIA_MOP.Data :=
                        FIN_CD_R_CXA_DIA_MOP.DataRequest(
                                  VarArrayOf([lbxRelatorios.ItemIndex,rDtaIni,rDtaFin,xCondEmpresa,rOperador,
                                              rContaCorrente,xCondPlanoContas,xCondTipoFinanceiro,txtObra.Text]));

                        if not FIN_CD_R_CXA_DIA_MOP.IsEmpty then
                          begin
                            if FileExists(PathImg) then
                              begin
                                LogoEmpresa := TfrxPictureView(FIN_FR_R_CXA_MOP.FindObject('imgEmpresa1'));
                                if Assigned(LogoEmpresa) then
                                   LogoEmpresa.Picture.LoadFromFile(PathImg);
                              end;

                            dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_CXA_MOP.Name,xCodLme,xRevLme,nil);
                            FIN_FR_R_CXA_MOP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                            FIN_FR_R_CXA_MOP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                            FIN_FR_R_CXA_MOP.Variables['Opcoes'] := QuotedStr(xOpcoes);
                            FIN_FR_R_CXA_MOP.PrepareReport();
                            FIN_FR_R_CXA_MOP.ShowReport();
                          end
                        else
                          begin
                            ShowMessage('Nenhum registro foi encontrado');
                          end;
                      end;

          if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Movimento por Plano de Contas' then
                      begin

                        FIN_CD_R_CXA_DIA_MPL.Close;
                        FIN_CD_R_CXA_DIA_MPL.Data :=
                        FIN_CD_R_CXA_DIA_MPL.DataRequest(
                                  VarArrayOf([lbxRelatorios.ItemIndex,rDtaIni,rDtaFin,xCondEmpresa,rOperador,
                                              rContaCorrente,xCondPlanoContas,xCondTipoFinanceiro,txtObra.Text]));
                        FIN_CD_R_CXA_DIA_MPL.IndexFieldNames := 'id_plano';
                        if not FIN_CD_R_CXA_DIA_MPL.IsEmpty then
                           begin
                             if FileExists(PathImg) then
                              begin
                                LogoEmpresa := TfrxPictureView(FIN_FR_R_CXA_MPL.FindObject('imgEmpresa1'));
                                if Assigned(LogoEmpresa) then
                                   LogoEmpresa.Picture.LoadFromFile(PathImg);
                              end;

                             dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_CXA_MPL.Name,xCodLme,xRevLme,nil);
                             FIN_FR_R_CXA_MPL.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                             FIN_FR_R_CXA_MPL.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                             FIN_FR_R_CXA_MPL.Variables['Opcoes'] := QuotedStr(xOpcoes);
                             FIN_FR_R_CXA_MPL.PrepareReport();
                             FIN_FR_R_CXA_MPL.ShowReport();
                           end
                         else
                           begin
                             ShowMessage('Nenhum registro foi encontrado');
                           end;
                      end;

          if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Caixa Diário - Modelo 2' then
                      begin
                        FIN_CD_R_CXA_DIA.Close;
                        FIN_CD_R_CXA_DIA.Data :=
                        FIN_CD_R_CXA_DIA.DataRequest(
                                  VarArrayOf([0,rDtaIni,rDtaFin,xCondEmpresa,rOperador,
                                              rContaCorrente,xCondPlanoContas,xCondTipoFinanceiro,txtobra.Text]));

                        FIN_CD_R_CXA_DIA_SLA.Close;
                        FIN_CD_R_CXA_DIA_SLA.Data :=
                        FIN_CD_R_CXA_DIA_SLA.DataRequest(
                                  VarArrayOf([rDtaIni,xCondEmpresa,rContaCorrente,rOperador,txtobra.Text]));

                        FIN_CD_R_CXA_DIA_MPL.Close;
                        FIN_CD_R_CXA_DIA_MPL.Data :=
                        FIN_CD_R_CXA_DIA_MPL.DataRequest(
                                  VarArrayOf([2,rDtaIni,rDtaFin,xCondEmpresa,rOperador,
                                              rContaCorrente,xCondPlanoContas,xCondTipoFinanceiro,txtObra.Text]));

                        FIN_CD_R_CXA_DIA_MPL.IndexFieldNames := 'id_plano';

                        if FileExists(PathImg) then
                           begin
                              LogoEmpresa := TfrxPictureView(FIN_FR_R_CXA_CXD_2.FindObject('imgEmpresa1'));
                              if Assigned(LogoEmpresa) then
                                 LogoEmpresa.Picture.LoadFromFile(PathImg);
                           end;

                        dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_CXA_CXD_2.Name,xCodLme,xRevLme,nil);


                        FIN_FR_R_CXA_CXD_2.Variables['ft_periodo']   := QuotedStr(rDtaIni+' à '+rDtaFin);
                        FIN_FR_R_CXA_CXD_2.Variables['ft_codlme']    := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                        FIN_FR_R_CXA_CXD_2.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                        FIN_FR_R_CXA_CXD_2.Variables['Opcoes']       := QuotedStr(xOpcoes);
                        FIN_FR_R_CXA_CXD_2.PrepareReport();
                        FIN_FR_R_CXA_CXD_2.ShowReport();
                      end;
    end;
end;

procedure TFIN_FM_R_CXA.FIN_DB_R_CXA_DIACheckEOF(Sender: TObject;
  var Eof: Boolean);
begin
  inherited;
  FIN_FR_R_CXA_CXD.Variables['ft_saldo'] :=  FIN_FR_R_CXA_CXD.Variables['ft_saldo'] +
                                             FIN_CD_R_CXA_DIA.FieldByName('vlr_saldodia').AsCurrency;
end;

procedure TFIN_FM_R_CXA.FIN_DB_R_CXA_DIA_SLACheckEOF(Sender: TObject;
  var Eof: Boolean);
begin
  inherited;
   FIN_FR_R_CXA_CXD.Variables['ft_saldo'] :=  FIN_CD_R_CXA_DIA_SLA.FieldByName('SLD_ANTERIOR').AsCurrency;
end;

procedure TFIN_FM_R_CXA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_R_CXA);
end;

procedure TFIN_FM_R_CXA.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  label5.Visible := dmgeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean;
  txtobra.Visible := dmgeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean;

  // Operador ------------------------------------------------------------------
  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       dmGeral.BUS_CD_C_FUN.First;

       while not dmGeral.BUS_CD_C_FUN.eof do
          begin
            cbboperador.Items.Add(dmGeral.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString);
            dmGeral.BUS_CD_C_FUN.Next;
          end;
     end;
  dmGeral.BUS_CD_C_FUN.Close;

  // Conta Corrente ------------------------------------------------------------------
  dmGeral.BUS_CD_C_CTC.Close;
  dmGeral.BUS_CD_C_CTC.Data :=
  dmGeral.BUS_CD_C_CTC.DataRequest(
          VarArrayOf([3, '0']));

  if not dmGeral.BUS_CD_C_CTC.IsEmpty then
     begin
       dmGeral.BUS_CD_C_CTC.First;

       while not dmGeral.BUS_CD_C_CTC.eof do
          begin
            cbbcontacorrente.Items.Add(dmGeral.BUS_CD_C_CTC.FieldByName('ID_CONTA').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_CTC.Next;
          end;
     end;
  dmGeral.BUS_CD_C_CTC.Close;

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
            lboxPlanosDisponiveis.Items.Add(trim(dmGeral.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString) +
                                    ' - ' + dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_PCT.Next;
          end;
     end;

 dmGeral.BUS_CD_C_PCT.Close;

 // Tipo Financeiro ------------------------------------------------------------
  dmGeral.BUS_CD_C_TIF.Close;
  dmGeral.BUS_CD_C_TIF.Data :=
  dmGeral.BUS_CD_C_TIF.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_TIF.IsEmpty then
     begin
       dmGeral.BUS_CD_C_TIF.First;

       while not dmGeral.BUS_CD_C_TIF.eof do
          begin
            lboxTipoFinanceiro.Items.Add(dmGeral.BUS_CD_C_TIF.FieldByName('ID_TIPO_FINANCEIRO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_TIF.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_TIF.Next;
          end;
     end;

 dmGeral.BUS_CD_C_TIF.Close;

  // if inserido por Maxsuel Victor, em 06/09/17 devido o cliente GMC.
 if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = false then
    begin
       lbxRelatorios.clear;
       lbxRelatorios.Items.Add('00 - Caixa Diário');
       lbxRelatorios.Items.Add('01 - Movimento por Operação');
       lbxRelatorios.Items.Add('02 - Movimento por Plano de Contas');

       tsComposicao.TabVisible := false;
    end
 else
    begin
      cdsTempComposicao.Insert;
      cdsTempComposicao.FieldByName('DESCRICAO').AsString := 'Dinheiro';
      cdsTempComposicao.Insert;
      cdsTempComposicao.FieldByName('DESCRICAO').AsString := 'Adiantamento/Vale';
      cdsTempComposicao.Insert;
      cdsTempComposicao.FieldByName('DESCRICAO').AsString := 'Cheque';

      cdsTempComposicao.First;
    end;
end;

procedure TFIN_FM_R_CXA.grdComposicaoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnComposicao.Enabled = false then
     pnComposicao.Enabled := true;

  cdsTempComposicao.cancel;

  if cdsTempComposicao.IsEmpty then
     begin
       cdsTempComposicao.Append;
       pnComposicao.Enabled := true;
       txtDescComposicao.SetFocus;
     end
  else
     begin
       cdsTempComposicao.Edit;
       pnComposicao.Enabled := true;
       txtDescComposicao.SetFocus;
     end;
end;

procedure TFIN_FM_R_CXA.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CXA.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CXA.lboxPlanosDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxPlanosDisponiveis.ItemIndex > - 1 then
     begin
       lboxPlanoSelecionado.Items.Add(lboxPlanosDisponiveis.Items[lboxPlanosDisponiveis.ItemIndex]);
       lboxPlanosDisponiveis.Items.Delete(lboxPlanosDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CXA.lboxPlanoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxPlanoSelecionado.ItemIndex > -1 then
     begin
       lboxplanosDisponiveis.Items.Add(lboxPlanoSelecionado.Items[lboxPlanoSelecionado.ItemIndex]);
       lboxPlanoSelecionado.Items.Delete(lboxPlanoSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CXA.lboxTipoFinanceiroDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoFinanceiro.ItemIndex > - 1 then
     begin
       lboxTipoFinanceiroSelecionado.Items.Add(lboxTipoFinanceiro.Items[lboxTipoFinanceiro.ItemIndex]);
       lboxTipoFinanceiro.Items.Delete(lboxTipoFinanceiro.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CXA.lboxTipoFinanceiroSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoFinanceiroSelecionado.ItemIndex > -1 then
     begin
       lboxTipoFinanceiro.Items.Add(lboxTipoFinanceiroSelecionado.Items[lboxTipoFinanceiroSelecionado.ItemIndex]);
       lboxTipoFinanceiroSelecionado.Items.Delete(lboxTipoFinanceiroSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CXA.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
  gbExibir.Enabled := true;
  if lbxRelatorios.ItemIndex = 3 then
     begin
       gbExibir.Enabled := false;
     end;
end;

procedure TFIN_FM_R_CXA.menuItemEmpresasClick(Sender: TObject);
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

procedure TFIN_FM_R_CXA.MenuItemPlanoContaClick(Sender: TObject);
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

procedure TFIN_FM_R_CXA.menuItemTipoFinanceiroClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxTipoFinanceiro.ClearSelection;

  if lboxTipoFinanceiro.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoFinanceiro.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoFinanceiro.Items.Count - 1 do
           begin
             lboxTipoFinanceiroSelecionado.Items.Add(lboxTipoFinanceiro.Items[i]);
             lboxTipoFinanceiro.Items.Delete(lboxTipoFinanceiro.ItemIndex);
           end;
       lboxTipoFinanceiro.Items.Clear;
     end;
end;
procedure TFIN_FM_R_CXA.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesPlanoContas,opcoesTipoFinanceiro:string;
begin

// Empresas --------------------------------------------------------------------
  opcoesEmpresa := '';
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

// Planos de Contas ------------------------------------------------------------
  opcoesPlanoContas := '';
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
                 xCondPlanoContas + ',' +''''+trim(copy(lboxPlanoSelecionado.Items[i],1,pos(' - ',lboxPlanoSelecionado.Items[i])-1))+'''';
                 opcoesPlanoContas :=
                 opcoesPlanoContas +'                    '+lboxPlanoSelecionado.Items[i] + #13+#10;
               end;
            if xCondPlanoContas = '' then
               begin
                 xCondPlanoContas :=
                 xCondPlanoContas +''''+trim(copy(lboxPlanoSelecionado.Items[i],1,pos(' - ',lboxPlanoSelecionado.Items[i])-1))+'''';
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

// Tipo Financeiro ------------------------------------------------------------
  opcoesTipoFinanceiro := '';
  xCondTipoFinanceiro := '';
  if lboxTipoFinanceiroSelecionado.Count > 0 then
     begin
     if lboxTipoFinanceiro.Count > 0 then
        begin

       for i := 0 to lboxTipoFinanceiroSelecionado.Count - 1 do
          begin
            if xCondTipoFinanceiro <> '' then
               begin
                 xCondTipoFinanceiro :=
                 xCondTipoFinanceiro + ',' +''''+trim(copy(lboxTipoFinanceiroSelecionado.Items[i],1,pos(' - ',lboxTipoFinanceiroSelecionado.Items[i])-1))+'''';
                 opcoesTipoFinanceiro :=
                 opcoesTipoFinanceiro +'                    '+lboxTipoFinanceiroSelecionado.Items[i] + #13+#10;
               end;
            if xCondTipoFinanceiro = '' then
               begin
                 xCondTipoFinanceiro :=
                 xCondTipoFinanceiro +''''+trim(copy(lboxTipoFinanceiroSelecionado.Items[i],1,pos(' - ',lboxTipoFinanceiroSelecionado.Items[i])-1))+'''';
                 opcoesTipoFinanceiro :=
                 opcoesTipoFinanceiro +lboxTipoFinanceiroSelecionado.Items[i] + #13+#10;
               end;
          end;
     end
  else
      begin
        opcoesTipoFinanceiro := 'Todos';
      end;
     end
  else
     begin
        opcoesTipoFinanceiro := 'Todos';
     end;

// Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Operador..........: ' + cbbOperador.Items[cbbOperador.ItemIndex] + #13+#10;
   xOpcoes := xOpcoes + 'Conta Corrente....: ' + cbbContaCorrente.Items[cbbContaCorrente.ItemIndex] + #13+#10;
   xOpcoes := xOpcoes + 'Recebimento.......: ' + cbbRecebimento.Items[cbbRecebimento.ItemIndex]+#13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Plano de Contas...: ' + opcoesPlanoContas+#13+#10;
   xOpcoes := xOpcoes + 'Tipo Financeiro...: ' + opcoesTipoFinanceiro+#13+#10;
   if obra <> '' then
    xOpcoes := xOpcoes + 'Obra..............: ' + obra+' - '+nome_obra+#13+#10;


end;

function TFIN_FM_R_CXA.TestarCampos: Boolean;
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

        if (cbbOperador.ItemIndex = -1) then
          begin
            mens := mens + '.O campo "Operador" deve ser preenchido' + #13;
          end;

        if (cbbContaCorrente.ItemIndex = -1) then
          begin
            mens := mens + '.O campo "Conta Corrente" deve ser preenchido' + #13;
          end;

        if lboxEmpresaSelecionada.Count = 0 then
           begin
             mens := mens +  '.É necessário selecionar pelos menos 1 empresa' + #13;
           end;

        if ((obra ='') or (obra='0')) and (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean) then
           begin
             //mens := mens +  '.É necessário selecionar a obra' + #13;
           end;

       if trim(mens) <> '' then
          begin
            ShowMessage('Atenção!' + #13 + mens);
            Result := False;
            exit;
          end;
end;
procedure TFIN_FM_R_CXA.txtobraButtonClick(Sender: TObject);
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

procedure TFIN_FM_R_CXA.txtobraExit(Sender: TObject);
begin
  inherited;
  dmCtc.BUS_CD_C_OBR.Close;
  dmCtc.BUS_CD_C_OBR.Data :=
    dmCtc.BUS_CD_C_OBR.DataRequest(
      VarArrayOf([0, txtobra.Text,'True']));

  if not dmCtc.BUS_CD_C_OBR.IsEmpty then
    begin
      obra := dmCtc.BUS_CD_C_OBR.FieldByName('id_obra').AsString;
      nome_obra := dmCtc.BUS_CD_C_OBR.FieldByName('descricao').AsString;
    end
  else
    begin
      if not (txtobra.Text = '') then
        showmessage('Obra não Encontrada!');

      txtobra.Text := '';
      obra := '';
      nome_obra := '';
    end;
end;

procedure TFIN_FM_R_CXA.txtValorComposicaoExit(Sender: TObject);
begin
  inherited;

  if txtDescComposicao.Focused or
     grdComposicao.Focused  then
     begin
       exit;
     end;

  cdsTempComposicao.Post;

  pnComposicao.Enabled := false;
  btn_Add_Compos.SetFocus;
end;

end.
