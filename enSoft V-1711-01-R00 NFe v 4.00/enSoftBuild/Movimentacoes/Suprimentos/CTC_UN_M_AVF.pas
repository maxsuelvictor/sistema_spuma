unit CTC_UN_M_AVF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, vcl.wwdblook,
  Vcl.Mask, Vcl.DBCtrls, vcl.wwcheckbox, JvExExtCtrls, JvExtComponent, JvPanel,
  JvExMask, JvToolEdit, JvDBControls, Datasnap.DBClient, frxExportXLS, frxClass,
  frxExportPDF, frxDBSet, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  TCTC_FM_M_AVF = class(TPAD_FM_X_PAD)
    lblNAvaliacao: TLabel;
    lblDataAvaliacao: TLabel;
    txtDataAvaliacao: TDBEdit;
    lblresponsavel: TLabel;
    lblFornecedor: TLabel;
    txtAvaliacao: TDBEdit;
    lblCNPJ: TLabel;
    lblAvaliacaoBasica: TLabel;
    gbEntregas: TGroupBox;
    gbAvaliacaoConformidade: TGroupBox;
    txtcriterio_01: TDBEdit;
    txtcriterio_02: TDBEdit;
    tctcriterio_03: TDBEdit;
    txtcriterio_04: TDBEdit;
    txtcriterio_05: TDBEdit;
    txtcriterio_06: TDBEdit;
    txtcriterio_07: TDBEdit;
    txtmedia: TDBEdit;
    txtpeso_01: TDBEdit;
    txtpeso_02: TDBEdit;
    txtpeso_03: TDBEdit;
    txtpeso_04: TDBEdit;
    txtpeso_05: TDBEdit;
    txtpeso_06: TDBEdit;
    txtpeso_07: TDBEdit;
    lblCumprimentoPrazo: TLabel;
    lblConformidadePreco: TLabel;
    lblConformidadeQuantidade: TLabel;
    lblMaterialConforme: TLabel;
    lblPreenchimentoNotaFiscal: TLabel;
    lblProdutosForaPrazo: TLabel;
    lblintegridadeEmbalagens: TLabel;
    lblMedia: TLabel;
    chkFornecedorAprovado: TwwCheckBox;
    lblObservacao: TLabel;
    gridNotas: TwwDBGrid;
    pnCriterio: TPanel;
    chkVedado: TwwCheckBox;
    chkFornecedorIdoneo: TwwCheckBox;
    chkCondicoes: TwwCheckBox;
    lblVedado: TLabel;
    txtResponsavel: TDBEdit;
    txtCNPJ: TDBEdit;
    txtFornecedor: TJvDBComboEdit;
    txtDescForn: TDBEdit;
    dsoNFE: TwwDataSource;
    txtObservacao: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    chkFornecedor: TwwCheckBox;
    lblcriterio: TLabel;
    btnImprimirFicha: TBitBtn;
    CTC_DB_R_AVF: TfrxDBDataset;
    CTC_PD_R_AVF: TfrxPDFExport;
    CTC_XL_R_AVF: TfrxXLSExport;
    CAD_FR_C_AVF: TfrxReport;
    CTC_DB_R_AVF_NFE: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure cbbResponsavelEnter(Sender: TObject);
    procedure cbbResponsavelExit(Sender: TObject);
    procedure txtFornecedorButtonClick(Sender: TObject);
    procedure txtFornecedorExit(Sender: TObject);
    procedure txtcriterio_01KeyPress(Sender: TObject; var Key: Char);
    procedure txtcriterio_01Exit(Sender: TObject);
    procedure pnCriterioExit(Sender: TObject);
    procedure gbEntregasExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirFichaClick(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
  private
    { Private declarations }
    procedure MediaPonderada;
  public
    { Public declarations }
  end;

var
  CTC_FM_M_AVF: TCTC_FM_M_AVF;

implementation

{$R *.dfm}

uses uDmGeral, uDmCtc, PSQ_UN_X_FOR, enConstantes;

procedure TCTC_FM_M_AVF.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmctc.ctc_cd_m_avf);
//    Botoes(DataSource1.DataSet, TAction(Sender).Tag,ClientDataSet1);

  txtFornecedor.SetFocus;
end;

procedure TCTC_FM_M_AVF.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.ctc_cd_m_avf) then
      begin
        inherited;
        txtFornecedor.SetFocus;
      end;
end;

procedure TCTC_FM_M_AVF.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.ctc_cd_m_avf) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtFornecedor.SetFocus;
     end;
end;

procedure TCTC_FM_M_AVF.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmCtc.ctc_cd_m_avf);
end;

procedure TCTC_FM_M_AVF.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmCtc.ctc_cd_m_avf.FieldByName('id_avf').AsString;
  DmGeral.Grava(dmCtc.ctc_cd_m_avf);
  inherited;
  dmCtc.ctc_cd_m_avf.Close;
  dmCtc.ctc_cd_m_avf.Data :=
  dmCtc.ctc_cd_m_avf.DataRequest(
          VarArrayOf([0, codigo]));
end;

procedure TCTC_FM_M_AVF.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmCtc.ctc_cd_m_avf.Close;
    dmCtc.ctc_cd_m_avf.Data :=
    dmCtc.ctc_cd_m_avf.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_M_AVF.btnImprimirFichaClick(Sender: TObject);
var
  PathImg: string;
  LogoEmpresa: TfrxPictureView;
  codigo, revisao: string;
begin
  inherited;
  try
    dbgrid.OnRowChanged := nil;
    if not dmCtc.ctc_cd_m_avf.IsEmpty then
        begin
          PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
          if FileExists(PathImg) then
             begin
                LogoEmpresa := TfrxPictureView(CAD_FR_C_AVF.FindObject('imgEmpresa1'));
                if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
             end;

          CAD_FR_C_AVF.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);

          if ExisteListaMestre(xFaz_Busca_L_Mestre,false,self.Name,codigo,revisao) then
             begin
               CAD_FR_C_AVF.Variables['ft_codlme'] := QuotedStr('Codificação: ' + codigo + '      Rev.: ' + revisao);
             end
          else
             begin
               CAD_FR_C_AVF.Variables['ft_codlme'] := QuotedStr('Sem codificação.');
             end;
          CAD_FR_C_AVF.PrepareReport();
          CAD_FR_C_AVF.ShowReport();
        end
     else
        begin
          ShowMessage('Nenhum registro encontrado!');
          exit;
        end;
  finally
    dbgrid.OnRowChanged := dbGridRowChanged;
  end;
end;

procedure TCTC_FM_M_AVF.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,4] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCTC_FM_M_AVF.cbbResponsavelEnter(Sender: TObject);
begin
  inherited;
  {dmGeral.BusFuncionario(1,'%');
  cbbResponsavel.DropDown; }
end;

procedure TCTC_FM_M_AVF.cbbResponsavelExit(Sender: TObject);
begin
  inherited;
   {if btnCancelar.Focused or
     btnGrava.Focused then
     begin
       Exit;
     end;

  if trim(dmCtc.CTC_CD_M_AVF.FieldByName('id_responsavel').Text) = '' then
     begin
       ShowMessage('O campo "Funcionário" não foi preenchido.');
       exit;
     end;

  dmGeral.BusFuncionario(0,dmCtc.CTC_CD_M_AVF.FieldByName('id_responsavel').Text);
  if dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       ShowMessage('Funcionário não Cadastrado.');
     end;}
end;

procedure TCTC_FM_M_AVF.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  if (not dmCtc.ctc_cd_m_avf.IsEmpty) and (dmCtc.ctc_cd_m_avfdta_avf.Text <> '') and
     (dmCtc.ctc_cd_m_avfid_fornecedor.Text <> '') then
    begin
      dmCtc.ctc_cd_m_avf_nfe.Close;
      dmCtc.ctc_cd_m_avf_nfe.Data :=
        dmCtc.ctc_cd_m_avf_nfe.DataRequest
          (VarArrayOf([108,dmgeral.CAD_CD_C_PARid_empresa.Text,
            DateToStr(dmCtc.ctc_cd_m_avfdta_avf.AsDateTime - 180),
            dmCtc.ctc_cd_m_avfdta_avf.AsString, dmCtc.ctc_cd_m_avfid_fornecedor.AsString]));

      dmCtc.ctc_cd_m_avf_nfe.IndexFieldNames := 'dta_documento';
    end;
end;

procedure TCTC_FM_M_AVF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmCtc.ctc_cd_m_avf.Close;
  FreeAndNil(CTC_FM_M_AVF);
end;

procedure TCTC_FM_M_AVF.FormShow(Sender: TObject);
begin
  inherited;
  dmCtc.ctc_cd_m_avf.Close;
  dmCtc.ctc_cd_m_avf.Data := dmCtc.ctc_cd_m_avf.DataRequest(VarArrayOf([0, '']));
  dmCtc.ctc_cd_m_avf.Open;

  {ClientDataSet1.Close;
  ClientDataSet1.Data :=
      ClientDataSet1.DataRequest(VarArrayOf([0,'']));}


end;

procedure TCTC_FM_M_AVF.gbEntregasExit(Sender: TObject);
begin
  inherited;
//  txtcriterio_01.SetFocus;
end;

procedure TCTC_FM_M_AVF.MediaPonderada;
begin
  dmCtc.ctc_cd_m_avfmedia.AsCurrency := (
    (dmCtc.ctc_cd_m_avfcriterio_01.AsCurrency * dmCtc.ctc_cd_m_avfpeso_01.AsCurrency) +
    (dmCtc.ctc_cd_m_avfcriterio_02.AsCurrency * dmCtc.ctc_cd_m_avfpeso_02.AsCurrency) +
    (dmCtc.ctc_cd_m_avfcriterio_03.AsCurrency * dmCtc.ctc_cd_m_avfpeso_03.AsCurrency) +
    (dmCtc.ctc_cd_m_avfcriterio_04.AsCurrency * dmCtc.ctc_cd_m_avfpeso_04.AsCurrency) +
    (dmCtc.ctc_cd_m_avfcriterio_05.AsCurrency * dmCtc.ctc_cd_m_avfpeso_05.AsCurrency) +
    (dmCtc.ctc_cd_m_avfcriterio_06.AsCurrency * dmCtc.ctc_cd_m_avfpeso_06.AsCurrency) +
    (dmCtc.ctc_cd_m_avfcriterio_07.AsCurrency * dmCtc.ctc_cd_m_avfpeso_07.AsCurrency)) /
    (dmCtc.ctc_cd_m_avfpeso_01.AsCurrency +
    dmCtc.ctc_cd_m_avfpeso_02.AsCurrency +
    dmCtc.ctc_cd_m_avfpeso_03.AsCurrency +
    dmCtc.ctc_cd_m_avfpeso_04.AsCurrency +
    dmCtc.ctc_cd_m_avfpeso_05.AsCurrency +
    dmCtc.ctc_cd_m_avfpeso_06.AsCurrency +
    dmCtc.ctc_cd_m_avfpeso_07.AsCurrency);
end;

procedure TCTC_FM_M_AVF.pnCriterioExit(Sender: TObject);
begin
  inherited;
  //gridNotas.SetFocus;
end;

procedure TCTC_FM_M_AVF.txtcriterio_01Exit(Sender: TObject);
begin
  inherited;
  MediaPonderada;
end;

procedure TCTC_FM_M_AVF.txtcriterio_01KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',',#8]) then
    key :=#0;
end;

procedure TCTC_FM_M_AVF.txtFornecedorButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
   PSQ_FM_X_FOR.ShowModal;
      if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
         begin
           dmCtc.ctc_cd_m_avf.FieldByName('ID_FORNECEDOR').AsString :=
              PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString;

           dmCtc.ctc_cd_m_avf.FieldByName('nom_fornecedor').AsString :=
              PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;

           dmCtc.ctc_cd_m_avf.FieldByName('doc_cnpj').AsString :=
              PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('doc_cnpj').AsString;
         end;
   PSQ_FM_X_FOR.Free;
end;

procedure TCTC_FM_M_AVF.txtFornecedorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

    dmCtc.ctc_cd_m_avf.FieldByName('nom_fornecedor').Text := '';
    dmCtc.ctc_cd_m_avf.FieldByName('doc_cnpj').AsString := '';

    dmGeral.BUS_CD_C_FOR.Close;
    dmGeral.BUS_CD_C_FOR.Data :=
    dmGeral.BUS_CD_C_FOR.DataRequest(VarArrayOf([0, txtFornecedor.Text]));

    if not dmGeral.BUS_CD_C_FOR.IsEmpty then
      begin
        dmCtc.ctc_cd_m_avf.FieldByName('nom_fornecedor').AsString :=
          dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;

        dmCtc.ctc_cd_m_avf.FieldByName('doc_cnpj').AsString :=
          dmGeral.BUS_CD_C_FOR.FieldByName('doc_cnpj').AsString;


        dbGridRowChanged(Self);

        {dmCtc.ctc_cd_m_avf_nfe.Close;
        dmCtc.ctc_cd_m_avf_nfe.Data :=
          dmCtc.ctc_cd_m_avf_nfe.DataRequest
            (VarArrayOf([108,dmgeral.CAD_CD_C_PARid_empresa.Text,
              DateToStr(dmCtc.ctc_cd_m_avfdta_avf.AsDateTime - 180),
                dmCtc.ctc_cd_m_avfdta_avf.AsString, dmCtc.ctc_cd_m_avfid_fornecedor.AsString]));}

        chkFornecedor.SetFocus;
      end
    else
      begin
        showMessage('Fornecedor não Cadastrado.');
        dmCtc.ctc_cd_m_avf.FieldByName('ID_FORNECEDOR').Text := '';
        dmCtc.ctc_cd_m_avf.FieldByName('doc_cnpj').AsString := '';
      end;
end;

procedure TCTC_FM_M_AVF.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
