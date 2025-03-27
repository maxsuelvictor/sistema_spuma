unit CAD_UN_R_SET;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.StdCtrls, Vcl.ImgList,
  Vcl.ExtCtrls, frxClass, frxDBSet, frxExportXLS, frxExportPDF, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TCAD_FM_R_SET = class(TPAD_FM_X_REL)
    ckboxExibirDefSet: TCheckBox;
    CAD_PD_R_SET: TfrxPDFExport;
    CAD_XL_R_SET: TfrxXLSExport;
    CAD_FR_R_SET: TfrxReport;
    CAD_DB_R_SET: TfrxDBDataset;
    CAD_DB_R_SET_TDS: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_R_SET: TCAD_FM_R_SET;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_R_SET;

procedure TCAD_FM_R_SET.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_SET);
end;

procedure TCAD_FM_R_SET.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TCAD_FM_R_SET.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(lbxRelatorios,ckboxExibirDefSet,CAD_FR_R_SET);
end;
end.
