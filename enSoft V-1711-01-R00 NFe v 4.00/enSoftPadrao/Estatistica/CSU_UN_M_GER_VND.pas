unit CSU_UN_M_GER_VND;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,System.Math, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls,
  Datasnap.DBClient, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Mask,
  vcl.Wwdbedit, frxClass, frxDBSet, frxExportPDF, frxExportXLS;

type
  TCSU_FM_M_GER_VND = class(TPAD_FM_X_FRM)
    Label2: TLabel;
    wwDBGrid1: TwwDBGrid;
    CSU_CD_M_GER_FVN: TClientDataSet;
    CSU_CD_M_GER_FVN_MED: TClientDataSet;
    CSU_CD_M_GER_NCL: TClientDataSet;
    txtMedVlrLiq: TwwDBEdit;
    Label6: TLabel;
    Label1: TLabel;
    txtMedVlrDesc: TwwDBEdit;
    Label3: TLabel;
    txtMedVlrBruto: TwwDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    txtNumCliDia: TwwDBEdit;
    Label7: TLabel;
    txtNumCliMensal: TwwDBEdit;
    Label8: TLabel;
    dsoNCL: TwwDataSource;
    dsoFvnMed: TwwDataSource;
    btnImprimir: TButton;
    CSU_FR_R_GER_FVN: TfrxReport;
    PAD_XL_R_REL: TfrxXLSExport;
    PAD_PD_R_REL: TfrxPDFExport;
    CSU_DB_M_GER_FVN: TfrxDBDataset;
    CSU_DB_M_GER_NCL: TfrxDBDataset;
    CSU_DB_M_GER_FVN_MED: TfrxDBDataset;
    CSU_CD_M_GER_FVN_MEDVLR_BRUTO_DIA: TCurrencyField;
    CSU_CD_M_GER_FVN_MEDVLR_DESCONTO_DIA: TCurrencyField;
    CSU_CD_M_GER_FVN_MEDVLR_LIQUIDO_DIA: TCurrencyField;
    CSU_CD_M_GER_FVN_MEDVLR_BRUTO_MSL: TCurrencyField;
    CSU_CD_M_GER_FVN_MEDVLR_DESCONTO_MSL: TCurrencyField;
    CSU_CD_M_GER_FVN_MEDVLR_LIQUIDO_MSL: TCurrencyField;
    Label9: TLabel;
    Label10: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label11: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label12: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label13: TLabel;
    CSU_CD_M_GER_FVNid_empresa: TIntegerField;
    CSU_CD_M_GER_FVNint_nomeemp: TWideStringField;
    CSU_CD_M_GER_FVNint_cod_vnd: TIntegerField;
    CSU_CD_M_GER_FVNint_nomevnd: TWideStringField;
    CSU_CD_M_GER_FVNvlr_bruto_dia: TFloatField;
    CSU_CD_M_GER_FVNvlr_desconto_dia: TFloatField;
    CSU_CD_M_GER_FVNvlr_liquido_dia: TFloatField;
    CSU_CD_M_GER_FVNvlr_bruto_msl: TFloatField;
    CSU_CD_M_GER_FVNvlr_desconto_msl: TFloatField;
    CSU_CD_M_GER_FVNvlr_liquido_msl: TFloatField;
    procedure acSairExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure CSU_CD_M_GER_FVNBeforeOpen(DataSet: TDataSet);
    procedure CSU_CD_M_GER_FVN_MEDBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    var
      dtaInicial,dtaFinal:String;
  public
    { Public declarations }
  end;

var
  CSU_FM_M_GER_VND: TCSU_FM_M_GER_VND;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes;

procedure TCSU_FM_M_GER_VND.acSairExecute(Sender: TObject);
begin
  inherited;
  FreeAndNil(CSU_FM_M_GER_VND);
end;

procedure TCSU_FM_M_GER_VND.btnImprimirClick(Sender: TObject);
var
  PathImg,xOpcoes: String;
  LogoEmpresa: TfrxPictureView;
begin

      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(CSU_FR_R_GER_FVN.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;
      xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
      xOpcoes := xOpcoes + 'Empresa............: ' +dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString +' - '+
                                                    dmGeral.CAD_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString+#13+#10;

      CSU_FR_R_GER_FVN.Variables['dia'] := formatdatetime('dd',xDataSis);
      CSU_FR_R_GER_FVN.Variables['mes'] := formatdatetime('mm',xDataSis);


      CSU_FR_R_GER_FVN.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
      CSU_FR_R_GER_FVN.Variables['Opcoes'] := QuotedStr(xOpcoes);
      CSU_FR_R_GER_FVN.PrepareReport();
      CSU_FR_R_GER_FVN.ShowReport();
end;

procedure TCSU_FM_M_GER_VND.CSU_CD_M_GER_FVNBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  CSU_CD_M_GER_FVNvlr_desconto_dia.DisplayFormat := CMascaraValor;
  CSU_CD_M_GER_FVNvlr_bruto_dia.DisplayFormat := CMascaraValor;
  CSU_CD_M_GER_FVNvlr_liquido_dia.DisplayFormat := CMascaraValor;

  CSU_CD_M_GER_FVNvlr_desconto_msl.DisplayFormat := CMascaraValor;
  CSU_CD_M_GER_FVNvlr_bruto_msl.DisplayFormat := CMascaraValor;
  CSU_CD_M_GER_FVNvlr_liquido_msl.DisplayFormat := CMascaraValor;
end;

procedure TCSU_FM_M_GER_VND.CSU_CD_M_GER_FVN_MEDBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  CSU_CD_M_GER_FVN_MEDvlr_desconto_dia.DisplayFormat := CMascaraValor;
  CSU_CD_M_GER_FVN_MEDvlr_bruto_dia.DisplayFormat := CMascaraValor;
  CSU_CD_M_GER_FVN_MEDvlr_liquido_dia.DisplayFormat := CMascaraValor;

  CSU_CD_M_GER_FVN_MEDvlr_desconto_msl.DisplayFormat := CMascaraValor;
  CSU_CD_M_GER_FVN_MEDvlr_bruto_msl.DisplayFormat := CMascaraValor;
  CSU_CD_M_GER_FVN_MEDvlr_liquido_msl.DisplayFormat := CMascaraValor;
end;

procedure TCSU_FM_M_GER_VND.FormShow(Sender: TObject);
begin
  inherited;

  dtainicial := '01/'+formatdatetime('mm/yyyy',xDataSis);
  dtaFinal := DateToStr(xDataSis);

  CSU_CD_M_GER_FVN.Close;
     CSU_CD_M_GER_FVN.Data :=
             CSU_CD_M_GER_FVN.DataRequest(
                  VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByname('ID_EMPRESA').AsString,dtaInicial,dtaFinal]));

  CSU_CD_M_GER_FVN_MED.CreateDataSet;
  CSU_CD_M_GER_FVN_MED.EmptyDataSet;

   CSU_CD_M_GER_FVN_MED.Insert;

   CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_DIA').AsCurrency := 0;
   CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_DIA').AsCurrency := 0;
   CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_DIA').AsCurrency := 0;

   CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_MSL').AsCurrency := 0;
   CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_MSL').AsCurrency := 0;
   CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_MSL').AsCurrency := 0;

   CSU_CD_M_GER_FVN.First;
   while not CSU_CD_M_GER_FVN.eof do
     begin
       CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_DIA').AsCurrency :=
             CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_DIA').AsCurrency+
              CSU_CD_M_GER_FVN.FieldByName('VLR_BRUTO_DIA').AsCurrency;

       CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_DIA').AsCurrency :=
            CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_DIA').AsCurrency+
              CSU_CD_M_GER_FVN.FieldByName('VLR_DESCONTO_DIA').AsCurrency;

       CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_DIA').AsCurrency :=
           CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_DIA').AsCurrency+
           CSU_CD_M_GER_FVN.FieldByName('VLR_LIQUIDO_DIA').AsCurrency;

       CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_MSL').AsCurrency :=
           CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_MSL').AsCurrency+
           CSU_CD_M_GER_FVN.FieldByName('VLR_BRUTO_MSL').AsCurrency;

       CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_MSL').AsCurrency :=
            CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_MSL').AsCurrency+
            CSU_CD_M_GER_FVN.FieldByName('VLR_DESCONTO_MSL').AsCurrency;

       CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_MSL').AsCurrency :=
            CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_MSL').AsCurrency+
            CSU_CD_M_GER_FVN.FieldByName('VLR_LIQUIDO_MSL').AsCurrency;



       CSU_CD_M_GER_FVN.Next;
     end;


  CSU_CD_M_GER_FVN.First;
  if CSU_CD_M_GER_FVN.RecordCount>0 then
    begin
      CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_DIA').AsCurrency :=
            RoundTo(CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_DIA').AsCurrency/CSU_CD_M_GER_FVN.RecordCount,-2);

      CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_DIA').AsCurrency :=
            RoundTo(CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_DIA').AsCurrency/CSU_CD_M_GER_FVN.RecordCount,-2);

      CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_DIA').AsCurrency :=
            RoundTo(CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_DIA').AsCurrency/CSU_CD_M_GER_FVN.RecordCount,-2);


      CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_MSL').AsCurrency :=
            RoundTo(CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_MSL').AsCurrency/CSU_CD_M_GER_FVN.RecordCount,-2);


      CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_MSL').AsCurrency :=
            RoundTo(CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_MSL').AsCurrency/CSU_CD_M_GER_FVN.RecordCount,-2);


      CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_MSL').AsCurrency :=
            RoundTo(CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_MSL').AsCurrency/CSU_CD_M_GER_FVN.RecordCount,-2);

    end;





  CSU_CD_M_GER_NCL.Close;
  CSU_CD_M_GER_NCL.Data :=
             CSU_CD_M_GER_NCL.DataRequest(
                  VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByname('ID_EMPRESA').AsString,dtaInicial,dtaFinal]));


end;

end.
