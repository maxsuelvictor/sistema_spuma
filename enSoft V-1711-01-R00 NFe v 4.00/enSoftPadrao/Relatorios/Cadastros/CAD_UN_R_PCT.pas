unit CAD_UN_R_PCT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Datasnap.DBClient, frxClass, frxDBSet, frxExportXLS,
  frxExportPDF, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TCAD_FM_R_PCT = class(TPAD_FM_X_REL)
    CAD_FR_R_PCT: TfrxReport;
    CAD_PD_R_PCT: TfrxPDFExport;
    CAD_XL_R_PCT: TfrxXLSExport;
    CAD_DB_R_PCT: TfrxDBDataset;
    CAD_CD_R_PCT: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_PCT: TCAD_FM_R_PCT;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_R_PCT;

procedure TCAD_FM_R_PCT.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(lbxRelatorios,CAD_FR_R_PCT);
end;
procedure TCAD_FM_R_PCT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_PCT);
end;

procedure TCAD_FM_R_PCT.FormShow(Sender: TObject);
begin
  inherited;
   lbxRelatorios.ItemIndex := 0;
end;

end.
