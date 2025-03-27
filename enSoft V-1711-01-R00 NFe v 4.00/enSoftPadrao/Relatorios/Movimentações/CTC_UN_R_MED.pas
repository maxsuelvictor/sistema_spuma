unit CTC_UN_R_MED;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, frxExportXLS, frxClass, frxDBSet, frxExportPDF, vcl.Wwdbedit,
  Data.DB, Datasnap.DBClient;

type
  TCTC_FM_R_MED = class(TPAD_FM_X_REL)
    rgTipo: TRadioGroup;
    txtObra: TJvComboEdit;
    deInicial: TJvDateEdit;
    Label1: TLabel;
    deFinal: TJvDateEdit;
    CTC_FR_R_MED: TfrxReport;
    CTC_PD_R_MED: TfrxPDFExport;
    CTC_DB_R_ORC_MED: TfrxDBDataset;
    CTC_XL_R_MED: TfrxXLSExport;
    txtGrupo: TMaskEdit;
    CTC_CD_R_MED: TClientDataSet;
    CTC_CD_R_MEDid_obra: TIntegerField;
    CTC_CD_R_MEDgrupo: TWideStringField;
    CTC_CD_R_MEDdta_medicao: TDateField;
    CTC_CD_R_MEDid_med: TIntegerField;
    CTC_CD_R_MEDint_nomeobra: TWideStringField;
    CTC_CD_R_MEDint_nomestrutura: TWideStringField;
    CTC_CD_R_MEDint_nomegrupo: TWideStringField;
    CTC_CD_R_MEDnome: TWideStringField;
    CTC_CD_R_MEDqtde: TFloatField;
    CTC_CD_R_MEDint_und: TWideStringField;
    CTC_CD_R_MEDint_codemp: TIntegerField;
    CTC_CD_R_MEDint_nomeemp: TIntegerField;
    procedure rgTipoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure txtObraButtonClick(Sender: TObject);
    procedure txtGrupoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function TestarCampos:Boolean;
    procedure ExibirRel;
  public
    { Public declarations }
  end;

var
  CTC_FM_R_MED: TCTC_FM_R_MED;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes, PSQ_UN_X_OBR;

procedure TCTC_FM_R_MED.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if rgTipo.ItemIndex <> 2 then
    begin
      ExibirRel;
    end;

  if rgTipo.ItemIndex = 2 then
    begin
      if TestarCampos then
        begin
          ExibirRel;
        end;
    end;
end;

procedure TCTC_FM_R_MED.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

  if rgTipo.ItemIndex = 0 then
    begin
      CTC_CD_R_MED.Close;
      CTC_CD_R_MED.Data :=
      CTC_CD_R_MED.DataRequest(
           VarArrayOf([0, txtObra.Text,'',dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text]));
    end
  else
    begin
      if rgTipo.ItemIndex = 1 then
        begin
          CTC_CD_R_MED.Close;
          CTC_CD_R_MED.Data :=
          CTC_CD_R_MED.DataRequest(
               VarArrayOf([1, txtGrupo.Text,'',dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text]));
        end
      else
        begin
          CTC_CD_R_MED.Close;
          CTC_CD_R_MED.Data :=
          CTC_CD_R_MED.DataRequest(
               VarArrayOf([2, deInicial.Text, deFinal.Text,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text]));
        end;
    end;

   if not CTC_CD_R_MED.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Medição' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(CTC_FR_R_MED.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,CTC_FR_R_MED.Name,xCodLme,xRevLme,nil);
            CTC_FR_R_MED.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            CTC_FR_R_MED.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            CTC_FR_R_MED.PrepareReport();
            CTC_FR_R_MED.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

procedure TCTC_FM_R_MED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CTC_FM_R_MED);
end;

procedure TCTC_FM_R_MED.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  txtObra.Text :='';
  txtObra.SetFocus;
end;

procedure TCTC_FM_R_MED.rgTipoClick(Sender: TObject);
begin
  inherited;
  if rgTipo.ItemIndex = 0 then
    begin
      txtObra.Visible := True;
      txtGrupo.Visible := False;
      deInicial.Visible := False;
      label1.Visible := False;
      deFinal.Visible := False;
      txtObra.Text := '';
      txtObra.SetFocus;
    end
  else
    begin
      if rgTipo.ItemIndex = 1 then
        begin
          txtObra.Visible := False;
          deInicial.Visible := False;
          label1.Visible := False;
          deFinal.Visible := False;
          txtGrupo.Visible := True;
          txtGrupo.Text := '';
          txtGrupo.SetFocus;
        end
      else
        begin
          deInicial.Visible := true;
          label1.Visible := true;
          deFinal.Visible := true;
          txtObra.Visible := False;
          txtGrupo.Visible := False;
          deInicial.SetFocus;
        end;
    end;
end;

function TCTC_FM_R_MED.TestarCampos: Boolean;
begin
  result := True;

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
    begin
      ShowMessage('O período deve ser preenchido.');
      result := False;
    end;
end;

procedure TCTC_FM_R_MED.txtGrupoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  not ( Key in ['0'..'9',#8] ) then
    Key := #0
end;

procedure TCTC_FM_R_MED.txtObraButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_OBR := TPSQ_FM_X_OBR.Create(Self);
   PSQ_FM_X_OBR.ShowModal;
      if not PSQ_FM_X_OBR.BUS_CD_C_OBR.IsEmpty then
         begin
           txtobra.Text := PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('ID_OBRA').AsString;
         end;
   PSQ_FM_X_OBR.Free;
end;

end.
