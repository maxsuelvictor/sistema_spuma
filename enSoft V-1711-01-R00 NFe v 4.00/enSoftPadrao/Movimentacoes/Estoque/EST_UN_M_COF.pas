unit EST_UN_M_COF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, vcl.wwdbigrd, JvDBControls,
  JvExMask, JvToolEdit, vcl.wwdblook, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList,
  Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, vcl.wwdbgrid, Vcl.ExtCtrls,
  Datasnap.DBClient, JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, frxExportXLS, frxClass, frxExportPDF,
  frxDBSet, Vcl.ComCtrls, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TEST_FM_M_COF = class(TPAD_FM_X_PAD)
    cbbLocalizacao: TwwDBLookupCombo;
    gbItens: TGroupBox;
    pnItens: TPanel;
    lblQuantidade: TLabel;
    txtItemDescricao: TDBText;
    txtUnd: TDBText;
    lblUnd: TLabel;
    txtQtde: TDBEdit;
    btn_Add_Itens: TBitBtn;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    lblLocalizacao: TLabel;
    lblPeriodo: TLabel;
    lblAte: TLabel;
    txtObservacao: TDBMemo;
    Label1: TLabel;
    lblItem: TLabel;
    lblDescricaoItem: TLabel;
    dsItens: TwwDataSource;
    cbbTamanho: TwwDBLookupCombo;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    txtNroLote: TDBEdit;
    Label2: TLabel;
    Label5: TLabel;
    dpkDataIni: TJvDBDateEdit;
    dpkDataFim: TJvDBDateEdit;
    cbbAlmoxarifado: TwwDBLookupCombo;
    ClientDataSet1: TClientDataSet;
    Label3: TLabel;
    txtVlrCusto: TDBEdit;
    Label4: TLabel;
    txtDiferenca: TDBEdit;
    Button1: TButton;
    btnImprimir: TBitBtn;
    EST_PD_M_CTE: TfrxPDFExport;
    EST_XL_M_CTE: TfrxXLSExport;
    EST_DB_M_CTE_ITE: TfrxDBDataset;
    EST_DB_M_CTE: TfrxDBDataset;
    EST_FR_M_CTE: TfrxReport;
    chkCorrigirCustoMed: TDBCheckBox;
    pnlDtaVenc: TPanel;
    txtDtaVenc: TJvDBDateEdit;
    Label6: TLabel;
    btnCarDesDados: TButton;
    pnlPb: TPanel;
    txtPb: TLabel;
    pb: TProgressBar;
    pmImpDescReg: TPopupMenu;
    btnCarregarDados: TMenuItem;
    btnDescarregarDados: TMenuItem;
    txtBuscaItem: TJvDBComboEdit;
    procedure btnFiltroClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbAlmoxarifadoEnter(Sender: TObject);
    procedure cbbLocalizacaoEnter(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure txtNroLoteExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure cbbLocalizacaoExit(Sender: TObject);
    procedure dpkDataIniExit(Sender: TObject);
    procedure dpkDataFimExit(Sender: TObject);
    procedure txtVlrCustoExit(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure rgCteTipoClick(Sender: TObject);
    procedure rgCteTipoEnter(Sender: TObject);
    procedure btnAtualizaContClick(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure grdItensEnter(Sender: TObject);
    procedure grdItensExit(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtNroLoteEnter(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnZerarEstoqueClick(Sender: TObject);
    procedure chkCorrigirCustoMedClick(Sender: TObject);
    procedure txtDtaVencExit(Sender: TObject);
    procedure cbbAlmoxarifadoExit(Sender: TObject);
    procedure txtQtdeEnter(Sender: TObject);
    procedure txtBuscaItemEnter(Sender: TObject);
    procedure btnCarregarDadosClick(Sender: TObject);
    procedure btnDescarregarDadosClick(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Atualizar_xBusca;
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    procedure AcoesIniciais;
    function  VerifLote: Boolean;
    procedure PreencItensPorLoc;
    procedure PreencItensPorPer;
    procedure AbrirBuscas;
    procedure AtualizarContagem;
    procedure PassarCdsAnterior;
    procedure TesteReport(fastreport: TfrxReport; memoa, memob: string; teste: Boolean);
    function  ExisteItemComNroLot: Boolean;
    function  ExisteItemNaoContado: Boolean;
    procedure DescarregarContagem;
    procedure ImportarRegistros;
    var
      xbusca_item: String;
      xCteTipoAnt: integer;
      xCdsItensAntCteIte:  TClientDataSet;
      telaPsqIte,EventoKeyDown:Boolean;
  public
    { Public declarations }
  end;

var
  EST_FM_M_COF: TEST_FM_M_COF;

implementation

{$R *.dfm}

uses uDmOff,uProxy,UApplayClassProxy, EST_RN_M_COF, PSQ_UN_X_ITE, enConstantes, enFunc,
  PSQ_UN_X_ITE_OFF, uDmGeral;

procedure TEST_FM_M_COF.AbrirBuscas;
begin

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     begin
       dmOff.BusAlmox(1,'%');
     end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
     begin
       dmOff.BusCor(1,'%');
     end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
     begin
       dmOff.BusTamanho(1,'%');
     end;
end;

procedure TEST_FM_M_COF.acAdicionaExecute(Sender: TObject);
begin

  VerificarDadosBanco;
  dmOff.BusFuncionario(0,IntToStr(xFuncionario));


  AcoesIniciais;

  chkCorrigirCustoMed.onClick := nil;

  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmOff.EST_CD_M_CTE);

  HabilDesabCampos(true,clWindow);

  pnItens.Enabled := false;

  //PassarCdsAnterior;
  rgCteTipoClick(self);

  //btnAtualizaCont.Enabled := false;
  btnImprimir.Enabled := false;
 // btnZerarEstoque.Enabled := false;

  txtQtde.Enabled := true;
  txtQtde.Color   := clWhite;

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean then
     begin
       txtNroLote.color   := clWhite;
       txtNroLote.Enabled := true;
     end;

  chkCorrigirCustoMed.onClick :=
    chkCorrigirCustoMedClick;

  if cbbAlmoxarifado.CanFocus then
     cbbAlmoxarifado.SetFocus
  else
     txtObservacao.SetFocus;

end;

procedure TEST_FM_M_COF.acAlterarExecute(Sender: TObject);
begin
  try
  VerificarDadosBanco;
  dmOff.BusFuncionario(0,IntToStr(xFuncionario));
  chkCorrigirCustoMed.onClick := nil;

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmOff.EST_CD_M_CTE) then
     begin
       inherited;

       chkCorrigirCustoMed.onClick :=
       chkCorrigirCustoMedClick;

       pnItens.Enabled := false;

       HabilDesabCampos(false,$00DADADA);

       rgCteTipoClick(self);

       txtQtde.Enabled := true;
       txtQtde.Color   := clWhite;
       if dmOff.EST_CD_M_CTE.FieldByName('corrigir_custo_medio').AsBoolean then
          begin
            txtQtde.Enabled := false;
            txtQtde.Color   := $00DADADA;
          end;

       if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean then
           begin
             txtNroLote.color   := clWhite;
             txtNroLote.Enabled := true;
             if chkCorrigirCustoMed.Checked then
                begin
                  txtNroLote.color   := $00DADADA;
                  txtNroLote.Enabled := false;
                end;
           end;

       txtObservacao.SetFocus;
       //btnAtualizaCont.Enabled := false;
       btnImprimir.Enabled := false;
       //btnZerarEstoque.Enabled := false;

       PassarCdsAnterior;
    end;
  finally
    chkCorrigirCustoMed.onClick :=
    chkCorrigirCustoMedClick;

  end;
end;

procedure TEST_FM_M_COF.acCancelarExecute(Sender: TObject);
begin
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmOff.EST_CD_M_CTE) then
      begin
        inherited;
        dbGrid.SetFocus;
       // btnAtualizaCont.Enabled := true;
        btnImprimir.Enabled := true;
       { if dmOff.BUS_CD_C_FUN.FieldByName('seg_habilitar_seg').AsBoolean and
           dmOff.BUS_CD_C_FUN.FieldByName('SEG_ZERAR_EST').AsBoolean then
          begin
           btnZerarEstoque.Enabled := true;
          end;}
      end
   else
      begin
        txtObservacao.SetFocus;
      end;
end;

procedure TEST_FM_M_COF.acExcluirExecute(Sender: TObject);
begin
 { if EST_RN_M_CTE.EST_CD_M_CTE_TesPermExclusao  then
     begin
       inherited;
       Botoes(dso.DataSet, TAction(Sender).Tag,dmOff.EST_CD_M_CTE);
     end; }
end;

procedure TEST_FM_M_COF.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin

  //dmGeral.EST_CD_M_CTE.ApplyUpdates(0);
  //abort;
  EST_RN_M_COF.EST_CD_M_CTE_OutrasValidacoes;


  if EST_RN_M_COF.EST_CD_M_CTE_TesCampos then
     begin
        if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
             codigo := dmOff.EST_CD_M_CTE.FieldByName('ID_CONTROLE').AsString;

             DmOff.Grava(dmOff.EST_CD_M_CTE);

             inherited;
             dmOff.EST_CD_M_CTE.Close;
             dmOff.EST_CD_M_CTE.Data :=
             dmOff.EST_CD_M_CTE.DataRequest(
                     VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, codigo]));

             // btnAtualizaCont.Enabled := true;
              btnImprimir.Enabled := true;
             { if dmOff.BUS_CD_C_FUN.FieldByName('seg_habilitar_seg').AsBoolean and
                 dmOff.BUS_CD_C_FUN.FieldByName('SEG_ZERAR_EST').AsBoolean then
                begin
                 btnZerarEstoque.Enabled := true;
                end;  }
           end
        else
           begin
             if txtObservacao.CanFocus then
                txtObservacao.SetFocus;
           end;
     end
  else
     begin
       if txtObservacao.CanFocus then
          txtObservacao.SetFocus;
     end;
end;

procedure TEST_FM_M_COF.AcoesIniciais;
begin

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_ent').AsInteger > 0 then
     begin

       dmOff.BusTipoEstoque(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_ent').AsString);
       if not dmOff.BUS_CD_C_TME.IsEmpty then
         begin
           if dmOff.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger <> 0 then
              begin
                ShowMessage('Tipo de movimento de estoque "entrada" para a contagem não foi encontrado.');
                abort;
              end;
            if (not dmOff.BUS_CD_C_TME.FieldByName('ESTO_MOVIMENTA').AsBoolean) then
               begin
                ShowMessage('Tipo de movimento de estoque "entrada" para a contagem que está nos parâmetros não movimenta estoque.');
                abort;
               end;
         end;
     end
  else
     begin
       ShowMessage('Tipo de movimento de estoque "entrada" não foi encontrado nos parâmetros.');
       abort;
     end;


  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_sai').AsInteger > 0 then
     begin
       dmOff.BusTipoEstoque(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_sai').AsString);
        if not dmOff.BUS_CD_C_TME.IsEmpty then
         begin
           if dmOff.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger <> 1 then
              begin
                ShowMessage('Tipo de movimento de estoque "saída" para a contagem não foi encontrado.');
                abort;
              end;
           if not dmOff.BUS_CD_C_TME.FieldByName('ESTO_MOVIMENTA').AsBoolean then
              begin
                ShowMessage('Tipo de movimento de estoque "saída" para a contagem que está nos parâmetros não movimenta estoque.');
                abort;
              end;
         end;

     end
  else
     begin
       ShowMessage('Tipo de movimento de estoque "saída" não foi encontrado nos parâmetros.');
       abort;
     end;


  
end;

procedure TEST_FM_M_COF.AtualizarContagem;
var
   codigo: String;
begin


   //dmGeral.EST_CD_M_CTE_ITE.Filtered := true;
   //dmGeral.EST_CD_M_CTE_ITE.Filter :=   'TIPO_DIFERENCA = 1 OR TIPO_DIFERENCA = 2 ';
   //showmessage(inttostr(dmGeral.EST_CD_M_CTE_ITE.recordcount));
   //dmGeral.EST_CD_M_CTE_ITE.First;

   try
     Screen.Cursor := crHourGlass;

   dmOff.EST_CD_M_CTE.Edit;
   dmOff.EST_CD_M_CTE.FieldByName('DTA_MOVIMENTO').AsDateTime := xDataSis;
   dmOff.EST_CD_M_CTE.FieldByName('STATUS').AsInteger := 1;

   codigo := dmOff.EST_CD_M_CTE.FieldByName('ID_CONTROLE').AsString;

   DmOff.Grava(dmOff.EST_CD_M_CTE);

   inherited;
   dmOff.EST_CD_M_CTE.Close;
   dmOff.EST_CD_M_CTE.Data :=
   dmOff.EST_CD_M_CTE.DataRequest(
           VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, codigo]));

  //  btnAtualizaCont.Enabled := true;
   finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TEST_FM_M_COF.Atualizar_xBusca;
begin
   if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end
   else
   if xbusca_item = 'ID_ITEM' then
      begin
        lblItem.Caption := '<F7> Cód. fábrica';
        xbusca_item := 'COD_FABRICA';
      end
   else if xbusca_item = 'COD_FABRICA' then
      begin
        lblItem.Caption := '<F7> Cód. barra';
        xbusca_item := 'COD_BARRA';
      end
   else if xbusca_item = 'COD_BARRA' then
      begin
        lblItem.Caption := '<F7> Cód. item';
        xbusca_item := 'ID_ITEM';
      end;
end;

procedure TEST_FM_M_COF.btnImprimirClick(Sender: TObject);
var
  codigo, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
inherited;
if not dmOff.EST_CD_M_CTE.IsEmpty then
  begin
    PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
    if FileExists(PathImg) then
      begin
        LogoEmpresa := TfrxPictureView(EST_FR_M_CTE.FindObject('imgEmpresa1'));
        if Assigned(LogoEmpresa) then
          begin
            LogoEmpresa.Picture.LoadFromFile(PathImg);
          end;
      end;

    if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_lote_na_entrada').AsBoolean then
      dmOff.EST_CD_M_CTE_ITE.IndexFieldNames := 'num_lote'
    else
      dmOff.EST_CD_M_CTE_ITE.IndexFieldNames := 'int_nomeite';

    //dmOff.BusCodigoRevListMestre(true,false,EST_FR_M_CTE.Name,xCodLme,xRevLme,nil);
   // EST_FR_M_CTE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
    EST_FR_M_CTE.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);

    TesteReport(EST_FR_M_CTE,'memo11','memo22',dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean);
    TesteReport(EST_FR_M_CTE,'memo16','memo23',dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean);
    TesteReport(EST_FR_M_CTE,'memo17','memo24',dmGeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_lote_na_entrada').AsBoolean);

    EST_FR_M_CTE.PrepareReport();
    EST_FR_M_CTE.ShowReport();
  end
else
  begin
    ShowMessage('Nenhum registro encontrado!');
    exit;
  end;
end;

procedure TEST_FM_M_COF.btnZerarEstoqueClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;

  {  if (dmOff.CAD_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_ent').AsString = '') or
       (dmOff.CAD_CD_C_PAR_CTR.FieldByName('cte_tipo_estoque_sai').AsString = '') then
      begin
        ShowMessage('Deve ser preenchido os campos do Tipo de Mov. Estoque na tela de parâmetros na aba "Estoque" no bloco "Contagem de Estoque". ');
        exit;
      end;

   dmOff.BUS_CD_M_CTE.Close;
   dmOff.BUS_CD_M_CTE.Data :=
   dmOff.BUS_CD_M_CTE.DataRequest(
           VarArrayOf([92, dmOff.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));

   if not dmGeral.BUS_CD_M_CTE.IsEmpty then
     begin
       ShowMessage('Há registros de contagem que devem ser atualizadas.');
       dmOff.BUS_CD_M_CTE.Close;
       exit;
     end;
    dmOff.BUS_CD_M_CTE.Close;




   if MessageDlg('Deseja realmente zerar estoque?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        Screen.Cursor := crHourGlass;
        SMPrincipal := TSMClient.Create(dmOff.Conexao.DBXConnection);
        try
          SMPrincipal. enZerarContagem(dmOff.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString);
          ShowMessage('Estoque zerado com sucesso.');
        finally
          Screen.Cursor := crDefault;
          FreeAndNil(SMPrincipal);
        end;
     end; }
end;

procedure TEST_FM_M_COF.btnAtualizaContClick(Sender: TObject);
begin
  inherited;
  if dmOff.EST_CD_M_CTE.FieldByName('STATUS').AsInteger = 1 then
     begin
       ShowMessage('Esta contagem já foi atualizada.');
       abort;
     end;

  if MessageDlg('Confirma atualização?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       AtualizarContagem;
     end;
end;

procedure TEST_FM_M_COF.btnCarregarDadosClick(Sender: TObject);
begin
  inherited;
   dmOff.BUS_CD_M_CTE.Close;
   dmOff.BUS_CD_M_CTE.Data :=
      dmOff.BUS_CD_M_CTE.DataRequest(
              VarArrayOf([100,'']));

  if not dmOff.BUS_CD_M_CTE.IsEmpty then
    begin
        ShowMessage('Existem contagens a serem descarregados.');
        exit;
    end;

   pnlPb.Visible := true;
   pnlPb.Top := 222;
   pnlPb.Left := 95;
   ImportarRegistros;
   pnlPb.Visible := false;
end;



procedure TEST_FM_M_COF.ImportarRegistros;
var
  msg,xCondCliente:String;
  i:integer;
begin
   pb.Min :=0;
   pb.Max := 19;
   pb.Step := 1;
   pb.Position := 0;


    txtPb.Caption := 'Deletando registros do banco.';
    Application.ProcessMessages;
    if dmOff.LimparBanco(msg)<>1 then
      begin
        ShowMessage(msg);
        exit;
      end;



       txtPb.Caption := 'Importando registros de funcionario';
       Application.ProcessMessages;
       if dmOff.ImpFuncionario(msg)=2 then
          begin
            ShowMessage(msg);
            exit;
          end;

       txtPb.Caption := 'Importando registros de cidades';
       Application.ProcessMessages;
       if dmOff.ImpCidade(msg)=2 then
          begin
            ShowMessage(msg);
            exit;
          end;


        pb.Position := 1;
        txtPb.Caption := 'Importando registros de região';
        Application.ProcessMessages;
        if dmOff.ImpRegiao(msg)=2 then
          begin
            ShowMessage(msg);
            exit;
          end;

         pb.Position := 2;
         txtPb.Caption := 'Importando registros de perfil';
         Application.ProcessMessages;
         if dmOff.ImpPerfil(msg)=2 then
          begin
             ShowMessage(msg);
             exit;
          end;

        {  pb.Position := 3;
          txtPb.Caption := 'Importando registros de clientes';
          Application.ProcessMessages;
          if dmOff.ImpCliente(msg)=2 then
          begin
             ShowMessage(msg);
             exit;
          end; }

         pb.Position := 4;
         txtPb.Caption := 'Importando registros de condição pagamento';
         Application.ProcessMessages;
         if dmOff.ImpCondPgto(msg)=2 then
            begin
               ShowMessage(msg);
               exit;
            end;

         pb.Position := 5;
         txtPb.Caption := 'Importando registros de forma de pagamento';
         Application.ProcessMessages;
          if dmOff.ImpFormaPgto(msg)=2 then
           begin
              ShowMessage(msg);
              exit;
           end;


         pb.Position := 6;
         txtPb.Caption := 'Importando registros de tipo mov. estoque';
         Application.ProcessMessages;
         if dmOff.ImpTipoMovEstoque(msg)=2 then
           begin
             ShowMessage(msg);
             exit;
           end;

         { pb.Position := 7;
          txtPrg.Caption := 'Importando registros de títulos';
          Application.ProcessMessages;
          if dmOff.ImpTituloRec(msg,xCondCliente)= 2 then
            begin
               ShowMessage(msg);
               exit;
            end;}

          {   pb.Position := 8;
             txtPb.Caption := 'Importando registros de tributos';
             Application.ProcessMessages;
            if dmOff.ImpTributo(msg)=2 then
              begin
                ShowMessage(msg);
                exit;
              end; }


            pb.Position := 9;
            txtPb.Caption := 'Importando registro de unidades';
            Application.ProcessMessages;
            if dmOff.ImpUnidade(msg)=2 then
              begin
                ShowMessage(msg);
                exit;
              end;

            pb.Position := 10;
            txtPb.Caption := 'Importando os registros de grupos';
            Application.ProcessMessages;
             if dmOff.ImpGrupo(msg)=2 then
              begin
                 ShowMessage(msg);
                 exit;
              end;


            pb.Position := 11;
            txtPb.Caption := 'Importando os registros de familias';
            Application.ProcessMessages;
            if dmOff.ImpFamilia(msg)=2 then
              begin
                 ShowMessage(msg);
                 exit;
              end;


            pb.Position := 12;
            txtPb.Caption := 'Importando os registros de fornecedores';
            Application.ProcessMessages;
            if dmOff.ImpFornecedor(msg)=2 then
              begin
                 ShowMessage(msg);
                 exit;
              end;

             pb.Position := 13;
             txtPb.Caption := 'Importando os registros de itens';
             Application.ProcessMessages;
             if dmOff.ImpItens(msg)=2 then
              begin
                 ShowMessage(msg);
                 exit;
              end;



            pb.Position := 14;
            txtPb.Caption := 'Importando os registros de cores';
            Application.ProcessMessages;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
               begin
                  if dmOff.ImpCor(msg)=2 then
                    begin
                       ShowMessage(msg);
                       exit;
                    end;
               end;


              pb.Position := 15;
              txtPb.Caption := 'Importando os registros de tamanhos';
              Application.ProcessMessages;
              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
               begin
                  if dmOff.ImpTamanho(msg)=2 then
                    begin
                       ShowMessage(msg);
                       exit;
                    end;
               end;

              pb.Position := 16;
              txtPb.Caption := 'Importando os registros de almoxarifados';
              Application.ProcessMessages;
              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean then
               begin
                  if dmOff.ImpAlmoxarifado(msg)=2 then
                    begin
                       ShowMessage(msg);
                       exit;
                    end;
               end;


              pb.Position := 17;
              txtPb.Caption := 'Importando os registros de ficha de estoque';
              Application.ProcessMessages;
               if dmOff.ImpFichaEstoque(msg)=2 then
                 begin
                    ShowMessage(msg);
                    exit;
                 end;

              pb.Position := 18;
              txtPb.Caption := 'Importando os registros de ficha de estoque por almoxarifado';
              Application.ProcessMessages;
              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean then
               begin
                 if dmOff.ImpFichaEstoqueAlm(msg)=2 then
                   begin
                      ShowMessage(msg);
                      exit;
                   end;
               end;
            pb.Position := 19;
            txtPb.Caption := 'Registros importados com sucesso.';
            Application.ProcessMessages;
            ShowMessage('Registros importados com sucesso.');


end;



procedure TEST_FM_M_COF.btnDescarregarDadosClick(Sender: TObject);
begin
  inherited;

  dmOff.BUS_CD_M_CTE.Close;
   dmOff.BUS_CD_M_CTE.Data :=
      dmOff.BUS_CD_M_CTE.DataRequest(
              VarArrayOf([100,'']));

  if dmOff.BUS_CD_M_CTE.IsEmpty then
    begin
        ShowMessage('Não há contagens a serem descarregados.');
        exit;
    end;

   try
     dmGeral.EST_CD_M_CTE_ITE.BeforePost := nil;
     pnlPb.Visible := true;
     pnlPb.Top := 222;
     pnlPb.Left := 95;
     DescarregarContagem;
   finally
      pnlPb.Visible := false;
      dmGeral.EST_CD_M_CTE_ITE.BeforePost :=  dmGeral.EST_CD_M_CTE_ITEBeforePost;
   end;


end;




procedure TEST_FM_M_COF.DescarregarContagem;
var
  SMPrincipal : TSMClient;
  id_contagem,id_seq_ite:Integer;
  qtdePedido,qtdePedExc,i:integer;
begin
      txtPb.Caption :='';
      dmGeral.EST_CD_M_CTE.Close;
      dmGeral.EST_CD_M_CTE.Data :=
      dmGeral.EST_CD_M_CTE.DataRequest(VarArrayOf([0,'']));

      dmOff.EST_CD_M_CTE.Close;
      dmOff.EST_CD_M_CTE.Data :=
      dmOff.EST_CD_M_CTE.DataRequest(VarArrayOf([100,'']));




      qtdePedido := dmOff.EST_CD_M_CTE.RecordCount;

      pb.Min :=0;
      pb.Max := qtdePedido;
      pb.Step := 1;
      pb.Position := 0;
      i:=0;

      txtPb.Caption := 'Descarregando contagens no banco principal.';
      Application.ProcessMessages;




      while not dmOff.EST_CD_M_CTE.IsEmpty do
        begin
           dmGeral.EST_CD_M_CTE.Insert;
           dmGeral.EST_CD_M_CTE.FieldByName('ID_CONTROLE').AsInteger :=
                dmGeral.BuscarSeq('EST_TB_M_CTE');

           dmGeral.EST_CD_M_CTE.FieldByName('OFFLINE').AsBoolean := true;
           dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsInteger :=
                dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsInteger;

           dmGeral.EST_CD_M_CTE.FieldByName('DTA_CONTAGEM').AsDateTime := xDataSis;

           dmGeral.EST_CD_M_CTE.FieldByName('PER_INICIAL').AsDateTime :=
                    dmOff.EST_CD_M_CTE.FieldByName('PER_INICIAL').AsDateTime;

            dmGeral.EST_CD_M_CTE.FieldByName('PER_FINAL').AsDateTime :=
                    dmOff.EST_CD_M_CTE.FieldByName('PER_FINAL').AsDateTime;

           dmGeral.EST_CD_M_CTE.FieldByName('STATUS').AsInteger :=
                    dmOff.EST_CD_M_CTE.FieldByName('STATUS').AsInteger;

           dmGeral.EST_CD_M_CTE.FieldByName('CTE_TIPO').AsInteger :=
               dmOff.EST_CD_M_CTE.FieldByName('CTE_TIPO').AsInteger;

            dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').AsInteger :=
               dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').AsInteger;

            dmGeral.EST_CD_M_CTE.FieldByName('LOCALIZACAO').AsString :=
               dmOff.EST_CD_M_CTE.FieldByName('LOCALIZACAO').AsString;

           dmGeral.EST_CD_M_CTE.FieldByName('CORRIGIR_CUSTO_MEDIO').AsBoolean :=
               dmOff.EST_CD_M_CTE.FieldByName('CORRIGIR_CUSTO_MEDIO').AsBoolean;




          {if dmOff.EST_CD_M_CTE_ITE.RecordCount >0 then
             begin
               SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
                try
                   id_seq_ite := SMPrincipal.enChaveNItens('EST_TB_M_CTE_ITE',dmOff.EST_CD_M_CTE_ITE.RecordCount);
                finally
                  FreeAndNil(SMPrincipal);
                end;
             end; }



            dmOff.EST_CD_M_CTE_ITE.First;
             while not dmOff.EST_CD_M_CTE_ITE.Eof do
               begin
                 dmGeral.EST_CD_M_CTE_ITE.Insert;

                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_SEQ_ITEM').AsInteger :=
                                  dmGeral.BuscarSeq('EST_TB_M_CTE_ITE');

                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('tipo_diferenca').AsInteger :=
                       dmOff.EST_CD_M_CTE_ITE.FieldByName('tipo_diferenca').AsInteger;

                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsInteger :=
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsInteger;

                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsInteger :=
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsInteger;

                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsInteger :=
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsInteger;

                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsInteger :=
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsInteger;

                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString :=
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('rua').AsString;

                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString :=
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('prateleira').AsString;

                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString :=
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('escaninho').AsString;

                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsCurrency :=
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsCurrency;

                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('vlr_custo').AsCurrency :=
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('vlr_custo').AsCurrency;

                 dmGeral.EST_CD_M_CTE_ITE.FieldByName('dta_vencimento').AsDateTime :=
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('dta_vencimento').AsDateTime;

                 dmGeral.EST_CD_M_CTE_ITE.Post;
                 dmOff.EST_CD_M_CTE_ITE.Next;
                 inc(id_seq_ite);
               end;
          

           dmGeral.EST_CD_M_CTE.Post;
           dmOff.EST_CD_M_CTE.Delete;

           if dmGeral.EST_CD_M_CTE.ApplyUpdates(0) = 0 then
             begin
              //  ShowMessage('Pedidos foram tranferidos para banco principal com sucesso.');
             end
           else
             begin
             // ShowMessage('Falha ao transferir contagens para banco principal.');
              exit;
             end;

           if dmOff.EST_CD_M_CTE.ApplyUpdates(0) <> 0 then
             begin
               ShowMessage('Falha ao deletar as contagens no banco local.');
               exit;
             end;

           inc(id_contagem);
           inc(i);
           pb.Position := i;
        end;


      txtPb.Caption := 'Contagens foram transferidos para banco principal com sucesso.';
      Application.ProcessMessages;
      ShowMessage('Contagens foram transferidos para banco principal com sucesso.');


end;






procedure TEST_FM_M_COF.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmOff.EST_CD_M_CTE.Close;
    dmOff.EST_CD_M_CTE.Data :=
        dmOff.EST_CD_M_CTE.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TEST_FM_M_COF.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled  := true;

  dmOff.EST_CD_M_CTE_ITE.Insert;
  txtBuscaItem.Enabled := true;
  txtBuscaItem.SetFocus;

end;

procedure TEST_FM_M_COF.Button1Click(Sender: TObject);
begin
  inherited;
 { dmOff.EST_CD_M_CTE.BeforeEdit := nil;
  dmOff.EST_CD_M_CTE.edit;
  dmOff.EST_CD_M_CTE.FieldByName('STATUS').AsInteger := 0;
  dmOff.EST_CD_M_CTE.post;
  dmOff.EST_CD_M_CTE.ApplyUpdates(0);

  dmOff.EST_CD_M_CTE.BeforeEdit := dmOff.EST_CD_M_CTEBeforeEdit; }
end;

procedure TEST_FM_M_COF.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TEST_FM_M_COF.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmOff.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TEST_FM_M_COF.cbbTamanhoExit(Sender: TObject);
var
  id_item, desc,desc_cor, desc_tam, und, id_busca_item, id_cor, id_tamanho,loca_rua,loca_prateleira,loca_escaninho : string;
begin
  inherited;

  dmOff.BUS_CD_C_ITE.Close;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or
     cbbCor.Focused or
     txtBuscaItem.Focused or grdItens.Focused then
     begin
       exit;
     end;


  if trim(dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text) = '' then
     begin
       try
         pnItens.OnExit := nil;
         Showmessage('O campo "Tamanho" deve ser preenchido.');
       finally
         pnItens.OnExit := pnItensExit;
       end;

       cbbTamanho.SetFocus;
       exit;
     end;


  if dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text <> '' then
     begin
       dmOff.BusTamanho(0,dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text);
       if dmOff.BUS_CD_C_TAM.IsEmpty then
          begin

             try
               pnItens.OnExit := nil;
               Showmessage('Tamanho não encontrado.');
             finally
               pnItens.OnExit := pnItensExit;
             end;

            dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text := '';
            cbbTamanho.SetFocus;
            exit;
          end;
       dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').text :=
               dmOff.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;
     end;


  try
  pnItens.onExit := nil;

  if dmOff.EST_CD_M_CTE_ITE.State in [dsInsert] then
     begin
       if (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) {and
          (not dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)} then
           begin
             id_item       := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString;
             id_busca_item := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
             desc          := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString;
             und           := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString;
             id_cor        := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString;
             desc_cor      := dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString;
             id_tamanho    := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString;
             desc_tam      := dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString;
             loca_rua      := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString;
             loca_prateleira := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString;
             loca_escaninho := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString;


             dmOff.EST_CD_M_CTE_ITE.cancel;

             if dmOff.EST_CD_M_CTE.FieldByName('CORRIGIR_CUSTO_MEDIO').AsBoolean then
                begin
                  if dmOff.LocalizarRegItem(dmOff.EST_CD_M_CTE_ITE,EST_FM_M_COF.Name,id_item,id_cor,id_tamanho,
                                               dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,'') then
                     begin

                       try
                         pnItens.OnExit := nil;
                         ShowMessage('Item já inserido na contagem!');
                       finally
                         pnItens.OnExit := pnItensExit;
                       end;

                       btn_Add_Itens.SetFocus;
                       abort;
                     end
                  else
                     begin
                        dmOff.EST_CD_M_CTE_ITE.Insert;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString    := id_tamanho;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString  := loca_rua;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString := loca_escaninho;

                        dmOff.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 0;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat         := 0;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsFloat        := 0;

                        ActiveControl := nil;
                        PostMessage(txtVlrCusto.Handle, WM_SETFOCUS, 0, 0);
                        txtVlrCusto.SetFocus;
                     end;
                end
             else
                begin
                   if (not dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean) and
                                               dmOff.LocalizarRegItem(dmOff.EST_CD_M_CTE_ITE,EST_FM_M_COF.Name,id_item,id_cor,id_tamanho,
                                               dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,'') then
                      begin
                        dmOff.EST_CD_M_CTE_ITE.edit;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat  :=
                                dmOff.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat + 1;
                        dmOff.EST_CD_M_CTE_ITE.post;
                        dmOff.EST_CD_M_CTE_ITE.Insert;
                        btn_Add_Itens.SetFocus;
                        exit;
                      end
                   else
                      begin
                          if (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean = true) then
                            begin
                               dmOff.EST_CD_M_LOT.Data :=
                                       dmOff.EST_CD_M_LOT.DataRequest(VarArrayOf([24,dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,'', id_item,id_cor,id_tamanho,dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').AsString]));
                            end
                          else
                            begin
                               dmOff.EST_CD_M_LOT.Data :=
                                        dmOff.EST_CD_M_LOT.DataRequest(VarArrayOf([24,dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,'',id_item,id_cor,id_tamanho,0]));
                            end;
                         if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean and (not dmOff.EST_CD_M_LOT.IsEmpty)
                              and (not dmOff.LocalizarRegItem(dmOff.EST_CD_M_CTE_ITE,EST_FM_M_COF.Name,id_item,id_cor,id_tamanho,
                                               dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,'')) then
                           begin
                             dmOff.EST_CD_M_LOT.First;
                             while not dmOff.EST_CD_M_LOT.eof do
                               begin
                                 dmOff.EST_CD_M_CTE_ITE.Insert;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString := id_item;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMEITE').AsString := desc;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMEUND').AsString := und;

                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString := id_cor;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString := desc_cor;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString := id_tamanho;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString := desc_tam;

                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString  := loca_rua;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString := loca_escaninho;

                                 dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString :=
                                                        dmOff.EST_CD_M_LOT.FieldByName('NUM_LOTE').AsString;
                                 dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := dmOff.EST_CD_M_CTE_ITEnum_loteChange;

                                 dmOff.EST_CD_M_CTE_ITEcontagem.OnChange := nil;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsString := '';
                                 dmOff.EST_CD_M_CTE_ITEcontagem.OnChange := dmOff.EST_CD_M_CTE_ITEcontagemChange;



                                 dmOff.EST_CD_M_CTE_ITE.Post;
                                 dmOff.EST_CD_M_LOT.Next;
                               end;
                               dmOff.EST_CD_M_CTE_ITE.First;

                               dmOff.EST_CD_M_CTE_ITE.Locate('ID_ITEM;ID_COR;ID_TAMANHO',VarArrayOf([id_item,id_cor,id_tamanho]),[]);

                               if txtQtde.CanFocus then
                                  begin
                                    dmOff.EST_CD_M_CTE_ITE.edit;
                                    txtQtde.Setfocus;
                                  end;

                           end
                        else
                          begin
                            dmOff.EST_CD_M_CTE_ITE.Insert;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString    := id_tamanho;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString  := loca_rua;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString := loca_escaninho;

                            if txtNroLote.CanFocus then
                               begin
                                  ActiveControl := nil;
                                  PostMessage(txtNroLote.Handle, WM_SETFOCUS, 0, 0);
                                  txtNroLote.SetFocus;
                               end
                            else
                               begin
                                  ActiveControl := nil;
                                  PostMessage(txtQtde.Handle, WM_SETFOCUS, 0, 0);
                                  txtQtde.SetFocus;
                               end;
                          end;
                      end;
                end;
           end;
     end;

  finally
     pnItens.OnExit := pnItensExit;
  end;
end;

procedure TEST_FM_M_COF.chkCorrigirCustoMedClick(Sender: TObject);
begin
  inherited;

  if (btnCancelar.Enabled) and (dmOff.EST_CD_M_CTE.FieldByName('status').AsInteger = 0) then
     begin
        dmOff.EST_CD_M_CTE_ITE.Cancel;
        if not dmOff.EST_CD_M_CTE_ITE.IsEmpty then
           begin
             dmOff.EST_CD_M_CTE.Cancel;
             dmOff.EST_CD_M_CTE.edit;
             ShowMessage('É preciso que os itens inserido sejam apagados!');
             abort;
           end;

        txtQtde.Enabled := true;
        txtQtde.Color   := clWhite;
        if chkCorrigirCustoMed.Checked then
           begin
             txtQtde.Enabled := false;
             txtQtde.Color   := $00DADADA;
           end;

        if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean then
           begin
             txtNroLote.color   := clWhite;
             txtNroLote.Enabled := true;
             if chkCorrigirCustoMed.Checked then
                begin
                  txtNroLote.color   := $00DADADA;
                  txtNroLote.Enabled := false;
                end;
           end;
     end;
end;

procedure TEST_FM_M_COF.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if (dmOff.EST_CD_M_CTE.FieldByName('STATUS').Value = 1) then
      Afont.Color := clHotLight;
end;

procedure TEST_FM_M_COF.dpkDataFimExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  PreencItensPorPer;
end;

procedure TEST_FM_M_COF.dpkDataIniExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;
  PreencItensPorPer;
end;

function TEST_FM_M_COF.ExisteItemComNroLot: Boolean;
begin
  result := false;

  dmOff.EST_CD_M_CTE_ITE.Cancel;
  dmOff.EST_CD_M_CTE_ITE.First;
  while not dmOff.EST_CD_M_CTE_ITE.eof do
     begin
       if trim(dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) <> '' then
          begin
            result := true;
            dmOff.EST_CD_M_CTE_ITE.Last;
          end;
       dmOff.EST_CD_M_CTE_ITE.Next;
     end;
  dmOff.EST_CD_M_CTE_ITE.First;
end;

function TEST_FM_M_COF.ExisteItemNaoContado: Boolean;
begin
end;

procedure TEST_FM_M_COF.cbbAlmoxarifadoEnter(Sender: TObject);
begin
  inherited;
  dmOff.BusAlmox(1,'%');;
  cbbAlmoxarifado.DropDown;
end;

procedure TEST_FM_M_COF.cbbAlmoxarifadoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (trim(cbbAlmoxarifado.Text) ='') then
    begin
      ShowMessage('Almoxarifado deve ser preenchido.');
      cbbAlmoxarifado.SetFocus;
      exit;
    end;

  dmOff.BusAlmox(0,dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text);
  if dmOff.BUS_CD_C_ALM.IsEmpty then
     begin
       Showmessage('Almoxarifado não encontrado.');
       dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text := '';
       cbbAlmoxarifado.SetFocus;
       exit;
     end;

end;

procedure TEST_FM_M_COF.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmOff.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TEST_FM_M_COF.cbbCorExit(Sender: TObject);
var
  id_item, desc, desc_cor, und, id_busca_item, id_cor,loca_rua,loca_prateleira,loca_escaninho : string;
begin
  inherited;

  dmOff.BUS_CD_C_ITE.Close;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or
     txtBuscaItem.Focused or grdItens.Focused then
     begin
       exit;
     end;

  if trim(dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text) = '' then
     begin
       try
         pnItens.OnExit := nil;
         Showmessage('O campo "Cor" deve ser preenchido.');
       finally
         pnItens.OnExit := pnItensExit;
       end;

       cbbCor.SetFocus;
       exit;
     end;

  dmOff.BusCor(0,dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text);
  if dmOff.BUS_CD_C_COR.IsEmpty then
     begin

       try
         pnItens.OnExit := nil;
         Showmessage('Cor não encontrada.');
       finally
         pnItens.OnExit := pnItensExit;
       end;

       dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;
  dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').text :=
          dmOff.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;

  try
  pnItens.onExit := nil;

  if dmOff.EST_CD_M_CTE_ITE.State in [dsInsert] then
     begin
       if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) {and
          (not dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)} then
           begin
             id_item       := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString;
             id_busca_item := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
             desc          := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString;
             und           := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString;
             id_cor        := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString;
             desc_cor      := dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString;

             loca_rua := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString;
             loca_prateleira := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString;
             loca_escaninho := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString;

             dmOff.EST_CD_M_CTE_ITE.cancel;

             if dmOff.EST_CD_M_CTE.FieldByName('CORRIGIR_CUSTO_MEDIO').AsBoolean then
                begin
                  if dmOff.LocalizarRegItem(dmOff.EST_CD_M_CTE_ITE,EST_FM_M_COF.Name,id_item,id_cor,'',
                                               dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,'') then
                     begin
                       try
                         pnItens.OnExit := nil;
                         ShowMessage('Item já inserido na contagem!');
                       finally
                         pnItens.OnExit := pnItensExit;
                       end;


                       btn_Add_Itens.SetFocus;
                       abort;
                     end
                  else
                     begin
                        dmOff.EST_CD_M_CTE_ITE.Insert;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString       := loca_rua;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString := loca_escaninho;


                        dmOff.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 0;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat         := 0;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsFloat        := 0;


                        if cbbTamanho.CanFocus then
                           begin
                             ActiveControl := nil;
                             PostMessage(cbbTamanho.Handle, WM_SETFOCUS, 0, 0);
                             cbbTamanho.SetFocus;
                           end
                        else
                           begin
                             ActiveControl := nil;
                             PostMessage(txtVlrCusto.Handle, WM_SETFOCUS, 0, 0);
                             txtVlrCusto.SetFocus;
                           end;
                     end;
                end
             else
                begin
                   if (not dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean) and dmOff.LocalizarRegItem(dmOff.EST_CD_M_CTE_ITE,EST_FM_M_COF.Name,id_item,id_cor,'',
                                               dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,'') then
                      begin
                        dmOff.EST_CD_M_CTE_ITE.edit;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat  :=
                                dmOff.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat + 1;
                        dmOff.EST_CD_M_CTE_ITE.post;
                        dmOff.EST_CD_M_CTE_ITE.Insert;
                        btn_Add_Itens.SetFocus;
                        exit;
                      end
                   else
                      begin
                         if (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean = true) then
                            begin
                               dmOff.EST_CD_M_LOT.Data :=
                                       dmOff.EST_CD_M_LOT.DataRequest(VarArrayOf([24,dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,'',id_item,id_cor,
                                           0,dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').AsString]));
                            end
                          else
                            begin
                               dmOff.EST_CD_M_LOT.Data :=
                                        dmOff.EST_CD_M_LOT.DataRequest(VarArrayOf([24,dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,'', id_item,id_cor,0,0]));
                            end;
                         if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean and (not dmOff.EST_CD_M_LOT.IsEmpty) and
                                    (not dmOff.LocalizarRegItem(dmOff.EST_CD_M_CTE_ITE,EST_FM_M_COF.Name,id_item,id_cor,'',
                                                dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,'')) then
                           begin
                             dmOff.EST_CD_M_LOT.First;
                             while not dmOff.EST_CD_M_LOT.eof do
                               begin
                                 dmOff.EST_CD_M_CTE_ITE.Insert;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString := id_item;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMEITE').AsString := desc;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMEUND').AsString := und;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString := id_cor;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString := desc_cor;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString       := loca_rua;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString := loca_escaninho;


                                 dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString :=
                                                        dmOff.EST_CD_M_LOT.FieldByName('NUM_LOTE').AsString;
                                 dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := dmOff.EST_CD_M_CTE_ITEnum_loteChange;

                                 dmOff.EST_CD_M_CTE_ITEcontagem.OnChange := nil;
                                 dmOff.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsString := '';
                                 dmOff.EST_CD_M_CTE_ITEcontagem.OnChange := dmOff.EST_CD_M_CTE_ITEcontagemChange;


                                 dmOff.EST_CD_M_CTE_ITE.Post;
                                 dmOff.EST_CD_M_LOT.Next;
                               end;
                               dmOff.EST_CD_M_CTE_ITE.First;


                               dmOff.EST_CD_M_CTE_ITE.Locate('ID_ITEM;ID_COR',VarArrayOf([id_item,id_cor]),[]);

                               if txtQtde.CanFocus then
                                  begin
                                    dmOff.EST_CD_M_CTE_ITE.edit;
                                    txtQtde.Setfocus;
                                  end;
                           end
                        else
                          begin
                            dmOff.EST_CD_M_CTE_ITE.Insert;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('int_rua').AsString       := loca_rua;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('int_prateleira').AsString := loca_prateleira;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('int_escaninho').AsString := loca_escaninho;

                            if txtNroLote.CanFocus then
                               begin
                                  ActiveControl := nil;
                                  PostMessage(txtNroLote.Handle, WM_SETFOCUS, 0, 0);
                                  txtNroLote.SetFocus;
                               end
                            else
                               begin
                                  if cbbTamanho.CanFocus then
                                     begin
                                       ActiveControl := nil;
                                       PostMessage(cbbTamanho.Handle, WM_SETFOCUS, 0, 0);
                                       cbbTamanho.SetFocus;
                                     end
                                  else
                                     begin
                                       ActiveControl := nil;
                                       PostMessage(txtQtde.Handle, WM_SETFOCUS, 0, 0);
                                       txtQtde.SetFocus;
                                     end;
                               end;
                          end;
                      end;
                end;
           end;
     end;
  finally
     pnItens.OnExit := pnItensExit;
  end;
end;

procedure TEST_FM_M_COF.cbbLocalizacaoEnter(Sender: TObject);
begin
  inherited;

  dmOff.BusLocItem(dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger);
  cbbLocalizacao.DropDown;
end;

procedure TEST_FM_M_COF.cbbLocalizacaoExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  PreencItensPorLoc;
end;

procedure TEST_FM_M_COF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.EST_CD_M_CTE.Close;
  dmOff.EST_CD_M_CTE.Close;
  FreeAndNil(EST_FM_M_COF);
end;

procedure TEST_FM_M_COF.FormShow(Sender: TObject);
begin
  inherited;




  dmOff.EST_CD_M_CTE.Close;
  dmOff.EST_CD_M_CTE.Data :=
  dmOff.EST_CD_M_CTE.DataRequest(
            VarArrayOf([0, '']));

  dmOff.EST_CD_M_CTE_ITE.IndexFieldNames := 'ID_ITEM';

  AbrirBuscas;

  dmOff.AtualizarGridItens(grdItens,'int_nomeite',11,8);

  cbbPesquisa.ItemIndex := 0;
  cbbPesquisaChange(SELF);
 // AcoesIniciais;
  Atualizar_xBusca;

  dmOff.BusFuncionario(0,IntToStr(xFuncionario));
 { btnZerarEstoque.Enabled := false;
  if dmOff.BUS_CD_C_FUN.FieldByName('seg_habilitar_seg').AsBoolean and
     dmOff.BUS_CD_C_FUN.FieldByName('SEG_ZERAR_EST').AsBoolean then
    begin
     btnZerarEstoque.Enabled := true;
    end; }

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('HAB_VLR_CUSTO_CTE').AsBoolean = true then
    txtVlrCusto.Enabled := true
  else
    txtVlrCusto.Enabled := false;

  if not dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     begin
       cbbAlmoxarifado.Color   := $00DADADA;
       cbbAlmoxarifado.Enabled := false;
     end;

  if not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
     begin
       cbbCor.color   := $00DADADA;
       cbbCor.Enabled := false;
     end;

  if not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
     begin
       cbbTamanho.color   := $00DADADA;
       cbbTamanho.Enabled := false;
     end;

  if not dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean then
     begin
       txtNroLote.color   := $00DADADA;
       txtNroLote.Enabled := false;
     end;

   if not ((dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean=true) and
       (dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean=false))  then
     begin
        grdItens.ColumnByName('dta_vencimento').Visible := false;
     end;

   dmOff.BUS_CD_C_ITE_LOC.Filter := 'ID_EMPRESA='+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;

end;

procedure TEST_FM_M_COF.grdItensEnter(Sender: TObject);
begin
  inherited;
 // EST_FM_M_CTE.KeyPreview := false;
  //grdItens.OnMouseUp := nil;
  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('HAB_VLR_CUSTO_CTE').AsBoolean = true then
    txtVlrCusto.Enabled := true
  else
    txtVlrCusto.Enabled := false;
end;

procedure TEST_FM_M_COF.grdItensExit(Sender: TObject);
begin
  inherited;
 // EST_FM_M_CTE.KeyPreview := true;
 // grdItens.OnMouseUp := grdItensMouseUp;
end;

procedure TEST_FM_M_COF.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  if dmOff.EST_CD_M_CTE_ITE.State in [dsInsert,dsEdit] then
    begin
     try
      dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;
      dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString := '';
      btn_Add_Itens.SetFocus;
     finally
      dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := dmOff.EST_CD_M_CTE_ITEnum_loteChange;
     end;
    end;
  activecontrol := nil;
  try
     grdItensIButton.Enabled := false;
     if dmOff.EST_CD_M_CTE_ITE.IsEmpty then
        begin
          dmOff.EST_CD_M_CTE_ITE.cancel;
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmOff.EST_CD_M_CTE_ITE.Delete;
     dmOff.EST_CD_M_CTE_ITE.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TEST_FM_M_COF.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  if dmOff.EST_CD_M_CTE.FieldByName('CTE_TIPO').AsInteger = 2 then
     begin
        if pnItens.Enabled = false then
           pnItens.Enabled := true;

        dmOff.EST_CD_M_CTE_ITE.cancel;

        if dmOff.EST_CD_M_CTE_ITE.IsEmpty then
           begin
             txtBuscaItem.Enabled := true;
             dmOff.EST_CD_M_CTE_ITE.Append;
             pnItens.Enabled := true;
             txtBuscaItem.SetFocus;
           end
        else
          begin
            txtBuscaItem.Enabled := false;
            dmOff.EST_CD_M_CTE_ITE.Edit;
            pnItens.Enabled := true;
            if dmOff.EST_CD_M_CTE.FieldByName('CORRIGIR_CUSTO_MEDIO').AsBoolean then
               begin
                 if txtVlrCusto.CanFocus then
                    txtVlrCusto.SetFocus;
               end
            else
               if txtQtde.CanFocus then
                  txtQtde.SetFocus;
          end;
     end
  else
     begin
       //if not dmGeral.EST_CD_M_CTE_ITE.IsEmpty then
       //   begin
       //     dmGeral.EST_CD_M_CTE_ITE.edit;
       //   end;
     end;
end;

procedure TEST_FM_M_COF.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  cbbLocalizacao.Color   := Cor;
  cbbLocalizacao.Enabled := Estado;
  dpkDataIni.Color       := cor;
  dpkDataIni.Enabled     := Estado;
  dpkDataFim.Color       := cor;
  dpkDataFim.Enabled     := Estado;
end;




procedure TEST_FM_M_COF.PassarCdsAnterior;
begin

  if xCdsItensAntCteIte <> nil then
     begin
       xCdsItensAntCteIte.Destroy;
       xCdsItensAntCteIte := nil;
     end;

  xCdsItensAntCteIte       := TClientDataSet.Create(self);
  xCdsItensAntCteIte.Data  := dmOff.EST_CD_M_CTE_ITE.Data;
  xCdsItensAntCteIte.GotoCurrent(dmOff.EST_CD_M_CTE_ITE);
end;

procedure TEST_FM_M_COF.pnItensExit(Sender: TObject);
begin
  inherited;

  if (btn_Add_Itens.Focused) or (grdItens.Focused) or
     (cbbCor.Focused) or (cbbTamanho.Focused) or
     (not grdItensIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;
       // dmOff.EST_CD_M_CTE_ITE.Cancel;
        //dmOff.EST_CD_M_CTE_ITE.edit;

        finally
          // pnItens.Enabled := false;
        end;
      end;
end;

procedure TEST_FM_M_COF.PreencItensPorLoc;
var
  lIndex: integer;
  lCond_Item, lCond_Cor, lCond_Tamanho: String;
begin
   if trim(dmOff.EST_CD_M_CTE.FieldByName('LOCALIZACAO').Text) = '' then
      begin
        dpkDataIni.Color   := clWhite;
        dpkDataIni.Enabled := true;

        dpkDataFim.Color   := clWhite;
        dpkDataFim.Enabled := true;

        dmOff.EST_CD_M_CTE.FieldByName('CTE_TIPO').AsInteger := 2;
      end;


   if trim(dmOff.EST_CD_M_CTE.FieldByName('LOCALIZACAO').Text) <> '' then
     begin
        dmOff.EST_CD_M_CTE.FieldByName('CTE_TIPO').AsInteger := 0; // Por Localização

       // dmOff.BusItens(4,dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,dmOff.EST_CD_M_CTE.FieldByName('LOCALIZACAO').Text);
        dmOff.BUS_CD_C_ITE.Close;
        dmOff.BUS_CD_C_ITE.Data :=
        dmOff.BUS_CD_C_ITE.DataRequest(VarArrayOf([4,dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,dmOff.EST_CD_M_CTE.FieldByName('LOCALIZACAO').Text]));


        dmOff.EST_CD_M_CTE.FieldByName('per_inicial').Text := '';
        dmOff.EST_CD_M_CTE.FieldByName('per_final').Text   := '';

        dpkDataIni.Color   := $00DADADA;
        dpkDataIni.Enabled := false;

        dpkDataFim.Color   := $00DADADA;
        dpkDataFim.Enabled := false;


        if not dmOff.EST_CD_M_CTE_ITE.IsEmpty then
           begin
             if MessageDlg('Já existe item lançado nesta contagem.' + #13 +
                           'Deseja continuar para fazer nova contagem?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                   while not dmOff.EST_CD_M_CTE_ITE.eof do
                         dmOff.EST_CD_M_CTE_ITE.Delete;

                end
             else
                begin
                  exit;
                end;
           end;

        { Filtros do EST_CD_M_FES:
            Index 0 - Empresa, Item
            Index 1 - Empresa, Item, Cor
            Index 2 - Empresa, Item, Tamanho
            Index 3 - Empresa, Item, Cor,Tamanho
            Index 4 - empresa, in(item),  in(cores)
            Index 5 - empresa, in(item),  in(tamanho)
            Index 6 - empresa, int(item), in(cor) in(tamanho)
            Index 7 - empresa, in(item)
            }

       // dmOff.BusItens(4,dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,dmOff.EST_CD_M_CTE.FieldByName('LOCALIZACAO').Text);


        dmOff.BUS_CD_C_ITE.Close;
        dmOff.BUS_CD_C_ITE.Data :=
        dmOff.BUS_CD_C_ITE.DataRequest(VarArrayOf([4,dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,dmOff.EST_CD_M_CTE.FieldByName('LOCALIZACAO').Text]));



        if not dmOff.BUS_CD_C_ITE.IsEmpty then
           begin
             if MessageDlg('Confirma importação dos itens desta localização para a contagem?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                   dmOff.BUS_CD_C_ITE.First;
                   while not dmOff.BUS_CD_C_ITE.Eof do
                       begin
                         if dmOff.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsInteger <> 9 then // Se não for item do tipo SERVIÇO.
                            begin
                              lIndex := 7;

                              // busca os itens do pedido
                              if lCond_Item <> '' then
                                 begin
                                   lCond_Item :=
                                   lCond_Item + ',' +''''+ dmOff.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString+'''';
                                 end;
                              if lCond_Item = '' then
                                 begin
                                   lCond_Item :=
                                   lCond_Item +''''+ dmOff.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString+'''';
                                 end;


                            end;
                         dmOff.BUS_CD_C_ITE.Next;
                       end;

                   dmOff.EST_CD_M_FES.Close;
                   dmOff.EST_CD_M_FES.Data :=
                       dmOff.EST_CD_M_FES.DataRequest(VarArrayOf([lIndex, dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text, lCond_Item,'','']));

                   if not dmOff.EST_CD_M_FES.IsEmpty then
                      begin
                        dmOff.EST_CD_M_FES.First;
                        while not dmOff.EST_CD_M_FES.eof do
                           begin
                             dmOff.EST_CD_M_CTE_ITE.Insert;

                             dmOff.EST_CD_M_CTE_ITEid_item.AsInteger    := dmOff.EST_CD_M_FES.FieldByName('ID_ITEM').AsInteger;
                             dmOff.EST_CD_M_CTE_ITEvlr_custo.AsCurrency := 0;

                             if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
                                begin
                                  dmOff.EST_CD_M_CTE_ITEid_cor.text     := dmOff.EST_CD_M_FES.FieldByName('ID_COR').text;
                                  dmOff.BusCor(0,dmOff.EST_CD_M_CTE_ITEid_cor.text);
                                  dmOff.EST_CD_M_CTE_ITEint_nomecor.text     := dmOff.BUS_CD_C_COR.FieldByName('DESCRICAO').text;
                                end;

                             if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
                                begin
                                  dmOff.EST_CD_M_CTE_ITEid_tamanho.text  := dmOff.EST_CD_M_FES.FieldByName('ID_TAMANHO').text;
                                  dmOff.BusTamanho(0,dmOff.EST_CD_M_CTE_ITEid_tamanho.text);
                                  dmOff.EST_CD_M_CTE_ITEint_nometam.text := dmOff.BUS_CD_C_TAM.FieldByName('DESCRICAO').text;
                                end;

                             dmOff.BUS_CD_C_ITE.Locate('ID_ITEM',dmOff.EST_CD_M_CTE_ITEid_item.text,[]);

                             dmOff.EST_CD_M_CTE_ITEint_nomeite.AsString   := dmOff.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
                             dmOff.EST_CD_M_CTE_ITEint_nomeund.AsString   := dmOff.BUS_CD_C_ITE.FieldByName('ID_UND_VENDA').AsString;
                             dmOff.EST_CD_M_CTE_ITEint_tipo_item.AsString := dmOff.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;



                             if xbusca_item = 'ID_ITEM' then
                                begin
                                  dmOff.EST_CD_M_CTE_ITEid_busca_item.AsString := dmOff.EST_CD_M_FES.FieldByName('ID_ITEM').AsString;
                                end
                             else if xbusca_item = 'COD_FABRICA' then
                                begin
                                  dmOff.EST_CD_M_CTE_ITEid_busca_item.AsString := dmOff.BUS_CD_C_ITE.FieldByName('COD_FABRICA').AsString;
                                end
                             else if xbusca_item = 'COD_BARRA' then
                                begin
                                  dmOff.EST_CD_M_CTE_ITEid_busca_item.AsString := dmOff.BUS_CD_C_ITE.FieldByName('COD_BARRA').AsString;
                                end;

                             dmOff.EST_CD_M_CTE_ITE.Post;
                             dmOff.EST_CD_M_FES.Next;
                           end;
                        dmOff.EST_CD_M_CTE_ITE.First;
                        dmOff.EST_CD_M_CTE_ITE.IndexFieldNames := 'ID_ITEM';
                      end;
                   dmOff.EST_CD_M_CTE_ITE.Edit;
                end;
           end;
     end;
end;

procedure TEST_FM_M_COF.PreencItensPorPer;
var
  lIndex: integer;
  lCond_Item, lCond_Cor, lCond_Tamanho: String;
begin

  if (trim(dmOff.EST_CD_M_CTE.FieldByName('per_inicial').Text) <> '') or
     (trim(dmOff.EST_CD_M_CTE.FieldByName('per_final').Text)   <> '') then
     begin
       dmOff.EST_CD_M_CTE.FieldByName('LOCALIZACAO').Text := '';
       cbbLocalizacao.Enabled := false;
       cbbLocalizacao.Color   := $00DADADA;
     end
  else
     begin
       cbbLocalizacao.Enabled := true;
       cbbLocalizacao.Color   := clWhite;
       dmOff.EST_CD_M_CTE.FieldByName('CTE_TIPO').AsInteger := 2; // Livre (qualquer item)
     end;


  if (trim(dmOff.EST_CD_M_CTE.FieldByName('per_inicial').Text) <> '') and
     (trim(dmOff.EST_CD_M_CTE.FieldByName('per_final').Text)   <> '') then
     begin
       if dmOff.EST_CD_M_CTE.FieldByName('per_inicial').AsDateTime >  dmOff.EST_CD_M_CTE.FieldByName('per_final').AsDateTime then
          begin
            ShowMessage('Data inicial não pode ser maior que a data final.');
            exit;
          end;

        if not dmOff.EST_CD_M_CTE_ITE.IsEmpty then
           begin
             if MessageDlg('Já existe item lançado nesta contagem.' + #13 +
                           'Deseja continuar para fazer nova contagem?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                   while not dmOff.EST_CD_M_CTE_ITE.eof do
                         dmOff.EST_CD_M_CTE_ITE.Delete;
                end
             else
                begin
                  exit;
                end;
           end;

        { Filtros do EST_CD_M_FES:
            Index 0 - Empresa, Item
            Index 1 - Empresa, Item, Cor
            Index 2 - Empresa, Item, Tamanho
            Index 3 - Empresa, Item, Cor,Tamanho
            Index 4 - empresa, in(item),  in(cores)
            Index 5 - empresa, in(item),  in(tamanho)
            Index 6 - empresa, int(item), in(cor) in(tamanho)
            Index 7 - empresa, in(item)
            Index 8 = empresa, data_ini, data_fim
            }



       if MessageDlg('Confirma importação dos itens movimentados neste período, para a contagem?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin

             dmOff.EST_CD_M_CTE.FieldByName('CTE_TIPO').AsInteger := 1; // Por período

             dmOff.EST_CD_M_FES.Close;
             dmOff.EST_CD_M_FES.Data :=
                 dmOff.EST_CD_M_FES.DataRequest(VarArrayOf([8, dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text,
                                                                 dmOff.EST_CD_M_CTE.FieldByName('per_inicial').text,
                                                                 dmOff.EST_CD_M_CTE.FieldByName('per_final').text]));

             if not dmOff.EST_CD_M_FES.IsEmpty then
                begin
                  dmOff.EST_CD_M_FES.First;
                  while not dmOff.EST_CD_M_FES.eof do
                     begin
                       dmOff.EST_CD_M_CTE_ITE.Insert;

                       dmOff.EST_CD_M_CTE_ITEid_item.AsInteger    := dmOff.EST_CD_M_FES.FieldByName('ID_ITEM').AsInteger;
                       dmOff.EST_CD_M_CTE_ITEvlr_custo.AsCurrency := 0;


                       if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
                          begin
                            dmOff.EST_CD_M_CTE_ITEid_cor.text     := dmOff.EST_CD_M_FES.FieldByName('ID_COR').text;
                            dmOff.BusCor(0,dmOff.EST_CD_M_CTE_ITEid_cor.text);
                            dmOff.EST_CD_M_CTE_ITEint_nomecor.text     := dmOff.BUS_CD_C_COR.FieldByName('DESCRICAO').text;
                          end;

                       if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
                          begin
                            dmOff.EST_CD_M_CTE_ITEid_tamanho.text  := dmOff.EST_CD_M_FES.FieldByName('ID_TAMANHO').text;
                            dmOff.BusTamanho(0,dmOff.EST_CD_M_CTE_ITEid_tamanho.text);
                            dmOff.EST_CD_M_CTE_ITEint_nometam.text := dmOff.BUS_CD_C_TAM.FieldByName('DESCRICAO').text;
                          end;

                       dmOff.BusItens(0,dmOff.EST_CD_M_FES.FieldByName('ID_ITEM').AsString);

                       dmOff.EST_CD_M_CTE_ITEint_nomeite.AsString   := dmOff.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
                       dmOff.EST_CD_M_CTE_ITEint_nomeund.AsString   := dmOff.BUS_CD_C_ITE.FieldByName('ID_UND_VENDA').AsString;
                       dmOff.EST_CD_M_CTE_ITEint_tipo_item.AsString := dmOff.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString;

                       if xbusca_item = 'ID_ITEM' then
                          begin
                            dmOff.EST_CD_M_CTE_ITEid_busca_item.AsString := dmOff.EST_CD_M_FES.FieldByName('ID_ITEM').AsString;
                          end
                       else if xbusca_item = 'COD_FABRICA' then
                          begin
                            dmOff.EST_CD_M_CTE_ITEid_busca_item.AsString := dmOff.BUS_CD_C_ITE.FieldByName('COD_FABRICA').AsString;
                          end
                       else if xbusca_item = 'COD_BARRA' then
                          begin
                            dmOff.EST_CD_M_CTE_ITEid_busca_item.AsString := dmOff.BUS_CD_C_ITE.FieldByName('COD_BARRA').AsString;
                          end;
                       dmOff.EST_CD_M_CTE_ITE.Post;
                       dmOff.EST_CD_M_FES.Next;
                     end;
                  dmOff.EST_CD_M_CTE_ITE.First;
                  dmOff.EST_CD_M_CTE_ITE.IndexFieldNames := 'ID_ITEM';
                end;
             dmOff.EST_CD_M_CTE_ITE.Edit;
          end;

     end;
end;

procedure TEST_FM_M_COF.rgCteTipoClick(Sender: TObject);
begin
  inherited;
 {  if not dmGeral.EST_CD_M_CTE_ITE.IsEmpty then
      begin
         if MessageDlg('Se continuar, os itens lançados nesta contagem serão apagados.' + #13 +
                       'Confirma a alteração do "Tipo de contagem"?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              dmGeral.EST_CD_M_CTE_ITE.first;
              while not dmGeral.EST_CD_M_CTE_ITE.eof do
                      dmGeral.EST_CD_M_CTE_ITE.Delete;
            end
         else
            begin
              rgCteTipo.OnClick := nil;
              if (not dmGeral.EST_CD_M_CTE.FieldByName('CTE_TIPO').IsNull) then
                 begin
                   rgCteTipo.ItemIndex := xCteTipoAnt;
                 end;
              rgCteTipo.OnClick := rgCteTipoClick;
              abort;
            end;
       end;


  case rgCteTipo.ItemIndex of
    0:
     begin
       dmGeral.EST_CD_M_CTE_ITEcontagem.OnChange := dmGeral.EST_CD_M_CTE_ITEcontagemChange;
       grdItens.FixedCols     := 5;
       grdItens.Options       := [dgEditing,dgAlwaysShowEditor,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap,dgTabExitsOnLastCol];
       btn_Add_Itens.Enabled  := false;
       pnItens.Enabled := false;
       cbbLocalizacao.Enabled := true;
       cbbLocalizacao.Color   := clWhite;
       dpkDataIni.Enabled     := false;
       dpkDataIni.Color       := $00DADADA;
       dmGeral.EST_CD_M_CTE.FieldByName('per_inicial').text := '';
       dpkDataFim.Enabled     := false;
       dpkDataFim.Color       := $00DADADA;
       dmGeral.EST_CD_M_CTE.FieldByName('per_final').text := '';
     end;
    1:
     begin
       dmGeral.EST_CD_M_CTE_ITEcontagem.OnChange := dmGeral.EST_CD_M_CTE_ITEcontagemChange;
       grdItens.FixedCols     := 5;
       grdItens.Options      := [dgEditing,dgAlwaysShowEditor,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap,dgTabExitsOnLastCol];
       btn_Add_Itens.Enabled  := false;
       pnItens.Enabled        := false;
       cbbLocalizacao.Enabled := false;
       cbbLocalizacao.Color   := $00DADADA;
       dmGeral.EST_CD_M_CTE.FieldByName('localizacao').text := '';
       dpkDataIni.Enabled     := true;
       dpkDataIni.Color       := clWhite;
       dpkDataFim.Enabled     := true;
       dpkDataFim.Color       := clWhite;
     end;
    2:
     begin
       dmGeral.EST_CD_M_CTE_ITEcontagem.OnChange := nil;
       grdItens.FixedCols    := 0;
       grdItens.Options      := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgWordWrap];
       btn_Add_Itens.Enabled := true;
       grdItens.FixedCols    := 0;
       dpkDataIni.Enabled := false;
       dpkDataIni.Color   := $00DADADA;
       dpkDataFim.Enabled := false;
       dpkDataFim.Color   := $00DADADA;
       cbbLocalizacao.Enabled := false;
       cbbLocalizacao.Color   := $00DADADA;
       dmGeral.EST_CD_M_CTE.FieldByName('per_inicial').text := '';
       dmGeral.EST_CD_M_CTE.FieldByName('per_final').text := '';
       dmGeral.EST_CD_M_CTE.FieldByName('localizacao').text := '';
     end;
    end;   }
end;



procedure TEST_FM_M_COF.rgCteTipoEnter(Sender: TObject);
begin
  inherited;
//  xCteTipoAnt := rgCteTipo.ItemIndex;
end;

procedure TEST_FM_M_COF.TesteReport(fastreport: TfrxReport; memoa, memob: string; teste: Boolean);
var
memo1,memo2: TfrxmemoView;
begin
  if teste then
    begin
      memo1 := TfrxMemoView (fastreport.FindComponent(memoa));
      memo1.Visible := True;
      memo2 := TfrxMemoView (fastreport.FindComponent(memob));
      memo2.Visible := True;
    end
  else
    begin
      memo1 := TfrxMemoView (fastreport.FindComponent(memoa));
      memo1.Visible := False;
      memo2 := TfrxMemoView (fastreport.FindComponent(memob));
      memo2.Visible := False;
    end;

end;

procedure TEST_FM_M_COF.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE_OFF := TPSQ_FM_X_ITE_OFF.Create(Self);
  telaPsqIte := true;

  PSQ_FM_X_ITE_OFF.ShowModal;
  if not PSQ_FM_X_ITE_OFF.BUS_CD_C_ITE.IsEmpty then
     begin
       dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsInteger :=
          PSQ_FM_X_ITE_OFF.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
          PSQ_FM_X_ITE_OFF.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

       dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').Text :=
          PSQ_FM_X_ITE_OFF.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
  telaPsqIte := false;
  PSQ_FM_X_ITE_OFF.Free;
end;

procedure TEST_FM_M_COF.txtBuscaItemEnter(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('HAB_VLR_CUSTO_CTE').AsBoolean = true then
    txtVlrCusto.Enabled := true
  else
    txtVlrCusto.Enabled := false;
end;

procedure TEST_FM_M_COF.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item,loca_rua,loca_prateleira,loca_escaninho,seq : string;
begin
  inherited;

  if (telaPsqIte = false) then
     begin
  dmOff.BUS_CD_C_ITE.Close;
  seq:= dmOff.EST_CD_M_CTE_ITEid_seq_item.AsString;

  if dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btn_Add_Itens.Focused then
          exit;

       if grdItens.Focused then
          exit;

       if not grdItensIButton.Enabled then
          exit;

       if (txtQtde.Focused) or (cbbCor.Focused) or
          (cbbTamanho.Focused) or (txtNroLote.Focused) then
           begin
             try
               pnItens.OnExit := nil;
               ShowMessage('O campo "Item" deve ser prenchido.');
             finally
               pnItens.OnExit := pnItensExit;
             end;

             txtBuscaItem.SetFocus;
             exit;
           end
       else
           begin
            // pnItens.Enabled := false;
             exit;
           end;
     end
  else
     begin
       if dmOff.EST_CD_M_CTE_ITE.state in [dsBrowse] then
          dmOff.EST_CD_M_CTE_ITE.edit;
     end;


  dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').Text := '';
  dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').Text  := '';

  dmOff.EST_CD_M_CTE_ITE.FieldByName('rua').Text := '';
  dmOff.EST_CD_M_CTE_ITE.FieldByName('prateleira').Text  := '';
  dmOff.EST_CD_M_CTE_ITE.FieldByName('escaninho').Text := '';




  if xbusca_item = 'ID_ITEM' then
     begin
       dmOff.BUS_CD_C_ITE.Data :=
            dmOff.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBuscaItem.Text]));
     end;
  if xbusca_item = 'COD_BARRA'  then
     begin
       dmOff.BUS_CD_C_ITE.Data :=
            dmOff.BUS_CD_C_ITE.DataRequest(VarArrayOf([2, txtBuscaItem.Text]));
     end;
  if xbusca_item = 'COD_FABRICA' then
     begin
       dmOff.BUS_CD_C_ITE.Data :=
            dmOff.BUS_CD_C_ITE.DataRequest(VarArrayOf([3, txtBuscaItem.Text]));
     end;

  if not dmOff.CAD_CD_C_ITE_TesValObrigatorio(dmOff.BUS_CD_C_ITE) then
     begin
       txtBuscaItem.SetFocus;
       dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').Text := '';
       dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').Text  := '';
       dmOff.EST_CD_M_CTE_ITE.FieldByName('rua').Text := '';
       dmOff.EST_CD_M_CTE_ITE.FieldByName('prateleira').Text  := '';
       dmOff.EST_CD_M_CTE_ITE.FieldByName('escaninho').Text := '';
       exit;
     end;

  dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text :=
       dmOff.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;
  dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').Text :=
       dmOff.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').Text :=
       dmOff.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

  dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_TIPO_ITEM').AsInteger :=
       dmOff.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsInteger;

  dmOff.EST_CD_M_CTE_ITE.FieldByName('rua').Text :=
      dmOff.BUS_CD_C_ITE_LOC.FieldByName('loca_rua').Text;
  dmOff.EST_CD_M_CTE_ITE.FieldByName('prateleira').Text  :=
      dmOff.BUS_CD_C_ITE_LOC.FieldByName('loca_prateleira').Text;
  dmOff.EST_CD_M_CTE_ITE.FieldByName('escaninho').Text :=
       dmOff.BUS_CD_C_ITE_LOC.FieldByName('loca_escaninho').Text;


  try
  pnItens.onExit := nil;

  if dmOff.EST_CD_M_CTE_ITE.State in [dsInsert] then
     begin
        if (not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
           begin
             id_item       := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text;
             id_busca_item := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
             desc          := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString;
             und           := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString;

             loca_rua := dmOff.EST_CD_M_CTE_ITE.FieldByName('rua').AsString;
             loca_prateleira := dmOff.EST_CD_M_CTE_ITE.FieldByName('prateleira').AsString;
             loca_escaninho := dmOff.EST_CD_M_CTE_ITE.FieldByName('escaninho').AsString;

             dmOff.EST_CD_M_CTE_ITE.cancel;

             if dmOff.EST_CD_M_CTE.FieldByName('CORRIGIR_CUSTO_MEDIO').AsBoolean then
                begin
                  if dmOff.LocalizarRegItem(dmOff.EST_CD_M_CTE_ITE,EST_FM_M_COF.Name,id_item,'','',
                                              dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text, '') then
                     begin

                       try
                         pnItens.OnExit := nil;
                         ShowMessage('Item já inserido na contagem!');
                       finally
                         pnItens.OnExit := pnItensExit;
                       end;

                       btn_Add_Itens.SetFocus;
                       abort;
                     end
                  else
                     begin
                        dmOff.EST_CD_M_CTE_ITE.Insert;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;

                        dmOff.EST_CD_M_CTE_ITE.FieldByName('rua').AsString :=  loca_rua;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('prateleira').AsString := loca_prateleira;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('escaninho').AsString := loca_escaninho;


                        dmOff.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 0;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat         := 0;
                        dmOff.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsFloat        := 0;
                        if cbbCor.CanFocus then
                           begin
                              ActiveControl := nil;
                              PostMessage(cbbCor.Handle, WM_SETFOCUS, 0, 0);
                              cbbCor.SetFocus;
                           end
                        else
                           begin
                              if cbbTamanho.CanFocus then
                                 begin
                                   ActiveControl := nil;
                                   PostMessage(cbbTamanho.Handle, WM_SETFOCUS, 0, 0);
                                   cbbTamanho.SetFocus;
                                 end
                              else
                                 begin
                                   ActiveControl := nil;
                                   PostMessage(txtVlrCusto.Handle, WM_SETFOCUS, 0, 0);
                                   txtVlrCusto.SetFocus;
                                 end;
                            end;
                     end;

                end
             else
                begin
                   if (not dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean) and
                                              dmOff.LocalizarRegItem(dmOff.EST_CD_M_CTE_ITE,EST_FM_M_COF.Name,id_item,'','',
                                                                    dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,
                                                                     '') then
                      begin
                        if (dmGeral.CAD_CD_C_PAR_MOD.FieldBYName('OME').AsBoolean=false) then
                          begin
                            dmOff.EST_CD_M_CTE_ITE.edit;
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat  :=
                                    dmOff.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsFloat + 1;
                            dmOff.EST_CD_M_CTE_ITE.post;
                          end
                        else
                          begin

                             try
                               pnItens.OnExit := nil;
                               ShowMessage('Item já foi selecionado.');
                             finally
                               pnItens.OnExit := pnItensExit;
                             end;

                          end;
                        dmOff.EST_CD_M_CTE_ITE.Insert;
                        txtBuscaItem.SetFocus;
                        abort;
                      end
                   else
                      begin
                        if (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean = true) then
                           begin
                             dmOff.EST_CD_M_LOT.Data :=
                               dmOff.EST_CD_M_LOT.DataRequest(VarArrayOf([24,dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,'', id_item,0,0,dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').AsString]));
                           end
                        else
                           begin
                             dmOff.EST_CD_M_LOT.Data :=
                                  dmOff.EST_CD_M_LOT.DataRequest(VarArrayOf([24,dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,'',id_item,0,0,0]));

                           end;

                        if dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean and (not dmOff.EST_CD_M_LOT.IsEmpty) and
                                        (not dmOff.LocalizarRegItem(dmOff.EST_CD_M_CTE_ITE,EST_FM_M_COF.Name,id_item,'','',
                                                                    dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,
                                                                     '')) then
                           begin
                             dmOff.EST_CD_M_LOT.First;
                             while not dmOff.EST_CD_M_LOT.eof do
                                 begin
                                   dmOff.EST_CD_M_CTE_ITE.Insert;
                                   dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString := id_item;
                                   dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                                   dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMEITE').AsString := desc;
                                   dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMEUND').AsString := und;

                                   dmOff.EST_CD_M_CTE_ITE.FieldByName('rua').AsString :=  loca_rua;
                                   dmOff.EST_CD_M_CTE_ITE.FieldByName('prateleira').AsString := loca_prateleira;
                                   dmOff.EST_CD_M_CTE_ITE.FieldByName('escaninho').AsString := loca_escaninho;

                                   dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;
                                   dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString :=
                                                        dmOff.EST_CD_M_LOT.FieldByName('NUM_LOTE').AsString;
                                   dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := dmOff.EST_CD_M_CTE_ITEnum_loteChange;

                                   dmOff.EST_CD_M_CTE_ITEcontagem.OnChange := nil;
                                   dmOff.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsString := '';
                                   dmOff.EST_CD_M_CTE_ITEcontagem.OnChange := dmOff.EST_CD_M_CTE_ITEcontagemChange;



                                   dmOff.EST_CD_M_CTE_ITE.Post;
                                   dmOff.EST_CD_M_LOT.Next;
                                 end;
                                 dmOff.EST_CD_M_CTE_ITE.First;

                                 dmOff.EST_CD_M_CTE_ITE.locate('ID_ITEM',id_item,[]);

                                 if txtQtde.CanFocus then
                                    begin
                                      dmOff.EST_CD_M_CTE_ITE.edit;
                                      txtQtde.Setfocus;
                                    end;

                           end
                        else
                           begin
                              dmOff.EST_CD_M_CTE_ITE.Insert;
                              dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                              dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                              dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                              dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;

                              dmOff.EST_CD_M_CTE_ITE.FieldByName('rua').AsString :=  loca_rua;
                              dmOff.EST_CD_M_CTE_ITE.FieldByName('prateleira').AsString := loca_prateleira;
                              dmOff.EST_CD_M_CTE_ITE.FieldByName('escaninho').AsString := loca_escaninho;

                              if cbbCor.CanFocus then
                                 begin
                                    ActiveControl := nil;
                                    PostMessage(cbbCor.Handle, WM_SETFOCUS, 0, 0);
                                    cbbCor.SetFocus;
                                 end
                              else
                                 begin
                                      if txtNroLote.CanFocus then
                                         begin
                                            ActiveControl := nil;
                                            PostMessage(txtNroLote.Handle, WM_SETFOCUS, 0, 0);
                                            txtNroLote.SetFocus;
                                         end
                                      else
                                         begin
                                            if cbbTamanho.CanFocus then
                                               begin
                                                 ActiveControl := nil;
                                                 PostMessage(cbbTamanho.Handle, WM_SETFOCUS, 0, 0);
                                                 cbbTamanho.SetFocus;
                                               end
                                            else
                                               begin
                                                 ActiveControl := nil;
                                                 PostMessage(txtQtde.Handle, WM_SETFOCUS, 0, 0);
                                                 txtQtde.SetFocus;
                                               end;
                                         end;
                                  end;
                           end;
                      end;
                end;
           end;
     end
  else
     dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString := id_item;

  finally
     pnItens.OnExit := pnItensExit;
  end;
     end
  else
     begin
       telaPsqIte := false;
       txtBuscaItem.SetFocus;
     end;

end;

procedure TEST_FM_M_COF.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TEST_FM_M_COF.txtDtaVencExit(Sender: TObject);
begin
  inherited;
  pnlDtaVenc.Visible := false;
  txtQtde.SetFocus;

end;

procedure TEST_FM_M_COF.txtNroLoteEnter(Sender: TObject);
begin
  inherited;
  dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;

end;

procedure TEST_FM_M_COF.txtNroLoteExit(Sender: TObject);
var
  id_item, desc, desc_cor, desc_tam, und, id_busca_item, id_cor, id_tamanho, num_lote,loca_rua,loca_prateleira,loca_escaninho : string;
begin
  inherited;

  try
  pnItens.onExit := nil;

  dmOff.BUS_CD_C_ITE.Close;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       abort;
     end;

    if btn_Add_Itens.Focused or
       cbbTamanho.Focused or cbbCor.Focused or
       txtBuscaItem.Focused or grdItens.Focused then
     begin
       abort;
     end;

    dmOff.BUS_CD_C_ITE.Data :=
            dmOff.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString]));

    if (trim(dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) = '') then
       begin
         if (dmOff.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger <> 4) then
            begin
              if txtNroLote.CanFocus then // esse if foi necessário devido o Botão de Exclusão do grid, que tava gerando mensagem desnecessária.
                 begin

                   try
                     pnItens.OnExit := nil;
                     ShowMessage('O campo "nro do lote" deve ser preenchido.');
                   finally
                     pnItens.OnExit := pnItensExit;
                   end;

                   txtNroLote.SetFocus;
                   exit;
                 end;
            end;
       end
    else
       begin
         if (dmOff.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger = 4) then
            begin


                   try
                      pnItens.OnExit := nil;
                      ShowMessage('Digitação de nº do lote não é permitido para este item.');
                   finally
                     pnItens.OnExit := pnItensExit;
                   end;


                  dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := nil;
                  dmOff.EST_CD_M_CTE_ITE.FieldByName('num_lote').AsString      := '';
                  dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := dmOff.EST_CD_M_CTE_ITEnum_loteChange;
              exit;
            end;
       end;


    {if (dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger <> 4) and // Geração de lote pela NF de entrada
       (trim(dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) <> '') then
       begin
         if txtNroLote.CanFocus then // esse if foi necessário devido o Botão de Exclusão do grid, que tava gerando mensagem desnecessária.
            begin
             if dmGeral.VerifLote then
                begin
                  dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString := '';
                  txtNroLote.SetFocus;
                  exit;
                end
             else
                begin
                  if txtNroLote.CanFocus then
                     txtNroLote.SetFocus;
                  exit;
                end;
            end;
       end;}
  if (trim(dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString) <> '') then
       begin
         dmOff.EST_CD_M_LOT.close;
         dmOff.EST_CD_M_LOT.Data :=
                     dmOff.EST_CD_M_LOT.DataRequest(VarArrayOf([16,
                          dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text,
                          dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text]));
         if not dmOff.EST_CD_M_LOT.IsEmpty then
            begin
              if dmOff.EST_CD_M_LOT.FieldByName('id_item').AsInteger <>
                 dmOff.EST_CD_M_CTE_ITE.FieldByName('id_item').AsInteger then
                 begin

                   try
                      pnItens.OnExit := nil;
                      Showmessage('Este lote não pertence ao item informado.');
                   finally
                     pnItens.OnExit := pnItensExit;
                   end;


                   dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text := '';
                   txtNroLote.SetFocus;
                   abort;
                  end
              else
                  begin
                    //dmGeral.BusLoteItem(dmGeral.EST_CD_M_LOT.FieldByName('ID_EMPRESA').text,
                    if (dmOff.EST_CD_M_LOT.FieldByName('ID_EMPRESA').text <> dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text) or
                       (dmOff.EST_CD_M_LOT.FieldByName('NUM_LOTE').text <> dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text) or
                       (dmOff.EST_CD_M_LOT.FieldByName('ID_ITEM').text <>  dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').text) or
                       (dmOff.EST_CD_M_LOT.FieldByName('ID_COR').text <>   dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').text) or
                       (dmOff.EST_CD_M_LOT.FieldByName('ID_TAMANHO').text <>  dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').text) or
                       (dmOff.EST_CD_M_LOT.FieldByName('ID_ALMOXARIFADO').text <> dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').text) then
                       begin


                         try
                            pnItens.OnExit := nil;
                            Showmessage('Este lote não pertence ao item informado..');
                         finally
                           pnItens.OnExit := pnItensExit;
                         end;


                         dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text := '';
                         txtNroLote.SetFocus;
                         abort;
                       end
                  end;
            end;
       end;


  if dmOff.EST_CD_M_CTE_ITE.State in [dsInsert] then
     begin
       pnItens.Enabled := true;

       id_item       := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString;
       id_busca_item := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
       desc          := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString;
       und           := dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString;
       id_cor        := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString;
       id_tamanho    := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString;
       num_lote      := dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').AsString;
       desc_cor      := dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString;
       desc_tam      := dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString;

       loca_rua := dmOff.EST_CD_M_CTE_ITE.FieldByName('rua').AsString;
       loca_prateleira := dmOff.EST_CD_M_CTE_ITE.FieldByName('prateleira').AsString;
       loca_escaninho := dmOff.EST_CD_M_CTE_ITE.FieldByName('escaninho').AsString;



       dmOff.EST_CD_M_CTE_ITE.cancel;

       if dmOff.LocalizarRegItem(dmOff.EST_CD_M_CTE_ITE,EST_FM_M_COF.Name,id_item,id_cor,id_tamanho,
                                   dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,num_lote) then
          begin
            dmOff.EST_CD_M_CTE_ITE.edit;
            dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat  :=
                    dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat + 1;
            dmOff.EST_CD_M_CTE_ITE.post;
            dmOff.EST_CD_M_CTE_ITE.Insert;
            txtBuscaItem.SetFocus;
            abort;
          end
       else
          begin
            if trim(num_lote) <> '' then
               begin
                 if dmOff.EST_CD_M_CTE_ITE.Locate('NUM_LOTE', num_lote,[]) then
                    begin
                       try
                          pnItens.OnExit := nil;
                          ShowMessage('Este nro de lote já foi digitado em outro registro.');
                       finally
                         pnItens.OnExit := pnItensExit;
                       end;

                      dmOff.EST_CD_M_CTE_ITE.Insert;
                      dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                      dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                      dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
                      dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
                      dmOff.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
                      dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString    := id_tamanho;
                      dmOff.EST_CD_M_CTE_ITE.FieldByName('num_lote').AsString      := '';
                      dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
                      dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;

                      dmOff.EST_CD_M_CTE_ITE.FieldByName('rua').AsString        := loca_rua;
                      dmOff.EST_CD_M_CTE_ITE.FieldByName('prateleira').AsString := loca_prateleira;
                      dmOff.EST_CD_M_CTE_ITE.FieldByName('escaninho').AsString  := loca_escaninho;

                      txtNroLote.SetFocus;
                      abort;
                    end;
               end;
            dmOff.EST_CD_M_CTE_ITE.Insert;
            dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString       := id_item;
            dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
            dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeite').AsString   := desc;
            dmOff.EST_CD_M_CTE_ITE.FieldByName('int_nomeund').AsString   := und;
            dmOff.EST_CD_M_CTE_ITE.FieldByName('id_cor').AsString        := id_cor;
            dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString    := id_tamanho;
            dmOff.EST_CD_M_CTE_ITE.FieldByName('num_lote').AsString      := num_lote;
            dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
            dmOff.EST_CD_M_CTE_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;

            dmOff.EST_CD_M_CTE_ITE.FieldByName('rua').AsString        := loca_rua;
            dmOff.EST_CD_M_CTE_ITE.FieldByName('prateleira').AsString := loca_prateleira;
            dmOff.EST_CD_M_CTE_ITE.FieldByName('escaninho').AsString  := loca_escaninho;


            if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean=true then
              begin
                ActiveControl := nil;
                PostMessage(txtQtde.Handle, WM_SETFOCUS, 0, 0);
                txtQtde.SetFocus;
              end
            else
              begin
                pnlDtaVenc.Visible := true;
                ActiveControl := nil;
                PostMessage(txtDtaVenc.Handle, WM_SETFOCUS, 0, 0);
                txtDtaVenc.SetFocus;
              end;
          end;
     end;

  finally
     pnItens.OnExit := pnItensExit;
     dmOff.EST_CD_M_CTE_ITEnum_lote.OnChange := dmOff.EST_CD_M_CTE_ITEnum_loteChange;
  end;
end;

procedure TEST_FM_M_COF.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TEST_FM_M_COF.txtQtdeEnter(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('HAB_VLR_CUSTO_CTE').AsBoolean = true then
    txtVlrCusto.Enabled := true
  else
    txtVlrCusto.Enabled := false;
end;

procedure TEST_FM_M_COF.txtQtdeExit(Sender: TObject);
var
  lVlrCustoMedio: Currency;
  lQtdeAtual,lQtdePendente: Currency;
  saldo_fisico,seq_item: String;
  SMPrincipal : TSMClient;
begin
  inherited;




 { if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end; }

   if txtNroLote.Focused or
     cbbTamanho.Focused or cbbCor.Focused or
     txtBuscaItem.Focused then
     begin
       if dmOff.EST_CD_M_CTE_ITE.State in [dsEdit] then
          begin
            txtQtde.SetFocus;
            exit;
          end;
       if dmOff.EST_CD_M_CTE_ITE.State in [dsInsert] then
         begin
          exit;
         end;
     end;

  if (btn_Add_Itens.Focused and txtVlrCusto.CanFocus) or grdItens.Focused then
     begin
       exit;
     end;

  {if txtNroLote.Focused or
     btn_Add_Itens.Focused or txtNroLote.Focused or
     cbbTamanho.Focused or cbbCor.Focused or
     txtBuscaItem.Focused or grdItens.Focused then
     begin
       exit;
     end; }

  if dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat < 0 then
     begin

       try
          pnItens.OnExit := nil;
          ShowMessage('O campo "Contagem" não pode ser menor que 0.');
       finally
         pnItens.OnExit := pnItensExit;
       end;

       txtQtde.SetFocus;
       abort;
     end;

  if dmOff.BusCustoMedItem(dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').AsString,
                             dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').AsString,
                             dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').AsString,
                             dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').AsString,lVlrCustoMedio) then
     begin
       dmOff.EST_CD_M_CTE_ITE.FieldByName('VLR_CUSTO').AsCurrency := lVlrCustoMedio;
     end
  else
     begin
       {ShowMessage('O registro de saldo do item não foi encontrado.');
       dmGeral.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat := 0;
       txtQtde.SetFocus;
       exit; }
     end;


  saldo_fisico := '';

  if dmOff.BusSaldoItem(dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                                    dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                                    dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text,
                                    dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text,
                                    dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text,
                                    saldo_fisico) then
     begin
       if trim(saldo_fisico) <> '' then
          lQtdeAtual := StrToCurr(saldo_fisico);
     end;

  //lQtdeAtual := dmGeral.EST_CD_M_FES.FieldByName('SALDO_FISICO').AsFloat;

  if trim(dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text) <> '' then
     begin
        lQtdeAtual := 0;
        dmOff.BusLoteItem(dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').text,
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').text,
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').text,
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').text,
                            dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').text,
                            dmOff.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').text);
        if not dmOff.EST_CD_M_LOT.IsEmpty then
               lQtdeAtual := dmOff.EST_CD_M_LOTqtde_atual.AsFloat;
     end;
  lQtdePendente := 0;
 { if dmOff.CAD_CD_C_PAR_MOD.FieldByName('sgq').AsBoolean then
     begin
       try
        SMPrincipal := TSMClient.Create(dmOff.Conexao.DBXConnection);
        lQtdePendente := SMPrincipal.enSgqPcpBusSaldoPendente(dmOff.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                                     dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                                     dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text,
                                     dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text);

       finally
         FreeAndNil(SMPrincipal);
       end;
     end;   }

  // 0 - Sem diferença
  // 1 - Sobrou
     // Quer dizer que ao contar, o saldo do estoque que tinha, ficou maior do
     // que o contado. ex: contagem = 5   saldo = 15, então sobrou 15 pra ficar igual ao saldo contado.
  // 2 - Faltou
     // Quer dizer que ao contar, o saldo do estoque que tinha ficou a menor
     // que o contado. ex: contagem = 25   saldo = 5, então faltou 20 pra atingir o saldo que tinha.

  dmOff.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 0;
  dmOff.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsInteger      := 0;

  if not (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('sgq').AsBoolean) then
     begin
        if dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat < (lQtdeAtual) then
           begin
             // Deve ser dado saída no estoque
             dmOff.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 1;
             dmOff.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsCurrency      :=
                     lQtdeAtual -
                     dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsCurrency;
           end;

        if dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat > (lQtdeAtual ) then
           begin
             // Deve ser dado entrada no estoque
             dmOff.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 2;
             dmOff.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsCurrency        :=
                     dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsCurrency -
                     lQtdeAtual;
           end;
     end
  else
     begin
       if (dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat + lQtdePendente) < (lQtdeAtual) then
           begin
             // Deve ser dado saída no estoque
             dmOff.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 1;
             dmOff.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsCurrency      :=
                     lQtdeAtual -
                     (dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsCurrency + lQtdePendente);
           end;

        if (dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsFloat + lQtdePendente) > (lQtdeAtual ) then
           begin
             // Deve ser dado entrada no estoque
             dmOff.EST_CD_M_CTE_ITE.FieldByName('TIPO_DIFERENCA').AsInteger := 2;
             dmOff.EST_CD_M_CTE_ITE.FieldByName('DIFERENCA').AsFloat        :=
                     (dmOff.EST_CD_M_CTE_ITE.FieldByName('contagem').AsCurrency + lQtdePendente) -
                     lQtdeAtual;
           end;
     end;


  if dmOff.EST_CD_M_CTE_ITE.FieldByName('VLR_CUSTO').AsString = '' then
    begin
      txtVlrCusto.Enabled := true;
      txtVlrCusto.SetFocus;
    end;

  if not txtVlrCusto.CanFocus then
    begin
      seq_item := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_SEQ_ITEM').AsString;

      if dmOff.EST_CD_M_CTE_ITEid_seq_item.text = '' then
         begin
           { SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
            try
              dmGeral.EST_CD_M_CTE_ITEid_seq_item.AsInteger :=
                   SMPrincipal.enValorChave('EST_CD_M_CTE_ITE');
            finally
              FreeAndNil(SMPrincipal);
            end;}
            dmOff.EST_CD_M_CTE_ITEid_seq_item.AsInteger :=
                dmOff.enValorChave('EST_TB_M_CTE_ITE');
         end;

      dmOff.EST_CD_M_CTE_ITE.Post;



      pnItens.Enabled := false;
      dmOff.EST_CD_M_CTE_ITE.locate('ID_SEQ_ITEM',seq_item,[]);
      dmOff.EST_CD_M_CTE_ITE.Next;
      ActiveControl := nil;
      PostMessage(btn_Add_Itens.Handle, WM_SETFOCUS, 0, 0);
      btn_Add_Itens.SetFocus;
    end;

end;

procedure TEST_FM_M_COF.txtVlrCustoExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  seq_item: string;
begin
  inherited;

  {if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;  }

  if txtNroLote.Focused or txtQtde.Focused or
     cbbTamanho.Focused or cbbCor.Focused or
     txtBuscaItem.Focused or grdItens.Focused then
     begin
       exit;
     end;

  if not (dmOff.EST_CD_M_CTE.FieldByName('corrigir_custo_medio').AsBoolean) then
     begin
       if (trim(dmOff.EST_CD_M_CTE_ITE.FieldByName('CONTAGEM').AsString) = '') then
          begin

             try
                pnItens.OnExit := nil;
                ShowMessage('O campo "Contagem" deve ser preenchido.');
             finally
               pnItens.OnExit := pnItensExit;
             end;
            txtQtde.SetFocus;
            exit;
          end;
     end;

  if (dmOff.EST_CD_M_CTE_ITE.FieldByName('VLR_CUSTO').AsCurrency < 0) or
     (dmOff.EST_CD_M_CTE_ITE.FieldByName('VLR_CUSTO').AsCurrency = 0) then
     begin

       try
          pnItens.OnExit := nil;
          ShowMessage('O valor deste campo deve ser maior que 0.');
       finally
         pnItens.OnExit := pnItensExit;
       end;

       txtVlrCusto.SetFocus;
       exit;
     end;

  seq_item := dmOff.EST_CD_M_CTE_ITE.FieldByName('ID_SEQ_ITEM').AsString;

  if dmOff.EST_CD_M_CTE_ITEid_seq_item.text = '' then
     begin
       { SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          dmGeral.EST_CD_M_CTE_ITEid_seq_item.AsInteger :=
               SMPrincipal.enValorChave('EST_CD_M_CTE_ITE');
        finally
          FreeAndNil(SMPrincipal);
        end; }
        dmOff.EST_CD_M_CTE_ITEid_seq_item.AsInteger :=
               dmOff.enValorChave('EST_TB_M_CTE_ITE');
     end;

  dmOff.EST_CD_M_CTE_ITE.Post;


  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('HAB_VLR_CUSTO_CTE').AsBoolean = true then
    txtVlrCusto.Enabled := true
  else
    txtVlrCusto.Enabled := false;


  pnItens.Enabled := false;
  dmOff.EST_CD_M_CTE_ITE.locate('ID_SEQ_ITEM',seq_item,[]);
  dmOff.EST_CD_M_CTE_ITE.Next;
  ActiveControl := nil;
  PostMessage(btn_Add_Itens.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Itens.SetFocus;
end;

function TEST_FM_M_COF.VerifLote: Boolean;
begin

{  result := false;

  dmGeral.EST_CD_M_LOT.Close;

  if (not dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)   then
     begin
       dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([0,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                                                              dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                                                              dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text]));
       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end;

  if (not dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)   then
     begin

       dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([1,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text]));

       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end;

  if (not dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)   then
     begin
      dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([2,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text,
                             dmGeral.EST_CD_M_CTE.FieldByName('ID_TAMANHO').Text]));
       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end;

  if (not dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)   then
     begin
       dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([3,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text,
                             dmGeral.EST_CD_M_CTE.FieldByName('ID_TAMANHO').Text]));
       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end;


  if (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)   then
     begin
       dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([4,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text]));
       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end;

  if (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (not dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)   then
     begin
       dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([5,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text,
                             dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text]));
       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end;

  if (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (not dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean)   then
     begin
       dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([6,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text,
                             dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text]));
       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end;

  if (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) and
     (dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean) then
     begin
       dmGeral.EST_CD_M_LOT.Data :=
               dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([7,dmGeral.EST_CD_M_CTE.FieldByName('ID_EMPRESA').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('NUM_LOTE').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_ITEM').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_COR').Text,
                             dmGeral.EST_CD_M_CTE_ITE.FieldByName('ID_TAMANHO').Text,
                             dmGeral.EST_CD_M_CTE.FieldByName('ID_ALMOXARIFADO').Text]));
       if dmGeral.EST_CD_M_LOT.IsEmpty then
          begin
            ShowMessage('Lote não encontrado.');
            result := false;
          end;
     end; }
end;

end.
