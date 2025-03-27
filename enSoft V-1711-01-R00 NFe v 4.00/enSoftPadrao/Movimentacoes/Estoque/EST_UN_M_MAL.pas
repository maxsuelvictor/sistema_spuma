unit EST_UN_M_MAL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, datasnap.DBClient,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, vcl.wwdblook,
  Vcl.Mask, Vcl.DBCtrls, JvDBControls, JvExMask, JvToolEdit, Data.DB,
  frxClass, frxDBSet, frxExportPDF, frxExportXLS, JvExExtCtrls, JvExtComponent,
  JvPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, vcl.Wwdbedit, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White;

type
  TEST_FM_M_MAL = class(TPAD_FM_X_PAD)
    txtControle: TDBEdit;
    lblControle: TLabel;
    lblResponsavel: TLabel;
    lblAlmoxarifado: TLabel;
    cbbAlmoxarifado: TwwDBLookupCombo;
    lblTipoEstoque: TLabel;
    cbbTipoEstoque: TwwDBLookupCombo;
    lblSetor: TLabel;
    cbbSetor: TwwDBLookupCombo;
    lblObservacoes: TLabel;
    txtObservacoes: TDBEdit;
    lblRevisao: TLabel;
    txtRevisao: TDBEdit;
    lblAniversario: TLabel;
    dpkData: TJvDBDateEdit;
    gbItens: TGroupBox;
    btn_Add_Itens: TBitBtn;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    dsoItem: TwwDataSource;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    pnItens: TPanel;
    lblItem: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    txtUnidade: TDBText;
    txtBuscaItem: TJvDBComboEdit;
    txtItemDescricao: TDBText;
    Label1: TLabel;
    txtObservacao: TDBEdit;
    lblQtde: TLabel;
    txtNroLote: TDBEdit;
    lblItems: TLabel;
    txtQtde: TDBEdit;
    btnAtualizaCont: TBitBtn;
    txtSaldo: TEdit;
    Label16: TLabel;
    txtCodResponsavel: TDBEdit;
    txtNomeResp: TDBText;
    EST_XL_M_MAL: TfrxXLSExport;
    EST_PD_M_MAL: TfrxPDFExport;
    EST_DB_M_MAL: TfrxDBDataset;
    EST_DB_M_MAL_ETQ: TfrxDBDataset;
    cbbAlmDest: TwwDBLookupCombo;
    lblAlmDest: TLabel;
    lblReqOp: TLabel;
    lblOp: TLabel;
    BUS_CD_M_OPR_REQ_ITE: TClientDataSet;
    BUS_CD_M_OPR_REQ_ITEid_opr: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEid_opr_req: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEid_opr_req_ite: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEid_item: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEid_cor: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEid_tamanho: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEqtde: TFloatField;
    BUS_CD_M_OPR_REQ_ITEqtde_atendida: TFloatField;
    BUS_CD_M_OPR_REQ_ITEdta_canc: TDateField;
    BUS_CD_M_OPR_REQ_ITEhor_canc: TTimeField;
    BUS_CD_M_OPR_REQ_ITEid_funcionario_canc: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEsituacao: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEid_setor: TIntegerField;
    BUS_CD_M_OPR_REQ_ITEid_busca_item: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEnum_lote: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEgerado_automatico: TBooleanField;
    BUS_CD_M_OPR_REQ_ITEcancelado: TBooleanField;
    BUS_CD_M_OPR_REQ_ITEint_nomeite: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEint_nomecor: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEint_nometam: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEint_nomefuncanc: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEint_undvenda: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEint_nomestr: TWideStringField;
    BUS_CD_M_OPR_REQ_ITEint_saldo: TFloatField;
    BUS_CD_M_OPR_REQ_ITEint_conferido: TFMTBCDField;
    txtReqOP: TwwDBEdit;
    txtOp: TwwDBEdit;
    btnEtiqueta: TBitBtn;
    EST_FR_M_MAL_ETQ: TfrxReport;
    EST_CD_M_MAL_ETQ: TClientDataSet;
    EST_CD_M_MAL_ETQid_item: TIntegerField;
    EST_CD_M_MAL_ETQdesc_item: TStringField;
    EST_CD_M_MAL_ETQund: TStringField;
    EST_CD_M_MAL_ETQcod_barra: TStringField;
    EST_CD_M_MAL_ETQcod_fab: TStringField;
    pnlEtiqueta: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    txtEtiqueta: TEdit;
    Label4: TLabel;
    EST_DB_M_MAL_ITE: TfrxDBDataset;
    lblPerfil: TLabel;
    cbbCentroCusto: TwwDBLookupCombo;
    txtDescEqp: TwwDBEdit;
    txtEqp: TJvDBComboEdit;
    lblEquip: TLabel;
    EST_FR_M_MAL: TfrxReport;
    txtVlrUnitario: TwwDBEdit;
    Label5: TLabel;
    txtPesquisaData: TJvDateEdit;
    lblKmAtual: TLabel;
    txtKmAtual: TwwDBEdit;
    procedure cbbAlmoxarifadoEnter(Sender: TObject);
    procedure cbbTipoEstoqueEnter(Sender: TObject);
    procedure cbbSetorEnter(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbAlmoxarifadoExit(Sender: TObject);
    procedure cbbTipoEstoqueExit(Sender: TObject);
    procedure cbbSetorExit(Sender: TObject);
    procedure txtBuscaItemEnter(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure txtObservacaoExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure txtNroLoteExit(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure txtQtdeEnter(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAtualizaContClick(Sender: TObject);
    procedure dpkDataExit(Sender: TObject);
    procedure cbbAlmDestEnter(Sender: TObject);
    procedure cbbAlmDestExit(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure txtReqOPExit(Sender: TObject);
    procedure btnEtiquetaClick(Sender: TObject);
    procedure txtEtiquetaExit(Sender: TObject);
    procedure cbbCentroCustoEnter(Sender: TObject);
    procedure txtEqpButtonClick(Sender: TObject);
    procedure txtEqpExit(Sender: TObject);
    procedure txtVlrUnitarioExit(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    procedure AcoesIniciais;
    function  AcoesPosTestes: Boolean;
    procedure ChamaCorTamanho;
    procedure Atualizar_xBusca;
    procedure PassarCdsAnterior;
    function  ExisteItemComNroLot: Boolean;
    procedure ExcluirMovAlmox;
    procedure GerarEtiqueta;
    var
      xAntIdTipoEstoque: String;
      xbusca_item: String;
      xCdsItensAntigo, xCdsTitulosAntigo: TClientDataSet;
  public
    { Public declarations }
  end;

var
  EST_FM_M_MAL: TEST_FM_M_MAL;

implementation

{$R *.dfm}

uses uDmGeral,uProxy,UApplayClassProxy, PSQ_UN_X_ITE, FAT_RN_M_NFE,
  EST_UN_M_MAL_COF, EST_RN_M_MAL, PSQ_UN_X_MEQ;

procedure TEST_FM_M_MAL.AbrirBuscas;
begin
  dmGeral.BusAlmox(1,'%');
  dmGeral.BusAlmoxExp2(1,'%');
  dmGeral.BusTipoEstoque(1,'%');
  dmGeral.BusSetor(1,'%');
  dmGeral.BusTamanho(1,'%');
  dmGeral.BusCor(1,'%');
  dmGeral.BusCCusto(1,'%');
end;

procedure TEST_FM_M_MAL.acAdicionaExecute(Sender: TObject);
begin
  inherited;


   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = True then
      begin
        if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('MAL_TIPO_ESTOQUE_ENT').AsString ='' then
          begin
            ShowMessage('Deve ser preenchido tipo mov. estoque para transferência de estoque entre almoxarifados.');
            exit;
          end;
      end;



  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.EST_CD_M_MAL);


  AcoesIniciais;

  pnItens.Enabled := false;

  HabilDesabCampos(True, clWhite);
  cbbTipoEstoque.Enabled := true;
  cbbTipoEstoque.Color   := clWhite;

  dmGeral.BusFuncionario(0,IntToStr(xFuncionario));
  dmGeral.EST_CD_M_MAL.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
  dmGeral.EST_CD_M_MAL.FieldByName('INT_NOMERES').AsString     := dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;

  PassarCdsAnterior;
  txtSaldo.Text := '';

  btnAtualizaCont.Enabled := false;

  dpkData.SetFocus;
end;

procedure TEST_FM_M_MAL.acAlterarExecute(Sender: TObject);
begin
  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = True then
      begin
        if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('MAL_TIPO_ESTOQUE_ENT').AsString ='' then
          begin
            ShowMessage('Deve ser preenchido tipo mov. estoque para transferência de estoque entre almoxarifados.');
            exit;
          end;
      end;

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.EST_CD_M_MAL) then
     begin
       inherited;
       pnItens.Enabled := false;
       HabilDesabCampos(false,$00DADADA);
       if (dmGeral.EST_CD_M_MAL.FieldByName('INT_INDICADORTME').AsInteger = 2) then
         begin
           cbbTipoEstoque.Enabled := false;
           cbbTipoEstoque.Color   := $00DADADA;
         end;
       PassarCdsAnterior;

       btnAtualizaCont.Enabled := false;
     end;
end;

procedure TEST_FM_M_MAL.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.EST_CD_M_MAL) then
     begin
       inherited;
       dbGrid.SetFocus;
       txtSaldo.Text := '';
       btnAtualizaCont.Enabled := true;
     end
  else
     begin
       txtObservacoes.SetFocus;
     end;
end;

procedure TEST_FM_M_MAL.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.EST_CD_M_MAL);
  {if MessageDlg('Confirma a exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       //ExcluirMovAlmox;
       inherited;
     end;}
end;

procedure TEST_FM_M_MAL.acGravarExecute(Sender: TObject);
var
  empresa, codigo: string;
begin

  if not EST_RN_M_MAL.EST_CD_M_MAL_TesCampos then
     exit;

  empresa := dmGeral.EST_CD_M_MAL.FieldByName('ID_EMPRESA').AsString;
  codigo  := dmGeral.EST_CD_M_MAL.FieldByName('ID_MAL').AsString;

  AcoesPosTestes;
  dmGeral.Grava(dmGeral.EST_CD_M_MAL);
  inherited;
  dmGeral.EST_CD_M_MAL.Close;
  dmGeral.EST_CD_M_MAL.Data :=
  dmGeral.EST_CD_M_MAL.DataRequest(
          VarArrayOf([0, empresa ,codigo]));
  AbrirBuscas;
  txtSaldo.Text := '';

  btnAtualizaCont.Enabled := true;
end;

procedure TEST_FM_M_MAL.AcoesIniciais;
begin
  if not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean then
     begin
       cbbAlmoxarifado.Enabled := False;
       cbbAlmoxarifado.Color   := $00DADADA;
     end;

  if not dmGeral.CAD_CD_C_PAR_CTRutiliza_lote_na_entrada.AsBoolean then
     begin
       txtNroLote.color   := $00DADADA;
       txtNroLote.Enabled := false;
     end;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
     begin
       lblReqOp.Visible := true;
       txtReqOP.Visible := true;
       lblOp.Visible    := true;
       txtOp.Visible    := true;
     end;

  cbbAlmDest.Visible := false;
  lblAlmDest.Visible := false;
end;

function TEST_FM_M_MAL.AcoesPosTestes: Boolean;
var
  Obj:TSMClient;
  lMovimentaEst: Boolean;
begin

  EST_RN_M_MAL.EstAtuSeqMalIte;
 {
  lMovimentaEst := false;

  dmGeral.BusTipoEstoque(0,dmGeral.EST_CD_M_MALid_tipo_mov_estoque.text);
  if dmGeral.BUS_CD_C_TME.FieldByName('ESTO_MOVIMENTA').AsBoolean = true then
     begin
       lMovimentaEst := true;

       if dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger = 0 then // Entrada (Devolução)
          ENT_GRAVA_EST(5,dmGeral.EST_CD_M_MAL,dmGeral.EST_CD_M_MAL_ITE,xCdsItensAntigo);
       {else
          if dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger = 1 then // Saída
             SAI_GRAVA_EST(3,dmGeral.EST_CD_M_MAL,dmGeral.EST_CD_M_MAL_ITE,xCdsItensAntigo);}
  {   end;

  try
     try
         Obj := TSMClient.Create(dmGeral.Conexao.DBXConnection);
         if lMovimentaEst then
            begin
              if dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger = 1 then // Saída
                 begin
                   dmGeral.Grava(dmGeral.EST_CD_M_MAL);
                 end;

              // Este código é temporário até o momento da conversão da rotina EntGravaEst; 02/03/2015
              if dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger = 0 then // Entrada (Devolução)
                 begin
                   if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean  then
                      begin
                         if ExisteItemComNroLot then
                            TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_MAL,dmGeral.EST_CD_M_FEA,dmGeral.EST_CD_M_FES, dmGeral.EST_CD_M_FES_ALM, dmGeral.EST_CD_M_LOT])
                         else
                            TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_MAL,dmGeral.EST_CD_M_FEA,dmGeral.EST_CD_M_FES, dmGeral.EST_CD_M_FES_ALM])
                      end
                   else
                      if ExisteItemComNroLot then
                         TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_MAL,dmGeral.EST_CD_M_FEA,dmGeral.EST_CD_M_FES, dmGeral.EST_CD_M_LOT])
                      else
                         begin
                           TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_MAL,dmGeral.EST_CD_M_FEA,dmGeral.EST_CD_M_FES]);
                         end;
                 end;
            end
         else
            begin
              dmGeral.Grava(dmGeral.EST_CD_M_MAL);
            end;
     except on e: exception do
        begin
          ShowMessage('Erro: ' + e.Message);
        end;
     end;
  finally
     Obj.Free;
     dmGeral.EST_CD_M_MAL.Close;
     dmGeral.EST_CD_M_MAL.Open;
  end;  }
end;

procedure TEST_FM_M_MAL.Atualizar_xBusca;
begin
  if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> Nº lote';
       xbusca_item := 'N_LOTE';
     end
  else if xbusca_item = 'ID_ITEM' then
      begin
        lblItem.Caption := '<F7> Cód. fábrica';
        xbusca_item := 'COD_FABRICA';
      end
   else if xbusca_item = 'COD_FABRICA' then
      begin
        lblItem.Caption := '<F7> Cód. barra';
        xbusca_item := 'COD_BARRA';
      end
  { else if xbusca_item = 'COD_BARRA' then
      begin
        lblItem.Caption := '<F7> Cód. item';
        xbusca_item := 'ID_ITEM';
      end  }
    else if xbusca_item = 'COD_BARRA' then
      begin
        lblItem.Caption := '<F7> Nº lote';
        xbusca_item := 'N_LOTE';
      end
    else if xbusca_item = 'N_LOTE' then
      begin
        lblItem.Caption := '<F7> Cód. item';
        xbusca_item := 'ID_ITEM';
      end;

    txtNroLote.ReadOnly := False;
    if (xbusca_item = 'N_LOTE') then
      begin
        txtNroLote.ReadOnly := True;
      end;
end;

procedure TEST_FM_M_MAL.btnAtualizaContClick(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.EST_CD_M_MAL.IsEmpty then
      begin
        codigo := dmGeral.EST_CD_M_MALid_mal.text;

        dmGeral.EST_CD_M_MAL.Close;
        dmGeral.EST_CD_M_MAL.Data :=
        dmGeral.EST_CD_M_MAL.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,codigo]));

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(EST_FR_M_MAL.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        dmGeral.BusCodigoRevListMestre(true,false,EST_FM_M_MAL.Name,xCodLme,xRevLme,nil);

        TfrxMemoView(EST_FR_M_MAL.FindComponent('LblAlmDest')).Visible := false;
        TfrxMemoView(EST_FR_M_MAL.FindComponent('DbAlmDest')).Visible :=  false;

        TfrxMemoView(EST_FR_M_MAL.FindComponent('mmEqp')).Visible := false;
        TfrxMemoView(EST_FR_M_MAL.FindComponent('EST_DB_M_MALid_equipamento')).Visible :=  false;

        if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean then
           begin
             TfrxMemoView(EST_FR_M_MAL.FindComponent('LblAlmDest')).Visible := true;
             TfrxMemoView(EST_FR_M_MAL.FindComponent('DbAlmDest')).Visible :=  true;

             TfrxMemoView(EST_FR_M_MAL.FindComponent('mmEqp')).Visible := true;
             TfrxMemoView(EST_FR_M_MAL.FindComponent('EST_DB_M_MALid_equipamento')).Visible :=  true;
           end;

        EST_FR_M_MAL.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

        EST_FR_M_MAL.PrepareReport();
        EST_FR_M_MAL.ShowReport();
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TEST_FM_M_MAL.btnEtiquetaClick(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.EST_CD_M_MAL.IsEmpty then
      begin
        {codigo := dmGeral.EST_CD_M_MALid_mal.text;

        dmGeral.EST_CD_M_MAL.Close;
        dmGeral.EST_CD_M_MAL.Data :=
        dmGeral.EST_CD_M_MAL.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,codigo]));

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(EST_FR_M_MAL.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;}

        if not dmGeral.EST_CD_M_MAL_ITE.IsEmpty then
          begin
            pnlEtiqueta.Visible := True;
            txtEtiqueta.SetFocus;
          end
        else
          begin
            ShowMessage('Nenhum item encontrado!');
            exit;
          end;
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TEST_FM_M_MAL.btnFiltroClick(Sender: TObject);
VAR
  xPesquisa:String;
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;

    if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;

    dmGeral.EST_CD_M_MAL.Close;
    dmGeral.EST_CD_M_MAL.Data :=
    dmGeral.EST_CD_M_MAL.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, xPesquisa]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TEST_FM_M_MAL.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled  := true;

  dmGeral.EST_CD_M_MAL_ITE.Insert;
  txtBuscaItem.Enabled := true;
  txtBuscaItem.color   := clWhite;
  txtBuscaItem.SetFocus;
end;

procedure TEST_FM_M_MAL.cbbAlmoxarifadoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusAlmox(1,'%');
  cbbAlmoxarifado.DropDown;
end;

procedure TEST_FM_M_MAL.cbbAlmoxarifadoExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

  if dmGeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO').Text = '' then
     begin
       ShowMessage('O campo "Almoxarifado" deve ser preenchido.');
       cbbAlmoxarifado.SetFocus;
       exit;
     end;

  dmGeral.BusAlmox(0,dmGeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO').Text);
  if dmGeral.BUS_CD_C_ALM.IsEmpty then
     begin
       ShowMessage('Almoxarifado não encontrado.');
       cbbAlmoxarifado.SetFocus;
       exit;
     end;
end;

procedure TEST_FM_M_MAL.cbbAlmDestEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusAlmoxExp2(90,dmgeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO').AsString);
  cbbAlmDest.DropDown;
end;

procedure TEST_FM_M_MAL.cbbAlmDestExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

  if dmGeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO_DEST').Text = '' then
     begin
       ShowMessage('O campo "Alm. Destino" deve ser preenchido.');
       cbbAlmDest.SetFocus;
       exit;
     end;

  dmGeral.BusAlmoxExp2(0,dmGeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO_DEST').Text);
  if dmGeral.BUS_CD_C_ALM_EXP2.IsEmpty then
     begin
       ShowMessage('Almoxarifado não encontrado.');
       cbbAlmDest.SetFocus;
       exit;
     end;
end;

procedure TEST_FM_M_MAL.cbbCentroCustoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCCusto(1,'%');
  cbbCentroCusto.DropDown;
end;

procedure TEST_FM_M_MAL.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TEST_FM_M_MAL.cbbCorExit(Sender: TObject);
begin
  inherited;

  dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       if cbbTamanho.Focused then
          Exit;

       Showmessage('O campo "Cor" deve ser preenchido.');
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;

  if trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').Text) <> '' then
     begin
        dmGeral.BusCor(0,dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').Text);
        if dmGeral.BUS_CD_C_COR.IsEmpty then
           begin
             Showmessage('Cor não encontrada.');
             dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').Text := '';
             cbbCor.SetFocus;
             exit;
           end;
        dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').text :=
                dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;
     end;

  if cbbTamanho.Focused then
     Exit;

  pnItens.Enabled := true;
  txtObservacao.SetFocus;

  pnlCorTamanho.Visible := False;
end;

procedure TEST_FM_M_MAL.cbbPesquisaChange(Sender: TObject);
begin
  txtPesquisa.Text := '';

  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [2]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 108;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TEST_FM_M_MAL.cbbSetorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusSetor(1,'%');
  cbbSetor.DropDown;
end;

procedure TEST_FM_M_MAL.cbbSetorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

  if dmGeral.EST_CD_M_MAL.FieldByName('ID_SETOR').Text = '' then
     begin
       ShowMessage('O campo "Setor" deve ser preenchido.');
       cbbSetor.SetFocus;
       exit;
     end;

  dmGeral.BusSetor(0,dmGeral.EST_CD_M_MAL.FieldByName('ID_SETOR').Text);
  if dmGeral.BUS_CD_C_SET.IsEmpty then
     begin
       ShowMessage('Setor não encontrado.');
       cbbSetor.SetFocus;
       exit;
     end;
end;

procedure TEST_FM_M_MAL.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TEST_FM_M_MAL.cbbTamanhoExit(Sender: TObject);
begin
  inherited;

  dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').Text) = '' then
     begin
       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            pnlCorTamanho.Visible := False;
            exit;
          end;
       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;
  dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;


  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    begin
     txtObservacao.SetFocus;
     pnlCorTamanho.Visible := False;
    end;
end;

procedure TEST_FM_M_MAL.cbbTipoEstoqueEnter(Sender: TObject);
begin
  inherited;

  if dmGeral.EST_CD_M_MAL.FieldByName('ID_TIPO_MOV_ESTOQUE').text <> '' then
     begin
       xAntIdTipoEstoque := dmGeral.EST_CD_M_MAL.FieldByName('ID_TIPO_MOV_ESTOQUE').text;
     end;
  if ((dmgeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean=True) and
      (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = True)) then
     begin
        dmGeral.BusTipoEstoque(9,'');
     end
  else
     begin
        dmGeral.BusTipoEstoque(5,'');
     end;

  cbbTipoEstoque.DropDown;
end;

procedure TEST_FM_M_MAL.cbbTipoEstoqueExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

  if trim(dmGeral.EST_CD_M_MAL.FieldByName('ID_TIPO_MOV_ESTOQUE').text) = '' then
     begin
       ShowMessage('O campo "Tipo de estoque" deve ser preenchido!');
       cbbTipoEstoque.SetFocus;
       cbbTipoEstoque.Text := '';
       Abort;
     end;


  dmGeral.BusTipoEstoque(0,dmGeral.EST_CD_M_MAL.FieldByName('ID_TIPO_MOV_ESTOQUE').text);

  if dmGeral.BUS_CD_C_TME.IsEmpty then
     begin
       ShowMessage('Tipo de movimento de estoque não encontrado!');
       cbbTipoEstoque.SetFocus;
       cbbTipoEstoque.Text := '';
       Abort;
     end;


   if xAntIdTipoEstoque <> '' then
     begin
        if xAntIdTipoEstoque <> dmGeral.EST_CD_M_MAL.FieldByName('ID_TIPO_MOV_ESTOQUE').text then
           begin
             if not dmGeral.EST_CD_M_MAL_ITE.IsEmpty then
                begin
                  if MessageDlg('Já existem itens lançado nesta movimentação.' + #13 +
                                'Se continuar, os itens serão apagados.' + #13 +
                                'Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                     begin
                       dmGeral.EST_CD_M_MAL_ITE.First;
                       while not dmGeral.EST_CD_M_MAL_ITE.Eof do
                          begin
                            dmGeral.EST_CD_M_MAL_ITE.Delete;
                          end;
                     end
                  else
                     begin
                       dmGeral.EST_CD_M_MAL.FieldByName('ID_TIPO_MOV_ESTOQUE').Value := xAntIdTipoEstoque;
                       Abort;
                     end;
                end;
           end;
     end;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = false then
    begin
      if not dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger in [0,1] then
         begin
           ShowMessage('O "Indicador" do Tipo de movimento de estoque deve ser do tipo "Normal" ou "Devolução"!');
           cbbTipoEstoque.SetFocus;
           cbbTipoEstoque.Text := '';
           Abort;
         end;
    end;

  if (dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger in [0]) then    // Entrada
      begin
        if not (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger in [1]) then // Devolução
           begin
            // if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = False then
            //    begin
                  ShowMessage('O tipo de movimento de estoque é de "Entrada",' + #13 +
                            ' portanto o "Indicador" deve ser do tipo "Devolução"!');
            //    end;

             cbbTipoEstoque.SetFocus;
             cbbTipoEstoque.Text := '';
             Abort;
           end;
      end;

  if (dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger in [1]) then    // Saída
      begin
        if not (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger in [0,2]) then // Normal ou Transferencia
           begin
             if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = False then
                begin
                   ShowMessage('O tipo de movimento de estoque é de "Saída",' + #13 +
                         ' portanto o "Indicador" deve ser do tipo "Normal"!');
                end
             else
                begin
                   ShowMessage('O tipo de movimento de estoque é de "Saída",' + #13 +
                             ' portanto o "Indicador" deve ser do tipo "Normal" ou "Transferência"!');
                end;
             cbbTipoEstoque.SetFocus;
             cbbTipoEstoque.Text := '';
             Abort;
           end;
      end;

   dmgeral.EST_CD_M_MAL.FieldByName('INT_INDICADORTME').AsInteger := dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger;
   dmgeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO_DEST').AsString := '';
   lblAlmDest.Visible := false;
   cbbAlmDest.Visible := false;
   if  ((dmgeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = True) and
       (dmgeral.EST_CD_M_MAL.FieldByName('INT_INDICADORTME').AsInteger = 2)) then
      BEGIN
        lblAlmDest.Visible := true;
        cbbAlmDest.Visible := true;
      END;



end;

procedure TEST_FM_M_MAL.ChamaCorTamanho;
begin
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanho.Visible := False;

        txtObservacao.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := 126;
            pnlCorTamanho.Top := txtItemDescricao.top;
            pnlCorTamanho.Width := 276;

            lblCor.Left         := 140;
            lblCor.Visible      := true;

            cbbCor.Visible     := True;
            cbbTamanho.Visible := True;
            lblTamanho.Left    := 4;
            lblTamanho.Visible := true;

            cbbCor.TabStop := True;
            cbbCor.Left := 140;
            cbbTamanho.TabStop := True;

            pnlCorTamanho.Visible := True;
            cbbTamanho.SetFocus;
          end
       else
          begin
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True then
               begin
                  // -- Sai Cor
                  pnlCorTamanho.Left  := 126;
                  pnlCorTamanho.Top   := txtItemDescricao.top;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := true;

                  cbbCor.Visible := False;
                  cbbCor.TabStop := False;
                  lblCor.Visible := false;

                  pnlCorTamanho.Visible := True;
                  cbbTamanho.SetFocus;
               end;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True then
               begin
                  // -- Sai Tamanho
                  pnlCorTamanho.Visible := True;
                  pnlCorTamanho.Left := 126;
                  pnlCorTamanho.Top := txtItemDescricao.top;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := false;

                  cbbTamanho.Visible := False;
                  cbbTamanho.TabStop := False;

                  cbbCor.Left := 4;
                  cbbCor.SetFocus;
                  lblCor.left := 4;
                  lblCor.Visible := true;
               end;
         end;
     end;
end;

procedure TEST_FM_M_MAL.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  if dmGeral.EST_CD_M_MAL.FieldByName('INT_INDICADORTME').AsInteger = 2 then
    begin
      lblAlmDest.Visible := true;
      cbbAlmDest.Visible := true;
    end
  else
    begin
      lblAlmDest.Visible := false;
      cbbAlmDest.Visible := false;
    end;
end;

procedure TEST_FM_M_MAL.dpkDataExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

   if dpkData.Text = '  /  /    ' then
     begin
       ShowMessage('O campo "data" deve ser preenchido');
       dpkData.SetFocus;
     end;
end;

procedure TEST_FM_M_MAL.ExcluirMovAlmox;
var
  Obj:TSMClient;
  lExisteNroLote: Boolean;
begin

 { lExisteNroLote := false;


  dmGeral.BusTipoEstoque(0,dmGeral.EST_CD_M_MALid_tipo_mov_estoque.text);

  if dmGeral.BUS_CD_C_TME.FieldByName('ESTO_MOVIMENTA').AsBoolean = true then
     begin
       if dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger = 0 then // Entrada
          ENT_EXCLUI_EST(5,dmGeral.EST_CD_M_MAL,dmGeral.EST_CD_M_MAL_ITE,xCdsItensAntigo);
       //else
       //  if dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger = 1 then // Saída
       //     SAI_EXCLUI_EST(3,dmGeral.EST_CD_M_MAL,dmGeral.EST_CD_M_MAL_ITE,xCdsItensAntigo);
     end;

  lExisteNroLote := ExisteItemComNroLot;

  dmGeral.BusTipoEstoque(0,dmGeral.EST_CD_M_MALid_tipo_mov_estoque.text);

  if dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger = 0 then
     begin
        try
        dmGeral.EST_CD_M_MAL.Delete;

        Obj := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        if dmGeral.BUS_CD_C_TME.FieldByName('ESTO_MOVIMENTA').AsBoolean = true then
           begin
             if lExisteNroLote then
                begin
                  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
                     TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_LOT,dmGeral.EST_CD_M_FES_ALM,dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.EST_CD_M_MAL])
                  else
                     TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_LOT,dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.EST_CD_M_MAL])
                end
             else
                begin
                  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
                     TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_FES_ALM,dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.EST_CD_M_MAL])
                  else
                      TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_FES,dmGeral.EST_CD_M_FEA,dmGeral.EST_CD_M_MAL]);
                end;
           end
        else
           TClientAllApplyUpdates.Execute(obj,[dmGeral.EST_CD_M_MAL]);
        finally
             Obj.Free;
             dmGeral.EST_CD_M_MAL.Close;
             dmGeral.EST_CD_M_MAL.Open;
        end;
       end;

  if dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger = 1 then
     begin
       dmGeral.EST_CD_M_MAL.Delete;
       dmGeral.EST_CD_M_MAL.ApplyUpdates(0);
     end;  }
end;

function TEST_FM_M_MAL.ExisteItemComNroLot: Boolean;
begin
  result := false;

  dmGeral.EST_CD_M_MAL_ITE.Cancel;
  dmGeral.EST_CD_M_MAL_ITE.First;
  while not dmGeral.EST_CD_M_MAL_ITE.eof do
     begin
       if trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString) <> '' then
          begin
            result := true;
            dmGeral.EST_CD_M_MAL_ITE.Last;
          end;
       dmGeral.EST_CD_M_MAL_ITE.Next;
     end;
  dmGeral.EST_CD_M_MAL_ITE.First;
end;

procedure TEST_FM_M_MAL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.EST_CD_M_MAL.Close;
  FreeAndNil(EST_FM_M_MAL);
end;

procedure TEST_FM_M_MAL.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.EST_CD_M_MAL.Close;
  dmGeral.EST_CD_M_MAL.Data := dmGeral.EST_CD_M_MAL.DataRequest(VarArrayOf([0, '']));
  dmGeral.EST_CD_M_MAL.Open;

  cbbPesquisa.ItemIndex := 0;
  cbbPesquisaChange(self);

  AbrirBuscas;
  dmGeral.AtualizarGridItens(grdItens,'int_nomeite',16,12);

  AcoesIniciais;

  Atualizar_xBusca;

  txtSaldo.Text := '';
  txtPesquisa.SetFocus;


  if dmGeral.CAD_CD_C_PAR_MOD.FieldByname('CTC').AsBoolean = true then
    begin
       lblEquip.Visible := true;
       txtEqp.Visible := true;
       txtDescEqp.Visible := true;
       txtVlrUnitario.Enabled := true;
       txtVlrUnitario.Color := clWhite;

       lblKmAtual.Visible := true;
       txtKmAtual.Visible := true;
    end
  else
    begin
       lblEquip.Visible := false;
       txtEqp.Visible := false;
       txtDescEqp.Visible := false;
       txtVlrUnitario.Enabled := false;
       txtVlrUnitario.Color := $00DADADA;

       lblKmAtual.Visible := false;
       txtKmAtual.Visible := false;
    end;

  EST_CD_M_MAL_ETQ.CreateDataSet;

end;

procedure TEST_FM_M_MAL.GerarEtiqueta;
var
i:integer;
begin
  inherited;
  dmGeral.EST_CD_M_MAL_ITE.First;
  while not dmGeral.EST_CD_M_MAL_ITE.Eof do
    begin
      for I := 1 to  dmGeral.EST_CD_M_MAL_ITE.FieldByName('qtde').AsInteger do
        begin
          EST_CD_M_MAL_ETQ.Insert;

          EST_CD_M_MAL_ETQ.FieldByName('id_item').AsString := dmGeral.EST_CD_M_MAL_ITE.FieldByName('id_item').AsString;
          EST_CD_M_MAL_ETQ.FieldByName('cod_barra').AsString := dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_cod_barra').AsString;
          EST_CD_M_MAL_ETQ.FieldByName('cod_fab').AsString := dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_cod_fabrica').AsString;
          EST_CD_M_MAL_ETQ.FieldByName('und').AsString := dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').AsString;
          EST_CD_M_MAL_ETQ.FieldByName('desc_item').AsString := dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').AsString;

          EST_CD_M_MAL_ETQ.Post;
        end;
      dmGeral.EST_CD_M_MAL_ITE.Next;
    end;
end;

procedure TEST_FM_M_MAL.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := false;
     if dmGeral.EST_CD_M_MAL_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.EST_CD_M_MAL_ITE.Delete;
     dmGeral.EST_CD_M_MAL_ITE.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TEST_FM_M_MAL.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnItens.Enabled = false then
     pnItens.Enabled := true;

  dmGeral.EST_CD_M_MAL_ITE.cancel;

  if dmGeral.EST_CD_M_MAL_ITE.IsEmpty then
     begin
       dmGeral.EST_CD_M_MAL_ITE.Append;
       pnItens.Enabled := true;
       txtBuscaItem.Enabled := true;
       txtBuscaItem.color   := clWhite;
       txtBuscaItem.SetFocus;
     end
  else
     begin
       dmGeral.EST_CD_M_MAL_ITE.Edit;
       pnItens.Enabled := true;
       txtBuscaItem.Enabled := false;
       txtBuscaItem.color   := $00DADADA;
       txtQtde.SetFocus;
     end;
end;

procedure TEST_FM_M_MAL.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
     begin
       cbbAlmoxarifado.Enabled := Estado;
       cbbAlmoxarifado.Color   := Cor;
       cbbAlmDest.Enabled      := Estado;
       cbbAlmDest.Color        := Cor;
     end;


  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
     begin
       txtReqOP.Enabled := Estado;
       txtReqOP.Color   := Cor;
       btn_Add_Itens.enabled    := Estado;
     end;

  dpkData.Enabled := Estado;
  dpkData.Color   := Cor;



  txtSaldo.Text := '';
end;

procedure TEST_FM_M_MAL.PassarCdsAnterior;
begin
  if xCdsItensAntigo <> nil then
     begin
       xCdsItensAntigo.Destroy;
       xCdsItensAntigo := nil;
     end;
  xCdsItensAntigo       := TClientDataSet.Create(self);
  xCdsItensAntigo.Data  := dmGeral.EST_CD_M_MAL_ITE.Data;
  xCdsItensAntigo.GotoCurrent(dmGeral.EST_CD_M_MAL_ITE);
end;

procedure TEST_FM_M_MAL.pnItensExit(Sender: TObject);
var
  saldo_fisico: String;
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

        dmGeral.EST_CD_M_MAL_ITE.Cancel;
        dmGeral.EST_CD_M_MAL_ITE.edit;

        if not dmGeral.EST_CD_M_MAL_ITE.IsEmpty then
           begin
             txtSaldo.Text := '';
             if trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').Text) <> '' then
                begin
                   if trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').text) <> '' then
                      begin
                          dmGeral.BusLoteItem(dmGeral.EST_CD_M_MAL.FieldByName('ID_EMPRESA').text,
                                              dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').text,
                                              dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').text,
                                              dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').text,
                                              dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').text,
                                              dmGeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO').text);
                          if not dmGeral.EST_CD_M_LOT.IsEmpty then
                             txtSaldo.Text := dmGeral.EST_CD_M_LOTqtde_atual.text;
                      end
                   else
                      begin
                         if dmGeral.BusSaldoItem(dmGeral.EST_CD_M_MAL.FieldByName('ID_EMPRESA').Text,
                            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').Text,
                            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').Text,
                            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').Text,
                            dmGeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO').Text,
                            saldo_fisico) then
                            begin
                               txtSaldo.Text := saldo_fisico;
                            end;
                      end;
                end;
           end;
        finally
           pnItens.Enabled := false;
        end;
      end;
end;

procedure TEST_FM_M_MAL.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
  if (xbusca_item = 'N_LOTE') then
    begin
      ShowMessage('Não é possível pesquisar itens a partir do Nº lote');
      exit;
    end;


  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsInteger :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

       dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
  PSQ_FM_X_ITE.Free;
end;

procedure TEST_FM_M_MAL.txtBuscaItemEnter(Sender: TObject);
begin
  inherited;
  txtSaldo.Text := '';
end;

procedure TEST_FM_M_MAL.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item, int_tipo_item : string;
  tipo_item: integer;
  desc_cor, desc_tam, id_cor, id_tamanho, num_lote,msg : string;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;


  if dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
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

       if (txtQtde.Focused) or (txtObservacao.Focused) or
          (txtQtde.Focused) or (txtNroLote.Focused) then
           begin
             ShowMessage('O campo "Item" deve ser prenchido.');
             txtBuscaItem.SetFocus;
             exit;
           end
       else
           begin
             pnItens.Enabled := false;
             exit;
           end;
     end
  else
     begin
       if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('utiliza_almoxarifado').AsBoolean = true then
          begin
             msg := '';
             if (dmGeral.EST_CD_M_MAL.FieldByName('id_almoxarifado').AsInteger = 0)   or
                (trim(dmGeral.EST_CD_M_MAL.FieldByName('id_almoxarifado').text) = '') then
                begin
                  msg := 'O campo "Almoxarifado" deve ser preenchido.'+#13+#10;
                end;
             if (dmGeral.EST_CD_M_MAL.FieldByName('int_indicadortme').AsInteger = 2) and
                ((dmGeral.EST_CD_M_MAL.FieldByName('id_almoxarifado_dest').AsInteger = 0)   or
                (trim(dmGeral.EST_CD_M_MAL.FieldByName('id_almoxarifado_dest').text) = '')) then
                begin
                  msg := 'O campo "Alm. Dest" deve ser preenchido.'+#13+#10;
                end;

             if (msg <> '') then
                begin
                  ShowMessage(msg);
                  dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').Text          := '';
                  dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').Text    := '';
                  dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').Text      := '';
                  dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').Text := '';
                  abort;
                end;
          end;

       if (dmGeral.EST_CD_M_MAL.FieldByName('id_tipo_mov_estoque').AsInteger = 0)   or
          (trim(dmGeral.EST_CD_M_MAL.FieldByName('id_tipo_mov_estoque').text) = '') then
          begin
            ShowMessage('O campo "Tipo de estoque" deve ser preenchido.');
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').Text          := '';
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').Text    := '';
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').Text      := '';
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').Text := '';
            abort;
          end;

       if dmGeral.EST_CD_M_MAL_ITE.state in [dsBrowse] then
          dmGeral.EST_CD_M_MAL_ITE.edit;
     end;


  dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').Text := '';
  dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').Text  := '';

  if xbusca_item = 'ID_ITEM' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtBuscaItem.Text]));
     end;
  if xbusca_item = 'COD_BARRA'  then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([2, txtBuscaItem.Text]));
     end;
  if xbusca_item = 'COD_FABRICA' then
     begin
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([3, txtBuscaItem.Text]));
     end;



  //Inseri if para evitar que execute as seguintes instruções quando BUSCA_ITEM for N_LOTE.Responsavél:Luan.Data:22/06/2015
  if (xbusca_item <> 'N_LOTE') then
    begin
      if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
        begin
          txtBuscaItem.SetFocus;
         // dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').Text := '';
          //dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').Text  := '';

           dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEITE').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEUND').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').AsString := '0';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString := '0';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString := '';

          exit;
        end;

      dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').Text :=
          dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

      dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').Text :=
          dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

      dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').Text :=
          dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

      dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
          trim(dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString);

      try
         pnItens.onExit := nil;
         ChamaCorTamanho;
      finally
         pnItens.OnExit := pnItensExit;
      end;
    end;
   //Fim

  //Busca o preço na tabela de preço conforme item e tabela do cliente


  //Tratamento para verificação do Nº do lote
  if (xbusca_item = 'N_LOTE') then
     begin
     try
       pnItens.onExit := nil;
       if (trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString) <> '') then
         begin
          dmGeral.EST_CD_M_LOT.Data :=
                dmGeral.EST_CD_M_LOT.DataRequest(VarArrayOf([16, dmGeral.EST_CD_M_MAL.FieldByName('ID_EMPRESA').AsString,
                                                         trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString)]));

          if dmGeral.EST_CD_M_LOT.IsEmpty then
             begin
               Showmessage('O registro de saldo deste lote não foi encontrado.');
               dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '';
               dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString := '';
               dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString := '';
               dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEITE').AsString := '';
               dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEUND').AsString := '';
               dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').AsString := '0';
               dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString := '0';
               dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString := '';
               dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString := '';
               dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_TIPO_ITEM').AsString := '';
               txtBuscaItem.SetFocus;
               abort;
             end;
         end;

       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.EST_CD_M_LOT.FieldByName('ID_ITEM').AsString]));

       if (dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger = 4) then
         begin
           ShowMessage('Digitação de nº do lote não é permitido para este item.');
           dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '';
           dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString := '';
           dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString := '';
           dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEITE').AsString := '';
           dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEUND').AsString := '';
           dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').AsString := '0';
           dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString := '0';
           dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString := '';
           dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString := '';
           dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_TIPO_ITEM').AsString := '';
           txtBuscaItem.SetFocus;
           exit;
         end;

       dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString    := trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString);
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString     := dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEITE').AsString   := dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEUND').AsString   := dmGeral.BUS_CD_C_ITE.FieldByName('ID_UND_COMPRA').AsString;
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
               trim(dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString);
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').AsString        := dmGeral.EST_CD_M_LOT.FieldByName('ID_COR').AsString;


       dmGeral.BusCor(0,dmGeral.EST_CD_M_LOT.FieldByName('ID_COR').AsString);
       if (not dmGeral.BUS_CD_C_COR.IsEmpty) then
         begin
           dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString :=
                   dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString;
         end;
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString := dmGeral.EST_CD_M_LOT.FieldByName('ID_TAMANHO').AsString;
       dmGeral.BusTamanho(0,dmGeral.EST_CD_M_LOT.FieldByName('ID_TAMANHO').AsString);
       if (not dmGeral.BUS_CD_C_TAM.IsEmpty) then
         begin
           dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString :=
                   dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').AsString;
         end;

       if dmGeral.EST_CD_M_MAL_ITE.State in [dsInsert] then
         begin
          pnItens.Enabled := true;

          id_item       := dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString;
          id_busca_item := dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
          desc          := dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').AsString;
          und           := dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').AsString;
          id_cor        := dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').AsString;
          id_tamanho    := dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString;
          num_lote      := dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString;
          desc_cor      := dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString;
          desc_tam      := dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString;
          int_tipo_item := dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_TIPO_ITEM').AsString;

          dmGeral.EST_CD_M_MAL_ITE.cancel;

          if trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('num_lote').AsString) <> '' then
            begin
              if(dmGeral.LocalizarRegItem(dmGeral.EST_CD_M_MAL_ITE,EST_FM_M_MAL.Name,id_item,id_cor,id_tamanho,
                  dmGeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO').Text,num_lote)) or
                 (dmGeral.EST_CD_M_MAL_ITE.Locate('NUM_LOTE', num_lote,[])) then
                  begin
                    ShowMessage('Este nro de lote já foi digitado em outro registro.');
                    dmGeral.EST_CD_M_MAL_ITE.Insert;
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString       := '';
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '';
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').AsString   := '';
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').AsString   := '';
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('id_cor').AsString        := '0';
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString    := '0';
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('num_lote').AsString      := '';
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString   := '';
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString   := '';
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_TIPO_ITEM').AsString := '';
                    txtBuscaItem.SetFocus;
                    abort;
                  end;
            end;

            dmGeral.EST_CD_M_MAL_ITE.Insert;
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString       := id_item;
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').AsString   := desc;
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').AsString   := und;
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('id_cor').AsString        := id_cor;
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString    := id_tamanho;
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('num_lote').AsString      := num_lote;
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;
            dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_TIPO_ITEM').AsString := int_tipo_item;

            ActiveControl := nil;
            PostMessage(txtQtde.Handle, WM_SETFOCUS, 0, 0);
            txtQtde.SetFocus;
       end;
     finally
       pnItens.OnExit := pnItensExit;
     end;
     end;
  //Fim


  {try
   pnItens.onExit := nil;

   ChamaCorTamanho;
  finally
     pnItens.OnExit := pnItensExit;
  end; }
end;

procedure TEST_FM_M_MAL.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TEST_FM_M_MAL.txtEqpButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_MEQ := TPSQ_FM_X_MEQ.Create(Self);
  PSQ_FM_X_MEQ.ShowModal;
  if not PSQ_FM_X_MEQ.BUS_CD_C_MEQ.IsEmpty then
     begin
        dmGeral.EST_CD_M_MAL.FieldByName('id_equipamento').Text :=
                PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('id_meq').AsString;
        dmGeral.EST_CD_M_MAL.FieldByName('int_nomeqp').Text :=
                trim(PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('descricao').AsString);
     end;
   PSQ_FM_X_MEQ.BUS_CD_C_MEQ.Close;
   PSQ_FM_X_MEQ.Free;
end;

procedure TEST_FM_M_MAL.txtEqpExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  dmGeral.EST_CD_M_MAL.FieldByName('int_nomeqp').Text := '';

  if (trim(dmGeral.EST_CD_M_MAL.FieldByName('id_equipamento').AsString) <> '') then
    begin
      dmGeral.BUS_CD_C_MEQ.Close;
      dmGeral.BUS_CD_C_MEQ.Data :=
      dmGeral.BUS_CD_C_MEQ.DataRequest(
          VarArrayOf([0,dmGeral.EST_CD_M_MAL.FieldByName('id_equipamento').AsString]));

      if dmGeral.BUS_CD_C_MEQ.IsEmpty then
       begin
         ShowMessage('Equipamento não encontrado.');
         dmGeral.EST_CD_M_MAL.FieldByName('id_equipamento').Text := '';
         txtEqp.SetFocus;
         Exit;
       end
     else
       begin
         dmGeral.EST_CD_M_MAL.FieldByName('int_nomeqp').Text :=
                      dmGeral.BUS_CD_C_MEQ.FieldByName('descricao').AsString;
       end;
    end;
end;

procedure TEST_FM_M_MAL.txtEtiquetaExit(Sender: TObject);
Var
i:Integer;
begin
  inherited;
  if (txtEtiqueta.Text = '0') or (txtEtiqueta.Text = '') then
    begin
      Showmessage('Impressão Cancelada!');
      pnlEtiqueta.Visible := False;
      exit;
    end;

  if StrToInt(txtEtiqueta.Text) <= 30  then
    begin
      EST_CD_M_MAL_ETQ.EmptyDataSet;
      for I := 1 to (30 - StrToInt(txtEtiqueta.Text)) do
        begin
          EST_CD_M_MAL_ETQ.Insert;
          EST_CD_M_MAL_ETQ.FieldByName('id_item').AsString := '0';
          EST_CD_M_MAL_ETQ.Post;
        end;
    end
  else
    begin
      Showmessage('Deve-se utilizar papel "Carta" com 30 etiquetas.');
      txtEtiqueta.SetFocus;
      exit;
    end;

  pnlEtiqueta.Visible := False;

  GerarEtiqueta;

  EST_CD_M_MAL_ETQ.IndexFieldNames := 'id_item';
  EST_FR_M_MAL_ETQ.PrepareReport();
  EST_FR_M_MAL_ETQ.ShowReport();
end;

procedure TEST_FM_M_MAL.txtNroLoteExit(Sender: TObject);
var
  id_item,tipo_item,desc, desc_cor, desc_tam, und, id_busca_item, id_cor, id_tamanho, num_lote : string;
begin
  inherited;

  try
  pnItens.onExit := nil;

  dmGeral.BUS_CD_C_ITE.Close;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       abort;
     end;

    if btn_Add_Itens.Focused or
       txtObservacao.Focused or
       txtBuscaItem.Focused or grdItens.Focused then
     begin
       abort;
     end;

    dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString]));

    if (trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString) = '') then
       begin
         if (dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger <> 4) then
            begin
              if txtNroLote.CanFocus then // esse if foi necessário devido o Botão de Exclusão do grid, que tava gerando mensagem desnecessária.
                 begin
                   ShowMessage('O campo "nro do lote" deve ser preenchido.');
                   txtNroLote.SetFocus;
                   exit;
                 end;
            end;
       end
    else
       begin
         if (dmGeral.BUS_CD_C_ITE.FieldByName('GERACAO_LOTE_INTERNO').AsInteger = 4) then
            begin
              ShowMessage('Digitação de nº do lote não é permitido para este item.');
              dmGeral.EST_CD_M_MAL_ITE.FieldByName('num_lote').AsString      := '';
              txtNroLote.SetFocus;
              exit;
            end;
       end;

    if (trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString) <> '') then
       begin
          dmGeral.BusLoteItem(dmGeral.EST_CD_M_MAL.FieldByName('ID_EMPRESA').text,
                              dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').text,
                              dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').text,
                              dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').text,
                              dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').text,
                              dmGeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO').text);
          if dmGeral.EST_CD_M_LOT.IsEmpty then
             begin
               Showmessage('O registro de saldo deste lote não foi encontrado.');
               dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').text := '';
               txtNroLote.SetFocus;
               abort;
             end
       end;

  if dmGeral.EST_CD_M_MAL_ITE.State in [dsInsert] then
     begin
       pnItens.Enabled := true;

       id_item       := dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString;
       id_busca_item := dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
       desc          := dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').AsString;
       und           := dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').AsString;
       id_cor        := dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').AsString;
       id_tamanho    := dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString;
       num_lote      := dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString;
       desc_cor      := dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString;
       desc_tam      := dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString;
       tipo_item     := dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_TIPO_ITEM').AsString;

       dmGeral.EST_CD_M_MAL_ITE.cancel;

       if trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('num_lote').AsString) <> '' then
          begin
             if  (dmGeral.LocalizarRegItem(dmGeral.EST_CD_M_MAL_ITE,EST_FM_M_MAL.Name,id_item,id_cor,id_tamanho,
                  dmGeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO').Text,num_lote)) or

                 (dmGeral.EST_CD_M_MAL_ITE.Locate('NUM_LOTE', num_lote,[])) then
                  begin
                    ShowMessage('Este nro de lote já foi digitado em outro registro.');
                    dmGeral.EST_CD_M_MAL_ITE.Insert;
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString       := id_item;
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').AsString   := desc;
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').AsString   := und;
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('id_cor').AsString        := id_cor;
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString    := id_tamanho;
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('num_lote').AsString      := '';
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;
                    txtNroLote.SetFocus;
                    abort;
                  end;
          end;
       dmGeral.EST_CD_M_MAL_ITE.Insert;
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString       := id_item;
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString := id_busca_item;
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeite').AsString   := desc;
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('int_nomeund').AsString   := und;
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('id_cor').AsString        := id_cor;
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString    := id_tamanho;
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('num_lote').AsString      := num_lote;
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString   := desc_cor;
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString   := desc_tam;
       dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_TIPO_ITEM').AsString := tipo_item;

       ActiveControl := nil;
       PostMessage(txtQtde.Handle, WM_SETFOCUS, 0, 0);
       txtQtde.SetFocus;
     end;

  finally
     pnItens.OnExit := pnItensExit;
  end;
end;

procedure TEST_FM_M_MAL.txtObservacaoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     grdItens.Focused  then
     begin
       exit;
     end;

end;

procedure TEST_FM_M_MAL.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TEST_FM_M_MAL.txtQtdeEnter(Sender: TObject);
var
  saldo_fisico: String;
begin
  inherited;

  txtSaldo.Text := '';

  {dmGeral.BusTipoEstoque(0,dmGeral.EST_CD_M_MAL.FieldByName('ID_TIPO_MOV_ESTOQUE').text);
  if not (dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger in [1]) then    // Saída
      begin
        exit;
      end;}

  if dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_TIPO_ITEM').AsString = '09' then
    begin
      txtSaldo.Text := '0';
      exit;
    end;

  if trim(dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').text) <> '' then
     begin
        dmGeral.BusLoteItem(dmGeral.EST_CD_M_MAL.FieldByName('ID_EMPRESA').text,
                            dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').text,
                            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').text,
                            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').text,
                            dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').text,
                            dmGeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO').text);
        if dmGeral.EST_CD_M_LOT.IsEmpty then
           begin
             Showmessage('O registro de saldo do lote não foi encontrado');
             if (xbusca_item = 'N_LOTE') then
               begin
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEITE').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEUND').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString := '';
                 txtBuscaItem.SetFocus;
               end;

             if (xbusca_item <> 'N_LOTE') then
               begin
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString := '';
                 if txtNroLote.CanFocus then
                    txtNroLote.SetFocus;
               end;

             //txtBuscaItem.SetFocus;
             abort;
           end
        else
           txtSaldo.Text := dmGeral.EST_CD_M_LOTqtde_atual.text;
     end
  else
     begin
        if not dmGeral.BusSaldoItem(dmGeral.EST_CD_M_MAL.FieldByName('ID_EMPRESA').Text,
                                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').Text,
                                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').Text,
                                    dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').Text,
                                    dmGeral.EST_CD_M_MAL.FieldByName('ID_ALMOXARIFADO').Text,
                                    saldo_fisico) then
           begin
             Showmessage('O registro de saldo não foi encontrado');

             if (xbusca_item = 'N_LOTE') then
               begin
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEITE').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMEUND').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMECOR').AsString := '';
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_NOMETAM').AsString := '';
                 txtBuscaItem.SetFocus;
               end;

             if (xbusca_item <> 'N_LOTE') then
               begin
                 dmGeral.EST_CD_M_MAL_ITE.FieldByName('NUM_LOTE').AsString := '';
                 if txtBuscaItem.CanFocus then
                    txtBuscaItem.SetFocus
                 else
                    txtObservacao.SetFocus;
               end;

             //txtBuscaItem.SetFocus;
             abort;
           end
        else
           begin
             txtSaldo.Text := saldo_fisico;
           end;
     end;
end;

procedure TEST_FM_M_MAL.txtQtdeExit(Sender: TObject);
var
  vlr_custo_medio:Currency;
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or  txtNroLote.Focused or
     grdItens.Focused or txtObservacao.Focused then
     begin
       exit;
     end;

  if not (dmGeral.TesValQtde(dmGeral.EST_CD_M_MAL_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end;


  if dmGeral.EST_CD_M_MAL_ITE.FieldByName('INT_TIPO_ITEM').AsString<>'09' then
    begin
      if dmGeral.BusCustoMedItem(dmGeral.EST_CD_M_MAL.FieldByName('ID_EMPRESA').Text,
                               dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').Text,
                               dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_COR').Text,
                               dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_TAMANHO').Text,
                               vlr_custo_medio) then
          dmgeral.EST_CD_M_MAL_ITE.FieldByName('VLR_UNITARIO').AsCurrency := vlr_custo_medio
      else
          dmgeral.EST_CD_M_MAL_ITE.FieldByName('VLR_UNITARIO').AsCurrency := 0;
    end
  else
    begin

       dmGeral.BUS_CD_C_ITE.Close;
       dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0,
                           dmGeral.EST_CD_M_MAL_ITE.FieldByName('ID_ITEM').AsString]));

       dmgeral.EST_CD_M_MAL_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=
                   dmGeral.BUS_CD_C_ITE.FieldByName('PRECO_AVISTA').AsCurrency;

    end;

  dmGeral.EST_CD_M_MAL_ITE.FieldByName('VLR_TOTAL').AsCurrency :=
                     dmgeral.EST_CD_M_MAL_ITE.FieldByName('VLR_UNITARIO').AsCurrency*
                     dmgeral.EST_CD_M_MAL_ITE.FieldByName('QTDE').AsCurrency;

  if not txtVlrUnitario.CanFocus then
    begin
      dmGeral.EST_CD_M_MAL_ITE.Post;
      pnItens.Enabled := false;
      // Por Maxsuel Victor, 04/09/2016
      // If colocado depois do surgimento do campo Requisição da O.P
      if btn_Add_Itens.canfocus then
         btn_Add_Itens.SetFocus;
    end;
end;

procedure TEST_FM_M_MAL.txtReqOPExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused    then
       begin
         exit;
       end;

  if dmGeral.EST_CD_M_MAL.FieldByName('ID_OPR_REQ').Text <> '' then
       begin

          BUS_CD_M_OPR_REQ_ITE.Close;
          BUS_CD_M_OPR_REQ_ITE.Data :=
                    BUS_CD_M_OPR_REQ_ITE.DataRequest(VarArrayOf([1, dmGeral.EST_CD_M_MAL.FieldByName('ID_OPR_REQ').AsString]));
          if BUS_CD_M_OPR_REQ_ITE.IsEmpty then
             begin
               ShowMessage('Requisição não encontrada.');
               exit;
             end;

          dmGeral.EST_CD_M_MAL.FieldByName('ID_OPR').Text :=
              BUS_CD_M_OPR_REQ_ITE.FieldByName('ID_OPR').Text;

          EST_FM_M_MAL_COF := TEST_FM_M_MAL_COF.Create(Self);
          EST_FM_M_MAL_COF.ShowModal;
          EST_FM_M_MAL_COF.Free;
       end;

end;

procedure TEST_FM_M_MAL.txtVlrUnitarioExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or  txtNroLote.Focused or
     grdItens.Focused or txtObservacao.Focused or txtQtde.Focused then
     begin
       exit;
     end;

  if (dmGeral.EST_CD_M_MAL_ITE.FieldByName('VLR_UNITARIO').AsString='') then
     begin
       ShowMessage('O campo "Vlr.Unitário" deve ser preenchido.');
       txtVlrUnitario.SetFocus;
       exit;
     end;

  if (not (dmGeral.EST_CD_M_MAL_ITE.FieldByName('VLR_UNITARIO').AsCurrency>0)) then
     begin
       ShowMessage('O campo "Vlr.Unitário" deve ser maior que zero.');
       txtVlrUnitario.Text := '';
       txtVlrUnitario.SetFocus;
       exit;
     end;

  dmGeral.EST_CD_M_MAL_ITE.FieldByName('VLR_TOTAL').AsCurrency :=
                     dmgeral.EST_CD_M_MAL_ITE.FieldByName('VLR_UNITARIO').AsCurrency*
                     dmgeral.EST_CD_M_MAL_ITE.FieldByName('QTDE').AsCurrency;

  dmGeral.EST_CD_M_MAL_ITE.Post;
  pnItens.Enabled := false;
  // Por Maxsuel Victor, 04/09/2016
  // If colocado depois do surgimento do campo Requisição da O.P
  if btn_Add_Itens.canfocus then
     btn_Add_Itens.SetFocus;
end;

end.
