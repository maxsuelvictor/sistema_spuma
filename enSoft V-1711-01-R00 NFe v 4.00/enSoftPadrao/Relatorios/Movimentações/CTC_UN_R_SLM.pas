unit CTC_UN_R_SLM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, JvToolEdit, Vcl.Mask,
  JvExMask, Vcl.ComCtrls, Vcl.Menus, frxExportXLS, frxClass, frxExportPDF,
  frxDBSet, Data.DB, Datasnap.DBClient;

type
  TCTC_FM_R_SLM = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsFornecedores: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxResponsaveis: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    Label4: TLabel;
    txtobra: TJvComboEdit;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmExcluirResponsavel: TPopupMenu;
    btnRemoverRegistroResponsavel: TMenuItem;
    CTC_FR_R_SLM: TfrxReport;
    CTC_DB_R_SLM: TfrxDBDataset;
    CTC_DB_R_SLM_ITE: TfrxDBDataset;
    CTC_PD_R_SLM: TfrxPDFExport;
    CTC_XL_R_SLM: TfrxXLSExport;
    txtDescricaoObra: TLabel;
    CTC_CD_R_SLM: TClientDataSet;
    CTC_CD_R_SLM_ITE: TClientDataSet;
    CTC_CD_R_SLMid_controle: TIntegerField;
    CTC_CD_R_SLMdata: TDateField;
    CTC_CD_R_SLMid_responsavel: TIntegerField;
    CTC_CD_R_SLMid_obra: TIntegerField;
    CTC_CD_R_SLMobservacao: TWideStringField;
    CTC_CD_R_SLMid_empresa: TIntegerField;
    CTC_CD_R_SLMint_nomeresp: TWideStringField;
    CTC_CD_R_SLMint_emprazao: TWideStringField;
    CTC_CD_R_SLMCTC_SQ_R_SLM_ITE: TDataSetField;
    CTC_CD_R_SLM_ITEid_controle: TIntegerField;
    CTC_CD_R_SLM_ITEid_item: TIntegerField;
    CTC_CD_R_SLM_ITEqtde: TFloatField;
    CTC_CD_R_SLM_ITEobservacao: TWideStringField;
    CTC_CD_R_SLM_ITEint_nomeite: TWideStringField;
    CTC_CD_R_SLM_ITEint_nomeund: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure txtobraButtonClick(Sender: TObject);
    procedure txtobraExit(Sender: TObject);
    procedure lboxResponsaveisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnRemoverRegistroResponsavelClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;
    var
      xOpcoes, xCondEmpresa, xCondResponsavel,xCondObra:STRING;
  public
    { Public declarations }
  end;

var
  CTC_FM_R_SLM: TCTC_FM_R_SLM;

implementation

{$R *.dfm}

uses uDmGeral, uDmCtc, enFunc, PSQ_UN_X_OBR, PSQ_UN_X_FUN, enConstantes;

procedure TCTC_FM_R_SLM.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TCTC_FM_R_SLM.btnRemoverRegistroResponsavelClick(Sender: TObject);
begin
  inherited;
  if lboxResponsaveis.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxResponsaveis.DeleteSelected;
end;

procedure TCTC_FM_R_SLM.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TCTC_FM_R_SLM.ExibirRel;
var
  rDtaIni, rDtaFin,rFornecedor, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  // Período
  rDtaIni := deInicial.Text;
  rDtaFin := deFinal.Text;

  PreencherCondicao;

  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

  CTC_CD_R_SLM.Close;
  CTC_CD_R_SLM.Data :=
    CTC_CD_R_SLM.DataRequest(
      VarArrayOf([rDtaIni,rDtaFin,txtobra.Text,xCondEmpresa,xCondResponsavel]));

  if not CTC_CD_R_SLM.IsEmpty then
    begin
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(CTC_FR_R_SLM.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;
      dmGeral.BusCodigoRevListMestre(true,false,CTC_FR_R_SLM.Name,xCodLme,xRevLme,nil);
      CTC_FR_R_SLM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
      CTC_FR_R_SLM.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
      CTC_FR_R_SLM.Variables['Opcoes'] := QuotedStr(xOpcoes);
      CTC_FR_R_SLM.PrepareReport();
      CTC_FR_R_SLM.ShowReport();
    end
  else
    ShowMessage('Nenhum registro foi encontrado.');
end;

procedure TCTC_FM_R_SLM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CTC_FM_R_SLM);
end;

procedure TCTC_FM_R_SLM.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  //lbxRelatoriosClick(self);

  //txtobra.Visible := dmgeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean;

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
end;

procedure TCTC_FM_R_SLM.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
    begin
      lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
      lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
    end;
end;

procedure TCTC_FM_R_SLM.lboxResponsaveisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxResponsaveis,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0)) then
                begin
                  lboxResponsaveis.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TCTC_FM_R_SLM.menuItemEmpresasClick(Sender: TObject);
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

procedure TCTC_FM_R_SLM.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesResponsavel:string;
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
                 opcoesEmpresa +'                '+lboxEmpresaSelecionada.Items[i] + #13+#10;
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
  // Fornecedores --------------------------------------------------------------
  xCondResponsavel := '';
  if lboxResponsaveis.Count > 0 then
     begin
       for i := 0 to lboxResponsaveis.Count - 1 do
          begin
            if xCondResponsavel <> '' then
               begin
                 xCondResponsavel :=
                 xCondResponsavel + ',' +''''+trim(copy(lboxResponsaveis.Items[i],1,6))+'''';
                 opcoesResponsavel :=
                 opcoesResponsavel +'                    '+lboxResponsaveis.Items[i] + #13+#10;
               end;
            if xCondResponsavel = '' then
               begin
                 xCondResponsavel :=
                 xCondResponsavel +''''+trim(copy(lboxResponsaveis.Items[i],1,6))+'''';
                 opcoesResponsavel :=
                 opcoesResponsavel + lboxResponsaveis.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
       opcoesResponsavel := 'Todos';
     end;
  // Opções --------------------------------------------------------------------
     xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
     xOpcoes := xOpcoes + 'Período.......: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
     xOpcoes := xOpcoes + 'Obra..........: ' + txtObra.Text+' - '+xCondObra+#13+#10;
     xOpcoes := xOpcoes + 'Empresa.......: ' + opcoesEmpresa+#13+#10;
     xOpcoes := xOpcoes + 'Responsavel...: ' + opcoesResponsavel+#13+#10;
end;

function TCTC_FM_R_SLM.TestarCampos: Boolean;
var
mens: String;
begin
  result := True;
  mens := '';

  if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
    begin
      mens := mens +  '.O período deve ser preenchido.' + #13;
    end;
  if (deInicial.Date >  deFinal.Date) then
    begin
      mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
    end;;
  if txtObra.Text = '' then
    begin
      mens := mens +  '.É necessario selecionar uma obra.' + #13;
    end;
  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end;
end;

procedure TCTC_FM_R_SLM.txtobraButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_OBR := TPSQ_FM_X_OBR.Create(Self);
  PSQ_FM_X_OBR.ShowModal;
  if not PSQ_FM_X_OBR.BUS_CD_C_OBR.IsEmpty then
    begin
      txtobra.Text := PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('id_obra').AsString;
      txtDescricaoObra.Caption := PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('descricao').AsString;
      xCondObra := PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('descricao').AsString;
    end;
  PSQ_FM_X_OBR.Free;
end;

procedure TCTC_FM_R_SLM.txtobraExit(Sender: TObject);
begin
  inherited;
   if txtobra.Text <> '' then
    begin
      dmCtc.BUS_CD_C_OBR.Close;
      dmCtc.BUS_CD_C_OBR.Data :=
        dmCtc.BUS_CD_C_OBR.DataRequest(
          VarArrayOf([0, txtobra.Text,'True']));

      if dmCtc.BUS_CD_C_OBR.IsEmpty then
        begin
          showmessage('Obra não Encontrada!');
          txtobra.Text := '';
        end
      else
        begin
          txtDescricaoObra.Caption := dmCtc.BUS_CD_C_OBR.FieldByName('descricao').AsString;
          xCondObra := dmCtc.BUS_CD_C_OBR.FieldByName('descricao').AsString;
        end;
    end;
end;

end.
