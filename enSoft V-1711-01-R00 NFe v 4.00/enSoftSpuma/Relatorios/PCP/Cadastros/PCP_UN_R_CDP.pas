unit PCP_UN_R_CDP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.StdCtrls, Vcl.ImgList, enFunc,
  Vcl.ExtCtrls, frxClass, frxDBSet, frxExportXLS, frxExportPDF, Vcl.ComCtrls,
  Vcl.Menus, JvExExtCtrls, JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TPCP_FM_R_CDP = class(TPAD_FM_X_REL)
    lblOrdenacao: TLabel;
    cbbOrdenacao: TComboBox;
    PageControl1: TPageControl;
    tsItens: TTabSheet;
    lboxItens: TListBox;
    Label1: TLabel;
    PCP_PD_R_CDP: TfrxPDFExport;
    PCP_XL_R_CDP: TfrxXLSExport;
    PCP_DB_R_CDP: TfrxDBDataset;
    pmRemoverItens: TPopupMenu;
    btnRemoverItens: TMenuItem;
    PCP_FR_R_CDP: TfrxReport;
    PCP_CD_R_CDP: TClientDataSet;
    procedure lboxItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnRemoverItensClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    var
     xOpcoes,xCondItem,xOrd:string;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_CDP: TPCP_FM_R_CDP;

implementation

{$R *.dfm}

uses PSQ_UN_X_ITE, uDmGeral;

procedure TPCP_FM_R_CDP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_CDP);
end;

procedure TPCP_FM_R_CDP.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TPCP_FM_R_CDP.lboxItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
        PSQ_FM_X_ITE.ShowModal;
        if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxItens,6,StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0)) then
                begin
                  lboxItens.Items.Add(StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_ITE.Free;
     end;
end;


procedure TPCP_FM_R_CDP.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TPCP_FM_R_CDP.btnRemoverItensClick(Sender: TObject);
begin
  inherited;
   if lboxItens.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxItens.DeleteSelected;
end;

procedure TPCP_FM_R_CDP.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   PreencherCondicao;


   PCP_CD_R_CDP.Close;

   PCP_CD_R_CDP.Data :=
   PCP_CD_R_CDP.DataRequest(
                     VarArrayOf([xCondItem,xOrd]));


   if not PCP_CD_R_CDP.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp1\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Controle Dimensional - Produto Acabado' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_CDP.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,PCP_FM_R_CDP.Name,xCodLme,xRevLme,nil);
            PCP_FR_R_CDP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            PCP_FR_R_CDP.Variables['Opcoes'] := QuotedStr(xOpcoes);
            PCP_FR_R_CDP.PrepareReport();
            PCP_FR_R_CDP.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

procedure TPCP_FM_R_CDP.PreencherCondicao;
var
  i: integer;
begin

  xCondItem := '';
  if lboxItens.Count > 0 then
     begin
       for i := 0 to lboxItens.Count - 1 do
          begin
            if xCondItem <> '' then
               begin
                 xCondItem :=
                 xCondItem + ',' +''''+trim(copy(lboxItens.Items[i],1,6))+'''';
               end;
            if xCondItem = '' then
               begin
                 xCondItem :=
                 xCondItem  +''''+trim(copy(lboxItens.Items[i],1,6))+'''';
               end;
          end;
     end;

     xOrd := trim(copy(cbbOrdenacao.Text,1,1));

     xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
     xOpcoes := xOpcoes + 'Ordenação...........: ' + cbbOrdenacao.Text + #13+#10;
end;

end.
