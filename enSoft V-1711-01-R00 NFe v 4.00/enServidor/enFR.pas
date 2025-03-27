unit enFR;

interface

uses
  System.SysUtils,System.Variants, System.Classes, frxClass,System.IniFiles, frxDBSet, frxExportPDF,
  frxExportXLS, Data.DB, Datasnap.DBClient, Datasnap.Provider,  Vcl.Forms,
  DbxDevartPostgreSQL, Data.SqlExpr, Data.FMTBcd, frxExportMail,
  IdBaseComponent, IdMailBox, ACBrBase, ACBrMail;

type
  TFR = class(TDataModule)
    CSU_FR_R_GER_FVN: TfrxReport;
    CSU_DB_M_GER_FVN: TfrxDBDataset;
    CSU_DB_M_GER_NCL: TfrxDBDataset;
    CSU_DB_M_GER_FVN_MED: TfrxDBDataset;
    PAD_PD_R_REL: TfrxPDFExport;
    PAD_XL_R_REL: TfrxXLSExport;
    CSU_CD_M_GER_NCL: TClientDataSet;
    CSU_CD_M_GER_FVN: TClientDataSet;
    BUS_DP_M_CSU_GRV_FVN: TDataSetProvider;
    CAD_CD_C_PAR: TClientDataSet;
    CAD_DP_C_PAR: TDataSetProvider;
    BUS_DP_M_CSU_GRV_NCL: TDataSetProvider;
    CAD_DB_C_PAR: TfrxDBDataset;
    CSU_CD_M_GER_FVN_MED: TClientDataSet;
    CSU_CD_M_GER_FVN_MEDVLR_BRUTO_DIA: TCurrencyField;
    CSU_CD_M_GER_FVN_MEDVLR_DESCONTO_DIA: TCurrencyField;
    CSU_CD_M_GER_FVN_MEDVLR_LIQUIDO_DIA: TCurrencyField;
    CSU_CD_M_GER_FVN_MEDVLR_BRUTO_MSL: TCurrencyField;
    CSU_CD_M_GER_FVN_MEDVLR_DESCONTO_MSL: TCurrencyField;
    CSU_CD_M_GER_FVN_MEDVLR_LIQUIDO_MSL: TCurrencyField;
    ConexaoNW: TSQLConnection;
    CAD_SQ_C_PAR: TSQLDataSet;
    BUS_SQ_M_CSU_GRV_NCL: TSQLDataSet;
    BUS_SQ_M_CSU_GRV_FVN: TSQLDataSet;
    ACBrMail: TACBrMail;
    CAD_CD_C_PAR_CTR: TClientDataSet;
    CAD_CD_C_PAR_EML: TClientDataSet;
    CAD_DS_C_PAR: TDataSource;
    CAD_SQ_C_PAR_CTR: TSQLDataSet;
    CAD_SQ_C_PAR_EML: TSQLDataSet;
    CAD_SQ_C_PARid_empresa: TIntegerField;
    CAD_SQ_C_PARemp_razao: TWideStringField;
    CAD_SQ_C_PARemp_fantasia: TWideStringField;
    CAD_SQ_C_PAR_CTRenviar_rel_grv: TBooleanField;
    CAD_CD_C_PARid_empresa: TIntegerField;
    CAD_CD_C_PARemp_razao: TWideStringField;
    CAD_CD_C_PARemp_fantasia: TWideStringField;
    CAD_CD_C_PARCAD_SQ_C_PAR_EML: TDataSetField;
    CAD_CD_C_PARCAD_SQ_C_PAR_CTR: TDataSetField;
    CAD_CD_C_PAR_CTRenviar_rel_grv: TBooleanField;
    CAD_CD_C_PAR_EMLid_empresa: TIntegerField;
    CAD_CD_C_PAR_EMLemail: TWideStringField;
    CAD_SQ_C_PAR_NFE: TSQLDataSet;
    CAD_CD_C_PAR_NFE: TClientDataSet;
    CAD_SQ_C_PAR_NFEemail_smtp: TWideStringField;
    CAD_SQ_C_PAR_NFEemail_smtp_porta: TIntegerField;
    CAD_SQ_C_PAR_NFEemail_smtp_seguro: TWideStringField;
    CAD_SQ_C_PAR_NFEemail_usuario: TWideStringField;
    CAD_SQ_C_PAR_NFEemail_senha: TWideStringField;
    CAD_SQ_C_PAR_NFEemail_smtp_ssl: TBooleanField;
    CAD_SQ_C_PAR_NFEemail_smtp_tls: TBooleanField;
    CAD_CD_C_PARCAD_SQ_C_PAR_NFE: TDataSetField;
    CAD_CD_C_PAR_NFEemail_smtp: TWideStringField;
    CAD_CD_C_PAR_NFEemail_smtp_porta: TIntegerField;
    CAD_CD_C_PAR_NFEemail_smtp_seguro: TWideStringField;
    CAD_CD_C_PAR_NFEemail_usuario: TWideStringField;
    CAD_CD_C_PAR_NFEemail_senha: TWideStringField;
    CAD_CD_C_PAR_NFEemail_smtp_ssl: TBooleanField;
    CAD_CD_C_PAR_NFEemail_smtp_tls: TBooleanField;
    function CAD_DP_C_PARDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    procedure DataModuleCreate(Sender: TObject);
    function BUS_DP_M_CSU_GRV_FVNDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
    function BUS_DP_M_CSU_GRV_NCLDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR: TFR;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses enConstantes;



{$R *.dfm}

function TFR.BUS_DP_M_CSU_GRV_FVNDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
begin
   BUS_SQ_M_CSU_GRV_FVN.Close;
   BUS_SQ_M_CSU_GRV_FVN.CommandText :=
     ' select                 '+
     '     NFE.ID_EMPRESA,    '+
     '     PAR.EMP_FANTASIA AS INT_NOMEEMP, '+
     '     COALESCE(NFE.ID_VENDEDOR,0) AS INT_COD_VND,  '+
     '     CAST( COALESCE(FUN.NOME,''INDEFINIDO'') AS VARCHAR(100)) AS INT_NOMEVND, '+


     '     COALESCE(sum(case NFE.DTA_EMISSAO    '+
     '      when '''+FormatDateTime(CFormatoData, StrToDate(VarToStr(Input[2])))+''' then              '+
     '           (COALESCE(NIT.VLR_UNITARIO*(NIT.QTDE-NIT.QTDE_DEVOLVIDA),0)) '+
     '     end),0) AS  VLR_BRUTO_DIA,           '+


     '    COALESCE(sum(case NFE.DTA_EMISSAO     '+
     '      when '''+FormatDateTime(CFormatoData, StrToDate(VarToStr(Input[2])))+''' then              '+
     '           (COALESCE((case when nit.qtde>0 then (COALESCE(NIT.VLR_DESCONTO,0)/NIT.QTDE) else 0 end) *(nit.qtde-nit.qtde_devolvida),0)) '+
     '     end),0) AS  VLR_DESCONTO_DIA,  '+


     '    COALESCE(sum(case NFE.DTA_EMISSAO '+
     '      when '''+FormatDateTime(CFormatoData, StrToDate(VarToStr(Input[2])))+''' then          '+
     '           COALESCE(NIT.VLR_UNITARIO*(NIT.QTDE-NIT.QTDE_DEVOLVIDA),0)  - (case when nit.qtde>0 then (COALESCE(NIT.VLR_DESCONTO,0)/NIT.QTDE) else 0 end) *(nit.qtde-nit.qtde_devolvida) '+
     '     end),0) AS  VLR_LIQUIDO_DIA, '+



     '     SUM(COALESCE(NIT.VLR_UNITARIO*(NIT.QTDE-NIT.QTDE_DEVOLVIDA),0)) AS VLR_BRUTO_MSL, '+
     '     SUM(COALESCE((case when nit.qtde>0 then (COALESCE(NIT.VLR_DESCONTO,0)/NIT.QTDE) else 0 end) *(nit.qtde-nit.qtde_devolvida),0)) AS VLR_DESCONTO_MSL, '+
     '     SUM(COALESCE(NIT.VLR_UNITARIO*(NIT.QTDE-NIT.QTDE_DEVOLVIDA),0))-SUM( (case when nit.qtde>0 then (COALESCE(NIT.VLR_DESCONTO,0)/NIT.QTDE) else 0 end) *(nit.qtde-nit.qtde_devolvida)) AS VLR_LIQUIDO_MSL  '+


     '  FROM FAT_TB_M_NFE_ITE NIT  '+
     '           LEFT OUTER JOIN FAT_TB_M_NFE NFE ON NFE.ID_FISCAL=NIT.ID_FISCAL   '+
     '           LEFT OUTER JOIN CAD_TB_C_PAR PAR ON PAR.ID_EMPRESA=NFE.ID_EMPRESA   '+
     '           LEFT OUTER JOIN CAD_TB_C_FUN FUN ON FUN.ID_FUNCIONARIO=NFE.ID_VENDEDOR  '+
     '           LEFT OUTER JOIN CAD_TB_C_CFO CFO ON CFO.ID_CFO=NFE.ID_CFO         '+
     '            WHERE  PAR.ID_EMPRESA = '''+ VarToStr(Input[0])+''' AND          '+

     '           NFE.DTA_EMISSAO>='''+FormatDateTime(CFormatoData, StrToDate(VarToStr(Input[1])))+''' and   '+
     '           NFE.DTA_EMISSAO<='''+FormatDateTime(CFormatoData, StrToDate(VarToStr(Input[2])))+''' and   '+
     '           CFO.ID_CLASSE IN (''SP10'',''SP70'') AND NFE.NFE_COD_SIT not in (''02'',''04'',''05'') AND  '+
     '           NFE.STATUS = 1 AND NFE.FATURADA = true AND NFE.TIPO_NF=''S'' '+
     '           group by 1,2,3,4               ';


   Result := BUS_DP_M_CSU_GRV_FVN.Data;
   BUS_SQ_M_CSU_GRV_FVN.Close;
end;

function TFR.BUS_DP_M_CSU_GRV_NCLDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
begin
   BUS_SQ_M_CSU_GRV_NCL.Close;
   BUS_SQ_M_CSU_GRV_NCL.CommandText :=

     ' select               '+
     '     NFE.ID_EMPRESA,  '+
     '     PAR.EMP_FANTASIA AS INT_NOMEEMP, '+
     '     COALESCE(count(case NFE.DTA_EMISSAO '+
     '      when '''+FormatDateTime(CFormatoData, StrToDate(VarToStr(Input[2])))+'''  then  '+
     '           NFE.ID_EMITENTE    '+
     '     end),0) AS  NUM_CLIENTE_DIA, '+
     '     COUNT(NFE.ID_EMITENTE)  AS NUM_CLIENTE_MSL  '+

     ' FROM FAT_TB_M_NFE NFE   '+
     '     LEFT OUTER JOIN CAD_TB_C_PAR PAR ON PAR.ID_EMPRESA=NFE.ID_EMPRESA  '+
     '     LEFT OUTER JOIN CAD_TB_C_FUN FUN ON FUN.ID_FUNCIONARIO=NFE.ID_VENDEDOR '+
     '     LEFT OUTER JOIN CAD_TB_C_CFO CFO ON CFO.ID_CFO=NFE.ID_CFO              '+
     '      WHERE  PAR.ID_EMPRESA = '''+VarToStr(Input[0])+''' AND                '+

     '     NFE.DTA_EMISSAO>='''+FormatDateTime(CFormatoData, StrToDate(VarToStr(Input[1])))+'''  and    '+
     '     NFE.DTA_EMISSAO<='''+FormatDateTime(CFormatoData, StrToDate(VarToStr(Input[2])))+'''  and    '+
     '     CFO.ID_CLASSE IN (''SP10'',''SP70'') AND NFE.NFE_COD_SIT not in (''02'',''04'',''05'') AND '+
     '     NFE.STATUS = 1 AND NFE.FATURADA = true AND NFE.TIPO_NF=''S''     '+
     '     group by 1,2        ';


   Result := BUS_DP_M_CSU_GRV_NCL.Data;
   BUS_SQ_M_CSU_GRV_NCL.Close;
end;

function TFR.CAD_DP_C_PARDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
function enSqlPar: String;
  begin
    Result :=
    'select PAR.*, CID.UF AS INT_UF, '+
    '          RAM.REGIME_TRIBUTARIO AS INT_REG_TRIBUTARIO, '+
    '          CID.NOME AS INT_NOMECID, '+
    '          RAM.ID_CNAE AS INT_ID_CNAE '+
    'from CAD_TB_C_PAR PAR '+
    'LEFT OUTER JOIN CAD_TB_C_CID CID ON CID.ID_CIDADE=PAR.ID_CIDADE '+
    'LEFT OUTER JOIN CAD_TB_C_RAM RAM ON RAM.ID_RAMO = PAR.ID_RAMO ';
  end;
begin
   CAD_SQ_C_PAR.Close;
   if Input[0] = 0 then
      begin
            CAD_SQ_C_PAR.CommandText := enSqlPar +
             ' WHERE PAR.ID_EMPRESA= ''' + VarToStr(Input[1]) +''' ';
      end;
    if Input[0] = 1 then
      begin
            CAD_SQ_C_PAR.CommandText := enSqlPar;
      end;


   Result := CAD_DP_C_PAR.Data;
end;

procedure TFR.DataModuleCreate(Sender: TObject);
var
  Rede:TInifile;
  Id: String;
begin
  Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Rede.Ini');
  ConexaoNW.Close;
  ConexaoNW.CloseDataSets;
  ConexaoNW.Params.Clear;

  //POstgresql 9
  ConexaoNW.Params.Add('DriverUnit=DbxDevartPostgreSQL');
  ConexaoNW.Params.Add('DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver180.bpl');
  ConexaoNW.Params.Add('MetaDataPackageLoader=TDBXDevartPostgreSQLMetaDataCommandFactory,DbxDevartPostgreSQLDriver180.bpl');
  ConexaoNW.Params.Add('ProductName=DevartPostgreSQL');
  ConexaoNW.Params.Add('GetDriverFunc=getSQLDriverPostgreSQL');
  ConexaoNW.Params.Add('LibraryName=dbexppgsql40.dll');
  ConexaoNW.Params.Add('LocaleCode=0000');
  ConexaoNW.Params.Add('IsolationLevel=ReadCommitted');
  ConexaoNW.Params.Add('MaxBlobSize=-1');
  ConexaoNW.Params.Add('FetchAll=True');
  ConexaoNW.Params.Add('UseQuoteChar=False');
  ConexaoNW.Params.Add('UseUnicode=True');
  ConexaoNW.Params.Add('VendorLib=dbexppgsql40.dll');
  ConexaoNW.Params.Add('BlobSize=-1');
  ConexaoNW.Params.Add('HostName='+Rede.ReadString('DEFINICAO_DE_DATABASE','HOST',''));
  ConexaoNW.Params.Add('SchemaName=public');
  ConexaoNW.Params.Add('Database='+Rede.ReadString('DEFINICAO_DE_DATABASE','BANCO',''));
  ConexaoNW.Params.Add('User_Name=postgres');
  ConexaoNW.Params.Add('Password=ssq#0609');
  ConexaoNW.Params.Add('EnableBCD=True');
  ConexaoNW.Open;
end;

end.
