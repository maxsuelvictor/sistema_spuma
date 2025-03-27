unit CAD_UN_R_CTC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, frxClass, frxDBSet,
  frxExportXLS, frxExportPDF, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TCAD_FM_R_CTC = class(TPAD_FM_X_REL)
    CAD_PD_R_CTC: TfrxPDFExport;
    CAD_XL_R_CTC: TfrxXLSExport;
    CAD_FR_R_CTC: TfrxReport;
    CAD_DB_R_CTC: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_CTC: TCAD_FM_R_CTC;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_R_CTC;

procedure TCAD_FM_R_CTC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_CTC);
end;

procedure TCAD_FM_R_CTC.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TCAD_FM_R_CTC.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(lbxRelatorios,CAD_FR_R_CTC);
end;
end.
