unit CMP_UN_M_PED;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask,
  vcl.Wwdbedit, JvExMask, JvToolEdit, JvDBControls, vcl.Wwdotdot, vcl.Wwdbcomb,
  Vcl.DBCtrls, vcl.wwdblook, frxExportPDF, frxClass, frxExportXLS, frxDBSet,
  JvExExtCtrls, JvExtComponent, JvPanel, frxExportMail, Datasnap.DBClient,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TCMP_FM_M_PED = class(TPAD_FM_X_PAD)
    dsPedItens: TwwDataSource;
    Label1: TLabel;
    lblPrevEntrega: TLabel;
    txtCodForn: TJvDBComboEdit;
    txtCodResp: TJvDBComboEdit;
    Label7: TLabel;
    Label8: TLabel;
    txtCondicaoPgto: TwwDBEdit;
    txtObservacao: TwwDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    gbItens: TGroupBox;
    btn_Add_Itens: TBitBtn;
    grdItens: TwwDBGrid;
    Label20: TLabel;
    txtTotGeral: TwwDBEdit;
    Label5: TLabel;
    txtTotDesc: TwwDBEdit;
    txtTotFrete: TwwDBEdit;
    Label6: TLabel;
    Label22: TLabel;
    txtTotBruto: TwwDBEdit;
    txtFornNome: TDBText;
    txtRespNome: TDBText;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    pnlLegenda: TGroupBox;
    lblPendente: TLabel;
    lblEntregueTotal: TLabel;
    pnlAberto: TPanel;
    Panel2: TPanel;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    pnItens: TPanel;
    lblItem: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    txtItemDescricao: TDBText;
    Label9: TLabel;
    txtUnidade: TDBText;
    txtBuscaItem: TJvDBComboEdit;
    txtQtde: TwwDBEdit;
    txtVlrUnitario: TwwDBEdit;
    txtVlrDesc: TwwDBEdit;
    txtVlrIpi: TwwDBEdit;
    txtPrazo: TwwDBEdit;
    txtVlrTotalItem: TwwDBEdit;
    Label14: TLabel;
    txTotIpi: TwwDBEdit;
    grdItensIButton: TwwIButton;
    deData: TJvDBDateEdit;
    dePrevisao: TJvDBDateEdit;
    CMP_DB_M_PED_ITE: TfrxDBDataset;
    CMP_DB_M_PED: TfrxDBDataset;
    CMP_XL_M_PED: TfrxXLSExport;
    CMP_PD_M_PED: TfrxPDFExport;
    CAD_DB_C_FOR: TfrxDBDataset;
    CMP_FR_M_PED: TfrxReport;
    btnImportaSolicitacao: TcxButton;
    btnImprimirPedido: TcxButton;
    pmPedido: TPopupMenu;
    ItemMenuAprovar: TMenuItem;
    pnAprovado: TPanel;
    ckbAprovado: TDBCheckBox;
    ItemMenuReprovar: TMenuItem;
    CMP_EM_M_PED: TfrxMailExport;
    Panel1: TPanel;
    lblEntregueParcial: TLabel;
    CMP_DB_M_PED_NIP: TfrxDBDataset;
    cbbTipoFrete: TwwDBLookupCombo;
    lblTipoFrete: TLabel;
    txtPesquisaData: TJvDateEdit;
    Panel3: TPanel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtCodFornButtonClick(Sender: TObject);
    procedure txtCodFornExit(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure txtVlrUnitarioExit(Sender: TObject);
    procedure txtVlrDescExit(Sender: TObject);
    procedure txtVlrIpiExit(Sender: TObject);
    procedure txtPrazoExit(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnimprimirPedidoClick(Sender: TObject);
    procedure btnImportaSolicitacaoClick(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure CMP_DB_M_PEDCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure txtQtdeEnter(Sender: TObject);
    procedure ItemMenuAprovarClick(Sender: TObject);
    procedure ItemMenuReprovarClick(Sender: TObject);
    procedure pmPedidoPopup(Sender: TObject);
    procedure CMP_EM_M_PEDBeginExport(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dbGridDblClick(Sender: TObject);
    procedure pnlDadosDblClick(Sender: TObject);
    procedure cbbTipoFreteEnter(Sender: TObject);
    procedure dsoStateChange(Sender: TObject);
  private
    { Private declarations }
     procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
     function  AcoesPosTestes: Boolean;
     procedure Atualizar_xBusca;
     procedure AbrirBuscas;
     procedure ChamaCorTamanho;
     procedure ExcPedidoCompra;
     var
       xbusca_item: String;
  public
    { Public declarations }
  end;

var
  CMP_FM_M_PED: TCMP_FM_M_PED;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FOR, CMP_RN_M_PED, CMP_UN_M_COT_ISC,uProxy,UApplayClassProxy,
  PSQ_UN_X_ITE;

procedure TCMP_FM_M_PED.AbrirBuscas;
begin
  dmGeral.BusFuncionario(1,'%');
  dmGeral.BusTipoEstoque(1,'%');
  dmGeral.BusCor(1,'%');
  dmGeral.BusTamanho(1,'%');

  dmGeral.BUS_CD_C_FU2.Close;
  dmGeral.BUS_CD_C_FU2.Data :=
    dmGeral.BUS_CD_C_FU2.DataRequest(
      VarArrayOf([0, xFuncionario]));
end;

procedure TCMP_FM_M_PED.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CMP_CD_M_PED);
  dmGeral.CMP_CD_M_PED.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
  dmGeral.BusFuncionario(0,dmGeral.CMP_CD_M_PED.FieldByName('ID_RESPONSAVEL').text);

  if not dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       dmGeral.CMP_CD_M_PED.FieldByName('int_nomefun').text :=
               dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
     end;



  HabilDesabCampos(true,clWindow);

  btnImprimirPedido.Enabled := False;

  pnItens.Enabled := False;
  txtCodForn.SetFocus;
end;

procedure TCMP_FM_M_PED.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CMP_CD_M_PED) then
     begin
       inherited;
       pnItens.Enabled := false;
       HabilDesabCampos(false,$00DADADA);
       btnImprimirPedido.Enabled := False;
       txtObservacao.SetFocus;
     end;
end;

procedure TCMP_FM_M_PED.acCancelarExecute(Sender: TObject);
begin
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CMP_CD_M_PED) then
      begin
        inherited;
        dbGrid.SetFocus;
        btnImprimirPedido.Enabled := True;
      end
   else
      begin
        txtObservacao.SetFocus;
      end;
end;

procedure TCMP_FM_M_PED.acExcluirExecute(Sender: TObject);
begin
  if CMP_CD_M_PED_TesPermExclusao  then
     begin
       ExcPedidoCompra;
     end;
end;

procedure TCMP_FM_M_PED.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  if CMP_CD_M_PED_TesCampos then
     begin
        if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
             codigo := dmGeral.CMP_CD_M_PED.FieldByName('ID_PEDIDO').AsString;
             //dmGeral.CMP_CD_M_PED.ApplyUpdates(0);
             AcoesPosTestes;
             inherited;
             dmGeral.CMP_CD_M_PED.Close;
             dmGeral.CMP_CD_M_PED.Data :=
             dmGeral.CMP_CD_M_PED.DataRequest(
                     VarArrayOf([0, codigo]));

             AbrirBuscas;
             btnimprimirPedido.Enabled := True;
           end
        else
           begin
             txtObservacao.SetFocus;
           end;
     end
  else
     begin
       txtObservacao.SetFocus;
     end;
end;

function TCMP_FM_M_PED.AcoesPosTestes: Boolean;
var
  Obj:TSMClient;
begin
  Obj := TSMClient.Create(dmGeral.Conexao.DBXConnection);

  if dmGeral.BUS_CD_M_SOL.IsEmpty then
     begin
       dmGeral.CMP_CD_M_PED.ApplyUpdates(0);

       //TClientAllApplyUpdates.Execute(obj,[dmGeral.CMP_CD_M_PED]);
     end
  else
     begin
       TClientAllApplyUpdates.Execute(obj,[dmGeral.BUS_CD_M_SOL,dmGeral.CMP_CD_M_PED]);
     end;

  obj.Free;

  dmGeral.CMP_CD_M_PED.Close;
  dmGeral.CMP_CD_M_PED.Open;

end;

procedure TCMP_FM_M_PED.Atualizar_xBusca;
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

procedure TCMP_FM_M_PED.btnimprimirPedidoClick(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.CMP_CD_M_PED.IsEmpty then
      begin
        codigo := dmGeral.CMP_CD_M_PEDid_pedido.text;
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        dmGeral.BusFornecedor(0,dmGeral.CMP_CD_M_PEDid_fornecedor.Text);


        dmGeral.CMP_CD_M_PED.Close;
        dmGeral.CMP_CD_M_PED.Data :=
                dmGeral.CMP_CD_M_PED.DataRequest(VarArrayOf([0, codigo]));

        dmGeral.BUS_CD_M_PED_NIP.Close;
        dmGeral.BUS_CD_M_PED_NIP.Data :=
                dmGeral.BUS_CD_M_PED_NIP.DataRequest(VarArrayOf([codigo]));

        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(CMP_FR_M_PED.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        dmGeral.BusCodigoRevListMestre(true,false,CMP_FM_M_PED.Name,xCodLme,xRevLme,nil);
        CMP_FR_M_PED.Variables['ft_sgq'] := false;
        if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) then
          begin
            CMP_FR_M_PED.Variables['ft_sgq'] := true;
          end;

        CMP_FR_M_PED.FileName :=  dmGeral.CAD_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString+' - Pedido '+
                                  dmGeral.CMP_CD_M_PED.FieldByName('ID_PEDIDO').AsString +'.pdf';
        CMP_EM_M_PED.Address := trim(dmGeral.BUS_CD_C_FOR.FieldByName('EMAIL').AsString);


        if dmGeral.CMP_CD_M_PED.FieldByName('APROVADO').IsNull then
           begin
             CMP_EM_M_PED.ShowExportDialog := false;
             CMP_EM_M_PED.ShowDialog := false;
             CMP_EM_M_PED.ShowProgress := false;
             CMP_FR_M_PED.Variables['ft_aprovado'] := QuotedStr('Em Aberto');
           end;

        if ((not dmGeral.CMP_CD_M_PED.FieldByName('APROVADO').IsNull) and
            (dmGeral.CMP_CD_M_PED.FieldByName('APROVADO').AsBoolean = True)) then
          begin

            CMP_EM_M_PED.ShowExportDialog := true;
            CMP_EM_M_PED.ShowDialog := true;
            CMP_EM_M_PED.ShowProgress := true;
            CMP_FR_M_PED.Variables['ft_aprovado'] := QuotedStr('Aprovado');
          end;

        if ((not dmGeral.CMP_CD_M_PED.FieldByName('APROVADO').IsNull) and
            (dmGeral.CMP_CD_M_PED.FieldByName('APROVADO').AsBoolean = False)) then
          begin
            CMP_EM_M_PED.ShowExportDialog := false;
            CMP_EM_M_PED.ShowDialog := false;
            CMP_EM_M_PED.ShowProgress := false;
            CMP_FR_M_PED.Variables['ft_aprovado'] := QuotedStr('Reprovado');
          end;



        CMP_FR_M_PED.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

        CMP_FR_M_PED.PrepareReport();
        CMP_FR_M_PED.ShowReport();
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        Exit;
      end;
end;

procedure TCMP_FM_M_PED.btnFiltroClick(Sender: TObject);
var
  xPesquisa:String;
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;

  {
   0 – id_pedido
   1 – nome do fornecedor
   2 – data do pedido
   3 – nome do responsavel
   4 – observação
   90 – todos os pedidos em aberto por fornecedor
   91-COTACAO
   92-SOLICITACAO
  }
  if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;


  dmGeral.CMP_CD_M_PED.Close;
  dmGeral.CMP_CD_M_PED.Data :=
  dmGeral.CMP_CD_M_PED.DataRequest(
          VarArrayOf([cbbPesquisa.ItemIndex, xPesquisa]));

  finally
     Screen.Cursor := crDefault;
  end;

end;

procedure TCMP_FM_M_PED.btnImportaSolicitacaoClick(Sender: TObject);
begin
  inherited;
  dmGeral.CMP_CD_M_PED_ITE.Cancel;
  if not dmGeral.CMP_CD_M_PED_ITE.IsEmpty then
     begin
       if MessageDlg('Já existem itens lançado no pedido de compra.' + #13 +
                     'Se continuar os itens deste pedido serão apagados.' + #13 +
                     'Deseja fazer uma nova importação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            dmGeral.CMP_CD_M_PED_ITE.First;
            while not dmGeral.CMP_CD_M_PED_ITE.Eof do
               begin
                 dmGeral.CMP_CD_M_PED_ITE.Delete;
               end;
            dmGeral.CMP_CD_M_SOL.Cancel;
          end
       else
          begin
            abort;
          end;
     end;

  Application.CreateForm(TCMP_FM_M_COT_ISC,CMP_FM_M_COT_ISC);
  CMP_FM_M_COT_ISC.xOrigemChamada := 1;
  CMP_FM_M_COT_ISC.ShowModal;
  CMP_FM_M_COT_ISC.Free;
end;

procedure TCMP_FM_M_PED.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;

  pnItens.Enabled  := true;

  dmGeral.CMP_CD_M_PED_ITE.Insert;

  txtBuscaItem.SetFocus;

end;

procedure TCMP_FM_M_PED.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TCMP_FM_M_PED.cbbCorExit(Sender: TObject);
begin
  inherited;

  dmGeral.CMP_CD_M_PED_ITE.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_COR').Text) = '' then
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
       dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;


  dmGeral.BusCor(0,dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('INT_NOMECOR').text :=
           dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;

  if cbbTamanho.Focused then
     Exit;

  pnItens.Enabled := true;
  txtQtde.SetFocus;
  pnlCorTamanho.Visible := False;
end;

procedure TCMP_FM_M_PED.cbbTamanhoExit(Sender: TObject);
begin
  inherited;

  dmGeral.CMP_CD_M_PED_ITE.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;


   dmGeral.BusTamanho(0,dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text);
   if dmGeral.BUS_CD_C_TAM.IsEmpty then
      begin
        Showmessage('Tamanho não encontrado.');
        dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text := '';
        cbbTamanho.SetFocus;
        exit;
      end;
   dmGeral.CMP_CD_M_PED_ITE.FieldByName('INT_NOMETAM').text :=
           dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;


  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    begin
     txtQtde.SetFocus;
     pnlCorTamanho.Visible := False;
    end;
end;

procedure TCMP_FM_M_PED.cbbTipoFreteEnter(Sender: TObject);
begin
  inherited;
   if dmGeral.CMP_CD_M_PED.FieldByName('IND_FRETE').Text = '' then
     begin
       dmGeral.BUS_PR_X_FRE;
       cbbTipoFrete.DropDown;
     end;
end;

procedure TCMP_FM_M_PED.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  txtPesquisaData.Text := '  /  /    ';
  if cbbPesquisa.ItemIndex in [2]  then
    begin
      txtPesquisa.Visible := false;
      txtPesquisaData.Visible := true;
      txtPesquisaData.Top := 17;
      txtPesquisaData.Left := 109;
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

  if cbbPesquisa.ItemIndex in [5,6,7] then
     begin
       txtPesquisa.Enabled := false;
     end
  else
     begin
       txtPesquisa.Enabled := true;
     end;
end;

procedure TCMP_FM_M_PED.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;



procedure TCMP_FM_M_PED.ChamaCorTamanho;
begin
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = False) and
     (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = False) then
     begin
        // -- Sai Tamanho e Cor
        pnlCorTamanho.Visible := False;

        txtQtde.SetFocus;
     end
  else
     begin
       if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean) and
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean) then
          begin
            //-- Entra Tamanho e Cor
            pnlCorTamanho.Left := 126;
            pnlCorTamanho.Top := 14;
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
                  pnlCorTamanho.Top   := 14;
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
                  pnlCorTamanho.Top := 14;
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

procedure TCMP_FM_M_PED.CMP_DB_M_PEDCheckEOF(Sender: TObject; var Eof: Boolean);
begin
  inherited;

  CMP_FR_M_PED.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
end;

procedure TCMP_FM_M_PED.CMP_EM_M_PEDBeginExport(Sender: TObject);
begin
  inherited;
  if (dmgeral.CMP_CD_M_PED.FieldByname('APROVADO').AsBoolean = False) then
    begin
      raise Exception.Create('Pedido de Compra Reprovado!');
      abort;
    end;
end;

procedure TCMP_FM_M_PED.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;

       if (dmGeral.CMP_CD_M_PED.FieldByName('STATUS').AsInteger = 1) then
          begin
           AFont.Color := $004080FF;
          end;

       if (dmGeral.CMP_CD_M_PED.FieldByName('STATUS').AsInteger = 2) then
          begin
           AFont.Color := clBlue;
          end;

      if not (dmGeral.CMP_CD_M_PED.FieldByName('aprovado').IsNull) then
          begin
            if (dmGeral.CMP_CD_M_PED.FieldByName('aprovado').AsBoolean = false) then
                begin
                 AFont.Color := clRed;
                end;
          end;
end;

procedure TCMP_FM_M_PED.dbGridDblClick(Sender: TObject);
begin
  if not dso.DataSet.IsEmpty then
     begin
       if dso.DataSet.State in [dsBrowse] then
          begin
            grdItens.OnMouseUp := nil;
          end;
     end;
  inherited;
end;

procedure TCMP_FM_M_PED.dsoStateChange(Sender: TObject);
begin
  inherited;
  btnExcluir.enabled := false;
end;

procedure TCMP_FM_M_PED.ExcPedidoCompra;
var
  Obj:TSMClient;
  SolAtualizada: Boolean;
begin

  Obj := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  SolAtualizada := false;  // Refere-se a solicitação de compra

  dmGeral.BUS_CD_M_SOL.Close;
  dmGeral.BUS_CD_M_SOL.Data :=
          dmGeral.BUS_CD_M_SOL.DataRequest(VarArrayOf([91,dmGeral.CMP_CD_M_PEDid_pedido.text]));
  if not dmGeral.BUS_CD_M_SOL.IsEmpty then
     begin
       dmGeral.BUS_CD_M_SOL.Edit;
       dmGeral.BUS_CD_M_SOLid_pedido_imp.AsInteger := 0;
       dmGeral.BUS_CD_M_SOLstatus.AsInteger := 0;
       SolAtualizada := true;
       dmGeral.BUS_CD_M_SOL.Post;
     end;

  dmGeral.CMP_CD_M_PED.Delete;

  if SolAtualizada then
     begin
       TClientAllApplyUpdates.Execute(obj,[dmGeral.BUS_CD_M_SOL,dmGeral.CMP_CD_M_PED]);
     end
  else
     begin
       TClientAllApplyUpdates.Execute(obj,[dmGeral.CMP_CD_M_PED]);
     end;

  obj.Free;

  dmGeral.CMP_CD_M_COT.Close;
  dmGeral.CMP_CD_M_COT.Open;
end;

procedure TCMP_FM_M_PED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.BUS_CD_M_SOL.Close;
  dmGeral.CMP_CD_M_PED.Close;
  FreeAndNil(CMP_FM_M_PED);
end;

procedure TCMP_FM_M_PED.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.CMP_CD_M_PED.Close;
  dmGeral.CMP_CD_M_PED.Data :=
  dmGeral.CMP_CD_M_PED.DataRequest(
            VarArrayOf([0, '']));

  Atualizar_xBusca;

    dmGeral.AtualizarGridItens(grdItens,'int_nomeite',14,7);

  AbrirBuscas;
  cbbPesquisaChange(self);

  if (dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean = False) or
      ( dmGeral.CMP_CD_M_PEDstatus.AsInteger <> 0) or
      (dmgeral.BUS_CD_C_FU2seg_apr_rep_cmp_ped.AsBoolean = False) then
    begin
      dbgrid.PopupMenu := nil;
    end;
end;

procedure TCMP_FM_M_PED.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := false;
     if dmGeral.CMP_CD_M_PED_ITE.IsEmpty then
       begin
         ShowMessage('Não há registro para excluir.');
         abort;
       end;
     dmGeral.CMP_CD_M_PED_ITE.Delete;
     dmGeral.CMP_CD_M_PED_ITE.Edit;
  finally
     grdItensIButton.Enabled := true;
  end;

end;

procedure TCMP_FM_M_PED.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  if pnItens.Enabled = false then
     pnItens.Enabled := true;

  dmGeral.CMP_CD_M_PED_ITE.cancel;

  if dmGeral.CMP_CD_M_PED_ITE.IsEmpty then
     begin
       dmGeral.CMP_CD_M_PED_ITE.Append;
       pnItens.Enabled := true;
       txtBuscaItem.SetFocus;
     end
  else
     begin

       dmGeral.CMP_CD_M_PED_ITE.Edit;
       pnItens.Enabled := true;
       txtQtde.SetFocus;
     end;

end;

procedure TCMP_FM_M_PED.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  btnImportaSolicitacao.Enabled    := Estado;
end;


procedure TCMP_FM_M_PED.ItemMenuAprovarClick(Sender: TObject);
begin
  inherited;
      dmgeral.CMP_CD_M_PED.edit;
      dmgeral.CMP_CD_M_PEDaprovado.AsBoolean := true;
      dmgeral.CMP_CD_M_PEDid_resp_aprov.AsInteger := xFuncionario;
      dmgeral.CMP_CD_M_PEDdta_aprov.AsDateTime := xDataSis;
      dmgeral.CMP_CD_M_PEDhor_aprov.AsString := TimeToStr(Time);
      dmgeral.CMP_CD_M_PED.Post;
      dmGeral.CMP_CD_M_PED.ApplyUpdates(0);
      ShowMessage('Aprovado!');
end;

procedure TCMP_FM_M_PED.ItemMenuReprovarClick(Sender: TObject);
begin
  inherited;
  dmgeral.CMP_CD_M_PED.edit;
  dmgeral.CMP_CD_M_PEDaprovado.AsBoolean := False;
  dmgeral.CMP_CD_M_PEDid_resp_aprov.AsString := '';
  dmgeral.CMP_CD_M_PEDdta_aprov.AsString := '';
  dmgeral.CMP_CD_M_PEDhor_aprov.AsString := '';
  dmgeral.CMP_CD_M_PED.Post;
  dmGeral.CMP_CD_M_PED.ApplyUpdates(0);
  ShowMessage('Reprovado!');
end;

procedure TCMP_FM_M_PED.pmPedidoPopup(Sender: TObject);
begin
  inherited;
  if (dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean = True) and
      ( dmGeral.CMP_CD_M_PEDstatus.AsString = '0') and
      (dmgeral.BUS_CD_C_FU2seg_apr_rep_cmp_ped.AsBoolean = True) then
    begin
      if dmGeral.CMP_CD_M_PEDaprovado.AsBoolean = true then
        begin
          CMP_FM_M_PED.pmPedido.Items[0].Enabled := False;
          CMP_FM_M_PED.pmPedido.Items[1].Enabled := true
        end
      else
        begin
          CMP_FM_M_PED.pmPedido.Items[0].Enabled := True;
          CMP_FM_M_PED.pmPedido.Items[1].Enabled := False;
        end;
    end
  else
    begin
      CMP_FM_M_PED.pmPedido.Items[0].Enabled := False;
      CMP_FM_M_PED.pmPedido.Items[1].Enabled := False;
    end;
end;

procedure TCMP_FM_M_PED.pnItensExit(Sender: TObject);
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

          dmGeral.CMP_CD_M_PED_ITE.Cancel;
          dmGeral.CMP_CD_M_PED_ITE.edit;

        finally
           pnItens.Enabled := false;
        end;
      end;
end;

procedure TCMP_FM_M_PED.pnlDadosDblClick(Sender: TObject);
begin
  if not dso.DataSet.IsEmpty then
     begin
       if dbGrid.Enabled = true then
          begin
            grdItens.OnMouseUp := grdItensMouseUp;
          end;
     end;
  inherited;

end;

procedure TCMP_FM_M_PED.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  xFormRespPSQ_ITE := CMP_FM_M_PED.Name;
  if dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean = True then
    begin
      PSQ_FM_X_ITE.BUS_CD_C_ITE.Close;
      PSQ_FM_X_ITE.BUS_CD_C_ITE.Data :=
      PSQ_FM_X_ITE.BUS_CD_C_ITE.DataRequest(
          VarArrayOf([12, dmgeral.CMP_CD_M_PEDid_fornecedor.Text,'',0]));

      if PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
        ShowMessage('Não exitem itens para este Fornecedor');

    end;

   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

           dmGeral.CMP_CD_M_PED_ITE.FieldByName('int_nomeite').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TCMP_FM_M_PED.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
  tipo_item: integer;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;


  if dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
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
          (txtVlrDesc.Focused) or (txtVlrIpi.Focused) or
          (txtPrazo.Focused)  then
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
       if dmGeral.CMP_CD_M_PED_ITE.state in [dsBrowse] then
          dmGeral.CMP_CD_M_PED_ITE.edit;
     end;


  dmGeral.CMP_CD_M_PED_ITE.FieldByName('int_nomeite').Text  := '';
  dmGeral.CMP_CD_M_PED_ITE.FieldByName('int_nomeund').Text  := '';

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
       dmGeral.CMP_CD_M_PED_ITE.FieldByName('int_nomeite').Text := '';
       dmGeral.CMP_CD_M_PED_ITE.FieldByName('int_nomeund').Text  := '';
       exit;
     end;

  dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_ITEM').Text :=
          dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

  dmGeral.CMP_CD_M_PED_ITE.FieldByName('int_nomeite').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.CMP_CD_M_PED_ITE.FieldByName('int_nomeund').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

  // Em 01/10/2019 , por Maxsuel Victor para o IF inserido aqui embaixo.
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = True) then
     begin
        dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_COR').Text := '1';

        dmGeral.BusCor(0,dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_COR').Text);

        dmGeral.CMP_CD_M_PED_ITE.FieldByName('INT_NOMECOR').text :=
                 dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;
     end
  else
     begin
        try
           pnItens.onExit := nil;
           ChamaCorTamanho;
        finally
           pnItens.OnExit := pnItensExit;
        end;
     end;
end;


procedure TCMP_FM_M_PED.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TCMP_FM_M_PED.txtCodFornButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
  PSQ_FM_X_FOR.ShowModal;
  if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
     begin
       dmGeral.CMP_CD_M_PED.FieldByName('ID_FORNECEDOR').AsInteger :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;
       dmGeral.CMP_CD_M_PED.FieldByName('int_nomefor').text       :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('FANTASIA').AsString;
     end;
   PSQ_FM_X_FOR.Free;
end;

procedure TCMP_FM_M_PED.txtCodFornExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.CMP_CD_M_PED.FieldByName('INT_NOMEFOR').Text := '';

  if dmGeral.CMP_CD_M_PED.FieldByName('ID_FORNECEDOR').Text = '' then
     begin
       ShowMessage('O campo "Fornecedor" deve ser prenchido.');
       txtCodForn.SetFocus;
       abort;
     end;

  dmGeral.BusFornecedor(0,dmGeral.CMP_CD_M_PED.FieldByName('ID_FORNECEDOR').Text);
  if not dmGeral.CAD_CD_C_FOR_TesValObrigatorio(dmGeral.BUS_CD_C_FOR) then
     begin
       dmGeral.CMP_CD_M_PED.FieldByName('ID_FORNECEDOR').Text := '';
       dmGeral.CMP_CD_M_PED.FieldByName('INT_NOMEFOR').text  := '';
       txtCodForn.SetFocus;
       exit;
     end;

  if dmGeral.BUS_CD_C_FOR.FieldByName('TRANSPORTADORA').AsBoolean then
     begin
       ShowMessage('O fornecedor não pode ser "Transportador".');
       dmGeral.CMP_CD_M_PED.FieldByName('ID_FORNECEDOR').text := '';
       dmGeral.CMP_CD_M_PED.FieldByName('INT_NOMEFOR').text  := '';
       txtCodForn.SetFocus;
       exit;
     end;

  dmGeral.CMP_CD_M_PED.FieldByName('INT_NOMEFOR').text :=
          dmGeral.BUS_CD_C_FOR.FieldByName('FANTASIA').AsString;

  if (deData.Date = dePrevisao.Date) and  (dmGeral.BUS_CD_C_FORdias_entrega.AsInteger > 0) then
    begin
      ShowMessage('Previsão de entrega padrão é '+ dmGeral.BUS_CD_C_FORdias_entrega.AsString+' dias após a data de emissão.');
      dmGeral.CMP_CD_M_PEDdta_entrega.AsDateTime := xDataSis + dmGeral.BUS_CD_C_FORdias_entrega.AsInteger;
      dePrevisao.SetFocus;
    end;
end;

procedure TCMP_FM_M_PED.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCMP_FM_M_PED.txtPrazoExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if grdItens.Focused or txtQtde.Focused or
     txtVlrUnitario.Focused or txtVlrDesc.Focused or
     txtVlrIpi.Focused then
     begin
       exit;
     end;

  if dmGeral.CMP_CD_M_PED_ITE.FieldByName('entre_prazo').AsInteger < 0 then
     begin
       ShowMessage('O prazo não pode ser menor que 0.');
       dmGeral.CMP_CD_M_PED_ITE.FieldByName('entre_prazo').AsInteger := 0;
       txtPrazo.SetFocus;
       exit;
     end;

  if dmGeral.CMP_CD_M_PED_ITEid_sequencia.text = '' then
     begin
        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        try
          dmGeral.CMP_CD_M_PED_ITEid_sequencia.AsInteger :=
               SMPrincipal.enValorChave('FAT_TB_M_NFE_ITE');
        finally
          FreeAndNil(SMPrincipal);
        end;
     end;

  //id_item := dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_ITEM').AsString;
  try
    dmGeral.CMP_CD_M_PED_ITE.Post;

    pnItens.Enabled := false;
    btn_Add_Itens.SetFocus;

    //dmGeral.CMP_CD_M_PED_ITE.locate('ID_ITEM',id_item,[]);
  except
    txtBuscaItem.SetFocus;
  end;
end;



procedure TCMP_FM_M_PED.txtQtdeEnter(Sender: TObject);
begin
  inherited;
  if dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency = 0 then
     begin

       dmGeral.BusUltPrcNfeIte(dmGeral.CAD_CD_C_PARid_empresa.AsInteger,
                          dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_ITEM').Text,
                          dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_COR').Text,
                          dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_TAMANHO').Text);

       if not dmGeral.BUS_CD_M_ULT_NFE_ITE.IsEmpty then
          begin
            dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=
                    dmGeral.BUS_CD_M_ULT_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency;
          end
       else
          begin
            dmGeral.BUS_CD_C_ITE.close;
            dmGeral.BUS_CD_C_ITE.Data :=
                    dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, dmGeral.CMP_CD_M_PED_ITE.FieldByName('ID_ITEM').Text]));
            if not dmGeral.BUS_CD_C_ITE.IsEmpty then
               begin
                 dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=
                    dmGeral.BUS_CD_C_ITE.FieldByName('preco_avista').AsCurrency;
               end;
            dmGeral.BUS_CD_C_ITE.close;
          end;
       dmGeral.BUS_CD_M_ULT_NFE_ITE.close;
     end;
end;

procedure TCMP_FM_M_PED.txtQtdeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     grdItens.Focused then
     begin
       exit;
     end;

  if not (dmGeral.TesValQtde(dmGeral.CMP_CD_M_PED_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end;
end;

procedure TCMP_FM_M_PED.txtVlrDescExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     grdItens.Focused or txtQtde.Focused or
     txtVlrUnitario.Focused then
     begin
       exit;
     end;

  if not (dmGeral.TesValVlrDesc(dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_DESCONTO').AsCurrency,
                                dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_BRUTO').AsCurrency )) then
     begin
       txtVlrDesc.SetFocus;
       abort;
     end;

end;

procedure TCMP_FM_M_PED.txtVlrIpiExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     grdItens.Focused or txtQtde.Focused or
     txtVlrUnitario.Focused or txtVlrDesc.Focused then
     begin
       exit;
     end;

  if not (dmGeral.TesValPerNf(dmGeral.CMP_CD_M_PED_ITE.FieldByName('per_ipi').AsCurrency)) then
     begin
       txtVlrIpi.SetFocus;
       abort;
     end;
end;

procedure TCMP_FM_M_PED.txtVlrUnitarioExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     txtQtde.Focused or
     grdItens.Focused  then
     begin
       abort;
     end;

  if not (dmGeral.TesValVlrUnitario(dmGeral.CMP_CD_M_PED_ITE.FieldByName('VLR_UNITARIO').AsCurrency)) then
     begin
       txtVlrUnitario.SetFocus;
       abort;
     end;
end;

end.

