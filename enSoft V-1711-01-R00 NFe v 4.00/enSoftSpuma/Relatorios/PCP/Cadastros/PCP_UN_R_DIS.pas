unit PCP_UN_R_DIS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, frxClass, frxDBSet, frxExportXLS, frxExportPDF;

type
  TPCP_FM_R_DIS = class(TPAD_FM_X_REL)
    PCP_PD_R_DIS: TfrxPDFExport;
    PCP_XL_R_DIS: TfrxXLSExport;
    PCP_FR_R_DIS: TfrxReport;
    PCP_DB_R_DIS: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_DIS: TPCP_FM_R_DIS;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPCP_FM_R_DIS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_DIS);
end;

procedure TPCP_FM_R_DIS.FormShow(Sender: TObject);
begin
  inherited;
   lbxRelatorios.ItemIndex := 0;
end;

procedure TPCP_FM_R_DIS.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TPCP_FM_R_DIS.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');


   dmGeral.PCP_CD_C_DIS.Close;
   dmGeral.PCP_CD_C_DIS.Data :=
   dmGeral.PCP_CD_C_DIS.DataRequest(
                     VarArrayOf([1,'%']));


   if not dmGeral.PCP_CD_C_DIS.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp1\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Disposição' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_DIS.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            PCP_FR_R_DIS.PrepareReport();
            PCP_FR_R_DIS.ShowReport();
          end;

      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

end.
