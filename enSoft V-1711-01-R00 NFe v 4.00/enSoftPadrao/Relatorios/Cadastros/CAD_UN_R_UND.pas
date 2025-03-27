unit CAD_UN_R_UND;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS, Data.DB, Datasnap.DBClient;

type
  TCAD_FM_R_UND = class(TPAD_FM_X_REL)
    CAD_FR_R_UND: TfrxReport;
    CAD_XL_R_UND: TfrxXLSExport;
    CAD_PD_R_UND: TfrxPDFExport;
    CAD_DB_R_UND: TfrxDBDataset;
    CAD_CD_R_UND: TClientDataSet;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure ExibirRel;
  public
    { Public declarations }
  end;

var
  CAD_FM_R_UND: TCAD_FM_R_UND;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes;

procedure TCAD_FM_R_UND.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TCAD_FM_R_UND.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
    begin
      Showmessage('Nenhum relatório foi selecionado.');
    end
  else
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

      CAD_CD_R_UND.Active:= False;
      CAD_CD_R_UND.Close;
      CAD_CD_R_UND.Data :=
        CAD_CD_R_UND.DataRequest(
                      VarArrayOf([1,'']));

      if not CAD_CD_R_UND.IsEmpty then
        begin
          if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Listagem de Unidade de Medida' then
            begin
             if FileExists(PathImg) then
               begin
                 LogoEmpresa := TfrxPictureView(CAD_FR_R_UND.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
               dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_UND.Name,xCodLme,xRevLme,nil);
               CAD_FR_R_UND.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
               CAD_FR_R_UND.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
               CAD_FR_R_UND.Variables['Opcoes'] := QuotedStr('');
               CAD_FR_R_UND.PrepareReport();
               CAD_FR_R_UND.ShowReport();
            end;
        end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;
    end;
end;

procedure TCAD_FM_R_UND.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_UND);
end;

end.
