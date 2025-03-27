unit PCP_UN_M_OPR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics, System.Math,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, Vcl.DBCtrls,
  JvExMask, JvToolEdit, JvDBControls, Vcl.Mask, JvExExtCtrls, JvExtComponent,
  JvPanel, vcl.wwdblook, JvExControls, JvArrowButton, frxExportXLS, frxClass,
  frxExportPDF, frxDBSet, Datasnap.DBClient, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TPCP_FM_M_OPR = class(TPAD_FM_X_PAD)
    lbResponsavel: TLabel;
    Label1: TLabel;
    lblObservacaoAmd: TLabel;
    lblObservacaoProducao: TLabel;
    lblDataEmissao: TLabel;
    txtObservacaoAdm: TDBMemo;
    txtObservacaoProducao: TDBMemo;
    gbPedidosImportados: TGroupBox;
    dgPedidosImportados: TwwDBGrid;
    dsoPed: TwwDataSource;
    lblTipoProgramacao: TLabel;
    txtCubagemProduzir: TDBEdit;
    lblCubagemProduzir: TLabel;
    dpkDataEmissao: TJvDBDateEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    cbbResponsavel: TwwDBLookupCombo;
    cbbTipoProg: TwwDBLookupCombo;
    pnPeriodo: TPanel;
    lblAte: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    btnImpressao: TJvArrowButton;
    pMenu: TPopupMenu;
    ImprimirItensdaOPR1: TMenuItem;
    ImprimirPedidosOPR1: TMenuItem;
    PCP_DB_M_OPR: TfrxDBDataset;
    PCP_DB_M_OPR_OPP: TfrxDBDataset;
    PCP_FR_M_OPR_ITE: TfrxReport;
    PCP_DB_M_OPR_PED: TfrxDBDataset;
    PCP_PD_M_OPR: TfrxPDFExport;
    PCP_XL_M_OPR: TfrxXLSExport;
    PCP_FR_M_OPR_PED: TfrxReport;
    btnGerenciaProdItens: TcxButton;
    btnApontamento: TcxButton;
    btnRequisao: TcxButton;
    Label2: TLabel;
    cbbAlmoxarifado: TwwDBLookupCombo;
    Label4: TLabel;
    cbbSetor: TwwDBLookupCombo;
    btnImpOrdPrdSet: TMenuItem;
    PCP_DB_M_OPR_OPS: TfrxDBDataset;
    PCP_FR_M_OPR_OPS_CCR_LMC: TfrxReport;
    PCP_FR_M_OPR_OPS_BRD: TfrxReport;
    PCP_FR_M_OPR_OPS_ALF_CLG: TfrxReport;
    Etiquetas1: TMenuItem;
    txtNumLote: TDBEdit;
    Panel4: TPanel;
    Label5: TLabel;
    OrdemdeProduodeBlocosdeEspumas1: TMenuItem;
    N1: TMenuItem;
    EtiquetasparaColchoaria1: TMenuItem;
    Label6: TLabel;
    txtQtdePedidosSelec: TEdit;
    pnInformacoes: TPanel;
    Label7: TLabel;
    txtUltOPGerada: TEdit;
    BUS_CD_M_OPR: TClientDataSet;
    BUS_CD_M_OPR_PED: TClientDataSet;
    BUS_CD_M_OPRnum_lote: TWideStringField;
    BUS_CD_M_OPRPCP_SQ_M_OPR_PED: TDataSetField;
    Label8: TLabel;
    txtQtdPedUltOp: TEdit;
    Label9: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbbResponsavelEnter(Sender: TObject);
    procedure txtObservacaoAdmEnter(Sender: TObject);
    procedure txtObservacaoAdmExit(Sender: TObject);
    procedure txtObservacaoProducaoExit(Sender: TObject);
    procedure txtObservacaoProducaoEnter(Sender: TObject);
    procedure ImprimirItensdaOPR1Click(Sender: TObject);
    procedure ImprimirPedidosOPR1Click(Sender: TObject);
    procedure btnGerenciaProdItensClick(Sender: TObject);
    procedure btnApontamentoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRequisaoClick(Sender: TObject);
    procedure cbbAlmoxarifadoEnter(Sender: TObject);
    procedure cbbSetorEnter(Sender: TObject);
    procedure btnImpOrdPrdSetClick(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure dsoStateChange(Sender: TObject);
    procedure dgPedidosImportadosCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure OrdemdeProduodeBlocosdeEspumas1Click(Sender: TObject);
    procedure EtiquetasparaColchoaria1Click(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
  private
    { Private declarations }
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    procedure AbrirBuscas;
    procedure ExibirUltOPGerada;
  public
    { Public declarations }
  end;

procedure OpenForm(FClass: TFormClass; var Instance);


var
  PCP_FM_M_OPR: TPCP_FM_M_OPR;

implementation

{$R *.dfm}

uses uDmGeral, PCP_UN_M_OPR_OPS, PCP_UN_M_OPR_IPE, enSoftMenu, uDmSgq,
  enConstantes, PCP_UN_M_OPR_OPP, PCP_UN_M_OPR_REQ, PCP_UN_M_OPR_IMP_OPS,
  PCP_UN_M_OPR_ETQ, PCP_UN_M_OPR_OPB, PCP_UN_M_OPR_FUN_COL;

procedure TPCP_FM_M_OPR.AbrirBuscas;
begin
  dmGeral.BusFuncionario(9,'');
  dmGeral.BusFuncionario2(0,inttostr(xFuncionario));
  dmSgq.BusTiposProg(1,'');
  dmGeral.BusAlmox(1,'');
  dmGeral.BusSetor(1,'');
end;

procedure TPCP_FM_M_OPR.acAdicionaExecute(Sender: TObject);
begin
  if Trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_opr_id_setor').AsString) = '' then
     begin
       ShowMessage('O Setor para Ordem de Produção não foi encontrado nos parâmetros.');
       abort;
     end;

  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_OPR);
  HabilDesabCampos(false,$00DADADA);
  cbbTipoProg.Enabled := true;
  cbbTipoProg.SetFocus;

  dmGeral.PCP_CD_M_OPR.FieldByName('id_setor').AsString :=
         dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_opr_id_setor').AsString;

  dmGeral.PCP_CD_M_OPR.FieldByName('id_almoxarifado').AsInteger := 1; // Central


  ///dmGeral.BUS_CD_C_SET.Locate('ID_SETOR',dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_opr_id_setor').AsString,[]);
end;

procedure TPCP_FM_M_OPR.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_OPR) then
      begin
        inherited;
        cbbTipoProg.Enabled := false;
        HabilDesabCampos(false,$00DADADA);
        txtObservacaoAdm.setfocus;
      end;
end;

procedure TPCP_FM_M_OPR.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_OPR) then
     begin
       inherited;
       dbGrid.SetFocus;
       cbbTipoProg.Enabled := true;
       HabilDesabCampos(true,clWindow);
     end
  else
     begin
       txtObservacaoAdm.SetFocus;
     end;
end;

procedure TPCP_FM_M_OPR.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_OPR);
end;

procedure TPCP_FM_M_OPR.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.PCP_CD_M_OPR.FieldByName('ID_OPR').AsString;
  DmGeral.Grava(dmGeral.PCP_CD_M_OPR);
  inherited;

  ExibirUltOPGerada;

  dmGeral.PCP_CD_M_OPR.Close;
  dmGeral.PCP_CD_M_OPR.Data :=
  dmGeral.PCP_CD_M_OPR.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString, codigo]));

  HabilDesabCampos(true,clWindow);
end;

procedure TPCP_FM_M_OPR.BitBtn1Click(Sender: TObject);
var
  dataOp, dataSis: string;
begin
  inherited;

  if dmGeral.PCP_CD_M_OPR.FieldByName('id_tpp').Text = '' then
     begin
       ShowMessage('O campo "Tipo de Programação" deve ser preenchido.');
       abort;
     end;

  if dmGeral.PCP_CD_M_OPR.FieldByName('id_almoxarifado').Text = '' then
     begin
       ShowMessage('O campo "Almoxarifado" deve ser preenchido.');
       abort;
     end;

  dataOp := FormatDateTime('dd/mm/yyyy', dmGeral.PCP_CD_M_OPR.FieldByName('dta_emissao').AsDateTime);
  dataSis := FormatDateTime('dd/mm/yyyy', xDataSistema);

  if copy(dataOp,7,4) <> copy(dataSis,7,4) then
     begin
       Showmessage('Só pode importar pedido de venda para O.Ps do ano: ' + copy(dataSis,7,4));
       exit;
     end;


  dmGeral.PCP_CD_M_OPR.ApplyUpdates(0);
  dmGeral.PCP_CD_M_OPR.edit;
  OpenForm(TPCP_FM_M_OPR_IPE, PCP_FM_M_OPR_IPE);

  if trim(pcp_fm_m_opr_ipe.txtResponsavel.Text) = ''  then
     pcp_fm_m_opr_ipe.txtResponsavel.Text := dmGeral.BUS_CD_C_FUN.FieldByName('nome').AsString;
end;

procedure TPCP_FM_M_OPR.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;

    {
       Controle
       Emissão
       Cód. Tipo de Programação
       Nome Responsável
       Período
       Com Nº de Pedido
       Cód. OPR
    }

    if cbbPesquisa.ItemIndex in [4] then
       begin
          if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
              begin
                ShowMessage('O período deve ser preenchido.');
                exit;
              end
          else
              begin
                if (deInicial.Date >  deFinal.Date) then
                    begin
                      ShowMessage('Data inicial não pode ser maior que a data final.');
                      exit;
                    end;
              end;
         dmGeral.PCP_CD_M_OPR.Close;
         dmGeral.PCP_CD_M_OPR.Data :=
         dmGeral.PCP_CD_M_OPR.DataRequest(
                  VarArrayOf([cbbPesquisa.ItemIndex, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,
                              deInicial.Text,deFinal.Text]));
       end
    else
       begin
         if length(trim(txtPesquisa.text)) < 1 then
            begin
              ShowMessage('Digite pelo menos 1 caractere!');
              exit;
            end;

         if cbbPesquisa.ItemIndex = 6 then
            begin
               dmGeral.PCP_CD_M_OPR.Close;
               dmGeral.PCP_CD_M_OPR.Data :=
               dmGeral.PCP_CD_M_OPR.DataRequest(
                        VarArrayOf([cbbPesquisa.ItemIndex+1, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString, txtPesquisa.Text]));
            end
         else
            begin
               dmGeral.PCP_CD_M_OPR.Close;
               dmGeral.PCP_CD_M_OPR.Data :=
               dmGeral.PCP_CD_M_OPR.DataRequest(
                        VarArrayOf([cbbPesquisa.ItemIndex, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString, txtPesquisa.Text]));
            end;
       end;

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_OPR.btnGerenciaProdItensClick(Sender: TObject);
begin
  inherited;

  if dmGeral.PCP_CD_M_OPR.IsEmpty then
     begin
       ShowMessage('É preciso localizar a O.P primeiramente para depois inserir produto nela.');
       exit;
     end;

  if not dmGeral.BUS_CD_C_FU2.FieldByName('sgq_perm_inserir_itens_op').Asboolean then
     begin
       ShowMessage('Você não tem permissão para inserir produtos na O.P .');
       exit;
     end;


  dmGeral.PCP_CD_M_OPR.Edit;
  OpenForm(TPCP_FM_M_OPR_OPP, PCP_FM_M_OPR_OPP);
end;

procedure TPCP_FM_M_OPR.btnImpOrdPrdSetClick(Sender: TObject);
begin
  inherited;
  PCP_FM_M_OPR_IMP_OPS := TPCP_FM_M_OPR_IMP_OPS.Create(Self);
  PCP_FM_M_OPR_IMP_OPS.codOpr := dmGeral.PCP_CD_M_OPR.FieldByName('ID_OPR').AsString;
  PCP_FM_M_OPR_IMP_OPS.ShowModal;
  PCP_FM_M_OPR_IMP_OPS.Free;
end;

procedure TPCP_FM_M_OPR.btnRequisaoClick(Sender: TObject);
begin
  inherited;
  if not dmGeral.PCP_CD_M_OPR.IsEmpty then
    OpenForm(TPCP_FM_M_OPR_REQ, PCP_FM_M_OPR_REQ)
  else
    Showmessage('Nenhuma ordem de produção selecionada.');
end;

procedure TPCP_FM_M_OPR.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  pnPeriodo.Visible := false;
  txtPesquisa.TabStop := true;
  txtPesquisa.Visible := true;

  if cbbPesquisa.ItemIndex in [0,2,5] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       if cbbPesquisa.ItemIndex in [4] then
          begin
            pnPeriodo.Visible := true;
            txtPesquisa.TabStop := false;
            txtPesquisa.Visible := false;
            deInicial.SetFocus;
          end
       else
          txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPCP_FM_M_OPR.cbbResponsavelEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFuncionario(9,'');
  cbbResponsavel.DropDown;
end;

procedure TPCP_FM_M_OPR.btnApontamentoClick(Sender: TObject);
begin
  inherited;
  OpenForm(TPCP_FM_M_OPR_OPS, PCP_FM_M_OPR_OPS);
end;

procedure TPCP_FM_M_OPR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_OPR.Close;
  FreeAndNil(PCP_FM_M_OPR);
end;

procedure TPCP_FM_M_OPR.FormCreate(Sender: TObject);
begin
  inherited;

  ExibirUltOPGerada;

  dmGeral.PCP_CD_M_OPR.Close;
  dmGeral.PCP_CD_M_OPR.Data := dmGeral.PCP_CD_M_OPR.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_OPR.Open;


end;

procedure TPCP_FM_M_OPR.FormShow(Sender: TObject);
begin
  inherited;
  AbrirBuscas;
  btnExcluir.Visible := false;
  txtPesquisa.SetFocus;
end;

procedure TPCP_FM_M_OPR.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  btnGerenciaProdItens.Enabled  := Estado;
  btnApontamento.Enabled        := Estado;
  btnRequisao.Enabled           := Estado;
  btnImpressao.Enabled          := Estado;
end;

procedure TPCP_FM_M_OPR.ImprimirItensdaOPR1Click(Sender: TObject);
var
   PathImg, Ped_Sel: String;
   LogoEmpresa: TfrxPictureView;
   TotLiq, Cubagem: Currency;
   opcao_rel: String;
begin
  inherited;
  try

    opcao_rel := '2';
    if not(InputQuery('Opção', '1-Todos;   2-Restante a produzir > 0;   3-Qtde a produzir=0;   4-Restante a produzir=0', opcao_rel)) then
       exit;

    if (opcao_rel <> '1') and (opcao_rel <> '2') and (opcao_rel <> '3') and (opcao_rel <> '4') then
       begin
         Showmessage('Opção inválida para a impressão!');
         exit;
       end;

  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
  if not dmGeral.PCP_CD_M_OPR.IsEmpty then
    begin

      if dmGeral.PCP_CD_M_OPR_OPP.IsEmpty then
         begin
           ShowMessage('Não há registro para imprimir!');
           abort;
         end;

      dmGeral.PCP_CD_M_OPR_OPP.IndexFieldNames := 'int_id_grupo;int_nomeite';
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(PCP_FR_M_OPR_ITE.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;

      dmGeral.PCP_CD_M_OPR_PED.First;
      while not dmGeral.PCP_CD_M_OPR_PED.eof do
         begin
            if Ped_Sel <> '' then
               begin
                 Ped_Sel :=
                 Ped_Sel + ',' +''''+dmGeral.PCP_CD_M_OPR_PED.FieldByName('ID_PEDIDO').AsString+'''';
               end;
            if Ped_Sel = '' then
               begin
                 Ped_Sel :=
                 Ped_Sel +''''+ dmGeral.PCP_CD_M_OPR_PED.FieldByName('ID_PEDIDO').AsString+'''';
               end;
           dmGeral.PCP_CD_M_OPR_PED.Next;
         end;
      dmGeral.PCP_CD_M_OPR_PED.First;

      TotLiq  := 0;
      Cubagem := 0;

      if trim(Ped_Sel) = '' then
         begin
           Ped_Sel := '''-1''';
         end;

      dmGeral.BUS_CD_M_PED.Close;
      dmGeral.BUS_CD_M_PED.Data :=
      dmGeral.BUS_CD_M_PED.DataRequest(
              VarArrayOf([100, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString, Ped_Sel]));

      dmGeral.BUS_CD_M_PED.First;
      while not dmGeral.BUS_CD_M_PED.eof do
         begin
           TotLiq  := TotLiq  + dmGeral.BUS_CD_M_PED.FieldByName('vlr_liquido').AsCurrency;
           Cubagem := Cubagem + dmGeral.BUS_CD_M_PED.FieldByName('cubagem').AsCurrency;
           dmGeral.BUS_CD_M_PED.Next;
         end;
      //dmGeral.BUS_CD_M_PED.Close;

      if dmGeral.BUS_CD_M_PED.IsEmpty then
         begin
            TotLiq := 0;
            dmGeral.PCP_CD_M_OPR_OPP.first;
            while not dmGeral.PCP_CD_M_OPR_OPP.eof do
               begin
                 if dmGeral.PCP_CD_M_OPR_OPP.FieldByName('qtde_a_produzir').AsCurrency > 0 then
                    begin
                      dmgeral.BusItens(0,dmGeral.PCP_CD_M_OPR_OPP.FieldByName('id_item').AsString);
                      if dmgeral.BUS_CD_C_ITE.FieldByName('cubagem').AsFloat > 0 then
                         begin
                           Cubagem := Cubagem + RoundTo( (dmgeral.BUS_CD_C_ITE.FieldByName('cubagem').AsCurrency *
                                                 dmGeral.PCP_CD_M_OPR_OPP.FieldByName('qtde_a_produzir').AsCurrency),-2);
                         end;
                    end;
                 dmGeral.PCP_CD_M_OPR_OPP.Next;
                 dmgeral.BUS_CD_C_ITE.close;
               end;
            dmGeral.PCP_CD_M_OPR_OPP.First;
         end;
      dmGeral.BUS_CD_M_PED.Close;

      if opcao_rel = '2' then
         begin
           dmGeral.PCP_CD_M_OPR_OPP.Filtered := true;
           dmGeral.PCP_CD_M_OPR_OPP.Filter := ' (qtde_a_produzir - qtde_produzida) > 0 ';
         end;
      if opcao_rel = '3' then
         begin
           dmGeral.PCP_CD_M_OPR_OPP.Filtered := true;
           dmGeral.PCP_CD_M_OPR_OPP.Filter := ' qtde_a_produzir = 0 ';
         end;

      if opcao_rel = '4' then
         begin
           dmGeral.PCP_CD_M_OPR_OPP.Filtered := true;
           dmGeral.PCP_CD_M_OPR_OPP.Filter := ' (qtde_a_produzir - qtde_produzida) = 0 ';
         end;

      PCP_FR_M_OPR_ITE.Variables['xCor'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsString);
      PCP_FR_M_OPR_ITE.Variables['xTamanho'] := QuotedStr(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsString);
      PCP_FR_M_OPR_ITE.Variables['VlrLiqPed'] := QuotedStr(FormatCurr('R$ ###,###,###,##0.00', TotLiq));
      PCP_FR_M_OPR_ITE.Variables['CubPed'] := QuotedStr(CurrToStr(Cubagem));
      PCP_FR_M_OPR_ITE.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
      PCP_FR_M_OPR_ITE.PrepareReport();
      PCP_FR_M_OPR_ITE.ShowReport();
    end
  else
    begin
      ShowMessage('Nenhuma OPR selecionada!');
      exit;
    end;
  finally
    dmGeral.PCP_CD_M_OPR_OPP.Filtered := false;
  end;
end;

procedure TPCP_FM_M_OPR.ImprimirPedidosOPR1Click(Sender: TObject);
var
PathImg: String;
LogoEmpresa: TfrxPictureView;
begin
  inherited;
  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
  if not dmGeral.PCP_CD_M_OPR.IsEmpty then
    begin
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(PCP_FR_M_OPR_PED.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;
      PCP_FR_M_OPR_PED.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
      PCP_FR_M_OPR_PED.PrepareReport();
      PCP_FR_M_OPR_PED.ShowReport();
    end
  else
    begin
      ShowMessage('Nenhuma OPR selecionada!');
      exit;
    end;
end;

procedure TPCP_FM_M_OPR.OrdemdeProduodeBlocosdeEspumas1Click(Sender: TObject);
begin
  inherited;

  OpenForm(TPCP_FM_M_OPR_OPB, PCP_FM_M_OPR_OPB);
end;

procedure TPCP_FM_M_OPR.txtObservacaoAdmEnter(Sender: TObject);
begin
  inherited;
  PCP_FM_M_OPR.KeyPreview := false;
end;

procedure TPCP_FM_M_OPR.txtObservacaoAdmExit(Sender: TObject);
begin
  inherited;
  PCP_FM_M_OPR.KeyPreview := true;
end;

procedure TPCP_FM_M_OPR.txtObservacaoProducaoEnter(Sender: TObject);
begin
  inherited;
  PCP_FM_M_OPR.KeyPreview := false;
end;

procedure TPCP_FM_M_OPR.txtObservacaoProducaoExit(Sender: TObject);
begin
  inherited;
  PCP_FM_M_OPR.KeyPreview := true;
end;

procedure TPCP_FM_M_OPR.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;

procedure TPCP_FM_M_OPR.cbbSetorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusSetor(1,'');
  cbbSetor.DropDown;
end;

procedure TPCP_FM_M_OPR.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  txtQtdePedidosSelec.Text := '0';
  if dmGeral.PCP_CD_M_OPR_PED.RecordCount > 0 then
     txtQtdePedidosSelec.Text := inttostr(dmGeral.PCP_CD_M_OPR_PED.RecordCount);


end;

procedure TPCP_FM_M_OPR.dgPedidosImportadosCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
  if dmGeral.PCP_CD_M_OPR_PED.FieldByName('origem_insercao').AsInteger = 1 then // Por pedido automático
     begin
       aFont.Color := clGreen;
     end;
end;

procedure TPCP_FM_M_OPR.dsoStateChange(Sender: TObject);
begin
  inherited;
  btnGerenciaProdItens.Enabled := false;
  if dmGeral.BUS_CD_C_FU2.FieldByName('sgq_perm_botao_ger_prod').AsBoolean = true then
     begin
       btnGerenciaProdItens.Enabled := true;
     end;
end;

procedure TPCP_FM_M_OPR.Etiquetas1Click(Sender: TObject);
begin
  inherited;
  if not dmGeral.PCP_CD_M_OPR.IsEmpty then
     OpenForm(TPCP_FM_M_OPR_ETQ, PCP_FM_M_OPR_ETQ)
  else
    Showmessage('Nenhuma ordem de produção selecionada.');
end;

procedure TPCP_FM_M_OPR.EtiquetasparaColchoaria1Click(Sender: TObject);
begin
  inherited;
  PCP_FM_M_OPR_FUN_COL := TPCP_FM_M_OPR_FUN_COL.Create(Self);
//  PCP_FM_M_OPR_FUN_COL.codOpr := dmGeral.PCP_CD_M_OPR.FieldByName('ID_OPR').AsString;
  PCP_FM_M_OPR_FUN_COL.ShowModal;
  PCP_FM_M_OPR_FUN_COL.Free;
end;

procedure TPCP_FM_M_OPR.ExibirUltOPGerada;
begin

  txtUltOPGerada.Text := '';
  txtQtdPedUltOp.Text := '';

  BUS_CD_M_OPR.Close;
  BUS_CD_M_OPR.Data := dmGeral.PCP_CD_M_OPR.DataRequest(VarArrayOf([8,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));
  BUS_CD_M_OPR.Open;

  if not BUS_CD_M_OPR.IsEmpty then
     begin
       txtUltOPGerada.Text := BUS_CD_M_OPR.FieldByName('num_lote').AsString;
       txtQtdPedUltOp.Text := inttostr(BUS_CD_M_OPR_PED.RecordCount);
     end;

end;

procedure TPCP_FM_M_OPR.cbbAlmoxarifadoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusAlmox(1,'');
  cbbAlmoxarifado.DropDown;
end;

procedure OpenForm(FClass: TFormClass; var Instance);
begin
  if Assigned(TForm(Instance)) then begin
	 TForm(Instance).SetFocus;
	 TForm(Instance).WindowState := wsMaximized;
	 TForm(Instance).BringToFront;
  end else
	 Application.CreateForm(FClass, Instance);
end;

end.
