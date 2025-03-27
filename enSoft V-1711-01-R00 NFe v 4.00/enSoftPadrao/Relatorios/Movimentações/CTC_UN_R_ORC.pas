unit CTC_UN_R_ORC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvDBControls, Vcl.ExtCtrls, Vcl.ImgList, JvExExtCtrls,
  JvExtComponent, JvPanel, frxClass, frxDBSet, frxExportXLS, frxExportPDF,
  Data.DB, Datasnap.DBClient;

type
  TCTC_FM_R_ORC = class(TPAD_FM_X_REL)
    rgTipo: TRadioGroup;
    txtObra: TJvComboEdit;
    txtOrcamento: TEdit;
    CTC_DP_R_ORC: TfrxDBDataset;
    CTC_FR_R_ORC: TfrxReport;
    CTC_PD_R_ORC: TfrxPDFExport;
    CTC_XL_R_ORC: TfrxXLSExport;
    CTC_CD_R_ORC: TClientDataSet;
    CTC_CD_R_ORCdescricao: TWideStringField;
    CTC_CD_R_ORCid_orc: TIntegerField;
    CTC_CD_R_ORCdescricao_obra: TWideStringField;
    CTC_CD_R_ORCsubgrupo: TWideStringField;
    CTC_CD_R_ORCcod_prpoprio: TWideStringField;
    CTC_CD_R_ORCclasse: TWideStringField;
    CTC_CD_R_ORCund: TWideStringField;
    CTC_CD_R_ORCqtde: TFloatField;
    CTC_CD_R_ORCvlr_unitario: TFMTBCDField;
    CTC_CD_R_ORCvlr_total: TFMTBCDField;
    CTC_CD_R_ORCgrupo: TWideMemoField;
    CTC_CD_R_ORCid_cliente: TIntegerField;
    CTC_CD_R_ORCint_nomecli: TWideStringField;
    CTC_CD_R_ORCint_codemp: TIntegerField;
    CTC_CD_R_ORCint_nomeemp: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure txtObraButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtOrcamentoKeyPress(Sender: TObject; var Key: Char);
    procedure txtObraKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTC_FM_R_ORC: TCTC_FM_R_ORC;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes, PSQ_UN_X_OBR;

procedure TCTC_FM_R_ORC.btnImprimirClick(Sender: TObject);
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

  if rgTipo.ItemIndex = 0 then
    begin
      CTC_CD_R_ORC.Close;
      CTC_CD_R_ORC.Data :=
      CTC_CD_R_ORC.DataRequest(
           VarArrayOf([0, txtObra.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text]));
    end
  else
    begin
      CTC_CD_R_ORC.Close;
      CTC_CD_R_ORC.Data :=
      CTC_CD_R_ORC.DataRequest(
           VarArrayOf([1, txtOrcamento.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text]));
    end;

   if not CTC_CD_R_ORC.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Orçamento de Obra' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(CTC_FR_R_ORC.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,CTC_FR_R_ORC.Name,xCodLme,xRevLme,nil);
            CTC_FR_R_ORC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            CTC_FR_R_ORC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            CTC_FR_R_ORC.PrepareReport();
            CTC_FR_R_ORC.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

procedure TCTC_FM_R_ORC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CTC_FM_R_ORC);
end;

procedure TCTC_FM_R_ORC.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  txtObra.Text :='';
  txtObra.SetFocus;
end;

procedure TCTC_FM_R_ORC.rgTipoClick(Sender: TObject);
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

procedure TCTC_FM_R_ORC.txtObraButtonClick(Sender: TObject);
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

procedure TCTC_FM_R_ORC.txtObraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
  key:=#0;
end;

procedure TCTC_FM_R_ORC.txtOrcamentoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
  key:=#0;
end;

end.
