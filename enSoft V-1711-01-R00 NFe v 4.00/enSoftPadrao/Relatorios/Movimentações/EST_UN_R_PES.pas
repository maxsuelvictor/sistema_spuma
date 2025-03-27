unit EST_UN_R_PES;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,frxClass, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Menus, Vcl.ComCtrls,
  frxDBSet, frxExportPDF, frxExportXLS, Vcl.CheckLst, Data.DB, Datasnap.DBClient;

type
  TEST_FM_R_PES = class(TPAD_FM_X_REL)
    EST_FR_R_PES_ALM: TfrxReport;
    EST_XL_R_PES: TfrxXLSExport;
    EST_PD_R_PES: TfrxPDFExport;
    PageControl1: TPageControl;
    tsEmpresa: TTabSheet;
    tsGrupo: TTabSheet;
    tsFornecedor: TTabSheet;
    lboxEmpDisp: TListBox;
    lboxEmpSel: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    lboxGruDisp: TListBox;
    lboxGruSel: TListBox;
    Label3: TLabel;
    Label4: TLabel;
    lboxFornecedor: TListBox;
    lblSelecionarFornecedores: TLabel;
    pmEmpSelTodos: TPopupMenu;
    chbECM: TCheckBox;
    Label5: TLabel;
    pmEmpExcluirTodos: TPopupMenu;
    pmGruSelTodos: TPopupMenu;
    pmGruExcluirTodos: TPopupMenu;
    pmForExcluir: TPopupMenu;
    btnEmpSelTodos: TMenuItem;
    btnGruSelTodos: TMenuItem;
    btnEmpExcluirTodos: TMenuItem;
    btnGruExcluirTodos: TMenuItem;
    btnForExcluir: TMenuItem;
    chlSitEst: TCheckListBox;
    EST_DB_R_PES_ALM: TfrxDBDataset;
    EST_CD_R_PES_GER: TClientDataSet;
    EST_CD_R_PES_ALM: TClientDataSet;
    EST_FR_R_PES_GER_PDN: TfrxReport;
    EST_CD_R_PES_GER_PDN: TClientDataSet;
    EST_DB_R_PES_GER_PDN: TfrxDBDataset;
    EST_CD_R_PES_ALM_PDN: TClientDataSet;
    EST_DB_R_PES_ALM_PDN: TfrxDBDataset;
    EST_FR_R_PES_ALM_PDN: TfrxReport;
    Label6: TLabel;
    cbbTipoCusto: TComboBox;
    EST_FR_R_PES_GER: TfrxReport;
    EST_DB_R_PES_GER: TfrxDBDataset;
    chlSitItem: TCheckListBox;
    Label7: TLabel;
    tsItens: TTabSheet;
    lboxItens: TListBox;
    Label8: TLabel;
    pmExcluirItem: TPopupMenu;
    btnRemoverItem: TMenuItem;
    EST_FR_R_PES_ITE: TfrxReport;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEmpSelTodosClick(Sender: TObject);
    procedure btnGruSelTodosClick(Sender: TObject);
    procedure btnEmpExcluirTodosClick(Sender: TObject);
    procedure btnGruExcluirTodosClick(Sender: TObject);
    procedure btnForExcluirClick(Sender: TObject);
    procedure lboxEmpSelDblClick(Sender: TObject);
    procedure lboxGruDispDblClick(Sender: TObject);
    procedure lboxGruSelDblClick(Sender: TObject);
    procedure lboxFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxEmpDispDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure lboxItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverItemClick(Sender: TObject);
  private
    { Private declarations }
    function TestarCampos:Boolean;
    procedure ExibirRel;
    procedure PreencherCondicao;
    procedure OcultarExibirCusto(fastreport: TfrxReport);
    var
      xCondEmpresa,xCondGrupo,xCondFornecedor,xCondSitEst,xCondSitItem,xCondItem,xOpcoes:string;
  public
    { Public declarations }
  end;

var
  EST_FM_R_PES: TEST_FM_R_PES;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_FOR, enConstantes, PSQ_UN_X_ITE;

procedure TEST_FM_R_PES.btnEmpExcluirTodosClick(Sender: TObject);
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


procedure TEST_FM_R_PES.OcultarExibirCusto(fastreport: TfrxReport);
var
  mmCab,mmCam: TfrxmemoView;
begin
   if chbECM.Checked then
      begin
        TfrxMemoView (fastreport.FindComponent('mmCabCusto')).Visible := true;
        TfrxMemoView (fastreport.FindComponent('mmCabVlrTotal')).Visible := true;
        TfrxMemoView (fastreport.FindComponent('mmCamCusto')).Visible := true;
        TfrxMemoView (fastreport.FindComponent('mmCamVlrTotal')).Visible := true;


        TfrxMemoView (fastreport.FindComponent('mmCabTotalEmp')).Visible := true;
        TfrxMemoView (fastreport.FindComponent('mmCabTotalGer')).Visible := true;
        TfrxMemoView (fastreport.FindComponent('mmCamTotalEmp')).Visible := true;
        TfrxMemoView (fastreport.FindComponent('mmCamTotalGer')).Visible := true;
      end
   else
      begin
        TfrxMemoView (fastreport.FindComponent('mmCabCusto')).Visible := false;
        TfrxMemoView (fastreport.FindComponent('mmCabVlrTotal')).Visible := false;
        TfrxMemoView (fastreport.FindComponent('mmCamCusto')).Visible := false;
        TfrxMemoView (fastreport.FindComponent('mmCamVlrTotal')).Visible := false;

        TfrxMemoView (fastreport.FindComponent('mmCabTotalEmp')).Visible := false;
        TfrxMemoView (fastreport.FindComponent('mmCabTotalGer')).Visible := false;
        TfrxMemoView (fastreport.FindComponent('mmCamTotalEmp')).Visible := false;
        TfrxMemoView (fastreport.FindComponent('mmCamTotalGer')).Visible := false;
      end;




end;

procedure TEST_FM_R_PES.btnEmpSelTodosClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
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

procedure TEST_FM_R_PES.btnForExcluirClick(Sender: TObject);
begin
  if lboxFornecedor.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxFornecedor.DeleteSelected;
end;

procedure TEST_FM_R_PES.btnGruExcluirTodosClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxGruSel.ClearSelection;
  if lboxGruSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxGruSel.Items.Count > 0 then
     begin
       for i := 0 to lboxGruSel.Items.Count - 1 do
           begin
             lboxGruDisp.Items.Add(lboxGruSel.Items[i]);
             lboxGruSel.Items.Delete(lboxGruSel.ItemIndex);
           end;
       lboxGruSel.Items.Clear;
     end;

end;

procedure TEST_FM_R_PES.btnGruSelTodosClick(Sender: TObject);
  var
  i: integer;
begin
  inherited;
  lboxGruDisp.ClearSelection;

  if lboxGruDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxGruDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxGruDisp.Items.Count - 1 do
           begin
             lboxGruSel.Items.Add(lboxGruDisp.Items[i]);
             lboxGruDisp.Items.Delete(lboxGruDisp.ItemIndex);
           end;
       lboxGruDisp.Items.Clear;
     end;

end;

procedure TEST_FM_R_PES.btnImprimirClick(Sender: TObject);
begin
  inherited;
   if TestarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TEST_FM_R_PES.btnRemoverItemClick(Sender: TObject);
begin
  inherited;
  if lboxItens.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxItens.DeleteSelected;
end;

procedure TEST_FM_R_PES.ExibirRel;
var
  rImprimirCodigo, rDtaIni, rDtaFin, PathImg: String;
  LogoEmpresa: TfrxPictureView;
  mmCab,mmCam: TfrxmemoView;
begin

  if lbxRelatorios.ItemIndex = -1 then
    begin
     Showmessage('Nenhum relatório foi selecionado.');
     exit
    end;

   PreencherCondicao;


    if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '0 - Geral') or
       (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '4 - Por Item') then
      begin

       EST_CD_R_PES_GER.Close;
       EST_CD_R_PES_GER.Data :=
               EST_CD_R_PES_GER.DataRequest(
                    VarArrayOf([copy(lbxRelatorios.Items[lbxRelatorios.ItemIndex],1,1),xCondEmpresa,xCondGrupo, xCondFornecedor,
                                   xCondSitEst,cbbTipoCusto.ItemIndex,xCondSitItem,xCondItem]));

       if not EST_CD_R_PES_GER.IsEmpty then
          begin

            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
            if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '0 - Geral')  then
              begin
                if FileExists(PathImg) then
                   begin
                      LogoEmpresa := TfrxPictureView(EST_FR_R_PES_GER.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                         LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;
                dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_PES_GER.Name,xCodLme,xRevLme,nil);

                OcultarExibirCusto(EST_FR_R_PES_GER);
                EST_FR_R_PES_GER.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
                EST_FR_R_PES_GER.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
                EST_FR_R_PES_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                EST_FR_R_PES_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
                EST_FR_R_PES_GER.PrepareReport;
                EST_FR_R_PES_GER.ShowReport;
              end;

            if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '4 - Por Item')  then
              begin
                if FileExists(PathImg) then
                   begin
                      LogoEmpresa := TfrxPictureView(EST_FR_R_PES_ITE.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                         LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;
                dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_PES_ITE.Name,xCodLme,xRevLme,nil);

                OcultarExibirCusto(EST_FR_R_PES_ITE);
                EST_FR_R_PES_ITE.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
                EST_FR_R_PES_ITE.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
                EST_FR_R_PES_ITE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                EST_FR_R_PES_ITE.Variables['Opcoes'] := QuotedStr(xOpcoes);
                EST_FR_R_PES_ITE.PrepareReport;
                EST_FR_R_PES_ITE.ShowReport;
              end;
          end
        ELSE
          begin
            ShowMessage('Nenhum registro encontrado.');
          end;
     end;

    if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '1 - Por Almoxarifado') then
      begin

       EST_CD_R_PES_ALM.Close;
       EST_CD_R_PES_ALM.Data :=
               EST_CD_R_PES_ALM.DataRequest(
                    VarArrayOf([lbxRelatorios.ItemIndex,xCondEmpresa,xCondGrupo, xCondFornecedor,
                                   xCondSitEst,xCondSitItem,xCondItem]));

       if not EST_CD_R_PES_ALM.IsEmpty then
          begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(EST_FR_R_PES_ALM.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_PES_ALM.Name,xCodLme,xRevLme,nil);

            OcultarExibirCusto(EST_FR_R_PES_ALM);
            EST_FR_R_PES_ALM.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
            EST_FR_R_PES_ALM.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
            EST_FR_R_PES_ALM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            EST_FR_R_PES_ALM.Variables['Opcoes'] := QuotedStr(xOpcoes);
            EST_FR_R_PES_ALM.PrepareReport();
            EST_FR_R_PES_ALM.ShowReport;
          end
        ELSE
          begin
            ShowMessage('Nenhum registro encontrado.');
          end;
      end;

        if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Geral com Estoque Pendente') then
          begin

           EST_CD_R_PES_GER_PDN.Close;
           EST_CD_R_PES_GER_PDN.Data :=
                   EST_CD_R_PES_GER_PDN.DataRequest(
                        VarArrayOf([lbxRelatorios.ItemIndex,xCondEmpresa,xCondGrupo, xCondFornecedor,
                                       xCondSitEst,xCondSitItem,xCondItem]));

           if not EST_CD_R_PES_GER_PDN.IsEmpty then
              begin
                PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                if FileExists(PathImg) then
                   begin
                      LogoEmpresa := TfrxPictureView(EST_FR_R_PES_GER_PDN.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                         LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;
                dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_PES_GER_PDN.Name,xCodLme,xRevLme,nil);

                OcultarExibirCusto(EST_FR_R_PES_GER_PDN);
                EST_FR_R_PES_GER_PDN.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
                EST_FR_R_PES_GER_PDN.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
                EST_FR_R_PES_GER_PDN.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                EST_FR_R_PES_GER_PDN.Variables['Opcoes'] := QuotedStr(xOpcoes);
                EST_FR_R_PES_GER_PDN.PrepareReport();
                EST_FR_R_PES_GER_PDN.ShowReport;
              end
            ELSE
              begin
                ShowMessage('Nenhum registro encontrado.');
              end;
          end;

          if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '3 - Estoque Pendente - Por Almoxarifado') then
          begin

           EST_CD_R_PES_ALM_PDN.Close;
           EST_CD_R_PES_ALM_PDN.Data :=
                   EST_CD_R_PES_ALM_PDN.DataRequest(
                        VarArrayOf([lbxRelatorios.ItemIndex,xCondEmpresa,xCondGrupo, xCondFornecedor,
                                       xCondSitEst,xCondSitItem,xCondItem]));

           if not EST_CD_R_PES_ALM_PDN.IsEmpty then
              begin
                PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                if FileExists(PathImg) then
                   begin
                      LogoEmpresa := TfrxPictureView(EST_FR_R_PES_ALM_PDN.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                         LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;
                dmGeral.BusCodigoRevListMestre(true,false,EST_FR_R_PES_ALM_PDN.Name,xCodLme,xRevLme,nil);

                OcultarExibirCusto(EST_FR_R_PES_ALM_PDN);
                EST_FR_R_PES_ALM_PDN.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
                EST_FR_R_PES_ALM_PDN.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
                EST_FR_R_PES_ALM_PDN.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                EST_FR_R_PES_ALM_PDN.Variables['Opcoes'] := QuotedStr(xOpcoes);
                EST_FR_R_PES_ALM_PDN.PrepareReport();
                EST_FR_R_PES_ALM_PDN.ShowReport;
              end
            ELSE
              begin
                ShowMessage('Nenhum registro encontrado.');
              end;
          end;
end;

procedure TEST_FM_R_PES.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(EST_FM_R_PES);
end;

procedure TEST_FM_R_PES.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.Clear;
  lbxRelatorios.Items.Add('0 - Geral');
  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
    begin
      lbxRelatorios.Items.Add('1 - Por Almoxarifado');
    end;
  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true then
    begin
      lbxRelatorios.Items.Add('2 - Geral com Estoque Pendente');
      if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean = true then
        begin
          lbxRelatorios.Items.Add('3 - Estoque Pendente - Por Almoxarifado');
        end;
    end;
  lbxRelatorios.Items.Add('4 - Por Item');
  lbxRelatorios.ItemIndex := 0;

  chlSitEst.Checked[0]:= true;
  chlSitEst.Checked[1]:= true;
  chlSitEst.Checked[2]:= true;

  chlSitItem.Checked[0]:= true;
  chlSitItem.Checked[1]:= true;

  EST_FR_R_PES_GER.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  EST_FR_R_PES_ALM.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  EST_FR_R_PES_GER_PDN.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  EST_FR_R_PES_ALM_PDN.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
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
            lboxGruDisp.Items.Add(dmGeral.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_GRU.Next;
          end;
     end;
  dmGeral.BUS_CD_C_GRU.Close;








end;

procedure TEST_FM_R_PES.lboxEmpDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxEmpDisp.ItemIndex > - 1 then
     begin
       lboxEmpSel.Items.Add(lboxEmpDisp.Items[lboxEmpDisp.ItemIndex]);
       lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_PES.lboxEmpSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpSel.ItemIndex > -1 then
     begin
       lboxEmpDisp.Items.Add(lboxEmpSel.Items[lboxEmpSel.ItemIndex]);
       lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_PES.lboxFornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFornecedor,7,StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,7,0)) then
                begin
                  lboxFornecedor.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,7,0) +
                                             ' - ' + PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TEST_FM_R_PES.lboxGruDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxGruDisp.ItemIndex > - 1 then
     begin
       lboxGruSel.Items.Add(lboxGruDisp.Items[lboxGruDisp.ItemIndex]);
       lboxGruDisp.Items.Delete(lboxGruDisp.ItemIndex);
     end;
end;

procedure TEST_FM_R_PES.lboxGruSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxGruSel.ItemIndex > -1 then
     begin
       lboxGruDisp.Items.Add(lboxGruSel.Items[lboxGruSel.ItemIndex]);
       lboxGruSel.Items.Delete(lboxGruSel.ItemIndex);
     end;
end;

procedure TEST_FM_R_PES.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
  cbbTipoCusto.Visible := false;

  if lbxRelatorios.ItemIndex = 0 then
     cbbTipoCusto.Visible := true;
end;

procedure TEST_FM_R_PES.lboxItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
        PSQ_FM_X_ITE.ShowModal;
        if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxItens,7,StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,7,0)) then
                begin
                  lboxItens.Items.Add(StrZero(PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,7,0) +
                                             ' - ' + PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_ITE.Free;
     end;
end;

procedure TEST_FM_R_PES.PreencherCondicao;
var
  i: integer;
  opcoesEmpresa,opcoesGrupo,opcoesFornecedor,opcoesSitEst,opcoesSitItem,opcoesTipoCusto,opcoesItem:string;
begin
  // Empresas ------------------------------------------------------------------
  xCondEmpresa := '';
  if lboxEmpSel.Count > 0 then
     begin
       for i := 0 to lboxEmpSel.Count - 1 do
          begin
            if xCondEmpresa <> '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa + ',' +''''+trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa +'                      '+lboxEmpSel.Items[i] + #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpSel.Items[i] + #13+#10;
               end;
          end;
     end;


    // Grupos de Itens -----------------------------------------------------------
  xCondGrupo := '';
  if lboxGruSel.Count > 0 then
    begin
      if lboxGruDisp.Count > 0 then
        begin
          for i := 0 to lboxGruSel.Count - 1 do
            begin
             if xCondGrupo <> '' then
               begin
                 xCondGrupo :=
                 xCondGrupo + ','+trim(copy(lboxGruSel.Items[i],1,11));
                 opcoesGrupo :=
                 opcoesGrupo +'                      '+lboxGruSel.Items[i] + #13+#10;
               end;
            if xCondGrupo = '' then
               begin
                 xCondGrupo :=
                 xCondGrupo +trim(copy(lboxGruSel.Items[i],1,11));
                 opcoesGrupo :=
                 opcoesGrupo + lboxGruSel.Items[i] + #13+#10;
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

  // Fornecedores --------------------------------------------------------------
  xCondFornecedor := '';
  if lboxFornecedor.Count > 0 then
     begin
       for i := 0 to lboxFornecedor.Count - 1 do
          begin
            if xCondFornecedor <> '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor + ',' +''''+trim(copy(lboxFornecedor.Items[i],1,7))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor +'                      '+lboxFornecedor.Items[i] + #13+#10;
               end;
            if xCondFornecedor = '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor +''''+trim(copy(lboxFornecedor.Items[i],1,7))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor + lboxFornecedor.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
       opcoesFornecedor := 'Todos';
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

   xCondSitItem := '';
   opcoesSitEst := '';
   for i := 0 to chlSitItem.Count-1 do
     begin
       if chlSitItem.Checked[i] then
         begin
           if opcoesSitItem <> '' then
             begin
              opcoesSitItem :=
              opcoesSitItem +','+chlSitItem.Items[i];
             end
           else
             begin
              opcoesSitItem :=
              opcoesSitItem +chlSitItem.Items[i];
             end;
            xCondSitItem := xCondSitItem + IntToStr(i);
         end;
     end;


   // Item --------------------------------------------------------------
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
                 opcoesItem +'                      '+lboxItens.Items[i] + #13+#10;
               end;
            if xCondItem = '' then
               begin
                 xCondItem :=
                 xCondItem +''''+trim(copy(lboxItens.Items[i],1,7))+'''';
                 opcoesItem :=
                 opcoesItem + lboxItens.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
       opcoesItem := 'Todos';
     end;



   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Empresa.............: ' + opcoesEmpresa + #13+#10;
   xOpcoes := xOpcoes + 'Grupo...............: ' + opcoesGrupo +#13+#10;
   xOpcoes := xOpcoes + 'Item................: ' + opcoesItem +#13+#10;
   xOpcoes := xOpcoes + 'Fornecedor..........: ' + opcoesFornecedor +#13+#10;
   xOpcoes := xOpcoes + 'Situação Estoque....: ' + opcoesSitEst +#13+#10;
   xOpcoes := xOpcoes + 'Situação Item.......: ' + opcoesSitItem +#13+#10;
   if chbECM.Checked then
     begin
       xOpcoes := xOpcoes + 'Exibir Custo Médio..: ' + 'Sim' +#13+#10;
     end
   else
     begin
       xOpcoes := xOpcoes + 'Exibir Custo Médio..: ' + 'Não' +#13+#10;
     end;

   if cbbTipoCusto.Visible = true then
      xOpcoes := xOpcoes + 'Tipo custo.......: ' + opcoesTipoCusto +#13+#10;
end;



function TEST_FM_R_PES.TestarCampos: Boolean;
var
  mens: String;
  I: Integer;
  sitEst:Boolean;
begin
  result := True;
  mens := '';

  sitEst := false;
  for I := 0 to chlSitEst.Count-1 do
    begin
      if chlSitEst.Checked[i] then
        begin
          sitEst := true;
          break;
        end;
    end;

  if sitEst = false then
    begin
      mens := mens + 'É necessário selecionar pelo menos uma situação de estoque.' + #13;
    end;


  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end;
end;



end.
