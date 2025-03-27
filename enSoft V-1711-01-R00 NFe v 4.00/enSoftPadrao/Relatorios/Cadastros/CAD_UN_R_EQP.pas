unit CAD_UN_R_EQP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Data.DB,
  Datasnap.DBClient, frxExportPDF, frxClass, frxExportXLS, frxDBSet;

type
  TCAD_FM_R_EQP = class(TPAD_FM_X_REL)
    CAD_FR_R_EQP: TfrxReport;
    CAD_DB_R_EQP: TfrxDBDataset;
    CAD_XL_R_EQP: TfrxXLSExport;
    CAD_PD_R_EQP: TfrxPDFExport;
    CAD_CD_R_EQP: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_EQP: TCAD_FM_R_EQP;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes;

procedure TCAD_FM_R_EQP.btnImprimirClick(Sender: TObject);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
    Showmessage('Nenhum relatório foi selecionado.');

  CAD_CD_R_EQP.Close;
  CAD_CD_R_EQP.Data :=
  CAD_CD_R_EQP.DataRequest(VarArrayOf([1,'%']));

  if not CAD_CD_R_EQP.IsEmpty then
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Equipamentos' then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(CAD_FR_R_EQP.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_EQP.Name,xCodLme,xRevLme,nil);
          CAD_FR_R_EQP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          CAD_FR_R_EQP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          CAD_FR_R_EQP.PrepareReport();
          CAD_FR_R_EQP.ShowReport();
        end;
    end
  else
    ShowMessage('Nenhum registro foi encontrado.');
end;

procedure TCAD_FM_R_EQP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_EQP);
end;

procedure TCAD_FM_R_EQP.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

end.
