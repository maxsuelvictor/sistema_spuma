unit PCP_UN_R_PRQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, frxClass, frxDBSet, frxExportPDF, frxExportXLS,
  Vcl.Menus, JvExExtCtrls, JvExtComponent, JvPanel, Data.DB, Datasnap.DBClient;

type
  TPCP_FM_R_PRQ = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsItens: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxItens: TListBox;
    tsGrupoEstoque: TTabSheet;
    lblFormaDisponivel: TLabel;
    lblFormaSelecionada: TLabel;
    lboxGruposSelecionados: TListBox;
    lboxGruposDisponiveis: TListBox;
    PCP_FR_R_PRQ: TfrxReport;
    PCP_XL_R_PRQ: TfrxXLSExport;
    PCP_PD_R_PRQ: TfrxPDFExport;
    PCP_DB_R_PRQ: TfrxDBDataset;
    pmSelGrupos: TPopupMenu;
    menuItemGrupos: TMenuItem;
    pmExcluirItens: TPopupMenu;
    btnRemoverRegistroFornecedor: TMenuItem;
    PCP_CD_R_PRQ: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxGruposDisponiveisDblClick(Sender: TObject);
    procedure menuItemGruposClick(Sender: TObject);
    procedure lboxGruposSelecionadosDblClick(Sender: TObject);
    procedure btnRemoverRegistroFornecedorClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure PreencherCondicao;
    var
      xCondItem, xCondGrupo: string;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_PRQ: TPCP_FM_R_PRQ;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_ITE;

procedure TPCP_FM_R_PRQ.btnImprimirClick(Sender: TObject);
var
   PathImg: String;
   LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
      Showmessage('Nenhum relatório foi selecionado.');

   PreencherCondicao;

  PCP_CD_R_PRQ.Active:= False;
  PCP_CD_R_PRQ.Close;
  PCP_CD_R_PRQ.Data :=
           PCP_CD_R_PRQ.DataRequest(VarArrayOf([xCondGrupo, xCondItem]));

   if not PCP_CD_R_PRQ.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Listagem - Plano de Controle para Recebimento e Preservação' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_PRQ.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,PCP_FM_R_PRQ.Name,xCodLme,xRevLme,nil);
            PCP_FR_R_PRQ.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            PCP_FR_R_PRQ.PrepareReport();
            PCP_FR_R_PRQ.ShowReport();
          end;
      end
   else
      begin
         ShowMessage('Nenhum registro foi encontrado.');
      end;
end;

procedure TPCP_FM_R_PRQ.btnRemoverRegistroFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxItens.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxItens.DeleteSelected;
end;

procedure TPCP_FM_R_PRQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_PRQ);
end;

procedure TPCP_FM_R_PRQ.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;

  // Itens ---------------------------------------------------------------------

  // Grupo de Estoque ----------------------------------------------------------
  dmGeral.CAD_CD_C_GRU.Close;
  dmGeral.CAD_CD_C_GRU.Data :=
  dmGeral.CAD_CD_C_GRU.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.CAD_CD_C_GRU.IsEmpty then
     begin
       dmGeral.CAD_CD_C_GRU.First;

       while not dmGeral.CAD_CD_C_GRU.eof do
          begin
            lboxGruposDisponiveis.Items.Add(GeraEspEsq(trim(dmGeral.CAD_CD_C_GRU.FieldByName('ID_GRUPO').AsString),3) +
                                    ' - ' + dmGeral.CAD_CD_C_GRU.FieldByName('DESCRICAO').AsString);
            dmGeral.CAD_CD_C_GRU.Next;
          end;
     end;

 dmGeral.CAD_CD_C_GRU.Close;
end;

procedure TPCP_FM_R_PRQ.lboxGruposDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxGruposDisponiveis.ItemIndex > - 1 then
     begin
       lboxGruposSelecionados.Items.Add(lboxGruposDisponiveis.Items[lboxGruposDisponiveis.ItemIndex]);
       lboxGruposDisponiveis.Items.Delete(lboxGruposDisponiveis.ItemIndex);
     end;
end;

procedure TPCP_FM_R_PRQ.lboxGruposSelecionadosDblClick(Sender: TObject);
begin
  inherited;
  if lboxGruposSelecionados.ItemIndex > -1 then
     begin
       lboxGruposDisponiveis.Items.Add(lboxGruposSelecionados.Items[lboxGruposSelecionados.ItemIndex]);
       lboxGruposSelecionados.Items.Delete(lboxGruposSelecionados.ItemIndex);
     end;
end;

procedure TPCP_FM_R_PRQ.lboxItensKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_R_PRQ.menuItemGruposClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxGruposDisponiveis.ClearSelection;

  if lboxGruposDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxGruposDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxGruposDisponiveis.Items.Count - 1 do
           begin
             lboxGruposSelecionados.Items.Add(lboxGruposDisponiveis.Items[i]);
             lboxGruposDisponiveis.Items.Delete(lboxGruposDisponiveis.ItemIndex);
           end;
       lboxGruposDisponiveis.Items.Clear;
     end;
end;

procedure TPCP_FM_R_PRQ.PreencherCondicao;
var
  i: integer;
  Cond: String;
begin
  // Itens ---------------------------------------------------------------------
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
                 xCondItem +''''+trim(copy(lboxItens.Items[i],1,6))+'''';
               end;
          end;
     end;

  // Grupo de Estoque ----------------------------------------------------------
  xCondGrupo := '';
  if lboxGruposSelecionados.Count > 0 then
     begin
       for i := 0 to lboxGruposSelecionados.Count - 1 do
          begin
            if xCondGrupo <> '' then
               begin
                 xCondGrupo :=
                 xCondGrupo + ',' +''''+trim(copy(lboxGruposSelecionados.Items[i],1,8))+'''';
               end;
            if xCondGrupo = '' then
               begin
                 xCondGrupo :=
                 xCondGrupo +''''+ trim(copy(lboxGruposSelecionados.Items[i],1,8))+'''';
               end;
          end;
     end;
end;

end.
