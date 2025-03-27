unit OFI_UN_R_FIP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ComCtrls, Vcl.ImgList,
  Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Menus,
  vcl.Wwdbedit, Vcl.Mask, JvExMask, JvToolEdit, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS, Data.DB, Datasnap.DBClient, Vcl.DBCtrls;

type
  TOFI_FM_R_FIP = class(TPAD_FM_X_REL)
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
    OFI_FR_R_FIV: TfrxReport;
    OFI_XL_R_FIV: TfrxXLSExport;
    OFI_PD_R_FIV: TfrxPDFExport;
    OFI_DB_R_FIV_ORV: TfrxDBDataset;
    txtPlaca: TJvComboEdit;
    OFI_CD_R_FIV_ORV: TClientDataSet;
    OFI_CD_R_FIV_MEQ: TClientDataSet;
    OFI_DB_R_FIV_MEQ: TfrxDBDataset;
    txtPctDescricao: TDBText;
    OFI_CD_R_FIV_ORVid_ordem: TIntegerField;
    OFI_CD_R_FIV_ORVid_empresa: TIntegerField;
    OFI_CD_R_FIV_ORVdta_emissao: TDateField;
    OFI_CD_R_FIV_ORVdta_entrega: TDateField;
    OFI_CD_R_FIV_ORVid_cliente: TIntegerField;
    OFI_CD_R_FIV_ORVid_veiculo: TIntegerField;
    OFI_CD_R_FIV_ORVkm_atual: TIntegerField;
    OFI_CD_R_FIV_ORVtanque_combus: TIntegerField;
    OFI_CD_R_FIV_ORVid_forma_pag: TIntegerField;
    OFI_CD_R_FIV_ORVid_condicao_pag: TIntegerField;
    OFI_CD_R_FIV_ORVid_analista: TIntegerField;
    OFI_CD_R_FIV_ORVid_orcamento: TIntegerField;
    OFI_CD_R_FIV_ORVobs_reclamacao: TWideStringField;
    OFI_CD_R_FIV_ORVobs_problema: TWideStringField;
    OFI_CD_R_FIV_ORVstatus: TIntegerField;
    OFI_CD_R_FIV_ORVvlr_produtos: TFMTBCDField;
    OFI_CD_R_FIV_ORVvlr_desc_produtos: TFMTBCDField;
    OFI_CD_R_FIV_ORVper_desc_produtos: TFloatField;
    OFI_CD_R_FIV_ORVvlr_prod_liquido: TFMTBCDField;
    OFI_CD_R_FIV_ORVvlr_serv_bruto: TFMTBCDField;
    OFI_CD_R_FIV_ORVvlr_desc_servicos: TFMTBCDField;
    OFI_CD_R_FIV_ORVper_desc_servicos: TFloatField;
    OFI_CD_R_FIV_ORVvlr_ser_liquido: TFMTBCDField;
    OFI_CD_R_FIV_ORVvlr_terceiro: TFMTBCDField;
    OFI_CD_R_FIV_ORVvlr_desc_terceiro: TFMTBCDField;
    OFI_CD_R_FIV_ORVper_desc_terceiro: TFloatField;
    OFI_CD_R_FIV_ORVvlr_terc_liquido: TFMTBCDField;
    OFI_CD_R_FIV_ORVvlr_despesas: TFMTBCDField;
    OFI_CD_R_FIV_ORVvlr_credito: TFMTBCDField;
    OFI_CD_R_FIV_ORVvlr_total: TFMTBCDField;
    OFI_CD_R_FIV_ORVid_tipo_os: TIntegerField;
    OFI_CD_R_FIV_ORVid_responsavel: TIntegerField;
    OFI_CD_R_FIV_ORVcan_usuario: TIntegerField;
    OFI_CD_R_FIV_ORVcan_data: TDateField;
    OFI_CD_R_FIV_ORVcan_motivo: TWideStringField;
    OFI_CD_R_FIV_ORVcan_hora: TTimeField;
    OFI_CD_R_FIV_ORVrea_usuario: TIntegerField;
    OFI_CD_R_FIV_ORVrea_data: TDateField;
    OFI_CD_R_FIV_ORVrea_hora: TTimeField;
    OFI_CD_R_FIV_ORVrea_motivo: TWideStringField;
    OFI_CD_R_FIV_ORVdta_fechamento: TDateField;
    OFI_CD_R_FIV_ORVid_almoxarifado: TIntegerField;
    OFI_CD_R_FIV_ORVvlr_cred_produtos: TFMTBCDField;
    OFI_CD_R_FIV_ORVvlr_cred_servicos: TFMTBCDField;
    OFI_CD_R_FIV_ORVobservacoes: TWideStringField;
    OFI_CD_R_FIV_ORVstatus_painel: TIntegerField;
    OFI_CD_R_FIV_ORVhor_emissao: TTimeField;
    OFI_CD_R_FIV_ORVhor_fechamento: TTimeField;
    OFI_CD_R_FIV_ORVint_nomecli: TWideStringField;
    OFI_CD_R_FIV_ORVint_nomecpg: TWideStringField;
    OFI_CD_R_FIV_ORVint_status: TWideMemoField;
    OFI_CD_R_FIV_ORVint_nometio: TWideStringField;
    procedure lboxEmpDispDblClick(Sender: TObject);
    procedure lboxEmpSelDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure txtPlacaButtonClick(Sender: TObject);
    procedure txtPlacaEnter(Sender: TObject);
    procedure txtPlacaExit(Sender: TObject);

  private
    { Private declarations }
    procedure PreencherCondicao;
    function TestarCampos:Boolean;
    procedure ExibirRel;
    var
      xCondEmpresa,xOpcoes,xVeiculo:string;
  public
    { Public declarations }
  end;

var
  OFI_FM_R_FIP: TOFI_FM_R_FIP;

implementation

{$R *.dfm}

uses PSQ_UN_X_CLI, enFunc, uDmGeral, enConstantes, PSQ_UN_X_VEI, PSQ_UN_X_MEQ;

procedure TOFI_FM_R_FIP.PreencherCondicao;
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
                 opcoesEmpresa +'                               '+lboxEmpSel.Items[i] + #13+#10;
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
   xOpcoes := xOpcoes + 'Período......................: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Máquina/Equip./Veículo.......: ' + txtPlaca.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa......................: ' + opcoesEmpresa+#13+#10;
end;

function TOFI_FM_R_FIP.TestarCampos:Boolean;
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
      mens := mens +  '.A Máquina/Equip./Veículo deve ser preenchido.' + #13;
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

procedure TOFI_FM_R_FIP.txtPlacaButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_MEQ := TPSQ_FM_X_MEQ.Create(Self);
  PSQ_FM_X_MEQ.ShowModal;
  if not PSQ_FM_X_MEQ.BUS_CD_C_MEQ.IsEmpty then
     begin
       xVeiculo := trim(PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('id_meq').AsString);
       txtPlaca.Text := trim(PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('id_meq').AsString);
       txtPctDescricao.Caption := trim(PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('descricao').AsString);
     end;
  PSQ_FM_X_MEQ.BUS_CD_C_MEQ.Close;
  PSQ_FM_X_MEQ.Free;
end;

procedure TOFI_FM_R_FIP.txtPlacaEnter(Sender: TObject);
begin
  inherited;
  txtPctDescricao.Caption  := '';
  txtPlaca.Text := '';
end;

procedure TOFI_FM_R_FIP.txtPlacaExit(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_C_MEQ.Close;
  dmgeral.BUS_CD_C_MEQ.Data :=
  dmgeral.BUS_CD_C_MEQ.DataRequest(VarArrayOf([0,txtPlaca.Text]));
   txtPctDescricao.Caption := '';
  if not dmgeral.BUS_CD_C_MEQ.IsEmpty then
    begin
      xVeiculo := trim(dmgeral.BUS_CD_C_MEQ.FieldByName('id_meq').AsString);
      txtPctDescricao.Caption := trim(dmgeral.BUS_CD_C_MEQ.FieldByName('descricao').AsString);
    end
  else
    begin
      ShowMessage('Máquina/Equip./Veículo não cadastrado.');
      txtPlaca.Text := '';
    end;
end;

procedure TOFI_FM_R_FIP.ExibirRel;
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

  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Ficha  Máquina/Equip./Veículo') then
    begin
      OFI_CD_R_FIV_MEQ.Active:= False;
      OFI_CD_R_FIV_MEQ.Close;
      OFI_CD_R_FIV_MEQ.Data :=
        OFI_CD_R_FIV_MEQ.DataRequest(
          VarArrayOf([xveiculo]));

      OFI_CD_R_FIV_ORV.Active:= False;
      OFI_CD_R_FIV_ORV.Close;
      OFI_CD_R_FIV_ORV.Data :=
        OFI_CD_R_FIV_ORV.DataRequest(
          VarArrayOf(['',xCondEmpresa,rDtaIni,rDtaFin,'4',xVeiculo]));


      if (not OFI_CD_R_FIV_MEQ.IsEmpty) and ( (not OFI_CD_R_FIV_ORV.IsEmpty))then
        begin
          PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(OFI_FR_R_FIV.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_FIV.Name,xCodLme,xRevLme,nil);
          OFI_FR_R_FIV.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          OFI_FR_R_FIV.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          OFI_FR_R_FIV.Variables['Opcoes'] := QuotedStr(xOpcoes);
          OFI_FR_R_FIV.PrepareReport();
          OFI_FR_R_FIV.ShowReport();
        end
      else
        begin
          ShowMessage('Nenhum registro foi encontrado.');
        end;
    end;
end;

procedure TOFI_FM_R_FIP.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TOFI_FM_R_FIP.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TOFI_FM_R_FIP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(OFI_FM_R_FIP);
end;

procedure TOFI_FM_R_FIP.FormShow(Sender: TObject);
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

procedure TOFI_FM_R_FIP.lboxEmpDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpDisp.ItemIndex > - 1 then
     begin
       lboxEmpSel.Items.Add(lboxEmpDisp.Items[lboxEmpDisp.ItemIndex]);
       lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
     end;
end;

procedure TOFI_FM_R_FIP.lboxEmpSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpSel.ItemIndex > -1 then
     begin
       lboxEmpDisp.Items.Add(lboxEmpSel.Items[lboxEmpSel.ItemIndex]);
       lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
     end;
end;

procedure TOFI_FM_R_FIP.menuItemEmpresasClick(Sender: TObject);
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
