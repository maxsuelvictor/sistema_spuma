unit OFI_UN_R_HIT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Data.DB, Datasnap.DBClient, frxClass, frxExportPDF,
  frxDBSet, Vcl.Menus;

type
  TOFI_FM_R_HIT = class(TPAD_FM_X_REL)
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
    tsModeloVeiculo: TTabSheet;
    lblModeloVeiculo: TLabel;
    lboxVeiculo: TListBox;
    pmExcluirVeiculo: TPopupMenu;
    btnRemoverVeiculo: TMenuItem;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverEmpresas: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    OFI_FR_R_HIV: TfrxReport;
    OFI_DB_R_HIV: TfrxDBDataset;
    OFI_PD_R_HIV: TfrxPDFExport;
    OFI_CD_R_HIV: TClientDataSet;
    OFI_CD_R_HIVid_ordem: TIntegerField;
    OFI_CD_R_HIVid_empresa: TIntegerField;
    OFI_CD_R_HIVdta_emissao: TDateField;
    OFI_CD_R_HIVdta_entrega: TDateField;
    OFI_CD_R_HIVid_cliente: TIntegerField;
    OFI_CD_R_HIVid_veiculo: TIntegerField;
    OFI_CD_R_HIVkm_atual: TIntegerField;
    OFI_CD_R_HIVtanque_combus: TIntegerField;
    OFI_CD_R_HIVid_forma_pag: TIntegerField;
    OFI_CD_R_HIVid_condicao_pag: TIntegerField;
    OFI_CD_R_HIVid_analista: TIntegerField;
    OFI_CD_R_HIVid_orcamento: TIntegerField;
    OFI_CD_R_HIVobs_reclamacao: TWideStringField;
    OFI_CD_R_HIVobs_problema: TWideStringField;
    OFI_CD_R_HIVstatus: TIntegerField;
    OFI_CD_R_HIVvlr_produtos: TFMTBCDField;
    OFI_CD_R_HIVvlr_desc_produtos: TFMTBCDField;
    OFI_CD_R_HIVper_desc_produtos: TFloatField;
    OFI_CD_R_HIVvlr_prod_liquido: TFMTBCDField;
    OFI_CD_R_HIVvlr_serv_bruto: TFMTBCDField;
    OFI_CD_R_HIVvlr_desc_servicos: TFMTBCDField;
    OFI_CD_R_HIVper_desc_servicos: TFloatField;
    OFI_CD_R_HIVvlr_ser_liquido: TFMTBCDField;
    OFI_CD_R_HIVvlr_terceiro: TFMTBCDField;
    OFI_CD_R_HIVvlr_desc_terceiro: TFMTBCDField;
    OFI_CD_R_HIVper_desc_terceiro: TFloatField;
    OFI_CD_R_HIVvlr_terc_liquido: TFMTBCDField;
    OFI_CD_R_HIVvlr_despesas: TFMTBCDField;
    OFI_CD_R_HIVvlr_credito: TFMTBCDField;
    OFI_CD_R_HIVvlr_total: TFMTBCDField;
    OFI_CD_R_HIVid_tipo_os: TIntegerField;
    OFI_CD_R_HIVid_responsavel: TIntegerField;
    OFI_CD_R_HIVcan_usuario: TIntegerField;
    OFI_CD_R_HIVcan_data: TDateField;
    OFI_CD_R_HIVcan_motivo: TWideStringField;
    OFI_CD_R_HIVcan_hora: TTimeField;
    OFI_CD_R_HIVrea_usuario: TIntegerField;
    OFI_CD_R_HIVrea_data: TDateField;
    OFI_CD_R_HIVrea_hora: TTimeField;
    OFI_CD_R_HIVrea_motivo: TWideStringField;
    OFI_CD_R_HIVdta_fechamento: TDateField;
    OFI_CD_R_HIVid_almoxarifado: TIntegerField;
    OFI_CD_R_HIVvlr_cred_produtos: TFMTBCDField;
    OFI_CD_R_HIVvlr_cred_servicos: TFMTBCDField;
    OFI_CD_R_HIVobservacoes: TWideStringField;
    OFI_CD_R_HIVstatus_painel: TIntegerField;
    OFI_CD_R_HIVhor_emissao: TTimeField;
    OFI_CD_R_HIVhor_fechamento: TTimeField;
    OFI_CD_R_HIVsepara_prod_serv: TBooleanField;
    OFI_CD_R_HIVid_equipamento: TIntegerField;
    OFI_CD_R_HIVint_nomecli: TWideStringField;
    OFI_CD_R_HIVint_telfix: TWideStringField;
    OFI_CD_R_HIVint_telmov: TWideStringField;
    OFI_CD_R_HIVint_cnpjcpfcli: TWideStringField;
    OFI_CD_R_HIVint_enderecocli: TWideStringField;
    OFI_CD_R_HIVint_bairrocli: TWideStringField;
    OFI_CD_R_HIVint_cepcli: TWideStringField;
    OFI_CD_R_HIVint_nomecid: TWideStringField;
    OFI_CD_R_HIVint_ufcid: TWideStringField;
    OFI_CD_R_HIVint_numerocli: TWideStringField;
    OFI_CD_R_HIVint_nomecom: TWideMemoField;
    OFI_CD_R_HIVint_placa: TWideStringField;
    OFI_CD_R_HIVint_nomevei: TWideStringField;
    OFI_CD_R_HIVint_chassivei: TWideStringField;
    OFI_CD_R_HIVint_anomodelo: TWideStringField;
    OFI_CD_R_HIVint_anofabric: TWideStringField;
    OFI_CD_R_HIVint_motorvei: TWideStringField;
    OFI_CD_R_HIVint_modelomve: TWideStringField;
    OFI_CD_R_HIVint_nomecor: TWideStringField;
    OFI_CD_R_HIVint_nometio: TWideStringField;
    OFI_CD_R_HIVint_nomecpg: TWideStringField;
    OFI_CD_R_HIVint_nomeana: TWideStringField;
    OFI_CD_R_HIVint_nomeeqp: TWideStringField;
    OFI_CD_R_HIVint_modeloeqp: TWideStringField;
    OFI_CD_R_HIVint_serialeqp: TWideStringField;
    OFI_CD_R_HIVint_garantiaeqp: TBooleanField;
    OFI_CD_R_HIVOFI_SQ_R_HIV_SER: TDataSetField;
    OFI_CD_R_HIVOFI_SQ_R_HIV_PRO: TDataSetField;
    OFI_CD_R_HIV_PRO: TClientDataSet;
    OFI_CD_R_HIV_SER: TClientDataSet;
    OFI_CD_R_HIV_SERid_ordem: TIntegerField;
    OFI_CD_R_HIV_SERid_cor: TIntegerField;
    OFI_CD_R_HIV_SERid_tamanho: TIntegerField;
    OFI_CD_R_HIV_SERid_item: TIntegerField;
    OFI_CD_R_HIV_SERint_nomeite: TWideStringField;
    OFI_CD_R_HIV_SERint_nomeund: TWideStringField;
    OFI_CD_R_HIV_SERint_nomeapl: TWideStringField;
    OFI_CD_R_HIV_SERint_nomeref: TWideStringField;
    OFI_CD_R_HIV_SERint_tipoitem: TWideStringField;
    OFI_CD_R_HIV_SERvlr_unitario: TFMTBCDField;
    OFI_CD_R_HIV_SERqtde: TFloatField;
    OFI_CD_R_HIV_SERvlr_bruto: TFloatField;
    OFI_CD_R_HIV_SERvlr_desconto: TFMTBCDField;
    OFI_CD_R_HIV_SERvlr_liquido: TFloatField;
    OFI_CD_R_HIV_PROid_ordem: TIntegerField;
    OFI_CD_R_HIV_PROid_cor: TIntegerField;
    OFI_CD_R_HIV_PROid_tamanho: TIntegerField;
    OFI_CD_R_HIV_PROid_item: TIntegerField;
    OFI_CD_R_HIV_PROint_nomeite: TWideStringField;
    OFI_CD_R_HIV_PROint_nomeund: TWideStringField;
    OFI_CD_R_HIV_PROint_nomeapl: TWideStringField;
    OFI_CD_R_HIV_PROint_nomeref: TWideStringField;
    OFI_CD_R_HIV_PROint_tipoitem: TWideStringField;
    OFI_CD_R_HIV_PROvlr_unitario: TFMTBCDField;
    OFI_CD_R_HIV_PROqtde: TFloatField;
    OFI_CD_R_HIV_PROvlr_bruto: TFloatField;
    OFI_CD_R_HIV_PROvlr_desconto: TFMTBCDField;
    OFI_CD_R_HIV_PROvlr_liquido: TFloatField;
    OFI_DB_R_HIV_SER: TfrxDBDataset;
    OFI_DB_R_HIV_PRO: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxVeiculoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverVeiculoClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function TestarCampos:Boolean;
    var
      xCondEmpresa,xCondVeiculo,xOpcoes:string;
  public
    { Public declarations }
  end;

var
  OFI_FM_R_HIT: TOFI_FM_R_HIT;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_VEI, enConstantes;

procedure TOFI_FM_R_HIT.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TOFI_FM_R_HIT.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TOFI_FM_R_HIT.btnRemoverVeiculoClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
    if lboxVeiculo.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxVeiculo.DeleteSelected;
end;

procedure TOFI_FM_R_HIT.ExibirRel;
var
  rDtaIni, rDtaFin,PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
    Showmessage('Nenhum relatório foi selecionado.');

  rDtaIni := deInicial.Text;
  rDtaFin := deFinal.Text;

  PreencherCondicao;

  OFI_CD_R_HIV.Close;
  OFI_CD_R_HIV.Data :=
  OFI_CD_R_HIV.DataRequest(VarArrayOf([lbxRelatorios.ItemIndex, rDtaIni,rDtaFin,xCondEmpresa,xCondVeiculo,'2','']));

  if not OFI_CD_R_HIV.IsEmpty then
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(OFI_FR_R_HIV.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;

      dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_HIV.Name,xCodLme,xRevLme,nil);
      OFI_FR_R_HIV.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
      OFI_FR_R_HIV.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
      OFI_FR_R_HIV.Variables['Opcoes'] := QuotedStr(xOpcoes);
      OFI_FR_R_HIV.PrepareReport();
      OFI_FR_R_HIV.ShowReport();
    end
  else
    begin
      ShowMessage('Nenhum registro foi encontrado.');
    end;
end;

procedure TOFI_FM_R_HIT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(OFI_FM_R_HIT);
end;

procedure TOFI_FM_R_HIT.FormShow(Sender: TObject);
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
procedure TOFI_FM_R_HIT.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TOFI_FM_R_HIT.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TOFI_FM_R_HIT.lboxVeiculoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_VEI := TPSQ_FM_X_VEI.Create(Self);
        PSQ_FM_X_VEI.ShowModal;
        if not PSQ_FM_X_VEI.BUS_CD_C_VEI.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxVeiculo,9,StrZero(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('ID_VEICULO').AsFloat,9,0)) then
                begin
                  lboxVeiculo.Items.Add(StrZero(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('ID_VEICULO').AsFloat,9,0) +
                                             ' - ' + trim(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('ID_PLACA').AsString)+'-'+
                                                     PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_VEI.Free;
     end;
end;

procedure TOFI_FM_R_HIT.menuItemEmpresasClick(Sender: TObject);
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

procedure TOFI_FM_R_HIT.PreencherCondicao;
var
  i: integer;
  opcoesEmpresa,opcoesVeiculo:string;
begin
  xOpcoes := '';
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

  // Veículo --------------------------------------------------------------
  xCondVeiculo := '';
  if lboxVeiculo.Count > 0 then
     begin
       for i := 0 to lboxVeiculo.Count - 1 do
          begin
            if xCondVeiculo <> '' then
               begin
                 xCondVeiculo :=
                 xCondVeiculo+ ',' +''''+trim(copy(lboxVeiculo.Items[i],1,9))+'''';
                 opcoesVeiculo :=
                 opcoesVeiculo +'                    '+lboxVeiculo.Items[i] + #13+#10;
               end;
            if xCondVeiculo = '' then
               begin
                 xCondVeiculo :=
                 xCondVeiculo +''''+trim(copy(lboxVeiculo.Items[i],1,9))+'''';
                 opcoesVeiculo :=
                 opcoesVeiculo + lboxVeiculo.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
          opcoesVeiculo := 'Todos';
      end;

   // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Veículo...........: ' + opcoesVeiculo+#13+#10;

end;

function TOFI_FM_R_HIT.TestarCampos: Boolean;
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
