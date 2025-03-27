unit PCP_UN_R_CRG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ComCtrls, Vcl.ImgList, enFunc,
  Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, frxDBSet, frxExportXLS, frxExportPDF,
  Vcl.Menus, JvExExtCtrls, JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TPCP_FM_R_CRG = class(TPAD_FM_X_REL)
    PageControl1: TPageControl;
    tsSetor: TTabSheet;
    lboxSetorDisp: TListBox;
    lboxSetorSel: TListBox;
    lblSetorDisp: TLabel;
    lblSetorSel: TLabel;
    PCP_PD_R_CRG: TfrxPDFExport;
    PCP_XL_R_CRG: TfrxXLSExport;
    PCP_FR_R_CRG_GER: TfrxReport;
    PCP_DB_R_CRG: TfrxDBDataset;
    cbbTipo: TComboBox;
    lblTipo: TLabel;
    lblOrdenacao: TLabel;
    cbbOrdenacao: TComboBox;
    pmSelecionarTodosSetor: TPopupMenu;
    btnSelecionarTodosSetor: TMenuItem;
    PCP_FR_R_CRG_SET: TfrxReport;
    PCP_CD_R_CRG: TClientDataSet;
    procedure btnSelecionarTodosSetorClick(Sender: TObject);
    procedure lboxSetorDispDblClick(Sender: TObject);
    procedure lboxSetorSelDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
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
  PCP_FM_R_CRG: TPCP_FM_R_CRG;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TPCP_FM_R_CRG.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TPCP_FM_R_CRG.btnSelecionarTodosSetorClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxSetorDisp.ClearSelection;

  if lboxSetorDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSetorDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxSetorDisp.Items.Count - 1 do
           begin
             lboxSetorSel.Items.Add(lboxSetorDisp.Items[i]);
             lboxSetorDisp.Items.Delete(lboxSetorDisp.ItemIndex);
           end;
       lboxSetorDisp.Items.Clear;
     end;

end;

procedure TPCP_FM_R_CRG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_CRG);
end;

procedure TPCP_FM_R_CRG.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  dmGeral.BUS_PR_X_CT1;
  dmGeral.BUS_CD_X_CT1.Open;

  if not dmGeral.BUS_CD_X_CT1.IsEmpty then
    begin
      dmGeral.BUS_CD_X_CT1.First;
        while not dmGeral.BUS_CD_X_CT1.eof do
           begin

             cbbTipo.AddItem(dmgeral.BUS_CD_X_CT1.FieldByName('CODIGO').AsString+' - '+dmgeral.BUS_CD_X_CT1.FieldByName('DESCRICAO').AsString,nil);
             dmGeral.BUS_CD_X_CT1.Next;
            end;
      cbbTipo.AddItem('Todos',nil);
      cbbTipo.ItemIndex := 3;
    end;
    dmGeral.BUS_CD_X_CT1.Close;

    dmGeral.BUS_CD_C_SET.Close;
    dmGeral.BUS_CD_C_SET.Data := dmGeral.BUS_CD_C_SET.DataRequest(VarArrayOf([1, '%']));

    if not dmGeral.BUS_CD_C_SET.IsEmpty then
      begin
        dmGeral.BUS_CD_C_SET.First;
        while not dmGeral.BUS_CD_C_SET.eof do
          begin
            lboxSetorDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_SET.FieldByName('ID_SETOR').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_SET.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_SET.Next;
          end;
        end;
    dmGeral.BUS_CD_C_SET.Close;
end;

procedure TPCP_FM_R_CRG.lboxSetorDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxSetorDisp.ItemIndex > -1 then
     begin
       lboxSetorSel.Items.Add(lboxSetorDisp.Items[lboxSetorDisp.ItemIndex]);
       lboxSetorDisp.Items.Delete(lboxSetorDisp.ItemIndex);
     end;
end;

procedure TPCP_FM_R_CRG.lboxSetorSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxSetorSel.ItemIndex > -1 then
     begin
       lboxSetorDisp.Items.Add(lboxSetorSel.Items[lboxSetorSel.ItemIndex]);
       lboxSetorSel.Items.Delete(lboxSetorSel.ItemIndex);
     end;
end;

procedure TPCP_FM_R_CRG.PreencherCondicao;
var
 i:integer;
begin
  xCondTipo := '';
  if cbbTipo.Text <> 'Todos' then
    begin
      xCondTipo := copy(cbbTipo.text,1,1);
    end;

  xCondSetor := '';
   if lboxSetorSel.Count > 0 then
     begin
       for i := 0 to lboxSetorSel.Count - 1 do
          begin
            if xCondSetor <> '' then
               begin
                 xCondSetor :=
                 xCondSetor + ',' +''''+copy(lboxSetorSel.Items[i],1,3)+'''';
               end;
            if xCondSetor = '' then
               begin
                 xCondSetor :=
                 xCondSetor +''''+copy(lboxSetorSel.Items[i],1,3)+'''';
               end;
          end;
      end;

   xOrd := copy(cbbOrdenacao.Text,1,1);

   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Tipo...............: ' + cbbTipo.Text + #13+#10;
   xOpcoes := xOpcoes + 'Ordenação..........: ' + cbbOrdenacao.Text + #13+#10;
end;

procedure TPCP_FM_R_CRG.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
    if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   PreencherCondicao;

   PCP_CD_R_CRG.Close;

   PCP_CD_R_CRG.Data :=
   PCP_CD_R_CRG.DataRequest(
                     VarArrayOf([xCondTipo,xCondSetor,lbxRelatorios.ItemIndex,xOrd]));


   if not PCP_CD_R_CRG.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp1\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Cargos - Geral' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_CRG_GER.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,PCP_FM_R_CRG.Name,xCodLme,xRevLme,nil);
            PCP_FR_R_CRG_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            PCP_FR_R_CRG_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
            PCP_FR_R_CRG_GER.PrepareReport();
            PCP_FR_R_CRG_GER.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Cargos - por Setores' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_CRG_SET.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,PCP_FM_R_CRG.Name,xCodLme,xRevLme,nil);
            PCP_FR_R_CRG_SET.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            PCP_FR_R_CRG_SET.Variables['Opcoes'] := QuotedStr(xOpcoes);
            PCP_FR_R_CRG_SET.PrepareReport();
            PCP_FR_R_CRG_SET.ShowReport();
          end;

      end
   else
      ShowMessage('Nenhum registro foi encontrado.');

end;

end.
