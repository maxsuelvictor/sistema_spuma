unit PCP_UN_R_CDR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.StdCtrls, Vcl.ImgList, enFunc,
  Vcl.ExtCtrls, Vcl.ComCtrls, frxClass, frxDBSet, frxExportXLS, frxExportPDF,
  Vcl.Menus, JvExExtCtrls, JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TPCP_FM_R_CDR = class(TPAD_FM_X_REL)
    lblOrdenacao: TLabel;
    cbbOrdenacao: TComboBox;
    pcFiltro: TPageControl;
    tsGrupo: TTabSheet;
    tsCorGrupo: TTabSheet;
    tsCorCadarco: TTabSheet;
    PCP_PD_R_CDR: TfrxPDFExport;
    PCP_XL_R_CDR: TfrxXLSExport;
    PCP_FR_R_CDR: TfrxReport;
    PCP_DB_R_CDR: TfrxDBDataset;
    lboxGrupo: TListBox;
    lblPesquisaGrupo: TLabel;
    lboxCorGrupoDisp: TListBox;
    lboxCorGrupoSel: TListBox;
    lblCoresGrupoDisponiveis: TLabel;
    lblCoresGrupoSelecionadas: TLabel;
    lboxCorCadarcoDisp: TListBox;
    lboxCorCadarcoSel: TListBox;
    lblCorCadarcoDisp: TLabel;
    lblCorCadarcoSel: TLabel;
    pmSelTodosCorGrupo: TPopupMenu;
    btnSelTodosCorGrupo: TMenuItem;
    pmSelTodosCorCadarco: TPopupMenu;
    btnSelecionarTodasCorCadarco: TMenuItem;
    pmExcluirGrupo: TPopupMenu;
    btnRemoverGrupo: TMenuItem;
    PCP_CD_R_CDR: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelTodosCorGrupoClick(Sender: TObject);
    procedure btnSelecionarTodasCorCadarcoClick(Sender: TObject);
    procedure btnRemoverGrupoClick(Sender: TObject);
    procedure lboxCorGrupoDispDblClick(Sender: TObject);
    procedure lboxCorCadarcoDispDblClick(Sender: TObject);
    procedure lboxCorCadarcoSelDblClick(Sender: TObject);
    procedure lboxCorGrupoSelDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    var
      xOpcoes,xCondGrupo,xCondCorGrupo,xCondCorCadarco,xOrd: string;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_CDR: TPCP_FM_R_CDR;
  xCodLme,xRevLme: String;
implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_GRU;

procedure TPCP_FM_R_CDR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_CDR);
end;

procedure TPCP_FM_R_CDR.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;

  //Cor do grupo----------------------------------------------------------------
   if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) then
      begin
         tsCorGrupo.TabVisible := true;
         dmGeral.BUS_CD_C_COR.Close;
         dmGeral.BUS_CD_C_COR.Data := dmGeral.BUS_CD_C_COR.DataRequest(VarArrayOf([1, '%']));

         if not dmGeral.BUS_CD_C_COR.IsEmpty then
          begin
            dmGeral.BUS_CD_C_COR.First;
            while not dmGeral.BUS_CD_C_COR.eof do
              begin
                lboxCorGrupoDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_COR.FieldByName('ID_COR').AsFloat,2,0) +
                                    ' - ' + dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString);
                dmGeral.BUS_CD_C_COR.Next;
            end;
          end;
          dmGeral.BUS_CD_C_COR.Close;
   end;

    //Cor do cadarco------------------------------------------------------------
   if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) then
      begin
         tsCorCadarco.TabVisible := true;
         dmGeral.BUS_CD_C_COR.Close;
         dmGeral.BUS_CD_C_COR.Data := dmGeral.BUS_CD_C_COR.DataRequest(VarArrayOf([1, '%']));

         if not dmGeral.BUS_CD_C_COR.IsEmpty then
          begin
            dmGeral.BUS_CD_C_COR.First;
            while not dmGeral.BUS_CD_C_COR.eof do
              begin
                lboxCorCadarcoDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_COR.FieldByName('ID_COR').AsFloat,2,0) +
                                    ' - ' + dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString);
                dmGeral.BUS_CD_C_COR.Next;
            end;
          end;
          dmGeral.BUS_CD_C_COR.Close;
   end;

end;

procedure TPCP_FM_R_CDR.lboxCorCadarcoDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxCorCadarcoDisp.ItemIndex > -1 then
     begin
       lboxCorCadarcoSel.Items.Add(lboxCorCadarcoDisp.Items[lboxCorCadarcoDisp.ItemIndex]);
       lboxCorCadarcoDisp.Items.Delete(lboxCorCadarcoDisp.ItemIndex);
     end;
end;

procedure TPCP_FM_R_CDR.lboxCorCadarcoSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxCorCadarcoSel.ItemIndex > -1 then
     begin
       lboxCorCadarcoDisp.Items.Add(lboxCorCadarcoSel.Items[lboxCorCadarcoSel.ItemIndex]);
       lboxCorCadarcoSel.Items.Delete(lboxCorCadarcoSel.ItemIndex);
     end;
end;

procedure TPCP_FM_R_CDR.lboxCorGrupoDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxCorGrupoDisp.ItemIndex > -1 then
     begin
       lboxCorGrupoSel.Items.Add(lboxCorGrupoDisp.Items[lboxCorGrupoDisp.ItemIndex]);
       lboxCorGrupoDisp.Items.Delete(lboxCorGrupoDisp.ItemIndex);
     end;
end;

procedure TPCP_FM_R_CDR.lboxCorGrupoSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxCorGrupoSel.ItemIndex > -1 then
     begin
       lboxCorGrupoDisp.Items.Add(lboxCorGrupoSel.Items[lboxCorGrupoSel.ItemIndex]);
       lboxCorGrupoSel.Items.Delete(lboxCorGrupoSel.ItemIndex);
     end;
end;

procedure TPCP_FM_R_CDR.lboxGrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_GRU := TPSQ_FM_X_GRU.Create(Self);
        PSQ_FM_X_GRU.ShowModal;
        if not PSQ_FM_X_GRU.BUS_CD_C_GRU.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxGrupo,8,PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString) then
                begin
                  lboxGrupo.Items.Add(PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString +
                                             ' - ' + PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_GRU.Free;
     end;
end;

procedure TPCP_FM_R_CDR.btnImprimirClick(Sender: TObject);
begin
  inherited;
  ExibirRel;
end;

procedure TPCP_FM_R_CDR.btnRemoverGrupoClick(Sender: TObject);
begin
  inherited;
   if lboxGrupo.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxGrupo.DeleteSelected;
end;

procedure TPCP_FM_R_CDR.btnSelecionarTodasCorCadarcoClick(Sender: TObject);
var
 i: integer;
begin
  inherited;
  lboxCorCadarcoDisp.ClearSelection;

  if lboxCorCadarcoDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxCorCadarcoDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxCorCadarcoDisp.Items.Count - 1 do
           begin
             lboxCorCadarcoSel.Items.Add(lboxCorCadarcoDisp.Items[i]);
             lboxCorCadarcoDisp.Items.Delete(lboxCorCadarcoDisp.ItemIndex);
           end;
       lboxCorCadarcoDisp.Items.Clear;
     end;

end;

procedure TPCP_FM_R_CDR.btnSelTodosCorGrupoClick(Sender: TObject);
var
 i: integer;
begin
  inherited;
  lboxCorGrupoDisp.ClearSelection;


  if lboxCorGrupoDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxCorGrupoDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxCorGrupoDisp.Items.Count - 1 do
           begin
             lboxCorGrupoSel.Items.Add(lboxCorGrupoDisp.Items[i]);
             lboxCorGrupoDisp.Items.Delete(lboxCorGrupoDisp.ItemIndex);
           end;
       lboxCorGrupoDisp.Items.Clear;
     end;
end;

procedure TPCP_FM_R_CDR.ExibirRel;
var
  PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   PreencherCondicao;

   PCP_CD_R_CDR.Close;

   PCP_CD_R_CDR.Data :=
   PCP_CD_R_CDR.DataRequest(
                     VarArrayOf([xCondGrupo,xCondCorGrupo,xCondCorCadarco,xOrd]));


   if not PCP_CD_R_CDR.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp1\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem de Tabela para uso de cadarço' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_CDR.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,PCP_FM_R_CDR.Name,xCodLme,xRevLme,nil);
            PCP_FR_R_CDR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            PCP_FR_R_CDR.Variables['Opcoes'] := QuotedStr(xOpcoes);
            PCP_FR_R_CDR.PrepareReport();
            PCP_FR_R_CDR.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;


procedure TPCP_FM_R_CDR.PreencherCondicao;
var
i: integer;
begin

  xCondGrupo := '';
  if lboxGrupo.Count > 0 then
     begin
       for i := 0 to lboxGrupo.Count - 1 do
          begin
            if xCondGrupo <> '' then
               begin
                 xCondGrupo :=
                 xCondGrupo + ',' +''''+trim(copy(lboxGrupo.Items[i],1,8))+'''';
               end;
            if xCondGrupo = '' then
               begin
                 xCondGrupo :=
                 xCondGrupo +''''+trim(copy(lboxGrupo.Items[i],1,8))+'''';
               end;
          end;
     end;

  if lboxCorGrupoSel.Count > 0 then
     begin
       for i := 0 to lboxCorGrupoSel.Count - 1 do
          begin
            if xCondCorGrupo <> '' then
               begin
                 xCondCorGrupo :=
                 xCondCorGrupo + ',' +''''+copy(lboxCorGrupoSel.Items[i],1,2)+'''';
               end;
            if xCondCorGrupo = '' then
               begin
                 xCondCorGrupo :=
                 xCondCorGrupo +''''+copy(lboxCorGrupoSel.Items[i],1,2)+'''';
               end;
          end;
     end
     else
      begin
        xCondCorGrupo := '';
      end;

  if lboxCorCadarcoSel.Count > 0 then
     begin
       for i := 0 to lboxCorCadarcoSel.Count - 1 do
          begin
            if xCondCorCadarco <> '' then
               begin
                 xCondCorCadarco :=
                 xCondCorCadarco + ',' +''''+copy(lboxCorCadarcoSel.Items[i],1,2)+'''';
               end;
            if xCondCorCadarco = '' then
               begin
                 xCondCorCadarco :=
                 xCondCorCadarco +''''+copy(lboxCorCadarcoSel.Items[i],1,2)+'''';
               end;
          end;
     end
     else
      begin
        xCondCorCadarco := '';
      end;

   xOrd := trim(copy(cbbOrdenacao.Text,1,1));
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Ordenação...........: ' + cbbOrdenacao.Text + #13+#10;

end;

end.
