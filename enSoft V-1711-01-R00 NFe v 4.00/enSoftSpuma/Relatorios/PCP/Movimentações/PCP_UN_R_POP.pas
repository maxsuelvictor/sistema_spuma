unit PCP_UN_R_POP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.ComCtrls, Data.DB, Datasnap.DBClient, frxClass, frxDBSet,
  Vcl.Menus;

type
  TPCP_FM_R_POP = class(TPAD_FM_X_REL)
    PageControl1: TPageControl;
    tsEmpresa: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    deInicial: TJvDateEdit;
    Label2: TLabel;
    deFinal: TJvDateEdit;
    tsItens: TTabSheet;
    Label8: TLabel;
    lboxItens: TListBox;
    Label1: TLabel;
    tsCor: TTabSheet;
    lblCoresDisp: TLabel;
    lblCoresSel: TLabel;
    lboxCorSel: TListBox;
    lboxCorDisp: TListBox;
    lblCidade: TLabel;
    txtCodOpr: TEdit;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsGrupoItem: TTabSheet;
    lboxGruposDisponiveis: TListBox;
    lboxGruposSelecionados: TListBox;
    lblGruposDisponiveis: TLabel;
    lblGruposSelecionados: TLabel;
    PCP_CD_R_POP: TClientDataSet;
    lblTipoItem: TLabel;
    cbbSituacaoOP: TComboBox;
    PCP_FR_R_POP_DET: TfrxReport;
    PCP_DB_R_POP: TfrxDBDataset;
    PCP_CD_R_POPint_selecao: TBooleanField;
    PCP_CD_R_POPid_opr: TIntegerField;
    PCP_CD_R_POPnum_lote: TWideStringField;
    PCP_CD_R_POPdta_emissao: TDateField;
    PCP_CD_R_POPid_opr_1: TIntegerField;
    PCP_CD_R_POPid_opr_opp: TIntegerField;
    PCP_CD_R_POPid_item: TIntegerField;
    PCP_CD_R_POPid_cor: TIntegerField;
    PCP_CD_R_POPid_tamanho: TIntegerField;
    PCP_CD_R_POPqtde_a_produzir: TFloatField;
    PCP_CD_R_POPqtde_produzida: TFloatField;
    PCP_CD_R_POPqtde_a_produzir_orig: TFloatField;
    PCP_CD_R_POPid_resp_alt: TIntegerField;
    PCP_CD_R_POPdta_alt: TDateField;
    PCP_CD_R_POPhora_alt: TTimeField;
    PCP_CD_R_POPqtde_atender_opr: TFloatField;
    PCP_CD_R_POPqtde_atender_opr_ext: TFloatField;
    PCP_CD_R_POPsaldo_disponivel: TFloatField;
    PCP_CD_R_POPreg_alt: TBooleanField;
    PCP_CD_R_POPhistorico_alt: TWideStringField;
    PCP_CD_R_POPmotivo_alt: TWideStringField;
    PCP_CD_R_POPgerado_aut: TBooleanField;
    PCP_CD_R_POPmotivo_ger_man: TWideStringField;
    PCP_CD_R_POPid_resp_man: TIntegerField;
    PCP_CD_R_POPdta_man: TDateField;
    PCP_CD_R_POPhor_man: TTimeField;
    PCP_CD_R_POPid_busca_item: TWideStringField;
    PCP_CD_R_POPobs_producao: TWideStringField;
    PCP_CD_R_POPpcp_desc_item_person: TWideStringField;
    PCP_CD_R_POPsaldo_fisico_momento: TFloatField;
    PCP_CD_R_POPsaldo_pendente: TFloatField;
    PCP_CD_R_POPsaldo_disponivel_est: TFloatField;
    PCP_CD_R_POPsaldo_disp_outras_opr: TFloatField;
    PCP_CD_R_POPtemp_qtde_produzida: TFloatField;
    PCP_CD_R_POPint_nomeite: TWideStringField;
    PCP_CD_R_POPint_undvenda: TWideStringField;
    PCP_CD_R_POPint_nomecor: TWideStringField;
    PCP_CD_R_POPint_nometam: TWideStringField;
    PCP_CD_R_POPint_nomeresp: TWideStringField;
    PCP_CD_R_POPint_id_grupo: TWideStringField;
    PCP_CD_R_POPint_nomegru: TWideStringField;
    PCP_CD_R_POPint_nomeresp_man: TWideStringField;
    PCP_CD_R_POPint_nomeresp_opr: TWideStringField;
    PCP_CD_R_POPint_rest_a_produzir: TFloatField;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmSelGrupoItem: TPopupMenu;
    MenuItemGruposItens: TMenuItem;
    pmSelCor: TPopupMenu;
    btnSelecionarTudoCor: TMenuItem;
    pmExcluirItem: TPopupMenu;
    btnRemoverItem: TMenuItem;
    pmRemoverTodasCores: TPopupMenu;
    btnRemoverTodasCores: TMenuItem;
    pmRemoverTodosGrupos: TPopupMenu;
    btnRemoverTodosGrupos: TMenuItem;
    pmRemoverTodasEmpresas: TPopupMenu;
    btnRemoverTodasEmpresas: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxGruposDisponiveisDblClick(Sender: TObject);
    procedure lboxGruposSelecionadosDblClick(Sender: TObject);
    procedure lboxCorDispDblClick(Sender: TObject);
    procedure lboxCorSelDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure MenuItemGruposItensClick(Sender: TObject);
    procedure btnRemoverTodosGruposClick(Sender: TObject);
    procedure btnRemoverTodasCoresClick(Sender: TObject);
    procedure btnRemoverItemClick(Sender: TObject);
    procedure btnRemoverTodasEmpresasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function  TestarCampos: Boolean;
    var
      xOpcoes,xNumLote_OPR,xSituacaoOPs, xCondEmpresa, xCondItem, xCondGrupoItem, xCondCor: string;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_POP: TPCP_FM_R_POP;

implementation

{$R *.dfm}

uses uDmGeral,enFunc, enConstantes, PSQ_UN_X_ITE;

procedure TPCP_FM_R_POP.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TPCP_FM_R_POP.btnRemoverItemClick(Sender: TObject);
begin
  inherited;
  if lboxItens.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxItens.DeleteSelected;
end;

procedure TPCP_FM_R_POP.btnRemoverTodasCoresClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxCorSel.ClearSelection;

  if lboxCorSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCorSel.Items.Count > 0 then
     begin
       for i := 0 to lboxCorSel.Items.Count - 1 do
           begin
             lboxCorDisp.Items.Add(lboxCorSel.Items[i]);
             lboxCorSel.Items.Delete(lboxCorSel.ItemIndex);
           end;
       lboxCorSel.Items.Clear;
     end;
end;

procedure TPCP_FM_R_POP.btnRemoverTodasEmpresasClick(Sender: TObject);
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

procedure TPCP_FM_R_POP.btnRemoverTodosGruposClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxGruposSelecionados.ClearSelection;
  if lboxGruposSelecionados.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxGruposSelecionados.Items.Count > 0 then
     begin
       for i := 0 to lboxGruposSelecionados.Items.Count - 1 do
           begin
             lboxGruposDisponiveis.Items.Add(lboxGruposSelecionados.Items[i]);
             lboxGruposSelecionados.Items.Delete(lboxGruposSelecionados.ItemIndex);
           end;
       lboxGruposSelecionados.Items.Clear;
     end;
end;

procedure TPCP_FM_R_POP.ExibirRel;
var
  rImprimirCodigo, rDtaIni, rDtaFin, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin


  if lbxRelatorios.ItemIndex = -1 then
     begin
       Showmessage('Nenhum relatório foi selecionado.');
       exit;
     end;


   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;


   PreencherCondicao;




  PCP_CD_R_POP.Close;
  PCP_CD_R_POP.Data :=
         PCP_CD_R_POP.DataRequest(
              VarArrayOf([lbxRelatorios.ItemIndex, rDtaIni, rDtaFin, xCondEmpresa, xCondItem,
              xCondCor,  xCondGrupoItem, xNumLote_OPR,xSituacaoOPs]));

  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '0 - Produção dos Itens detalhado por O.P') then
      begin
         if not PCP_CD_R_POP.IsEmpty then
            begin
              PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

              if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '0 - Produção dos Itens detalhado por O.P' then
                 begin
                    if FileExists(PathImg) then
                       begin
                          LogoEmpresa := TfrxPictureView(PCP_FR_R_POP_DET.FindObject('imgEmpresa1'));
                          if Assigned(LogoEmpresa) then
                             LogoEmpresa.Picture.LoadFromFile(PathImg);
                       end;
                    dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_POP_DET.Name,xCodLme,xRevLme,nil);

                    PCP_FR_R_POP_DET.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
                    PCP_FR_R_POP_DET.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                    PCP_FR_R_POP_DET.Variables['Opcoes'] := QuotedStr(xOpcoes);
                    PCP_FR_R_POP_DET.PrepareReport();
                    PCP_FR_R_POP_DET.ShowReport();
                 end;
            end
         else
            begin
               ShowMessage('Nenhum registro foi encontrado.');
               exit;
            end;
     end;

  {
   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '4 - Saldo Atual Por Grupo' then
      begin
       EST_CD_R_MOV_SPR.Close;
       EST_CD_R_MOV_SPR.Data :=
               EST_CD_R_MOV_SPR.DataRequest(
                    VarArrayOf([xCondEmpresa, xCondItem,
                    xCondAlmoxarifado, xCondCor, xCondTam, xCondTipoItem,xCondTipoEstoque, xCondGrupoItem, xCondFornecedor,
                    cbbClassificarPor.ItemIndex,rDtaIni,rDtaFin,xCondCentroCusto]));

       if not EST_CD_R_MOV_SPR.IsEmpty then
         begin
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_MOV_SPR.FindObject('imgEmpresa4'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
             dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_MOV_SPR.Name,xCodLme,xRevLme,nil);

             EST_FR_R_MOV_SPR.Variables['ativado_almoxarifado'] := false;
             if  ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').IsNull) and
                    (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = True)) then
               begin
                   EST_FR_R_MOV_SPR.Variables['ativado_almoxarifado'] := true;
               end;

             EST_FR_R_MOV_SPR.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
             EST_FR_R_MOV_SPR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             EST_FR_R_MOV_SPR.Variables['Opcoes'] := QuotedStr(xOpcoes);
             EST_FR_R_MOV_SPR.PrepareReport();
             EST_FR_R_MOV_SPR.ShowReport();
         end
       else
         begin
           ShowMessage('Nenhum registro foi encontrado.');
           exit;
         end;

      end; }
end;

procedure TPCP_FM_R_POP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_POP);
end;

procedure TPCP_FM_R_POP.FormShow(Sender: TObject);
begin
  inherited;

  tsCor.TabVisible := false;


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



  // Grupo de Itens ------------------------------------------------------------
  dmGeral.BUS_CD_C_GRU.Close;
  dmGeral.BUS_CD_C_GRU.Data :=
  dmGeral.BUS_CD_C_GRU.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_GRU.IsEmpty then
     begin
       dmGeral.BUS_CD_C_GRU.First;

       while not dmGeral.BUS_CD_C_GRU.eof do
          begin
            lboxGruposDisponiveis.Items.Add(dmGeral.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_GRU.Next;
          end;
     end;

  dmGeral.BUS_CD_C_GRU.Close;


  //Cores--------------------------------------------------------------

   if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) then
      begin
         tsCor.TabVisible := true;
         dmGeral.BUS_CD_C_COR.Close;
         dmGeral.BUS_CD_C_COR.Data := dmGeral.BUS_CD_C_COR.DataRequest(VarArrayOf([1, '%']));

         if not dmGeral.BUS_CD_C_COR.IsEmpty then
          begin
            dmGeral.BUS_CD_C_COR.First;
            while not dmGeral.BUS_CD_C_COR.eof do
              begin
                lboxCorDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_COR.FieldByName('ID_COR').AsFloat,2,0) +
                                    ' - ' + dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString);
                dmGeral.BUS_CD_C_COR.Next;
            end;
          end;
          dmGeral.BUS_CD_C_COR.Close;
   end;




  lbxRelatorios.Items.Clear;
  lbxRelatorios.Items.Add('0 - Produção dos Itens detalhado por O.P')
  //lbxRelatorios.Items.Add('1 - Produção resumido por Itens')
  //lbxRelatorios.Items.Add('2 - Ordens de Produção em Aberto')


end;

procedure TPCP_FM_R_POP.lboxCorDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxCorDisp.ItemIndex > -1 then
     begin
       lboxCorSel.Items.Add(lboxCorDisp.Items[lboxCorDisp.ItemIndex]);
       lboxCorDisp.Items.Delete(lboxCorDisp.ItemIndex);
     end;
end;

procedure TPCP_FM_R_POP.lboxCorSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxCorSel.ItemIndex > -1 then
     begin
       lboxCorDisp.Items.Add(lboxCorSel.Items[lboxCorSel.ItemIndex]);
       lboxCorSel.Items.Delete(lboxCorSel.ItemIndex);
     end;
end;

procedure TPCP_FM_R_POP.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TPCP_FM_R_POP.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TPCP_FM_R_POP.lboxGruposDisponiveisDblClick(Sender: TObject);
begin
  inherited;
 if lboxGruposDisponiveis.ItemIndex > - 1 then
     begin
       lboxGruposSelecionados.Items.Add(lboxGruposDisponiveis.Items[lboxGruposDisponiveis.ItemIndex]);
       lboxGruposDisponiveis.Items.Delete(lboxGruposDisponiveis.ItemIndex);
     end;
end;

procedure TPCP_FM_R_POP.lboxGruposSelecionadosDblClick(Sender: TObject);
begin
  inherited;
  if lboxGruposSelecionados.ItemIndex > -1 then
     begin
       lboxGruposDisponiveis.Items.Add(lboxGruposSelecionados.Items[lboxGruposSelecionados.ItemIndex]);
       lboxGruposSelecionados.Items.Delete(lboxGruposSelecionados.ItemIndex);
     end;
end;

procedure TPCP_FM_R_POP.lboxItensKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_R_POP.menuItemEmpresasClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
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

procedure TPCP_FM_R_POP.MenuItemGruposItensClick(Sender: TObject);
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

procedure TPCP_FM_R_POP.PreencherCondicao;
var
  i: integer;
  opcoesEmpresa,opcoesItem,opcoesAlmoxarifado,opcoesTipoEstoque,
  opcoesGrupo,opcoesFornecedor,opcoesCor,opcoesTamanho,opcoesCentroCusto:string;
begin
   opcoesEmpresa := '';
   opcoesItem    := '';
   opcoesGrupo   := '';
   opcoesCor     := 'O sistema está configurado para não utilização de cor.';
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
                 opcoesEmpresa +'                 '+lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
      for i := 0 to lboxEmpresas.Count - 1 do
          begin
            if opcoesEmpresa <> '' then
               begin
                 opcoesEmpresa :=
                 opcoesEmpresa +'                 '+lboxEmpresas.Items[i] + #13+#10;
               end;
            if opcoesEmpresa = '' then
               begin
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpresas.Items[i] + #13+#10;
               end;
          end;
     end;
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
                 opcoesItem :=
                 opcoesItem +'                 '+lboxItens.Items[i] + #13+#10;
               end;
            if xCondItem = '' then
               begin
                 xCondItem :=
                 xCondItem  +''''+trim(copy(lboxItens.Items[i],1,6))+'''';
                 opcoesItem :=
                 opcoesItem +lboxItens.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
         opcoesItem := 'Todos';
      end;

  // Grupos de Itens -----------------------------------------------------------
  xCondGrupoItem := '';
  if lboxGruposSelecionados.Count > 0 then
     begin
      if lboxGruposDisponiveis.Count > 0 then
        begin
          for i := 0 to lboxGruposSelecionados.Count - 1 do
            begin
             if xCondGrupoItem <> '' then
               begin
                 xCondGrupoItem :=
                 xCondGrupoItem + ',' +trim(copy(lboxGruposSelecionados.Items[i],1,8));
                 opcoesGrupo :=
                 opcoesGrupo +'                 '+lboxGruposSelecionados.Items[i] + #13+#10;
               end;
            if xCondGrupoItem = '' then
               begin
                 xCondGrupoItem :=
                 xCondGrupoItem +trim(copy(lboxGruposSelecionados.Items[i],1,8));
                 opcoesGrupo :=
                 opcoesGrupo + lboxGruposSelecionados.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
        opcoesGrupo := 'Todos';
     end;
     end
   else
    begin
       opcoesGrupo := 'Todos';
    end;

  //Cores----------------------------------------------------------------------

  xCondCor := '''0''';

  if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
   begin
   xCondCor := '';
   opcoesCor := '';
   if lboxCorSel.Count > 0 then
     begin
      if lboxCorDisp.Count > 0 then
        begin
          for i := 0 to lboxCorSel.Count - 1 do
           begin
            if xCondCor <> '' then
               begin
                 xCondCor :=
                 xCondCor + ',' +''''+copy(lboxCorSel.Items[i],1,2)+'''';
                 opcoesCor :=
                 opcoesCor +'                 '+lboxCorSel.Items[i] + #13+#10;
               end;
            if xCondCor = '' then
               begin
                 xCondCor :=
                 xCondCor +''''+copy(lboxCorSel.Items[i],1,2)+'''';
                 opcoesCor :=
                 opcoesCor +lboxCorSel.Items[i] + #13+#10;
               end;
          end;
     end
     else
      begin
        opcoesCor := 'Todos';
      end;
     end
   else
   begin
     opcoesCor := 'Todos';
   end;
   end;

  xNumLote_OPR := '';
  if trim(txtCodOpr.Text) <> '' then
     xNumLote_OPR := trim(txtCodOpr.Text);

  xSituacaoOPs := inttostr(cbbSituacaoOP.ItemIndex);

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
  // if lbxRelatorios.Items[lbxRelatorios.ItemIndex] <> '4 - Saldo Atual Por Grupo' then
     // begin
        xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
      //end;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa + #13+#10;
   xOpcoes := xOpcoes + 'Item..............: ' + opcoesItem +#13+#10;
   xOpcoes := xOpcoes + 'Grupo de Item.....: ' + opcoesGrupo+#13+#10;
   xOpcoes := xOpcoes + 'Cor...............: ' + opcoesCor+#13+#10;
end;

function TPCP_FM_R_POP.TestarCampos: Boolean;
var
  mens: String;
begin

  result := True;
  mens := '';

  if (trim(txtCodOpr.Text) = '') and ( (deInicial.Text = '  /  /    ') and (deFinal.Text = '  /  /    ') )then
     begin
       mens := mens +  '.O período deve ser preenchido ou nro da O.P' + #13;
     end
  else
     begin
        if trim(txtCodOpr.Text) = '' then
           begin
              if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
                     begin
                       mens := mens +  '.O período deve ser preenchido.' + #13;
                     end;
              if (deInicial.Date >  deFinal.Date) then
                 begin
                   mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
                 end;
           end;
     end;

  if lboxEmpresaSelecionada.Count = 0 then
     mens := mens +  '.É necessário selecionar pelo menos 1 empresa' + #13;


  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end;


end;

end.
