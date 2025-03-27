unit CAD_UN_R_RAM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, frxExportPDF, frxClass, frxExportXLS, frxDBSet, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TCAD_FM_R_RAM = class(TPAD_FM_X_REL)
    CAD_DB_R_RAM: TfrxDBDataset;
    CAD_FR_R_RAM: TfrxReport;
    CAD_XL_R_RAM: TfrxXLSExport;
    CAD_PD_R_RAM: TfrxPDFExport;
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
  CAD_FM_R_RAM: TCAD_FM_R_RAM;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes;

procedure TCAD_FM_R_RAM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_RAM);
end;

procedure TCAD_FM_R_RAM.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TCAD_FM_R_RAM.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TCAD_FM_R_RAM.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   dmGeral.CAD_CD_C_RAM.Close;
   dmGeral.CAD_CD_C_RAM.Data := dmGeral.CAD_CD_C_RAM.DataRequest(VarArrayOf([1,'%']));;

   if not dmGeral.CAD_CD_C_RAM.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Ramo de Atividade' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_RAM.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_RAM.Name,xCodLme,xRevLme,nil);
            CAD_FR_R_RAM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            CAD_FR_R_RAM.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            CAD_FR_R_RAM.PrepareReport();
            CAD_FR_R_RAM.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

end.
