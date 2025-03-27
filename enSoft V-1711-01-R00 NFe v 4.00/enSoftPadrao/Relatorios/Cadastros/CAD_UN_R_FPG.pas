unit CAD_UN_R_FPG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, frxExportPDF, frxClass, frxExportXLS, frxDBSet, JvExExtCtrls,
  JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TCAD_FM_R_FPG = class(TPAD_FM_X_REL)
    CAD_FR_R_FPG: TfrxReport;
    CAD_DB_R_FPG: TfrxDBDataset;
    CAD_XL_R_FPG: TfrxXLSExport;
    CAD_PD_R_FPG: TfrxPDFExport;
    CAD_CD_R_FPG: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
  public
    { Public declarations }
  end;

var
  CAD_FM_R_FPG: TCAD_FM_R_FPG;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes;

procedure TCAD_FM_R_FPG.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TCAD_FM_R_FPG.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   CAD_CD_R_FPG.Close;
   CAD_CD_R_FPG.Open;

   if not CAD_CD_R_FPG.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Formas de Pagamento' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_FPG.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_FPG.Name,xCodLme,xRevLme,nil);
            CAD_FR_R_FPG.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            CAD_FR_R_FPG.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            CAD_FR_R_FPG.PrepareReport();
            CAD_FR_R_FPG.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');

end;

procedure TCAD_FM_R_FPG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_FPG);
end;

procedure TCAD_FM_R_FPG.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

end.
