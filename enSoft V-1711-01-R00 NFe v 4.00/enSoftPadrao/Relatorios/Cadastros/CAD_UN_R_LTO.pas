unit CAD_UN_R_LTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, frxClass, frxDBSet,
  frxExportXLS, frxExportPDF, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TCAD_FM_R_LTO = class(TPAD_FM_X_REL)
    CAD_PD_R_LTO: TfrxPDFExport;
    CAD_XL_R_LTO: TfrxXLSExport;
    CAD_FR_R_LTO: TfrxReport;
    CAD_DB_R_LTO: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_LTO: TCAD_FM_R_LTO;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_R_LTO;

procedure TCAD_FM_R_LTO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   FreeAndNil(CAD_FM_R_LTO);
end;

procedure TCAD_FM_R_LTO.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TCAD_FM_R_LTO.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(lbxRelatorios,CAD_FR_R_LTO);
end;
end.
