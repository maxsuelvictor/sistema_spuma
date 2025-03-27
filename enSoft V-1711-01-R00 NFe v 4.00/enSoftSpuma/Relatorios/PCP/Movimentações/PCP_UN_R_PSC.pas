unit PCP_UN_R_PSC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit, frxClass, frxExportPDF, frxDBSet,
  Data.DB, Datasnap.DBClient, JvExExtCtrls, JvExtComponent, JvPanel,
  Vcl.ComCtrls, Vcl.Menus;

type
  TPCP_FM_R_PSC = class(TPAD_FM_X_REL)
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    PCP_FR_M_PSC1: TfrxReport;
    PCP_DB_R_PSC: TfrxDBDataset;
    PCP_PD_C_PSC: TfrxPDFExport;
    PCP_FR_M_PSC2: TfrxReport;
    cbbOrdenacao: TComboBox;
    Label4: TLabel;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    PCP_CD_R_PSC: TClientDataSet;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function TestarCampos: Boolean;
    var
      xOpcoes,xCondEmpresa: string;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_PSC: TPCP_FM_R_PSC;

implementation

{$R *.dfm}

uses uDmGeral, enFunc;

procedure TPCP_FM_R_PSC.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TPCP_FM_R_PSC.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TPCP_FM_R_PSC.ExibirRel;
var
  rDtaIni, rDtaFin,rOrdenacao, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   // Ordenação
   rOrdenacao := copy(cbbOrdenacao.Text,1,1);

   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   PreencherCondicao;

   PCP_CD_R_PSC.Close;
   PCP_CD_R_PSC.Data :=
           PCP_CD_R_PSC.DataRequest(
           VarArrayOf([rDtaIni, rDtaFin, xCondEmpresa,rOrdenacao]));

   if not PCP_CD_R_PSC.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp1\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Pesquisa de satisfação ao consumidor final - modelo 1' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_M_PSC1.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_M_PSC1.Name,xCodLme,xRevLme,nil);
            PCP_FR_M_PSC1.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            PCP_FR_M_PSC1.Variables['Opcoes'] := QuotedStr(xOpcoes);
            PCP_FR_M_PSC1.PrepareReport();
            PCP_FR_M_PSC1.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Pesquisa de satisfação ao consumidor final - modelo 2' then
           begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_M_PSC2.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_M_PSC2.Name,xCodLme,xRevLme,nil);
            PCP_FR_M_PSC2.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            PCP_FR_M_PSC2.Variables['Opcoes'] := QuotedStr(xOpcoes);
            PCP_FR_M_PSC2.PrepareReport();
            PCP_FR_M_PSC2.ShowReport();
           end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

procedure TPCP_FM_R_PSC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_PSC);
end;

procedure TPCP_FM_R_PSC.FormShow(Sender: TObject);
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

procedure TPCP_FM_R_PSC.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TPCP_FM_R_PSC.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TPCP_FM_R_PSC.menuItemEmpresasClick(Sender: TObject);
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

procedure TPCP_FM_R_PSC.PreencherCondicao;
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
   xOpcoes := xOpcoes + 'Ordenação.........: ' + cbbOrdenacao.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
end;

function TPCP_FM_R_PSC.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
         begin
           mens := mens +  '.O período deve ser preenchido.' + #13;
         end;
  if (deInicial.Date >  deFinal.Date) then
     begin
       mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
     end;
  if lboxEmpresaSelecionada.Count = 0 then
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

end.
