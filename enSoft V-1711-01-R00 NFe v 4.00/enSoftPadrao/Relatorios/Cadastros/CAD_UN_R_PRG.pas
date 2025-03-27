unit CAD_UN_R_PRG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, frxExportXLS, frxClass, frxDBSet, frxExportPDF, Vcl.ComCtrls, enFunc,
  Vcl.Menus, JvExExtCtrls, JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TCAD_FM_R_PRG = class(TPAD_FM_X_REL)
    cboxTipoPrograma: TComboBox;
    lblTipoPrograma: TLabel;
    pcFiltros: TPageControl;
    tsModulos: TTabSheet;
    lboxModulos: TListBox;
    lboxModulosSel: TListBox;
    CAD_PD_R_PRG: TfrxPDFExport;
    CAD_FR_R_PRG: TfrxReport;
    CAD_DB_R_PRG: TfrxDBDataset;
    CAD_XL_R_PRG: TfrxXLSExport;
    pmSelTodosMod: TPopupMenu;
    MenuItem1: TMenuItem;
    lblModulosDisponiveis: TLabel;
    lblMódulosSelecionados: TLabel;
    CAD_CD_R_PRG: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure lboxModulosDblClick(Sender: TObject);
    procedure lboxModulosSelDblClick(Sender: TObject);
    procedure CAD_FR_R_PRGBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    var
      xOpcoes, xCondMod, xCondTipo:String;
  public
    { Public declarations }
  end;

var
  CAD_FM_R_PRG: TCAD_FM_R_PRG;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TCAD_FM_R_PRG.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TCAD_FM_R_PRG.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin


  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   xCondTipo  := '';
   if cboxTipoPrograma.Text <> 'Todos' then
     begin
        xCondTipo := copy(cboxTipoPrograma.Text,1,1);
     end;

   PreencherCondicao;
   CAD_CD_R_PRG.Close;
   CAD_CD_R_PRG.Data :=
   CAD_CD_R_PRG.DataRequest(
                   VarArrayOf([xCondMod,xCondTipo]));

   if not CAD_CD_R_PRG.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Programas do enSoft' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(CAD_FR_R_PRG.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_PRG.Name,xCodLme,xRevLme,nil);
            CAD_FR_R_PRG.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            CAD_FR_R_PRG.Variables['Opcoes'] := QuotedStr(xOpcoes);
            CAD_FR_R_PRG.PrepareReport();
            CAD_FR_R_PRG.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');

end;


procedure TCAD_FM_R_PRG.PreencherCondicao;
var
  i: integer;
begin

   xCondMod := '';
  if lboxModulos.Count > 0 then
     begin
       xCondMod := '';
       for i := 0 to lboxModulosSel.Count - 1 do
          begin
            if xCondMod <> '' then
               begin
                 xCondMod :=
                 xCondMod + ',' +''''+ trim(copy(lboxModulosSel.Items[i],1,3))+'''';
               end;
            if xCondMod = '' then
               begin
                 xCondMod :=
                 xCondMod +''''+ trim(copy(lboxModulosSel.Items[i],1,3))+'''';
               end;
          end;
     end;



   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Tipo de programa..........: ' + cboxTipoPrograma.Text + #13+#10;


end;


procedure TCAD_FM_R_PRG.CAD_FR_R_PRGBeforePrint(Sender: TfrxReportComponent);
var
  xFormRel: String;
begin
  inherited;
   xFormRel := CAD_CD_R_PRG.FieldByName('nome_programa').AsString;

   CAD_FR_R_PRG.Variables['ft_form_relatorio'] := QuotedStr(xFormRel);
end;

procedure TCAD_FM_R_PRG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_PRG);
end;

procedure TCAD_FM_R_PRG.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;

  dmGeral.BUS_PR_X_PR1;

  dmGeral.BUS_CD_X_PR1.First;
       while not dmGeral.BUS_CD_X_PR1.eof do
          begin
            lboxModulos.Items.Add(StrZero(dmGeral.BUS_CD_X_PR1.FieldByName('CODIGO').AsFloat,2,0) +
                                    ' - ' + dmGeral.BUS_CD_X_PR1.FieldByName('PREFIXO').AsString);
            dmGeral.BUS_CD_X_PR1.Next;
           end;
 dmGeral.BUS_CD_X_PR1.Close;
end;

procedure TCAD_FM_R_PRG.lboxModulosDblClick(Sender: TObject);
begin
  inherited;
  if lboxModulos.ItemIndex > - 1 then
     begin
       lboxModulosSel.Items.Add(lboxModulos.Items[lboxModulos.ItemIndex]);
       lboxModulos.Items.Delete(lboxModulos.ItemIndex);
     end;
end;

procedure TCAD_FM_R_PRG.lboxModulosSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxModulosSel.ItemIndex > -1 then
     begin
       lboxModulos.Items.Add(lboxModulosSel.Items[lboxModulosSel.ItemIndex]);
       lboxModulosSel.Items.Delete(lboxModulosSel.ItemIndex);
     end;
end;

procedure TCAD_FM_R_PRG.MenuItem1Click(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxModulos.ClearSelection;

  if lboxModulos.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxModulos.Items.Count > 0 then
     begin
       for i := 0 to lboxModulos.Items.Count - 1 do
           begin
             lboxModulosSel.Items.Add(lboxModulos.Items[i]);
             lboxModulos.Items.Delete(lboxModulos.ItemIndex);
           end;
       lboxModulos.Items.Clear;
     end;
end;

end.
