unit PCP_UN_R_CLE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS, Data.DB, Datasnap.DBClient;

type
  TPCP_FM_R_CLE = class(TPAD_FM_X_REL)
    PCP_FR_R_CLE: TfrxReport;
    PCP_XL_R_CLE: TfrxXLSExport;
    PCP_PD_R_CLE: TfrxPDFExport;
    PCP_DB_R_CLE: TfrxDBDataset;
    PCP_CD_R_CLE: TClientDataSet;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure ExibirRel;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_CLE: TPCP_FM_R_CLE;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes;

procedure TPCP_FM_R_CLE.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TPCP_FM_R_CLE.ExibirRel;
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

      PCP_CD_R_CLE.Active:= False;
      PCP_CD_R_CLE.Close;
      PCP_CD_R_CLE.Data :=
              PCP_CD_R_CLE.DataRequest(
                      VarArrayOf([1,'']));

      if not PCP_CD_R_CLE.IsEmpty then
        begin
          if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Listagem de Classificação de Etiquetas' then
            begin
             if FileExists(PathImg) then
               begin
                 LogoEmpresa := TfrxPictureView(PCP_FR_R_CLE.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
               dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_CLE.Name,xCodLme,xRevLme,nil);
               PCP_FR_R_CLE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
               PCP_FR_R_CLE.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
               PCP_FR_R_CLE.Variables['Opcoes'] := QuotedStr('');
               PCP_FR_R_CLE.PrepareReport();
               PCP_FR_R_CLE.ShowReport();
            end;
        end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;
    end;
end;


procedure TPCP_FM_R_CLE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_CLE);
end;

end.
