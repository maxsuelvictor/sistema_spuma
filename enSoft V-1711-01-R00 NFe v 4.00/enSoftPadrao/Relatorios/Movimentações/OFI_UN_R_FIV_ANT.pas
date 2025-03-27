unit OFI_UN_R_FIV_ANT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ComCtrls, Vcl.ImgList,
  Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Menus,
  vcl.Wwdbedit, Vcl.Mask, JvExMask, JvToolEdit, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS, Data.DB, Datasnap.DBClient;

type
  TOFI_FM_R_FIV_ANT = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpDisp: TListBox;
    lboxEmpSel: TListBox;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    Label1: TLabel;
    deInicial: TJvDateEdit;
    Label5: TLabel;
    deFinal: TJvDateEdit;
    Label2: TLabel;
    OFI_FR_R_OFV_FIV: TfrxReport;
    OFI_XL_R_FIV: TfrxXLSExport;
    OFI_PD_R_FIV: TfrxPDFExport;
    OFI_DB_R_OFV_FIV: TfrxDBDataset;
    OFI_DB_R_OFV_FIV_SER: TfrxDBDataset;
    txtPlaca: TJvComboEdit;
    OFI_CD_R_OFV_FIV: TClientDataSet;
    OFI_CD_R_OFV_FIVid_ordem: TIntegerField;
    OFI_CD_R_OFV_FIVid_empresa: TIntegerField;
    OFI_CD_R_OFV_FIVdta_emissao: TDateField;
    OFI_CD_R_OFV_FIVdta_entrega: TDateField;
    OFI_CD_R_OFV_FIVid_cliente: TIntegerField;
    OFI_CD_R_OFV_FIVid_veiculo: TIntegerField;
    OFI_CD_R_OFV_FIVkm_atual: TIntegerField;
    OFI_CD_R_OFV_FIVtanque_combus: TIntegerField;
    OFI_CD_R_OFV_FIVid_forma_pag: TIntegerField;
    OFI_CD_R_OFV_FIVid_condicao_pag: TIntegerField;
    OFI_CD_R_OFV_FIVid_analista: TIntegerField;
    OFI_CD_R_OFV_FIVid_orcamento: TIntegerField;
    OFI_CD_R_OFV_FIVobs_reclamacao: TWideStringField;
    OFI_CD_R_OFV_FIVobs_problema: TWideStringField;
    OFI_CD_R_OFV_FIVstatus: TIntegerField;
    OFI_CD_R_OFV_FIVvlr_produtos: TFMTBCDField;
    OFI_CD_R_OFV_FIVvlr_desc_produtos: TFMTBCDField;
    OFI_CD_R_OFV_FIVper_desc_produtos: TFloatField;
    OFI_CD_R_OFV_FIVvlr_prod_liquido: TFMTBCDField;
    OFI_CD_R_OFV_FIVvlr_serv_bruto: TFMTBCDField;
    OFI_CD_R_OFV_FIVvlr_desc_servicos: TFMTBCDField;
    OFI_CD_R_OFV_FIVper_desc_servicos: TFloatField;
    OFI_CD_R_OFV_FIVvlr_ser_liquido: TFMTBCDField;
    OFI_CD_R_OFV_FIVvlr_terceiro: TFMTBCDField;
    OFI_CD_R_OFV_FIVvlr_desc_terceiro: TFMTBCDField;
    OFI_CD_R_OFV_FIVper_desc_terceiro: TFloatField;
    OFI_CD_R_OFV_FIVvlr_terc_liquido: TFMTBCDField;
    OFI_CD_R_OFV_FIVvlr_despesas: TFMTBCDField;
    OFI_CD_R_OFV_FIVvlr_credito: TFMTBCDField;
    OFI_CD_R_OFV_FIVvlr_total: TFMTBCDField;
    OFI_CD_R_OFV_FIVid_tipo_os: TIntegerField;
    OFI_CD_R_OFV_FIVid_responsavel: TIntegerField;
    OFI_CD_R_OFV_FIVcan_usuario: TIntegerField;
    OFI_CD_R_OFV_FIVcan_data: TDateField;
    OFI_CD_R_OFV_FIVcan_motivo: TWideStringField;
    OFI_CD_R_OFV_FIVcan_hora: TTimeField;
    OFI_CD_R_OFV_FIVrea_usuario: TIntegerField;
    OFI_CD_R_OFV_FIVrea_data: TDateField;
    OFI_CD_R_OFV_FIVrea_hora: TTimeField;
    OFI_CD_R_OFV_FIVrea_motivo: TWideStringField;
    OFI_CD_R_OFV_FIVdta_fechamento: TDateField;
    OFI_CD_R_OFV_FIVid_almoxarifado: TIntegerField;
    OFI_CD_R_OFV_FIVvlr_cred_produtos: TFMTBCDField;
    OFI_CD_R_OFV_FIVvlr_cred_servicos: TFMTBCDField;
    OFI_CD_R_OFV_FIVobservacoes: TWideStringField;
    OFI_CD_R_OFV_FIVint_cpfcnpj: TWideStringField;
    OFI_CD_R_OFV_FIVint_pessoacli: TIntegerField;
    OFI_CD_R_OFV_FIVint_nomecli: TWideStringField;
    OFI_CD_R_OFV_FIVint_telfix: TWideStringField;
    OFI_CD_R_OFV_FIVint_telmov: TWideStringField;
    OFI_CD_R_OFV_FIVint_nomecom: TWideMemoField;
    OFI_CD_R_OFV_FIVint_placa: TWideStringField;
    OFI_CD_R_OFV_FIVint_nomevei: TWideStringField;
    OFI_CD_R_OFV_FIVint_nometio: TWideStringField;
    OFI_CD_R_OFV_FIVint_ufcli: TWideStringField;
    OFI_CD_R_OFV_FIVOFI_SQ_R_OFV_FIV_SER: TDataSetField;
    OFI_CD_R_OFV_FIV_SER: TClientDataSet;
    OFI_CD_R_OFV_FIV_SERid_ordem: TIntegerField;
    OFI_CD_R_OFV_FIV_SERid_cor: TIntegerField;
    OFI_CD_R_OFV_FIV_SERid_tamanho: TIntegerField;
    OFI_CD_R_OFV_FIV_SERid_item: TIntegerField;
    OFI_CD_R_OFV_FIV_SERint_nomeite: TWideStringField;
    OFI_CD_R_OFV_FIV_SERint_nomeund: TWideStringField;
    OFI_CD_R_OFV_FIV_SERdta_requisicao: TDateField;
    procedure lboxEmpDispDblClick(Sender: TObject);
    procedure lboxEmpSelDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure txtPlacaButtonClick(Sender: TObject);

  private
    { Private declarations }
    procedure PreencherCondicao;
    function TestarCampos:Boolean;
    procedure ExibirRel;
    var
      xCondEmpresa,xOpcoes:string;
  public
    { Public declarations }
  end;

var
  OFI_FM_R_FIV_ANT: TOFI_FM_R_FIV_ANT;

implementation

{$R *.dfm}

uses PSQ_UN_X_CLI, enFunc, uDmGeral, enConstantes, PSQ_UN_X_VEI;

procedure TOFI_FM_R_FIV_ANT.PreencherCondicao;
var
  i: integer;
  opcoesEmpresa:string;
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

     // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Placa.............: ' + txtPlaca.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
end;

function TOFI_FM_R_FIV_ANT.TestarCampos:Boolean;
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

  if (txtPlaca.Text = '') then
    begin
      mens := mens +  '.A placa deve ser preenchido.' + #13;
    end;

  if lboxEmpSel.Count = 0 then
    begin
      mens := mens +  '.É necessário selecionar pelos menos 1 empresa' + #13;
    end;

  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
    end;
end;

procedure TOFI_FM_R_FIV_ANT.txtPlacaButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_VEI := TPSQ_FM_X_VEI.Create(Self);
  PSQ_FM_X_VEI.ShowModal;
  if not PSQ_FM_X_VEI.BUS_CD_C_VEI.IsEmpty then
     begin
        txtPlaca.Text := trim(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('id_placa').AsString);
     end;
   PSQ_FM_X_VEI.BUS_CD_C_VEI.Close;
   PSQ_FM_X_VEI.Free;
end;

procedure TOFI_FM_R_FIV_ANT.ExibirRel;
var
  rDtaIni, rDtaFin,rPlaca,PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;
   rPlaca := txtPlaca.Text;

   PreencherCondicao;

    if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Ficha do Veículo') then
      begin
          OFI_CD_R_OFV_FIV.Active:= False;
               OFI_CD_R_OFV_FIV.Close;
               OFI_CD_R_OFV_FIV.Data :=
               OFI_CD_R_OFV_FIV.DataRequest(
                      VarArrayOf([rDtaIni, rDtaFin, rPlaca,xCondEmpresa]));

          if (not OFI_CD_R_OFV_FIV.IsEmpty) then
            begin
                PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                if FileExists(PathImg) then
                  begin
                    LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_FIV.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                  end;
                dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_FIV.Name,xCodLme,xRevLme,nil);
                OFI_FR_R_OFV_FIV.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                OFI_FR_R_OFV_FIV.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                OFI_FR_R_OFV_FIV.Variables['Opcoes'] := QuotedStr(xOpcoes);
                OFI_FR_R_OFV_FIV.PrepareReport();
                OFI_FR_R_OFV_FIV.ShowReport();
            end
          else
            begin
                ShowMessage('Nenhum registro foi encontrado.');
            end;
      end;
end;

procedure TOFI_FM_R_FIV_ANT.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TOFI_FM_R_FIV_ANT.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TOFI_FM_R_FIV_ANT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(OFI_FM_R_FIV_ANT);
end;

procedure TOFI_FM_R_FIV_ANT.FormShow(Sender: TObject);
begin
  inherited;
   lbxRelatorios.ItemIndex := 0;
  //lbxRelatoriosClick(self);

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

procedure TOFI_FM_R_FIV_ANT.lboxEmpDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpDisp.ItemIndex > - 1 then
     begin
       lboxEmpSel.Items.Add(lboxEmpDisp.Items[lboxEmpDisp.ItemIndex]);
       lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
     end;
end;

procedure TOFI_FM_R_FIV_ANT.lboxEmpSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpSel.ItemIndex > -1 then
     begin
       lboxEmpDisp.Items.Add(lboxEmpSel.Items[lboxEmpSel.ItemIndex]);
       lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
     end;
end;

procedure TOFI_FM_R_FIV_ANT.menuItemEmpresasClick(Sender: TObject);
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
end.
