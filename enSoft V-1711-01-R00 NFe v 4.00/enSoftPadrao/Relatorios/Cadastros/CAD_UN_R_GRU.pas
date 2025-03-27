unit CAD_UN_R_GRU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Datasnap.DBClient, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TCAD_FM_R_GRU = class(TPAD_FM_X_REL)
    CAD_XL_R_GRU: TfrxXLSExport;
    CAD_PD_R_GRU: TfrxPDFExport;
    CAD_FR_R_GRU: TfrxReport;
    CAD_DB_R_GRU: TfrxDBDataset;
    CAD_CD_R_GRU: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_GRU: TCAD_FM_R_GRU;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_R_GRU;

procedure TCAD_FM_R_GRU.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(lbxRelatorios,CAD_FR_R_GRU);
end;
procedure TCAD_FM_R_GRU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_GRU);
end;

procedure TCAD_FM_R_GRU.FormShow(Sender: TObject);
begin
  inherited;
   lbxRelatorios.ItemIndex := 0;
end;

end.
