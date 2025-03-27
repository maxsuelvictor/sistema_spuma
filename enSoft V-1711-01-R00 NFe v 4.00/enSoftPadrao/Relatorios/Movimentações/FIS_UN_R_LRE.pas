unit FIS_UN_R_LRE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, frxExportPDF, frxClass,
  frxExportXLS, frxDBSet, Data.DB, Datasnap.DBClient, Vcl.Menus, Vcl.ComCtrls,
  Vcl.Mask, JvExMask, JvToolEdit;

type
  TFIS_FM_R_LRE = class(TPAD_FM_X_REL)
    Label1: TLabel;
    Label2: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    FIS_CD_R_LRE: TClientDataSet;
    FIS_DB_R_LRE: TfrxDBDataset;
    FIS_XL_R_LRE: TfrxXLSExport;
    FIS_PD_R_LRE: TfrxPDFExport;
    FIS_FR_R_LRE: TfrxReport;
    FIS_CD_R_LREdta_entrada: TDateField;
    FIS_CD_R_LREesp: TWideStringField;
    FIS_CD_R_LREserie: TWideStringField;
    FIS_CD_R_LREnumero: TIntegerField;
    FIS_CD_R_LREdta_emissao: TDateField;
    FIS_CD_R_LREid_emitente: TIntegerField;
    FIS_CD_R_LREestado: TWideStringField;
    FIS_CD_R_LREid_cfo: TWideStringField;
    FIS_CD_R_LREvlr_contabil: TFMTBCDField;
    FIS_CD_R_LREicm_n_base: TFMTBCDField;
    FIS_CD_R_LREimposto_creditado: TFMTBCDField;
    FIS_CD_R_LREobservacao: TWideMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;

    var
      xOpcoes, xCondEmpresa: string;
  public
    { Public declarations }
  end;

var
  FIS_FM_R_LRE: TFIS_FM_R_LRE;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes, enFunc;

procedure TFIS_FM_R_LRE.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TFIS_FM_R_LRE.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFIS_FM_R_LRE.ExibirRel;
var
  rDtaIni, rDtaFin, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

  // Período
  rDtaIni := deInicial.Text;
  rDtaFin := deFinal.Text;

  PreencherCondicao;

  FIS_CD_R_LRE.Close;
  FIS_CD_R_LRE.Data :=
    FIS_CD_R_LRE.DataRequest(
    VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin]));

  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

  if not FIS_CD_R_LRE.IsEmpty then
    begin
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(FIS_FR_R_LRE.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;

      dmGeral.BusCodigoRevListMestre(true,false,FIS_FR_R_LRE.Name,xCodLme,xRevLme,nil);
      FIS_FR_R_LRE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
      FIS_FR_R_LRE.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
      FIS_FR_R_LRE.Variables['Opcoes'] := QuotedStr(xOpcoes);
      FIS_FR_R_LRE.PrepareReport();
      FIS_FR_R_LRE.ShowReport();
    end
  else
    begin
      ShowMessage('Nenhum registro foi encontrado.');
    end;
end;


procedure TFIS_FM_R_LRE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIS_FM_R_LRE);
end;

procedure TFIS_FM_R_LRE.FormShow(Sender: TObject);
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
            lboxEmpresas.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
              ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;
end;

procedure TFIS_FM_R_LRE.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFIS_FM_R_LRE.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
   if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFIS_FM_R_LRE.menuItemEmpresasClick(Sender: TObject);
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

procedure TFIS_FM_R_LRE.PreencherCondicao;
var
  i: integer;
  opcoesEmpresa:string;
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
                 opcoesEmpresa +'                    '+lboxEmpresaSelecionada.Items[i] + #13+#10;
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
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;

end;

function TFIS_FM_R_LRE.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
    begin
      mens := mens +  '.O período deve ser preenchido.' + #13;
    end
  else
    begin
      if (deInicial.Date >  deFinal.Date) then
        begin
          mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
        end;
    end;

  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end;
end;

end.
