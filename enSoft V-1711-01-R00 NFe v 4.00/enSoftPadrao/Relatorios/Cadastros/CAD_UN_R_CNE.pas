unit CAD_UN_R_CNE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, frxExportPDF, frxClass, frxExportXLS, frxDBSet, JvExExtCtrls,
  JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TCAD_FM_R_CNE = class(TPAD_FM_X_REL)
    CAD_DB_R_CNE: TfrxDBDataset;
    CAD_FR_R_CNE: TfrxReport;
    CAD_XL_R_CNE: TfrxXLSExport;
    CAD_PD_R_CNE: TfrxPDFExport;
    CAD_CD_R_CNE: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_CNE: TCAD_FM_R_CNE;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_R_CNE;

procedure TCAD_FM_R_CNE.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(lbxRelatorios,CAD_FR_R_CNE);
end;
procedure TCAD_FM_R_CNE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_CNE);
end;

procedure TCAD_FM_R_CNE.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

end.
