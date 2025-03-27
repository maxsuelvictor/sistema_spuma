unit EST_UN_R_CTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit, frxExportXLS, frxClass, enFunc,
  frxDBSet, frxExportPDF, Vcl.ComCtrls, JvDBControls, Vcl.Menus, JvExExtCtrls,
  JvExtComponent, JvPanel, vcl.Wwdbedit, Data.DB, Datasnap.DBClient,
  Vcl.CheckLst;

type
  TEST_FM_R_CTE = class(TPAD_FM_X_REL)
    ckboxExibirItens: TCheckBox;
    lblPeriodo: TLabel;
    lblAte: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    ckboxExibirSaldo: TCheckBox;
    EST_PD_R_CTE: TfrxPDFExport;
    EST_FR_R_CTE_GRU: TfrxReport;
    EST_DB_R_CTE: TfrxDBDataset;
    EST_XL_R_CTE: TfrxXLSExport;
    EST_FR_R_CTE_RUA: TfrxReport;
    pcFiltro: TPageControl;
    tsGrupos: TTabSheet;
    lboxGrupo: TListBox;
    tsRuas: TTabSheet;
    lboxRua: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    lblAlmoxarifado: TLabel;
    lblSaldo: TLabel;
    tsCores: TTabSheet;
    tsTamanho: TTabSheet;
    lboxCores: TListBox;
    lboxTam: TListBox;
    lblSituacao: TLabel;
    cboxSituacao: TComboBox;
    lboxTamSel: TListBox;
    lboxCoresSel: TListBox;
    txtAlmoxarifado: TJvComboEdit;
    lblTamanhoDisp: TLabel;
    lblTamanhoSel: TLabel;
    lblCoresDisp: TLabel;
    lblCoresSel: TLabel;
    pmSelTodasTam: TPopupMenu;
    pmSelTodasCor: TPopupMenu;
    SelecionarTodas1: TMenuItem;
    SelecionarTodos1: TMenuItem;
    pmExcluirGrupos: TPopupMenu;
    pmExcluirRuas: TPopupMenu;
    btnRemoverRegistroGrupo: TMenuItem;
    btnRemoverRegistroRua: TMenuItem;
    lblcontagem: TLabel;
    lblAlmoxafiradoDesc: TLabel;
    lblOrde: TLabel;
    cbbOrde: TComboBox;
    EST_DB_R_CTE_ITE: TfrxDBDataset;
    EST_FR_R_CTE: TfrxReport;
    txtContagem: TJvComboEdit;
    tsTipoItem: TTabSheet;
    lboxTipoIteDisp: TListBox;
    lboxTipoIteSel: TListBox;
    lblTipoIteDisp: TLabel;
    lblTipoIteSel: TLabel;
    pmSelTodosTipoIte: TPopupMenu;
    btnSelTodosTipoIte: TMenuItem;
    pmExcluirTodosTipoIte: TPopupMenu;
    btnExcluirTodosTipoIte: TMenuItem;
    EST_CD_R_CTE_ITE: TClientDataSet;
    EST_CD_R_CTE: TClientDataSet;
    EST_CD_R_CTE_ITE_NCT: TClientDataSet;
    EST_DB_R_CTE_ITE_NCT: TfrxDBDataset;
    cbbTipo: TComboBox;
    lbltipo: TLabel;
    ckboxAtualizada: TCheckBox;
    gbItensNContados: TGroupBox;
    chlSitEst: TCheckListBox;
    lblSitEst: TLabel;
    ckboxnaocontados: TCheckBox;
    Label3: TLabel;
    cboxSituacaoItem: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure lboxGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxRuaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure txtAlmoxarifadoButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SelecionarTodas1Click(Sender: TObject);
    procedure SelecionarTodos1Click(Sender: TObject);
    procedure lboxTamDblClick(Sender: TObject);
    procedure lboxCoresDblClick(Sender: TObject);
    procedure lboxCoresSelDblClick(Sender: TObject);
    procedure lboxTamSelDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnRemoverRegistroGrupoClick(Sender: TObject);
    procedure btnRemoverRegistroRuaClick(Sender: TObject);
    procedure EST_FR_R_CTE_GRUBeforePrint(Sender: TfrxReportComponent);
    procedure EST_FR_R_CTE_RUABeforePrint(Sender: TfrxReportComponent);
    procedure txtAlmoxarifadoExit(Sender: TObject);
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure txtContagemButtonClick(Sender: TObject);
    procedure txtContagemExit(Sender: TObject);
    procedure lboxTipoIteDispDblClick(Sender: TObject);
    procedure lboxTipoIteSelDblClick(Sender: TObject);
    procedure btnSelTodosTipoIteClick(Sender: TObject);
    procedure btnExcluirTodosTipoIteClick(Sender: TObject);
    procedure ckboxAtualizadaClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function TestarCampos: boolean;
    var
      xCondGrupo,xCondRua,xCondCor,xCondTam,xCondAlm,xCondTipoIte,xCondSitEst,xOpcoes,
      rExibirLista,rDtaIni,rDtaFin,xCondEmp,xCondSaldo,rAtivo: String;
  public
    { Public declarations }
  end;

var
  EST_FM_R_CTE: TEST_FM_R_CTE;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_GRU, PSQ_UN_X_RUA, PSQ_UN_X_ALM, enConstantes,
  PSQ_UN_X_CTE;

procedure TEST_FM_R_CTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(EST_FM_R_CTE);
end;

procedure TEST_FM_R_CTE.FormCreate(Sender: TObject);
begin
  inherited;
  lblAlmoxafiradoDesc.Height := 21;
  lblAlmoxafiradoDesc.Width := 212;
end;

procedure TEST_FM_R_CTE.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  pcFiltro.TabIndex := 0;
  tsCores.TabVisible := false;
  tsTamanho.TabVisible := false;
  cbborde.Enabled := False; // #942 - Corrigir a ordenação do relatório
  lblOrde.Enabled := False;

   EST_FR_R_CTE_GRU.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
   EST_FR_R_CTE_RUA.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
   EST_FR_R_CTE.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);

   dmGeral.BUS_PR_X_TIP(dmGeral.BUS_CD_X_TIP);
   if not dmGeral.BUS_CD_X_TIP.IsEmpty then
      begin
        dmGeral.BUS_CD_X_TIP.First;
        while not dmGeral.BUS_CD_X_TIP.eof do
          begin
            lboxTipoIteDisp.Items.Add(dmGeral.BUS_CD_X_TIP.FieldByName('CODIGO').AsString +
                                ' - ' + dmGeral.BUS_CD_X_TIP.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_X_TIP.Next;
        end;
      end;
   dmGeral.BUS_CD_X_TIP.Close;


   if not (dmGeral.CAD_CD_C_PAR_CTRUTILIZA_ALMOXARIFADO.AsBoolean) then
      begin
         txtAlmoxarifado.Enabled := false;
      end;

   if (dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean) then
      begin
         tsCores.TabVisible := true;
         dmGeral.CAD_CD_C_COR.Close;
         dmGeral.CAD_CD_C_COR.Data := dmGeral.CAD_CD_C_COR.DataRequest(VarArrayOf([1, '%']));

         if not dmGeral.CAD_CD_C_COR.IsEmpty then
          begin
            dmGeral.CAD_CD_C_COR.First;
            while not dmGeral.CAD_CD_C_COR.eof do
              begin
                lboxCores.Items.Add(StrZero(dmGeral.CAD_CD_C_COR.FieldByName('ID_COR').AsFloat,2,0) +
                                    ' - ' + dmGeral.CAD_CD_C_COR.FieldByName('DESCRICAO').AsString);
                dmGeral.CAD_CD_C_COR.Next;
            end;
          end;
          dmGeral.CAD_CD_C_COR.Close;
   end;

   if (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
      begin
         tsTamanho.TabVisible := true;
         dmGeral.CAD_CD_C_TAM.Close;
         dmGeral.CAD_CD_C_TAM.Data := dmGeral.CAD_CD_C_TAM.DataRequest(VarArrayOf([1, '%']));

         if not dmGeral.CAD_CD_C_TAM.IsEmpty then
          begin
            dmGeral.CAD_CD_C_TAM.First;
            while not dmGeral.CAD_CD_C_TAM.eof do
              begin
                lboxTam.Items.Add(StrZero(dmGeral.CAD_CD_C_TAM.FieldByName('ID_TAMANHO').AsFloat,2,0) +
                                    ' - ' + dmGeral.CAD_CD_C_TAM.FieldByName('DESCRICAO').AsString);
                dmGeral.CAD_CD_C_TAM.Next;
            end;
          end;
          dmGeral.CAD_CD_C_TAM.Close;

      end;
end;



procedure TEST_FM_R_CTE.lboxCoresDblClick(Sender: TObject);
begin
  inherited;
  if lboxCores.ItemIndex > -1 then
     begin
       lboxCoresSel.Items.Add(lboxCores.Items[lboxCores.ItemIndex]);
       lboxCores.Items.Delete(lboxCores.ItemIndex);
     end;
end;

procedure TEST_FM_R_CTE.lboxCoresSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxCoresSel.ItemIndex > -1 then
     begin
       lboxCores.Items.Add(lboxCoresSel.Items[lboxCoresSel.ItemIndex]);
       lboxCoresSel.Items.Delete(lboxCoresSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_CTE.lboxGrupoKeyDown(Sender: TObject; var Key: Word;
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

procedure TEST_FM_R_CTE.lboxRuaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
        PSQ_FM_X_RUA := TPSQ_FM_X_RUA.Create(Self);
        PSQ_FM_X_RUA.ShowModal;
        if not PSQ_FM_X_RUA.BUS_CD_C_ITE_LOC.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxRua,10,PSQ_FM_X_RUA.BUS_CD_C_ITE_LOC.FieldByName('LOCA_RUA').AsString) then
                begin
                  lboxRua.Items.Add(PSQ_FM_X_RUA.BUS_CD_C_ITE_LOC.FieldByName('LOCA_RUA').AsString);
                end;
           end;
         PSQ_FM_X_RUA.Free;
     end;
end;

procedure TEST_FM_R_CTE.lboxTamDblClick(Sender: TObject);
begin
  inherited;
  if lboxTam.ItemIndex > -1 then
     begin
       lboxTamSel.Items.Add(lboxTam.Items[lboxTam.ItemIndex]);
       lboxTam.Items.Delete(lboxTam.ItemIndex);
     end;
end;

procedure TEST_FM_R_CTE.lboxTamSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxTamSel.ItemIndex > -1 then
     begin
       lboxTam.Items.Add(lboxTamSel.Items[lboxTamSel.ItemIndex]);
       lboxTamSel.Items.Delete(lboxTamSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_CTE.lboxTipoIteDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoIteDisp.ItemIndex > -1 then
     begin
       lboxTipoIteSel.Items.Add(lboxTipoIteDisp.Items[lboxTipoIteDisp.ItemIndex]);
       lboxTipoIteDisp.Items.Delete(lboxTipoIteDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_CTE.lboxTipoIteSelDblClick(Sender: TObject);
begin
  inherited;
    if lboxTipoIteSel.ItemIndex > -1 then
     begin
       lboxTipoIteDisp.Items.Add(lboxTipoIteSel.Items[lboxTipoIteSel.ItemIndex]);
       lboxTipoIteSel.Items.Delete(lboxTipoIteSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_CTE.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;

  if lbxRelatorios.ItemIndex = 2 then
    begin
      cboxSituacaoItem.Enabled := false;
      cboxSituacaoItem.ItemIndex := 2;
      ckboxExibirItens.Visible := False;
      ckboxExibirSaldo.Visible := False;
      lblsituacao.Enabled := False;
      cboxsituacao.Enabled := False;
      lblcontagem.Enabled := True;
      txtcontagem.Enabled := True;
      cbborde.Enabled := True; // #942 - Corrigir a ordenação do relatório
      lblOrde.Enabled := True; // #942 - Corrigir a ordenação do relatório

      ckboxatualizada.Visible := True;

      //ckboxnaocontados.Visible := True;
      gbItensNContados.Visible := True;

      ckboxatualizada.Left := 69;
      ckboxatualizada.Top := 28;
     // ckboxnaocontados.Top := 12;
     // ckboxnaocontados.Left := 69;

      //gbItensNContados.Top := 12;
     // gbItensNContados.Left := 69;

      cbborde.ItemIndex := 2;
    end
  else
    begin
      cboxSituacaoItem.Enabled := true;

      ckboxExibirItens.Visible := True;
      ckboxExibirSaldo.Visible := True;
      lblsituacao.Enabled := True;
      cboxsituacao.Enabled := True;
      lblcontagem.Enabled := False;
      txtcontagem.Enabled := False;
      cbborde.ItemIndex := 0;
      ckboxatualizada.Visible := False;
      //ckboxnaocontados.Visible := False;
      gbItensNContados.Visible := False;
      cbborde.Enabled := False; // #942 - Corrigir a ordenação do relatório
      lblOrde.Enabled := False; // #942 - Corrigir a ordenação do relatório
    end;
end;

procedure TEST_FM_R_CTE.btnExcluirTodosTipoIteClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxTipoIteSel.ClearSelection;

  if lboxTipoIteSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoIteSel.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoIteSel.Items.Count - 1 do
           begin
             lboxTipoIteDisp.Items.Add(lboxTipoIteSel.Items[i]);
             lboxTipoIteSel.Items.Delete(lboxTipoIteSel.ItemIndex);
           end;
       lboxTipoIteSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_CTE.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TEST_FM_R_CTE.btnRemoverRegistroGrupoClick(Sender: TObject);
begin
  inherited;
  if lboxGrupo.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;
  lboxGrupo.DeleteSelected;
end;

procedure TEST_FM_R_CTE.btnRemoverRegistroRuaClick(Sender: TObject);
begin
  inherited;
  if lboxRua.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxRua.DeleteSelected;
end;

procedure TEST_FM_R_CTE.btnSelTodosTipoIteClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxTipoIteDisp.ClearSelection;

  if lboxTipoIteDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoIteDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoIteDisp.Items.Count - 1 do
           begin
             lboxTipoIteSel.Items.Add(lboxTipoIteDisp.Items[i]);
             lboxTipoIteDisp.Items.Delete(lboxTipoIteDisp.ItemIndex);
           end;
       lboxTipoIteDisp.Items.Clear;
     end;
end;

procedure TEST_FM_R_CTE.ckboxAtualizadaClick(Sender: TObject);
begin
  inherited;
  if ckboxatualizada.Checked then
    begin
      lbltipo.Top := 29;
      lbltipo.Left := 315;
      cbbtipo.Top := 26;
      cbbtipo.Left := 347;
      cbbtipo.Visible := True;
      lbltipo.Visible := True;
    end
  else
    begin
      cbbtipo.Visible := False;
      lbltipo.Visible := False;
    end;
end;

procedure TEST_FM_R_CTE.EST_FR_R_CTE_GRUBeforePrint(
  Sender: TfrxReportComponent);
var
  exibirSaldo: string;
begin
  inherited;
  exibirSaldo := 'false';
  if ckboxExibirSaldo.Checked then
    begin
       exibirSaldo := 'true';
    end;
  EST_FR_R_CTE_GRU.Variables['ft_exibirSaldo'] := QuotedStr(exibirSaldo);
end;

procedure TEST_FM_R_CTE.EST_FR_R_CTE_RUABeforePrint(
  Sender: TfrxReportComponent);
var
  exibirSaldo: string;
begin
  inherited;
  exibirSaldo := 'false';
  if ckboxExibirSaldo.Checked then
    begin
       exibirSaldo := 'true';
    end;
  EST_FR_R_CTE_RUA.Variables['ft_exibirSaldo'] := QuotedStr(exibirSaldo);
end;

procedure TEST_FM_R_CTE.ExibirRel;
var
  PathImg,rDtaIni, rDtaFin, rOrde,rtipo,ratualizada: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   // Ordenação
   rOrde := IntToStr(cbborde.ItemIndex);

   if ckboxatualizada.Checked then
    rtipo := IntToStr(cbbTipo.ItemIndex)
   else
    rtipo := '0';

   if ckboxatualizada.Checked then
    ratualizada := '1'
   else
    ratualizada := '0';

   PreencherCondicao;

  EST_CD_R_CTE.Close;
  EST_CD_R_CTE_ITE.Close;
  EST_CD_R_CTE_ITE_NCT.Close;

   if lbxRelatorios.ItemIndex = 2 then
    begin
      EST_CD_R_CTE_ITE.Data :=
        EST_CD_R_CTE_ITE.DataRequest(
          VarArrayOf([rDtaIni,rDtaFin,dmgeral.CAD_CD_C_PAR.FieldByName('id_empresa').Text,
            txtcontagem.Text,xCondAlm,xCondCor,xCondTam,xCondGrupo,xCondRua,rOrde,xCondTipoIte,ratualizada,rtipo]));

      if {(txtContagem.Text = '') and} (ckboxnaocontados.Checked) then
        begin
          EST_CD_R_CTE_ITE_NCT.Data :=
            EST_CD_R_CTE_ITE_NCT.DataRequest(
              VarArrayOf([rDtaIni,rDtaFin,dmgeral.CAD_CD_C_PAR.FieldByName('id_empresa').Text,
                '','',xCondCor,xCondTam,xCondGrupo,xCondRua,xCondSitEst,rOrde,xCondTipoIte]));
        end;
    end
   else
    begin
      EST_CD_R_CTE.Data :=
        EST_CD_R_CTE.DataRequest(
          VarArrayOf([rExibirLista,rDtaIni,rDtaFin,xCondGrupo,xCondRua,xCondAlm,
            xCondSaldo,lbxRelatorios.ItemIndex,xCondCor,xCondTam,xCondTipoIte,
                 dmgeral.CAD_CD_C_PAR.FieldByName('id_empresa').Text,rAtivo]));
    end;

   if (not EST_CD_R_CTE.IsEmpty) or (not EST_CD_R_CTE_ITE.IsEmpty) then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Contagem por Rua' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_CTE_RUA.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_CTE_RUA.Name,xCodLme,xRevLme,nil);
            EST_FR_R_CTE_RUA.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            EST_FR_R_CTE_RUA.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            EST_FR_R_CTE_RUA.Variables['Opcoes'] := QuotedStr(xOpcoes);
            EST_FR_R_CTE_RUA.PrepareReport();
            EST_FR_R_CTE_RUA.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Contagem por Grupo' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_CTE_GRU.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_CTE_GRU.Name,xCodLme,xRevLme,nil);
            EST_FR_R_CTE_GRU.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            EST_FR_R_CTE_GRU.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            EST_FR_R_CTE_GRU.Variables['Opcoes'] := QuotedStr(xOpcoes);
            EST_FR_R_CTE_GRU.PrepareReport();
            EST_FR_R_CTE_GRU.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Contagem Realizada' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_CTE.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            if ckboxnaocontados.Checked then
              EST_FR_R_CTE.Variables['ft_nao'] := QuotedStr('T')
            else
              EST_FR_R_CTE.Variables['ft_nao'] := QuotedStr('F');

            dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_CTE.Name,xCodLme,xRevLme,nil);
            EST_FR_R_CTE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            EST_FR_R_CTE.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            EST_FR_R_CTE.Variables['Opcoes'] := QuotedStr(xOpcoes);
            EST_FR_R_CTE.PrepareReport();
            EST_FR_R_CTE.ShowReport();
          end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

procedure TEST_FM_R_CTE.PreencherCondicao;
var
i: integer;
exibirMovPeriodo,exibirSaldo,opcoesSitEst: string;
begin

  rDtaIni :='';
  rDtaFin :='';

  rExibirLista := '0';
  if ckboxExibirItens.Checked then
    begin
      rExibirLista := '1';
      rDtaIni := deInicial.Text;
      rDtaFin := deFinal.Text;
    end;

  xCondEmp := dmGeral.CAD_CD_C_PARid_empresa.AsString;

  xCondSaldo := '';
  if cboxSituacao.Text <> 'Todos' then
    begin
      xCondSaldo := copy(cboxSituacao.Text,1,1);
    end;

    // Situação do item
  rAtivo := '';
  if cboxSituacaoItem.Text = 'Ativos' then
    rAtivo := 'true'
  else if cboxSituacaoItem.Text = 'Inativos' then
    rAtivo := 'false';


  xCondAlm := '';
  if dmGeral.CAD_CD_C_PAR_CTRUTILIZA_ALMOXARIFADO.AsBoolean then
    begin
      xCondAlm := ''''+trim(txtAlmoxarifado.Text)+'''';
    end;

  xCondGrupo := '';
  if lboxGrupo.Count > 0 then
     begin
       for i := 0 to lboxGrupo.Count - 1 do
          begin
            if xCondGrupo <> '' then
               begin
                 xCondGrupo :=
                 xCondGrupo + ',' +trim(copy(lboxGrupo.Items[i],1,8));
               end;
            if xCondGrupo = '' then
               begin
                 xCondGrupo :=
                 xCondGrupo +trim(copy(lboxGrupo.Items[i],1,8));
               end;
          end;
   end;


  xCondTipoIte := '';
  if lboxTipoIteSel.Count > 0 then
      begin
         for i := 0 to lboxTipoIteSel.Count - 1 do
            begin
              if xCondTipoIte <> '' then
                 begin
                   xCondTipoIte :=
                   xCondTipoIte + ',' +''''+copy(lboxTipoIteSel.Items[i],1,2)+'''';
                 end;
              if xCondTipoIte = '' then
                 begin
                   xCondTipoIte :=
                   xCondTipoIte +''''+copy(lboxTipoIteSel.Items[i],1,2)+'''';
                 end;
            end;
      end;

  xCondRua := '';
  if lboxRua.Count > 0 then
     begin
       for i := 0 to lboxRua.Count - 1 do
          begin
            if xCondRua <> '' then
               begin
                 xCondRua :=
                 xCondRua + ',' +''''+lboxRua.Items[i]+'''';
               end;
            if xCondRua = '' then
               begin
                 xCondRua :=
                 xCondRua +''''+lboxRua.Items[i]+'''';
               end;
          end;
   end;

  xCondCor := '''0''';
  //xCondCor := '';

  if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
   begin
     xCondCor := '';
     if lboxCoresSel.Count > 0 then
        begin
           for i := 0 to lboxCoresSel.Count - 1 do
              begin
                if xCondCor <> '' then
                   begin
                     xCondCor :=
                     xCondCor + ',' +''''+copy(lboxCoresSel.Items[i],1,2)+'''';
                   end;
                if xCondCor = '' then
                   begin
                     xCondCor :=
                     xCondCor +''''+copy(lboxCoresSel.Items[i],1,2)+'''';
                   end;
              end;
        end
     else
        begin
          xCondCor := '';
        end;
    end;

  xCondTam := '''0''';
  //xCondTam := '';

  if (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
      begin
         xCondTam := '';
         if lboxTamSel.Count > 0 then
            begin
               for i := 0 to lboxTamSel.Count - 1 do
                  begin
                    if xCondTam <> '' then
                       begin
                         xCondTam :=
                         xCondTam + ',' +''''+copy(lboxTamSel.Items[i],1,2)+'''';
                       end;
                    if xCondTam = '' then
                       begin
                         xCondTam :=
                         xCondTam +''''+copy(lboxTamSel.Items[i],1,2)+'''';
                       end;
                  end;
            end
         else
           begin
             xCondTam :='';
           end;
      end;

   xCondSitEst := '';
   opcoesSitEst := '';
   for i := 0 to chlSitEst.Count-1 do
     begin
       if chlSitEst.Checked[i] then
         begin
           if opcoesSitEst <> '' then
             begin
              opcoesSitEst :=
              opcoesSitEst +','+chlSitEst.Items[i];
             end
           else
             begin
              opcoesSitEst :=
              opcoesSitEst +chlSitEst.Items[i];
             end;
            xCondSitEst := xCondSitEst + IntToStr(i);
         end;
     end;



   exibirMovPeriodo := 'Não';
   if (ckboxExibirItens.Checked) then
      exibirMovPeriodo := 'Sim';

   exibirSaldo := 'Não';
   if (ckboxExibirSaldo.Checked) then
      exibirSaldo := 'Sim';



   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Exibir itens movimentado no período...........: ' + exibirMovPeriodo + #13+#10;
   xOpcoes := xOpcoes + 'Exibir saldo do produto.......................: ' + exibirSaldo + #13+#10;

   if ckboxExibirItens.Checked then
     begin
       xOpcoes := xOpcoes + 'Período.......................................: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
     end;
   xOpcoes := xOpcoes + 'Situação......................................: ' + cboxSituacao.Text + #13+#10;

   if (dmGeral.CAD_CD_C_PAR_CTRUTILIZA_ALMOXARIFADO.AsBoolean) then
      begin
        xOpcoes := xOpcoes + 'Almoxarifado..................................: ' + trim(txtAlmoxarifado.Text) +' - '+lblAlmoxafiradoDesc.Caption + #13+#10;
      end;
end;

procedure TEST_FM_R_CTE.SelecionarTodas1Click(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxCores.ClearSelection;

  if lboxCores.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCores.Items.Count > 0 then
     begin
       for i := 0 to lboxCores.Items.Count - 1 do
           begin
             lboxCoresSel.Items.Add(lboxCores.Items[i]);
             lboxCores.Items.Delete(lboxCores.ItemIndex);
           end;
       lboxCores.Items.Clear;
     end;
end;

procedure TEST_FM_R_CTE.SelecionarTodos1Click(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxTam.ClearSelection;

  if lboxTam.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTam.Items.Count > 0 then
     begin
       for i := 0 to lboxTam.Items.Count - 1 do
           begin
             lboxTamSel.Items.Add(lboxTam.Items[i]);
             lboxTam.Items.Delete(lboxTam.ItemIndex);
           end;
       lboxTam.Items.Clear;
     end;
end;

procedure TEST_FM_R_CTE.txtAlmoxarifadoButtonClick(Sender: TObject);
begin
   inherited;
   PSQ_FM_X_ALM := TPSQ_FM_X_ALM.Create(Self);
   PSQ_FM_X_ALM.ShowModal;
      if not PSQ_FM_X_ALM.BUS_CD_C_ALM.IsEmpty then
         begin
           txtAlmoxarifado.Text := PSQ_FM_X_ALM.BUS_CD_C_ALM.FieldByName('ID_ALMOXARIFADO').AsString;
           lblAlmoxafiradoDesc.Caption := PSQ_FM_X_ALM.BUS_CD_C_ALM.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ALM.Free;
   lblAlmoxafiradoDesc.Height := 21;
   lblAlmoxafiradoDesc.Width := 212;
end;

procedure TEST_FM_R_CTE.txtAlmoxarifadoExit(Sender: TObject);
begin
  inherited;

  if (trim(txtAlmoxarifado.Text) <> '0') and (trim(txtAlmoxarifado.Text) <> '') then
      begin
        dmGeral.BUS_CD_C_ALM.Close;
        dmGeral.BUS_CD_C_ALM.Data :=
          dmGeral.BUS_CD_C_ALM.DataRequest(VarArrayOf([0, trim(txtAlmoxarifado.Text)]));

        if not dmGeral.BUS_CD_C_ALM.IsEmpty then
          begin
            lblAlmoxafiradoDesc.Caption := dmGeral.BUS_CD_C_ALM.FieldByName('DESCRICAO').AsString;
          end
        else
          begin
            showMessage('Almoxarifado não Cadastrado.');
            txtAlmoxarifado.Text := '';
          end;
      end
  else
     begin
       txtAlmoxarifado.Text := '';
       lblAlmoxafiradoDesc.Caption := '';
     end;
end;

procedure TEST_FM_R_CTE.txtContagemButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CTE := TPSQ_FM_X_CTE.Create(Self);
   PSQ_FM_X_CTE.ShowModal;
      if not dmGeral.BUS_CD_M_CTE.IsEmpty then
         begin
           txtContagem.Text := dmGeral.BUS_CD_M_CTE.FieldByName('ID_CONTROLE').AsString;
         end;
   PSQ_FM_X_CTE.Free;
   dmGeral.BUS_CD_M_CTE.Close;
end;

procedure TEST_FM_R_CTE.txtContagemExit(Sender: TObject);
begin
  inherited;
   if (trim(txtContagem.Text) <> '') then
      begin
        dmGeral.BUS_CD_M_CTE.Close;
        dmGeral.BUS_CD_M_CTE.Data :=
          dmGeral.BUS_CD_M_CTE.DataRequest(VarArrayOf([90, trim(txtContagem.Text)]));
        if  dmGeral.BUS_CD_M_CTE.IsEmpty then
          begin
            showMessage('Contagem não existente.');
            txtContagem.Text := '';
          end;
        dmGeral.BUS_CD_M_CTE.Close;
      end;
end;

function TEST_FM_R_CTE.TestarCampos;
var
  mens: String;
begin
  result := True;
  mens := '';

   if (dmGeral.CAD_CD_C_PAR_CTRUTILIZA_ALMOXARIFADO.AsBoolean) then
      begin
         if (trim(txtAlmoxarifado.Text) = '') then
          begin
           mens := mens + '.Almoxarifado deve ser preenchido.' +#13;
          end;
      end;

   if ((lbxRelatorios.ItemIndex in [0,1]) and  ckboxExibirItens.Checked) then
     begin
       if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
         begin
           mens := mens +  '.O período deve ser preenchido.' + #13;
         end;
     end;

   if ((lbxRelatorios.ItemIndex = 2) and  ckboxnaocontados.Checked) then
     begin
       if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
         begin
           mens := mens +  '.Para exibição do itens não contados, o período deve ser preenchido.' + #13;
         end;
     end;


   if ((lbxRelatorios.ItemIndex = 2) and (txtContagem.Text = '')) then
     begin
       if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
         begin
           mens := mens +  '.O período e/ou Contagem devem ser preenchidos.' + #13;
         end;
     end;

    if (deInicial.Date >  deFinal.Date) then
     begin
       mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
     end;
    if trim(mens) <> '' then
      begin
        ShowMessage('Atenção!' + #13 + mens);
        Result := False;
        exit;
      end;

end;

end.
