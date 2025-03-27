unit PCP_UN_R_CUE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS, Data.DB, Datasnap.DBClient;

type
  TPCP_FM_R_CUE = class(TPAD_FM_X_REL)
    PCP_FR_R_CUE: TfrxReport;
    PCP_XL_R_CUE: TfrxXLSExport;
    PCP_PD_R_CUE: TfrxPDFExport;
    PCP_DB_R_CUE: TfrxDBDataset;
    PCP_CD_R_CUE: TClientDataSet;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure ExibirRel;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_CUE: TPCP_FM_R_CUE;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes;

procedure TPCP_FM_R_CUE.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TPCP_FM_R_CUE.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
    begin
      Showmessage('Nenhum relatório foi selecionado.');
    end
  else
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

      PCP_CD_R_CUE.Active:= False;
      PCP_CD_R_CUE.Close;
      PCP_CD_R_CUE.Data :=
              PCP_CD_R_CUE.DataRequest(
                      VarArrayOf([1,'']));

      if not PCP_CD_R_CUE.IsEmpty then
        begin
          if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Listagem de Uso de Etiquetas' then
            begin
             if FileExists(PathImg) then
               begin
                 LogoEmpresa := TfrxPictureView(PCP_FR_R_CUE.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
               dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_CUE.Name,xCodLme,xRevLme,nil);
               PCP_FR_R_CUE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
               PCP_FR_R_CUE.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
               PCP_FR_R_CUE.Variables['Opcoes'] := QuotedStr('');
               PCP_FR_R_CUE.PrepareReport();
               PCP_FR_R_CUE.ShowReport();
            end;
        end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;
    end;
end;

procedure TPCP_FM_R_CUE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_CUE);
end;

end.
