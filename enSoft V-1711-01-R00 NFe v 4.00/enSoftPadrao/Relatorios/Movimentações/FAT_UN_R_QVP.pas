unit FAT_UN_R_QVP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ComCtrls,
  JvDBControls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ImgList,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, frxExportXLS, frxClass,
  frxExportPDF, Data.DB, Datasnap.DBClient, frxDBSet, Vcl.Menus;

type
  TFAT_FM_R_QVP = class(TPAD_FM_X_REL)
    Label1: TLabel;
    Label2: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    Label3: TLabel;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsVendedor: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxVendedor: TListBox;
    CAD_DB_R_VIT: TfrxDBDataset;
    CAD_CD_R_VIT: TClientDataSet;
    CAD_PD_R_QVP: TfrxPDFExport;
    CAD_XL_R_QVP: TfrxXLSExport;
    PmSelEmp: TPopupMenu;
    PmDelEmp: TPopupMenu;
    PmDelVnd: TPopupMenu;
    MenuItemEmpresa: TMenuItem;
    btnRemoverEmpresas: TMenuItem;
    bntRemoverVendedor: TMenuItem;
    CAD_CD_R_VITid_visita: TIntegerField;
    CAD_CD_R_VITid_vendedor: TIntegerField;
    CAD_CD_R_VITdoc_cnpj_cpf: TWideStringField;
    CAD_CD_R_VITid_veiculo: TIntegerField;
    CAD_CD_R_VITdta_visita: TDateField;
    CAD_CD_R_VITobs: TWideStringField;
    CAD_CD_R_VITrecomendacoes: TWideStringField;
    CAD_CD_R_VITid_empresa: TIntegerField;
    CAD_CD_R_VITgps_latitude: TFloatField;
    CAD_CD_R_VITgps_longitude: TFloatField;
    CAD_CD_R_VIThor_ini: TTimeField;
    CAD_CD_R_VIThor_fim: TTimeField;
    CAD_CD_R_VITsemana: TIntegerField;
    CAD_CD_R_VITplaca: TWideStringField;
    CAD_CD_R_VITid_pedido_mobile: TIntegerField;
    CAD_CD_R_VITtipo_mobile: TIntegerField;
    CAD_CD_R_VITremarcar_vis: TBooleanField;
    CAD_CD_R_VITdta_prox_vis: TDateField;
    CAD_CD_R_VITsemana_prox_vis: TIntegerField;
    CAD_CD_R_VITkm_final: TFloatField;
    CAD_CD_R_VITkm_inicial: TFloatField;
    CAD_CD_R_VITid_funcionario: TIntegerField;
    txtPlaca: TJvComboEdit;
    CAD_CD_R_VITint_nomevendedor: TWideStringField;
    CAD_FR_R_QVP_VND: TfrxReport;
    CAD_FR_R_QVP_PLC: TfrxReport;
    CAD_CD_R_VITcod_cliente: TIntegerField;
    CAD_CD_R_VITint_nomecliente: TWideStringField;
    CAD_CD_R_VITkm_rodado: TFloatField;
    procedure MenuItemEmpresaClick(Sender: TObject);
    procedure btnRemoverEmpresasClick(Sender: TObject);
    procedure bntRemoverVendedorClick(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure txtPlacaButtonClick(Sender: TObject);
  private
    { Private declarations }
    function TestarCampos:Boolean;
    procedure PreencherCondicao;
    procedure ExibirRel;

    var
      xOpcoes, xCondEmpresa, xCondVendedor: string;
  public
    { Public declarations }
  end;

var
  FAT_FM_R_QVP: TFAT_FM_R_QVP;

implementation

{$R *.dfm}

uses PSQ_UN_X_FUN, uDmGeral, enFunc, enConstantes, PSQ_UN_X_VEI;

procedure TFAT_FM_R_QVP.bntRemoverVendedorClick(Sender: TObject);
begin
  inherited;
  if lboxVendedor.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxVendedor.DeleteSelected;
end;

procedure TFAT_FM_R_QVP.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TFAT_FM_R_QVP.btnRemoverEmpresasClick(Sender: TObject);
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

procedure TFAT_FM_R_QVP.ExibirRel;
var
  rTipoData, rDtaIni, rDtaFin, rOrdenacao, PathImg,rDtaPagamento: String;
  rIndexRelatorio:integer;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

  // Período
  rDtaIni := deInicial.Text;
  rDtaFin := deFinal.Text;

  PreencherCondicao;

  CAD_CD_R_VIT.Active:= False;
  CAD_CD_R_VIT.Close;
  CAD_CD_R_VIT.Data :=
    CAD_CD_R_VIT.DataRequest(
      VarArrayOf([rDtaIni, rDtaFin, xCondEmpresa, txtPlaca.Text,xCondVendedor,lbxRelatorios.ItemIndex]));

  if not CAD_CD_R_VIT.IsEmpty then
    begin
      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Por Vendedor' then
        begin
          if FileExists(PathImg) then
             begin
                LogoEmpresa := TfrxPictureView(CAD_FR_R_QVP_VND.FindObject('imgEmpresa1'));
                if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
             end;

          dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_QVP_VND.Name,xCodLme,xRevLme,nil);

          CAD_FR_R_QVP_VND.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          CAD_FR_R_QVP_VND.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          CAD_FR_R_QVP_VND.Variables['Opcoes'] := QuotedStr(xOpcoes);
          CAD_FR_R_QVP_VND.PrepareReport();
          CAD_FR_R_QVP_VND.ShowReport();
        end;

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Placa' then
        begin
          if FileExists(PathImg) then
             begin
                LogoEmpresa := TfrxPictureView(CAD_FR_R_QVP_PLC.FindObject('imgEmpresa1'));
                if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
             end;

          dmGeral.BusCodigoRevListMestre(true,false,CAD_FR_R_QVP_PLC.Name,xCodLme,xRevLme,nil);

          CAD_FR_R_QVP_PLC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          CAD_FR_R_QVP_PLC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          CAD_FR_R_QVP_PLC.Variables['Opcoes'] := QuotedStr(xOpcoes);
          CAD_FR_R_QVP_PLC.PrepareReport();
          CAD_FR_R_QVP_PLC.ShowReport();
        end;

    end
  else
    begin
      ShowMessage('Nenhum registro foi encontrado.');
    end;
end;

procedure TFAT_FM_R_QVP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FAT_FM_R_QVP);
end;

procedure TFAT_FM_R_QVP.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;

  // Empresas ------------------------------------------------------------------
  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
  dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([1, '%']));

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

procedure TFAT_FM_R_QVP.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFAT_FM_R_QVP.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFAT_FM_R_QVP.lboxVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxVendedor,3,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,3,0)) then
                begin
                  lboxVendedor.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,3,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TFAT_FM_R_QVP.MenuItemEmpresaClick(Sender: TObject);
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

procedure TFAT_FM_R_QVP.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesVendedor:string;
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

  // Vendedor --------------------------------------------------------------
  xCondVendedor := '';
  if lboxVendedor.Count > 0 then
     begin
       for i := 0 to lboxVendedor.Count - 1 do
          begin
            if xCondVendedor <> '' then
               begin
                 xCondVendedor :=
                 xCondVendedor + ',' +''''+trim(copy(lboxVendedor.Items[i],1,3))+'''';
                 opcoesVendedor :=
                 opcoesVendedor +'                    '+lboxVendedor.Items[i] + #13+#10;
               end;
            if xCondVendedor = '' then
               begin
                 xCondVendedor :=
                 xCondVendedor +''''+trim(copy(lboxVendedor.Items[i],1,3))+'''';
                 opcoesVendedor :=
                 opcoesVendedor + lboxVendedor.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
       opcoesVendedor := 'Todos';
     end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período.............: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;

   if txtPlaca.Text <> '' then
   xOpcoes := xOpcoes + 'Placa................: ' + txtPlaca.Text+#13+#10
   else
   xOpcoes := xOpcoes + 'Placa................: ' + 'Todas'+#13+#10;

   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Vendedor..........: ' + opcoesVendedor+#13+#10;
end;

function TFAT_FM_R_QVP.TestarCampos: Boolean;
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

procedure TFAT_FM_R_QVP.txtPlacaButtonClick(Sender: TObject);
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

end.
