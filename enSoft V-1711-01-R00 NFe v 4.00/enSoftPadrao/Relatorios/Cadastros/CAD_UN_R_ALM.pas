unit CAD_UN_R_ALM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, frxClass, frxDBSet, frxExportXLS, frxExportPDF, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TCAD_FM_R_ALM = class(TPAD_FM_X_REL)
    CAD_PD_R_ALM: TfrxPDFExport;
    CAD_XL_R_ALM: TfrxXLSExport;
    CAD_FR_R_ALM: TfrxReport;
    CAD_DB_R_ALM: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_ALM: TCAD_FM_R_ALM;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_R_ALM;

procedure TCAD_FM_R_ALM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_ALM);
end;

procedure TCAD_FM_R_ALM.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TCAD_FM_R_ALM.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(lbxRelatorios,CAD_FR_R_ALM);
end;
end.
