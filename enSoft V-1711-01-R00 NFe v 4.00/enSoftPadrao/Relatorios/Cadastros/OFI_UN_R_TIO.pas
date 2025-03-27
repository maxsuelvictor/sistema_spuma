unit OFI_UN_R_TIO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS, Data.DB, Datasnap.DBClient, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TOFI_FM_R_TIO = class(TPAD_FM_X_REL)
    OFI_FR_R_TIO: TfrxReport;
    OFI_XL_R_TIO: TfrxXLSExport;
    OFI_PD_R_TIO: TfrxPDFExport;
    OFI_DB_R_TIO: TfrxDBDataset;
    OFI_CD_R_TIO: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OFI_FM_R_TIO: TOFI_FM_R_TIO;

implementation

{$R *.dfm}

uses uDmGeral, OFI_RN_R_TIO;

procedure TOFI_FM_R_TIO.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel(lbxRelatorios,OFI_FR_R_TIO);
end;
procedure TOFI_FM_R_TIO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(OFI_FM_R_TIO);
end;

procedure TOFI_FM_R_TIO.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;
end.
