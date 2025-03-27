unit EST_UN_M_MET;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,datasnap.DBClient,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, JvDBControls, Vcl.DBCtrls, Vcl.Buttons, vcl.wwdblook, JvExMask,
  JvToolEdit, Vcl.Mask,frxClass, frxExportPDF, frxExportXLS, frxDBSet,
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
  TEST_FM_M_MET = class(TPAD_FM_X_PAD)
    txtCodResponsavel: TDBEdit;
    txtControle: TDBEdit;
    dpkData: TJvDBDateEdit;
    lblRevisao: TLabel;
    txtRevisao: TDBEdit;
    cbbTipoEstoque: TwwDBLookupCombo;
    txtObservacoes: TDBEdit;
    lblControle: TLabel;
    lblResponsavel: TLabel;
    lblTipoEstoque: TLabel;
    lblObservacoes: TLabel;
    lblAniversario: TLabel;
    gbItens: TGroupBox;
    Label16: TLabel;
    btn_Add_Itens: TBitBtn;
    grdItens: TwwDBGrid;
    grdItensIButton: TwwIButton;
    pnItens: TPanel;
    lblItem: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    txtUnidade: TDBText;
    txtItemDescricao: TDBText;
    Label1: TLabel;
    lblQtde: TLabel;
    txtBuscaItem: TJvDBComboEdit;
    txtObservacao: TDBEdit;
    txtQtde: TDBEdit;
    txtSaldo: TEdit;
    pnlCorTamanho: TPanel;
    lblTamanho: TLabel;
    lblCor: TLabel;
    cbbCor: TwwDBLookupCombo;
    cbbTamanho: TwwDBLookupCombo;
    btnImprimir: TcxButton;
    EST_XL_M_MET: TfrxXLSExport;
    EST_PD_M_MET: TfrxPDFExport;
    EST_DB_M_MET: TfrxDBDataset;
    EST_FR_M_MET: TfrxReport;
    EST_DB_M_MET_ITE: TfrxDBDataset;
    dsoIte: TwwDataSource;
    txtPesquisaData: TJvDateEdit;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtBuscaItemButtonClick(Sender: TObject);
    procedure txtObservacaoExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure pnItensExit(Sender: TObject);
    procedure txtQtdeEnter(Sender: TObject);
    procedure txtBuscaItemExit(Sender: TObject);
    procedure dpkDataExit(Sender: TObject);
    procedure cbbTipoEstoqueEnter(Sender: TObject);
    procedure cbbTipoEstoqueExit(Sender: TObject);
    procedure grdItensMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Add_ItensClick(Sender: TObject);
    procedure txtBuscaItemEnter(Sender: TObject);
    procedure cbbTamanhoEnter(Sender: TObject);
    procedure cbbTamanhoExit(Sender: TObject);
    procedure cbbCorEnter(Sender: TObject);
    procedure cbbCorExit(Sender: TObject);
    procedure grdItensIButtonClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure HabilDesabCampos(Estado: Boolean; Cor: TColor);
    procedure AbrirBuscas;
    procedure Atualizar_xBusca;
    procedure ChamaCorTamanho;
    procedure PassarCdsAnterior;
    var
      xbusca_item,xAntIdTipoEstoque: String;
       xCdsItensAntigo: TClientDataSet;
  public
    { Public declarations }
  end;

var
  EST_FM_M_MET: TEST_FM_M_MET;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE;

procedure TEST_FM_M_MET.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.EST_CD_M_MET);
  pnItens.Enabled := false;
  HabilDesabCampos(True, clWhite);
  dmGeral.BusFuncionario(0,IntToStr(xFuncionario));
  dmGeral.EST_CD_M_MET.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;
  dmGeral.EST_CD_M_MET.FieldByName('INT_NOMERES').AsString     := dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
  PassarCdsAnterior;
  txtSaldo.Text := '';
  dpkData.SetFocus;
end;

procedure TEST_FM_M_MET.acAlterarExecute(Sender: TObject);
begin
  inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.EST_CD_M_MET) then
     begin
       inherited;
       pnItens.Enabled := false;
       HabilDesabCampos(false,$00DADADA);
       PassarCdsAnterior;
     end;
end;

procedure TEST_FM_M_MET.acCancelarExecute(Sender: TObject);
begin
  inherited;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.EST_CD_M_MET) then
     begin
       inherited;
       dbGrid.SetFocus;
       txtSaldo.Text := '';
     end
  else
     begin
       dpkData.SetFocus;
     end;
end;

procedure TEST_FM_M_MET.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.EST_CD_M_MET);
end;

procedure TEST_FM_M_MET.AbrirBuscas;
begin
  dmGeral.BusAlmox(1,'%');
  dmGeral.BusTipoEstoque(5,'');
  dmGeral.BusTamanho(1,'%');
  dmGeral.BusCor(1,'%');
end;

procedure TEST_FM_M_MET.HabilDesabCampos(Estado: Boolean; Cor: TColor);
begin

  dpkData.Enabled := Estado;
  dpkData.Color   := Cor;

  txtSaldo.Text := '';
end;

procedure TEST_FM_M_MET.acGravarExecute(Sender: TObject);
var
  codigo,empresa:string;
begin
  inherited;
  empresa := dmGeral.EST_CD_M_MET.FieldByName('ID_EMPRESA').AsString;
  codigo  := dmGeral.EST_CD_M_MET.FieldByName('ID_MET').AsString;

   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
      dmGeral.Grava(dmGeral.EST_CD_M_MET);
      inherited;
      dmGeral.EST_CD_M_MET.Close;
      dmGeral.EST_CD_M_MET.Open;
      dmGeral.EST_CD_M_MET.Data :=
      dmGeral.EST_CD_M_MET.DataRequest(
              VarArrayOf([0, empresa ,codigo]));
      AbrirBuscas;
      txtSaldo.Text := '';
     end;
end;



procedure TEST_FM_M_MET.PassarCdsAnterior;
begin
  if xCdsItensAntigo <> nil then
     begin
       xCdsItensAntigo.Destroy;
       xCdsItensAntigo := nil;
     end;
  xCdsItensAntigo       := TClientDataSet.Create(self);
  xCdsItensAntigo.Data  := dmGeral.EST_CD_M_MET_ITE.Data;
  xCdsItensAntigo.GotoCurrent(dmGeral.EST_CD_M_MET_ITE);
end;

procedure TEST_FM_M_MET.btnFiltroClick(Sender: TObject);
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


    dmGeral.EST_CD_M_MET.Close;
    dmGeral.EST_CD_M_MET.Data :=
    dmGeral.EST_CD_M_MET.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, xPesquisa]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TEST_FM_M_MET.btnImprimirClick(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.EST_CD_M_MET.IsEmpty then
      begin
        codigo := dmGeral.EST_CD_M_METid_met.text;

        dmGeral.EST_CD_M_MET.Close;
        dmGeral.EST_CD_M_MET.Data :=
        dmGeral.EST_CD_M_MET.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,codigo]));

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(EST_FR_M_MET.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        dmGeral.BusCodigoRevListMestre(true,false,EST_FM_M_MET.Name,xCodLme,xRevLme,nil);
        EST_FR_M_MET.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

        EST_FR_M_MET.PrepareReport();
        EST_FR_M_MET.ShowReport();
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TEST_FM_M_MET.btn_Add_ItensClick(Sender: TObject);
begin
  inherited;
  pnItens.Enabled  := true;

  dmGeral.EST_CD_M_MET_ITE.Insert;
  txtBuscaItem.SetFocus;
end;





procedure TEST_FM_M_MET.cbbCorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCor(1,'%');
  cbbCor.DropDown;
end;

procedure TEST_FM_M_MET.cbbCorExit(Sender: TObject);
begin
  inherited;
  dmGeral.EST_CD_M_MET_ITE.FieldByName('INT_NOMECOR').text := '';

  if trim(dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_COR').Text) = '' then
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
       dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_COR').Text := '';
       cbbCor.SetFocus;
       exit;
     end;

  if trim(dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_COR').Text) <> '' then
     begin
        dmGeral.BusCor(0,dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_COR').Text);
        if dmGeral.BUS_CD_C_COR.IsEmpty then
           begin
             Showmessage('Cor não encontrada.');
             dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_COR').Text := '';
             cbbCor.SetFocus;
             exit;
           end;
        dmGeral.EST_CD_M_MET_ITE.FieldByName('INT_NOMECOR').text :=
                dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').Text;
     end;

  if cbbTamanho.Focused then
     Exit;

  pnItens.Enabled := true;
  txtObservacao.SetFocus;

  pnlCorTamanho.Visible := False;
end;

procedure TEST_FM_M_MET.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
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

procedure TEST_FM_M_MET.cbbTamanhoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTamanho(1,'%');
  cbbTamanho.DropDown;
end;

procedure TEST_FM_M_MET.cbbTamanhoExit(Sender: TObject);
begin
  inherited;
   dmGeral.EST_CD_M_MET_ITE.FieldByName('INT_NOMETAM').text := '';

  if trim(dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_TAMANHO').Text) = '' then
     begin
       if btnCancelar.Focused or
          btnGrava.Focused  then
          begin
            pnlCorTamanho.Visible := False;
            exit;
          end;
       Showmessage('O campo "Tamanho" deve ser preenchido.');
       dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;

  dmGeral.BusCor(0,dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_TAMANHO').Text);
  if dmGeral.BUS_CD_C_TAM.IsEmpty then
     begin
       Showmessage('Tamanho não encontrado.');
       dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_TAMANHO').Text := '';
       cbbTamanho.SetFocus;
       exit;
     end;
  dmGeral.EST_CD_M_MET_ITE.FieldByName('INT_NOMETAM').text :=
          dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').Text;


  if cbbCor.CanFocus then
     cbbCor.SetFocus
  else
    begin
     txtObservacao.SetFocus;
     pnlCorTamanho.Visible := False;
    end;
end;

procedure TEST_FM_M_MET.cbbTipoEstoqueEnter(Sender: TObject);
begin
  inherited;
   if dmGeral.EST_CD_M_MET.FieldByName('ID_TIPO_MOV_ESTOQUE').text <> '' then
     begin
       xAntIdTipoEstoque := dmGeral.EST_CD_M_MET.FieldByName('ID_TIPO_MOV_ESTOQUE').text;
     end;
  dmGeral.BusTipoEstoque(5,'');
  cbbTipoEstoque.DropDown;
end;

procedure TEST_FM_M_MET.cbbTipoEstoqueExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused then
     begin
       exit;
     end;

  if trim(dmGeral.EST_CD_M_MET.FieldByName('ID_TIPO_MOV_ESTOQUE').text) = '' then
     begin
       ShowMessage('O campo "Tipo de estoque" deve ser preenchido!');
       cbbTipoEstoque.SetFocus;
       cbbTipoEstoque.Text := '';
       Abort;
     end;


  dmGeral.BusTipoEstoque(0,dmGeral.EST_CD_M_MET.FieldByName('ID_TIPO_MOV_ESTOQUE').text);

  if dmGeral.BUS_CD_C_TME.IsEmpty then
     begin
       ShowMessage('Tipo de movimento de estoque não encontrado!');
       cbbTipoEstoque.SetFocus;
       cbbTipoEstoque.Text := '';
       Abort;
     end;


   if (xAntIdTipoEstoque <> '') then
     begin
        if (xAntIdTipoEstoque <> dmGeral.EST_CD_M_MET.FieldByName('ID_TIPO_MOV_ESTOQUE').text) then
           begin
             dmGeral.EST_CD_M_MET_ITE.Cancel;
             if not dmGeral.EST_CD_M_MET_ITE.IsEmpty then
                begin
                  if MessageDlg('Já existem itens lançado nesta movimentação.' + #13 +
                                'Se continuar, os itens serão apagados.' + #13 +
                                'Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                     begin
                       dmGeral.EST_CD_M_MET_ITE.First;
                       while not dmGeral.EST_CD_M_MET_ITE.Eof do
                          begin
                            dmGeral.EST_CD_M_MET_ITE.Delete;
                          end;
                     end
                  else
                     begin
                       dmGeral.EST_CD_M_MET.FieldByName('ID_TIPO_MOV_ESTOQUE').Value := xAntIdTipoEstoque;
                       dmGeral.BusTipoEstoque(5,'');
                       exit;
                     end;
                end;
           end;
     end;

  if not (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger in [0]) then
     begin
       ShowMessage('O "Indicador" do Tipo de movimento de estoque deve ser do tipo "Normal"!');
       cbbTipoEstoque.SetFocus;
       cbbTipoEstoque.Text := '';
       Abort;
     end;

end;

procedure TEST_FM_M_MET.dpkDataExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       exit;
     end;

   if (dpkData.Text = '  /  /    ') then
     begin
       ShowMessage('O campo "data" deve ser preenchido');
       dpkData.SetFocus;
     end;
end;

procedure TEST_FM_M_MET.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.EST_CD_M_MET.Close;
  FreeAndNil(EST_FM_M_MET);
end;

procedure TEST_FM_M_MET.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.EST_CD_M_MET.Close;
  dmGeral.EST_CD_M_MET.Data := dmGeral.EST_CD_M_MET.DataRequest(VarArrayOf([0, '']));

  cbbPesquisa.ItemIndex := 0;
  cbbPesquisaChange(self);

  AbrirBuscas;
  dmGeral.AtualizarGridItens(grdItens,'int_nomeite',16,12);


  Atualizar_xBusca;

  txtSaldo.Text := '';

  txtPesquisa.SetFocus;

end;

procedure TEST_FM_M_MET.grdItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdItensIButton.Enabled := false;
     if dmGeral.EST_CD_M_MET_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.EST_CD_M_MET_ITE.Delete;
     dmGeral.EST_CD_M_MET_ITE.Edit;
  finally
    grdItensIButton.Enabled := true;
  end;
end;

procedure TEST_FM_M_MET.grdItensMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnItens.Enabled = false then
     pnItens.Enabled := true;

  dmGeral.EST_CD_M_MET_ITE.cancel;

  if dmGeral.EST_CD_M_MET_ITE.IsEmpty then
     begin
       dmGeral.EST_CD_M_MET_ITE.Append;
       pnItens.Enabled := true;
       txtBuscaItem.SetFocus;
     end
  else
     begin
       dmGeral.EST_CD_M_MET_ITE.Edit;
       pnItens.Enabled := true;
       txtQtde.SetFocus;
     end;
end;

procedure TEST_FM_M_MET.pnItensExit(Sender: TObject);
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

        dmGeral.EST_CD_M_MET_ITE.Cancel;
        dmGeral.EST_CD_M_MET_ITE.edit;

        if not dmGeral.EST_CD_M_MET_ITE.IsEmpty then
           begin
             txtSaldo.Text := '';
             if (trim(dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_ITEM').Text) <> '') then
                begin
                   if dmGeral.BusSaldoItem(dmGeral.EST_CD_M_MET.FieldByName('ID_EMPRESA').Text,
                      dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_ITEM').Text,
                      dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_COR').Text,
                      dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_TAMANHO').Text,
                      '0',
                      saldo_fisico) then
                      begin
                         txtSaldo.Text := saldo_fisico;
                      end;
                end;
           end;
        finally
           pnItens.Enabled := false;
        end;
      end;
end;

procedure TEST_FM_M_MET.txtBuscaItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_ITEM').AsInteger :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

       dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_BUSCA_ITEM').AsString :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName(xbusca_item).AsString;

       dmGeral.EST_CD_M_MET_ITE.FieldByName('int_nomeite').Text :=
          PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
     end;
  PSQ_FM_X_ITE.Free;
end;

procedure TEST_FM_M_MET.txtBuscaItemEnter(Sender: TObject);
begin
  inherited;
  txtSaldo.Text := '';
end;

procedure TEST_FM_M_MET.txtBuscaItemExit(Sender: TObject);
var
  id_item, desc, und, id_busca_item : string;
  tipo_item: integer;
  desc_cor, desc_tam, id_cor, id_tamanho, num_lote : string;
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;


  if dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_BUSCA_ITEM').Text = '' then
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
          (txtQtde.Focused) then
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

       if (dmGeral.EST_CD_M_MET.FieldByName('id_tipo_mov_estoque').AsInteger = 0)   or
          (trim(dmGeral.EST_CD_M_MET.FieldByName('id_tipo_mov_estoque').text) = '') then
          begin
            ShowMessage('O campo "Tipo de estoque" deve ser preenchido.');
            dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_ITEM').Text          := '';
            dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_BUSCA_ITEM').Text    := '';
            dmGeral.EST_CD_M_MET_ITE.FieldByName('int_nomeite').Text      := '';
            dmGeral.EST_CD_M_MET_ITE.FieldByName('int_nomeund').Text := '';
            abort;
          end;

       if dmGeral.EST_CD_M_MET_ITE.state in [dsBrowse] then
          dmGeral.EST_CD_M_MET_ITE.edit;
     end;


  dmGeral.EST_CD_M_MET_ITE.FieldByName('int_nomeite').Text := '';
  dmGeral.EST_CD_M_MET_ITE.FieldByName('int_nomeund').Text  := '';

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

           dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_BUSCA_ITEM').AsString := '';
                 dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_ITEM').AsString := '';
                 dmGeral.EST_CD_M_MET_ITE.FieldByName('INT_NOMEITE').AsString := '';
                 dmGeral.EST_CD_M_MET_ITE.FieldByName('INT_NOMEUND').AsString := '';
                 dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_COR').AsString := '';
                 dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_TAMANHO').AsString := '';
                 dmGeral.EST_CD_M_MET_ITE.FieldByName('INT_NOMECOR').AsString := '';
                 dmGeral.EST_CD_M_MET_ITE.FieldByName('INT_NOMETAM').AsString := '';

          exit;
        end;

      dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_ITEM').Text :=
          dmGeral.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsString;

      dmGeral.EST_CD_M_MET_ITE.FieldByName('int_nomeite').Text :=
          dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

      dmGeral.EST_CD_M_MET_ITE.FieldByName('int_nomeund').Text :=
          dmGeral.BUS_CD_C_ITE.FieldByName('id_und_venda').AsString;

      dmGeral.EST_CD_M_MET_ITE.FieldByName('INT_TIPO_ITEM').AsInteger :=
          dmGeral.BUS_CD_C_ITE.FieldByName('INT_TIPO_ITEM').AsInteger;

      try
         pnItens.onExit := nil;
         ChamaCorTamanho;
      finally
         pnItens.OnExit := pnItensExit;
      end;

end;

procedure TEST_FM_M_MET.ChamaCorTamanho;
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


procedure TEST_FM_M_MET.txtBuscaItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f7 then
     Atualizar_xBusca;
end;

procedure TEST_FM_M_MET.txtObservacaoExit(Sender: TObject);
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

procedure TEST_FM_M_MET.txtQtdeEnter(Sender: TObject);
var
  saldo_fisico: String;
begin
  inherited;

  txtSaldo.Text := '';

      if not dmGeral.BusSaldoItem(dmGeral.EST_CD_M_MET.FieldByName('ID_EMPRESA').Text,
                                        dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_ITEM').Text,
                                        dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_COR').Text,
                                        dmGeral.EST_CD_M_MET_ITE.FieldByName('ID_TAMANHO').Text,
                                        '0',
                                        saldo_fisico) then
           begin
             dmGeral.BusTipoEstoque(0,dmGeral.EST_CD_M_MET.FieldByName('ID_TIPO_MOV_ESTOQUE').AsString);
             if (not ((dmGeral.BUS_CD_C_TME.FieldByName('TIPO_MOVIMENTO').AsInteger = 0) and
                     (dmGeral.BUS_CD_C_TME.FieldByName('INDICADOR').AsInteger =0))) then
                begin
                  Showmessage('O registro de saldo não foi encontrado.');
                  if txtBuscaItem.CanFocus then
                     txtBuscaItem.SetFocus
                  else
                    txtObservacao.SetFocus;
                  abort;
                end;
           end;

      txtSaldo.Text := saldo_fisico;

end;

procedure TEST_FM_M_MET.txtQtdeExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or btnGrava.Focused  then
     begin
       exit;
     end;

  if btn_Add_Itens.Focused or txtBuscaItem.Focused or
     grdItens.Focused or txtObservacao.Focused then
     begin
       exit;
     end;

  if not (dmGeral.TesValQtde(dmGeral.EST_CD_M_MET_ITE.FieldByName('QTDE').AsFloat)) then
     begin
       txtQtde.SetFocus;
       abort;
     end;

  dmGeral.EST_CD_M_MET_ITE.Post;

  pnItens.Enabled := false;
  btn_Add_Itens.SetFocus;
end;

procedure TEST_FM_M_MET.Atualizar_xBusca;
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


end.
