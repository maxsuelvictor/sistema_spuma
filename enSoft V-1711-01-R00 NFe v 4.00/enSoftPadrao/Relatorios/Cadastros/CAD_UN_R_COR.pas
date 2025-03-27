unit CAD_UN_R_COR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, frxExportXLS, frxClass, frxDBSet, frxExportPDF, JvExExtCtrls,
  JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TCAD_FM_R_COR = class(TPAD_FM_X_REL)
    CAD_PD_R_COR: TfrxPDFExport;
    CAD_FR_R_COR: TfrxReport;
    CAD_DB_R_COR: TfrxDBDataset;
    CAD_XL_R_COR: TfrxXLSExport;
    CAD_CD_R_COR: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_COR: TCAD_FM_R_COR;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_R_COR;

procedure TCAD_FM_R_COR.btnImprimirClick(Sender: TObject);
begin
  inherited;
   ExibirRel(lbxRelatorios,CAD_FR_R_COR);
end;
procedure TCAD_FM_R_COR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_COR);
end;

procedure TCAD_FM_R_COR.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

end.
