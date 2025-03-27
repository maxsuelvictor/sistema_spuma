unit CTC_UN_R_EPI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, frxClass, frxExportXLS, frxDBSet, frxExportPDF, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TCTC_FM_R_EPI = class(TPAD_FM_X_REL)
    CTC_PD_R_EPI: TfrxPDFExport;
    CTC_DB_R_EPI: TfrxDBDataset;
    CTC_XL_R_EPI: TfrxXLSExport;
    CTC_FR_R_EPI: TfrxReport;
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
  CTC_FM_R_EPI: TCTC_FM_R_EPI;

implementation

{$R *.dfm}

uses uDmGeral, uDmCtc;

procedure TCTC_FM_R_EPI.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TCTC_FM_R_EPI.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   dmCtc.CTC_CD_C_EPI.Close;
   dmCtc.CTC_CD_C_EPI.Data :=
   dmCtc.CTC_CD_C_EPI.DataRequest(
                     VarArrayOf([1,'%']));


   if not dmCtc.CTC_CD_C_EPI.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp1\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Ficha de Entrega do E.P.I' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(CTC_FR_R_EPI.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            CTC_FR_R_EPI.PrepareReport();
            CTC_FR_R_EPI.ShowReport();
          end;

      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

procedure TCTC_FM_R_EPI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CTC_FM_R_EPI);
end;

procedure TCTC_FM_R_EPI.FormShow(Sender: TObject);
begin
  inherited;
lbxRelatorios.ItemIndex := 0;
end;

end.
