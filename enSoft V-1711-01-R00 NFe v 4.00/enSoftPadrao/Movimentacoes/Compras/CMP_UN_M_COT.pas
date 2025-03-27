unit CMP_UN_M_COT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons, Vcl.ExtCtrls, JvExMask,
  JvToolEdit, JvDBControls, Vcl.Mask, vcl.Wwdbedit, Vcl.DBCtrls, vcl.wwdblook,
  frxClass, frxDBSet, frxExportPDF, frxExportXLS, JvExExtCtrls, JvExtComponent,
  JvPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, Datasnap.DBClient;

type
  TCMP_FM_M_COT = class(TPAD_FM_X_PAD)
    lblControle: TLabel;
    txtControle: TwwDBEdit;
    lblData: TLabel;
    lblResponsavel: TLabel;
    Label6: TLabel;
    txtObservacao: TwwDBEdit;
    gbItens: TGroupBox;
    grdItens: TwwDBGrid;
    btn_Add_Itens: TBitBtn;
    dsoItens: TwwDataSource;
    gbFornecedores: TGroupBox;
    grdFornecedores: TwwDBGrid;
    btnImportaSolicitacao: TcxButton;
    txtResponsavel: TJvDBComboEdit;
    dpkData: TJvDBDateEdit;
    btn_Add_Forn: TBitBtn;
    dsoFornecedores: TwwDataSource;
    pnItens: TPanel;
    lblItem: TLabel;
    Label9: TLabel;
    txtUnidade: TDBText;
    Label1: TLabel;
    Label12: TLabel;
    txtQtde: TwwDBEdit;
    txtBuscaItem: TJvDBComboEdit;
    pnFornecedores: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    txtFornecedorDescricao: TDBText;
    txtFornecedor: TJvDBComboEdit;
    grdItensIButton: TwwIButton;
    grdFornecedoresIButton: TwwIButton;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    pnlLegenda: TGroupBox;
    lblAberto: TLabel;
    lblImportado: TLabel;
    pnlAberto: TPanel;
    Panel2: TPanel;
    txtItemDescricao: TDBText;
    txtResponsavelNome: TDBText;
    CMP_FR_M_COT: TfrxReport;
    CMP_XL_M_COT: TfrxXLSExport;
    CMP_PD_M_COT: TfrxPDFExport;
    CMP_DB_M_COT_FIT: TfrxDBDataset;
    btnImprimirCotacao: TBitBtn;
    CMP_DB_M_COT: TfrxDBDataset;
    BUS_DB_C_FOR: TfrxDBDataset;
    txtPesquisaData: TJvDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acExcluirExecute(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtResponsavelButtonClick(Sender: TObject);
    procedure txtResponsavelExit(Sender: TObject);
    procedure txtFornecedorButtonClick(Sender: TObject);
    procedure txtFornecedorExit(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Add_FornClick(Sender: TObject);
    procedure pnFornecedoresExit(Sender: TObject);
    procedure grdFornecedoresMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdFornecedoresIButtonClick(Sender: TObject);
    procedure btn_Add_ItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImportaSolicitacaoClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnImprimirCotacaoClick(Sender: TObject);
    procedure CMP_DB_M_COT_FITCheckEOF(Sender: TObject; var Eof: Boolean);
  private
    { Private declarations }
    procedure AbrirBuscas;
    procedure Atualizar_xBusca;
    procedure ChamaCorTamanho;
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    function  AcoesPosTestes: Boolean;
    var
      xbusca_item: String;
  public
    { Public declarations }
  end;

var
  CMP_FM_M_COT: TCMP_FM_M_COT;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FUN, PSQ_UN_X_FOR, PSQ_UN_X_ITE,CMP_RN_M_COT,
  CMP_UN_M_COT_ISC,uProxy,UApplayClassProxy;

procedure TCMP_FM_M_COT.AbrirBuscas;
begin
  dmGeral.BusTamanho(1,'%');
  dmGeral.BusCor(1,'%');
end;

procedure TCMP_FM_M_COT.acAdicionaExecute(Sender: TObject);
begin
  inherited;

  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CMP_CD_M_COT);

  pnItens.Enabled := false;
  pnFornecedores.Enabled  := false;
  HabilDesabCampos(true,clWindow);

  dmGeral.BusFuncionario(0,IntToStr(xFuncionario));
  dmGeral.CMP_CD_M_COT.FieldByName('ID_FUNCIONARIO').AsInteger := xFuncionario;
  dmGeral.CMP_CD_M_COT.FieldByName('int_nomeres').AsString     := dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
  dmGeral.BUS_CD_C_FUN.Close;

  txtObservacao.SetFocus;
end;

procedure TCMP_FM_M_COT.acAlterarExecute(Sender: TObject);
begin

  if CMP_RN_M_COT.CmpVerifExistCotFit then
     begin
       abort;
     end;

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CMP_CD_M_COT) then
      begin
        inherited;
        pnItens.Enabled := false;
        pnFornecedores.Enabled := false;
        HabilDesabCampos(false,$00DADADA);
        txtObservacao.SetFocus;
      end;
end;

procedure TCMP_FM_M_COT.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CMP_CD_M_COT) then
     begin
       inherited;
       dbGrid.SetFocus;
       AbrirBuscas;
     end
  else
     begin
       txtObservacao.SetFocus;
     end;
end;

procedure TCMP_FM_M_COT.acExcluirExecute(Sender: TObject);
begin
  if CMP_RN_M_COT.CmpVerifExistCotFit then
     begin
       abort;
     end;

  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CMP_CD_M_COT);
end;

procedure TCMP_FM_M_COT.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  CMP_RN_M_COT.CmpOutrasValCot;

  codigo := dmGeral.CMP_CD_M_COT.FieldByName('ID_COTACAO').AsString;
  //DmGeral.Grava(dmGeral.CMP_CD_M_COT);
  AcoesPosTestes;

  inherited;

  dmGeral.CMP_CD_M_COT.Close;
  dmGeral.CMP_CD_M_COT.Data :=
  dmGeral.CMP_CD_M_COT.DataRequest(
          VarArrayOf([0, codigo]));
  AbrirBuscas;
end;

function TCMP_FM_M_COT.AcoesPosTestes: Boolean;
var
  Obj:TSMClient;
begin

  Obj := TSMClient.Create(dmGeral.Conexao.DBXConnection);

  CMP_RN_M_COT.CmpAdicionarCotFit;

  if dmGeral.BUS_CD_M_SOL.IsEmpty then
     begin
       TClientAllApplyUpdates.Execute(obj,[dmGeral.CMP_CD_M_COT]);
     end
  else
     begin
       TClientAllApplyUpdates.Execute(obj,[dmGeral.CMP_CD_M_COT,dmGeral.BUS_CD_M_SOL]);
     end;

  obj.Free;

  dmGeral.CMP_CD_M_COT.Close;
  dmGeral.CMP_CD_M_COT.Open;
end;

procedure TCMP_FM_M_COT.Atualizar_xBusca;
begin
   if xbusca_item = '' then
      begin
       lblItem.Caption := '<F7> Cód. item';
       xbusca_item := 'ID_ITEM';
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
   else if xbusca_item = 'COD_BARRA' then
      begin
        lblItem.Caption := '<F7> Cód. item';
        xbusca_item := 'ID_ITEM';
      end;
end;

procedure TCMP_FM_M_COT.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled  := true;

  dmGeral.CMP_CD_M_COT_ITE.Insert;
  txtBuscaItem.SetFocus;

end;

procedure TCMP_FM_M_COT.btn_Add_ItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f2 then
     btn_Add_Forn.SetFocus;
end;

procedure TCMP_FM_M_COT.btn_Add_FornClick(Sender: TObject);
begin
  inherited;
  pnFornecedores.Enabled  := true;

  dmGeral.CMP_CD_M_COT_FOR.Insert;
  txtFornecedor.Enabled := true;
  txtFornecedor.SetFocus;
end;

procedure TCMP_FM_M_COT.btnFiltroClick(Sender: TObject);
var
  xPesquisa:String;
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    {0-ID_COTACAO
     1-NOME FUNCIONARIO
     2-DTA_COTACAO}

    if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;

    dmGeral.CMP_CD_M_COT.Close;
    dmGeral.CMP_CD_M_COT.Data :=
    dmGeral.CMP_CD_M_COT.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, xPesquisa]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCMP_FM_M_COT.btnImportaSolicitacaoClick(Sender: TObject);
begin
  inherited;

  dmGeral.CMP_CD_M_COT_ITE.Cancel;
  if not dmGeral.CMP_CD_M_COT_ITE.IsEmpty then
     begin
       if MessageDlg('Já existem itens lançado na cotação.' + #13 +
                     'Se continuar os itens desta cotação serão apagados.' + #13 +
                     'Deseja fazer uma nova importação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            dmGeral.CMP_CD_M_COT_ITE.First;
            while not dmGeral.CMP_CD_M_COT_ITE.Eof do
               begin
                 dmGeral.CMP_CD_M_COT_ITE.Delete;
               end;
            dmGeral.CMP_CD_M_SOL.Cancel;
          end
       else
          begin
            abort;
          end;
     end;

  Application.CreateForm(TCMP_FM_M_COT_ISC,CMP_FM_M_COT_ISC);
  CMP_FM_M_COT_ISC.xOrigemChamada := 0;
  CMP_FM_M_COT_ISC.ShowModal;
  CMP_FM_M_COT_ISC.Free;
end;

procedure TCMP_FM_M_COT.btnImprimirCotacaoClick(Sender: TObject);
var
  codigo, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.CMP_CD_M_COT.IsEmpty then
      begin
        codigo := dmGeral.CMP_CD_M_COTid_cotacao.text;

        dmGeral.CMP_CD_M_COT.Close;
        dmGeral.CMP_CD_M_COT.Data :=
        dmGeral.CMP_CD_M_COT.DataRequest(VarArrayOf([0, codigo]));

        if not dmGeral.CMP_CD_M_COT.IsEmpty then
           begin
             dmGeral.CMP_CD_M_COT_FIT.IndexFieldNames := 'ID_FORNECEDOR';
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
                begin
                   LogoEmpresa := TfrxPictureView(CMP_FR_M_COT.FindObject('imgEmpresa1'));
                   if Assigned(LogoEmpresa) then
                      begin
                        LogoEmpresa.Picture.LoadFromFile(PathImg);
                      end;
                end;

             CMP_FR_M_COT.PrepareReport();
             CMP_FR_M_COT.ShowReport();
           end;
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TCMP_FM_M_COT.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TCMP_FM_M_COT.cbbCorExit(Sender: TObject);
begin
  inherited;
  dmGeral.CMP_CD_M_COT_ITE.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.CMP_CD_M_COT_ITE.FieldByName('ID_COR').Text) <> '' then
     begin
        dmGeral.BusCor(0,dmGeral.CMP_CD_M_COT_ITE.FieldByName('ID_COR').Text);
        if dmGeral.BUS_CD_C_COR.IsEmpty then
           begin
             Showmessage('Cor não encontrada.');
             dmGeral.CMP_CD_M_COT_ITE.FieldByName('ID_COR').Text := '';
             cbbCor.SetFocus;
             exit;
           end;
        dmGeral.CMP_CD_M_COT_ITE.FieldByName('INT_NOMECOR').text :=
                dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;
     end;

  if cbbTamanho.Focused then
     Exit;

  pnItens.Enabled := true;
  txtQtde.SetFocus;

  pnlCorTamanho.Visible := False;
end;

procedure TCMP_FM_M_COT.cbbPesquisaChange(Sender: TObject);
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
end;

procedure TCMP_FM_M_COT.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TCMP_FM_M_COT.cbbTamanhoExit(Sender: TObject);
begin
  inherited;
  dmGeral.CMP_CD_M_COT_ITE.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.CMP_CD_M_COT_ITE.FieldByName('ID_TAMANHO').Text) <> '' then
     begin
        dmGeral.BusCor(0,dmGeral.CMP_CD_M_COT_ITE.FieldByName('ID_TAMANHO').Text);
        if dmGeral.BUS_CD_C_TAM.IsEmpty then
           begin
             Showmessage('Tamanho não encontrado.');
             dmGeral.CMP_CD_M_COT_ITE.FieldByName('ID_TAMANHO').Text := '';
             cbbTamanho.SetFocus;
             exit;
           end;
        dmGeral.CMP_CD_M_COT_ITE.FieldByName('INT_NOMETAM').text :=
                dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;
     end;

  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    begin
     txtQtde.SetFocus;
     pnlCorTamanho.Visible := False;
    end;
end;

procedure TCMP_FM_M_COT.ChamaCorTamanho;
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
            pnlCorTamanho.Left  := 137;
            pnlCorTamanho.Top   := txtItemDescricao.Top;
            pnlCorTamanho.Width := 276;

            lblCor.Left         := 140;
            lblCor.Visible      := true;

            cbbCor.Visible      := True;
            cbbTamanho.Visible  := True;
            lblTamanho.Left     := 4;
            lblTamanho.Visible  := true;

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
                  pnlCorTamanho.Left  := 137;
                  pnlCorTamanho.Top   := txtItemDescricao.Top;
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
                  pnlCorTamanho.Left    := 137;
                  pnlCorTamanho.Top     := txtItemDescricao.Top;
                  pnlCorTamanho.Width   := 137;
                  lblTamanho.Visible    := false;

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

procedure TCMP_FM_M_COT.CMP_DB_M_COT_FITCheckEOF(Sender: TObject;
  var Eof: Boolean);
begin
  inherited;
  dmGeral.BusFornecedor(0,dmGeral.CMP_CD_M_COT_FITid_fornecedor.Text);
end;

procedure TCMP_FM_M_COT.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if dmGeral.CMP_CD_M_COTAprovada.AsBoolean then
     Afont.Color := clHotLight;
end;

procedure TCMP_FM_M_COT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.BUS_CD_M_CMP_PED.Close; // Refere-se ao pedido de compra
  dmGeral.BUS_CD_M_SOL.Close;
  dmGeral.CMP_CD_M_COT.Close;
  FreeAndNil(CMP_FM_M_COT);
end;

procedure TCMP_FM_M_COT.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CMP_CD_M_COT.Close;
  dmGeral.CMP_CD_M_COT.Data := dmGeral.CMP_CD_M_COT.DataRequest(VarArrayOf([0, '']));
  dmGeral.CMP_CD_M_COT.Open;

  AbrirBuscas;
  dmGeral.AtualizarGridItens(grdItens,'int_nomeite',18,12);

end;

procedure TCMP_FM_M_COT.FormShow(Sender: TObject);
begin
  inherited;
  Atualizar_xBusca;
  cbbPesquisaChange(self);

end;

procedure TCMP_FM_M_COT.grdFornecedoresIButtonClick(Sender: TObject);
begin
  inherited;
  try
    grdFornecedoresIButton.Enabled := false;
    if dmGeral.CMP_CD_M_COT_FOR.IsEmpty then
       begin
         ShowMessage('Não há registro para excluir.');
         abort;
       end;
    dmGeral.CMP_CD_M_COT_FOR.Delete;
    dmGeral.CMP_CD_M_COT_FOR.Edit;
  finally
    grdFornecedoresIButton.Enabled := true;
  end;
end;

procedure TCMP_FM_M_COT.grdFornecedoresMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnFornecedores.Enabled = false then
     pnFornecedores.Enabled := true;

  dmGeral.CMP_CD_M_COT_FOR.cancel;

  if dmGeral.CMP_CD_M_COT_FOR.IsEmpty then
     begin
       dmGeral.CMP_CD_M_COT_FOR.Append;
       pnFornecedores.Enabled := true;
       txtFornecedor.Enabled := true;
       txtFornecedor.SetFocus;
     end
  else
     begin
       dmGeral.CMP_CD_M_COT_FOR.Edit;
       pnFornecedores.Enabled := true;
       txtFornecedor.Enabled := false;
     end;
end;

procedure TCMP_FM_M_COT.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
    grdItensIButton.Enabled := false;
    if dmGeral.CMP_CD_M_COT_ITE.IsEmpty then
       begin
         ShowMessage('Não há registro para excluir.');
         abort;
       end;
    dmGeral.CMP_CD_M_COT_ITE.Delete;
    dmGeral.CMP_CD_M_COT_ITE.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;

end;

procedure TCMP_FM_M_COT.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnItens.Enabled = false then
     pnItens.Enabled := true;

  dmGeral.CMP_CD_M_COT_ITE.cancel;

  if dmGeral.CMP_CD_M_COT_ITE.IsEmpty then
     begin
       dmGeral.CMP_CD_M_COT_ITE.Append;
       pnItens.Enabled := true;
       txtBuscaItem.SetFocus;
     end
  else
     begin
       dmGeral.CMP_CD_M_COT_ITE.Edit;
       pnItens.Enabled := true;
       txtQtde.SetFocus;
     end;
end;

procedure TCMP_FM_M_COT.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin
  //dpkData.Enabled     := Estado;
  //dpkData.Color       := Cor;

  btnImportaSolicitacao.Enabled    := Estado;
end;

procedure TCMP_FM_M_COT.pnFornecedoresExit(Sender: TObject);
begin
  inherited;

  if (btn_Add_Forn.Focused) or (grdFornecedores.Focused) or
     (not grdFornecedoresIButton.Enabled) then
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

        dmGeral.CMP_CD_M_COT_ITE.Cancel;
        dmGeral.CMP_CD_M_COT_ITE.edit;

        finally
           pnFornecedores.Enabled := false;
        end;
      end;
end;

procedure TCMP_FM_M_COT.pnItensExit(Sender: TObject);
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

        dmGeral.CMP_CD_M_COT_ITE.Cancel;
        dmGeral.CMP_CD_M_COT_ITE.edit;

        finally
           pnItens.Enabled := false;
        end;
      end;
end;

procedure TCMP_FM_M_COT.txtFornecedorButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
   PSQ_FM_X_FOR.ShowModal;
      if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
         begin
           dmGeral.CMP_CD_M_COT_FOR.FieldByName('INT_NOMEFOR').AsString :=
                PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('FANTASIA').AsString;

           dmGeral.CMP_CD_M_COT_FOR.FieldByName('ID_FORNECEDOR').AsString :=
                PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString;
         end;
   PSQ_FM_X_FOR.Free;
end;

procedure TCMP_FM_M_COT.txtFornecedorExit(Sender: TObject);
var
  id_fornecedor, desc_forn: string;
  tipo_item: integer;
begin
  inherited;

  dmGeral.BUS_CD_C_FOR.Close;

  if dmGeral.CMP_CD_M_COT_FOR.FieldByName('id_fornecedor').Text = '' then
     begin

       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            exit;
          end;

       if btn_Add_Itens.Focused or
          grdFornecedores.Focused or
          txtObservacao.Focused or btnImportaSolicitacao.Focused  then
          exit;

       if not grdFornecedoresIButton.Enabled then
          exit;


       ShowMessage('O campo "Fornecedor" deve ser preenchido.');
       txtFornecedor.SetFocus;
       abort;
       //pnFornecedores.Enabled := false;
       //exit;
     end
  else
     begin
       if dmGeral.CMP_CD_M_COT_FOR.state in [dsBrowse] then
          dmGeral.CMP_CD_M_COT_FOR.edit;
     end;


  dmGeral.CMP_CD_M_COT_FOR.FieldByName('int_nomefor').Text := '';
  dmGeral.BUS_CD_C_FOR.Data :=
          dmGeral.BUS_CD_C_FOR.DataRequest(VarArrayOf([0, txtFornecedor.Text]));

  if not dmGeral.CAD_CD_C_FOR_TesValObrigatorio(dmGeral.BUS_CD_C_FOR) then
     begin
       txtFornecedor.SetFocus;
       dmGeral.CMP_CD_M_COT_FOR.FieldByName('int_nomefor').Text := '';
       exit;
     end;


  dmGeral.CMP_CD_M_COT_FOR.FieldByName('int_nomefor').Text :=
       dmGeral.BUS_CD_C_FOR.FieldByName('FANTASIA').AsString;

  try
    pnFornecedores.onExit := nil;


    if dmGeral.CMP_CD_M_COT_FOR.State in [dsInsert] then
       begin
         id_fornecedor := dmGeral.CMP_CD_M_COT_FOR.FieldByName('ID_FORNECEDOR').AsString;
         desc_forn     := dmGeral.CMP_CD_M_COT_FOR.FieldByName('int_nomefor').AsString;

         dmGeral.CMP_CD_M_COT_FOR.cancel;
         if dmGeral.CMP_CD_M_COT_FOR.Locate('ID_FORNECEDOR',id_fornecedor,[]) then
            begin
              ShowMessage('Fornecedor já inserido.');
              dmGeral.CMP_CD_M_COT_FOR.Insert;
              txtFornecedor.SetFocus;
              abort;
            end
         else
            begin
              dmGeral.CMP_CD_M_COT_FOR.Insert;
              dmGeral.CMP_CD_M_COT_FOR.FieldByName('ID_FORNECEDOR').AsString := id_fornecedor;
              dmGeral.CMP_CD_M_COT_FOR.FieldByName('int_nomefor').AsString   := desc_forn;
            end;
       end
    else
       dmGeral.CMP_CD_M_COT_FOR.FieldByName('ID_FORNECEDOR').AsString := id_fornecedor;

    dmGeral.CMP_CD_M_COT_FOR.Post;
    btn_Add_Forn.SetFocus;
  finally
     pnFornecedores.OnExit := pnFornecedoresExit;
  end;
end;


procedure TCMP_FM_M_COT.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCMP_FM_M_COT.txtQtdeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtBuscaItem.Focused or grdItens.Focused  then
     begin
       exit;
     end;

  if not (dmGeral.TesValQtde(dmGeral.CMP_CD_M_COT_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end;

  dmGeral.CMP_CD_M_COT_ITE.Post;

  pnItens.Enabled := false;

  // ActiveControl := nil;
  // PostMessage(btn_Add_Itens.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Itens.SetFocus;
end;

procedure TCMP_FM_M_COT.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;

  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       dmGeral.CMP_CD_M_COT_ITE.FieldByName('ID_ITEM').AsInteger :=
           PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       dmGeral.CMP_CD_M_COT_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

       dmGeral.CMP_CD_M_COT_ITE.FieldByName('int_nomeite').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
  PSQ_FM_X_ITE.Free;
end;

procedure TCMP_FM_M_COT.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
  tipo_item: integer;
begin
  inherited;

  dmGeral.BUS_CD_C_ITE.Close;

  if dmGeral.CMP_CD_M_COT_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
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

       if (txtQtde.Focused) then
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
       if dmGeral.CMP_CD_M_COT_ITE.state in [dsBrowse] then
          dmGeral.CMP_CD_M_COT_ITE.edit;
     end;


  dmGeral.CMP_CD_M_COT_ITE.FieldByName('int_nomeite').Text := '';
  dmGeral.CMP_CD_M_COT_ITE.FieldByName('int_undcom').Text  := '';

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
       dmGeral.CMP_CD_M_COT_ITE.FieldByName('int_nomeite').Text := '';
       dmGeral.CMP_CD_M_COT_ITE.FieldByName('int_undcom').Text  := '';
       exit;
     end;

  dmGeral.CMP_CD_M_COT_ITE.FieldByName('ID_ITEM').Text :=
        dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;
  dmGeral.CMP_CD_M_COT_ITE.FieldByName('int_nomeite').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.CMP_CD_M_COT_ITE.FieldByName('int_undcom').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

  try
   pnItens.onExit := nil;

   ChamaCorTamanho;
  finally
     pnItens.OnExit := pnItensExit;
  end;
end;

procedure TCMP_FM_M_COT.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = vk_f2 then
     btn_Add_Forn.SetFocus;

  if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TCMP_FM_M_COT.txtResponsavelButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
   PSQ_FM_X_FUN.ShowModal;
      if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
         begin
           dmGeral.CMP_CD_M_COT.FieldByName('INT_NOMERES').AsString :=
                PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString;

           dmGeral.CAD_CD_C_CLI.FieldByName('ID_FUNCIONARIO').AsString :=
                PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsString;
         end;
   PSQ_FM_X_FUN.Free;
end;

procedure TCMP_FM_M_COT.txtResponsavelExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_FUN.Close;

  dmGeral.CMP_CD_M_COT.FieldByName('INT_NOMERES').AsString := '';

  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, txtResponsavel.Text]));

  dmGeral.CMP_CD_M_COT.FieldByName('INT_NOMERES').AsString :=
       dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
end;

end.
