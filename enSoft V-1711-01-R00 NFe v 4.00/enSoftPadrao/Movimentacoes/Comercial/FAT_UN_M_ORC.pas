unit FAT_UN_M_ORC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvExMask, JvToolEdit, JvDBControls, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, vcl.wwdblook,
  Vcl.DBGrids, JvExExtCtrls, JvExtComponent, JvPanel, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, frxExportXLS, frxClass, frxExportPDF, frxDBSet,
  Datasnap.DBClient, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  vcl.Wwdbedit, enFunc, System.Math;

type
  TFAT_FM_M_ORC = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblCliente: TLabel;
    txtCodigo: TDBEdit;
    txtCliente: TJvDBComboEdit;
    lblDataEntrega: TLabel;
    lblDataValidade: TLabel;
    lblData: TLabel;
    lblFormaPagamento: TLabel;
    cbbFormaPagamento: TwwDBLookupCombo;
    lblCondicaoPagamento: TLabel;
    cbbCondicaoPagamento: TwwDBLookupCombo;
    lblObservacao: TLabel;
    txtObservacao: TDBMemo;
    gbItens: TGroupBox;
    btn_Add_Itens: TBitBtn;
    grdItens: TwwDBGrid;
    dsItens: TwwDataSource;
    lblVlrDesconto2: TLabel;
    txtVlrDesc2: TDBEdit;
    txtVlrDesconto3: TDBEdit;
    lblVlrDesconto3: TLabel;
    lblVlrProdLiquido: TLabel;
    txtVlrProdLiquido: TDBEdit;
    txtClienteNome: TDBText;
    lblVlrServicoLiquido: TLabel;
    txtVlrServicoLiquido: TDBEdit;
    pnItens: TPanel;
    lblItem: TLabel;
    txtBuscaItem: TJvDBComboEdit;
    txtItemDescricao: TDBText;
    lblDescricao: TLabel;
    Label1: TLabel;
    txtUnidade: TDBText;
    txtQtde: TDBEdit;
    lblQtde: TLabel;
    lblVlrUnitario: TLabel;
    txtVlrUnitario: TDBEdit;
    lblPerDesconto: TLabel;
    lblVlrDesconto: TLabel;
    txtVlrDesconto: TDBEdit;
    txtVlrTotal: TDBEdit;
    lblVlrTotal: TLabel;
    lblVlrServico: TLabel;
    txtVlrServico: TDBEdit;
    lblVlrProduto: TLabel;
    txtVlrProduto: TDBEdit;
    lblVlrTotal2: TLabel;
    txtVlrTotal2: TDBEdit;
    grdItensIButton: TwwIButton;
    dpkData: TJvDBDateEdit;
    lblAtendente: TLabel;
    dpkDataValidade: TJvDBDateEdit;
    dpkDataEntrega: TJvDBDateEdit;
    txtAtendenteNome: TDBText;
    txtAtendente: TDBEdit;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    Panel1: TPanel;
    pnlLegenda: TGroupBox;
    pnlAberto: TPanel;
    lblAberto: TLabel;
    lblImportado: TLabel;
    Panel2: TPanel;
    btnAtualizaCont: TBitBtn;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    FAT_FR_R_ORC: TfrxReport;
    FAT_DB_M_ORC1: TfrxDBDataset;
    FAT_PD_R_ALM: TfrxPDFExport;
    FAT_XL_R_ALM: TfrxXLSExport;
    FAT_DB_M_ORC_ITE1: TfrxDBDataset;
    txtPerDesconto: TDBEdit;
    txtPesquisaData: TJvDateEdit;
    mmPcpObsIte: TDBMemo;
    lblMedida: TLabel;
    lblItemSobMed: TLabel;
    txtPcpObsItem: TDBMemo;
    lblPerDescBasc: TLabel;
    txtPercDescBasc: TwwDBEdit;
    txtDescBasc: TwwDBEdit;
    lblDescBasc: TLabel;
    lblPerDescEspecial: TLabel;
    txtPercDescEspecial: TwwDBEdit;
    txtDescEspecial: TwwDBEdit;
    lblDescEspecial: TLabel;
    txtVlrBruto: TwwDBEdit;
    lblBruto: TLabel;
    lblPerDesc: TLabel;
    txtPerDesc: TwwDBEdit;
    lblVlrDesc: TLabel;
    txtTotalVlrDesc: TwwDBEdit;
    lblFrete: TLabel;
    txtFrete: TwwDBEdit;
    lblTotalPed: TLabel;
    wwDBEdTotalLiqItens: TwwDBEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtClienteButtonClick(Sender: TObject);
    procedure txtClienteExit(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure cbbFormaPagamentoEnter(Sender: TObject);
    procedure cbbCondicaoPagamentoEnter(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure txtVlrUnitarioExit(Sender: TObject);
    procedure txtPerDescontoExit(Sender: TObject);
    procedure txtVlrDescontoExit(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbCorExit(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure txtTamanhoExit(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnAtualizaContClick(Sender: TObject);
    procedure txtPerDescontoEnter(Sender: TObject);
    procedure txtVlrDescontoEnter(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure txtVlrUnitarioEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mmPcpObsIteEnter(Sender: TObject);
    procedure mmPcpObsIteExit(Sender: TObject);
    procedure FAT_DB_M_ORC_ITE1CheckEOF(Sender: TObject; var Eof: Boolean);
    procedure txtPercDescBascEnter(Sender: TObject);
    procedure txtPercDescBascExit(Sender: TObject);
    procedure txtDescBascExit(Sender: TObject);
    procedure txtDescBascEnter(Sender: TObject);
    procedure txtPercDescEspecialExit(Sender: TObject);
    procedure txtPercDescEspecialEnter(Sender: TObject);
    procedure txtDescEspecialEnter(Sender: TObject);
    procedure txtDescEspecialExit(Sender: TObject);
    procedure txtTotalVlrDescExit(Sender: TObject);
    procedure txtTotalVlrDescEnter(Sender: TObject);
    procedure txtQtdeEnter(Sender: TObject);
  private
    { Private declarations }
    function BtnAdicItemFocused: Boolean;
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    procedure DesabilitarCampos(Estado: Boolean; Cor: TColor);
    procedure HabilitarCampos(Estado: Boolean; Cor: TColor);
    procedure Atualizar_xBusca;
    procedure ChamaCorTamanho;
    procedure AtualizarGridItens(grdItens: TwwDBGrid; NomeColItem: String; TamLargCor, TamLargTam: Integer);
    procedure AtivarDesativarTabStopsDosDescontos(estado: Boolean);
    var
      xVlrDescIteAnterior, xPerDescIteAnterior: Currency;
      xPercDescPermRegIte,vlrDescTotalAnt,vlrDescBasicTotalAnt,
      PerDescEspecialTotalAnt, vlrDescEspecialTotalAnt: Currency;
      clienteConsumidor:Boolean;
      vlrLiqIteAnt:Currency;
      HabilitarVlrDesc:Boolean;
      PerDescBasicTotalAnt : Currency;
  public
    { Public declarations }
    var
       xbusca_item: String;
  end;

var
  FAT_FM_M_ORC: TFAT_FM_M_ORC;
  xQtdeAnterior: currency;
  xPercDescPerm: Currency;
  xint_unif_desc_reg: Boolean;
implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, PSQ_UN_X_ITE, Vcl.RecError,
  FAT_RN_M_ORC, FAT_RN_M_NFE, FAT_UN_M_PED_SEN,uProxy;

procedure TFAT_FM_M_ORC.acAdicionaExecute(Sender: TObject);
begin
  if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_fat_orc_id_condicao_pag').AsString = '' then
     begin
       ShowMessage('Condição de pagamento para orçamento não está nos parâmetros.');
     end;


  inherited;

  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_ORC);

  dmGeral.FAT_CD_M_ORC.FieldByName('ID_FUNCIONARIO').AsInteger := xFuncionario;

  if dmGeral.CAD_CD_C_FUN.FieldByName('vnd_interno_externo').AsInteger = 1 then  // Se for vendedor externo
     begin
        if trim(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_fat_orc_id_condicao_pag').AsString) <> ''  then
           begin
             dmGeral.FAT_CD_M_ORC.FieldByName('ID_CONDICAO_PAG').AsString :=
                dmgeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_fat_orc_id_condicao_pag').AsString;
           end;
     end;

  if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end;

  HabilDesabCampos(true,clWindow);
  btnAtualizaCont.Enabled := false;
  pnItens.Enabled := false;
  clienteConsumidor := false;
  txtCliente.SetFocus;
end;

procedure TFAT_FM_M_ORC.acAlterarExecute(Sender: TObject);
begin

 clienteConsumidor := false;
 if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_ORC) then
    begin
      inherited;
      pnItens.Enabled := false;
      HabilDesabCampos(false,$00DADADA);

      btnAtualizaCont.Enabled := false;

      dmGeral.BusCliente(0,dmGeral.FAT_CD_M_ORC.FieldByName('ID_CLIENTE').AsString);

      xint_unif_desc_reg := dmGeral.BUS_CD_C_CLI.FieldByName('int_unif_desc_reg').AsBoolean;

      if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CLIENTE').AsString <> '') and
         (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CLIENTE').AsInteger =
          dmGeral.FAT_CD_M_ORC.FieldByName('ID_CLIENTE').AsInteger)   then
         begin
           clienteConsumidor := true;
         end;

      txtObservacao.SetFocus;
    end;

 if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end;

end;

procedure TFAT_FM_M_ORC.acCancelarExecute(Sender: TObject);
begin
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_ORC) then
      begin
        inherited;
        btnAtualizaCont.Enabled := true;
        dbGrid.SetFocus;
        if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = false) then
            begin
              txtTotalVlrDesc.enabled := true;
              //txtTotalVlrDesc.ReadOnly := false;
              txtTotalVlrDesc.Color := clWhite;
            end;
      end
   else
      begin
        txtObservacao.SetFocus;
      end;
end;

procedure TFAT_FM_M_ORC.acExcluirExecute(Sender: TObject);
begin
  if FAT_CD_M_ORC_TesPermExclusao  then
     begin
       inherited;
       Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_ORC);
     end;
end;

procedure TFAT_FM_M_ORC.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin

  FatOrcRatearDescBasico_Especial;

  if FAT_CD_M_ORC_TesCampos then
     begin
        if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
             codigo := dmGeral.FAT_CD_M_ORC.FieldByName('ID_ORCAMENTO').AsString;

             DmGeral.Grava(dmGeral.FAT_CD_M_ORC);
             inherited;

             dmGeral.FAT_CD_M_ORC.Close;
             dmGeral.FAT_CD_M_ORC.Data :=
             dmGeral.FAT_CD_M_ORC.DataRequest(
                     VarArrayOf([0,dmGeral.CAD_CD_C_PARid_empresa.Text, codigo]));

             if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = false) then
                 begin
                   txtTotalVlrDesc.enabled := true;
                   txtTotalVlrDesc.ReadOnly := false;
                   txtTotalVlrDesc.Color := clWhite;
                 end;

             btnAtualizaCont.Enabled := true;
           end
        else
           begin
             if txtCliente.CanFocus then
                txtCliente.SetFocus;
             if txtObservacao.CanFocus then
                txtObservacao.SetFocus;
           end;
     end
  else
     begin
       if txtCliente.CanFocus then
          txtCliente.SetFocus;
       if txtObservacao.CanFocus then
          txtObservacao.SetFocus;
     end;
end;

procedure TFAT_FM_M_ORC.AtivarDesativarTabStopsDosDescontos(estado: Boolean);
begin
  txtPercDescBasc.TabStop := estado;
  txtDescBasc.TabStop := estado;
  txtPercDescEspecial.TabStop := estado;
  txtDescEspecial.TabStop := estado;
end;

procedure TFAT_FM_M_ORC.AtualizarGridItens(grdItens: TwwDBGrid;
  NomeColItem: String; TamLargCor, TamLargTam: Integer);
begin
  grdItens.ColumnByName(NomeColItem).DisplayWidth :=
      (grdItens.ColumnByName(NomeColItem).DisplayWidth + TamLargCor + TamLargTam);

 if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean=true) and
    (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean=true) then
    begin
      grdItens.ColumnByName(NomeColItem).DisplayWidth :=
      (grdItens.ColumnByName(NomeColItem).DisplayWidth - (TamLargCor + TamLargTam));
    end
 else
    begin
       if (dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_cor').AsBoolean = true) then
          begin
            grdItens.ColumnByName(NomeColItem).DisplayWidth :=
                  (grdItens.ColumnByName(NomeColItem).DisplayWidth - TamLargCor);

            grdItens.ColumnByName('int_nometam').Visible := false;
          end
       else
          begin
             if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('ativa_tamanho').AsBoolean = true then
                begin
                  grdItens.ColumnByName(NomeColItem).DisplayWidth :=
                        (grdItens.ColumnByName(NomeColItem).DisplayWidth - TamLargTam);
                  grdItens.ColumnByName('int_nomecor').Visible := false;
                end
             else
                begin
                  grdItens.ColumnByName('int_nomecor').Visible    := false;
                  grdItens.ColumnByName('int_nometam').Visible    := false;
                end;
          end;
    end;

end;

procedure TFAT_FM_M_ORC.Atualizar_xBusca;
begin
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

function TFAT_FM_M_ORC.BtnAdicItemFocused: Boolean;
begin
  
end;

procedure TFAT_FM_M_ORC.btnAtualizaContClick(Sender: TObject);
var
  PathImg, codigo: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.FAT_CD_M_ORC.IsEmpty then
      begin
        if not dmGeral.FAT_CD_M_ORC_ITE.IsEmpty then
            begin
              PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

              if FileExists(PathImg) then
                  begin
                    LogoEmpresa := TfrxPictureView(FAT_FR_R_ORC.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                        LogoEmpresa.Picture.LoadFromFile(PathImg);
                  end;

                  dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_R_ORC.Name,xCodLme,xRevLme,nil);
                  FAT_FR_R_ORC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  FAT_FR_R_ORC.PrepareReport();
                  FAT_FR_R_ORC.ShowReport();
            end
        else
          ShowMessage('Nenhum "Item" foi encontrado.');
      end
  else
    ShowMessage('Nenhum "Orçamento" foi encontrado.');
end;

procedure TFAT_FM_M_ORC.btnFiltroClick(Sender: TObject);
var
  xPesquisa:String;
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;

    if (not (cbbPesquisa.ItemIndex IN [3,4])) then
      begin
        dmGeral.FAT_CD_M_ORC.Close;
        dmGeral.FAT_CD_M_ORC.Data :=
        dmGeral.FAT_CD_M_ORC.DataRequest(
                VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PARid_empresa.Text, xPesquisa]));
      end
    else
      begin
        dmGeral.FAT_CD_M_ORC.Close;
        dmGeral.FAT_CD_M_ORC.Data :=
        dmGeral.FAT_CD_M_ORC.DataRequest(
                VarArrayOf([cbbPesquisa.ItemIndex+2,dmGeral.CAD_CD_C_PARid_empresa.Text, xPesquisa]));
      end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TFAT_FM_M_ORC.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;

  pnItens.Enabled  := true;

  dmGeral.FAT_CD_M_ORC_ITE.Insert;
  txtBuscaItem.Enabled := true;
  txtBuscaItem.SetFocus;
end;

procedure TFAT_FM_M_ORC.cbbCondicaoPagamentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCondPgto(1,'%');
  cbbCondicaoPagamento.DropDown;
end;

procedure TFAT_FM_M_ORC.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TFAT_FM_M_ORC.cbbCorExit(Sender: TObject);
begin
  inherited;

  if txtBuscaItem.Focused or cbbTamanho.Focused then
    begin
      exit;
    end;

  if dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_COR').AsString = '' then
     begin
       ShowMessage('O campo "Cor" deve ser preenchido.');
       cbbCor.SetFocus;
       exit;
     end;


  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_NOMECOR').AsString := '';
  dmGeral.BusCor(0,dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_COR').AsString);
  if (dmGeral.BUS_CD_C_COR.IsEmpty)  then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;
  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_NOMECOR').AsString :=
               dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString;


  if mmPcpObsIte.CanFocus then
      mmPcpObsIte.SetFocus
  else
     begin
       pnlCorTamanho.Visible := False;
       txtqtde.SetFocus;
     end;

end;

procedure TFAT_FM_M_ORC.cbbFormaPagamentoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos(2, dmGeral.BUS_CD_C_CPG.FieldByName('TIPO_PAGAMENTO').asString);
  //dmGeral.BusFormaPgtos(1,'%');
  cbbFormaPagamento.DropDown;
end;

procedure TFAT_FM_M_ORC.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [3]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 153;
      txtPesquisaData.SetFocus;
    end
  else
    begin
      txtPesquisa.Visible := true;
      txtPesquisaData.Visible := false;
      txtPesquisa.SetFocus;
    end;

  if cbbPesquisa.ItemIndex in [0,1] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TFAT_FM_M_ORC.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TFAT_FM_M_ORC.cbbTamanhoExit(Sender: TObject);
  begin
  inherited;
  if txtBuscaItem.Focused then
    begin
      exit;
    end;

  if dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_TAMANHO').AsString = '' then
    begin
      ShowMessage('O campo "tamanho" deve ser preenchido.');
      cbbTamanho.SetFocus;
      exit;
    end;

  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_NOMETAM').AsString := '';
  if dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_TAMANHO').AsString <> '' then
    begin
      dmGeral.BusTamanho(0,dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_TAMANHO').AsString);
      if (not dmGeral.BUS_CD_C_TAM.IsEmpty) then
        begin
          dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_NOMETAM').AsString :=
                  dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').AsString;
        end;
    end;

  if cbbCor.Visible = true then
     cbbCor.SetFocus
  else
     begin
       if mmPcpObsIte.CanFocus then
          mmPcpObsIte.SetFocus
       else
          begin
            txtqtde.SetFocus;
            pnlCorTamanho.Visible := False;
          end;
     end;




end;

procedure TFAT_FM_M_ORC.ChamaCorTamanho;
begin


  lblMedida.Visible    := false;
  mmPcpObsIte.Visible  := false;

  dmGeral.BUS_CD_C_ITE.close;
  dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').Text]));

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        { pnlCorTamanho.Visible := False;

        txtQtde.SetFocus;}
        if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
           begin
              if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').Text =
                  dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text) or
                 (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
                 begin
                   pnlCorTamanho.height := 76;
                   pnlCorTamanho.Width  := 545;
                   lblMedida.Visible    := true;
                   mmPcpObsIte.Visible  := true;
                 end
              else
                  begin
                    pnlCorTamanho.Visible := False;
                    txtQtde.SetFocus;
                  end;
            end
        else
            begin
              pnlCorTamanho.Visible := False;
              txtqtde.SetFocus;
            end;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := 126;
            pnlCorTamanho.Top := 26;
            pnlCorTamanho.Width := 276;


            if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
               begin
                 if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').Text =
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text) or

                    (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
                   begin
                     pnlCorTamanho.height := 76;
                     pnlCorTamanho.Width  := 545;
                     lblMedida.Visible    := true;
                     mmPcpObsIte.Visible  := true;
                   end
               end;

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
                  pnlCorTamanho.Top   := 26;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := true;

                  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
                     begin
                        if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').Text =
                            dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text) or
                           (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
                            begin
                              pnlCorTamanho.height := 76;
                              pnlCorTamanho.Width  := 410;
                              lblMedida.left := 140;
                              lblMedida.Visible    := true;
                              mmPcpObsIte.left := 140;
                              mmPcpObsIte.Visible  := true;
                           end
                      end;

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
                  pnlCorTamanho.Top := 26;
                  pnlCorTamanho.Width := 137;
                  lblTamanho.Visible  := false;

                  cbbTamanho.Visible := False;
                  cbbTamanho.TabStop := False;

                  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
                     begin
                        if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').Text =
                            dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text) or
                           (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
                           begin
                             pnlCorTamanho.height := 76;
                             pnlCorTamanho.Width  := 410;
                             lblMedida.left := 140;
                             lblMedida.Visible    := true;
                             mmPcpObsIte.left := 140;
                             mmPcpObsIte.Visible  := true;
                           end
                      end;

                  cbbCor.Left := 4;
                  cbbCor.SetFocus;
                  lblCor.left := 4;
                  lblCor.Visible := true;
               end;
         end;
     end;
end;

procedure TFAT_FM_M_ORC.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  // 0 = Aberto (Preto) / 1 = Importado (Azul)
  //if (dmGeral.FAT_CD_M_ORC.FieldByName('STATUS').Value = 0) then
  //    Afont.Color := clBlack;

  if (dmGeral.FAT_CD_M_ORC.FieldByName('STATUS').Value = 1) then
      Afont.Color := clHotLight;
end;

procedure TFAT_FM_M_ORC.DesabilitarCampos(Estado: Boolean; Cor: TColor);
begin
  txtCliente.Enabled := estado;
  txtCliente.Color   := cor;
end;

procedure TFAT_FM_M_ORC.FAT_DB_M_ORC_ITE1CheckEOF(Sender: TObject;
  var Eof: Boolean);
begin
  inherited;
  if dmGeral.CAD_CD_C_PAR_MODsgq.AsBoolean then
     begin
       dmGeral.BusItens(0,dmGeral.FAT_CD_M_ORC_ITE.FieldByName('id_item').AsString);

       if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('id_item').AsInteger = 404) or
          (dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
          begin
            FAT_FR_R_ORC.Variables['ft_desc_item'] := QuotedStr(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').AsString);
          end
       else
          begin

            FAT_FR_R_ORC.Variables['ft_desc_item'] :=
                QuotedStr(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_DESCITEM').AsString);
          end;
       dmgeral.BUS_CD_C_ITE.close;
     end;
end;

procedure TFAT_FM_M_ORC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.FAT_CD_M_ORC.Close;
  FreeAndNil(FAT_FM_M_ORC);
end;

procedure TFAT_FM_M_ORC.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.FAT_CD_M_ORC.Close;
        dmGeral.FAT_CD_M_ORC.Data :=
        dmGeral.FAT_CD_M_ORC.DataRequest(
                VarArrayOf([0,dmGeral.CAD_CD_C_PARid_empresa.Text, 0]));;

  dmGeral.BusFormaPgtos(1,'%');
  dmGeral.BusCondPgto(1,'%');
 // if dmgeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_fat_orc_id_condicao_pag').AsString <> '' then
  //   dmGeral.BUS_CD_C_CPG.locate('id_condicao_pag', dmgeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_fat_orc_id_condicao_pag').AsString,[]);

  dmGeral.BusCor(1,'%');
  dmGeral.BusTipoEstoque(1,'%');
  dmGeral.BusTamanho(1,'%');

  AtualizarGridItens(grdItens,'int_descitem',10,10);
end;

procedure TFAT_FM_M_ORC.FormShow(Sender: TObject);
begin
  inherited;
  cbbPesquisaChange(self);

  if dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean = false then
     begin
       txtPcpObsItem.Visible := false;
       lblItemSobMed.Visible := false;

       grdItens.Height := 176;
     end;

  dmGeral.BusFuncionario(0,IntToStr(xFuncionario));

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
      begin

        if dmGeral.CAD_CD_C_FUN.FieldByName('vnd_interno_externo').AsInteger = 1 then  // Se for vendedor externo
           begin
             if trim(dmgeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_fat_orc_id_condicao_pag').AsString) <> ''  then
                begin
                  cbbCondicaoPagamento.Enabled := false;
                end;
           end;

        lblAtendente.caption := 'Representante :';

        lblDescBasc.visible := true;
        txtDescBasc.visible := true;
        lblPerDescBasc.visible  := true;
        txtPercDescBasc.visible := true;


        lblDescEspecial.visible := true;
        txtDescEspecial.visible := true;
        lblPerDescEspecial.visible := true;
        txtPercDescEspecial.visible := true;


        txtTotalVlrDesc.enabled := false;
        txtTotalVlrDesc.readonly := true;
        txtTotalVlrDesc.color :=  $00DADADA;
      end

end;

procedure TFAT_FM_M_ORC.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := false;
     if dmGeral.FAT_CD_M_ORC_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True then
        begin
          if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0 then
             begin
                dmGeral.FAT_CD_M_ORC_ITE.Cancel;
                ShowMessage('É preciso que zere o valor do desconto especial para poder fazer essa operação!');
                abort;
             end;
        end;

     dmGeral.FAT_CD_M_ORC_ITE.Delete;

     if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency = 0 then
       begin
         if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = false) then
             begin
               HabilitarVlrDesc := true;
               txtTotalVlrDesc.ReadOnly := false;
               txtTotalVlrDesc.Color := clWhite;
             end;
         btn_Add_itens.Enabled := true;
         grdItens.OnMouseUp := grdItensMouseUp;
       end;

     if dmGeral.FAT_CD_M_ORC_ITE.RecordCount = 0 then
       begin
         dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency := 0;
         dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_ESPECIAL').AsCurrency := 0;
         txtPercDescEspecial.Text := '0';
         dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;
         dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_BASICO').AsCurrency := 0;

       end;

     if btn_Add_itens.CanFocus then
       begin
         btn_Add_Itens.setfocus;
       end;

  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TFAT_FM_M_ORC.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;


  if pnItens.Enabled = false then
     pnItens.Enabled := true;

  dmGeral.FAT_CD_M_ORC_ITE.cancel;

  if dmGeral.FAT_CD_M_ORC_ITE.IsEmpty then
     begin
       txtBuscaItem.Enabled := true;
       dmGeral.FAT_CD_M_ORC_ITE.Append;
       pnItens.Enabled := true;
       txtBuscaItem.SetFocus;
     end
  else
    begin
     txtBuscaItem.Enabled := false;
     dmGeral.FAT_CD_M_ORC_ITE.Edit;
     pnItens.Enabled := true;
     txtQtde.SetFocus;
    end;


end;

procedure TFAT_FM_M_ORC.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  txtCliente.Enabled := Estado;
  txtCliente.Color   := Cor;
end;

procedure TFAT_FM_M_ORC.HabilitarCampos(Estado: Boolean; Cor: TColor);
begin
  txtCliente.Enabled := estado;
  txtCliente.Color   := cor;
end;

procedure TFAT_FM_M_ORC.mmPcpObsIteEnter(Sender: TObject);
begin
  inherited;
  FAT_FM_M_ORC.KeyPreview := false;
end;

procedure TFAT_FM_M_ORC.mmPcpObsIteExit(Sender: TObject);
begin
  inherited;
  {FAT_FM_M_ORC.KeyPreview := true;

  if (cbbTamanho.Focused) or (cbbCor.Focused) then
     Exit;

  pnItens.Enabled := true;
  txtQtde.SetFocus;

  pnlCorTamanho.Visible := False;}

  FAT_FM_M_ORC.KeyPreview := true;

  if (cbbTamanho.Focused) or (cbbCor.Focused) then
     Exit;

  {if  dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean then
       begin
         BuscarCulturas(dmGeral.FAT_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString);
         pnlCultura.Visible := true;
         pnlCultura.Top := 50;
         pnlCultura.Left := 399;
         cbbCultura.SetFocus;
       end
   else
     begin
       if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = false then
          begin
            ChamaMecanicoTerceiro;
            if not cbbMecanico.CanFocus then
              begin
               pnItens.Enabled := true;
               txtQtde.SetFocus;
              end;
          end;
     end;  }

   if dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean = true then
      begin

         { 0 - Outros
           1 - Manual do Usuário
           2 - Espuma
           3 - Bobina
           4 - Colchão de espuma
           5 - Colchão de molas
           6 - Cama Box
           7 - Base Box
           8 - Travesseiro
           9 - Colchonete
           10 - Encosto
           11 - Maquete
           12 - Caixa de madeira
           13 - Grampo
           14 - Cama Box de Molas'; }

         //if dmGeral.FAT_CD_M_PED_ITE.FieldByName('id_item').AsInteger = 404 then
          case dmGeral.BUS_CD_C_ITE.FieldByName('tipo_produto').AsInteger of
            0:
              begin
                 if (pos('COL',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) <> 0)      or
                    (pos('MAQ',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) <> 0)      or
                    (pos('CAMA',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) <> 0)     or
                    (pos('BOBINA',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) <> 0)     or
                    ((pos('BOX',UpperCase(StringReplace
                     (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) <> 0)  and
                     (pos('CONF',UpperCase(StringReplace
                     (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) <> 0)) or
                     (pos('BASEBOX',UpperCase(StringReplace
                     (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) <> 0) then
                    begin
                      ShowMessage('Este item personalizado não permite nenhum COLCHÃO, CAMA BOX, COLCHÃO DE MOLAS, BASE BOX , MAQUETES ou BOBINAS.' + #13 + #13 +
                                  'Por favor utilize o próprio código de item personalizado.');
                      pnlCorTamanho.Visible := False;
                      pnItens.Enabled := true;
                      dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text := '';
                      txtBuscaItem.SetFocus;
                      exit;
                    end;
              end;
            1,2,8,10,11,12,13:
              begin
                 if (pos('COL',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) <> 0)      or
                    (pos('MAQ',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) <> 0)      or
                    (pos('CAMA',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) <> 0)     or
                    ((pos('BOX',UpperCase(StringReplace
                     (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) <> 0)  and
                     (pos('CONF',UpperCase(StringReplace
                     (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) <> 0)) then
                    begin
                      ShowMessage('Este item personalizado não permite nenhum COLCHÃO ou CAMA BOX.' + #13 + #13 +
                                  'Utilize o próprio código de item personalizado do colchão ou cama box que deseja por favor.');
                      pnlCorTamanho.Visible := False;
                      pnItens.Enabled := true;
                      dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text := '';
                      txtBuscaItem.SetFocus;
                      exit;
                    end;
              end;
            3:
              begin
                   if (pos('BOBINA',UpperCase(StringReplace
                      (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) = 0) then
                    begin
                      ShowMessage('Para este produto personalizado informar somente descrição que contenha o nome: Bobina.' + #13 + #13 +
                                  'Exemplo: ' + #13 +
                                  ':--> Bobina D23... .');
                      pnlCorTamanho.Visible := False;
                      pnItens.Enabled := true;
                      dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text := '';
                      txtBuscaItem.SetFocus;
                      exit;
                    end;
              end;

              // 4 - Colchão de espuma,  5 - Colchão de molas,  6 - Cama Box,  14 - Cama Box de Molas
            4,5,6,14:
              begin
                 if (pos('GRAM',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    (pos('PEC',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    (pos('PEÇ',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    (pos('peç',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    //(pos('MAQ',UpperCase(dmGeral.FAT_CD_M_PED_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    (pos('PARA',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    (pos('PREGO',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    (pos('COLCHONETE',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) <> 0) or
                    (pos('BASEBOX',UpperCase(StringReplace
                    (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) <> 0)   or
                    (pos('BOB',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) <> 0) then
                    begin
                      ShowMessage('Para este produto personalizado informar somente Colchão,Cama Box ou Maquete. ' + #13 + #13 +
                                  'Use uma descrição correspondente a família.' + #13 + #13 +
                                  'Exemplo: Se vc usar um produto medida personalizadas do Madri então informe da seguinte forma, como exemplo abaixo: ' + #13 +
                                  ':--> Colchão Madri 040x200x200.');
                      pnlCorTamanho.Visible := False;
                      pnItens.Enabled := true;
                      dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text := '';
                      txtBuscaItem.SetFocus;
                      exit;
                    end;
               end;
              7:
                 begin
                     if (pos('BASEBOX',UpperCase(StringReplace
                        (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text,' ','',[rfReplaceAll]))) = 0) then
                      begin
                        ShowMessage('Para este produto personalizado informar somente descrição que contenha o nome: Base Box.' + #13 + #13 +
                                    'Exemplo: ' + #13 +
                                    ':--> Base Box 085 .');
                        pnlCorTamanho.Visible := False;
                        pnItens.Enabled := true;
                        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text := '';
                        txtBuscaItem.SetFocus;
                        exit;
                      end;
                 end;
               9:
                 begin
                   if (pos('COLCHONETE',UpperCase(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text)) = 0) then
                      begin
                        ShowMessage('Para este produto personalizado deve ter o nome: Colchonete.');
                        pnlCorTamanho.Visible := False;
                        pnItens.Enabled := true;
                        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('pcp_obs_item').text := '';
                        txtBuscaItem.SetFocus;
                        exit;
                      end;
                 end;
          end;
      end;
   txtQtde.SetFocus;
   pnlCorTamanho.Visible := False;

end;

procedure TFAT_FM_M_ORC.pnItensExit(Sender: TObject);
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

        dmGeral.FAT_CD_M_ORC_ITE.Cancel;
        dmGeral.FAT_CD_M_ORC_ITE.edit;

        finally
           pnItens.Enabled := false;
        end;
      end;
end;

procedure TFAT_FM_M_ORC.txtClienteButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
         begin
           dmGeral.FAT_CD_M_ORC.FieldByName('INT_NOMECLI').Text :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString;
           dmGeral.FAT_CD_M_ORC.FieldByName('ID_CLIENTE').AsInteger :=
                PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TFAT_FM_M_ORC.txtClienteExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_CLI.Close;

  dmGeral.FAT_CD_M_ORC.FieldByName('INT_NOMECLI').Text := '';

  if dmGeral.FAT_CD_M_ORC.FieldByName('ID_CLIENTE').Text = '' then
     begin
       ShowMessage('O campo "Cliente" deve ser prenchido.');
       abort;
     end;


  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
  dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));

  if not dmGeral.CAD_CD_C_CLI_TesValObrigatorio(dmGeral.BUS_CD_C_CLI) then
     begin
       txtCliente.SetFocus;
       exit;
     end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
      begin
        if dmGeral.CAD_CD_C_FUN.FieldByName('vnd_interno_externo').AsInteger = 1 then  // Se for vendedor interno
           begin
             if dmGeral.BUS_CD_C_CLI.FieldByName('id_vendedor').AsInteger <> xFuncionario then
                begin
                  ShowMessage('Cliente não faz parte da carteira!');
                  txtCliente.SetFocus;
                  exit;
                end;
           end;
      end;

  dmGeral.FAT_CD_M_ORC.FieldByName('INT_NOMECLI').Text :=
       dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;

  dmGeral.FAT_CD_M_ORC.FieldByName('INT_ID_PERFIL').AsInteger :=
       dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').AsInteger;


end;

procedure TFAT_FM_M_ORC.txtDescBascEnter(Sender: TObject);
begin
  inherited;
  AtivarDesativarTabStopsDosDescontos(true);
  vlrDescBasicTotalAnt :=  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency;
end;

procedure TFAT_FM_M_ORC.txtDescBascExit(Sender: TObject);
var
  perDesconto,perDescMaxGeral:currency;
  codItens:String;
begin
  inherited;

  {if btnGrava.Focused or btnCancelar.Focused then
     begin
       exit;
     end; }
   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean) then
      begin
         if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0) and
            (vlrDescBasicTotalAnt <> dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency) then
            begin
              Showmessage('O valor do campo "Desconto especial" será apagado!');
              dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_ESPECIAL').AsCurrency := 0;
              dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency := 0;
            end;

         if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency > 0 then
            begin
               if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency >=
                   dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency) then
                  begin
                    ShowMessage('O valor do desconto básico não pode ser maior ou igual ao total valor bruto.');
                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
                    txtDescBasc.SetFocus;
                    exit;
                  end;
            end;

         dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency :=
             dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency;

          dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_BASICO').AsCurrency :=
            roundTo( ( (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency * 100) /
                dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency ), -2);

         try
          dmGeral.FAT_CD_M_ORC_ITEper_desconto.OnChange := nil;
          dmGeral.FAT_CD_M_ORC_ITEvlr_desconto.OnChange := nil;
          dmGeral.FAT_CD_M_ORC_ITE.BeforePost := nil;
          dmGeral.FAT_CD_M_ORC_ITE.AfterPost := nil;
          codItens := '';


          if (vlrDescBasicTotalAnt <> dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency) then
              FAT_RN_M_ORC.FatRatVlrEntreItensOrcamento2(dmGeral.FAT_CD_M_ORCvlr_bruto.AsCurrency,
                    dmGeral.FAT_CD_M_ORCvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);

          if (codItens <>'') then
             begin
               if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency > 0) and
                  (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency <> vlrDescBasicTotalAnt) then
                  begin
                     ShowMessage('Os seguintes itens apresentam desconto acima do permitido:'+#13+codItens);

                     dmGeral.CAD_CD_C_FUN.Close;
                     dmGeral.CAD_CD_C_FUN.Data :=
                           dmGeral.CAD_CD_C_FUN.DataRequest(VarArrayOf([0,xFuncionario]));

                     if dmGeral.CAD_CD_C_FUN.FieldByName('seg_per_desc_maior').AsBoolean then
                        begin
                          Application.CreateForm(TFAT_FM_M_PED_SEN,FAT_FM_M_PED_SEN);
                          FAT_FM_M_PED_SEN.ShowModal;
                          if not FAT_FM_M_PED_SEN.xPermitePedSen then
                             begin
                               if FatValidBloqueiaOrc('H') then
                                  begin
                                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;
                                    FAT_RN_M_ORC.FatRatVlrEntreItensOrcamento2(dmGeral.FAT_CD_M_ORCvlr_bruto.AsCurrency,
                                    dmGeral.FAT_CD_M_ORCvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);
                                    txtDescBasc.SetFocus;
                                    exit;
                                  end;
                             end;
                        end
                     else
                        begin
                          if FatValidBloqueiaOrc('H') then
                              begin
                                dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                                dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;
                                FAT_RN_M_ORC.FatRatVlrEntreItensOrcamento2(dmGeral.FAT_CD_M_ORCvlr_bruto.AsCurrency,
                                dmGeral.FAT_CD_M_ORCvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);
                                txtDescBasc.SetFocus;
                                exit;
                              end;
                        end;
                  end;
             end;
         finally
           dmGeral.FAT_CD_M_ORC_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_ORC_ITEper_descontoChange;
           dmGeral.FAT_CD_M_ORC_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_ORC_ITEvlr_descontoChange;
           dmGeral.FAT_CD_M_ORC_ITE.BeforePost := dmGeral.FAT_CD_M_ORC_ITEBeforePost;
           dmGeral.FAT_CD_M_ORC_ITE.AfterPost := dmGeral.FAT_CD_M_ORC_ITEAfterPost;
         end;

         FAT_RN_M_ORC.fatOrcCalcTotal;
      end;

end;

procedure TFAT_FM_M_ORC.txtDescEspecialEnter(Sender: TObject);
begin
  inherited;
  AtivarDesativarTabStopsDosDescontos(true);
  vlrDescEspecialTotalAnt :=  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency;
end;

procedure TFAT_FM_M_ORC.txtDescEspecialExit(Sender: TObject);
var
  perDesconto,perDescMaxGeral:currency;
  codItens:String;
begin
  inherited;


   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean) then
      begin

         if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency > 0 then
            begin
               if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency >=
                   dmGeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency) then
                  begin
                    ShowMessage('O valor do desconto especial não pode ser maior ou igual total valor líquido.');
                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
                    txtDescEspecial.setfocus;
                    exit;
                  end;
            end;

         if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency > 0 then
            begin
               if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency +
                   dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency) >=
                   (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency) then
                  begin
                    ShowMessage('O valor do (desconto básico + desconto especial) não pode ser maior ou igual ao total valor bruto.');
                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
                    txtDescEspecial.setfocus;
                    exit;
                  end;
            end;

         dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency :=
             dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency +
             dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency;

         perDesconto := 0;
         if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency >0) then
           begin
            perDesconto := roundTo( (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency /
                         (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency-
                         dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency))*100,-2);

            dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_ESPECIAL').AsCurrency :=
                   roundTo( (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency /
                         (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency-
                         dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency))*100,-2);

           end;

        if (perDesconto> dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_desc_especial').AsCurrency) then
          begin
            ShowMessage('O percentual de desconto especial permitido é no máximo '+dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_desc_especial').AsString+'%');
            dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_ESPECIAL').AsCurrency := 0;
            dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency := vlrDescEspecialTotalAnt;
            txtDescEspecial.setfocus;
            exit;
          end;

         FAT_RN_M_ORC.fatOrcCalcTotal;
      end;
end;

procedure TFAT_FM_M_ORC.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin


           dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsInteger :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

           dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_DESCITEM').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TFAT_FM_M_ORC.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
  tipo_item: integer;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;

  if dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
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

       if (txtQtde.Focused) or (txtVlrUnitario.Focused) or
          (txtVlrDesconto.Focused) or (txtPerDesconto.Focused) then
           begin
             ShowMessage('O campo "Item" deve ser preenchido.');
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
       if dmGeral.FAT_CD_M_ORC.FieldByName('ID_CLIENTE').AsInteger = 0 then
          begin
            ShowMessage('O campo "Cliente" deve ser preenchido.');
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').Text         := '';
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_BUSCA_ITEM').Text   := '';
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_DESCITEM').Text := '';
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_UNIDADE').Text  := '';
            abort;
          end;

       if dmGeral.FAT_CD_M_ORC_ITE.state in [dsBrowse] then
          dmGeral.FAT_CD_M_ORC_ITE.edit;

     end;


  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_DESCITEM').Text := '';
  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_UNIDADE').Text  := '';

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

  if not dmGeral.CAD_CD_C_ITE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE) then
     begin
       txtBuscaItem.SetFocus;
       dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_DESCITEM').Text := '';
       dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_UNIDADE').Text  := '';
       exit;
     end;



  if dmGeral.BUS_CD_C_ITE.FieldByName('int_verif_cod_barra_ped').AsBoolean then
     begin
       if trim(dmGeral.BUS_CD_C_ITE.FieldByName('cod_barra').AsString) = '' then
          begin
             ShowMessage('Produto sem código de barra(GTIN)!');
             txtBuscaItem.SetFocus;
             dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').Text         := '';
             dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_BUSCA_ITEM').Text   := '';
             dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_DESCITEM').Text := '';
             dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_UNIDADE').Text  := '';
             exit;
          end;
     end;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean or
      dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean OR
     dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean then
     begin
        if (pos(dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsString,'00-01-02-03-04-05-06-09') = 0) then
            begin
              ShowMessage('O item só pode ser de grupo com tipo do item igual a: ' + #13 +
                           ' - Mercadoria para Revenda '+#13+
                           ' - Materia prima '+#13+
                           ' - Embalagem  '+#13+
                           ' - Produto em processo '+#13+
                           ' - Produto Acabado  '+#13+
                           ' - subproduto  '+#13+
                           ' - Produto Intermediario '+#13+
                           ' - Serviços');
              txtBuscaItem.SetFocus;
              dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=0;
              exit;
            end;
     end;

  // if colocado em 11/09/2023, por Maxsuel Victor.

  if dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsString = '1' then  // Vendedor externo
     begin
       if dmGeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean then
          begin
             ShowMessage('Não é permitido inserir item personalizado!');
             txtBuscaItem.SetFocus;
             dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').Text         := '';
             dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_BUSCA_ITEM').Text   := '';
             dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_DESCITEM').Text := '';
             dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_UNIDADE').Text  := '';
             exit;
          end;
     end;



  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString :=
       dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_DESCITEM').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_UNIDADE').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('ID_UND_VENDA').AsString;

  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_TIPO_ITEM').AsInteger :=
       dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsInteger;


  //Busca o preço na tabela de preço conforme item e tabela do cliente

  try
  pnItens.onExit := nil;

  if dmGeral.FAT_CD_M_ORC_ITE.State in [dsInsert] then
     begin

       // Por Maxsuel Victor, em 06/11/2024 para adptar o orçamento para o pedido de venda (C.Globo)

      { id_item       := dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString;
        id_busca_item := dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_BUSCA_ITEM').AsString;
       desc          := dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_DESCITEM').AsString;
       und           := dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_UNIDADE').AsString;
       tipo_item     := dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_TIPO_ITEM').AsInteger;

       dmGeral.FAT_CD_M_ORC_ITE.cancel;
       if dmGeral.FAT_CD_M_ORC_ITE.Locate('ID_ITEM',id_item,[]) then
          begin
            ShowMessage('Item já inserido no orçamento.');
            dmGeral.FAT_CD_M_ORC_ITE.Insert;
            txtBuscaItem.SetFocus;
            abort;
          end
       else
          begin
            dmGeral.FAT_CD_M_ORC_ITE.Insert;
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString        := id_item;
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_BUSCA_ITEM').AsString  := id_busca_item;
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_DESCITEM').AsString   := desc;
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_UNIDADE').AsString    := und;
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_TIPO_ITEM').AsInteger := tipo_item;
          end;     }

       {dmGeral.BusPrecoIten(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString,
                             dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').AsString);

       if not dmGeral.CAD_CD_C_ITE_PRE_TesValObrigatorio(dmGeral.BUS_CD_C_ITE_PRE) then
          begin
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').Text := '';
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_BUSCA_ITEM').AsString  := '';
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_DESCITEM').Text := '';
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_UNIDADE').Text  := '';
            txtBuscaItem.SetFocus;
          end
       else
          begin
            dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_UNITARIO').AsCurrency:=
                dmGeral.BUS_CD_C_ITE_PRE.FieldByName('PRECO_BASE').AsCurrency;
          end;}

          // Esse código foi necessário devido o focu está se perdendo ao tentar focar
          // no campo "Qtde"
          //ActiveControl := nil;
          //PostMessage(txtQtde.Handle, WM_SETFOCUS, 0, 0);
     end;

    if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
       begin
         xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_ORC_ITE,1,dmGeral.FAT_CD_M_ORC.FieldByName('ID_CLIENTE').AsInteger);
       end;

    if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) then
       begin
         xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_ORC_ITE,2,0,dmGeral.FAT_CD_M_ORC.FieldByName('ID_CONDICAO_PAG').AsInteger);
       end;

    if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = FALSE) AND
       (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = FALSE)) then
       begin
         xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_ORC_ITE);
       end;

    dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESC_MAX').AsCurrency :=  xPercDescPerm;

    ChamaCorTamanho;
    xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_ORC_ITE);
  finally
   //  pnItens.OnExit := pnItensExit;
  end;
   {ActiveControl := nil;
   PostMessage(txtqtde.Handle, WM_SETFOCUS, 0, 0);
   txtqtde.Text := '';
   txtqtde.SetFocus; }
end;

procedure TFAT_FM_M_ORC.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TFAT_FM_M_ORC.txtPercDescBascEnter(Sender: TObject);
begin
  inherited;
  AtivarDesativarTabStopsDosDescontos(true);
  PerDescBasicTotalAnt :=  dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_BASICO').AsCurrency;
end;

procedure TFAT_FM_M_ORC.txtPercDescBascExit(Sender: TObject);
var
  perDesconto,perDescMaxGeral:currency;
  codItens:String;
begin
  inherited;

   try

   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean) then
      begin

         if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0) and
            ( PerDescBasicTotalAnt <> dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_BASICO').AsCurrency ) then
            begin
              Showmessage('O valor do campo "Desconto especial" será apagado!');
              dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_ESPECIAL').AsCurrency := 0;
              dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency := 0;
            end;


         dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency :=
              RoundTo( (( dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency *
                  dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_BASICO').AsCurrency ) / 100),-2);

         if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency > 0 then
            begin
               if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency >=
                   dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency) then
                  begin
                    ShowMessage('O valor do desconto básico não pode ser maior ou igual total valor bruto.');
                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
                    txtDescBasc.SetFocus;
                    exit;
                  end;
            end;


         dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency :=
             dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency;

         try
          dmGeral.FAT_CD_M_ORC_ITEper_desconto.OnChange := nil;
          dmGeral.FAT_CD_M_ORC_ITEvlr_desconto.OnChange := nil;
          dmGeral.FAT_CD_M_ORC_ITE.BeforePost := nil;
          dmGeral.FAT_CD_M_ORC_ITE.AfterPost := nil;
          codItens := '';

          if ( PerDescBasicTotalAnt <> dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_BASICO').AsCurrency ) then
              FAT_RN_M_ORC.FatRatVlrEntreItensOrcamento2(dmGeral.FAT_CD_M_ORCvlr_bruto.AsCurrency,
                    dmGeral.FAT_CD_M_ORCvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);


          if (codItens <>'') then
             begin


               if (dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_BASICO').AsCurrency > 0) and
                  (dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_BASICO').AsCurrency <> PerDescBasicTotalAnt) then
                  begin
                     ShowMessage('Os seguintes itens apresentam desconto acima do permitido:'+#13+codItens);

                     dmGeral.CAD_CD_C_FUN.Close;
                     dmGeral.CAD_CD_C_FUN.Data :=
                           dmGeral.CAD_CD_C_FUN.DataRequest(VarArrayOf([0,xFuncionario]));

                     if dmGeral.CAD_CD_C_FUN.FieldByName('seg_per_desc_maior').AsBoolean then
                        begin
                          Application.CreateForm(TFAT_FM_M_PED_SEN,FAT_FM_M_PED_SEN);
                          FAT_FM_M_PED_SEN.ShowModal;
                          if not FAT_FM_M_PED_SEN.xPermitePedSen then
                             begin
                               if FatValidBloqueiaOrc('H') then
                                  begin
                                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;
                                    FAT_RN_M_ORC.FatRatVlrEntreItensOrcamento2(dmGeral.FAT_CD_M_ORCvlr_bruto.AsCurrency,
                                    dmGeral.FAT_CD_M_ORCvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);
                                    txtPercDescBasc.SetFocus;
                                    exit;
                                  end;
                             end;
                        end
                     else
                        begin
                          if FatValidBloqueiaOrc('H') then
                              begin
                                dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                                dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency := 0;
                                FAT_RN_M_ORC.FatRatVlrEntreItensOrcamento2(dmGeral.FAT_CD_M_ORCvlr_bruto.AsCurrency,
                                dmGeral.FAT_CD_M_ORCvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);
                                txtPercDescBasc.SetFocus;
                                exit;
                              end;
                        end;
                  end;
             end;
         finally
           dmGeral.FAT_CD_M_ORC_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_ORC_ITEper_descontoChange;
           dmGeral.FAT_CD_M_ORC_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_ORC_ITEvlr_descontoChange;
           dmGeral.FAT_CD_M_ORC_ITE.BeforePost := dmGeral.FAT_CD_M_ORC_ITEBeforePost;
           dmGeral.FAT_CD_M_ORC_ITE.AfterPost := dmGeral.FAT_CD_M_ORC_ITEAfterPost;
         end;

         FAT_RN_M_ORC.fatOrcCalcTotal;
      end;
   finally

     ActiveControl := nil;
     PostMessage(txtDescBasc.Handle, WM_SETFOCUS, 0, 0);
     txtDescBasc.SetFocus;
   end;
end;

procedure TFAT_FM_M_ORC.txtPercDescEspecialEnter(Sender: TObject);
begin
  inherited;
  AtivarDesativarTabStopsDosDescontos(true);
  PerDescEspecialTotalAnt :=  dmGeral.FAT_CD_M_ORC.FieldByName('per_desc_especial').AsCurrency;
end;

procedure TFAT_FM_M_ORC.txtPercDescEspecialExit(Sender: TObject);
var
  perDesconto,perDescMaxGeral:currency;
  codItens:String;
begin
  inherited;

  {if btnGrava.Focused or btnCancelar.Focused then
     begin
       exit;
     end; }
   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean) then
      begin
         if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency > 0 then
            begin
               if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency >=
                   dmGeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency) then
                  begin
                    ShowMessage('O valor do desconto especial não pode ser maior ou igual total valor líquido.');
                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
                    txtPercDescEspecial.setfocus;
                    exit;
                  end;
            end;

         dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency :=
              RoundTo( ((  (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency-
                           dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency) *
                  dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_ESPECIAL').AsCurrency ) / 100),-2);

         if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency > 0 then
            begin
               if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency +
                   dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency) >=
                   (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency) then
                  begin
                    ShowMessage('O valor do (desconto básico + desconto especial) não pode ser maior ou igual ao total valor bruto.');
                    dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
                    txtPercDescEspecial.setfocus;
                    exit;
                  end;
            end;

         dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency :=
             dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency +
             dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency;

         perDesconto := 0;
         if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency >0) then
           begin
            perDesconto := roundTo( (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency /
                          (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_BRUTO').AsCurrency-
                          dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_BASICO').AsCurrency))*100,-2);
           end;

        if (perDesconto> dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_desc_especial').AsCurrency) then
          begin
            ShowMessage('O percentual de desconto especial permitido é no máximo '+dmGeral.CAD_CD_C_PAR_CTR.FieldByName('per_desc_especial').AsString+'%');
            dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency := 0;
            dmGeral.FAT_CD_M_ORC.FieldByName('PER_DESC_ESPECIAL').AsCurrency := PerDescEspecialTotalAnt;
            txtPercDescEspecial.setfocus;
            exit;
          end;

         FAT_RN_M_ORC.fatOrcCalcTotal;

      end;

end;


procedure TFAT_FM_M_ORC.txtPerDescontoEnter(Sender: TObject);
var
 SMPrincipal: TSMClient;
begin
  inherited;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 2 then // sem pagamentos
     begin
       txtPerDesconto.Text := '98.95';
       dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency := 98.95;
     end;

  xPerDescIteAnterior := dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency;

  xPercDescPermRegIte := 0;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_ORC_ITE,1,dmGeral.FAT_CD_M_ORC.FieldByName('ID_CLIENTE').AsInteger);

       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
         xPercDescPermRegIte :=
             SMPrincipal.enSgqPcpBuscarDescRegIte(dmGeral.FAT_CD_M_ORC.FieldByName('ID_CLIENTE').AsString,
                                                  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString);
       finally
         FreeAndNil(SMPrincipal);
       end;
     end;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_ORC_ITE,2,0,dmGeral.FAT_CD_M_ORC.FieldByName('ID_CONDICAO_PAG').AsInteger);
     end;

  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = FALSE) AND
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = FALSE)) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_ORC_ITE);
     end;

  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESC_MAX').AsCurrency :=  xPercDescPerm;
end;

procedure TFAT_FM_M_ORC.txtPerDescontoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if BtnAdicItemFocused or txtBuscaItem.Focused or
     txtQtde.Focused    or txtVlrUnitario.Focused  or
     grdItens.Focused   then
     begin
       abort;
     end;

  // if not (dmGeral.TesValPerDesconto(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency,xPercDescPerm)) then
  //   begin
  //     txtPerDesconto.SetFocus;
  //     abort;
  //   end;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True then
      begin
        if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0 then
           begin
             // if inserido por Maxsuel Victor em 19/06/2017
             if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency <>
                 xPerDescIteAnterior) then
                begin
                  ShowMessage('É preciso que zere o valor do desconto especial para poder dar um novo desconto nos itens!');
                  dmGeral.FAT_CD_M_ORC_ITE.cancel;
                  txtBuscaItem.Enabled := true;
                  dmGeral.FAT_CD_M_ORC_ITE.edit;
                  txtQtde.SetFocus;
                  abort;
                end;
           end;


        if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency <>
            xPerDescIteAnterior) then
            begin

              // if , adicionado em 14/09/2023, por Maxsuel Victor.

              if xint_unif_desc_reg then
                 begin
                    if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency >
                       xPercDescPerm + xPercDescPermRegIte ) then
                       begin
                         ShowMessage('Desconto informado excedeu o limite de desconto permitido.' + #13 +
                                     'Desconto informado: ' + FormatFloat('##,##0.00',dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency) +'%' + #13 +
                                     'Desconto limite (Desc. por região ' + FormatFloat('##,##0.00',xPercDescPerm) +
                                                         '% ) + (Específico do Grupo/Item ' + FormatFloat('##,##0.00',xPercDescPermRegIte) +'% )...: ' +
                                                             FormatFloat('##,##0.00',xPercDescPerm+xPercDescPermRegIte)+'%');
                         if FatValidBloqueiaOrc('H') then
                            begin
                              dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
                              txtPerDesconto.SetFocus;
                              abort;
                            end;
                       end;
                 end
              else
                 begin
                   if (xPercDescPermRegIte > 0) and (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency >
                       xPercDescPermRegIte) then
                       begin
                         ShowMessage('Desconto informado excedeu o limite de desconto permitido.' + #13 +
                                     'Desconto informado: ' + FormatFloat('##,##0.00',dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency) +'%' + #13 +
                                     'Desconto limite: (Específico do Grupo/Item ' + FormatFloat('##,##0.00',xPercDescPermRegIte) +
                                                         '% ).');
                         if FatValidBloqueiaOrc('H') then
                            begin
                              dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
                              txtPerDesconto.SetFocus;
                              abort;
                            end;
                       end
                   else
                       begin
                         if (xPercDescPermRegIte = 0) and
                            (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency > xPercDescPerm) then
                             begin
                               ShowMessage('Desconto informado excedeu o limite de desconto permitido.' + #13 +
                                           'Desconto informado: ' + FormatFloat('##,##0.00',dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency) +'%' + #13 +
                                           'Desconto limite: (Desc. por região ' + FormatFloat('##,##0.00',xPercDescPerm) +
                                                               '% ).');
                               if FatValidBloqueiaOrc('H') then
                                  begin
                                    dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
                                    txtPerDesconto.SetFocus;
                                    abort;
                                  end;
                             end;
                       end;
                 end;
            end;
      end;

   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = False then
      begin
        if not (dmGeral.TesValPerDesconto(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency,xPercDescPerm)) then
           begin
             if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency > 0) and
                (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency < 100) then
                 begin
                   if FatValidBloqueiaOrc('H') then
                      begin
                        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
                        txtPerDesconto.SetFocus;
                        abort;
                      end;
                 end
             else
                 begin
                   dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;
                   txtPerDesconto.SetFocus;
                   abort;
                 end;
           end;
      end;

end;

procedure TFAT_FM_M_ORC.txtQtdeEnter(Sender: TObject);
begin
  inherited;
  xQtdeAnterior := dmGeral.FAT_CD_M_ORC_ITE.FieldByName('qtde').AsCurrency;
end;

procedure TFAT_FM_M_ORC.txtQtdeExit(Sender: TObject);
var
  saldo_fisico,msg:String;
begin
  inherited;
  {if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or grdItens.Focused or cbbTamanho.Focused or cbbCor.Focused then
     begin
       abort;
     end;

  if not (dmGeral.TesValQtde(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end; }


  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or grdItens.Focused then
     begin
       abort;
     end;

  if not (dmGeral.TesValQtde(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end
  else
     begin

       {
       if not FAT_RN_M_NFE.FatTestaQtdeIte(1,dmGeral.FAT_CD_M_ORC,dmGeral.FAT_CD_M_ORC_ITE) then
          begin
            ShowMessage('Produto sem saldo no estoque!');
            txtQtde.SetFocus;
            abort;
          end;
        }

       if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('qtde').AsCurrency <>
           xQtdeAnterior) then
           begin
              if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0 then
                 begin
                   if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency <>
                       xVlrDescIteAnterior) then
                      begin
                        ShowMessage('Devido existir desconto especial, para você alterar a qtde do item é preciso que zere o valor do desconto especial');
                        dmGeral.FAT_CD_M_ORC_ITE.cancel;
                        txtBuscaItem.Enabled := true;
                        dmGeral.FAT_CD_M_ORC_ITE.edit;
                        txtQtde.SetFocus;
                        abort;
                      end;
                 end;
           end;
     end;
end;

procedure TFAT_FM_M_ORC.txtTamanhoExit(Sender: TObject);
begin
  inherited;
   if not cbbCor.Focused then
      pnlCorTamanho.Visible  := False;
end;

procedure TFAT_FM_M_ORC.txtTotalVlrDescEnter(Sender: TObject);
begin
  inherited;
  vlrDescTotalAnt :=  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency;
end;

procedure TFAT_FM_M_ORC.txtTotalVlrDescExit(Sender: TObject);
var
  perDesconto,perDescMaxGeral:currency;
  codItens:String;
begin
  inherited;

  if btnGrava.Focused or btnCancelar.Focused then
     begin
       exit;
     end;

   if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency >=
       dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency) then
      begin
        ShowMessage('O valor desconto não pode ser maior ou igual total valor bruto.');
        dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
        exit;
      end;


   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = False) then
      begin
         perDesconto := 0;
         if (dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency >0) then
           begin
            perDesconto := (dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency /
                         dmGeral.FAT_CD_M_PED.FieldByName('VLR_BRUTO').AsCurrency)*100;
           end;

        if (perDesconto> dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PER_DESCONTO').AsCurrency) then
          begin
            ShowMessage('O percentual de desconto permitido é no máximo '+dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PER_DESCONTO').AsString+'%');
            dmGeral.FAT_CD_M_PED.FieldByName('VLR_DESCONTO').AsCurrency := vlrDescTotalAnt;
            exit;
          end;
      end;

   try
    dmGeral.FAT_CD_M_PED_ITEper_desconto.OnChange := nil;
    dmGeral.FAT_CD_M_PED_ITEvlr_desconto.OnChange := nil;
    dmGeral.FAT_CD_M_PED_ITE.BeforePost := nil;
    dmGeral.FAT_CD_M_PED_ITE.AfterPost := nil;
    codItens := '';
    if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) then
      begin

        FAT_RN_M_ORC.FatRatVlrEntreItensOrcamento2(dmGeral.FAT_CD_M_ORCvlr_bruto.AsCurrency,
                  dmGeral.FAT_CD_M_ORCvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);
        if (codItens <>'') then
           begin
             ShowMessage('Os seguintes itens apresentam desconto acima do permitido:'+#13+codItens);

             if FatValidBloqueiaOrc('H') then
                begin
                  dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                  FAT_RN_M_ORC.FatRatVlrEntreItensOrcamento2(dmGeral.FAT_CD_M_ORCvlr_bruto.AsCurrency,
                      dmGeral.FAT_CD_M_ORCvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,true,xint_unif_desc_reg);
                  txtTotalVlrDesc.SetFocus;
                end;


           end;
      end
    else
      begin
        FAT_RN_M_ORC.FatRatVlrEntreItensOrcamento2(dmGeral.FAT_CD_M_ORCvlr_bruto.AsCurrency,
                  dmGeral.FAT_CD_M_ORCvlr_desconto.AsCurrency, 'VLR_DESCONTO','PER_DESCONTO',codItens,false,xint_unif_desc_reg);
      end;
   finally
     dmGeral.FAT_CD_M_ORC_ITEper_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEper_descontoChange;
     dmGeral.FAT_CD_M_ORC_ITEvlr_desconto.OnChange := dmGeral.FAT_CD_M_PED_ITEvlr_descontoChange;
     dmGeral.FAT_CD_M_ORC_ITE.BeforePost := dmGeral.FAT_CD_M_PED_ITEBeforePost;
     dmGeral.FAT_CD_M_ORC_ITE.AfterPost := dmGeral.FAT_CD_M_PED_ITEAfterPost;
   end;

   FAT_RN_M_ORC.fatOrcCalcTotal;


  if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency >0) then
    begin
     btn_Add_itens.Enabled := false;
     grdItens.OnMouseUp := nil;
    end
  else if (dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESCONTO').AsCurrency =0) then
     begin
       btn_Add_itens.Enabled := true;
       grdItens.OnMouseUp := grdItensMouseUp;
     end;


end;

procedure TFAT_FM_M_ORC.txtVlrDescontoEnter(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;

  xVlrDescIteAnterior := dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency;
  xPercDescPermRegIte := 0;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_ORC_ITE,1,dmGeral.FAT_CD_M_ORC.FieldByName('ID_CLIENTE').AsInteger);

       SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
       try
         xPercDescPermRegIte :=
             SMPrincipal.enSgqPcpBuscarDescRegIte(dmGeral.FAT_CD_M_ORC.FieldByName('ID_CLIENTE').AsString,
                                                  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString);
       finally
         FreeAndNil(SMPrincipal);
       end;
     end;
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = true) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_ORC_ITE,2,0,dmGeral.FAT_CD_M_ORC.FieldByName('ID_CONDICAO_PAG').AsInteger);
     end;

  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = FALSE) AND
     (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = FALSE)) then
     begin
       xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_ORC_ITE);
     end;
  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESC_MAX').AsCurrency :=  xPercDescPerm;
end;

procedure TFAT_FM_M_ORC.txtVlrDescontoExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  seq_item: string;
  vlrDesc:Currency;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if txtQtde.Focused    or txtVlrUnitario.Focused  or
     txtPerDesconto.Focused or grdItens.Focused then
     begin
       abort;
     end;

   if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True then
      begin
         if dmGeral.FAT_CD_M_ORC.FieldByName('VLR_DESC_ESPECIAL').AsCurrency > 0 then
           begin
             if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency <>
                 xVlrDescIteAnterior) then
                begin
                  ShowMessage('É preciso que zere o valor do desconto especial para poder dar um novo desconto nos itens!');
                  dmGeral.FAT_CD_M_ORC_ITE.cancel;
                  txtBuscaItem.Enabled := true;
                  dmGeral.FAT_CD_M_ORC_ITE.edit;
                  txtQtde.SetFocus;
                  abort;
                end;
           end;

        if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency <>
            xVlrDescIteAnterior) then
            begin
              vlrDesc :=  (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency/
                                                        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency)*100;

              if xint_unif_desc_reg then
                 begin
                   if (vlrDesc > (xPercDescPerm + xPercDescPermRegIte)) then
                       begin
                         ShowMessage('Desconto informado excedeu o limite de desconto permitido.' +
                                     'Desconto informado: ' + FormatFloat('##,##0.00',vlrDesc) + #13 +
                                     'Desconto limite (Desc. por região[ ' + FormatFloat('##,##0.00',xPercDescPerm) +
                                                         ' ]) + (Específico do item[ ' + FormatFloat('##,##0.00',xPercDescPermRegIte) +'] )...: ' +
                                                             FormatFloat('##,##0.00',xPercDescPerm+xPercDescPermRegIte));
                         if FatValidBloqueiaOrc('H') then
                            begin
                              dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                              txtVlrDesconto.SetFocus;
                              abort;
                            end;
                       end;
                 end
              else
                 begin
                   if  (xPercDescPermRegIte > 0) and (vlrDesc > (xPercDescPermRegIte)) then
                       begin
                         ShowMessage('Desconto informado excedeu o limite de desconto permitido.' +
                                     'Desconto informado: ' + FormatFloat('##,##0.00',vlrDesc) + #13 +
                                     'Desconto limite: (Específico do item [ ' + FormatFloat('##,##0.00',xPercDescPermRegIte)+']).');
                         if FatValidBloqueiaOrc('H') then
                            begin
                              dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                              txtVlrDesconto.SetFocus;
                              abort;
                            end;
                       end
                   else
                      begin
                         if (xPercDescPermRegIte = 0) and (vlrDesc > (xPercDescPerm)) then
                             begin
                               ShowMessage('Desconto informado excedeu o limite de desconto permitido.' +
                                           'Desconto informado: ' + FormatFloat('##,##0.00',vlrDesc) + #13 +
                                           'Desconto limite: (Desc. por região[ ' + FormatFloat('##,##0.00',xPercDescPerm) +
                                                               ' ]).');
                               if FatValidBloqueiaOrc('H') then
                                  begin
                                    dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                                    txtVlrDesconto.SetFocus;
                                    abort;
                                  end;
                             end;
                      end;
                 end;
            end;
      end;

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = False then
      begin
        if not (dmGeral.TesValVlrDesconto(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency,
                                          dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency,xPercDescPerm)) then
           begin

             if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency > 0) and
                (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency <=
                 dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency) then
                 begin
                   if FatValidBloqueiaOrc('H') then
                      begin
                        dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;
                        txtVlrDesconto.SetFocus;
                        abort;
                      end
                 end
             else
                begin
                  txtVlrDesconto.SetFocus;
                  abort;
                end;
           end;
      end;

  if (clienteConsumidor = true) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsString <> '') then
    begin
      if  dmGeral.FAT_CD_M_ORC_ITE.State in [dsInsert] then
        begin
          if (dmgeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency+
              dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_LIQUIDO').AsCurrency) >
              dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsCurrency   then
             begin
               ShowMessage('Ultrapassou o máximo valor total líquido permitido que é '+
                     FormatCurr('###,###,##0.00',
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsCurrency));
               if txtBuscaItem.CanFocus then
                 begin
                  txtBuscaItem.SetFocus;
                 end
               else
                 begin
                   txtQtde.SetFocus;
                 end;
               abort;
             end;
        end
      else
        begin
          if ((dmgeral.FAT_CD_M_ORC.FieldByName('VLR_LIQUIDO').AsCurrency+
              dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_LIQUIDO').AsCurrency)-vlrLiqIteAnt) >
              dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsCurrency   then
             begin
               ShowMessage('Ultrapassou o máximo valor total líquido permitido que é '+
                     FormatCurr('###,###,##0.00',
                     dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_cli_cns_vnd_max').AsCurrency));
               if txtBuscaItem.CanFocus then
                 begin
                  txtBuscaItem.SetFocus;
                 end
               else
                 begin
                   txtQtde.SetFocus;
                 end;
               abort;
             end;
        end;
    end;

  {if (not (dmGeral.FAT_CD_M_ORC.FieldByName('separa_prod_serv').AsBoolean) = true) and
    (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('HAB_ICMS_DESN_SAIDA').AsBoolean = true) and
     (dmgeral.CAD_CD_C_PAR.FieldByName('INT_REG_TRIBUTARIO').AsInteger in [1,2]) then
     begin
      if ((trim(dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString)<>'') and
          (trim(dmGeral.BUS_CD_C_CLI.FieldByName('DOC_IE_IDENTIDADE').AsString)<>'ISENTO')) then
        begin
         if  pos(dmGeral.BUS_CD_C_TRI_REG.FieldByName('cnt_id_st_icm').AsString,'20-30-40-41-50-70-90')<>0 then
           begin
             pnlDesn.Visible := true;
             cbbMotDesn.SetFocus;
             exit;
           end;
        end
      else
        begin
          if  pos(dmGeral.BUS_CD_C_TRI_REG.FieldByName('nct_id_st_icm').AsString,'20-30-40-41-50-70-90')<>0 then
           begin
             pnlDesn.Visible := true;
             cbbMotDesn.SetFocus;
             exit;
           end;
        end;
     end; }


  seq_item := dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_SEQ_ITEM').AsString;

  if dmGeral.FAT_CD_M_ORC_ITEid_seq_item.text = '' then
     begin
        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          dmGeral.FAT_CD_M_ORC_ITEid_seq_item.AsInteger :=
               SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
        finally
          FreeAndNil(SMPrincipal);
        end;
     end;
  if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency >0) then
     begin
      HabilitarVlrDesc := false;
      txtTotalVlrDesc.enabled  := false;
      txtTotalVlrDesc.ReadOnly := true;
      txtTotalVlrDesc.Color := $00DADADA;
     end;

  { if dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_TIPO_ITEM').AsString='09' then
    begin
      cbbTitPecaServico.ItemIndex := 1;
      pcTitulos.TabIndex := 1;
    end
  else
    begin
      cbbTitPecaServico.ItemIndex := 0;
      pcTitulos.TabIndex := 0;
    end;  }

  dmGeral.FAT_CD_M_ORC_ITE.Post;
  dmGeral.FAT_CD_M_ORC_ITE.IndexFieldNames := 'ID_SEQ_ITEM';
  btn_Add_Itens.Enabled := True;
  //btnImportar.Enabled := false;

  pnItens.Enabled := false;
  //btn_Add_Itens.SetFocus;
  dmGeral.FAT_CD_M_ORC_ITE.locate('ID_SEQ_ITEM',seq_item,[]);

  //if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true) then
  //    if dmGeral.FAT_CD_M_PED_TIT.RecordCount > 0 then
  //        dmGeral.AtualiarFPG_DOC(dmGeral.FAT_CD_M_PED_ITE,dmGeral.FAT_CD_M_PED_TIT,dmGeral.FAT_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency);

  ActiveControl := nil;
  PostMessage(btn_Add_Itens.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Itens.SetFocus;
end;

procedure TFAT_FM_M_ORC.txtVlrUnitarioEnter(Sender: TObject);
begin
  inherited;
  if not (dmGeral.TesValQtde(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end;
end;

procedure TFAT_FM_M_ORC.txtVlrUnitarioExit(Sender: TObject);
begin
  inherited;
  {if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if BtnAdicItemFocused or txtBuscaItem.Focused or
     txtQtde.Focused or
     grdItens.Focused  then
     begin
       abort;
     end;

  if not (dmGeral.TesValVlrUnitario(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_UNITARIO').AsCurrency)) then
     begin
       txtVlrUnitario.SetFocus;
       abort;
     end; }

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtBuscaItem.Focused or
     txtQtde.Focused or
     grdItens.Focused  then
     begin
       abort;
     end;

  if (not btn_Add_Itens.Focused) and (not txtBuscaItem.Focused) and
      (not cbbTamanho.Focused)   and (not cbbCor.Focused) and
      (not txtQtde.Focused)      and (not txtPerDesconto.Focused) and
      (not txtVlrDesconto.Focused) then
      begin
        abort;
      end;

  dmGeral.BUS_CD_C_ITE.close;
  dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.FAT_CD_M_ORC_ITEid_item.AsString]));
  dmGeral.BusCondPgto(0,dmGeral.FAT_CD_M_ORCid_condicao_pag.AsString);
  if not (dmGeral.TesValVlrUnitOrc(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_UNITARIO').AsCurrency)) then
     begin
        if (dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_UNITARIO').AsCurrency <=0) then
            begin
              txtVlrUnitario.SetFocus;
              abort;
            end;
     end;

end;
//showmessage(GetEnumName(TypeInfo(TDataSetState),integer(dmGeral.FAT_CD_M_PED_ITE.State))); ->  "unit: TypeInfo"
end.
