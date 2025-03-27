unit PCP_UN_R_RAA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Menus,
  frxClass, frxDBSet, frxExportPDF, frxExportXLS, enFunc, Data.DB,
  Datasnap.DBClient, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TPCP_FM_R_RAA = class(TPAD_FM_X_REL)
    Label1: TLabel;
    Label2: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    pcFiltros: TPageControl;
    tsFornec: TTabSheet;
    Label6: TLabel;
    lboxFornecedores: TListBox;
    tsNCM: TTabSheet;
    Label7: TLabel;
    lboxFabricante: TListBox;
    PCP_XL_M_RAA: TfrxXLSExport;
    PCP_PD_M_RAA: TfrxPDFExport;
    PCP_DB_R_RAA: TfrxDBDataset;
    PCP_FR_R_RAA_ANA: TfrxReport;
    PCP_FR_R_RAA_EMI: TfrxReport;
    pmExcluirFornecedor: TPopupMenu;
    menuRemoverFornecedor: TMenuItem;
    cbbOrdenacao: TComboBox;
    Label4: TLabel;
    pmExcluirFabricante: TPopupMenu;
    menuRemoverFabricante: TMenuItem;
    PCP_DB_R_RAA_ITE: TfrxDBDataset;
    Label3: TLabel;
    txtNroRaa: TEdit;
    PCP_CD_R_RAA: TClientDataSet;
    PCP_CD_R_RAAid_raa: TIntegerField;
    PCP_CD_R_RAAid_empresa: TIntegerField;
    PCP_CD_R_RAAdta_emissao: TDateField;
    PCP_CD_R_RAAcod_lme: TWideStringField;
    PCP_CD_R_RAArev_lme: TWideStringField;
    PCP_CD_R_RAAnro_raa: TWideStringField;
    PCP_CD_R_RAAid_item: TIntegerField;
    PCP_CD_R_RAAdta_recebimento_item: TDateField;
    PCP_CD_R_RAAcodigo_fabrica: TWideStringField;
    PCP_CD_R_RAAid_fornecedor: TIntegerField;
    PCP_CD_R_RAAid_fabricante: TIntegerField;
    PCP_CD_R_RAAqtde_amostra: TFloatField;
    PCP_CD_R_RAAid_setor: TIntegerField;
    PCP_CD_R_RAApergunta_1: TIntegerField;
    PCP_CD_R_RAApergunta_2: TIntegerField;
    PCP_CD_R_RAApergunta_3: TIntegerField;
    PCP_CD_R_RAApergunta_4: TIntegerField;
    PCP_CD_R_RAApergunta_5: TIntegerField;
    PCP_CD_R_RAApergunta_6: TIntegerField;
    PCP_CD_R_RAApergunta_7: TIntegerField;
    PCP_CD_R_RAApergunta_8: TIntegerField;
    PCP_CD_R_RAAresultado: TIntegerField;
    PCP_CD_R_RAAincorpora_item: TIntegerField;
    PCP_CD_R_RAAid_analista: TIntegerField;
    PCP_CD_R_RAAdta_analise: TDateField;
    PCP_CD_R_RAAobservacao: TWideStringField;
    PCP_CD_R_RAAid_cor: TIntegerField;
    PCP_CD_R_RAAid_tamanho: TIntegerField;
    PCP_CD_R_RAAemp_fantasia: TWideStringField;
    PCP_CD_R_RAAemp_endereco: TWideStringField;
    PCP_CD_R_RAAemp_numero: TWideStringField;
    PCP_CD_R_RAAemp_bairro: TWideStringField;
    PCP_CD_R_RAAid_cidade: TWideStringField;
    PCP_CD_R_RAAint_uf: TWideStringField;
    PCP_CD_R_RAAemp_cep: TWideStringField;
    PCP_CD_R_RAAemp_telefone: TWideStringField;
    PCP_CD_R_RAAfornecedor: TWideStringField;
    PCP_CD_R_RAAsetor: TWideStringField;
    PCP_CD_R_RAAfabricante: TWideStringField;
    PCP_CD_R_RAAanalista: TWideStringField;
    PCP_CD_R_RAAdesc_item: TWideMemoField;
    PCP_CD_R_RAAdesc_pergunta_1: TWideMemoField;
    PCP_CD_R_RAAdesc_pergunta_2: TWideMemoField;
    PCP_CD_R_RAAdesc_pergunta_3: TWideMemoField;
    PCP_CD_R_RAAdesc_pergunta_4: TWideMemoField;
    PCP_CD_R_RAAdesc_pergunta_5: TWideMemoField;
    PCP_CD_R_RAAdesc_pergunta_6: TWideMemoField;
    PCP_CD_R_RAAdesc_pergunta_7: TWideMemoField;
    PCP_CD_R_RAAdesc_pergunta_8: TWideMemoField;
    PCP_CD_R_RAAdesc_resultado: TWideMemoField;
    PCP_CD_R_RAAdesc_incorpora_item: TWideMemoField;
    PCP_CD_R_RAAPCP_SQ_R_RAA_ITE: TDataSetField;
    PCP_CD_R_RAAint_nomegru: TWideStringField;
    PCP_CD_R_RAA_ITE: TClientDataSet;
    PCP_CD_R_RAA_ITEid_raa: TIntegerField;
    PCP_CD_R_RAA_ITEid_raa_ite: TIntegerField;
    PCP_CD_R_RAA_ITEacao_necessaria: TWideStringField;
    PCP_CD_R_RAA_ITEid_responsavel: TIntegerField;
    PCP_CD_R_RAA_ITEdta_prazo: TDateField;
    PCP_CD_R_RAA_ITEdta_executado: TDateField;
    PCP_CD_R_RAA_ITEobservacao: TWideStringField;
    PCP_CD_R_RAA_ITEint_nomeres: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure menuRemoverFornecedorClick(Sender: TObject);
    procedure lboxFabricanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure menuRemoverFabricanteClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    function TestarCampos: Boolean;
    procedure PreencherCondicao;
    var
      xOpcoes, xNroRaa, xCondFornecedor, xCondFabricante, xEmpresa: string;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_RAA: TPCP_FM_R_RAA;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FOR;

procedure TPCP_FM_R_RAA.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
    begin
      ExibirRel;
    end;

end;

procedure TPCP_FM_R_RAA.ExibirRel;
var
  rDtaIni, rDtaFin, rOrdenacao, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   // Ordenação
   rOrdenacao := copy(cbbOrdenacao.Text,1,1);

   // Empresa
   xEmpresa := dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   PreencherCondicao;

   //parametros
   // 0 - data inicial
   // 1 - data final
   // 2 - empresa
   // 3 - fornecedor
   // 4 - fabricante
   // 5 - 0 - raa.id_raa, raa.dta_emissao,
   //     1 - raa.dta_emissao, raa.id_raa
   PCP_CD_R_RAA.Close;
   PCP_CD_R_RAA.Data :=
           PCP_CD_R_RAA.DataRequest(
           VarArrayOf([rDtaIni, rDtaFin, xEmpresa ,xCondFornecedor, xCondFabricante, xNroRaa, rOrdenacao]));

   if not PCP_CD_R_RAA.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Relatório de Análise de Amostra - RAA' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_RAA_ANA.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_RAA_ANA.Name,xCodLme,xRevLme,nil);
            PCP_FR_R_RAA_ANA.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

            // PCP_FR_R_RAA_ANA.Variables['Opcoes'] := QuotedStr(xOpcoes);
            PCP_FR_R_RAA_ANA.PrepareReport();
            PCP_FR_R_RAA_ANA.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Relatório de Controle de Emissão de RAA' then
           begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_RAA_EMI.FindObject('imgEmpresa2'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_RAA_EMI.Name,xCodLme,xRevLme,nil);
            PCP_FR_R_RAA_EMI.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

             PCP_FR_R_RAA_EMI.Variables['Opcoes'] := QuotedStr(xOpcoes);
             PCP_FR_R_RAA_EMI.PrepareReport();
             PCP_FR_R_RAA_EMI.ShowReport();
           end;
      end
   else
      ShowMessage('Nenhum registro foi encontrado.');
end;

procedure TPCP_FM_R_RAA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_RAA);
end;

procedure TPCP_FM_R_RAA.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  txtNroRaa.Text := '';
end;

procedure TPCP_FM_R_RAA.lboxFornecedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFornecedores,6,PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString) then
                begin
                  lboxFornecedores.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0) +
                                    ' - ' + PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TPCP_FM_R_RAA.lboxFabricanteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFabricante,6,PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString) then
                begin
                  lboxFabricante.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0) +
                                    ' - ' + PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TPCP_FM_R_RAA.menuRemoverFabricanteClick(Sender: TObject);
begin
  inherited;
  if lboxFabricante.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;
  lboxFabricante.DeleteSelected;
end;

procedure TPCP_FM_R_RAA.menuRemoverFornecedorClick(Sender: TObject);
begin
  inherited;
  if lboxFornecedores.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;
  lboxFornecedores.DeleteSelected;
end;

procedure TPCP_FM_R_RAA.PreencherCondicao;
var
  i: integer;
  Cond: String;
begin

  xNroRaa := '';
  if trim(txtNroRaa.Text) <> '' then
     begin
       xNroRaa := txtNroRaa.Text;
     end;

  // Fornecedor ----------------------------------------------------------------
  xCondFornecedor := '';
  if lboxFornecedores.Count > 0 then
     begin
       for i := 0 to lboxFornecedores.Count - 1 do
          begin
            if xCondFornecedor <> '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor + ',' +''''+trim(copy(lboxFornecedores.Items[i],1,6))+'''';
               end;
            if xCondFornecedor = '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor + ''''+trim(copy(lboxFornecedores.Items[i],1,6))+'''';
               end;
          end;
     end;

  // Fabridante ----------------------------------------------------------------
  xCondFabricante := '';
  if lboxFabricante.Count > 0 then
     begin
       for i := 0 to lboxFabricante.Count - 1 do
          begin
            if xCondFabricante <> '' then
               begin
                 xCondFabricante :=
                 xCondFabricante + ',' +''''+trim(copy(lboxFabricante.Items[i],1,6))+'''';
               end;
            if xCondFabricante = '' then
               begin
                 xCondFabricante :=
                 xCondFabricante + ''''+trim(copy(lboxFabricante.Items[i],1,6))+'''';
               end;
          end;
     end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Ordenação......: ' + cbbOrdenacao.Text + #13+#10;
end;

function TPCP_FM_R_RAA.TestarCampos: Boolean;
var
  mens: String;
begin
  result := true;
  mens := '';

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
    begin
      ShowMessage('O período deve ser preenchido');
      result := false;
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
