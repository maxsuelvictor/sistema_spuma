unit CTC_UN_R_COM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.ExtCtrls, Vcl.ImgList, JvExExtCtrls, JvExtComponent,
  JvPanel, frxExportXLS, frxClass, frxExportPDF, frxDBSet, Data.DB, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Datasnap.DBClient;

type
  TCTC_FM_R_COM = class(TPAD_FM_X_REL)
    rgTipo: TRadioGroup;
    txtObra: TJvComboEdit;
    txtOrcamento: TEdit;
    CTC_DP_R_COM: TfrxDBDataset;
    CTC_PD_R_COM: TfrxPDFExport;
    CTC_XL_R_COM: TfrxXLSExport;
    CTC_DP_R_COM_ITE: TfrxDBDataset;
    CTC_FR_R_COM: TfrxReport;
    CTC_CD_R_COM: TClientDataSet;
    CTC_CD_R_COM_ITE: TClientDataSet;
    CTC_CD_R_COMid_orc: TIntegerField;
    CTC_CD_R_COMsubgrupo: TWideStringField;
    CTC_CD_R_COMcod_prpoprio: TWideStringField;
    CTC_CD_R_COMdescricao: TWideStringField;
    CTC_CD_R_COMint_codcliente: TIntegerField;
    CTC_CD_R_COMint_obrdescricao: TWideStringField;
    CTC_CD_R_COMint_nomecli: TWideStringField;
    CTC_CD_R_COMclasse: TWideStringField;
    CTC_CD_R_COMvlr_mo: TFMTBCDField;
    CTC_CD_R_COMvlr_mat: TFMTBCDField;
    CTC_CD_R_COMper_ls: TFloatField;
    CTC_CD_R_COMvlr_ls: TFMTBCDField;
    CTC_CD_R_COMper_bdi: TFloatField;
    CTC_CD_R_COMvlr_bdi: TFMTBCDField;
    CTC_CD_R_COMper_adm: TFloatField;
    CTC_CD_R_COMvlr_adm: TFMTBCDField;
    CTC_CD_R_COMtotal_taxa: TFMTBCDField;
    CTC_CD_R_COMvlr_unitario: TFMTBCDField;
    CTC_CD_R_COMqtde: TFloatField;
    CTC_CD_R_COMvlr_total: TFMTBCDField;
    CTC_CD_R_COMgrupo: TWideMemoField;
    CTC_CD_R_COMCTC_SQ_R_COM_ITE: TDataSetField;
    CTC_CD_R_COM_ITEid_orc: TIntegerField;
    CTC_CD_R_COM_ITEgrupo: TWideStringField;
    CTC_CD_R_COM_ITEid_item: TWideStringField;
    CTC_CD_R_COM_ITEdescricao: TWideStringField;
    CTC_CD_R_COM_ITEclasse: TWideMemoField;
    CTC_CD_R_COM_ITEunidade: TWideStringField;
    CTC_CD_R_COM_ITEcoeficiente: TFloatField;
    CTC_CD_R_COM_ITEvlr_unitario: TFMTBCDField;
    CTC_CD_R_COM_ITEvlr_total: TFMTBCDField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgTipoClick(Sender: TObject);
    procedure txtObraButtonClick(Sender: TObject);
    procedure txtOrcamentoKeyPress(Sender: TObject; var Key: Char);
    procedure txtObraKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_R_COM: TCTC_FM_R_COM;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_OBR, enConstantes;

procedure TCTC_FM_R_COM.btnImprimirClick(Sender: TObject);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

  if rgTipo.ItemIndex = 0 then
    begin
      CTC_CD_R_COM.Close;
      CTC_CD_R_COM.Data :=
      CTC_CD_R_COM.DataRequest(
           VarArrayOf([0, txtObra.Text]));
    end
  else
    begin
      CTC_CD_R_COM.Close;
      CTC_CD_R_COM.Data :=
      CTC_CD_R_COM.DataRequest(
           VarArrayOf([1, txtOrcamento.Text]));
    end;

   if not CTC_CD_R_COM.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Composição de Orçamento' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(CTC_FR_R_COM.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,CTC_FR_R_COM.Name,xCodLme,xRevLme,nil);
            CTC_FR_R_COM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            CTC_FR_R_COM.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            CTC_FR_R_COM.PrepareReport();
            CTC_FR_R_COM.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');

end;

procedure TCTC_FM_R_COM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CTC_FM_R_COM);
end;

procedure TCTC_FM_R_COM.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  txtObra.Text :='';
  txtObra.SetFocus;
end;

procedure TCTC_FM_R_COM.rgTipoClick(Sender: TObject);
begin
  inherited;
  if rgTipo.ItemIndex = 0 then
    begin
      txtObra.Enabled := True;
      txtOrcamento.Enabled := False;
      txtObra.Text :='';
      txtObra.SetFocus;
    end
  else
    begin
      txtObra.Enabled := False;
      txtOrcamento.Enabled := True;
      txtOrcamento.Text :='';
      txtOrcamento.SetFocus;
    end;
end;

procedure TCTC_FM_R_COM.txtObraButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_OBR := TPSQ_FM_X_OBR.Create(Self);
   PSQ_FM_X_OBR.ShowModal;
      if not PSQ_FM_X_OBR.BUS_CD_C_OBR.IsEmpty then
         begin
           txtObra.Text := PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('ID_OBRA').AsString;
         end;
   PSQ_FM_X_OBR.Free;
end;

procedure TCTC_FM_R_COM.txtObraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
  key:=#0;
end;

procedure TCTC_FM_R_COM.txtOrcamentoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
  key:=#0;
end;

end.
