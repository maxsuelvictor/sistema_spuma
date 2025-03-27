unit CSU_UN_M_ETG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Datasnap.DBClient, frxClass, frxDBSet, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  TCSU_FM_M_ETG = class(TPAD_FM_X_FRM)
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    dsoDev: TwwDataSource;
    dsoDesp: TwwDataSource;
    BUS_CD_M_ETG: TClientDataSet;
    BUS_CD_M_ETG_DEV: TClientDataSet;
    BUS_CD_M_LDM: TClientDataSet;
    BUS_CD_M_ETGid_entrega: TIntegerField;
    BUS_CD_M_ETGid_pedido: TIntegerField;
    BUS_CD_M_ETGid_forma_pag: TIntegerField;
    BUS_CD_M_ETGvlr_pagamento: TFMTBCDField;
    BUS_CD_M_ETGlatitude: TFloatField;
    BUS_CD_M_ETGlongitude: TFloatField;
    BUS_CD_M_ETGmob_id_entrega: TIntegerField;
    BUS_CD_M_ETGid_empresa: TIntegerField;
    BUS_CD_M_ETGFAT_SQ_M_ETG_DEV: TDataSetField;
    BUS_CD_M_LDMid_ldm: TIntegerField;
    BUS_CD_M_LDMid_conta: TIntegerField;
    BUS_CD_M_LDMnatureza: TIntegerField;
    BUS_CD_M_LDMid_motorista: TIntegerField;
    BUS_CD_M_LDMid_forma_pag: TIntegerField;
    BUS_CD_M_LDMid_plano: TWideStringField;
    BUS_CD_M_LDMdta_emissao: TDateField;
    BUS_CD_M_LDMdta_vencimento: TDateField;
    BUS_CD_M_LDMnum_parcela: TWideStringField;
    BUS_CD_M_LDMhistorico: TWideStringField;
    BUS_CD_M_LDMvlr_titulo: TFMTBCDField;
    BUS_CD_M_LDMlatitude: TFloatField;
    BUS_CD_M_LDMlongitude: TFloatField;
    BUS_CD_M_LDMmob_id_ldm: TIntegerField;
    BUS_CD_M_LDMid_empresa: TIntegerField;
    BUS_CD_M_LDMcaminho_foto: TWideStringField;
    BUS_CD_M_LDMint_nome_mot: TWideStringField;
    BUS_DB_M_ETG: TfrxDBDataset;
    BUS_DB_M_ETG_DEV: TfrxDBDataset;
    BUS_DB_M_LDM: TfrxDBDataset;
    pmLocalEntrega: TPopupMenu;
    pmLocalDespesa: TPopupMenu;
    BUS_CD_M_ETGint_nomefpg: TWideStringField;
    BUS_CD_M_LDMint_nomefpg: TWideStringField;
    BUS_CD_M_ETG_DEVid_entrega: TIntegerField;
    BUS_CD_M_ETG_DEVid_sequencia: TIntegerField;
    BUS_CD_M_ETG_DEVid_item: TIntegerField;
    BUS_CD_M_ETG_DEVqtde: TFloatField;
    BUS_CD_M_ETG_DEVmotivo: TWideStringField;
    BUS_CD_M_ETG_DEVint_nomeite: TWideStringField;
    BUS_CD_M_ETG_DEVint_undvenda: TWideStringField;
    btnLocalEntrega: TMenuItem;
    btnLocalDesp: TMenuItem;
    CSU_FR_M_ETG: TfrxReport;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnImprimir: TButton;
    GroupBox1: TGroupBox;
    cbbFiltroDesp: TComboBox;
    txtPesqDesp: TEdit;
    GroupBox2: TGroupBox;
    cbbFiltroEtg: TComboBox;
    txtPesqEtg: TEdit;
    btnFiltrarEtg: TButton;
    btnFiltrarDesp: TButton;
    BUS_CD_M_ETG_DEVint_qtde_ped: TFloatField;
    btnVerImagem: TMenuItem;
    BUS_CD_M_ETGid_motorista: TIntegerField;
    BUS_CD_M_ETGint_nome_mot: TWideStringField;
    procedure acSairExecute(Sender: TObject);
    procedure btnLocalEntregaClick(Sender: TObject);
    procedure btnLocalDespClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BUS_CD_M_ETGBeforeOpen(DataSet: TDataSet);
    procedure BUS_CD_M_LDMBeforeOpen(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFiltrarEtgClick(Sender: TObject);
    procedure btnFiltrarDespClick(Sender: TObject);
    procedure cbbFiltroEtgChange(Sender: TObject);
    procedure cbbFiltroDespChange(Sender: TObject);
    procedure btnVerImagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_M_ETG: TCSU_FM_M_ETG;

implementation

{$R *.dfm}

uses uDmGeral, CSU_UN_M_GPS, enConstantes, uProxy, FormImg;

procedure TCSU_FM_M_ETG.acSairExecute(Sender: TObject);
begin
  inherited;
  FreeAndNil(CSU_FM_M_ETG);
end;

procedure TCSU_FM_M_ETG.btnFiltrarDespClick(Sender: TObject);
begin
  inherited;
   if ((cbbFiltroDesp.ItemIndex<>4) and (trim(txtPesqDesp.Text)=''))  then
    begin
      ShowMessage('É necessario preencher o filtro.');
      exit;
    end;


  BUS_CD_M_LDM.Close;
  BUS_CD_M_LDM.Data :=
  BUS_CD_M_LDM.DataRequest(
                 VarArrayOf([cbbFiltroDesp.ItemIndex,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                                                txtPesqDesp.Text]));
end;

procedure TCSU_FM_M_ETG.btnFiltrarEtgClick(Sender: TObject);
begin
  inherited;

  if ((cbbFiltroEtg.ItemIndex<>2) and (trim(txtPesqEtg.Text)=''))  then
    begin
      ShowMessage('É necessario preencher o filtro.');
      exit;
    end;

  BUS_CD_M_ETG.Close;
  BUS_CD_M_ETG.Data :=
  BUS_CD_M_ETG.DataRequest(
                 VarArrayOf([cbbFiltroEtg.ItemIndex,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                                                txtPesqEtg.Text]));
end;

procedure TCSU_FM_M_ETG.btnImprimirClick(Sender: TObject);
var
  PathImg:String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  BUS_CD_M_ETG.First;
  BUS_CD_M_ETG_DEV.First;
  BUS_CD_M_LDM.First;

  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
  if FileExists(PathImg) then
     begin
        LogoEmpresa := TfrxPictureView(CSU_FR_M_ETG.FindObject('imgEmpresa1'));
        if Assigned(LogoEmpresa) then
           LogoEmpresa.Picture.LoadFromFile(PathImg);
     end;

  CSU_FR_M_ETG.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
  CSU_FR_M_ETG.PrepareReport();
  CSU_FR_M_ETG.ShowReport();

end;

procedure TCSU_FM_M_ETG.btnLocalDespClick(Sender: TObject);
begin
  inherited;
  if (BUS_CD_M_LDM.FieldByName('latitude').AsString<>'')
    and (BUS_CD_M_LDM.FieldByName('longitude').AsString<>'') then
    begin
      Application.CreateForm(TCSU_FM_M_GPS,CSU_FM_M_GPS);
      xCaminho := xCaminho+ stringReplace( BUS_CD_M_LDM.FieldByName('latitude').AsString,',','.',[rfReplaceAll]) +','+
        stringReplace(BUS_CD_M_LDM.FieldByName('longitude').AsString,',','.',[rfReplaceAll]);

      CSU_FM_M_GPS.btnRotaClick(sender);
      CSU_FM_M_GPS.panel1.Visible := false;
      CSU_FM_M_GPS.ShowModal;
      CSU_FM_M_GPS.Free;
    end
  else
    begin
      ShowMessage('Localização não existente.');
    end;
end;

procedure TCSU_FM_M_ETG.btnLocalEntregaClick(Sender: TObject);
begin
  inherited;

  if (BUS_CD_M_ETG.FieldByName('latitude').AsString<>'')
    and (BUS_CD_M_ETG.FieldByName('longitude').AsString<>'') then
    begin
      Application.CreateForm(TCSU_FM_M_GPS,CSU_FM_M_GPS);
      xCaminho := xCaminho+ stringReplace( BUS_CD_M_ETG.FieldByName('latitude').AsString,',','.',[rfReplaceAll]) +','+
        stringReplace(BUS_CD_M_ETG.FieldByName('longitude').AsString,',','.',[rfReplaceAll]);

      CSU_FM_M_GPS.btnRotaClick(sender);
      CSU_FM_M_GPS.panel1.Visible := false;
      CSU_FM_M_GPS.ShowModal;
      CSU_FM_M_GPS.Free;
    end
  else
    begin
      ShowMessage('Localização não existente.');
    end;


end;

procedure TCSU_FM_M_ETG.btnVerImagemClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  ms: TStream;
  imagem:TBitmap;

begin
  inherited;

  if (trim(BUS_CD_M_LDM.FieldByName('caminho_foto').AsString)<>'') then
    begin
      SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
      try
       ms := TStream.Create;

       ms := SMPrincipal.enGetImagem('FIN_TB_M_LDM\emp'+BUS_CD_M_LDM.FieldByName('id_empresa').AsString,trim(BUS_CD_M_LDM.FieldByName('caminho_foto').AsString));
       ms.Position := 0;

       imagem := TBitmap.Create;
       imagem.LoadFromStream(ms);

      // imagem.LoadFromStream(ms);
       FImg := TFImg.Create(Self);
       FImg.Image1.Picture.Bitmap.Assign(imagem);
       FImg.Caption := '';
       FImg.Show;
       FImg.Left := (Screen.Width DIV 6);
       FImg.Top := (Screen.Height DIV 8);

      // FImg.Left := (Screen.Width DIV 3);
      // FImg.Top := (Screen.Width DIV 4);


      finally
        FreeAndNil(SMPrincipal);
      //  ms.Free;
       // imagem.Free;
      end;
    end
  else
    begin
      ShowMessage('Imagem inexistente.');
    end;
end;

procedure TCSU_FM_M_ETG.BUS_CD_M_ETGBeforeOpen(DataSet: TDataSet);
begin
  inherited;
   BUS_CD_M_ETGVLR_PAGAMENTO.DisplayFormat    :=CMascaraValor;
end;

procedure TCSU_FM_M_ETG.BUS_CD_M_LDMBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  BUS_CD_M_LDMVLR_TITULO.DisplayFormat    :=CMascaraValor;
end;

procedure TCSU_FM_M_ETG.cbbFiltroDespChange(Sender: TObject);
begin
  inherited;
  txtPesqDesp.Text := '';
  if (cbbFiltroDesp.ItemIndex=0) then
    txtPesqDesp.NumbersOnly := true
  else
     txtPesqDesp.NumbersOnly := false;
end;

procedure TCSU_FM_M_ETG.cbbFiltroEtgChange(Sender: TObject);
begin
  inherited;
  txtPesqEtg.Text := '';

  if (cbbFiltroEtg.ItemIndex=0) then
    txtPesqEtg.NumbersOnly := true
  else
     txtPesqEtg.NumbersOnly := false;
end;

procedure TCSU_FM_M_ETG.FormCreate(Sender: TObject);
begin
  inherited;

  BUS_CD_M_ETG.Close;
  BUS_CD_M_ETG.Data :=
  BUS_CD_M_ETG.DataRequest(
                 VarArrayOf([3,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));

  BUS_CD_M_LDM.Close;
  BUS_CD_M_LDM.Data :=
  BUS_CD_M_LDM.DataRequest(
                 VarArrayOf([4,dmgeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString]));

end;

end.
