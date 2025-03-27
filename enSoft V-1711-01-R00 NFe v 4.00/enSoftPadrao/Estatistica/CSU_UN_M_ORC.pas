unit CSU_UN_M_ORC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics,System.IniFiles,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Data.DB, vcl.wwdatsrc,
  Vcl.StdCtrls, cxButtons, Vcl.ComCtrls, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  frxClass, frxDBSet, frxExportPDF, frxExportXLS;

type
  TCSU_FM_M_ORC = class(TForm)
    pnlTop: TPanel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    dgPlanos: TwwDBGrid;
    dso: TwwDataSource;
    lblTitulo: TLabel;
    pmSelEmp: TPopupMenu;
    btnSelTodasEmp: TMenuItem;
    pmExcluirEmp: TPopupMenu;
    btnRemoverEmp: TMenuItem;
    pmSelPlano: TPopupMenu;
    btnSelTodosPlanos: TMenuItem;
    pmExcluirPlano: TPopupMenu;
    btnExcluirPlano: TMenuItem;
    btnImprimir: TcxButton;
    btnSair: TcxButton;
    CSU_FR_M_ORC: TfrxReport;
    CSU_XL_M_ORC: TfrxXLSExport;
    CSU_PD_M_ORC: TfrxPDFExport;
    CSU_DB_M_ORC: TfrxDBDataset;
    gbFiltro: TGroupBox;
    PageControl1: TPageControl;
    tsEmpresa: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    lboxEmpDisp: TListBox;
    lboxEmpSel: TListBox;
    tsPlanoContas: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    lboxPlanoDisp: TListBox;
    lboxPlanoSel: TListBox;
    txtAno: TEdit;
    lblAno: TLabel;
    btnPesquisar: TcxButton;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpDispDblClick(Sender: TObject);
    procedure lboxEmpSelDblClick(Sender: TObject);
    procedure lboxPlanoDispDblClick(Sender: TObject);
    procedure lboxPlanoSelDblClick(Sender: TObject);
    procedure btnSelTodasEmpClick(Sender: TObject);
    procedure btnRemoverEmpClick(Sender: TObject);
    procedure btnSelTodosPlanosClick(Sender: TObject);
    procedure btnExcluirPlanoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure carregaCores;
    procedure PreencherCondicao;
    var
      xCorSistema,xCondEmpresa,xCondPlanoContas,xOpcoes:string;
  public
    { Public declarations }
  end;

var
  CSU_FM_M_ORC: TCSU_FM_M_ORC;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, enConstantes;


procedure TCSU_FM_M_ORC.PreencherCondicao;
var
  i: integer;
  opcoesEmpresa,opcoesPlanoContas:string;
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
                 opcoesEmpresa +'                    '+lboxEmpSel.Items[i] + #13+#10;
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

  // Planos de Contas ----------------------------------------------------------
  xCondPlanoContas := '';
  if lboxPlanoSel.Count > 0 then
     begin
       for i := 0 to lboxPlanoSel.Count - 1 do
          begin
            if xCondPlanoContas <> '' then
               begin
                 xCondPlanoContas :=
                 xCondPlanoContas + ',' +''''+trim(copy(lboxPlanoSel.Items[i],1,9))+'''';
                 opcoesPlanoContas :=
                 opcoesPlanoContas +'                    '+lboxPlanoSel.Items[i] + #13+#10;
               end;
            if xCondPlanoContas = '' then
               begin
                 xCondPlanoContas :=
                 xCondPlanoContas +''''+trim(copy(lboxPlanoSel.Items[i],1,9))+'''';
                 opcoesPlanoContas :=
                 opcoesPlanoContas +lboxPlanoSel.Items[i] + #13+#10;
               end;
          end;
     end;

    // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Ano...............: ' + txtAno.Text + #13+#10;
   xOpcoes := xOpcoes + 'Filial............: ' + opcoesEmpresa + #13+#10;
   xOpcoes := xOpcoes + 'Plano de Contas...: ' + opcoesPlanoContas + #13+#10;
end;


procedure TCSU_FM_M_ORC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;



procedure TCSU_FM_M_ORC.FormCreate(Sender: TObject);
begin
  carregaCores;
end;

procedure TCSU_FM_M_ORC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(27) then
     begin
       Key := #0;
       Close;
     end;
  if (Key = chr(13)) then
     begin
       Perform(wm_NextDlgCtl,0,0);
       Key := #0;
     end;

  if (key= char(9)) then
     key := #0;
end;

procedure TCSU_FM_M_ORC.btnExcluirPlanoClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxPlanoSel.ClearSelection;

  if lboxPlanoSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPlanoSel.Items.Count > 0 then
     begin
       for i := 0 to lboxPlanoSel.Items.Count - 1 do
           begin
             lboxPlanoDisp.Items.Add(lboxPlanoSel.Items[i]);
             lboxPlanoSel.Items.Delete(lboxPlanoSel.ItemIndex);
           end;
       lboxPlanoSel.Items.Clear;
     end;
end;

procedure TCSU_FM_M_ORC.btnImprimirClick(Sender: TObject);
var
  PathImg:string;
  LogoEmpresa: TfrxPictureView;
begin
   if not dmGeral.BUS_CD_M_CSU_ORC_PLC.IsEmpty then
      begin
         PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
         if FileExists(PathImg) then
             begin
                LogoEmpresa := TfrxPictureView(CSU_FR_M_ORC.FindObject('imgEmpresa1'));
                if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
             end;

          dmGeral.BusCodigoRevListMestre(true,false,CSU_FR_M_ORC.Name,xCodLme,xRevLme,nil);
          CSU_FR_M_ORC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          CSU_FR_M_ORC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          CSU_FR_M_ORC.Variables['Opcoes'] := QuotedStr('');
          CSU_FR_M_ORC.PrepareReport();
          CSU_FR_M_ORC.ShowReport();
        end
    else
      begin
        ShowMessage('Não há registro de controle de orçamento para ser impresso.');
      end;
end;

procedure TCSU_FM_M_ORC.btnPesquisarClick(Sender: TObject);
begin
  if (txtAno.Text = '') then
     begin
       ShowMessage('O ano deve ser preenchido.');
       exit;
     end;
  PreencherCondicao;

  if ((xCondEmpresa = '') or (xCondPlanoContas = '')) then
    begin
       ShowMessage('Deve-se selecionar pelo menos uma empresa e um plano de contas.');
       exit;
    end;

  dmGeral.BUS_CD_M_CSU_ORC_PLC.Close;
  dmGeral.BUS_CD_M_CSU_ORC_PLC.Data :=
  dmGeral.BUS_CD_M_CSU_ORC_PLC.DataRequest(
                VarArrayOf([xCondEmpresa,txtAno.Text,xCondPlanoContas]));

end;

procedure TCSU_FM_M_ORC.btnRemoverEmpClick(Sender: TObject);
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

procedure TCSU_FM_M_ORC.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TCSU_FM_M_ORC.btnSelTodasEmpClick(Sender: TObject);
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

procedure TCSU_FM_M_ORC.btnSelTodosPlanosClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxPlanoDisp.ClearSelection;

  if lboxPlanoDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPlanoDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxPlanoDisp.Items.Count - 1 do
           begin
             lboxPlanoSel.Items.Add(lboxPlanoDisp.Items[i]);
             lboxPlanoDisp.Items.Delete(lboxPlanoDisp.ItemIndex);
           end;
       lboxPlanoDisp.Items.Clear;
     end;
end;

procedure TCSU_FM_M_ORC.carregaCores;
var
  Rede:TInifile;
  codCor:TColor;
begin
  codCor := $00333333;
  If not FileExists(ExtractFilePath(Application.ExeName)+'Cores.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
       Rede.WriteString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');
     end;

  Rede        := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
  xCorSistema := Rede.ReadString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');

   if xCorSistema = 'GRAFITE' then
     begin
       codCor :=  $00333333;
     end;
   if xCorSistema = 'AZUL' then
     begin
       codCor :=  $00844D08;
     end;
   if xCorSistema = 'VERDE' then
     begin
       codCor :=  $00006305;
     end;
    pnlTop.Color := codCor;
end;

procedure TCSU_FM_M_ORC.FormResize(Sender: TObject);
begin
    pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
    pnlDados.left := (pnlPRincipal.Width div 2) - (pnlDados.width div 2);
end;

procedure TCSU_FM_M_ORC.FormShow(Sender: TObject);
begin
  dmGeral.BUS_CD_M_CSU_ORC_PLC.Close;
  dmGeral.BUS_CD_M_CSU_ORC_PLC.Data :=
  dmGeral.BUS_CD_M_CSU_ORC_PLC.DataRequest(
               VarArrayOf(['']));


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

  dmGeral.BUS_CD_C_PCT.Close;
  dmGeral.BUS_CD_C_PCT.Data :=
  dmGeral.BUS_CD_C_PCT.DataRequest(
          VarArrayOf([90, '1']));

 if not dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PCT.First;

       while not dmGeral.BUS_CD_C_PCT.eof do
          begin
            lboxPlanoDisp.Items.Add(dmGeral.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_PCT.Next;
          end;
     end;

  dmGeral.BUS_CD_C_PCT.Close;
end;

procedure TCSU_FM_M_ORC.lboxEmpDispDblClick(Sender: TObject);
begin
  if lboxEmpDisp.ItemIndex > - 1 then
     begin
       lboxEmpSel.Items.Add(lboxEmpDisp.Items[lboxEmpDisp.ItemIndex]);
       lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
     end;
end;

procedure TCSU_FM_M_ORC.lboxEmpSelDblClick(Sender: TObject);
begin
   if lboxEmpSel.ItemIndex > -1 then
     begin
       lboxEmpDisp.Items.Add(lboxEmpSel.Items[lboxEmpSel.ItemIndex]);
       lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
     end;
end;

procedure TCSU_FM_M_ORC.lboxPlanoDispDblClick(Sender: TObject);
begin
  if lboxPlanoDisp.ItemIndex > - 1 then
     begin
       lboxPlanoSel.Items.Add(lboxPlanoDisp.Items[lboxPlanoDisp.ItemIndex]);
       lboxPlanoDisp.Items.Delete(lboxPlanoDisp.ItemIndex);
     end;
end;

procedure TCSU_FM_M_ORC.lboxPlanoSelDblClick(Sender: TObject);
begin
   if lboxPlanoSel.ItemIndex > -1 then
     begin
       lboxPlanoDisp.Items.Add(lboxPlanoSel.Items[lboxPlanoSel.ItemIndex]);
       lboxPlanoSel.Items.Delete(lboxPlanoSel.ItemIndex);
     end;
end;

end.


