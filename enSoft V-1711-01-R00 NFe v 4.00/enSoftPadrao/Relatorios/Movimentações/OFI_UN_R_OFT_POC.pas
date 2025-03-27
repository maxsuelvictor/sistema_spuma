unit OFI_UN_R_OFT_POC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ImgList, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient, frxClass,
  frxExportPDF, frxDBSet, Vcl.Menus, frxExportXLS;

type
  TOFI_FM_R_OFT_POC = class(TPAD_FM_X_REL)
    Label1: TLabel;
    Label2: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsFuncionario: TTabSheet;
    lblModeloVeiculo: TLabel;
    lboxFuncionario: TListBox;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverEmpresas: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    Label4: TLabel;
    cbbSituacao: TComboBox;
    pmExcluirFuncionario: TPopupMenu;
    btnRemoverRegistroFuncionario: TMenuItem;
    OFI_CD_R_OFV_POC_01: TClientDataSet;
    OFI_XL_R_OFV_POC: TfrxXLSExport;
    OFI_FR_R_OFV_POC_01: TfrxReport;
    OFI_PD_R_OFV_POC: TfrxPDFExport;
    OFI_DB_R_OFV_POC_01: TfrxDBDataset;
    OFI_CD_R_OFV_POC_01_SER: TClientDataSet;
    OFI_CD_R_OFV_POC_01_PRO: TClientDataSet;
    OFI_DB_R_OFV_POC_01_SER: TfrxDBDataset;
    OFI_DB_R_OFV_POC_01_PRO: TfrxDBDataset;
    OFI_CD_R_OFV_POC_02: TClientDataSet;
    OFI_DB_R_OFV_POC_02: TfrxDBDataset;
    OFI_CD_R_OFV_POC_01id_orcamento: TIntegerField;
    OFI_CD_R_OFV_POC_01id_empresa: TIntegerField;
    OFI_CD_R_OFV_POC_01placa: TWideStringField;
    OFI_CD_R_OFV_POC_01km_atual: TIntegerField;
    OFI_CD_R_OFV_POC_01dta_orcamento: TDateField;
    OFI_CD_R_OFV_POC_01dta_validade: TDateField;
    OFI_CD_R_OFV_POC_01id_cliente: TIntegerField;
    OFI_CD_R_OFV_POC_01nome_cliente: TWideStringField;
    OFI_CD_R_OFV_POC_01id_funcionario: TIntegerField;
    OFI_CD_R_OFV_POC_01id_analista: TIntegerField;
    OFI_CD_R_OFV_POC_01id_condicao_pag: TIntegerField;
    OFI_CD_R_OFV_POC_01vlr_servicos: TFMTBCDField;
    OFI_CD_R_OFV_POC_01vlr_produtos: TFMTBCDField;
    OFI_CD_R_OFV_POC_01vlr_terceiro: TFMTBCDField;
    OFI_CD_R_OFV_POC_01des_servicos: TFMTBCDField;
    OFI_CD_R_OFV_POC_01des_produtos: TFMTBCDField;
    OFI_CD_R_OFV_POC_01vlr_total: TFMTBCDField;
    OFI_CD_R_OFV_POC_01status: TIntegerField;
    OFI_CD_R_OFV_POC_01obs: TWideStringField;
    OFI_CD_R_OFV_POC_01doc_cnpj_cpf: TWideStringField;
    OFI_CD_R_OFV_POC_01hor_orcamento: TTimeField;
    OFI_CD_R_OFV_POC_01can_motivo: TWideStringField;
    OFI_CD_R_OFV_POC_01can_data: TDateField;
    OFI_CD_R_OFV_POC_01can_hora: TTimeField;
    OFI_CD_R_OFV_POC_01can_usuario: TIntegerField;
    OFI_CD_R_OFV_POC_01tipo_orcamento: TIntegerField;
    OFI_CD_R_OFV_POC_01chassi: TWideStringField;
    OFI_CD_R_OFV_POC_01int_cpfcnpj: TWideStringField;
    OFI_CD_R_OFV_POC_01int_pessoacli: TIntegerField;
    OFI_CD_R_OFV_POC_01int_nomecli: TWideStringField;
    OFI_CD_R_OFV_POC_01int_telfix: TWideStringField;
    OFI_CD_R_OFV_POC_01int_telmov: TWideStringField;
    OFI_CD_R_OFV_POC_01int_ocvsituacao: TWideMemoField;
    OFI_CD_R_OFV_POC_01int_nomecom: TWideMemoField;
    OFI_CD_R_OFV_POC_01int_placa: TWideStringField;
    OFI_CD_R_OFV_POC_01int_nomevei: TWideStringField;
    OFI_CD_R_OFV_POC_01int_ufcli: TWideStringField;
    OFI_CD_R_OFV_POC_01int_nomecpg: TWideStringField;
    OFI_CD_R_OFV_POC_01int_nomefun: TWideStringField;
    OFI_CD_R_OFV_POC_01OFI_SQ_R_OFV_POC_001_PRO: TDataSetField;
    OFI_CD_R_OFV_POC_01OFI_SQ_R_OFV_POC_001_SER: TDataSetField;
    OFI_CD_R_OFV_POC_01_PROid_orcamento: TIntegerField;
    OFI_CD_R_OFV_POC_01_PROid_sequencia: TIntegerField;
    OFI_CD_R_OFV_POC_01_PROid_item: TIntegerField;
    OFI_CD_R_OFV_POC_01_PROid_busca_item: TWideStringField;
    OFI_CD_R_OFV_POC_01_PROqtde: TFloatField;
    OFI_CD_R_OFV_POC_01_PROvlr_unitario: TFMTBCDField;
    OFI_CD_R_OFV_POC_01_PROvlr_bruto: TFMTBCDField;
    OFI_CD_R_OFV_POC_01_PROper_desconto: TFloatField;
    OFI_CD_R_OFV_POC_01_PROvlr_desconto: TFMTBCDField;
    OFI_CD_R_OFV_POC_01_PROvlr_liquido: TFMTBCDField;
    OFI_CD_R_OFV_POC_01_PROid_terceiro: TIntegerField;
    OFI_CD_R_OFV_POC_01_PROvlr_unitario_orig: TFMTBCDField;
    OFI_CD_R_OFV_POC_01_PROnome_ite: TWideStringField;
    OFI_CD_R_OFV_POC_01_PROint_nomeite: TWideStringField;
    OFI_CD_R_OFV_POC_01_PROint_nomeund: TWideStringField;
    OFI_CD_R_OFV_POC_01_PROint_nomeapl: TWideStringField;
    OFI_CD_R_OFV_POC_01_PROint_nomeref: TWideStringField;
    OFI_CD_R_OFV_POC_01_PROint_tipoitem: TWideStringField;
    OFI_CD_R_OFV_POC_01_SERid_orcamento: TIntegerField;
    OFI_CD_R_OFV_POC_01_SERid_sequencia: TIntegerField;
    OFI_CD_R_OFV_POC_01_SERid_item: TIntegerField;
    OFI_CD_R_OFV_POC_01_SERid_busca_item: TWideStringField;
    OFI_CD_R_OFV_POC_01_SERqtde: TFloatField;
    OFI_CD_R_OFV_POC_01_SERvlr_unitario: TFMTBCDField;
    OFI_CD_R_OFV_POC_01_SERvlr_bruto: TFMTBCDField;
    OFI_CD_R_OFV_POC_01_SERper_desconto: TFloatField;
    OFI_CD_R_OFV_POC_01_SERvlr_desconto: TFMTBCDField;
    OFI_CD_R_OFV_POC_01_SERvlr_liquido: TFMTBCDField;
    OFI_CD_R_OFV_POC_01_SERid_terceiro: TIntegerField;
    OFI_CD_R_OFV_POC_01_SERvlr_unitario_orig: TFMTBCDField;
    OFI_CD_R_OFV_POC_01_SERnome_ite: TWideStringField;
    OFI_CD_R_OFV_POC_01_SERint_nomeite: TWideStringField;
    OFI_CD_R_OFV_POC_01_SERint_nomeund: TWideStringField;
    OFI_CD_R_OFV_POC_01_SERint_nomeapl: TWideStringField;
    OFI_CD_R_OFV_POC_01_SERint_nomeref: TWideStringField;
    OFI_CD_R_OFV_POC_01_SERint_tipoitem: TWideStringField;
    OFI_CD_R_OFV_POC_01_SERint_serterceiro: TBooleanField;
    OFI_CD_R_OFV_POC_02id_orcamento: TIntegerField;
    OFI_CD_R_OFV_POC_02dta_orcamento: TDateField;
    OFI_CD_R_OFV_POC_02dta_validade: TDateField;
    OFI_CD_R_OFV_POC_02id_cliente: TIntegerField;
    OFI_CD_R_OFV_POC_02int_nomecli: TWideStringField;
    OFI_CD_R_OFV_POC_02int_nomecpg: TWideStringField;
    OFI_CD_R_OFV_POC_02id_veiculo: TIntegerField;
    OFI_CD_R_OFV_POC_02int_placa: TWideStringField;
    OFI_CD_R_OFV_POC_02int_nomevei: TWideStringField;
    OFI_CD_R_OFV_POC_02int_ocvsituacao: TWideStringField;
    OFI_CD_R_OFV_POC_02vlr_liquido_ser: TFMTBCDField;
    OFI_CD_R_OFV_POC_02vlr_liquido_pro: TFMTBCDField;
    OFI_CD_R_OFV_POC_02id_funcionario: TIntegerField;
    OFI_CD_R_OFV_POC_02int_nomefun: TWideStringField;
    OFI_FR_R_OFV_POC_02: TfrxReport;
    OFI_FR_R_OFV_POC_03: TfrxReport;
    OFI_FR_R_OFV_POC_04: TfrxReport;
    OFI_FR_R_OFV_POC_05: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxFuncionarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnRemoverRegistroFuncionarioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function TestarCampos:Boolean;
    var
      xCondEmpresa,xCondFuncionario,xOpcoes:string;
  public
    { Public declarations }
  end;

var
  OFI_FM_R_OFT_POC: TOFI_FM_R_OFT_POC;

implementation

{$R *.dfm}

uses uDmGeral, enConstantes, enFunc, PSQ_UN_X_FUN;

procedure TOFI_FM_R_OFT_POC.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
       ExibirRel;
     end;
end;

procedure TOFI_FM_R_OFT_POC.btnRemoverRegistroFuncionarioClick(Sender: TObject);
begin
  inherited;
  if lboxFuncionario.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxFuncionario.DeleteSelected;
end;

procedure TOFI_FM_R_OFT_POC.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TOFI_FM_R_OFT_POC.ExibirRel;
var
  rTipoData, rDtaIni, rDtaFin, rSituacao, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   rDtaIni := '';
   if (deInicial.Text <> '  /  /    ') then
     begin
      rDtaIni := deInicial.Text;
     end;
   rDtaFin := '';
   if (deFinal.Text <> '  /  /    ') then
     begin
      rDtaFin := deFinal.Text;
     end;

   rSituacao := '';
   if (cbbSituacao.ItemIndex <>3) then
     begin
       rSituacao := cbbSituacao.ItemIndex.ToString(cbbSituacao.ItemIndex);
     end;

   PreencherCondicao;

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Detalhado') then
      begin
        OFI_CD_R_OFV_POC_01.Active:= False;
        OFI_CD_R_OFV_POC_01.Close;
        OFI_CD_R_OFV_POC_01.Data :=
                OFI_CD_R_OFV_POC_01.DataRequest(
                      VarArrayOf([rDtaIni,rDtaFin,xCondFuncionario,rSituacao,xCondEmpresa,'2']));

        if not OFI_CD_R_OFV_POC_01.IsEmpty then
           begin
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
                begin
                   LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_POC_01.FindObject('imgEmpresa1'));
                   if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;

             dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_POC_01.Name,xCodLme,xRevLme,nil);
             OFI_FR_R_OFV_POC_01.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             OFI_FR_R_OFV_POC_01.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
             OFI_FR_R_OFV_POC_01.Variables['Opcoes'] := QuotedStr(xOpcoes);
             OFI_FR_R_OFV_POC_01.PrepareReport();
             OFI_FR_R_OFV_POC_01.ShowReport();
           end
        else
           begin
             ShowMessage('Nenhum registro foi encontrado.');
           end;
      end
   else
    begin
      OFI_CD_R_OFV_POC_02.Active:= False;
      OFI_CD_R_OFV_POC_02.Close;
      OFI_CD_R_OFV_POC_02.Data :=
              OFI_CD_R_OFV_POC_02.DataRequest(
                    VarArrayOf([rDtaIni,rDtaFin,xCondFuncionario,rSituacao,xCondEmpresa,'2']));
      if not OFI_CD_R_OFV_POC_02.IsEmpty then
         begin
           PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
           if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Resumido') then
             begin
                 if FileExists(PathImg) then
                   begin
                     LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_POC_02.FindObject('imgEmpresa2'));
                     if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;
                 dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_POC_02.Name,xCodLme,xRevLme,nil);
                 OFI_FR_R_OFV_POC_02.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                 OFI_FR_R_OFV_POC_02.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                 OFI_FR_R_OFV_POC_02.Variables['Opcoes'] := QuotedStr(xOpcoes);
                 OFI_FR_R_OFV_POC_02.PrepareReport();
                 OFI_FR_R_OFV_POC_02.ShowReport();
             end;

           if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Cliente') then
             begin
               OFI_CD_R_OFV_POC_02.IndexFieldNames := 'ID_CLIENTE;DTA_ORCAMENTO';
                 if FileExists(PathImg) then
                   begin
                     LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_POC_03.FindObject('imgEmpresa2'));
                     if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;
                 dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_POC_03.Name,xCodLme,xRevLme,nil);
                 OFI_FR_R_OFV_POC_03.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                 OFI_FR_R_OFV_POC_03.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                 OFI_FR_R_OFV_POC_03.Variables['Opcoes'] := QuotedStr(xOpcoes);
                 OFI_FR_R_OFV_POC_03.PrepareReport();
                 OFI_FR_R_OFV_POC_03.ShowReport();
             end;

           if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04 - Por Analista') then
             begin
               OFI_CD_R_OFV_POC_02.IndexFieldNames := 'ID_FUNCIONARIO;DTA_ORCAMENTO';
                 if FileExists(PathImg) then
                   begin
                     LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_POC_04.FindObject('imgEmpresa2'));
                     if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;
                 dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_POC_04.Name,xCodLme,xRevLme,nil);
                 OFI_FR_R_OFV_POC_04.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                 OFI_FR_R_OFV_POC_04.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                 OFI_FR_R_OFV_POC_04.Variables['Opcoes'] := QuotedStr(xOpcoes);
                 OFI_FR_R_OFV_POC_04.PrepareReport();
                 OFI_FR_R_OFV_POC_04.ShowReport();
             end;

           if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Por Trator') then
             begin
               OFI_CD_R_OFV_POC_02.IndexFieldNames := 'ID_VEICULO;DTA_ORCAMENTO';
                 if FileExists(PathImg) then
                   begin
                     LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_POC_05.FindObject('imgEmpresa2'));
                     if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;
                 dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_POC_05.Name,xCodLme,xRevLme,nil);
                 OFI_FR_R_OFV_POC_05.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                 OFI_FR_R_OFV_POC_05.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                 OFI_FR_R_OFV_POC_05.Variables['Opcoes'] := QuotedStr(xOpcoes);
                 OFI_FR_R_OFV_POC_05.PrepareReport();
                 OFI_FR_R_OFV_POC_05.ShowReport();
             end;
         end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;
    end;
end;

procedure TOFI_FM_R_OFT_POC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(OFI_FM_R_OFT_POC);
end;

procedure TOFI_FM_R_OFT_POC.FormShow(Sender: TObject);
begin
  inherited;
   lbxRelatorios.ItemIndex := 0;
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

procedure TOFI_FM_R_OFT_POC.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TOFI_FM_R_OFT_POC.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TOFI_FM_R_OFT_POC.lboxFuncionarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFuncionario,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0)) then
                begin
                  lboxFuncionario.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TOFI_FM_R_OFT_POC.menuItemEmpresasClick(Sender: TObject);
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

procedure TOFI_FM_R_OFT_POC.PreencherCondicao;
var
  i: integer;
  opcoesEmpresa,opcoesFuncionario:string;
begin
  xOpcoes :='';
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
                 opcoesEmpresa +'                    '+lboxEmpresaSelecionada.Items[i] + #13+#10;
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

   // Funcionario --------------------------------------------------------------
  xCondFuncionario := '';
  if lboxFuncionario.Count > 0 then
     begin
       for i := 0 to lboxFuncionario.Count - 1 do
          begin
            if xCondFuncionario <> '' then
               begin
                 xCondFuncionario :=
                 xCondFuncionario+ ',' +''''+trim(copy(lboxFuncionario.Items[i],1,6))+'''';
                 opcoesFuncionario :=
                 opcoesFuncionario +'                    '+lboxFuncionario.Items[i] + #13+#10;
               end;
            if xCondFuncionario = '' then
               begin
                 xCondFuncionario :=
                 xCondFuncionario +''''+trim(copy(lboxFuncionario.Items[i],1,6))+'''';
                 opcoesFuncionario :=
                 opcoesFuncionario + lboxFuncionario.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
          opcoesFuncionario := 'Todos';
      end;

   // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Situação..........: ' + cbbSituacao.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Funcionário.......: ' + opcoesFuncionario+#13+#10;
end;

function TOFI_FM_R_OFT_POC.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
    begin
      mens := mens +  '.O período deve ser preenchido.' + #13;
    end
  else
    begin
      if (deInicial.Date >  deFinal.Date) then
        begin
          mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
        end;
    end;

    if lboxEmpresaSelecionada.Count = 0 then
      begin
        mens := mens +  '.É necessário selecionar pelos menos 1 empresa' + #13;
      end;

    if trim(mens) <> '' then
     begin
       ShowMessage('Atenção!' + #13 + mens);
       Result := False;
       exit;
     end;
end;

end.
