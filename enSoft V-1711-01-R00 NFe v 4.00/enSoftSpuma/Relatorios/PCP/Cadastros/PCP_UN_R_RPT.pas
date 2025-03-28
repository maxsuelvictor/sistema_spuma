unit PCP_UN_R_RPT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, frxClass, frxDBSet,
  frxExportXLS, frxExportPDF, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_R_RPT = class(TPAD_FM_X_REL)
    PCP_PD_R_RPT: TfrxPDFExport;
    PCP_XL_R_RPT: TfrxXLSExport;
    PCP_FR_R_RPT: TfrxReport;
    PCP_DB_R_RPT: TfrxDBDataset;
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
  PCP_FM_R_RPT: TPCP_FM_R_RPT;

implementation

{$R *.dfm}

uses uDmGeral, uDmSgq;

procedure TPCP_FM_R_RPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_RPT);
end;

procedure TPCP_FM_R_RPT.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TPCP_FM_R_RPT.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TPCP_FM_R_RPT.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   dmSgq.PCP_CD_C_RPT.Close;

   dmSgq.PCP_CD_C_RPT.Data :=
   dmSgq.PCP_CD_C_RPT.DataRequest(VarArrayOf([1,'%']));


   if not dmSgq.PCP_CD_C_RPT.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp1\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Recipientes' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_RPT.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,PCP_FM_R_RPT.Name,xCodLme,xRevLme,nil);
            PCP_FR_R_RPT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            PCP_FR_R_RPT.PrepareReport();
            PCP_FR_R_RPT.ShowReport();
          end;

      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;



end.
