unit CMP_UN_M_SOL;

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
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Datasnap.DBClient, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White;

type
  TCMP_FM_M_SOL = class(TPAD_FM_X_PAD)
    dsoItens: TwwDataSource;
    txtControle: TwwDBEdit;
    txtMotivo: TwwDBEdit;
    txtObs: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    gbItens: TGroupBox;
    grdItens: TwwDBGrid;
    btn_Add_Itens: TBitBtn;
    cbbSetor: TwwDBLookupCombo;
    deSolicitacao: TJvDBDateEdit;
    txtFornNome: TDBText;
    txtResponsavel: TJvDBComboEdit;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    grdItensIButton: TwwIButton;
    pnItens: TPanel;
    lblItem: TLabel;
    Label9: TLabel;
    txtBuscaItem: TJvDBComboEdit;
    txtEstoque: TEdit;
    Label10: TLabel;
    Label12: TLabel;
    txtQtde: TwwDBEdit;
    txtObsItens: TwwDBEdit;
    Label13: TLabel;
    Label7: TLabel;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    pnlLegenda: TGroupBox;
    lblAberto: TLabel;
    lblImportado: TLabel;
    pnlAberto: TPanel;
    Panel2: TPanel;
    CMP_FR_M_SOL: TfrxReport;
    CMP_XL_M_SOL: TfrxXLSExport;
    CMP_PD_M_SOL: TfrxPDFExport;
    CMP_DB_M_SOL: TfrxDBDataset;
    CMP_DB_M_SOL_ITE: TfrxDBDataset;
    btnImprimirSolicitacao: TBitBtn;
    Label8: TLabel;
    txtEstMinimo: TwwDBEdit;
    CMP_FR_M_SOL_REQ: TfrxReport;
    txtDescItem: TwwDBEdit;
    cbbUnd: TwwDBLookupCombo;
    txtPesquisaData: TJvDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure txtObsItensExit(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure txtResponsavelButtonClick(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbSetorExit(Sender: TObject);
    procedure cbbSetorEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtBuscaItemEnter(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure txtQtdeEnter(Sender: TObject);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnImprimirSolicitacaoClick(Sender: TObject);
    procedure CMP_DB_M_SOL_ITECheckEOF(Sender: TObject; var Eof: Boolean);
    procedure txtDescItemExit(Sender: TObject);
    procedure txtDescItemEnter(Sender: TObject);
    procedure cbbUndEnter(Sender: TObject);
    procedure cbbUndExit(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirBuscas;
    procedure Atualizar_xBusca;
    procedure ChamaCorTamanho;
    var
      xbusca_item: String;
  public
    { Public declarations }
  end;

var
  CMP_FM_M_SOL: TCMP_FM_M_SOL;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, PSQ_UN_X_FUN, PSQ_UN_X_ITE,CMP_RN_M_SOL, enConstantes;

procedure TCMP_FM_M_SOL.AbrirBuscas;
begin
  dmGeral.BusTamanho(1,'%');
  dmGeral.BusCor(1,'%');
  dmGeral.BusSetor(1,'%');
end;

procedure TCMP_FM_M_SOL.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CMP_CD_M_SOL);

  //AcoesIniciais;

  pnItens.Enabled := false;

  dmGeral.BusFuncionario(0,IntToStr(xFuncionario));
  dmGeral.CMP_CD_M_SOL.FieldByName('ID_FUNCIONARIO').AsInteger := xFuncionario;
  dmGeral.CMP_CD_M_SOL.FieldByName('int_nomefun').AsString     := dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
  dmGeral.BUS_CD_C_FUN.Close;

  btnImprimirSolicitacao.Enabled := False;
  txtEstoque.Text := '';
  cbbSetor.SetFocus;
end;

procedure TCMP_FM_M_SOL.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CMP_CD_M_SOL) then
     begin
       inherited;
       btnImprimirSolicitacao.Enabled := False;
       pnItens.Enabled := False;
       txtObs.SetFocus;
     end;
end;

procedure TCMP_FM_M_SOL.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CMP_CD_M_SOL) then
     begin
       inherited;
       dbGrid.SetFocus;
       btnImprimirSolicitacao.Enabled := True;
       txtEstoque.Text := '0';
       AbrirBuscas;
     end
  else
     begin
       btnImprimirSolicitacao.Enabled := False;
       txtObs.SetFocus;
     end;
end;

procedure TCMP_FM_M_SOL.acExcluirExecute(Sender: TObject);
begin
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CMP_CD_M_SOL);
  btnImprimirSolicitacao.Enabled := True;
  inherited;
end;

procedure TCMP_FM_M_SOL.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin

  CMP_RN_M_SOL.CmpOutrasValSol;

  codigo := dmGeral.CMP_CD_M_SOL.FieldByName('ID_SOLICITACAO').AsString;
  DmGeral.Grava(dmGeral.CMP_CD_M_SOL);
  inherited;
  dmGeral.CMP_CD_M_SOL.Close;
  dmGeral.CMP_CD_M_SOL.Data :=
  dmGeral.CMP_CD_M_SOL.DataRequest(
          VarArrayOf([0, codigo]));
  AbrirBuscas;
  txtEstoque.Text := '';
  btnImprimirSolicitacao.Enabled := True;
end;

procedure TCMP_FM_M_SOL.Atualizar_xBusca;
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

procedure TCMP_FM_M_SOL.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled  := true;

  dmGeral.CMP_CD_M_SOL_ITE.Insert;
  txtBuscaItem.SetFocus;
end;

procedure TCMP_FM_M_SOL.btnFiltroClick(Sender: TObject);
var
  xPesquisa:String;
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;


    dmGeral.CMP_CD_M_SOL.Close;
    dmGeral.CMP_CD_M_SOL.Data :=
    dmGeral.CMP_CD_M_SOL.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, xPesquisa]));
  finally
     Screen.Cursor := crDefault;
     btnImprimirSolicitacao.Enabled := True;
  end;
end;

procedure TCMP_FM_M_SOL.btnImprimirSolicitacaoClick(Sender: TObject);
var
  codigo, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.CMP_CD_M_SOL.IsEmpty then
      begin
        codigo := dmGeral.CMP_CD_M_SOLid_solicitacao.text;

        dmGeral.CMP_CD_M_SOL.Close;
        dmGeral.CMP_CD_M_SOL.Data :=
        dmGeral.CMP_CD_M_SOL.DataRequest(VarArrayOf([0, codigo]));

        if not dmGeral.CMP_CD_M_SOL.IsEmpty then
           begin
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
                begin
                   LogoEmpresa := TfrxPictureView(CMP_FR_M_SOL_REQ.FindObject('imgEmpresa1'));
                   if Assigned(LogoEmpresa) then
                      begin
                        LogoEmpresa.Picture.LoadFromFile(PathImg);
                      end;
                end;

             dmGeral.BusCodigoRevListMestre(true,false,CMP_FM_M_SOL.Name,xCodLme,xRevLme,nil);
             //CMP_FR_M_SOL_REQ.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             CMP_FR_M_SOL_REQ.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);

             CMP_FR_M_SOL_REQ.PrepareReport();
             CMP_FR_M_SOL_REQ.ShowReport();
           end;
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TCMP_FM_M_SOL.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TCMP_FM_M_SOL.cbbCorExit(Sender: TObject);
begin
  inherited;
  dmGeral.CMP_CD_M_SOL_ITE.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_COR').Text) = '' then
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
       dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_COR').Text);
  if dmGeral.BUS_CD_C_COR.IsEmpty then
     begin
       Showmessage('Cor não encontrada.');
       dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;
  dmGeral.CMP_CD_M_SOL_ITE.FieldByName('INT_NOMECOR').text :=
          dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;

  if cbbTamanho.Focused then
     Exit;

  pnItens.Enabled := true;
  txtQtde.SetFocus;

  pnlCorTamanho.Visible := False;
end;

procedure TCMP_FM_M_SOL.cbbPesquisaChange(Sender: TObject);
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

  if cbbPesquisa.ItemIndex in [0,1] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCMP_FM_M_SOL.cbbSetorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusSetor(1,'%');
  cbbSetor.DropDown;
end;

procedure TCMP_FM_M_SOL.cbbSetorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

  if dmGeral.CMP_CD_M_SOL.FieldByName('ID_SETOR').Text = '' then
     begin
       ShowMessage('O campo "Setor" deve ser prenchido.');
       cbbSetor.SetFocus;
       exit;
     end;

  dmGeral.BusSetor(0,dmGeral.CMP_CD_M_SOL.FieldByName('ID_SETOR').Text);
  if dmGeral.BUS_CD_C_SET.IsEmpty then
     begin
       ShowMessage('Setor não encontrado.');
       cbbSetor.SetFocus;
       exit;
     end;
end;

procedure TCMP_FM_M_SOL.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TCMP_FM_M_SOL.cbbTamanhoExit(Sender: TObject);
begin
  inherited;
  dmGeral.CMP_CD_M_SOL_ITE.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_TAMANHO').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           pnlCorTamanho.Visible := False;
           exit;
         end;

       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.BusTamanho(0,dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.CMP_CD_M_SOL_ITE.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;

  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    begin
     txtQtde.SetFocus;
     pnlCorTamanho.Visible := False;
    end;
end;

procedure TCMP_FM_M_SOL.cbbUndEnter(Sender: TObject);
begin
  inherited;
   if dmGeral.CMP_CD_M_SOL_ITE.FieldByname('ID_ITEM').AsString = '0'  then
    begin
      cbbUnd.ReadOnly := false;
    end
  else
    begin
       cbbUnd.ReadOnly := true;
    end;
  dmGeral.BusUnidade;
  cbbUnd.DropDown;
end;

procedure TCMP_FM_M_SOL.cbbUndExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or grdItens.Focused or txtDescItem.Focused  then
     begin
       exit;
     end;

  if (trim(dmGeral.CMP_CD_M_SOL_ITE.FieldByName('UND_ITEM').AsString) = '') then
    begin
      ShowMessage('Deve preencher a unidade do item.');
      cbbUnd.SetFocus;
      exit;
    end;


  try
   pnItens.onExit := nil;

   ChamaCorTamanho;
  finally
     pnItens.OnExit := pnItensExit;
  end;
end;

procedure TCMP_FM_M_SOL.ChamaCorTamanho;
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
            pnlCorTamanho.Top := 26;
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
                  pnlCorTamanho.Top   := 26;
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
                  pnlCorTamanho.Top := 26;
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

procedure TCMP_FM_M_SOL.CMP_DB_M_SOL_ITECheckEOF(Sender: TObject;
  var Eof: Boolean);
  var
  saldo_fisico: String;
begin
  inherited;
  if not dmGeral.CMP_CD_M_SOL_ITE.IsEmpty then
    begin
      txtEstoque.Text := '';
      if trim(dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_ITEM').Text) <> '' then
        begin
          if {not} CMP_RN_M_SOL.BusSldItemSemAlm(dmGeral.CMP_CD_M_SOL.FieldByName('ID_EMPRESA').Text,
            dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_ITEM').Text,
            dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_COR').Text,
            dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_TAMANHO').Text,
            saldo_fisico) then
            begin
              CMP_FR_M_SOL_REQ.Variables['ft_saldo'] := QuotedStr(saldo_fisico);
            end;
      end;
    end;
end;

procedure TCMP_FM_M_SOL.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if dmGeral.CMP_CD_M_SOLstatus.AsInteger = 1 then
     Afont.Color := clHotLight;
end;

procedure TCMP_FM_M_SOL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CMP_CD_M_SOL.Close;
  FreeAndNil(CMP_FM_M_SOL);
end;

procedure TCMP_FM_M_SOL.FormCreate(Sender: TObject);
begin
  inherited;

  dmGeral.CMP_CD_M_SOL.Close;
  dmGeral.CMP_CD_M_SOL.Data :=
  dmGeral.CMP_CD_M_SOL.DataRequest(
          VarArrayOf([0, '']));

  btnImprimirSolicitacao.Enabled := True;
  AbrirBuscas;

  dmGeral.AtualizarGridItens(grdItens,'int_nomeite',16,12);
 // AtualizarGridItens;
end;

procedure TCMP_FM_M_SOL.FormShow(Sender: TObject);
begin
  inherited;
  Atualizar_xBusca;

  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean=true) then
    begin
      txtDescItem.Color := clWhite;
      txtDescItem.Enabled := true;
      cbbUnd.Enabled := true;
    end
  else
    begin
      txtDescItem.Color := $00DADADA;
      txtDescItem.Enabled := false;
      cbbUnd.Enabled := false;
    end;
  cbbPesquisaChange(self);
end;

procedure TCMP_FM_M_SOL.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := false;
     if dmGeral.CMP_CD_M_SOL_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CMP_CD_M_SOL_ITE.Delete;
     dmGeral.CMP_CD_M_SOL_ITE.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TCMP_FM_M_SOL.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnItens.Enabled = false then
     pnItens.Enabled := true;

  dmGeral.CMP_CD_M_SOL_ITE.cancel;

  if dmGeral.CMP_CD_M_SOL_ITE.IsEmpty then
     begin
       dmGeral.CMP_CD_M_SOL_ITE.Append;
       pnItens.Enabled := true;
       txtBuscaItem.SetFocus;
     end
  else
     begin
       dmGeral.CMP_CD_M_SOL_ITE.Edit;
       pnItens.Enabled := true;
       txtQtde.SetFocus;
     end;
end;

procedure TCMP_FM_M_SOL.pnItensExit(Sender: TObject);
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

        dmGeral.CMP_CD_M_SOL_ITE.Cancel;
        dmGeral.CMP_CD_M_SOL_ITE.edit;

        if not dmGeral.CMP_CD_M_SOL_ITE.IsEmpty then
           begin
             txtEstoque.Text := '';
             if trim(dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_ITEM').Text) <> '' then
                begin
                  if not CMP_RN_M_SOL.BusSldItemSemAlm(dmGeral.CMP_CD_M_SOL.FieldByName('ID_EMPRESA').Text,
                                              dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_ITEM').Text,
                                              dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_COR').Text,
                                              dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_TAMANHO').Text,
                                              saldo_fisico) then
                     begin
                       txtEstoque.Text := saldo_fisico;
                     end;
                end;
           end;
        finally
           pnItens.Enabled := false;
        end;
      end;
end;

procedure TCMP_FM_M_SOL.txtResponsavelButtonClick(Sender: TObject);
begin
  inherited;
   {PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
   PSQ_FM_X_FUN.ShowModal;
      if not dmGeral.CAD_CD_C_FUN.IsEmpty then
         begin
           labResponsavel.caption := dmGeral.CAD_CD_C_FUN.FieldByName('NOME').AsString;
           dmGeral.CMP_CD_M_SOL.FieldByName('ID_FUNCIONARIO').AsInteger:=
             dmGeral.CAD_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;
         end;
   PSQ_FM_X_FUN.Free;}

end;

procedure TCMP_FM_M_SOL.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  xFormRespPSQ_ITE := CMP_FM_M_SOL.Name;
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_ITEM').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

           dmGeral.CMP_CD_M_SOL_ITE.FieldByName('int_nomeite').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TCMP_FM_M_SOL.txtBuscaItemEnter(Sender: TObject);
begin
  inherited;
  txtEstoque.Text := '';
end;

procedure TCMP_FM_M_SOL.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
  tipo_item: integer;
begin
  inherited;

  dmGeral.BUS_CD_C_ITE.Close;

  if dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
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


       if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = FALSE) then
         begin
           if (txtQtde.Focused) or (txtObsItens.Focused) then
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
          { txtDescItem.Color := clWhite;
           txtDescItem.Enabled := true;
           txtDescItem.SetFocus; }
            dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '0';
            dmGeral.CMP_CD_M_SOL_ITE.FieldBYName('ID_ITEM').AsString := '0';
            dmGeral.CMP_CD_M_SOL_ITE.FieldBYName('DESC_ITEM').AsString := '';
            dmGeral.CMP_CD_M_SOL_ITE.FieldByName('und_item').Text  := '';
            txtDescItem.ReadOnly := false;
            cbbUnd.ReadOnly := false;
            txtDescItem.SetFocus;
            exit;
         end;
     end
  else
     begin
       if dmGeral.CMP_CD_M_SOL_ITE.state in [dsBrowse] then
          dmGeral.CMP_CD_M_SOL_ITE.edit;
     end;

  dmGeral.CMP_CD_M_SOL_ITE.FieldByName('desc_item').Text := '';
  dmGeral.CMP_CD_M_SOL_ITE.FieldByName('int_nomeite').Text := '';
  dmGeral.CMP_CD_M_SOL_ITE.FieldByName('und_item').Text  := '';
  dmGeral.CMP_CD_M_SOL_ITE.FieldByName('int_undcom').Text  := '';
  dmGeral.CMP_CD_M_SOL_ITE.FieldByName('int_estminimo').Text  := '';

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
       dmGeral.CMP_CD_M_SOL_ITE.FieldByName('desc_item').Text := '';
       dmGeral.CMP_CD_M_SOL_ITE.FieldByName('int_nomeite').Text := '';
       dmGeral.CMP_CD_M_SOL_ITE.FieldByName('und_item').Text  := '';
       dmGeral.CMP_CD_M_SOL_ITE.FieldByName('int_undcom').Text  := '';
       exit;
     end;

  dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_ITEM').Text       :=
        dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;
  dmGeral.CMP_CD_M_SOL_ITE.FieldByName('int_nomeite').Text   :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
  dmGeral.CMP_CD_M_SOL_ITE.FieldByName('desc_item').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

  dmGeral.CMP_CD_M_SOL_ITE.FieldByName('int_estminimo').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('EST_MINIMO').AsString;

  dmGeral.CMP_CD_M_SOL_ITE.FieldByName('int_undcom').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;
  dmGeral.CMP_CD_M_SOL_ITE.FieldByName('und_item').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;


  txtDescItem.ReadOnly := true;
  cbbUnd.ReadOnly := true;


  try
   pnItens.onExit := nil;

   ChamaCorTamanho;
  finally
     pnItens.OnExit := pnItensExit;
  end;
end;

procedure TCMP_FM_M_SOL.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TCMP_FM_M_SOL.txtDescItemEnter(Sender: TObject);
begin
  inherited;

  if dmGeral.CMP_CD_M_SOL_ITE.FieldByname('ID_ITEM').AsString = '0'  then
    begin
      txtDescItem.ReadOnly := false;
    end
  else
    begin
      txtDescItem.ReadOnly := true;
    end;
end;

procedure TCMP_FM_M_SOL.txtDescItemExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or grdItens.Focused  then
     begin
       exit;
     end;

  if (trim(dmGeral.CMP_CD_M_SOL_ITE.FieldByName('DESC_ITEM').AsString) = '') then
    begin
      ShowMessage('Deve preencher a descrição do item.');
      txtDescItem.SetFocus;
      exit;
    end;
end;

procedure TCMP_FM_M_SOL.txtQtdeEnter(Sender: TObject);
var
  saldo_fisico: String;
begin
  inherited;

  txtEstoque.Text := '0';

  if CMP_RN_M_SOL.BusSldItemSemAlm(dmGeral.CMP_CD_M_SOL.FieldByName('ID_EMPRESA').Text,
                              dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_ITEM').Text,
                              dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_COR').Text,
                              dmGeral.CMP_CD_M_SOL_ITE.FieldByName('ID_TAMANHO').Text,
                              saldo_fisico) then
     begin
       txtEstoque.Text := saldo_fisico;
     end;
end;

procedure TCMP_FM_M_SOL.txtQtdeExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or txtDescItem.Focused or cbbUnd.Focused or
     grdItens.Focused  then
     begin
       exit;
     end;

  if not (dmGeral.TesValQtde(dmGeral.CMP_CD_M_SOL_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end;
end;

procedure TCMP_FM_M_SOL.txtObsItensExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtBuscaItem.Focused or
     grdItens.Focused or txtObsItens.Focused then
     begin
       exit;
     end;

  dmGeral.CMP_CD_M_SOL_ITE.Post;

  pnItens.Enabled := false;
  btn_Add_Itens.SetFocus;
end;

procedure TCMP_FM_M_SOL.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

end.
