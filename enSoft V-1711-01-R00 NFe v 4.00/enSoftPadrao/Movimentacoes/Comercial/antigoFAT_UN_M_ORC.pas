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
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

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
    procedure txtObservacaoExit(Sender: TObject);
    procedure txtPerDescontoEnter(Sender: TObject);
    procedure txtVlrDescontoEnter(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure txtVlrUnitarioEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mmPcpObsIteEnter(Sender: TObject);
    procedure mmPcpObsIteExit(Sender: TObject);
    procedure FAT_DB_M_ORC_ITE1CheckEOF(Sender: TObject; var Eof: Boolean);
  private
    { Private declarations }
    function BtnAdicItemFocused: Boolean;
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    procedure DesabilitarCampos(Estado: Boolean; Cor: TColor);
    procedure HabilitarCampos(Estado: Boolean; Cor: TColor);
    procedure Atualizar_xBusca;
    procedure ChamaCorTamanho;
    procedure AtualizarGridItens(grdItens: TwwDBGrid; NomeColItem: String; TamLargCor, TamLargTam: Integer);
  public
    { Public declarations }
    var
       xbusca_item: String;
  end;

var
  FAT_FM_M_ORC: TFAT_FM_M_ORC;
  xPercDescPerm: Currency;
implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, PSQ_UN_X_ITE, Vcl.RecError,
  FAT_RN_M_ORC;

procedure TFAT_FM_M_ORC.acAdicionaExecute(Sender: TObject);
begin
  inherited;

  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_ORC);

  dmGeral.BusFuncionario(0,IntToStr(xFuncionario));
  dmGeral.FAT_CD_M_ORC.FieldByName('ID_FUNCIONARIO').AsInteger := xFuncionario;

  if xbusca_item = '' then
     begin
       lblItem.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
     end;

  HabilDesabCampos(true,clWindow);
  pnItens.Enabled := false;
  txtCliente.SetFocus;
end;

procedure TFAT_FM_M_ORC.acAlterarExecute(Sender: TObject);
begin
 if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FAT_CD_M_ORC) then
    begin
      inherited;
      pnItens.Enabled := false;
      HabilDesabCampos(false,$00DADADA);
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
        dbGrid.SetFocus;
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

  //try
   if mmPcpObsIte.CanFocus then
      mmPcpObsIte.SetFocus
   else
     begin
       pnlCorTamanho.Visible := False;
       txtqtde.SetFocus;
     end;
  //finally

  //end;

  dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_NOMECOR').AsString := '';
  dmGeral.BusCor(0,dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_COR').AsString);
  if (not dmGeral.BUS_CD_C_COR.IsEmpty)  then
     begin
       dmGeral.FAT_CD_M_ORC_ITE.FieldByName('INT_NOMECOR').AsString :=
               dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString;
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
     dmGeral.FAT_CD_M_ORC_ITE.Delete;
     dmGeral.FAT_CD_M_ORC_ITE.Edit;
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
  FAT_FM_M_ORC.KeyPreview := true;

  if (cbbTamanho.Focused) or (cbbCor.Focused) then
     Exit;

  pnItens.Enabled := true;
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
  dmGeral.FAT_CD_M_ORC.FieldByName('INT_NOMECLI').Text :=
       dmGeral.BUS_CD_C_CLI.FieldByName('NOME').AsString;

  dmGeral.FAT_CD_M_ORC.FieldByName('INT_ID_PERFIL').AsInteger :=
       dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').AsInteger;

end;

procedure TFAT_FM_M_ORC.txtObservacaoExit(Sender: TObject);
begin
  inherited;
  if (dmGeral.FAT_CD_M_ORC.FieldByName('DTA_ENTREGA').text = '') or
     (dmGeral.FAT_CD_M_ORC.FieldByName('DTA_VALIDADE').text = '') then
     begin
       ShowMessage('Campo data deve ser preenchido.');
       dpkDataEntrega.SetFocus;
     end
  else
     begin
       if (dmGeral.FAT_CD_M_ORC.FieldByName('DTA_ENTREGA').AsDateTime < dmGeral.FAT_CD_M_ORC.FieldByName('DTA_ORCAMENTO').AsDateTime)then
        begin
          ShowMessage('A data de entrega não pode ser inferior à data de orçamento .');
            dpkDataEntrega.SetFocus;
        end;
          if (dmGeral.FAT_CD_M_ORC.FieldByName('DTA_VALIDADE').AsDateTime < dmGeral.FAT_CD_M_ORC.FieldByName('DTA_ENTREGA').AsDateTime) then
          begin
            ShowMessage('A data de validade não pode ser inferior à data da entrega .');
            dpkDataEntrega.SetFocus;
          end;
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
       id_item       := dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString;
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
          end;

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

procedure TFAT_FM_M_ORC.txtPerDescontoEnter(Sender: TObject);
begin
  inherited;
  xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_ORC_ITE);
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

     if not (dmGeral.TesValPerDesconto(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('PER_DESCONTO').AsCurrency,xPercDescPerm)) then
     begin
       txtPerDesconto.SetFocus;
       abort;
     end;

end;

procedure TFAT_FM_M_ORC.txtQtdeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
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
     end;
end;

procedure TFAT_FM_M_ORC.txtTamanhoExit(Sender: TObject);
begin
  inherited;
   if not cbbCor.Focused then
      pnlCorTamanho.Visible  := False;
end;

procedure TFAT_FM_M_ORC.txtVlrDescontoEnter(Sender: TObject);
begin
  inherited;
  xPercDescPerm := dmGeral.BuscarDescItem(dmGeral.FAT_CD_M_ORC_ITE);
end;

procedure TFAT_FM_M_ORC.txtVlrDescontoExit(Sender: TObject);
var
  item: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        //exit;
        //btn_Add_Itens.SetFocus;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     txtQtde.Focused    or txtVlrUnitario.Focused  or
     txtPerDesconto.Focused or grdItens.Focused then
     begin
       abort;
     end;

  if not (dmGeral.TesValVlrDesconto(dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_DESCONTO').AsCurrency,
                                    dmGeral.FAT_CD_M_ORC_ITE.FieldByName('VLR_BRUTO').AsCurrency,xPercDescPerm)) then
     begin
       txtVlrDesconto.SetFocus;
       abort;
     end;
  item := dmGeral.FAT_CD_M_ORC_ITE.FieldByName('ID_ITEM').AsString;
  dmGeral.FAT_CD_M_ORC_ITE.Post;
  pnItens.Enabled := false;
  dmGeral.FAT_CD_M_ORC_ITE.locate('ID_ITEM',item,[]);
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
  if btnCancelar.Focused or
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
     end;
end;
//showmessage(GetEnumName(TypeInfo(TDataSetState),integer(dmGeral.FAT_CD_M_PED_ITE.State))); ->  "unit: TypeInfo"
end.
