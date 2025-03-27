unit PCP_UN_R_ROT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, frxClass, frxDBSet,
  frxExportXLS, frxExportPDF, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_R_ROT = class(TPAD_FM_X_REL)
    PCP_PD_R_ROT: TfrxPDFExport;
    PCP_XL_R_ROT: TfrxXLSExport;
    PCP_FR_R_ROT: TfrxReport;
    PCP_DB_R_ROT: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure ExibirRel;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_ROT: TPCP_FM_R_ROT;

implementation

{$R *.dfm}

uses uDmGeral, uDmSgq;

procedure TPCP_FM_R_ROT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_ROT);
end;

procedure TPCP_FM_R_ROT.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TPCP_FM_R_ROT.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TPCP_FM_R_ROT.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   dmSgq.PCP_CD_C_ROT.Close;

   dmSgq.PCP_CD_C_ROT.Data :=
   dmSgq.PCP_CD_C_ROT.DataRequest(VarArrayOf([1,'%']));


   if not dmSgq.PCP_CD_C_ROT.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp1\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Rotas' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_ROT.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,PCP_FM_R_ROT.Name,xCodLme,xRevLme,nil);
            PCP_FR_R_ROT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            PCP_FR_R_ROT.PrepareReport();
            PCP_FR_R_ROT.ShowReport();
          end;

      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

end.
