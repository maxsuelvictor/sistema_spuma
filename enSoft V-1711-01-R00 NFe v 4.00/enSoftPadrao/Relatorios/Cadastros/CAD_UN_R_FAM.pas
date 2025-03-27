unit CAD_UN_R_FAM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Data.DB,
  Datasnap.DBClient, frxClass, frxDBSet, frxExportXLS, frxExportPDF,
  Vcl.ImgList, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls;

type
  TCAD_FM_R_FAM = class(TPAD_FM_X_REL)
    CAD_FR_R_FAM: TfrxReport;
    CAD_PD_R_FAM: TfrxPDFExport;
    CAD_XL_R_FAM: TfrxXLSExport;
    CAD_DB_R_FAM: TfrxDBDataset;
    CAD_CD_R_FAM: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_FAM: TCAD_FM_R_FAM;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes;

procedure TCAD_FM_R_FAM.btnImprimirClick(Sender: TObject);
var
PathImg: String;
LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if lbxRelatorios.ItemIndex = -1 then
    Showmessage('Nenhum relatório foi selecionado.');

  CAD_CD_R_FAM.Close;
  CAD_CD_R_FAM.Data := CAD_CD_R_FAM.DataRequest(VarArrayOf([dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text]));;

  if not CAD_CD_R_FAM.IsEmpty then
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Família' then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(CAD_FR_R_FAM.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_FAM.Name,xCodLme,xRevLme,nil);
          CAD_FR_R_FAM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          CAD_FR_R_FAM.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          CAD_FR_R_FAM.PrepareReport();
          CAD_FR_R_FAM.ShowReport();
        end;
    end
  else
    ShowMessage('Nenhum registro foi encontrado.');
end;

procedure TCAD_FM_R_FAM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_FAM);
end;

procedure TCAD_FM_R_FAM.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

end.
