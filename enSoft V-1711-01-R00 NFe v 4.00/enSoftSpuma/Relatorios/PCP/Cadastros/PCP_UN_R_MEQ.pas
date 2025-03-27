unit PCP_UN_R_MEQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.StdCtrls, Vcl.ImgList, enFunc,
  Vcl.ExtCtrls, Vcl.ComCtrls, frxClass, frxDBSet, frxExportXLS, frxExportPDF,
  Vcl.Menus, JvExExtCtrls, JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TPCP_FM_R_MEQ = class(TPAD_FM_X_REL)
    cbbTipo: TComboBox;
    lblTipo: TLabel;
    pcFiltro: TPageControl;
    tsSetor: TTabSheet;
    lboxSetor: TListBox;
    Label1: TLabel;
    lblOrdenacao: TLabel;
    cbbOrdenacao: TComboBox;
    PCP_PD_R_MEQ: TfrxPDFExport;
    PCP_XL_R_MEQ: TfrxXLSExport;
    PCP_FR_R_MEQ_GER: TfrxReport;
    PCP_DB_R_MEQ: TfrxDBDataset;
    pmRemoverSetor: TPopupMenu;
    btnRemoverSetor: TMenuItem;
    PCP_FR_R_MEQ_SET: TfrxReport;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    ListBox1: TListBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label4: TLabel;
    ListBox2: TListBox;
    ComboBox2: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    PCP_CD_R_MEQ: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure lboxSetorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnRemoverSetorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    var
     xOpcoes,xCondTipo,xCondSetor,xOrd:string;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_MEQ: TPCP_FM_R_MEQ;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_SET;

procedure TPCP_FM_R_MEQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_MEQ);
end;

procedure TPCP_FM_R_MEQ.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TPCP_FM_R_MEQ.lboxSetorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_SET := TPSQ_FM_X_SET.Create(Self);
        PSQ_FM_X_SET.ShowModal;
        if not PSQ_FM_X_SET.BUS_CD_C_SET.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxSetor,2,StrZero(PSQ_FM_X_SET.BUS_CD_C_SET.FieldByName('ID_SETOR').AsFloat,2,0)) then
                begin
                  lboxSetor.Items.Add(StrZero(PSQ_FM_X_SET.BUS_CD_C_SET.FieldByName('ID_SETOR').AsFloat,2,0) +
                                             ' - ' + PSQ_FM_X_SET.BUS_CD_C_SET.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_SET.Free;
     end;
end;

procedure TPCP_FM_R_MEQ.PreencherCondicao;
var
  i:integer;
begin

  xCondTipo := '';
  if cbbTipo.Text <> 'Todos' then
   begin
     xCondTipo := copy(cbbTipo.Text,1,1);
   end;

  xOrd := copy(cbbOrdenacao.Text,1,1);

   xCondSetor := '';
  if lboxSetor.Count > 0 then
     begin
       for i := 0 to lboxSetor.Count - 1 do
          begin
            if xCondSetor <> '' then
               begin
                 xCondSetor :=
                 xCondSetor + ',' +''''+trim(copy(lboxSetor.Items[i],1,2))+'''';
               end;
            if xCondSetor = '' then
               begin
                 xCondSetor :=
                 xCondSetor +''''+trim(copy(lboxSetor.Items[i],1,2))+'''';
               end;
          end;
   end;

   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Tipo...............: ' + cbbTipo.Text + #13+#10;
   xOpcoes := xOpcoes + 'Ordenação..........: ' + cbbOrdenacao.Text + #13+#10;
end;

procedure TPCP_FM_R_MEQ.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TPCP_FM_R_MEQ.btnRemoverSetorClick(Sender: TObject);
begin
  inherited;
  if lboxSetor.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxSetor.DeleteSelected;
end;

procedure TPCP_FM_R_MEQ.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');
   PreencherCondicao;

   PCP_CD_R_MEQ.Close;

   PCP_CD_R_MEQ.Data :=
   PCP_CD_R_MEQ.DataRequest(
                     VarArrayOf([xCondTipo,xCondSetor,lbxRelatorios.ItemIndex,xOrd]));


   if not PCP_CD_R_MEQ.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp1\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Máquinas/Equipamentos/Outros - Geral' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_MEQ_GER.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,PCP_FM_R_MEQ.Name,xCodLme,xRevLme,nil);
            PCP_FR_R_MEQ_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            PCP_FR_R_MEQ_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
            PCP_FR_R_MEQ_GER.PrepareReport();
            PCP_FR_R_MEQ_GER.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Máquinas/Equipamentos/Outros - por Setor' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_MEQ_SET.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,PCP_FM_R_MEQ.Name,xCodLme,xRevLme,nil);
            PCP_FR_R_MEQ_SET.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            PCP_FR_R_MEQ_SET.Variables['Opcoes'] := QuotedStr(xOpcoes);
            PCP_FR_R_MEQ_SET.PrepareReport();
            PCP_FR_R_MEQ_SET.ShowReport();
          end;

      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

end.
