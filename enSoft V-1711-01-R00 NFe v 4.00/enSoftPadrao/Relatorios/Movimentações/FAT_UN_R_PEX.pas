unit FAT_UN_R_PEX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, frxClass,
  frxExportXLS, frxExportPDF, frxDBSet, Vcl.Menus, Data.DB, Datasnap.DBClient;

type
  TFAT_FM_R_PEX = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    FAT_FR_R_PEX: TfrxReport;
    FAT_DB_R_PEX: TfrxDBDataset;
    FAT_PD_R_PEX: TfrxPDFExport;
    FAT_XL_R_PEX: TfrxXLSExport;
    lblOrde: TLabel;
    cbbOrde: TComboBox;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    FAT_DB_R_PEX_ITE: TfrxDBDataset;
    FAT_DB_R_PEX_TIT: TfrxDBDataset;
    FAT_CD_R_PEX: TClientDataSet;
    FAT_CD_R_PEXid_pedido: TIntegerField;
    FAT_CD_R_PEXid_empresa: TIntegerField;
    FAT_CD_R_PEXdta_pedido: TDateField;
    FAT_CD_R_PEXid_tipo_mov_estoque: TIntegerField;
    FAT_CD_R_PEXid_vendedor: TIntegerField;
    FAT_CD_R_PEXobs: TWideStringField;
    FAT_CD_R_PEXvlr_bruto: TFMTBCDField;
    FAT_CD_R_PEXvlr_desconto: TFMTBCDField;
    FAT_CD_R_PEXper_desconto: TFloatField;
    FAT_CD_R_PEXvlr_liquido: TFMTBCDField;
    FAT_CD_R_PEXhor_pedido: TSQLTimeStampField;
    FAT_CD_R_PEXid_condicao_pag: TIntegerField;
    FAT_CD_R_PEXpcp_obs: TWideStringField;
    FAT_CD_R_PEXpcp_id_opr: TIntegerField;
    FAT_CD_R_PEXsituacao: TIntegerField;
    FAT_CD_R_PEXsituacao_aprovacao: TIntegerField;
    FAT_CD_R_PEXid_atendente: TIntegerField;
    FAT_CD_R_PEXid_responsavel: TIntegerField;
    FAT_CD_R_PEXid_cliente: TIntegerField;
    FAT_CD_R_PEXtipo_restricao: TWideStringField;
    FAT_CD_R_PEXid_almoxarifado: TIntegerField;
    FAT_CD_R_PEXjustificativa: TWideStringField;
    FAT_CD_R_PEXid_usuario_lib: TIntegerField;
    FAT_CD_R_PEXcod_lme: TWideStringField;
    FAT_CD_R_PEXrev_lme: TWideStringField;
    FAT_CD_R_PEXorigem: TIntegerField;
    FAT_CD_R_PEXdispositivo: TWideStringField;
    FAT_CD_R_PEXgps_latitude: TFloatField;
    FAT_CD_R_PEXgps_longitude: TFloatField;
    FAT_CD_R_PEXcubagem: TFloatField;
    FAT_CD_R_PEXid_orcamento: TIntegerField;
    FAT_CD_R_PEXenvia_carga: TBooleanField;
    FAT_CD_R_PEXdta_prev_entrega: TDateField;
    FAT_CD_R_PEXid_abertura: TIntegerField;
    FAT_CD_R_PEXint_nomecli: TWideStringField;
    FAT_CD_R_PEXint_nometme: TWideStringField;
    FAT_CD_R_PEXint_nomefun: TWideStringField;
    FAT_CD_R_PEXint_nomecpg: TWideStringField;
    FAT_CD_R_PEXint_nomeate: TWideStringField;
    FAT_CD_R_PEXint_nomeres: TWideStringField;
    FAT_CD_R_PEXint_nomecid: TWideStringField;
    FAT_CD_R_PEXint_nomeest: TWideStringField;
    FAT_CD_R_PEXint_cpfcnpj: TWideStringField;
    FAT_CD_R_PEXint_pessoacli: TIntegerField;
    FAT_CD_R_PEXint_id_perfil: TIntegerField;
    FAT_CD_R_PEXint_sitaprov: TWideStringField;
    FAT_CD_R_PEXint_sitped: TWideStringField;
    FAT_CD_R_PEXint_ie_rg_cli: TWideStringField;
    FAT_CD_R_PEXFAT_SQ_R_PED_TIT: TDataSetField;
    FAT_CD_R_PEXFAT_SQ_R_PED_ITE: TDataSetField;
    FAT_CD_R_PEX_ITE: TClientDataSet;
    FAT_CD_R_PEX_ITEid_pedido: TIntegerField;
    FAT_CD_R_PEX_ITEid_sequencia: TIntegerField;
    FAT_CD_R_PEX_ITEid_item: TIntegerField;
    FAT_CD_R_PEX_ITEqtde: TFloatField;
    FAT_CD_R_PEX_ITEvlr_unitario: TFMTBCDField;
    FAT_CD_R_PEX_ITEvlr_bruto: TFMTBCDField;
    FAT_CD_R_PEX_ITEper_desconto: TFloatField;
    FAT_CD_R_PEX_ITEvlr_desconto: TFMTBCDField;
    FAT_CD_R_PEX_ITEvlr_liquido: TFMTBCDField;
    FAT_CD_R_PEX_ITEid_cor: TIntegerField;
    FAT_CD_R_PEX_ITEid_tamanho: TIntegerField;
    FAT_CD_R_PEX_ITEid_busca_item: TWideStringField;
    FAT_CD_R_PEX_ITEvlr_unitario_orig: TFMTBCDField;
    FAT_CD_R_PEX_ITEint_nomeite: TWideStringField;
    FAT_CD_R_PEX_ITEint_nomecor: TWideStringField;
    FAT_CD_R_PEX_ITEint_id_und_venda: TWideStringField;
    FAT_CD_R_PEX_ITEint_tipo_item: TWideStringField;
    FAT_CD_R_PEX_ITEint_nometam: TWideStringField;
    FAT_CD_R_PEX_TIT: TClientDataSet;
    FAT_CD_R_PEX_TITid_pedido: TIntegerField;
    FAT_CD_R_PEX_TITid_titulo: TIntegerField;
    FAT_CD_R_PEX_TITdias: TIntegerField;
    FAT_CD_R_PEX_TITdta_vencimento: TDateField;
    FAT_CD_R_PEX_TITvlr_titulo: TFMTBCDField;
    FAT_CD_R_PEX_TITche_banco: TWideStringField;
    FAT_CD_R_PEX_TITche_agencia: TWideStringField;
    FAT_CD_R_PEX_TITche_conta: TIntegerField;
    FAT_CD_R_PEX_TITche_numero: TIntegerField;
    FAT_CD_R_PEX_TITche_emitente: TWideStringField;
    FAT_CD_R_PEX_TITid_forma_pag: TIntegerField;
    FAT_CD_R_PEX_TITbol_nosso_numero: TIntegerField;
    FAT_CD_R_PEX_TITid_maquineta: TIntegerField;
    FAT_CD_R_PEX_TITint_nomefpg: TWideStringField;
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_R_PEX: TFAT_FM_R_PEX;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, enConstantes;

procedure TFAT_FM_R_PEX.btnImprimirClick(Sender: TObject);
var
  xCondEmpresa,opcoesEmpresa,PathImg:string;
  I : Integer;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
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

  FAT_CD_R_PEX.Close;
    FAT_CD_R_PEX.Data :=
      FAT_CD_R_PEX.DataRequest(
        VarArrayOf([0, xCondEmpresa, cbbOrde.ItemIndex]));

  if not FAT_CD_R_PEX.IsEmpty then
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(FAT_FR_R_PEX.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;
      dmGeral.BusCodigoRevListMestre(true,false,FAT_FR_R_PEX.Name,xCodLme,xRevLme,nil);
      FAT_FR_R_PEX.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
      FAT_FR_R_PEX.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
      FAT_FR_R_PEX.PrepareReport();
      FAT_FR_R_PEX.ShowReport();
    end
  else
    begin
      ShowMessage('Nenhum registro foi encontrado.');
    end;
end;

procedure TFAT_FM_R_PEX.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TFAT_FM_R_PEX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_PEX);
end;

procedure TFAT_FM_R_PEX.FormShow(Sender: TObject);
begin
  inherited;
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

procedure TFAT_FM_R_PEX.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PEX.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_PEX.menuItemEmpresasClick(Sender: TObject);
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

end.
