unit FIN_UN_R_CSC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ImgList, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls,
  Vcl.Menus, frxExportXLS, frxClass, frxExportPDF, frxDBSet, Data.DB,
  Datasnap.DBClient;

type
  TFIN_FM_R_CSC = class(TPAD_FM_X_REL)
    lblSemCompra: TLabel;
    txtDias: TEdit;
    lblDias: TLabel;
    pcFiltros: TPageControl;
    tsSituacao: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    lboxSituacaoDisp: TListBox;
    lboxSituacaoSel: TListBox;
    pmSelSituacao: TPopupMenu;
    MenuItemSituacoes: TMenuItem;
    pmRemoverSituacao: TPopupMenu;
    btnRemoverSituacao: TMenuItem;
    FIN_FR_R_CSC_PER: TfrxReport;
    FIN_DB_R_CSC: TfrxDBDataset;
    FIN_PD_R_CSC: TfrxPDFExport;
    FIN_XL_R_CSC: TfrxXLSExport;
    cbbStatus: TComboBox;
    cbbTipoCliente: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    FIN_FR_R_CSC_2: TfrxReport;
    FIN_CD_R_CSC: TClientDataSet;
    tsEmpresa: TTabSheet;
    tsCidade: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    lblCidadeSel: TLabel;
    lboxCidadeSel: TListBox;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmRemoverCidades: TPopupMenu;
    btnRemoverCidade: TMenuItem;
    btnRemoverTodasCidades: TMenuItem;
    FIN_FR_R_CSC_____: TfrxReport;
    FIN_CD_R_CSC_EMP: TClientDataSet;
    FIN_DB_R_CSC_EMP: TfrxDBDataset;
    FIN_FR_R_CSC_CDR: TfrxReport;
    tsVendedor: TTabSheet;
    lboxFuncionarioSel: TListBox;
    Label5: TLabel;
    pmRemoverVnd: TPopupMenu;
    btnRemoverVnd: TMenuItem;
    btnRemoverTodosVnd: TMenuItem;
    txtDiaMaxSemCompras: TEdit;
    Label7: TLabel;
    FIN_FR_R_CSC: TfrxReport;
    FIN_CD_R_CSCRepresentante: TWideStringField;
    FIN_CD_R_CSCCódcliente: TIntegerField;
    FIN_CD_R_CSCnome: TWideStringField;
    FIN_CD_R_CSCFixo: TWideStringField;
    FIN_CD_R_CSCCelular: TWideStringField;
    FIN_CD_R_CSCendereco: TWideStringField;
    FIN_CD_R_CSCnumero: TWideStringField;
    FIN_CD_R_CSCint_nomecid: TWideStringField;
    FIN_CD_R_CSCÚltvenda: TDateField;
    FIN_CD_R_CSCid_vendedor: TIntegerField;
    FIN_CD_R_CSCemail: TWideStringField;
    FIN_CD_R_CSCativo: TBooleanField;
    FIN_CD_R_CSCqtde_dias_sem_compras: TIntegerField;
    FIN_CD_R_CSCint_situacao: TWideStringField;
    FIN_CD_R_CSCint_sexo: TWideStringField;
    FIN_CD_R_CSCint_tipocliente: TWideStringField;
    FIN_CD_R_CSCint_uf: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

    procedure lboxSituacaoDispDblClick(Sender: TObject);
    procedure lboxSituacaoSelDblClick(Sender: TObject);

    procedure MenuItemSituacoesClick(Sender: TObject);
    procedure btnRemoverSituacaoClick(Sender: TObject);

    procedure btnImprimirClick(Sender: TObject);
    procedure txtDiasKeyPress(Sender: TObject; var Key: Char);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure lboxCidadeSelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverCidadeClick(Sender: TObject);
    procedure btnRemoverTodasCidadesClick(Sender: TObject);
    procedure lboxFuncionarioSelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure btnRemoverVndClick(Sender: TObject);
    procedure btnRemoverTodosVndClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;
    var
      xOpcoes,xCondSituacao,xCondEmpresa,xCondCidade,xCondVend: string;
  public
    { Public declarations }
  end;

var
  FIN_FM_R_CSC: TFIN_FM_R_CSC;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, enConstantes, PSQ_UN_X_CID, PSQ_UN_X_FUN;

procedure TFIN_FM_R_CSC.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TFIN_FM_R_CSC.btnRemoverCidadeClick(Sender: TObject);
begin
  inherited;
  if lboxCidadeSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  lboxCidadeSel.DeleteSelected;
end;

procedure TFIN_FM_R_CSC.btnRemoverSituacaoClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxSituacaoSel.ClearSelection;

  if lboxSituacaoSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSituacaoSel.Items.Count > 0 then
     begin
       for i := 0 to lboxSituacaoSel.Items.Count - 1 do
           begin
             lboxSituacaoDisp.Items.Add(lboxSituacaoSel.Items[i]);
             lboxSituacaoSel.Items.Delete(lboxSituacaoSel.ItemIndex);
           end;
       lboxSituacaoSel.Items.Clear;
     end;
end;




procedure TFIN_FM_R_CSC.btnRemoverTodasCidadesClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxCidadeSel.ClearSelection;

  if lboxCidadeSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCidadeSel.Items.Count > 0 then
     begin
       for i := 0 to lboxCidadeSel.Items.Count - 1 do
           begin
             lboxCidadeSel.Items.Delete(lboxCidadeSel.ItemIndex);
           end;
       lboxCidadeSel.Items.Clear;
     end;
end;

procedure TFIN_FM_R_CSC.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFIN_FM_R_CSC.btnRemoverTodosVndClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxFuncionarioSel.ClearSelection;

  if lboxFuncionarioSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxFuncionarioSel.Items.Count > 0 then
     begin
       for i := 0 to lboxFuncionarioSel.Items.Count - 1 do
           begin
             lboxFuncionarioSel.Items.Delete(lboxFuncionarioSel.ItemIndex);
           end;
       lboxFuncionarioSel.Items.Clear;
     end;
end;

procedure TFIN_FM_R_CSC.btnRemoverVndClick(Sender: TObject);
begin
  inherited;
  if lboxFuncionarioSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  lboxFuncionarioSel.DeleteSelected;
end;

procedure TFIN_FM_R_CSC.ExibirRel;
var
  rDias,rDiasMaxSemCompras, rStatus,rTipo,rDataSistema,PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
    begin
      Showmessage('Nenhum relatório foi selecionado.');
      exit;
    end;

  rDias := txtdias.Text;

  rDiasMaxSemCompras := txtDiaMaxSemCompras.Text;

  rStatus := '';

  if (cbbStatus.Text <> 'Todos') then
    begin
      if cbbStatus.Text = 'Ativo' then
        begin
         rStatus := 'True';
        end
      else
        begin
          rStatus := 'False';
        end;
    end;

  rTipo := '';
  if (cbbTipoCliente.Text <> 'Todos') then
    begin
       rTipo := copy(cbbTipoCliente.Text,1,1);
    end;

  //rDataSistema := formatdatetime('dd/mm/yyyy',xDataSis);

  PreencherCondicao;


  FIN_CD_R_CSC.Active:= False;
  FIN_CD_R_CSC.Close;
  FIN_CD_R_CSC.Data :=
         FIN_CD_R_CSC.DataRequest(
                          VarArrayOf([lbxRelatorios.ItemIndex,rDias,rDiasMaxSemCompras,rStatus,rTipo,xCondSituacao,xCondCidade,xCondVend]));


  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Por representante') then
    begin
      if not FIN_CD_R_CSC.IsEmpty then
        begin

          FIN_CD_R_CSC.IndexFieldNames := 'ID_VENDEDOR;qtde_dias_sem_compras';

          PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
          if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Por representante' then
            begin
             if FileExists(PathImg) then
               begin
                 LogoEmpresa := TfrxPictureView(FIN_FR_R_CSC.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
               dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_CSC.Name,xCodLme,xRevLme,nil);
               FIN_FR_R_CSC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
               FIN_FR_R_CSC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
               FIN_FR_R_CSC.Variables['Opcoes'] := QuotedStr(xOpcoes);
               FIN_FR_R_CSC.PrepareReport();
               FIN_FR_R_CSC.ShowReport();
            end;


        end
      else
        begin
          ShowMessage('Nenhum registro encontrado.');
        end;
    end;


  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por UF') then
    begin
      if not FIN_CD_R_CSC.IsEmpty then
        begin

           FIN_CD_R_CSC.IndexFieldNames := 'int_uf;qtde_dias_sem_compras;nome';


           PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

           if FileExists(PathImg) then
             begin
               LogoEmpresa := TfrxPictureView(FIN_FR_R_CSC_CDR.FindObject('imgEmpresa1'));
               if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
             end;
             dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_CSC_CDR.Name,xCodLme,xRevLme,nil);
             FIN_FR_R_CSC_CDR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             FIN_FR_R_CSC_CDR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
             FIN_FR_R_CSC_CDR.Variables['Opcoes'] := QuotedStr(xOpcoes);
             FIN_FR_R_CSC_CDR.PrepareReport();
             FIN_FR_R_CSC_CDR.ShowReport();
        end
      else
        begin
          ShowMessage('Nenhum registro encontrado.');
        end;
    end;

end;

procedure TFIN_FM_R_CSC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_R_CSC);
end;

procedure TFIN_FM_R_CSC.FormShow(Sender: TObject);
begin
  inherited;
   lbxRelatorios.ItemIndex := 0;
   lbxRelatoriosClick(self);

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

  // Situação do Cliente ---------------------------------------------------------
  dmGeral.BUS_PR_X_STC;
  dmGeral.BUS_CD_X_STC.Open;

 if not dmGeral.BUS_CD_X_STC.IsEmpty then
     begin
       dmGeral.BUS_CD_X_STC.First;

       while not dmGeral.BUS_CD_X_STC.eof do
          begin
            lboxSituacaoDisp.Items.Add(StrZero(dmGeral.BUS_CD_X_STC.FieldByName('CODIGO').AsInteger,2,0)+' - '+
                      dmGeral.BUS_CD_X_STC.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_X_STC.Next;
          end;
     end;

 dmGeral.BUS_CD_X_STC.Close;


 txtDias.SetFocus;

end;





procedure TFIN_FM_R_CSC.lboxCidadeSelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
        PSQ_FM_X_CID.ShowModal;
        if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxCidadeSel,Length(trim(PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString))+2,trim(PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString)+' -') then
                begin
                  lboxCidadeSel.Items.Add(trim(PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString) +
                                             ' - ' + PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString+'-'+
                                                     PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('UF').AsString);
                end;
           end;
         PSQ_FM_X_CID.Free;
     end;
end;

procedure TFIN_FM_R_CSC.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CSC.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CSC.lboxSituacaoDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxSituacaoDisp.ItemIndex > - 1 then
     begin
       lboxSituacaoSel.Items.Add(lboxSituacaoDisp.Items[lboxSituacaoDisp.ItemIndex]);
       lboxSituacaoDisp.Items.Delete(lboxSituacaoDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CSC.lboxSituacaoSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxSituacaoSel.ItemIndex > -1 then
     begin
       lboxSituacaoDisp.Items.Add(lboxSituacaoSel.Items[lboxSituacaoSel.ItemIndex]);
       lboxSituacaoSel.Items.Delete(lboxSituacaoSel.ItemIndex);
     end;
end;





procedure TFIN_FM_R_CSC.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
  if ((lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Empresa/Cliente') or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Empresa/Perfil'))   then
    begin
       tsEmpresa.TabVisible:=True;
       pcFiltros.TabIndex := tsEmpresa.TabIndex;
    end
  else
    begin
       tsEmpresa.TabVisible:=False;
       pcFiltros.TabIndex := tsCidade.TabIndex;
    end;

 //  pcFiltros.I
end;

procedure TFIN_FM_R_CSC.lboxFuncionarioSelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFuncionarioSel,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger,6,0)) then
                begin
                  lboxFuncionarioSel.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);

                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TFIN_FM_R_CSC.menuItemEmpresasClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxEmpresas.ClearSelection;

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

procedure TFIN_FM_R_CSC.MenuItemSituacoesClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxSituacaoDisp.ClearSelection;

  if lboxSituacaoDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSituacaoDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxSituacaoDisp.Items.Count - 1 do
           begin
             lboxSituacaoSel.Items.Add(lboxSituacaoDisp.Items[i]);
             lboxSituacaoDisp.Items.Delete(lboxSituacaoDisp.ItemIndex);
           end;
       lboxSituacaoDisp.Items.Clear;
     end;
end;

procedure TFIN_FM_R_CSC.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesSituacao,opcoesEmpresa,opcoesCidade,opcoesVendedor:string;
begin
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
                 opcoesEmpresa +'                           '+lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
          end;
     end;

  // Cidade ----------------------------------------------------------------
  xCondCidade := '';
  if lboxCidadeSel.Count > 0 then
    begin
      for i := 0 to lboxCidadeSel.Count - 1 do
        begin
          if xCondCidade <> '' then
            begin
              xCondCidade :=
              xCondCidade + ',' +''''+trim(copy(lboxCidadeSel.Items[i],1,pos(' - ',lboxCidadeSel.Items[i])-1))+'''';
              opcoesCidade :=
              opcoesCidade +'                           '+lboxCidadeSel.Items[i] + #13+#10;
            end;
          if xCondCidade = '' then
            begin
              xCondCidade :=
              xCondCidade +''''+trim(copy(lboxCidadeSel.Items[i],1,pos(' - ',lboxCidadeSel.Items[i])-1))+'''';
              opcoesCidade :=
              opcoesCidade + lboxCidadeSel.Items[i] + #13+#10;
            end;
        end;
    end
  else
    begin
      opcoesCidade:= 'Todos';
    end;

  // Situação ----------------------------------------------------------------
  xCondSituacao := '';
  if lboxSituacaoSel.Count > 0 then
     begin
      if lboxSituacaoDisp.Count > 0 then
        begin
         for i := 0 to lboxSituacaoSel.Count - 1 do
          begin
            if xCondSituacao <> '' then
               begin
                 xCondSituacao :=
                 xCondSituacao + ',' +''''+trim(copy(lboxSituacaoSel.Items[i],1,2))+'''';
                 opcoesSituacao :=
                 opcoesSituacao +'                           '+lboxSituacaoSel.Items[i] + #13+#10;
               end;
            if xCondSituacao = '' then
               begin
                 xCondSituacao :=
                 xCondSituacao +''''+trim(copy(lboxSituacaoSel.Items[i],1,2))+'''';
                 opcoesSituacao :=
                 opcoesSituacao + lboxSituacaoSel.Items[i] + #13+#10;
               end;
          end;
     end
     else
        begin
          opcoesSituacao:= 'Todos';
        End;
    end
   else
     begin
       opcoesSituacao:= 'Todos';
     end;

   // Vendedor ----------------------------------------------------------------
  xCondVend := '';
  if lboxFuncionarioSel.Count > 0 then
    begin
      for i := 0 to lboxFuncionarioSel.Count - 1 do
        begin
          if xCondVend <> '' then
            begin
              xCondVend :=
              xCondVend + ',' +''''+trim(copy(lboxFuncionarioSel.Items[i],1,6))+'''';
              opcoesVendedor :=
              opcoesVendedor +'                           '+lboxFuncionarioSel.Items[i] + #13+#10;
            end;
          if xCondVend = '' then
            begin
              xCondVend :=
              xCondVend +''''+trim(copy(lboxFuncionarioSel.Items[i],1,6))+'''';
              opcoesVendedor :=
              opcoesVendedor + lboxFuncionarioSel.Items[i] + #13+#10;
            end;
        end;
    end
  else
    begin
      opcoesVendedor:= 'Todos';
    end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;

   if ((lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Empresa/Cliente') or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Empresa/Perfil'))   then
    begin
      xOpcoes := xOpcoes + 'Empresa..................: ' + opcoesEmpresa+#13+#10;
    end;
   xOpcoes := xOpcoes + 'Sem comprar há mais de : ' + txtDias.Text+' dias e menos de '+txtDiaMaxSemCompras.Text + ' dias. '+ #13+#10;
   xOpcoes := xOpcoes + 'Status...................: ' + cbbStatus.Text+#13+#10;
   xOpcoes := xOpcoes + 'Tipo.....................: ' + cbbTipoCliente.Text+#13+#10;
   xOpcoes := xOpcoes + 'Cidade...................: ' + opcoesCidade+#13+#10;
   xOpcoes := xOpcoes + 'Situação.................: ' + opcoesSituacao+#13+#10;
   xOpcoes := xOpcoes + 'Vendedor.................: ' + opcoesVendedor+#13+#10;

end;

function TFIN_FM_R_CSC.TestarCampos: Boolean;
var
mens: String;
begin

  result := True;
  mens := '';

  if (txtdias.Text = '') then
    begin
      mens := mens +  '.Deve ser preenchido a quantidade de dias inicial.' + #13+#10;
    end;

  if ((txtdias.Text <> '') and (StrToInt(txtDias.Text) = 0)) then
    begin
      mens := mens +  '.O número de dias inicial deve ser maior que zero.' + #13+#10;
    end;

  if (txtDiaMaxSemCompras.Text = '') then
    begin
      mens := mens +  '.Deve ser preenchido a quantidade de dias final.' + #13+#10;
    end;

  if ((txtDiaMaxSemCompras.Text <> '') and (StrToInt(txtDiaMaxSemCompras.Text) = 0)) then
    begin
      mens := mens +  '.O número de dias final deve ser maior que zero.' + #13+#10;
    end;


   if ((lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Empresa/Cliente') or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Empresa/Perfil'))   then
    begin
      if (lboxEmpresaSelecionada.Count=0) then
        begin
           mens := mens +  '.Deve-se selecionar pelo menos 1 empresa.' + #13+#10;
        end;
    end;

  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13+#10 + mens);
      Result := False;
      exit;
    end
  else
     begin
        if strtoint(txtdias.Text) > strtoint(txtDiaMaxSemCompras.Text) then
           begin
             ShowMessage('Qtde de dias inicial não pode ser maior que qtde de dias final');
             Result := False;
             exit;
           end;
     end;

end;

procedure TFIN_FM_R_CSC.txtDiasKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  not ( Key in ['0'..'9', Chr(8)] ) then
   Key := #0;
end;

end.
