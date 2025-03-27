unit CAD_UN_R_CID;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, frxExportPDF, frxClass,
  frxExportXLS, frxDBSet, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TCAD_FM_R_CID = class(TPAD_FM_X_REL)
    CAD_DB_R_CID: TfrxDBDataset;
    CAD_FR_R_CID: TfrxReport;
    CAD_XL_R_CID: TfrxXLSExport;
    CAD_PD_R_CID: TfrxPDFExport;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);        private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_CID: TCAD_FM_R_CID;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_R_CID;

procedure TCAD_FM_R_CID.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_CID);
end;

procedure TCAD_FM_R_CID.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;


procedure TCAD_FM_R_CID.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(lbxRelatorios,CAD_FR_R_CID);
end;
end.
