unit CAD_UN_R_PEC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, frxExportPDF, frxClass, frxExportXLS, frxDBSet, JvExExtCtrls,
  JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TCAD_FM_R_PEC = class(TPAD_FM_X_REL)
    CAD_DB_R_PEC: TfrxDBDataset;
    CAD_FR_R_PEC: TfrxReport;
    CAD_XL_R_PEC: TfrxXLSExport;
    CAD_PD_R_PEC: TfrxPDFExport;
    CAD_CD_R_PEC: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_PEC: TCAD_FM_R_PEC;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_R_PEC;

procedure TCAD_FM_R_PEC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_PEC);
end;

procedure TCAD_FM_R_PEC.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TCAD_FM_R_PEC.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(CAD_CD_R_PEC,lbxRelatorios,CAD_FR_R_PEC);
end;
end.
