unit CAD_UN_R_MCT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, frxClass, frxExportXLS,
  frxExportPDF, frxDBSet, Vcl.ImgList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.ExtCtrls;

type
  TCAD_FM_R_MCT = class(TPAD_FM_X_REL)
    CAD_DB_R_MCT: TfrxDBDataset;
    CAD_PD_R_MCT: TfrxPDFExport;
    CAD_XL_R_MCT: TfrxXLSExport;
    CAD_FR_R_MCT: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_MCT: TCAD_FM_R_MCT;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_C_MCT;

procedure TCAD_FM_R_MCT.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(lbxRelatorios,CAD_FR_R_MCT);
end;

procedure TCAD_FM_R_MCT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_MCT);
end;

procedure TCAD_FM_R_MCT.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

end.
