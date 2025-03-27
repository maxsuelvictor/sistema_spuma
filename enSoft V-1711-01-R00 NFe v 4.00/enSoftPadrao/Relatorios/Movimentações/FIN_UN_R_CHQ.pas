unit FIN_UN_R_CHQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.Menus, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, Data.DB, Datasnap.DBClient;

type
  TFIN_FM_R_CHQ = class(TPAD_FM_X_REL)
    PageControl1: TPageControl;
    tsEmpresa: TTabSheet;
    lboxEmpDisp: TListBox;
    lboxEmpSel: TListBox;
    lblEmpDisp: TLabel;
    lblEmpSel: TLabel;
    tsCliente: TTabSheet;
    lboxClienteDisp: TListBox;
    lblClienteDisp: TLabel;
    lblCliente: TLabel;
    tsLocalTitulo: TTabSheet;
    lboxLocalDisp: TListBox;
    lboxLocalSel: TListBox;
    lblLocalTitDisp: TLabel;
    lblLocalTitSel: TLabel;
    tsPlanoContas: TTabSheet;
    lboxPlanoDisp: TListBox;
    lboxPlanoSel: TListBox;
    lblPlanoDisp: TLabel;
    lblPlanoSel: TLabel;
    tsVendedor: TTabSheet;
    lboxVendedorDisp: TListBox;
    lblVendedor: TLabel;
    cbbOrdenacao: TComboBox;
    Label4: TLabel;
    Label1: TLabel;
    deInicial: TJvDateEdit;
    Label2: TLabel;
    deFinal: TJvDateEdit;
    Label3: TLabel;
    cbbPorData: TComboBox;
    tsSituacao: TTabSheet;
    lboxSitDisp: TListBox;
    lboxSitSel: TListBox;
    lblSitDisp: TLabel;
    lblSitSel: TLabel;
    pmEmpSel: TPopupMenu;
    pmEmpExcluir: TPopupMenu;
    btnEmpSel: TMenuItem;
    btnRemoverEmp: TMenuItem;
    pmExcluirCliente: TPopupMenu;
    btnRemoverCliente: TMenuItem;
    pmLocalSel: TPopupMenu;
    btnLocalSel: TMenuItem;
    pmLocalExcluir: TPopupMenu;
    btnRemoverLocal: TMenuItem;
    pmPlanoSel: TPopupMenu;
    btnPlanoSel: TMenuItem;
    pmPlanoExcluir: TPopupMenu;
    btnRemoverPlano: TMenuItem;
    pmExcluirVendedor: TPopupMenu;
    btnRemoverVend: TMenuItem;
    FIN_FR_R_CHQ: TfrxReport;
    FIN_XL_R_CHQ: TfrxXLSExport;
    FIN_PD_R_CHQ: TfrxPDFExport;
    FIN_DB_R_CHQ: TfrxDBDataset;
    FIN_DB_R_CHQ_MCH: TfrxDBDataset;
    pmSitSel: TPopupMenu;
    pmSitExcluir: TPopupMenu;
    btnSitSel: TMenuItem;
    btnSitExcluir: TMenuItem;
    FIN_CD_R_CHQ: TClientDataSet;
    FIN_CD_R_CHQid_titulo: TIntegerField;
    FIN_CD_R_CHQid_empresa: TIntegerField;
    FIN_CD_R_CHQid_cliente: TIntegerField;
    FIN_CD_R_CHQnum_parcela: TWideStringField;
    FIN_CD_R_CHQdta_emissao: TDateField;
    FIN_CD_R_CHQhistorico: TWideStringField;
    FIN_CD_R_CHQvlr_parcela: TFMTBCDField;
    FIN_CD_R_CHQvlr_original: TFMTBCDField;
    FIN_CD_R_CHQdta_vencimento: TDateField;
    FIN_CD_R_CHQdta_original: TDateField;
    FIN_CD_R_CHQvlr_saldo: TFMTBCDField;
    FIN_CD_R_CHQid_fiscal: TIntegerField;
    FIN_CD_R_CHQorigem: TIntegerField;
    FIN_CD_R_CHQid_forma_pag: TIntegerField;
    FIN_CD_R_CHQche_conta: TIntegerField;
    FIN_CD_R_CHQche_cheque: TIntegerField;
    FIN_CD_R_CHQche_banco: TWideStringField;
    FIN_CD_R_CHQche_emitente: TWideStringField;
    FIN_CD_R_CHQche_agencia: TWideStringField;
    FIN_CD_R_CHQtipo_lancamento: TIntegerField;
    FIN_CD_R_CHQid_local_titulo: TIntegerField;
    FIN_CD_R_CHQid_plano: TWideStringField;
    FIN_CD_R_CHQbol_nosso_numero: TWideStringField;
    FIN_CD_R_CHQcar_taxa: TFloatField;
    FIN_CD_R_CHQcar_motivo_can: TWideStringField;
    FIN_CD_R_CHQcar_dta_can: TDateField;
    FIN_CD_R_CHQcod_lme: TWideStringField;
    FIN_CD_R_CHQrev_lme: TWideStringField;
    FIN_CD_R_CHQseq_nosso_numero: TIntegerField;
    FIN_CD_R_CHQbol_chave: TIntegerField;
    FIN_CD_R_CHQbol_id_conta: TIntegerField;
    FIN_CD_R_CHQcar_taxa_ope: TFloatField;
    FIN_CD_R_CHQcar_n_lote: TWideStringField;
    FIN_CD_R_CHQcar_n_lote_id_resp: TIntegerField;
    FIN_CD_R_CHQcar_n_lote_id_conta: TIntegerField;
    FIN_CD_R_CHQid_baixa: TIntegerField;
    FIN_CD_R_CHQsituacao_chq: TIntegerField;
    FIN_CD_R_CHQid_mch: TIntegerField;
    FIN_CD_R_CHQid_vendedor: TIntegerField;
    FIN_CD_R_CHQcar_id_maquineta: TIntegerField;
    FIN_CD_R_CHQid_credito: TIntegerField;
    FIN_CD_R_CHQint_nomeemp: TWideStringField;
    FIN_CD_R_CHQint_nomecli: TWideStringField;
    FIN_CD_R_CHQint_descsit: TWideMemoField;
    FIN_CD_R_CHQint_nomevend: TWideStringField;
    FIN_CD_R_CHQBUS_SQ_R_CHQ_MCH: TDataSetField;
    FIN_CD_R_CHQ_MCH: TClientDataSet;
    FIN_CD_R_CHQ_MCHvlr_pago: TFMTBCDField;
    FIN_CD_R_CHQ_MCHid_alinea: TWideStringField;
    FIN_CD_R_CHQ_MCHid_controle: TIntegerField;
    FIN_CD_R_CHQ_MCHdta_movimento: TDateField;
    FIN_CD_R_CHQ_MCHid_titulo: TIntegerField;
    FIN_CD_R_CHQ_MCHint_descoperacao: TWideMemoField;
    procedure FormShow(Sender: TObject);
    procedure btnEmpSelClick(Sender: TObject);
    procedure btnRemoverEmpClick(Sender: TObject);
    procedure btnRemoverClienteClick(Sender: TObject);
    procedure btnLocalSelClick(Sender: TObject);
    procedure btnRemoverLocalClick(Sender: TObject);
    procedure btnPlanoSelClick(Sender: TObject);
    procedure btnRemoverPlanoClick(Sender: TObject);
    procedure btnRemoverVendClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lboxEmpDispDblClick(Sender: TObject);
    procedure lboxEmpSelDblClick(Sender: TObject);
    procedure lboxClienteDispKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxLocalDispDblClick(Sender: TObject);
    procedure lboxLocalSelDblClick(Sender: TObject);
    procedure lboxPlanoDispDblClick(Sender: TObject);
    procedure lboxPlanoSelDblClick(Sender: TObject);
    procedure lboxVendedorDispKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSitSelClick(Sender: TObject);
    procedure btnSitExcluirClick(Sender: TObject);
    procedure lboxSitDispDblClick(Sender: TObject);
    procedure lboxSitSelDblClick(Sender: TObject);
    procedure FIN_DB_R_CHQCheckEOF(Sender: TObject; var Eof: Boolean);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;
    var
      xCondEmp,xCondCliente,xCondSit,xCondLocal,xCondPlano,xCondVend,xOpcoes:string;
  public
    { Public declarations }
  end;

var
  FIN_FM_R_CHQ: TFIN_FM_R_CHQ;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, enConstantes, PSQ_UN_X_CLI, PSQ_UN_X_FUN;

procedure TFIN_FM_R_CHQ.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesCliente,opcoesFormaPagamento,opcoesLocalTitulo,
  opcoesPlanoContas, opcoesVendedor,opcoesSituacao:string;
begin

  // Empresas ------------------------------------------------------------------
  xCondEmp := '';
  if lboxEmpSel.Count > 0 then
     begin
       for i := 0 to lboxEmpSel.Count - 1 do
          begin
            if xCondEmp <> '' then
               begin
                 xCondEmp :=
                 xCondEmp + ',' +''''+trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa +'                    '+lboxEmpSel.Items[i] + #13+#10;
               end;
            if xCondEmp = '' then
               begin
                 xCondEmp :=
                 xCondEmp +''''+ trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpSel.Items[i] + #13+#10;
               end;
          end;
     end;

  // Cliente --------------------------------------------------------------
  xCondCliente := '';
  if lboxClienteDisp.Count > 0 then
     begin
       for i := 0 to lboxClienteDisp.Count - 1 do
          begin
            if xCondCliente <> '' then
               begin
                 xCondCliente :=
                 xCondCliente+ ',' +''''+trim(copy(lboxClienteDisp.Items[i],1,6))+'''';
                 opcoesCliente :=
                 opcoesCliente +'                    '+lboxClienteDisp.Items[i] + #13+#10;
               end;
            if xCondCliente = '' then
               begin
                 xCondCliente :=
                 xCondCliente +''''+trim(copy(lboxClienteDisp.Items[i],1,6))+'''';
                 opcoesCliente :=
                 opcoesCliente + lboxClienteDisp.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
          opcoesCliente := 'Todos';
      end;

  // Situação ---------------------------------------------------------
  xCondSit := '';
  if lboxSitSel.Count > 0 then
     begin
    if lboxSitDisp.Count > 0 then
      begin

       for i := 0 to lboxSitSel.Count - 1 do
          begin
            if xCondSit <> '' then
               begin
                 xCondSit :=
                 xCondSit + ',' +''''+trim(copy(lboxSitSel.Items[i],1,1))+'''';
                 opcoesSituacao :=
                 opcoesSituacao +'                    '+lboxSitSel.Items[i] + #13+#10;
               end;
            if xCondSit = '' then
               begin
                 xCondSit :=
                 xCondSit +''''+trim(copy(lboxSitSel.Items[i],1,1))+'''';
                 opcoesSituacao :=
                 opcoesSituacao +lboxSitSel.Items[i] + #13+#10;
               end;
          end;
     end
     else
     begin
       opcoesSituacao :='Todos';
     end;
     end
  else
     begin
        opcoesSituacao :='Todos';
     end;



  // Locais de Títulos ---------------------------------------------------------
  xCondLocal := '';
  if lboxLocalSel.Count > 0 then
     begin
    if lboxLocalDisp.Count > 0 then
      begin

       for i := 0 to lboxLocalSel.Count - 1 do
          begin
            if xCondLocal <> '' then
               begin
                 xCondLocal :=
                 xCondLocal + ',' +''''+trim(copy(lboxLocalSel.Items[i],1,3))+'''';
                 opcoesLocalTitulo :=
                 opcoesLocalTitulo +'                    '+lboxLocalSel.Items[i] + #13+#10;
               end;
            if xCondLocal = '' then
               begin
                 xCondLocal :=
                 xCondLocal +''''+trim(copy(lboxLocalSel.Items[i],1,3))+'''';
                 opcoesLocalTitulo :=
                 opcoesLocalTitulo +lboxLocalSel.Items[i] + #13+#10;
               end;
          end;
     end
     else
     begin
       opcoesLocalTitulo :='Todos';
     end;
     end
  else
     begin
        opcoesLocalTitulo :='Todos';
     end;

  // Planos de Contas ----------------------------------------------------------
  xCondPlano := '';
  if lboxPlanoSel.Count > 0 then
     begin
      if lboxPlanoDisp.Count > 0 then
        begin
       for i := 0 to lboxPlanoSel.Count - 1 do
          begin
            if xCondPlano <> '' then
               begin
                 xCondPlano :=
                 xCondPlano + ',' +''''+trim(copy(lboxPlanoSel.Items[i],1,11))+'''';
                 opcoesPlanoContas :=
                 opcoesPlanoContas +'                    '+lboxPlanoSel.Items[i] + #13+#10;
               end;
            if xCondPlano = '' then
               begin
                 xCondPlano :=
                 xCondPlano +''''+trim(copy(lboxPlanoSel.Items[i],1,11))+'''';
                 opcoesPlanoContas :=
                 opcoesPlanoContas +lboxPlanoSel.Items[i] + #13+#10;
               end;
          end;
     end
     else
      begin
        opcoesPlanoContas := 'Todos';
      end;
     end
  else
     begin
        opcoesPlanoContas := 'Todos';
     end;

    // Vendedores ----------------------------------------------------------------
 xCondVend := '';
  if lboxVendedorDisp.Count > 0 then
     begin
       for i := 0 to lboxVendedorDisp.Count - 1 do
          begin
            if xCondVend <> '' then
               begin
                 xCondVend :=
                 xCondVend + ',' +''''+trim(copy(lboxVendedorDisp.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor +'                           '+lboxVendedorDisp.Items[i]+ #13+#10;
               end;
            if xCondVend = '' then
               begin
                 xCondVend :=
                 xCondVend +''''+trim(copy(lboxVendedorDisp.Items[i],1,6))+'''';
                 opcoesVendedor :=
                 opcoesVendedor + lboxVendedorDisp.Items[i]+ #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesVendedor:= 'Todos';
    end;

   // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Por data de.......: ' + cbbPorData.Text + #13+#10;
   xOpcoes := xOpcoes + 'Ordenação.........: ' + cbbOrdenacao.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Cliente...........: ' + opcoesCliente+#13+#10;
   xOpcoes := xOpcoes + 'Local do Título...: ' + opcoesLocalTitulo+#13+#10;
   xOpcoes := xOpcoes + 'Plano de Contas...: ' + opcoesPlanoContas+#13+#10;
   xOpcoes := xOpcoes + 'Vendedor..........: ' + opcoesVendedor+#13+#10;
end;

procedure TFIN_FM_R_CHQ.ExibirRel;
var
  rTipoData, rDtaIni, rDtaFin, rOrdenacao, PathImg: String;
  rIndexRelatorio:integer;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   // Por Data de Emissão / Vencimento
   rTipoData := copy(cbbPorData.Text,1,1);

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   // Ordenação
   rOrdenacao := copy(cbbOrdenacao.Text,1,1);

   PreencherCondicao;


   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Cheque - Por Situação') then
       begin
         FIN_CD_R_CHQ.Active:= False;
         FIN_CD_R_CHQ.Close;
         FIN_CD_R_CHQ.Data :=
           FIN_CD_R_CHQ.DataRequest(
                VarArrayOf([rTipoData, rDtaIni, rDtaFin, xCondEmp, xCondCliente, xCondSit,
                            xCondLocal, xCondPlano,xCondVend,rOrdenacao]));

         if not FIN_CD_R_CHQ.IsEmpty then
            begin
              PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
              if FileExists(PathImg) then
                 begin
                    LogoEmpresa := TfrxPictureView(FIN_FR_R_CHQ.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                 end;

              dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_CHQ.Name,xCodLme,xRevLme,nil);
              FIN_FR_R_CHQ.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              FIN_FR_R_CHQ.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              FIN_FR_R_CHQ.Variables['Opcoes'] := QuotedStr(xOpcoes);
              FIN_FR_R_CHQ.PrepareReport();
              FIN_FR_R_CHQ.ShowReport();
            end
         else
            begin
               ShowMessage('Nenhum registro foi encontrado.');
            end;
       end;

end;

function TFIN_FM_R_CHQ.TestarCampos: Boolean;
var
  mens:string;
begin
   Result := true;
   mens := '';
   if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
     begin
       mens := mens + 'Período deve ser preenchido.'+#13+#10;
     end;
    if lboxEmpSel.Count = 0 then
     begin
       mens := mens + 'Deve-se selecionar pelo menos 1 empresa.'+#13+#10;
     end;

   if (mens <> '') then
     begin
       Result := false;
       mens := 'Atenção'+#13+#10 + mens;
       ShowMessage(mens);
     end;

end;



procedure TFIN_FM_R_CHQ.btnEmpSelClick(Sender: TObject);
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

procedure TFIN_FM_R_CHQ.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TFIN_FM_R_CHQ.btnLocalSelClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
   lboxLocalDisp.ClearSelection;

  if lboxLocalDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxLocalDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxLocalDisp.Items.Count - 1 do
           begin
             lboxLocalSel.Items.Add(lboxLocalDisp.Items[i]);
             lboxLocalDisp.Items.Delete(lboxLocalDisp.ItemIndex);
           end;
       lboxLocalDisp.Items.Clear;
     end;
end;

procedure TFIN_FM_R_CHQ.btnPlanoSelClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxPlanoDisp.ClearSelection;

  if lboxPlanoDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPlanoDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxPlanoDisp.Items.Count - 1 do
           begin
             lboxPlanoSel.Items.Add(lboxPlanoDisp.Items[i]);
             lboxPlanoDisp.Items.Delete(lboxPlanoDisp.ItemIndex);
           end;
       lboxPlanoDisp.Items.Clear;
     end;
end;

procedure TFIN_FM_R_CHQ.btnRemoverClienteClick(Sender: TObject);
begin
  inherited;
  if lboxClienteDisp.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxClienteDisp.DeleteSelected;
end;

procedure TFIN_FM_R_CHQ.btnRemoverEmpClick(Sender: TObject);
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

procedure TFIN_FM_R_CHQ.btnRemoverLocalClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxLocalSel.ClearSelection;

  if lboxLocalSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxLocalSel.Items.Count > 0 then
     begin
       for i := 0 to lboxLocalSel.Items.Count - 1 do
           begin
             lboxLocalDisp.Items.Add(lboxLocalSel.Items[i]);
             lboxLocalSel.Items.Delete(lboxLocalSel.ItemIndex);
           end;
       lboxLocalSel.Items.Clear;
     end;
end;

procedure TFIN_FM_R_CHQ.btnRemoverPlanoClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxPlanoSel.ClearSelection;

  if lboxPlanoSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPlanoSel.Items.Count > 0 then
     begin
       for i := 0 to lboxPlanoSel.Items.Count - 1 do
           begin
             lboxPlanoDisp.Items.Add(lboxPlanoSel.Items[i]);
             lboxPlanoSel.Items.Delete(lboxPlanoSel.ItemIndex);
           end;
       lboxPlanoSel.Items.Clear;
     end;
end;

procedure TFIN_FM_R_CHQ.btnRemoverVendClick(Sender: TObject);
begin
  inherited;
   if lboxVendedorDisp.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxVendedorDisp.DeleteSelected;
end;

procedure TFIN_FM_R_CHQ.btnSitExcluirClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxSitSel.ClearSelection;

  if lboxSitSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSitSel.Items.Count > 0 then
     begin
       for i := 0 to lboxSitSel.Items.Count - 1 do
           begin
             lboxSitDisp.Items.Add(lboxSitSel.Items[i]);
             lboxSitSel.Items.Delete(lboxSitSel.ItemIndex);
           end;
       lboxSitSel.Items.Clear;
     end;
end;

procedure TFIN_FM_R_CHQ.btnSitSelClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
   lboxSitDisp.ClearSelection;

  if lboxSitDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxSitDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxSitDisp.Items.Count - 1 do
           begin
             lboxSitSel.Items.Add(lboxSitDisp.Items[i]);
             lboxSitDisp.Items.Delete(lboxSitDisp.ItemIndex);
           end;
       lboxSitDisp.Items.Clear;
     end;
end;

procedure TFIN_FM_R_CHQ.FIN_DB_R_CHQCheckEOF(Sender: TObject; var Eof: Boolean);
begin
  inherited;
  if (FIN_CD_R_CHQ.FieldByName('INT_DESCSIT').AsString ='') then
    begin
      FIN_FR_R_CHQ.Variables['situacao'] := QuotedStr('INDEFINIDO');
    end
  else
    begin
       FIN_FR_R_CHQ.Variables['situacao'] := QuotedStr(FIN_CD_R_CHQ.FieldByName('INT_DESCSIT').AsString);
    end;
end;

procedure TFIN_FM_R_CHQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_R_CHQ);
end;

procedure TFIN_FM_R_CHQ.FormShow(Sender: TObject);
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
            lboxEmpDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;


  // Situacao dos Cheques ---------------------------------------------------------
  dmGeral.BUS_PR_X_SIT_CHE;

   while not dmGeral.BUS_CD_X_SIT_CHE.eof do
      begin
        lboxSitDisp.Items.Add(dmGeral.BUS_CD_X_SIT_CHE.FieldByName('CODIGO').AsString +
                                ' - ' + dmGeral.BUS_CD_X_SIT_CHE.FieldByName('DESCRICAO').AsString);
        dmGeral.BUS_CD_X_SIT_CHE.Next;
      end;

  // Locais de Títulos ---------------------------------------------------------
  dmGeral.BUS_CD_C_LTO.Close;
  dmGeral.BUS_CD_C_LTO.Data :=
  dmGeral.BUS_CD_C_LTO.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_LTO.IsEmpty then
     begin
       dmGeral.BUS_CD_C_LTO.First;

       while not dmGeral.BUS_CD_C_LTO.eof do
          begin
            lboxLocalDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_LTO.FieldByName('ID_LOCAL_TITULO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_LTO.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_LTO.Next;
          end;
     end;

 dmGeral.BUS_CD_C_LTO.Close;

  // Planos de Contas ----------------------------------------------------------
  dmGeral.BUS_CD_C_PCT.Close;
  dmGeral.BUS_CD_C_PCT.Data :=
  dmGeral.BUS_CD_C_PCT.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PCT.First;

       while not dmGeral.BUS_CD_C_PCT.eof do
          begin
            lboxPlanoDisp.Items.Add(dmGeral.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_PCT.Next;
          end;
     end;

 dmGeral.BUS_CD_C_PCT.Close;


end;

procedure TFIN_FM_R_CHQ.lboxClienteDispKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
        PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
        PSQ_FM_X_CLI.ShowModal;
        if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxClienteDisp,6,StrZero( PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0)) then
                begin
                  lboxClienteDisp.Items.Add(StrZero( PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0) +
                                             ' - ' +  PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_CLI.Free;
     end;
end;

procedure TFIN_FM_R_CHQ.lboxEmpDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxEmpDisp.ItemIndex > - 1 then
     begin
       lboxEmpSel.Items.Add(lboxEmpDisp.Items[lboxEmpDisp.ItemIndex]);
       lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CHQ.lboxEmpSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpSel.ItemIndex > -1 then
     begin
       lboxEmpDisp.Items.Add(lboxEmpSel.Items[lboxEmpSel.ItemIndex]);
       lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CHQ.lboxLocalDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxLocalDisp.ItemIndex > - 1 then
     begin
       lboxLocalSel.Items.Add(lboxLocalDisp.Items[lboxLocalDisp.ItemIndex]);
       lboxLocalDisp.Items.Delete(lboxLocalDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CHQ.lboxLocalSelDblClick(Sender: TObject);
begin
  inherited;
   if lboxLocalSel.ItemIndex > -1 then
     begin
       lboxLocalDisp.Items.Add(lboxLocalSel.Items[lboxLocalSel.ItemIndex]);
       lboxLocalSel.Items.Delete(lboxLocalSel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CHQ.lboxPlanoDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxPlanoDisp.ItemIndex > - 1 then
     begin
       lboxPlanoSel.Items.Add(lboxPlanoDisp.Items[lboxPlanoDisp.ItemIndex]);
       lboxPlanoDisp.Items.Delete(lboxPlanoDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CHQ.lboxPlanoSelDblClick(Sender: TObject);
begin
  inherited;
   if lboxPlanoSel.ItemIndex > -1 then
     begin
       lboxPlanoDisp.Items.Add(lboxPlanoSel.Items[lboxPlanoSel.ItemIndex]);
       lboxPlanoSel.Items.Delete(lboxPlanoSel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CHQ.lboxSitDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxSitDisp.ItemIndex > - 1 then
     begin
       lboxSitSel.Items.Add(lboxSitDisp.Items[lboxSitDisp.ItemIndex]);
       lboxSitDisp.Items.Delete(lboxSitDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CHQ.lboxSitSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxSitSel.ItemIndex > -1 then
     begin
       lboxSitDisp.Items.Add(lboxSitSel.Items[lboxSitSel.ItemIndex]);
       lboxSitSel.Items.Delete(lboxSitSel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_CHQ.lboxVendedorDispKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxVendedorDisp,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0)) then
                begin
                  lboxVendedorDisp.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

end.
