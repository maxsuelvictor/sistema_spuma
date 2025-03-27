unit CAD_UN_R_TIF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, frxClass, frxDBSet, frxExportXLS, frxExportPDF, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TCAD_FM_R_TIF = class(TPAD_FM_X_REL)
    lblNatureza: TLabel;
    cboxNatureza: TComboBox;
    CAD_PD_R_TIF: TfrxPDFExport;
    CAD_XL_R_TIF: TfrxXLSExport;
    CAD_FR_R_TIF: TfrxReport;
    CAD_DB_R_TIF: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_TIF: TCAD_FM_R_TIF;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_R_TIF;

procedure TCAD_FM_R_TIF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_TIF);
end;

procedure TCAD_FM_R_TIF.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TCAD_FM_R_TIF.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(lbxRelatorios,cboxNatureza,CAD_FR_R_TIF);
end;
end.
