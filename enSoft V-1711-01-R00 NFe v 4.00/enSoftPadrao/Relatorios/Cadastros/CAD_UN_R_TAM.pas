unit CAD_UN_R_TAM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, frxExportPDF, frxClass, frxExportXLS, frxDBSet, JvExExtCtrls,
  JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TCAD_FM_R_TAM = class(TPAD_FM_X_REL)
    CAD_FR_R_TAM: TfrxReport;
    CAD_DB_R_TAM: TfrxDBDataset;
    CAD_XL_R_TAM: TfrxXLSExport;
    CAD_PD_R_TAM: TfrxPDFExport;
    CAD_CD_R_TAM: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_TAM: TCAD_FM_R_TAM;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_R_TAM;

procedure TCAD_FM_R_TAM.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(lbxRelatorios,CAD_FR_R_TAM);
end;
procedure TCAD_FM_R_TAM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_TAM);
end;

procedure TCAD_FM_R_TAM.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

end.
