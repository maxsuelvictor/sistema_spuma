unit EST_UN_R_MLT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS, Vcl.ComCtrls, Vcl.Menus, Data.DB,
  Datasnap.DBClient;

type
  TEST_FM_R_MLT = class(TPAD_FM_X_REL)
    EST_FR_R_MLT_GER: TfrxReport;
    EST_XL_R_MLT: TfrxXLSExport;
    EST_PD_R_MLT: TfrxPDFExport;
    EST_DB_R_MLT: TfrxDBDataset;
    pcFiltro: TPageControl;
    tsEmpresa: TTabSheet;
    tsItem: TTabSheet;
    tsCor: TTabSheet;
    tsTamanho: TTabSheet;
    lboxEmpDisp: TListBox;
    lboxEmpSel: TListBox;
    lblEmpDisp: TLabel;
    lblEmpSel: TLabel;
    lboxItens: TListBox;
    lblIem: TLabel;
    lboxCorDisp: TListBox;
    lboxCorSel: TListBox;
    lblCor: TLabel;
    lblCorSel: TLabel;
    lboxTamDisp: TListBox;
    lboxTamSel: TListBox;
    lblTamDisp: TLabel;
    lblTamSel: TLabel;
    tsAlmoxarifado: TTabSheet;
    lboxAlmDisp: TListBox;
    lboxAlmSel: TListBox;
    lblAlmDisp: TLabel;
    lblAlmSel: TLabel;
    pmSelEmp: TPopupMenu;
    pmExcluirEmp: TPopupMenu;
    pmSelTam: TPopupMenu;
    pmExluirTam: TPopupMenu;
    pmSelCor: TPopupMenu;
    pmExcluirCor: TPopupMenu;
    pmExluirItem: TPopupMenu;
    tsGrupo: TTabSheet;
    lboxGrupoDisp: TListBox;
    lboxGrupoSel: TListBox;
    lblGrupoDisp: TLabel;
    lblGrupoSel: TLabel;
    pmSelGrupo: TPopupMenu;
    pmExcluirGrupo: TPopupMenu;
    btnTodasEmpSel: TMenuItem;
    btnRemoverTodasEmp: TMenuItem;
    pmSelAlm: TPopupMenu;
    pmExcluirAlm: TPopupMenu;
    btnSelTodasAlm: TMenuItem;
    btnSelTodosGrupo: TMenuItem;
    btnRemoverTodosGrupo: TMenuItem;
    btnSelTodasCores: TMenuItem;
    btnRemoverTodasCores: TMenuItem;
    btnSelTodosTam: TMenuItem;
    btnRemoverTodosTam: TMenuItem;
    btnRemoverTodosAlm: TMenuItem;
    btnRemoverItem: TMenuItem;
    EST_FR_R_MLT_GRU: TfrxReport;
    lblSaldo: TLabel;
    cbbSaldo: TComboBox;
    EST_CD_R_MLT: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure btnTodasEmpSelClick(Sender: TObject);
    procedure btnRemoverTodasEmpClick(Sender: TObject);
    procedure btnSelTodasAlmClick(Sender: TObject);
    procedure btnSelTodosGrupoClick(Sender: TObject);
    procedure btnRemoverTodosGrupoClick(Sender: TObject);
    procedure btnSelTodasCoresClick(Sender: TObject);
    procedure btnRemoverTodasCoresClick(Sender: TObject);
    procedure btnSelTodosTamClick(Sender: TObject);
    procedure btnRemoverTodosTamClick(Sender: TObject);
    procedure btnRemoverTodosAlmClick(Sender: TObject);
    procedure btnRemoverItemClick(Sender: TObject);
    procedure lboxEmpDispDblClick(Sender: TObject);
    procedure lboxEmpSelDblClick(Sender: TObject);
    procedure lboxAlmDispDblClick(Sender: TObject);
    procedure lboxGrupoDispDblClick(Sender: TObject);
    procedure lboxGrupoSelDblClick(Sender: TObject);
    procedure lboxItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxAlmSelDblClick(Sender: TObject);
    procedure lboxCorDispDblClick(Sender: TObject);
    procedure lboxCorSelDblClick(Sender: TObject);
    procedure lboxTamDispDblClick(Sender: TObject);
    procedure lboxTamSelDblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function TestarCampos:Boolean;
    var
      xCondEmp,xCondItem,xCondAlm,xCondGru,xCondCor,xCondTam,xOpcoes:string;
  public
    { Public declarations }
  end;

var
  EST_FM_R_MLT: TEST_FM_R_MLT;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_ITE, enConstantes;

function TEST_FM_R_MLT.TestarCampos:Boolean;
var
  mens:string;
begin
   mens := '';
   Result := true;
   if (lboxEmpSel.Count = 0) then
     begin
       mens := 'É necessário selecionar pelo menos 1 empresa';
     end;

   if trim(mens) <> '' then
      begin
        ShowMessage('Atenção!' + #13 + mens);
        Result := False;
        exit;
      end;
end;

procedure TEST_FM_R_MLT.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
    begin
     ExibirRel;
    end;
end;

procedure TEST_FM_R_MLT.btnRemoverItemClick(Sender: TObject);
begin
  inherited;
  if lboxItens.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxItens.DeleteSelected;
end;

procedure TEST_FM_R_MLT.btnRemoverTodasCoresClick(Sender: TObject);
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

procedure TEST_FM_R_MLT.PreencherCondicao;
 var
  i: integer;
  opcoesEmpresa,opcoesItem,opcoesAlmoxarifado,
  opcoesGrupo,opcoesCor,opcoesTamanho:string;
begin
   opcoesEmpresa := '';
   opcoesItem := '';
   opcoesAlmoxarifado := 'O sistema está configurado para não utilização por almoxarifado.';
   opcoesGrupo := '';
   opcoesCor := 'O sistema está configurado para não utilização por cor.';
   opcoesTamanho := 'O sistema está configurado para não utilização por tamanho.';
  // Empresas ------------------------------------------------------------------
  xCondEmp := '';
  if lboxEmpSel.Count > 0 then
    begin
      if lboxEmpDisp.Count <> 0 then
         begin
           for i := 0 to lboxEmpSel.Count - 1 do
              begin
                if xCondEmp <> '' then
                   begin
                     xCondEmp :=
                     xCondEmp + ',' +''''+trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                     opcoesEmpresa :=
                     opcoesEmpresa +'                        '+lboxEmpSel.Items[i] + #13+#10;
                   end;
                if xCondEmp = '' then
                   begin
                     xCondEmp :=
                     xCondEmp +''''+ trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                     opcoesEmpresa :=
                     opcoesEmpresa + lboxEmpSel.Items[i] + #13+#10;
                   end;
              end;
         end
       else
         begin
           opcoesEmpresa := 'Todos';
         end;
    end
    else
      begin
         opcoesEmpresa := 'Todos';
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
                 xCondItem + ',' +''''+trim(copy(lboxItens.Items[i],1,7))+'''';
                 opcoesItem :=
                 opcoesItem +'                        '+lboxItens.Items[i] + #13+#10;
               end;
            if xCondItem = '' then
               begin
                 xCondItem :=
                 xCondItem  +''''+trim(copy(lboxItens.Items[i],1,7))+'''';
                 opcoesItem :=
                 opcoesItem +lboxItens.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
         opcoesItem := 'Todos';
      end;


  // Almoxarifados -------------------------------------------------------------

  xCondAlm := '''0''';

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
   begin
     xCondAlm := '';
     opcoesAlmoxarifado := '';
     if lboxAlmSel.Count > 0 then
       begin
        if lboxAlmDisp.Count > 0 then
          begin
             for i := 0 to lboxAlmSel.Count - 1 do
              begin
                if xCondAlm <> '' then
                   begin
                     xCondAlm :=
                     xCondAlm + ',' +''''+trim(copy(lboxAlmSel.Items[i],1,3))+'''';
                     opcoesAlmoxarifado :=
                     opcoesAlmoxarifado +'                        '+lboxAlmSel.Items[i] + #13+#10;
                   end;
                if xCondAlm = '' then
                   begin
                     xCondAlm :=
                     xCondAlm +''''+trim(copy(lboxAlmSel.Items[i],1,3))+'''';
                     opcoesAlmoxarifado :=
                     opcoesAlmoxarifado +lboxAlmSel.Items[i] + #13+#10;
                   end;
              end;
          end
        else
          begin
           opcoesAlmoxarifado := 'Todos';
          end;
       end
     else
       begin
        opcoesAlmoxarifado := 'Todos';
       end;
   end;

   // Grupo ---------------------------------------------------------------------
  xCondGru := '';
  if lboxGrupoSel.Count > 0 then
    begin
      if lboxGrupoDisp.Count <> 0 then
         begin
           for i := 0 to lboxGrupoSel.Count - 1 do
              begin
                if xCondGru <> '' then
                   begin
                     xCondGru :=
                     xCondGru + ',' +''''+trim(copy(lboxGrupoSel.Items[i],1,11))+'''';
                     opcoesGrupo :=
                     opcoesGrupo +'                        '+lboxGrupoSel.Items[i] + #13+#10;
                   end;
                if xCondGru = '' then
                   begin
                     xCondGru :=
                     xCondGru +''''+trim(copy(lboxGrupoSel.Items[i],1,11))+'''';
                     opcoesGrupo :=
                     opcoesGrupo + lboxGrupoSel.Items[i] + #13+#10;
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


    // Cor --------------------------------------------------------------
  xCondCor := '''0''';
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean = True) then
    begin
      xCondCor := '';
      opcoesCor := '';
      if lboxCorSel.Count > 0 then
      begin
        if lboxCorDisp.Count <> 0 then
         begin
           for i := 0 to lboxCorSel.Count - 1 do
              begin
                if xCondCor <> '' then
                   begin
                     xCondCor :=
                     xCondCor + ',' +''''+trim(copy(lboxCorSel.Items[i],1,3))+'''';
                     opcoesCor :=
                     opcoesCor +'                        '+lboxCorSel.Items[i] + #13+#10;
                   end;
                if xCondCor = '' then
                   begin
                     xCondCor :=
                     xCondCor +''''+trim(copy(lboxCorSel.Items[i],1,3))+'''';
                     opcoesCor :=
                     opcoesCor + lboxCorSel.Items[i] + #13+#10;
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

  // Tamanho --------------------------------------------------------------
  xCondTam := '''0''';
  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean = True) then
    begin
       xCondTam := '';
       opcoesTamanho := '';
      if lboxTamSel.Count > 0 then
        begin
          if lboxTamDisp.Count <> 0 then
             begin
               for i := 0 to lboxTamSel.Count - 1 do
                  begin
                    if xCondTam <> '' then
                       begin
                         xCondTam :=
                         xCondTam + ',' +''''+trim(copy(lboxTamSel.Items[i],1,3))+'''';
                         opcoesTamanho :=
                         opcoesTamanho +'                        '+lboxTamSel.Items[i] + #13+#10;
                       end;
                    if xCondTam = '' then
                       begin
                         xCondTam :=
                         xCondTam +''''+trim(copy(lboxTamSel.Items[i],1,3))+'''';
                         opcoesTamanho :=
                         opcoesTamanho + lboxTamSel.Items[i] + #13+#10;
                       end;
                  end;
             end
             else
               begin
                 opcoesTamanho := 'Todos';
               end;
        end
        else
         begin
           opcoesTamanho := 'Todos';
         end;
    end;

     // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Empresa...............: ' + opcoesEmpresa + #13+#10;
   xOpcoes := xOpcoes + 'Item..................: ' + opcoesItem + #13+#10;
   xOpcoes := xOpcoes + 'Almoxarifado..........: ' + opcoesAlmoxarifado + #13+#10;
   xOpcoes := xOpcoes + 'Grupo.................: ' + opcoesGrupo + #13+#10;
   xOpcoes := xOpcoes + 'Cor...................: ' + opcoesCor + #13+#10;
   xOpcoes := xOpcoes + 'Tamanho...............: ' + opcoesTamanho + #13+#10;

end;

procedure TEST_FM_R_MLT.ExibirRel;
var
  rImprimirCodigo, rDtaIni, rDtaFin,rSaldo, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
    begin
     Showmessage('Nenhum relatório foi selecionado.');
     exit;
    end;
   rSaldo := '';
   if (cbbSaldo.Text <> 'Todos') then
     begin
       rSaldo := copy(cbbSaldo.Text,1,1);
     end;

   PreencherCondicao;

   EST_CD_R_MLT.Close;
   EST_CD_R_MLT.Data :=
           EST_CD_R_MLT.DataRequest(
                VarArrayOf([lbxRelatorios.ItemIndex+1,xCondEmp, xCondItem,xCondAlm,xCondGru, xCondCor, xCondTam,rSaldo]));


   if not EST_CD_R_MLT.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '1 - Geral' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_MLT_GER.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_MLT_GER.Name,xCodLme,xRevLme,nil);

            EST_FR_R_MLT_GER.Variables['ativado_almoxarifado'] := false;
            if  ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').IsNull) and
                 (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = True)) then
              begin
                EST_FR_R_MLT_GER.Variables['ativado_almoxarifado'] := true;
              end;

            EST_FR_R_MLT_GER.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
            EST_FR_R_MLT_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            EST_FR_R_MLT_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
            EST_FR_R_MLT_GER.PrepareReport();
            EST_FR_R_MLT_GER.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Por Grupo' then
           begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_MLT_GRU.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

             dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_MLT_GRU.Name,xCodLme,xRevLme,nil);

             EST_FR_R_MLT_GRU.Variables['ativado_almoxarifado'] := false;
              if  ((not dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').IsNull) and
                 (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = True)) then
                begin
                  EST_FR_R_MLT_GRU.Variables['ativado_almoxarifado'] := true;
                end;

             EST_FR_R_MLT_GRU.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
             EST_FR_R_MLT_GRU.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             EST_FR_R_MLT_GRU.Variables['Opcoes'] := QuotedStr(xOpcoes);
             EST_FR_R_MLT_GRU.PrepareReport();
             EST_FR_R_MLT_GRU.ShowReport();
           end;
      end
   else
      begin
         ShowMessage('Nenhum registro foi encontrado.');
      end;
end;

procedure TEST_FM_R_MLT.btnRemoverTodasEmpClick(Sender: TObject);
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

procedure TEST_FM_R_MLT.btnRemoverTodosAlmClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxAlmSel.ClearSelection;

  if lboxAlmSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxAlmSel.Items.Count > 0 then
     begin
       for i := 0 to lboxAlmSel.Items.Count - 1 do
           begin
             lboxAlmDisp.Items.Add(lboxAlmSel.Items[i]);
             lboxAlmSel.Items.Delete(lboxAlmSel.ItemIndex);
           end;
       lboxAlmSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_MLT.btnRemoverTodosGrupoClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxGrupoSel.ClearSelection;
  if lboxGrupoSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxGrupoSel.Items.Count > 0 then
     begin
       for i := 0 to lboxGrupoSel.Items.Count - 1 do
           begin
             lboxGrupoDisp.Items.Add(lboxGrupoSel.Items[i]);
             lboxGrupoSel.Items.Delete(lboxGrupoSel.ItemIndex);
           end;
       lboxGrupoSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_MLT.btnRemoverTodosTamClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxTamSel.ClearSelection;

  if lboxTamSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTamSel.Items.Count > 0 then
     begin
       for i := 0 to lboxTamSel.Items.Count - 1 do
           begin
             lboxTamDisp.Items.Add(lboxTamSel.Items[i]);
             lboxTamSel.Items.Delete(lboxTamSel.ItemIndex);
           end;
       lboxTamSel.Items.Clear;
     end;
end;

procedure TEST_FM_R_MLT.btnSelTodasAlmClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxAlmDisp.ClearSelection;

  if lboxAlmDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxAlmDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxAlmDisp.Items.Count - 1 do
           begin
             lboxAlmSel.Items.Add(lboxAlmDisp.Items[i]);
             lboxAlmDisp.Items.Delete(lboxAlmDisp.ItemIndex);
           end;
       lboxAlmDisp.Items.Clear;
     end;
end;

procedure TEST_FM_R_MLT.btnSelTodasCoresClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxCorDisp.ClearSelection;

  if lboxCorDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCorDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxCorDisp.Items.Count - 1 do
           begin
             lboxCorSel.Items.Add(lboxCorDisp.Items[i]);
             lboxCorDisp.Items.Delete(lboxCorDisp.ItemIndex);
           end;
       lboxCorDisp.Items.Clear;
     end;
end;

procedure TEST_FM_R_MLT.btnSelTodosGrupoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxGrupoDisp.ClearSelection;

  if lboxGrupoDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxGrupoDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxGrupoDisp.Items.Count - 1 do
           begin
             lboxGrupoSel.Items.Add(lboxGrupoDisp.Items[i]);
             lboxGrupoDisp.Items.Delete(lboxGrupoDisp.ItemIndex);
           end;
       lboxGrupoDisp.Items.Clear;
     end;
end;

procedure TEST_FM_R_MLT.btnSelTodosTamClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxTamDisp.ClearSelection;

  if lboxTamDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTamDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxTamDisp.Items.Count - 1 do
           begin
             lboxTamSel.Items.Add(lboxTamDisp.Items[i]);
             lboxTamDisp.Items.Delete(lboxTamDisp.ItemIndex);
           end;
       lboxTamDisp.Items.Clear;
     end;

end;

procedure TEST_FM_R_MLT.btnTodasEmpSelClick(Sender: TObject);
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

procedure TEST_FM_R_MLT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   FreeAndNil(EST_FM_R_MLT);
end;

procedure TEST_FM_R_MLT.FormShow(Sender: TObject);
begin
  inherited;
  tsTamanho.TabVisible :=false;
  tsCor.TabVisible := false;
  tsAlmoxarifado.TabVisible :=false;

  EST_FR_R_MLT_GER.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  EST_FR_R_MLT_GRU.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
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

   // Almoxarifados -------------------------------------------------------------
  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
    begin
    tsAlmoxarifado.TabVisible := true;
    dmGeral.BUS_CD_C_ALM.Close;
    dmGeral.BUS_CD_C_ALM.Data :=
    dmGeral.BUS_CD_C_ALM.DataRequest(
           VarArrayOf([1, '%']));

    if not dmGeral.BUS_CD_C_ALM.IsEmpty then
     begin
       dmGeral.BUS_CD_C_ALM.First;

       while not dmGeral.BUS_CD_C_ALM.eof do
          begin
            lboxAlmDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_ALM.FieldByName('ID_ALMOXARIFADO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_ALM.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_ALM.Next;
          end;
     end;

     dmGeral.BUS_CD_C_ALM.Close;
   end;

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
            lboxGrupoDisp.Items.Add(dmGeral.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString +
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
                lboxCorDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_COR.FieldByName('ID_COR').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_COR.FieldByName('DESCRICAO').AsString);
                dmGeral.BUS_CD_C_COR.Next;
            end;
          end;
          dmGeral.BUS_CD_C_COR.Close;
   end;

   //Tamanho--------------------------------------------------------------------
   if (dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean) then
      begin
         tsTamanho.TabVisible := true;
         dmGeral.BUS_CD_C_TAM.Close;
         dmGeral.BUS_CD_C_TAM.Data := dmGeral.BUS_CD_C_TAM.DataRequest(VarArrayOf([1, '%']));

         if not dmGeral.BUS_CD_C_TAM.IsEmpty then
          begin
            dmGeral.BUS_CD_C_TAM.First;
            while not dmGeral.BUS_CD_C_TAM.eof do
              begin
                lboxTamDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_TAM.FieldByName('ID_TAMANHO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_TAM.FieldByName('DESCRICAO').AsString);
                dmGeral.BUS_CD_C_TAM.Next;
            end;
          end;
          dmGeral.BUS_CD_C_TAM.Close;

      end;
end;

procedure TEST_FM_R_MLT.lboxAlmDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxAlmDisp.ItemIndex > - 1 then
     begin
       lboxAlmSel.Items.Add(lboxAlmDisp.Items[lboxAlmDisp.ItemIndex]);
       lboxAlmDisp.Items.Delete(lboxAlmDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_MLT.lboxAlmSelDblClick(Sender: TObject);
begin
  inherited;
   if lboxAlmSel.ItemIndex > -1 then
     begin
       lboxAlmDisp.Items.Add(lboxAlmSel.Items[lboxAlmSel.ItemIndex]);
       lboxAlmSel.Items.Delete(lboxAlmSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_MLT.lboxCorDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxCorDisp.ItemIndex > -1 then
     begin
       lboxCorSel.Items.Add(lboxCorDisp.Items[lboxCorDisp.ItemIndex]);
       lboxCorDisp.Items.Delete(lboxCorDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_MLT.lboxCorSelDblClick(Sender: TObject);
begin
  inherited;
   if lboxCorSel.ItemIndex > -1 then
     begin
       lboxCorDisp.Items.Add(lboxCorSel.Items[lboxCorSel.ItemIndex]);
       lboxCorSel.Items.Delete(lboxCorSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_MLT.lboxEmpDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpDisp.ItemIndex > - 1 then
  begin
   lboxEmpSel.Items.Add(lboxEmpDisp.Items[lboxEmpDisp.ItemIndex]);
   lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
  end;
end;

procedure TEST_FM_R_MLT.lboxEmpSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpSel.ItemIndex > -1 then
   begin
     lboxEmpDisp.Items.Add(lboxEmpSel.Items[lboxEmpSel.ItemIndex]);
     lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
   end;
end;

procedure TEST_FM_R_MLT.lboxGrupoDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxGrupoDisp.ItemIndex > - 1 then
     begin
       lboxGrupoSel.Items.Add(lboxGrupoDisp.Items[lboxGrupoDisp.ItemIndex]);
       lboxGrupoDisp.Items.Delete(lboxGrupoDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_MLT.lboxGrupoSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxGrupoSel.ItemIndex > -1 then
   begin
     lboxGrupoDisp.Items.Add(lboxGrupoSel.Items[lboxGrupoSel.ItemIndex]);
     lboxGrupoSel.Items.Delete(lboxGrupoSel.ItemIndex);
   end;
end;

procedure TEST_FM_R_MLT.lboxItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
        PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
        PSQ_FM_X_ITE.ShowModal;
        if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxItens,7,StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0)) then
                begin
                  lboxItens.Items.Add(StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,7,0) +
                                             ' - ' + PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_ITE.Free;
     end;
end;

procedure TEST_FM_R_MLT.lboxTamDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxTamDisp.ItemIndex > -1 then
     begin
       lboxTamSel.Items.Add(lboxTamDisp.Items[lboxTamDisp.ItemIndex]);
       lboxTamDisp.Items.Delete(lboxTamDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_MLT.lboxTamSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxTamSel.ItemIndex > -1 then
   begin
     lboxTamDisp.Items.Add(lboxTamSel.Items[lboxTamSel.ItemIndex]);
     lboxTamSel.Items.Delete(lboxTamSel.ItemIndex);
   end;
end;

end.
