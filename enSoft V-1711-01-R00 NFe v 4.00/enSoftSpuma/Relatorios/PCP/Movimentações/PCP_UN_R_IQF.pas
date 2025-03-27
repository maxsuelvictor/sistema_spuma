unit PCP_UN_R_IQF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,enFunc,
  Vcl.ExtCtrls, frxClass, frxDBSet, frxExportXLS, frxExportPDF, Vcl.ComCtrls,
  Vcl.Menus, JvExExtCtrls, JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TPCP_FM_R_IQF = class(TPAD_FM_X_REL)
    PCP_PD_R_IQF: TfrxPDFExport;
    PCP_XL_R_IQF: TfrxXLSExport;
    PCP_DB_R_IQF: TfrxDBDataset;
    lblAno: TLabel;
    txtAno: TEdit;
    pcFiltro: TPageControl;
    tsFornecedor: TTabSheet;
    lboxFornecedor: TListBox;
    Label1: TLabel;
    PCP_FR_R_IQF: TfrxReport;
    pmExcluirFornecedor: TPopupMenu;
    btnRemoverFornecedor: TMenuItem;
    PCP_CD_R_IQF: TClientDataSet;
    PCP_CD_R_IQFid_fornecedor: TIntegerField;
    PCP_CD_R_IQFano_iqf: TIntegerField;
    PCP_CD_R_IQFid_empresa: TIntegerField;
    PCP_CD_R_IQFid_responsavel: TIntegerField;
    PCP_CD_R_IQFdta_semestre1: TDateField;
    PCP_CD_R_IQFqtde_nf_semestre1: TIntegerField;
    PCP_CD_R_IQFqtde_demeritos_semestre1: TIntegerField;
    PCP_CD_R_IQFqtde_plano_acao_semestre1: TIntegerField;
    PCP_CD_R_IQFiqf_semestre1: TFloatField;
    PCP_CD_R_IQFstatus_semestre1: TIntegerField;
    PCP_CD_R_IQFdta_semestre2: TDateField;
    PCP_CD_R_IQFqtde_nf_semestre2: TIntegerField;
    PCP_CD_R_IQFqtde_demeritos_semestre2: TIntegerField;
    PCP_CD_R_IQFqtde_plano_acao_semestre2: TIntegerField;
    PCP_CD_R_IQFiqf_semestre2: TFloatField;
    PCP_CD_R_IQFstatus_semestre2: TIntegerField;
    PCP_CD_R_IQFra_dta_prevista: TDateField;
    PCP_CD_R_IQFra_dta_realizada: TDateField;
    PCP_CD_R_IQFra_metodo1_media_anual: TFloatField;
    PCP_CD_R_IQFra_metodo1_status: TWideStringField;
    PCP_CD_R_IQFra_metodo2_especifico: TWideStringField;
    PCP_CD_R_IQFra_metodo2_status: TWideStringField;
    PCP_CD_R_IQFra_observacao: TWideStringField;
    PCP_CD_R_IQFobservacao_geral: TWideStringField;
    PCP_CD_R_IQFcod_lme: TWideStringField;
    PCP_CD_R_IQFrev_lme: TWideStringField;
    PCP_CD_R_IQFint_nomeres: TWideStringField;
    PCP_CD_R_IQFint_nomefor: TWideStringField;
    PCP_CD_R_IQFint_status_semestre1: TWideMemoField;
    PCP_CD_R_IQFint_status_semestre2: TWideMemoField;
    PCP_CD_R_IQFint_ra_metodo1status: TWideMemoField;
    PCP_CD_R_IQFint_cnpjcpf: TWideMemoField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lboxFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnRemoverFornecedorClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function TestarCampos: Boolean;
    var
     xOpcoes,xCondAno,xCondFor:string;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_IQF: TPCP_FM_R_IQF;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FOR;

procedure TPCP_FM_R_IQF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_IQF);
end;

procedure TPCP_FM_R_IQF.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  txtAno.SetFocus;
end;

procedure TPCP_FM_R_IQF.lboxFornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFornecedor,3,StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,3,0)) then
                begin
                  lboxFornecedor.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,3,0)+' - '+
                  PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TPCP_FM_R_IQF.PreencherCondicao;
var
i: integer;
begin
  xCondAno := txtAno.Text;

  xCondFor := '';
  if lboxFornecedor.Count > 0 then
     begin
       for i := 0 to lboxFornecedor.Count - 1 do
          begin
            if xCondFor <> '' then
               begin
                 xCondFor :=
                 xCondFor + ',' +''''+trim(copy(lboxFornecedor.Items[i],1,3))+'''';
               end;
            if xCondFor = '' then
               begin
                 xCondFor :=
                 xCondFor +''''+trim(copy(lboxFornecedor.Items[i],1,3))+'''';
               end;
          end;
   end;

   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Ano...........: ' + xCondAno + #13+#10;
end;

procedure TPCP_FM_R_IQF.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TPCP_FM_R_IQF.btnRemoverFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxFornecedor.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFornecedor.DeleteSelected;
end;

procedure TPCP_FM_R_IQF.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   PreencherCondicao;

   PCP_CD_R_IQF.Close;

   PCP_CD_R_IQF.Data :=
   PCP_CD_R_IQF.DataRequest(
                     VarArrayOf([xCondAno,xCondFor]));


   if not PCP_CD_R_IQF.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp1\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] =
                  'Relatório de Índice de Qualidade de Entrega do Fornecedor' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_IQF.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_IQF.Name,xCodLme,xRevLme,nil);
            PCP_FR_R_IQF.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            PCP_FR_R_IQF.Variables['Opcoes'] := QuotedStr(xOpcoes);
            PCP_FR_R_IQF.PrepareReport();
            PCP_FR_R_IQF.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

function TPCP_FM_R_IQF.TestarCampos: Boolean;
begin
  result := True;
  if (trim(txtAno.text) = '') then
    begin
      ShowMessage('Ano deve ser preenchido.');
      result := False;
    end;
end;


end.
