unit CAD_UN_R_MVE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, frxClass, frxDBSet, frxExportXLS, frxExportPDF, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TCAD_FM_R_MVE = class(TPAD_FM_X_REL)
    CAD_PD_R_MVE: TfrxPDFExport;
    CAD_XL_R_MVE: TfrxXLSExport;
    CAD_FR_R_MVE: TfrxReport;
    CAD_DB_R_MVE: TfrxDBDataset;
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
  CAD_FM_R_MVE: TCAD_FM_R_MVE;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_R_MVE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   FreeAndNil(CAD_FM_R_MVE);
end;

procedure TCAD_FM_R_MVE.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TCAD_FM_R_MVE.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TCAD_FM_R_MVE.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');


   dmGeral.CAD_CD_C_MVE.Close;
   dmGeral.CAD_CD_C_MVE.Data :=
   dmGeral.CAD_CD_C_MVE.DataRequest(
                     VarArrayOf([1,'%']));


   if not dmGeral.CAD_CD_C_MVE.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Modelo de Veículos' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_MVE.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_MVE.Name,xCodLme,xRevLme,nil);
            CAD_FR_R_MVE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            CAD_FR_R_MVE.PrepareReport();
            CAD_FR_R_MVE.ShowReport();
          end;

      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;


end.
