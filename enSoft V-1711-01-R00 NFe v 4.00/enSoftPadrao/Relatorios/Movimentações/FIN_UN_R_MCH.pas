unit FIN_UN_R_MCH;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.Menus, enFunc, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, Data.DB, Datasnap.DBClient;

type
  TFIN_FM_R_MCH = class(TPAD_FM_X_REL)
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    até: TLabel;
    PageControl1: TPageControl;
    tsEmpresa: TTabSheet;
    tsCliente: TTabSheet;
    lboxEmpDisp: TListBox;
    lboxEmpSel: TListBox;
    lblEmpDisp: TLabel;
    lblEmpSel: TLabel;
    lboxClienteSel: TListBox;
    Label1: TLabel;
    txtIDCheque: TEdit;
    txtNumCheque: TEdit;
    lblPeriodo: TLabel;
    lblIDCheque: TLabel;
    lblNumCheque: TLabel;
    pmSelTodasEmpresas: TPopupMenu;
    btnSelTodasEmp: TMenuItem;
    pmExcluirTodasEmpresas: TPopupMenu;
    btnExcluirTodasEmp: TMenuItem;
    pmExcluirCliente: TPopupMenu;
    btnRemoverTodosCliente: TMenuItem;
    btnRemoverCliente: TMenuItem;
    FIN_XL_R_MCH: TfrxXLSExport;
    FIN_FR_R_MCH: TfrxReport;
    FIN_PD_R_MCH: TfrxPDFExport;
    FIN_DB_R_MCH: TfrxDBDataset;
    FIN_DB_R_MCH_TOT: TfrxDBDataset;
    FIN_CD_R_MCH: TClientDataSet;
    FIN_CD_R_MCHid_controle: TIntegerField;
    FIN_CD_R_MCHdta_movimento: TDateField;
    FIN_CD_R_MCHid_conta: TIntegerField;
    FIN_CD_R_MCHinformativo: TWideStringField;
    FIN_CD_R_MCHobservacoes: TWideStringField;
    FIN_CD_R_MCHvlr_movimento: TFMTBCDField;
    FIN_CD_R_MCHid_empresa: TIntegerField;
    FIN_CD_R_MCHhor_movimento: TTimeField;
    FIN_CD_R_MCHoperacao: TIntegerField;
    FIN_CD_R_MCHid_responsavel: TIntegerField;
    FIN_CD_R_MCHvlr_tot_juros: TFMTBCDField;
    FIN_CD_R_MCHvlr_tot_movimento: TFMTBCDField;
    FIN_CD_R_MCHid_condicao_pag: TIntegerField;
    FIN_CD_R_MCHid_cliente: TIntegerField;
    FIN_CD_R_MCHid_abertura: TIntegerField;
    FIN_CD_R_MCHid_controle_1: TIntegerField;
    FIN_CD_R_MCHid_titulo: TIntegerField;
    FIN_CD_R_MCHvlr_pago: TFMTBCDField;
    FIN_CD_R_MCHid_alinea: TWideStringField;
    FIN_CD_R_MCHint_nomecli: TWideStringField;
    FIN_CD_R_MCHid_titulo_1: TIntegerField;
    FIN_CD_R_MCHid_empresa_1: TIntegerField;
    FIN_CD_R_MCHid_cliente_1: TIntegerField;
    FIN_CD_R_MCHnum_parcela: TWideStringField;
    FIN_CD_R_MCHdta_emissao: TDateField;
    FIN_CD_R_MCHhistorico: TWideStringField;
    FIN_CD_R_MCHvlr_parcela: TFMTBCDField;
    FIN_CD_R_MCHvlr_original: TFMTBCDField;
    FIN_CD_R_MCHdta_vencimento: TDateField;
    FIN_CD_R_MCHdta_original: TDateField;
    FIN_CD_R_MCHvlr_saldo: TFMTBCDField;
    FIN_CD_R_MCHid_fiscal: TIntegerField;
    FIN_CD_R_MCHorigem: TIntegerField;
    FIN_CD_R_MCHid_forma_pag: TIntegerField;
    FIN_CD_R_MCHche_conta: TIntegerField;
    FIN_CD_R_MCHche_cheque: TIntegerField;
    FIN_CD_R_MCHche_banco: TWideStringField;
    FIN_CD_R_MCHche_emitente: TWideStringField;
    FIN_CD_R_MCHche_agencia: TWideStringField;
    FIN_CD_R_MCHtipo_lancamento: TIntegerField;
    FIN_CD_R_MCHid_local_titulo: TIntegerField;
    FIN_CD_R_MCHid_plano: TWideStringField;
    FIN_CD_R_MCHbol_nosso_numero: TWideStringField;
    FIN_CD_R_MCHcar_taxa: TFloatField;
    FIN_CD_R_MCHcar_motivo_can: TWideStringField;
    FIN_CD_R_MCHcar_dta_can: TDateField;
    FIN_CD_R_MCHcod_lme: TWideStringField;
    FIN_CD_R_MCHrev_lme: TWideStringField;
    FIN_CD_R_MCHseq_nosso_numero: TIntegerField;
    FIN_CD_R_MCHbol_chave: TIntegerField;
    FIN_CD_R_MCHbol_id_conta: TIntegerField;
    FIN_CD_R_MCHcar_taxa_ope: TFloatField;
    FIN_CD_R_MCHcar_n_lote: TWideStringField;
    FIN_CD_R_MCHcar_n_lote_id_resp: TIntegerField;
    FIN_CD_R_MCHcar_n_lote_id_conta: TIntegerField;
    FIN_CD_R_MCHid_baixa: TIntegerField;
    FIN_CD_R_MCHsituacao_chq: TIntegerField;
    FIN_CD_R_MCHid_mch: TIntegerField;
    FIN_CD_R_MCHint_nomeemp: TWideStringField;
    FIN_CD_R_MCHint_operacao: TWideStringField;
    FIN_CD_R_MCHint_nomefun: TWideStringField;
    FIN_CD_R_MCHint_situacao: TWideStringField;
    FIN_CD_R_MCHsituacao_chq_1: TIntegerField;
    FIN_CD_R_MCHint_nomectc: TWideStringField;
    FIN_CD_R_MCHint_bancoctc: TIntegerField;
    FIN_CD_R_MCHint_agenciactc: TWideStringField;
    FIN_CD_R_MCHint_contcorrctc: TWideStringField;
    FIN_CD_R_MCHid_recibo: TIntegerField;
    FIN_CD_R_MCHtot_movimento: TFMTBCDField;
    FIN_CD_R_MCHtot_ger_movimento: TFMTBCDField;
    FIN_CD_R_MCHtot_juros: TFMTBCDField;
    FIN_CD_R_MCHid_vendedor: TIntegerField;
    FIN_CD_R_MCHcar_id_maquineta: TIntegerField;
    FIN_CD_R_MCHid_credito: TIntegerField;
    FIN_CD_R_MCHbol_banco: TIntegerField;
    FIN_CD_R_MCHid_obra: TIntegerField;
    FIN_CD_R_MCH_TOT: TClientDataSet;
    FIN_CD_R_MCH_TOTtot_movimento: TFMTBCDField;
    FIN_CD_R_MCH_TOTtot_ger_movimento: TFMTBCDField;
    FIN_CD_R_MCH_TOTtot_juros: TFMTBCDField;
    procedure btnSelTodasEmpClick(Sender: TObject);
    procedure btnExcluirTodasEmpClick(Sender: TObject);
    procedure lboxEmpDispDblClick(Sender: TObject);
    procedure lboxEmpSelDblClick(Sender: TObject);
    procedure lboxClienteSelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverTodosClienteClick(Sender: TObject);
    procedure btnRemoverClienteClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function TestarCampos:Boolean;
    var
      xCondCliente,xCondEmpresa,xOpcoes:string;
  public
    { Public declarations }
  end;

var
  FIN_FM_R_MCH: TFIN_FM_R_MCH;

implementation

{$R *.dfm}

uses PSQ_UN_X_CLI, uDmGeral, enConstantes;

procedure TFIN_FM_R_MCH.btnExcluirTodasEmpClick(Sender: TObject);
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

procedure TFIN_FM_R_MCH.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TFIN_FM_R_MCH.btnRemoverClienteClick(Sender: TObject);
begin
  inherited;
    if lboxClienteSel.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxClienteSel.DeleteSelected;
end;

procedure TFIN_FM_R_MCH.btnRemoverTodosClienteClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxClienteSel.ClearSelection;

  if lboxClienteSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxClienteSel.Items.Count > 0 then
     begin
       while (lboxClienteSel.Items.Count > 0) do
         begin
           lboxClienteSel.Items.Delete(0);
         end;
       lboxClienteSel.Items.Clear;
     end;
end;

procedure TFIN_FM_R_MCH.btnSelTodasEmpClick(Sender: TObject);
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

procedure TFIN_FM_R_MCH.ExibirRel;
var
  rDtaIni, rDtaFin,PathImg: String;
  rIndexRelatorio:integer;
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


   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Relatório de Movimentação de Cheques' then
     begin
       FIN_CD_R_MCH_TOT.Active:= False;
       FIN_CD_R_MCH_TOT.Close;
       FIN_CD_R_MCH_TOT.Data :=
                 FIN_CD_R_MCH_TOT.DataRequest(
                      VarArrayOf([rDtaIni, rDtaFin, txtIDCheque.text, txtNumCheque.text, xCondEmpresa, xCondCliente]));

       FIN_CD_R_MCH.Active:= False;
       FIN_CD_R_MCH.Close;
       FIN_CD_R_MCH.Data :=
                 FIN_CD_R_MCH.DataRequest(
                      VarArrayOf([rDtaIni, rDtaFin, txtIDCheque.text, txtNumCheque.text, xCondEmpresa, xCondCliente]));

       if (not FIN_CD_R_MCH.IsEmpty) then
          begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
            if FileExists(PathImg) then
              begin
               LogoEmpresa := TfrxPictureView(FIN_FR_R_MCH.FindObject('imgEmpresa1'));
               if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;

            dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_MCH.Name,xCodLme,xRevLme,nil);
            FIN_FR_R_MCH.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FIN_FR_R_MCH.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FIN_FR_R_MCH.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FIN_FR_R_MCH.PrepareReport();
            FIN_FR_R_MCH.ShowReport();
          end
       else
          begin
            ShowMessage('Nenhum registro foi encontrado.');
          end;
     end;

end;

procedure TFIN_FM_R_MCH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FIN_CD_R_MCH.Close;
  FIN_CD_R_MCH_TOT.Close;
  FreeAndNil(FIN_FM_R_MCH);
end;

procedure TFIN_FM_R_MCH.FormShow(Sender: TObject);
begin
  inherited;
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
end;

procedure TFIN_FM_R_MCH.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesCliente,opcoesFormaPagamento,opcoesLocalTitulo,
  opcoesPlanoContas:string;
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
                 opcoesEmpresa +'                    '+lboxEmpSel.Items[i] + #13+#10;
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

  // Cliente --------------------------------------------------------------
  xCondCliente := '';
  if lboxClienteSel.Count > 0 then
     begin
       for i := 0 to lboxClienteSel.Count - 1 do
          begin
            if xCondCliente <> '' then
               begin
                 xCondCliente :=
                 xCondCliente+ ',' +''''+trim(copy(lboxClienteSel.Items[i],1,6))+'''';
                 opcoesCliente :=
                 opcoesCliente +'                    '+lboxClienteSel.Items[i] + #13+#10;
               end;
            if xCondCliente = '' then
               begin
                 xCondCliente :=
                 xCondCliente +''''+trim(copy(lboxClienteSel.Items[i],1,6))+'''';
                 opcoesCliente :=
                 opcoesCliente + lboxClienteSel.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
          opcoesCliente := 'Todos' + #13+#10;
      end;

   // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Cliente...........: ' + opcoesCliente+#13+#10;
   xOpcoes := xOpcoes + 'ID Cheque.........: ' + txtIDCheque.text+#13+#10;
   xOpcoes := xOpcoes + 'Nº Cheque.........: ' + txtNumCheque.text+#13+#10;
end;

function TFIN_FM_R_MCH.TestarCampos:Boolean;
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

  if lboxEmpSel.Count = 0 then
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

procedure TFIN_FM_R_MCH.lboxEmpDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpDisp.ItemIndex > - 1 then
     begin
       lboxEmpSel.Items.Add(lboxEmpDisp.Items[lboxEmpDisp.ItemIndex]);
       lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
     end;
end;

procedure TFIN_FM_R_MCH.lboxEmpSelDblClick(Sender: TObject);
begin
  inherited;
   if lboxEmpSel.ItemIndex > -1 then
     begin
       lboxEmpDisp.Items.Add(lboxEmpSel.Items[lboxEmpSel.ItemIndex]);
       lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
     end;
end;

procedure TFIN_FM_R_MCH.lboxClienteSelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
        PSQ_FM_X_CLI.ShowModal;
        if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxClienteSel,6,StrZero( PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0)) then
                begin
                  lboxClienteSel.Items.Add(StrZero( PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0) +
                                             ' - ' +  PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_CLI.Free;
     end;
end;

end.
