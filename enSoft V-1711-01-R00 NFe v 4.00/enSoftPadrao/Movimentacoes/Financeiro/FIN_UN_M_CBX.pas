unit FIN_UN_M_CBX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, JvToolEdit, vcl.wwdblook, Vcl.Mask, JvExMask, JvDBControls,
  Vcl.DBCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, vcl.Wwdbedit, frxClass,
  frxExportXLS, frxExportPDF, frxDBSet, Datasnap.DBClient, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  TFIN_FM_M_CBX = class(TPAD_FM_X_PAD)
    txtData: TJvDBDateEdit;
    lblData: TLabel;
    cbbContaCorrente: TwwDBLookupCombo;
    lblContaCorrente: TLabel;
    gbFiltro: TGroupBox;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    lblAte: TLabel;
    rgTipoFiltro: TRadioGroup;
    lblTipoPeriodo: TLabel;
    cbbPeriodo: TComboBox;
    lblLoteCartao: TLabel;
    txtLoteCartao: TEdit;
    gbDet: TGroupBox;
    dbCxbDet: TwwDBGrid;
    dsoTit: TwwDataSource;
    btnFiltrar: TcxButton;
    chbTaxaAntec: TDBCheckBox;
    cbbFormaPag: TwwDBLookupCombo;
    lblFormaPag: TLabel;
    cbbTipoTitulo: TComboBox;
    lblTipoTitulo: TLabel;
    txtTotalGeralBruto: TJvValidateEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtTotalGeralLiq: TJvValidateEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    TotTxaOpeSel: TwwDBEdit;
    TotTxaAntecSel: TwwDBEdit;
    TotGerBrutoSel: TwwDBEdit;
    TotGerLiqSel: TwwDBEdit;
    lblSelecionarTodos: TLabel;
    lblDesmarcarTodos: TLabel;
    pnlTit: TPanel;
    txtVlrAntec: TwwDBEdit;
    txtVlrOperacao: TwwDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    txtVlrTit: TEdit;
    Label9: TLabel;
    FIN_DB_M_CBX: TfrxDBDataset;
    FIN_PD_M_CBX: TfrxPDFExport;
    FIN_XL_M_CBX: TfrxXLSExport;
    FIN_DB_M_CBX_TIT: TfrxDBDataset;
    FIN_FR_M_CBX: TfrxReport;
    Button1: TButton;
    txtPesquisaData: TJvDateEdit;
    procedure FormShow(Sender: TObject);
    procedure cbbContaCorrenteEnter(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure rgTipoFiltroClick(Sender: TObject);
    procedure chbTaxaAntecClick(Sender: TObject);
    procedure cbbFormaPagEnter(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbContaCorrenteExit(Sender: TObject);
    procedure txtDataExit(Sender: TObject);
    procedure dbCxbDetEnter(Sender: TObject);
    procedure dbCxbDetExit(Sender: TObject);
    procedure cbbFormaPagExit(Sender: TObject);
    procedure dbCxbDetFieldChanged(Sender: TObject; Field: TField);
    procedure dbCxbDetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblSelecionarTodosClick(Sender: TObject);
    procedure lblDesmarcarTodosClick(Sender: TObject);
    procedure txtVlrAntecExit(Sender: TObject);
    procedure txtVlrOperacaoExit(Sender: TObject);
    procedure txtVlrOperacaoEnter(Sender: TObject);
    procedure txtVlrAntecEnter(Sender: TObject);
    procedure dbCxbDetDblClick(Sender: TObject);
    procedure pnlTitExit(Sender: TObject);
    procedure dbCxbDetCellChanged(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure LimparFiltro;
    procedure AbrirBusca;
    procedure ExibirTotais;
    var
      formaPagAnt:string;
      existeFpgCartao:boolean;

  public
    { Public declarations }
  end;

var
  FIN_FM_M_CBX: TFIN_FM_M_CBX;

implementation

{$R *.dfm}

uses uDmGeral, FIN_RN_M_CBX, enConstantes;

procedure TFIN_FM_M_CBX.acAdicionaExecute(Sender: TObject);
var
  mens:string;
begin

  mens := '';
  if (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cbx_id_plano').AsString) = '')  then
    begin
       mens := mens + 'Plano de Contas.'+ #13+#10;
    end;
  if (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cbx_id_plano_desc_ope').AsString)  = '') then
    begin
       mens := mens + 'Plano de Contas para desconto de operação.'+ #13+#10;
    end;

  if (trim(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cbx_id_plano_desc_antec').AsString) = '') then
    begin
       mens := mens + 'Plano de Contas para desconto de antecipação.'+ #13+#10;
    end;

  if mens <>'' then
    begin
      mens := 'Deve-se preencher os seguintes campos na tela de Parametros: '+ #13+#10 + mens;
      ShowMessage(mens);
      exit;
    end;

  if (existeFpgCartao=false) then
    begin
      ShowMessage('Não há forma de pagamento cadastrado do tipo cartão.');
      mens := mens + 'Não há forma de pagamento cadastrado do tipo cartão.' + #13+#10;
      exit;
    end;


  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CBX);
  LimparFiltro;
  txtData.SetFocus;
  cbbTipoTitulo.Enabled := true;
  chbTaxaAntec.OnClick := chbTaxaAntecClick;
  dmGeral.BusFormaPgtos2(0,copy(cbbTipoTitulo.Text,1,pos(' - ',cbbTipoTitulo.Text)-1));

end;

procedure TFIN_FM_M_CBX.AbrirBusca;
begin
   dmGeral.BusContaCorr(3,'1');

   dmGeral.BUS_CD_C_FPG.Close;
       dmGeral.BUS_CD_C_FPG.Data :=
       dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([6,'0','5']));
end;

procedure TFIN_FM_M_CBX.LimparFiltro;
begin
  txtLoteCartao.Text := '';
  deInicial.Text := '  /  /    ';
  deFinal.Text := '  /  /    ';
  cbbTipoTitulo.ItemIndex :=0;
  cbbPeriodo.ItemIndex :=0;
  rgTipoFiltro.ItemIndex :=0;
end;

procedure TFIN_FM_M_CBX.pnlTitExit(Sender: TObject);
begin
  inherited;
 pnlTit.Enabled := false;
end;

procedure TFIN_FM_M_CBX.acCancelarExecute(Sender: TObject);
begin
  inherited;
   LimparFiltro;
   chbTaxaAntec.OnClick := nil;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CBX) then
     begin
       inherited;
       dbGrid.SetFocus;
        cbbTipoTitulo.Enabled := true;
       // chbTaxaAntec.OnClick := nil;
       // LimparFiltro;
     end
   else
     begin
       txtData.SetFocus;
       chbTaxaAntec.OnClick := chbTaxaAntecClick;
     end;
end;

procedure TFIN_FM_M_CBX.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.FIN_CD_M_CBX);
end;

procedure TFIN_FM_M_CBX.acGravarExecute(Sender: TObject);
var
  codigo,msg:string;
begin
  inherited;
  msg := '';
  if (dmGeral.FIN_CD_M_CBX_TIT.RecordCount =0) then
    begin
      ShowMessage('É necessário selecionar pelo menos um título.');
      exit;
    end;

   //FIN_RN_M_CBX.FinCalculaVlrTotaisCbx;
   if dmGeral.FIN_CD_M_CBX.FieldByName('VLR_BRUTO').AsCurrency = 0 then
     begin
       msg := 'O valor total bruto não pode ser zero.'+#13+#10;
     end;
   if dmGeral.FIN_CD_M_CBX.FieldByName('VLR_LIQUIDO').AsCurrency < 0 then
     begin
       msg := 'O valor total líquido não pode ser menor que zero.'+#13+#10;
     end;


   if msg <> '' then
     begin
        ShowMessage(msg);
        exit;
     end;

   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       FIN_RN_M_CBX.FinDeletaTitNaoSelecionadosCbx;
       LimparFiltro;
       codigo := dmGeral.FIN_CD_M_CBX.FieldByName('ID_CBX').AsString;
       chbTaxaAntec.OnClick := nil;
       DmGeral.Grava(dmGeral.FIN_CD_M_CBX);
       inherited;
       dmGeral.FIN_CD_M_CBX.Close;
       dmGeral.FIN_CD_M_CBX.Data :=
       dmGeral.FIN_CD_M_CBX.DataRequest(
               VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,codigo]));
       AbrirBusca;
       cbbTipoTitulo.Enabled := true;
     end
   else
     begin
       txtData.SetFocus;
     end;
end;

procedure TFIN_FM_M_CBX.btnFiltrarClick(Sender: TObject);
var
  mensagem,codFpg:string;

begin
  inherited;
  if (rgTipoFiltro.ItemIndex = 0) then
    begin
      if ((deInicial.Text = '  /  /    ') or  (deFinal.Text = '  /  /    ')) then
        begin
          ShowMessage('Deve-se preencher o período.');
          exit;
        end;
    end;
  if (rgTipoFiltro.ItemIndex = 1) then
    begin
      if (txtLoteCartao.Text = '') then
        begin
          ShowMessage('Deve-se preencher o nº do lote do cartão.');
          exit;
        end;
    end;

  if (rgTipoFiltro.ItemIndex = 2) then
    begin
      if (txtVlrTit.Text = '') then
        begin
          ShowMessage('Deve-se preencher o valor do título.');
          exit;
        end;
    end;


  if (cbbTipoTitulo.Text = '') then
    begin
      ShowMessage('Deve-se preencher o tipo de título.');
      exit;
    end;

   if (dmGeral.FIN_CD_M_CBX_TIT.RecordCount >0) then
    begin
      dmGeral.FIN_CD_M_CBX_TIT.First;
      while dmGeral.FIN_CD_M_CBX_TIT.RecordCount > 0 do
        begin
          dmGeral.FIN_CD_M_CBX_TIT.Delete;
        end;
    end;

  codFpg := copy(cbbTipoTitulo.Text,1,pos(' - ',cbbTipoTitulo.Text)-1);
  dmGeral.BusFormaPgtos2(0,codFpg);
  if (not dmGeral.BUS_CD_C_FPG2.IsEmpty) then
    begin
       mensagem := '';
       if chbTaxaAntec.Checked then
         begin
           if (dmGeral.BUS_CD_C_FPG2.FieldByName('TAXA_ANTECIPACAO').AsString = '') then
            begin
               mensagem := 'A taxa de antecipação dO tipo de título '''+dmGeral.BUS_CD_C_FPG2.FieldByName('DESCRICAO').AsString+''' não foi encontrada.'+#13+#10;
            end;
           if (dmGeral.BUS_CD_C_FPG2.FieldByName('TAXA_ANTECIPACAO').AsCurrency = 0) then
            begin
               mensagem := 'A taxa de antecipação deste tipo de título '''+dmGeral.BUS_CD_C_FPG2.FieldByName('DESCRICAO').AsString+''' está zerada.'+#13+#10;
            end;
         end;
       if mensagem <> '' then
         begin
           ShowMessage(mensagem);
           exit;
         end;
    end;

  if (rgTipoFiltro.ItemIndex = 0) then
    begin
      if cbbPeriodo.ItemIndex=0 then
         begin
          dmGeral.BUS_CD_M_REC.Close;
          dmGeral.BUS_CD_M_REC.Data :=
              dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([103,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,deInicial.Text,deFinal.Text,
                                                               codFpg]));
         end;
       if cbbPeriodo.ItemIndex=1 then
         begin
          dmGeral.BUS_CD_M_REC.Close;
          dmGeral.BUS_CD_M_REC.Data :=
              dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([102,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,deInicial.Text,deFinal.Text,
                                                               codFpg]));
         end;
    end;

  if (rgTipoFiltro.ItemIndex = 1) then
    begin
      dmGeral.BUS_CD_M_REC.Close;
      dmGeral.BUS_CD_M_REC.Data :=
          dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([104,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,txtLoteCartao.Text,
                                                            codFpg]));
    end;

 if (rgTipoFiltro.ItemIndex = 2) then
    begin
      dmGeral.BUS_CD_M_REC.Close;
      dmGeral.BUS_CD_M_REC.Data :=
          dmGeral.BUS_CD_M_REC.DataRequest(VarArrayOf([116,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,StringReplace(txtVlrTit.Text, ',', '.', []),
                                                            codFpg]));
    end;

  if (dmGeral.FIN_CD_M_CBX_TIT.RecordCount >0) then
    begin
      dmGeral.FIN_CD_M_CBX_TIT.First;
      while dmGeral.FIN_CD_M_CBX_TIT.RecordCount > 0 do
        begin
          dmGeral.FIN_CD_M_CBX_TIT.Delete;
        end;
    end;

  if dmGeral.BUS_CD_M_REC.IsEmpty then
    begin
      ShowMessage('Nenhum registro encontrado.');
      exit;
    end;
 try
  dmGeral.FIN_CD_M_CBX_TIT.BeforePost := nil;
  dmGeral.FIN_CD_M_CBX.BeforePost     := nil;
  dmGeral.FIN_CD_M_CBX_TIT.AfterPost  := nil;
  dmGeral.FIN_CD_M_CBX_TITvlr_desconto_ope.OnChange   :=  nil;
  dmGeral.FIN_CD_M_CBX_TITvlr_desconto_antec.OnChange :=  nil;

  dbCxbDet.OnFieldChanged := nil;

  while not dmGeral.BUS_CD_M_REC.Eof do
    begin

      dmGeral.FIN_CD_M_CBX_TIT.Insert;
      dmGeral.FIN_CD_M_CBX_TIT.FieldByName('ID_TITULO').AsInteger := dmGeral.BUS_CD_M_REC.FieldByName('ID_TITULO').AsInteger;
      dmGeral.FIN_CD_M_CBX_TIT.FieldByName('INT_CODFPG').AsString := dmGeral.BUS_CD_M_REC.FieldByName('ID_FORMA_PAG').AsString;
      dmGeral.FIN_CD_M_CBX_TIT.FieldByName('INT_NOMEFPG').AsString := dmGeral.BUS_CD_M_REC.FieldByName('INT_NOMEFPG').AsString;
      dmGeral.FIN_CD_M_CBX_TIT.FieldByName('INT_NROPARCELA').AsString   := dmGeral.BUS_CD_M_REC.FieldByName('NUM_PARCELA').AsString;
      dmGeral.FIN_CD_M_CBX_TIT.FieldByName('INT_DTAVENCTO').AsDateTime  := dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime;
      dmGeral.FIN_CD_M_CBX_TIT.FieldByName('INT_CARTAXAOPE').AsCurrency := dmGeral.BUS_CD_M_REC.FieldByName('car_taxa_ope').AsCurrency;
      dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency := dmGeral.BUS_CD_M_REC.FieldByName('VLR_SALDO').AsCurrency;
      dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_OPE').AsCurrency :=  dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency*
                                                              (dmGeral.BUS_CD_M_REC.FieldByName('CAR_TAXA_OPE').AsCurrency/100.0);

      if dmGeral.FIN_CD_M_CBX.FieldByName('COM_BXA_ANTECIPACAO').AsBoolean = True then
         begin
          dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency :=  dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency*
                                                                   (dmGeral.BUS_CD_C_FPG2.FieldByName('TAXA_ANTECIPACAO').AsCurrency/100.0);
         end;
       if dmGeral.FIN_CD_M_CBX.FieldByName('COM_BXA_ANTECIPACAO').AsBoolean = False then
         begin
            dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency := 0;
         end;

      dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_LIQUIDO').AsCurrency := dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency -
                                                                        (dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_OPE').AsCurrency +
                                                                          dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency);
      dmGeral.FIN_CD_M_CBX_TIT.Post;
      dmGeral.BUS_CD_M_REC.Next;
    end;


 finally
    dmGeral.FIN_CD_M_CBX_TIT.BeforePost := dmGeral.FIN_CD_M_CBX_TITBeforePost;
    dmGeral.FIN_CD_M_CBX.BeforePost := dmGeral.FIN_CD_M_CBXBeforePost;
    dmGeral.FIN_CD_M_CBX_TIT.AfterPost  := dmGeral.FIN_CD_M_CBX_TITAfterPost;
    dmGeral.FIN_CD_M_CBX_TITvlr_desconto_ope.OnChange :=   dmGeral.FIN_CD_M_CBX_TITvlr_desconto_opeChange;
    dmGeral.FIN_CD_M_CBX_TITvlr_desconto_antec.OnChange :=   dmGeral.FIN_CD_M_CBX_TITvlr_desconto_antecChange;
    dbCxbDet.OnFieldChanged := dbCxbDetFieldChanged;
    ExibirTotais;
    dmGeral.FIN_CD_M_CBX_TIT.First;
 end;

end;

procedure TFIN_FM_M_CBX.btnFiltroClick(Sender: TObject);
VAR
  xPesquisa:String;
begin
  inherited;
   if (txtPesquisaData.Visible =true) then
      xPesquisa := txtPesquisaData.Text
    else
      xPesquisa := txtPesquisa.Text;

    dmGeral.FIN_CD_M_CBX.Close;
             dmGeral.FIN_CD_M_CBX.Data :=
             dmGeral.FIN_CD_M_CBX.DataRequest(
                  VarArrayOf([cbbPesquisa.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,xPesquisa]));

end;

procedure TFIN_FM_M_CBX.Button1Click(Sender: TObject);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

  if not dmGeral.FIN_CD_M_CBX.IsEmpty then
    begin
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(FIN_FR_M_CBX.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;

      dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_M_CBX.Name,xCodLme,xRevLme,nil);

      dmgeral.BusFuncionario(0,dmGeral.FIN_CD_M_CBXid_responsavel.Text);

      FIN_FR_M_CBX.Variables['geral bruto'] := QuotedStr(txtTotalGeralBruto.Text);
      FIN_FR_M_CBX.Variables['geral liquido'] := QuotedStr(txtTotalGeralLiq.Text);
      FIN_FR_M_CBX.Variables['responsavel'] := QuotedStr(dmgeral.BUS_CD_C_FUNnome.Text);
      FIN_FR_M_CBX.Variables['conta'] := QuotedStr(dmGeral.BUS_CD_C_CTCdescricao.Text);
      FIN_FR_M_CBX.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
      FIN_FR_M_CBX.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
      FIN_FR_M_CBX.PrepareReport();
      FIN_FR_M_CBX.ShowReport();
    end;
end;

procedure TFIN_FM_M_CBX.cbbContaCorrenteEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusContaCorr(3,'1');
  cbbContaCorrente.DropDown;
end;

procedure TFIN_FM_M_CBX.cbbContaCorrenteExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused   then
     begin
       exit;
     end;

   if dmGeral.FIN_CD_M_CBX.FieldByName('ID_CONTA').text = '' then
     begin
       ShowMessage('Deve-se preencher a conta.');
       cbbContaCorrente.SetFocus;
     end;
end;

procedure TFIN_FM_M_CBX.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisaData.Text := '  /  /    ';

  if cbbPesquisa.ItemIndex in [1]  then
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


  if cbbPesquisa.ItemIndex = 0 then
    begin
      txtPesquisa.NumbersOnly := true;
    end
  else
    begin
     txtPesquisa.NumbersOnly := false;
    end;
  txtPesquisa.Text := '';

end;

procedure TFIN_FM_M_CBX.cbbFormaPagEnter(Sender: TObject);
begin
  inherited;
   dmGeral.BUS_CD_C_FPG.Close;
       dmGeral.BUS_CD_C_FPG.Data :=
       dmGeral.BUS_CD_C_FPG.DataRequest(VarArrayOf([6,'0','5']));
  //formaPagAnt := dmGeral.FIN_CD_M_CBX.FieldByName('ID_FORMA_PAG').text;
  cbbFormaPag.DropDown;
end;

procedure TFIN_FM_M_CBX.cbbFormaPagExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused   then
     begin
       exit;
     end;

   if dmGeral.FIN_CD_M_CBX.FieldByName('ID_FORMA_PAG').text = '' then
     begin
       ShowMessage('Deve-se preencher a forma de pagamento.');
       cbbTipoTitulo.SetFocus;
       exit;
     end;

   {if (formaPagAnt <> dmGeral.FIN_CD_M_CBX.FieldByName('ID_FORMA_PAG').text) then
      begin
        if dmGeral.FIN_CD_M_CBX_TIT.RecordCount>0 then
           begin
              if MessageDlg('Se alterar o tipo de titulo irá deletar os registros a serem baixados. Deseja Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                  dmGeral.FIN_CD_M_CBX_TIT.First;
                  while dmGeral.FIN_CD_M_CBX_TIT.RecordCount > 0 do
                    begin
                     dmGeral.FIN_CD_M_CBX_TIT.Delete;
                    end;
                  dmGeral.FIN_CD_M_CBX.FieldByName('COM_BXA_ANTECIPACAO').AsBoolean := false;
               end
              else
               begin
                 dmGeral.FIN_CD_M_CBX.FieldByName('ID_FORMA_PAG').text := formaPagAnt;
               end;
           end;
      end;  }

end;

procedure TFIN_FM_M_CBX.chbTaxaAntecClick(Sender: TObject);
var
  mensagem:string;
begin
  inherited;
  mensagem := '';
  if chbTaxaAntec.Checked then
    begin
       if dmGeral.FIN_CD_M_CBX_TIT.RecordCount>0 then
         begin
           if (dmGeral.BUS_CD_C_FPG2.FieldByName('TAXA_ANTECIPACAO').AsString = '') then
            begin
               mensagem := 'A taxa de antecipação do tipo de título '''+ dmGeral.BUS_CD_C_FPG2.FieldByName('DESCRICAO').AsString +''' não foi encontrada.'+#13+#10;
            end;
           if (dmGeral.BUS_CD_C_FPG2.FieldByName('TAXA_ANTECIPACAO').AsCurrency = 0) then
            begin
               mensagem := 'A taxa de antecipação do tipo de título '''+dmGeral.BUS_CD_C_FPG2.FieldByName('DESCRICAO').AsString+''' está zerada.'+#13+#10;
            end;
           if mensagem <> '' then
             begin
               ShowMessage(mensagem);
               chbTaxaAntec.Checked := false;
               exit;
             end;
         end;
    end;

  if dmGeral.FIN_CD_M_CBX_TIT.RecordCount>0 then
    begin
      try
          dmGeral.FIN_CD_M_CBX_TIT.First;
          dmGeral.FIN_CD_M_CBX_TITvlr_desconto_antec.OnChange :=  nil;
          dmGeral.FIN_CD_M_CBX_TIT.AfterPost  := nil;
          if chbTaxaAntec.Checked  then
            begin
              while not dmGeral.FIN_CD_M_CBX_TIT.EOF do
                begin
                   dmGeral.FIN_CD_M_CBX_TIT.Edit;
                   dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency :=  dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency*
                                                                           (dmGeral.BUS_CD_C_FPG2.FieldByName('TAXA_ANTECIPACAO').AsCurrency/100.0);

                   dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_LIQUIDO').AsCurrency := dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency -
                                                                                (dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_OPE').AsCurrency +
                                                                                  dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency);
                   dmGeral.FIN_CD_M_CBX_TIT.Post;
                   dmGeral.FIN_CD_M_CBX_TIT.Next;
                end;
            end
          else
            begin
               while not dmGeral.FIN_CD_M_CBX_TIT.EOF do
                begin
                   dmGeral.FIN_CD_M_CBX_TIT.Edit;
                   dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency := 0;

                   dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_LIQUIDO').AsCurrency := dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_BRUTO').AsCurrency -
                                                                                (dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_OPE').AsCurrency +
                                                                                  dmGeral.FIN_CD_M_CBX_TIT.FieldByName('VLR_DESCONTO_ANTEC').AsCurrency);
                   dmGeral.FIN_CD_M_CBX_TIT.Post;
                   dmGeral.FIN_CD_M_CBX_TIT.Next;
                end;
            end;
          dmGeral.FIN_CD_M_CBX_TITvlr_desconto_antec.OnChange :=   dmGeral.FIN_CD_M_CBX_TITvlr_desconto_antecChange;
          dmGeral.FIN_CD_M_CBX_TIT.First;
      finally
        ExibirTotais;
        FIN_RN_M_CBX.FinCalculaVlrTotaisCbx;
        dmGeral.FIN_CD_M_CBX_TIT.AfterPost  := dmGeral.FIN_CD_M_CBX_TITAfterPost;
      end;
    end;
end;

procedure TFIN_FM_M_CBX.dbCxbDetCellChanged(Sender: TObject);
begin
  inherited;
 { if (dbCxbDet.Columns[dbCxbDet.SelectedIndex].FieldName = 'VLR_DESCONTO_OPE') or
     (dbCxbDet.Columns[dbCxbDet.SelectedIndex].FieldName = 'VLR_DESCONTO_ANTEC')  then
    begin
        if dmGeral.FIN_CD_M_CBX_TIT.IsEmpty then
           begin
              pnlTit.EnABLED := false;
           end
        else
          begin
           dmGeral.FIN_CD_M_CBX_TIT.Edit;
           pnlTit.Enabled := True;
           txtVlrOperacao.SetFocus;
       end;
    end;  }
end;

procedure TFIN_FM_M_CBX.dbCxbDetDblClick(Sender: TObject);
begin
  inherited;

 { if (dbCxbDet.Columns[dbCxbDet.SelectedIndex].FieldName = 'VLR_DESCONTO_OPE') or
     (dbCxbDet.Columns[dbCxbDet.SelectedIndex].FieldName = 'VLR_DESCONTO_ANTEC')  then
    begin
        if dmGeral.FIN_CD_M_CBX_TIT.IsEmpty then
           begin
              pnlTit.EnABLED := false;
           end
        else
          begin
           dmGeral.FIN_CD_M_CBX_TIT.Edit;
           pnlTit.Enabled := True;
           txtVlrOperacao.SetFocus;
       end;
    end;     }


  {  if (Field.FieldName = 'vlr_desconto_antec') then
     begin
        if pnlTit.Enabled = False then
          pnlTit.Enabled := True;

         dmGeral.FIN_CD_M_CBX_TIT.Cancel;

        if dmGeral.FIN_CD_M_PBX_TIT.IsEmpty then
           begin
              pnlTit.EnABLED := false;
           end
        else
          begin
           dmGeral.FIN_CD_M_PBX_TIT.Edit;
           pnlTit.Enabled := True;
           txtVlrAntec.SetFocus;
          end;
     end;   }
end;

procedure TFIN_FM_M_CBX.dbCxbDetEnter(Sender: TObject);
begin
  inherited;
  if not dmGeral.FIN_CD_M_CBX_TIT.IsEmpty then
    dmGeral.FIN_CD_M_CBX_TIT.Edit;

end;

procedure TFIN_FM_M_CBX.dbCxbDetExit(Sender: TObject);
begin
  inherited;
 // if dmGeral.FIN_CD_M_CBX_TIT.State = dsEdit then
 //    dmGeral.FIN_CD_M_CBX_TIT.Post
 // else
 //    dmGeral.FIN_CD_M_CBX_TIT.cancel;
end;

procedure TFIN_FM_M_CBX.dbCxbDetFieldChanged(Sender: TObject; Field: TField);
begin
  inherited;
  if not dmGeral.FIN_CD_M_CBX_TIT.IsEmpty then
    begin
      if (Field.FieldName = 'int_selecao') then
         begin
           dmGeral.FIN_CD_M_CBX_TIT.Post
         end;
    end;

   
end;

procedure TFIN_FM_M_CBX.dbCxbDetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if not dmGeral.FIN_CD_M_CBX_TIT.IsEmpty then
    begin
      if ord(key) = vk_return then
         begin
           if dmGeral.FIN_CD_M_CBX_TIT.State in [dsEdit] then
              dmGeral.FIN_CD_M_CBX_TIT.Post;
         end;
    end;
end;

procedure TFIN_FM_M_CBX.ExibirTotais;
var
  TotGerBruto,TotGerLiq, TotGerBrutoSel,TotGerLiqSel, TotTxaOpeSel,TotTxaAntecSel: Currency;
begin

  FinCalcTotaisCbxTit(TotGerBruto,TotGerLiq, TotGerBrutoSel,TotGerLiqSel, TotTxaOpeSel,TotTxaAntecSel);

  txtTotalGeralBruto.Value       := TotGerBruto;
  txtTotalGeralLiq.Value         := TotGerLiq;
 /// txtTotGeralBrutoSel.value      := TotGerBrutoSel;
  //txtTotGeralLiqSel.Value        := TotGerLiqSel;
  //txtTotTxaOpeSel.Value          := TotTxaOpeSel;
  //txtTotTxaAntSel.Value          := TotTxaAntecSel;

end;

procedure TFIN_FM_M_CBX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.FIN_CD_M_CBX.Close;
  FreeAndNil(FIN_FM_M_CBX);
end;

procedure TFIN_FM_M_CBX.FormShow(Sender: TObject);
begin
  inherited;



   dmGeral.FIN_CD_M_CBX.Close;
       dmGeral.FIN_CD_M_CBX.Data :=
       dmGeral.FIN_CD_M_CBX.DataRequest(
               VarArrayOf([0,'','']));
  existeFpgCartao := false;
  dmGeral.BusFormaPgtos2(4,'3');
  while not dmGeral.BUS_CD_C_FPG2.Eof  do
    begin
      existeFpgCartao := true;
      cbbTipoTitulo.AddItem(dmGeral.BUS_CD_C_FPG2.FieldByName('ID_FORMA_PAG').AsString+' - '+dmGeral.BUS_CD_C_FPG2.FieldByName('DESCRICAO').AsString,nil);
      dmGeral.BUS_CD_C_FPG2.Next;
    end;

  AbrirBusca;
  btnAlterar.Visible := false;

  cbbPeriodo.Enabled := true;
  deInicial.Enabled := true;
  deFinal.Enabled := true;
  txtLoteCartao.Enabled := false;
  txtLoteCartao.Text := '';
  txtVlrTit.Enabled := false;

  chbTaxaAntec.OnClick := nil;

end;

procedure TFIN_FM_M_CBX.lblDesmarcarTodosClick(Sender: TObject);
begin
  inherited;

  if dmGeral.FIN_CD_M_CBX_TIT.IsEmpty then
     begin
       ShowMessage('Nenhum registro encontrado.');
       abort;
     end;
  try
    dmGeral.FIN_CD_M_CBX_TIT.AfterPost  := nil;

  if dmGeral.FIN_CD_M_CBX_TIT.RecordCount>0 then
     begin
       dmGeral.FIN_CD_M_CBX_TIT.First;
       while not dmGeral.FIN_CD_M_CBX_TIT.EOF do
         begin
           dmGeral.FIN_CD_M_CBX_TIT.Edit;
           dmGeral.FIN_CD_M_CBX_TIT.FieldByName('int_selecao').AsBoolean := false;
           dmGeral.FIN_CD_M_CBX_TIT.Next;
         end;
       dmGeral.FIN_CD_M_CBX_TIT.First;
     end;
  finally

    ExibirTotais;
    FIN_RN_M_CBX.FinCalculaVlrTotaisCbx;
    dmGeral.FIN_CD_M_CBX_TIT.AfterPost  := dmGeral.FIN_CD_M_CBX_TITAfterPost;
  end;

end;

procedure TFIN_FM_M_CBX.lblSelecionarTodosClick(Sender: TObject);
begin
  inherited;
  if dmGeral.FIN_CD_M_CBX_TIT.IsEmpty then
     begin
       ShowMessage('Nenhum registro encontrado.');
       abort;
     end;

  try
    dmGeral.FIN_CD_M_CBX_TIT.AfterPost  := nil;

    if dmGeral.FIN_CD_M_CBX_TIT.RecordCount>0 then
       begin
         dmGeral.FIN_CD_M_CBX_TIT.First;
         while not dmGeral.FIN_CD_M_CBX_TIT.EOF do
           begin
             dmGeral.FIN_CD_M_CBX_TIT.Edit;
             dmGeral.FIN_CD_M_CBX_TIT.FieldByName('INT_SELECAO').AsBoolean := true;
             dmGeral.FIN_CD_M_CBX_TIT.Next;
           end;
         dmGeral.FIN_CD_M_CBX_TIT.First;
       end;
  finally

    ExibirTotais;
    FIN_RN_M_CBX.FinCalculaVlrTotaisCbx;
    dmGeral.FIN_CD_M_CBX_TIT.AfterPost  := dmGeral.FIN_CD_M_CBX_TITAfterPost;
  end;
end;

procedure TFIN_FM_M_CBX.rgTipoFiltroClick(Sender: TObject);
begin
  inherited;
  cbbPeriodo.Enabled := true;
  deInicial.Enabled := true;
  deFinal.Enabled := true;
  txtLoteCartao.Enabled := true;
  txtVlrTit.Enabled := true;
  deInicial.Text := '  /  /    ';
  deFinal.Text := '  /  /    ';
  txtLoteCartao.Text := '';
  txtVlrTit.Text := '';

  if (rgTipoFiltro.ItemIndex = 0) then
    begin
      cbbPeriodo.Enabled := true;
      deInicial.Enabled := true;
      deFinal.Enabled := true;
      txtLoteCartao.Enabled := false;
      txtVlrTit.Enabled := false;
      cbbPeriodo.SetFocus;
    end;

  if (rgTipoFiltro.ItemIndex = 1) then
    begin
      cbbPeriodo.Enabled := false;
      deInicial.Enabled := false;
      deFinal.Enabled := false;
      txtLoteCartao.Enabled := true;
      txtVlrTit.Enabled := false;
      txtLoteCartao.SetFocus;
    end;

  if (rgTipoFiltro.ItemIndex = 2) then
    begin
      cbbPeriodo.Enabled := false;
      deInicial.Enabled := false;
      deFinal.Enabled := false;
      txtLoteCartao.Enabled := false;
      txtVlrTit.Enabled := true;
      txtVlrTit.SetFocus;
    end;

end;

procedure TFIN_FM_M_CBX.txtDataExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused   then
     begin
       exit;
     end;

   if (dmGeral.FIN_CD_M_CBX.FieldByName('DTA_BAIXA').AsString = '  /  /    ') then
     begin
       ShowMessage('Deve-se preencher a data da baixa.');
       txtData.SetFocus;
     end;
end;

procedure TFIN_FM_M_CBX.txtVlrAntecEnter(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_CBX_TIT.Edit;
end;

procedure TFIN_FM_M_CBX.txtVlrAntecExit(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_CBX_TIT.Post;
  pnlTit.Enabled := false;
end;

procedure TFIN_FM_M_CBX.txtVlrOperacaoEnter(Sender: TObject);
begin
  inherited;
   dmGeral.FIN_CD_M_CBX_TIT.Edit;
end;

procedure TFIN_FM_M_CBX.txtVlrOperacaoExit(Sender: TObject);
begin
  inherited;
  dmGeral.FIN_CD_M_CBX_TIT.Post;
end;

end.
