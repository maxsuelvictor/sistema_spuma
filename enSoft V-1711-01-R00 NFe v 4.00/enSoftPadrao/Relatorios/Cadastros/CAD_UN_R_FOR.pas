unit CAD_UN_R_FOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Datasnap.DBClient, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TCAD_FM_R_FOR = class(TPAD_FM_X_REL)
    CAD_XL_R_FOR: TfrxXLSExport;
    CAD_PD_R_FOR: TfrxPDFExport;
    CAD_FR_R_FOR: TfrxReport;
    CAD_DB_R_FOR: TfrxDBDataset;
    cboxSituacao: TComboBox;
    lblSituacao: TLabel;
    cboxTransportador: TComboBox;
    lblTransportador: TLabel;
    CAD_CD_R_FOR: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CAD_FR_R_FORBeforePrint(Sender: TfrxReportComponent);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    var
      xOpcoes: String;
  public
    { Public declarations }
  end;

var
  CAD_FM_R_FOR: TCAD_FM_R_FOR;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes;



procedure TCAD_FM_R_FOR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_FOR);
end;

procedure TCAD_FM_R_FOR.FormShow(Sender: TObject);
begin
  inherited;
   lbxRelatorios.ItemIndex := 0;
end;

procedure TCAD_FM_R_FOR.btnImprimirClick(Sender: TObject);
begin
  inherited;
   ExibirRel;
end;

procedure TCAD_FM_R_FOR.CAD_FR_R_FORBeforePrint(Sender: TfrxReportComponent);
var
  xCpfCnpj: String;
begin
  inherited;
  if not (CAD_CD_R_FOR.FieldByName('doc_cpf').AsString = '') then
    begin
      xCpfCnpj := CAD_CD_R_FOR.FieldByName('doc_cpf').AsString;
    end
   else if not (CAD_CD_R_FOR.FieldByName('doc_cnpj').AsString = '') then
    begin
      xCpfCnpj := CAD_CD_R_FOR.FieldByName('doc_cnpj').AsString;
    end;

  CAD_FR_R_FOR.Variables['ft_cpf_cnpj'] := QuotedStr(xCpfCnpj);
end;

procedure TCAD_FM_R_FOR.ExibirRel;
var
  xCondSit,xCondTransp:String;
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   xCondSit := '';
   if cboxSituacao.Text = 'Ativo' then
    begin
      xCondSit := 'True'
    end
   else if cboxSituacao.Text = 'Inativo' then
      begin
        xCondSit := 'False';
      end;


   xCondTransp := '';
   if cboxTransportador.Text = 'Sim' then
      xCondTransp := 'True'
   else if cboxTransportador.Text = 'Não' then
      xCondTransp := 'False';

   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Situação..........: ' + cboxSituacao.Text + #13+#10;
   xOpcoes := xOpcoes + 'Transportador.....: ' + cboxTransportador.Text + #13+#10;

   CAD_CD_R_FOR.Close;
   CAD_CD_R_FOR.Data :=
   CAD_CD_R_FOR.DataRequest(VarArrayOf([xCondSit,xCondTransp]));

   if not CAD_CD_R_FOR.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Fornecedores' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_FOR.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_FOR.Name,xCodLme,xRevLme,nil);
            CAD_FR_R_FOR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            CAD_FR_R_FOR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            CAD_FR_R_FOR.Variables['Opcoes'] := QuotedStr(xOpcoes);
            CAD_FR_R_FOR.PrepareReport();
            CAD_FR_R_FOR.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

end.
