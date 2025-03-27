unit EST_UN_R_DEZ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ComCtrls, Vcl.ImgList,
  Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, frxClass,
  frxDBSet, frxExportPDF, frxExportXLS, Vcl.Menus, Vcl.Mask, JvExMask,
  JvToolEdit, Data.DB, Datasnap.DBClient, frxChart;

type
  TEST_FM_R_DEZ = class(TPAD_FM_X_REL)
    PageControl1: TPageControl;
    tsEmpresas: TTabSheet;
    EST_FR_R_DEZ: TfrxReport;
    EST_XL_R_DEZ: TfrxXLSExport;
    EST_PD_R_DEZ: TfrxPDFExport;
    EST_DB_R_DEZ: TfrxDBDataset;
    txtDtaInicial: TJvDateEdit;
    txtDtaFinal: TJvDateEdit;
    lblPeriodo: TLabel;
    Label1: TLabel;
    lboxEmpDisp: TListBox;
    lboxEmpSel: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    pmRemoverEmp: TPopupMenu;
    btnRemoverEmpresa: TMenuItem;
    pmSelEmp: TPopupMenu;
    btnSelEmp: TMenuItem;
    EST_CD_R_DEZ: TClientDataSet;
    frxChartObject1: TfrxChartObject;
    procedure btnSelEmpClick(Sender: TObject);
    procedure btnRemoverEmpresaClick(Sender: TObject);
    procedure lboxEmpDispDblClick(Sender: TObject);
    procedure lboxEmpSelDblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function TestarCampos: Boolean;
    var
      xCondEmpresa,xOpcoes:string;
  public
    { Public declarations }
  end;

var
  EST_FM_R_DEZ: TEST_FM_R_DEZ;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes, enFunc;

procedure TEST_FM_R_DEZ.PreencherCondicao;
var
    opcoesEmpresa:string;
    i:integer;
begin
   // Empresas ------------------------------------------------------------------
  xCondEmpresa := '';
  if lboxEmpSel.Count > 0 then
     begin
       for i := 0 to lboxEmpSel.Count - 1 do
          begin
            if xCondEmpresa <> '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa + ',' +''''+trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa +'                             '+lboxEmpSel.Items[i] + #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpSel.Items[i] + #13+#10;
               end;
          end;
     end;

   // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período....................: ' + txtDtaInicial.Text + ' à ' + txtDtaFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa....................: ' + opcoesEmpresa + #13+#10;
end;


procedure TEST_FM_R_DEZ.ExibirRel;
var
  rTipoData, rDtaIni, rDtaFin, rOrdenacao, PathImg: String;
  rIndexRelatorio:integer;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
    begin
     Showmessage('Nenhum relatório foi selecionado.');
     exit;
    end;

   // Período
   rDtaIni := txtDtaInicial.Text;
   rDtaFin := txtDtaFinal.Text;

   PreencherCondicao;

   EST_CD_R_DEZ.Active:= False;
   EST_CD_R_DEZ.Close;
   EST_CD_R_DEZ.Data :=
     EST_CD_R_DEZ.DataRequest(
          VarArrayOf([lbxRelatorios.ItemIndex,rDtaIni, rDtaFin, xCondEmpresa]));

   if not EST_CD_R_DEZ.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Os Dez Maiores Fornecedores' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_DEZ.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_DEZ.Name,xCodLme,xRevLme,nil);
            EST_FR_R_DEZ.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            EST_FR_R_DEZ.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            EST_FR_R_DEZ.Variables['Opcoes'] := QuotedStr(xOpcoes);
            EST_FR_R_DEZ.PrepareReport();
            EST_FR_R_DEZ.ShowReport();
          end;
      end
    else
      begin
        ShowMessage('Nenhum registro encontrado.');
      end;

end;

procedure TEST_FM_R_DEZ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  EST_CD_R_DEZ.Close;
  FreeAndNil(EST_FM_R_DEZ);
end;

procedure TEST_FM_R_DEZ.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;

  // Empresas ------------------------------------------------------------------
  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
  dmGeral.BUS_CD_C_PAR.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_PAR.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PAR.First;

       while not dmGeral.BUS_CD_C_PAR.eof do
          begin
            lboxEmpDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;
end;

function TEST_FM_R_DEZ.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if ((txtDtaInicial.Text = '  /  /    ') or (txtDtaFinal.Text = '  /  /    ')) then
      begin
        mens := mens +  '.O período deve ser preenchido.' + #13;
      end
  else
      begin
        if (txtDtaInicial.Date >  txtDtaFinal.Date) then
            begin
              mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
            end;
      end;

  if lboxEmpSel.Count = 0 then
     begin
       mens := mens +  '.É necessário selecionar pelos menos 1 empresa' + #13;
     end;

 if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end;

end;


procedure TEST_FM_R_DEZ.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TEST_FM_R_DEZ.btnRemoverEmpresaClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxEmpSel.ClearSelection;

  if lboxEmpSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpSel.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpSel.Items.Count - 1 do
           begin
             lboxEmpDisp.Items.Add(lboxEmpSel.Items[i]);
             lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
           end;
       lboxEmpSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_DEZ.btnSelEmpClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxEmpDisp.ClearSelection;

  if lboxEmpDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpDisp.Items.Count - 1 do
           begin
             lboxEmpSel.Items.Add(lboxEmpDisp.Items[i]);
             lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
           end;
       lboxEmpDisp.Items.Clear;
     end;
end;

procedure TEST_FM_R_DEZ.lboxEmpDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpDisp.ItemIndex > - 1 then
     begin
       lboxEmpSel.Items.Add(lboxEmpDisp.Items[lboxEmpDisp.ItemIndex]);
       lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_DEZ.lboxEmpSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpSel.ItemIndex > -1 then
     begin
       lboxEmpDisp.Items.Add(lboxEmpSel.Items[lboxEmpSel.ItemIndex]);
       lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
     end;
end;

end.
