unit FIN_UN_R_IND;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS, Data.DB, Datasnap.DBClient, Vcl.ComCtrls,
  Vcl.Menus;

type
  TFIN_FM_R_IND = class(TPAD_FM_X_REL)
    FIN_FR_R_IND: TfrxReport;
    FIN_XL_R_IND: TfrxXLSExport;
    FIN_PD_R_IND: TfrxPDFExport;
    FIN_DB_R_IND: TfrxDBDataset;
    txtAno: TEdit;
    lblAno: TLabel;
    FIN_CD_R_IND: TClientDataSet;
    PageControl1: TPageControl;
    tsEmpresa: TTabSheet;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    pmSelTodasEmp: TPopupMenu;
    pmRemoverTodasEmp: TPopupMenu;
    btnSelTodasEmp: TMenuItem;
    btnRemoverTodasEmp: TMenuItem;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSelTodasEmpClick(Sender: TObject);
    procedure btnRemoverTodasEmpClick(Sender: TObject);
  private
    var
      xOpcoes,xCondEmpresa:string;
    { Private declarations }
    function TestarCampos:Boolean;
    procedure PreencherCondicao;
    procedure ExibirRel;
  public
    { Public declarations }
  end;

var
  FIN_FM_R_IND: TFIN_FM_R_IND;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes, enFunc;


procedure TFIN_FM_R_IND.PreencherCondicao;
var
  opcoesEmpresa:String;
  i:integer;
begin

   // Empresas ------------------------------------------------------------------
  xCondEmpresa := '';
  if lboxEmpresaSelecionada.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Count - 1 do
          begin
            if xCondEmpresa <> '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa + ',' +''''+trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa +'                '+lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
          end;
     end;



   // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Ano...........: ' + txtAno.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresas......: ' + opcoesEmpresa + #13+#10;
end;


function TFIN_FM_R_IND.TestarCampos;
var
  mens,ano:string;
begin
   Result := true;
   mens:='';
   ano := txtAno.Text;
   if ano ='' then
     begin
       mens := 'Ano deve ser preenchido.';
     end
   else
     begin
       if (ano.Length<>4) then
         begin
            mens := 'Ano inválido.';
         end;
     end;
   if (mens <> '') then
     begin
       ShowMessage('Atenção!' + #13 + mens);
       Result := False;
       exit;
     end;

end;

procedure TFIN_FM_R_IND.btnRemoverTodasEmpClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxEmpresaSelecionada.ClearSelection;

  if lboxEmpresaSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresaSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Items.Count - 1 do
           begin
             lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[i]);
             lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
           end;
       lboxEmpresaSelecionada.Items.Clear;
     end;
end;

procedure TFIN_FM_R_IND.btnSelTodasEmpClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxEmpresas.ClearSelection;

  if lboxEmpresas.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresas.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresas.Items.Count - 1 do
           begin
             lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[i]);
             lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
           end;
       lboxEmpresas.Items.Clear;
     end;
end;

procedure TFIN_FM_R_IND.ExibirRel;
var
  rAno, PathImg: String;
  rIndexRelatorio:integer;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     begin
      Showmessage('Nenhum relatório foi selecionado.');
      exit;
     end;
   rAno := txtAno.Text;
   PreencherCondicao;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Inadimplência' then
      begin
         FIN_CD_R_IND.Active:= False;
         FIN_CD_R_IND.Close;
         FIN_CD_R_IND.Data :=
                 FIN_CD_R_IND.DataRequest(VarArrayOf([rAno,xCondEmpresa]));
         if (not FIN_CD_R_IND.IsEmpty) then
            begin
              PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
              if FileExists(PathImg) then
                 begin
                    LogoEmpresa := TfrxPictureView(FIN_FR_R_IND.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                 end;

              dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_IND.Name,xCodLme,xRevLme,nil);
               FIN_FR_R_IND.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
               FIN_FR_R_IND.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
               FIN_FR_R_IND.Variables['Opcoes'] := QuotedStr(xOpcoes);
               FIN_FR_R_IND.PrepareReport();
               FIN_FR_R_IND.ShowReport();
            end
          else
            begin
              ShowMessage('Nenhum registro foi encontrado.');
            end;
      end;
end;

procedure TFIN_FM_R_IND.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_R_IND);
end;

procedure TFIN_FM_R_IND.FormShow(Sender: TObject);
begin
  inherited;
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
            lboxEmpresas.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;
end;

procedure TFIN_FM_R_IND.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
   if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFIN_FM_R_IND.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
   if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_IND.btnImprimirClick(Sender: TObject);
begin
  inherited;
   if TestarCampos then
     begin
        ExibirRel;
     end;
end;

end.
