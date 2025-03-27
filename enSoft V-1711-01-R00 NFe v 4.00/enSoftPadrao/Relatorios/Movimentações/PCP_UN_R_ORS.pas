unit PCP_UN_R_ORS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, JvToolEdit, Vcl.Mask,
  JvExMask, Vcl.ComCtrls, frxClass, frxDBSet, Vcl.Menus, frxExportPDF,
  frxExportXLS, Data.DB, Datasnap.DBClient;

type
  TPCP_FM_R_ORS = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    TabSheet1: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsCentroCusto: TTabSheet;
    lblCentroCustoDisponiveis: TLabel;
    lblCentroCustoSelecionado: TLabel;
    lboxMotoristaSelecionado: TListBox;
    lboxMotoristaDisponiveis: TListBox;
    tsResponsavel: TTabSheet;
    lblVendedoresDisponiveis: TLabel;
    lboxResponsavel: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    lblAlmoxarifado: TLabel;
    lblAlmoxafiradoDesc: TLabel;
    txtAlmoxarifado: TJvComboEdit;
    lblOrde: TLabel;
    cbbOrde: TComboBox;
    PCP_XL_R_ORS: TfrxXLSExport;
    PCP_PD_R_ORS: TfrxPDFExport;
    pmSelMotoristas: TPopupMenu;
    MenuItemMotoristas: TMenuItem;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverResponsavel: TPopupMenu;
    btnRemoverResponsavel: TMenuItem;
    pmRemoverEmpresas: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmRemoverTodosMotoristas: TPopupMenu;
    btnRemoverTodosMotoristas: TMenuItem;
    PCP_DB_R_ORS: TfrxDBDataset;
    PCP_DB_R_ORS_ITE: TfrxDBDataset;
    PCP_DB_R_ORS_TIT: TfrxDBDataset;
    PCP_FR_R_ORS: TfrxReport;
    PCP_FR_R_ORS_ROM: TfrxReport;
    chbDetalhes: TCheckBox;
    PCP_CD_R_ORS_TIT: TClientDataSet;
    PCP_CD_R_ORS_TITid_ors: TIntegerField;
    PCP_CD_R_ORS_TITid_ors_tit: TIntegerField;
    PCP_CD_R_ORS_TITid_forma_pag: TIntegerField;
    PCP_CD_R_ORS_TITnum_parcela: TWideStringField;
    PCP_CD_R_ORS_TITdias: TIntegerField;
    PCP_CD_R_ORS_TITdta_vencimento: TDateField;
    PCP_CD_R_ORS_TITche_banco: TWideStringField;
    PCP_CD_R_ORS_TITche_agencia: TWideStringField;
    PCP_CD_R_ORS_TITche_conta: TIntegerField;
    PCP_CD_R_ORS_TITche_numero: TIntegerField;
    PCP_CD_R_ORS_TITche_emitente: TWideStringField;
    PCP_CD_R_ORS_TITvlr_titulo: TFMTBCDField;
    PCP_CD_R_ORS_TITint_nomefpg: TWideStringField;
    PCP_CD_R_ORS: TClientDataSet;
    PCP_CD_R_ORSid_ors: TIntegerField;
    PCP_CD_R_ORSid_empresa: TIntegerField;
    PCP_CD_R_ORSdta_emissao: TDateField;
    PCP_CD_R_ORSid_responsavel: TIntegerField;
    PCP_CD_R_ORSobservacao: TWideStringField;
    PCP_CD_R_ORSid_pedido: TIntegerField;
    PCP_CD_R_ORScod_lme: TWideStringField;
    PCP_CD_R_ORSrev_lme: TWideStringField;
    PCP_CD_R_ORSid_motorista: TIntegerField;
    PCP_CD_R_ORSid_rom: TIntegerField;
    PCP_CD_R_ORSid_tipo_mov_estoque: TIntegerField;
    PCP_CD_R_ORSid_almoxarifado: TIntegerField;
    PCP_CD_R_ORSvlr_bruto: TFMTBCDField;
    PCP_CD_R_ORSvlr_desconto: TFMTBCDField;
    PCP_CD_R_ORSper_desconto: TFloatField;
    PCP_CD_R_ORSvlr_liquido: TFMTBCDField;
    PCP_CD_R_ORShor_emissao: TTimeField;
    PCP_CD_R_ORSid_abertura: TIntegerField;
    PCP_CD_R_ORSint_nomeres: TWideStringField;
    PCP_CD_R_ORSint_nomemta: TWideStringField;
    PCP_CD_R_ORSint_nomecli: TWideStringField;
    PCP_CD_R_ORSint_telfixo: TWideStringField;
    PCP_CD_R_ORSint_dta_rom: TDateField;
    PCP_CD_R_ORSint_nomeresp_rom: TWideStringField;
    PCP_CD_R_ORSint_nomeven: TWideStringField;
    PCP_CD_R_ORSint_id_opr: TIntegerField;
    PCP_CD_R_ORSPCP_SQ_R_ORS_TIT: TDataSetField;
    PCP_CD_R_ORSPCP_SQ_R_ORS_ITE: TDataSetField;
    PCP_CD_R_ORS_ITE: TClientDataSet;
    PCP_CD_R_ORS_ITEid_ors: TIntegerField;
    PCP_CD_R_ORS_ITEid_sequencia: TIntegerField;
    PCP_CD_R_ORS_ITEid_item: TIntegerField;
    PCP_CD_R_ORS_ITEid_cor: TIntegerField;
    PCP_CD_R_ORS_ITEid_tamanho: TIntegerField;
    PCP_CD_R_ORS_ITEqtde: TFloatField;
    PCP_CD_R_ORS_ITEvlr_unitario: TFMTBCDField;
    PCP_CD_R_ORS_ITEvlr_bruto: TFMTBCDField;
    PCP_CD_R_ORS_ITEid_sequencia_ped: TIntegerField;
    PCP_CD_R_ORS_ITEvlr_liquido: TFMTBCDField;
    PCP_CD_R_ORS_ITEvlr_desconto: TFMTBCDField;
    PCP_CD_R_ORS_ITEper_desconto: TFloatField;
    PCP_CD_R_ORS_ITEint_nomeite: TWideStringField;
    PCP_CD_R_ORS_ITEint_nomecor: TWideStringField;
    PCP_CD_R_ORS_ITEint_nometam: TWideStringField;
    PCP_CD_R_ORS_ITEint_tipo_item: TWideStringField;
    PCP_CD_R_ORS_ITEint_undvenda: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure txtAlmoxarifadoButtonClick(Sender: TObject);
    procedure txtAlmoxarifadoExit(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxMotoristaDisponiveisDblClick(Sender: TObject);
    procedure lboxMotoristaSelecionadoDblClick(Sender: TObject);
    procedure lboxResponsavelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MenuItemMotoristasClick(Sender: TObject);
    procedure btnRemoverTodosMotoristasClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnRemoverResponsavelClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;
    procedure TestaCorTamanhoDetalhe;
    var
      xOpcoes,xCondAlm, xCondEmpresa, xCondResponsavel, xCondMotorista:string;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_ORS: TPCP_FM_R_ORS;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, uDmSgq, PSQ_UN_X_ALM, PSQ_UN_X_FUN, enConstantes;

procedure TPCP_FM_R_ORS.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TPCP_FM_R_ORS.btnRemoverResponsavelClick(Sender: TObject);
begin
  inherited;
  if lboxResponsavel.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxResponsavel.DeleteSelected;
end;

procedure TPCP_FM_R_ORS.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TPCP_FM_R_ORS.btnRemoverTodosMotoristasClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxMotoristaSelecionado.ClearSelection;

  if lboxMotoristaSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxMotoristaSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxMotoristaSelecionado.Items.Count - 1 do
           begin
             lboxMotoristaDisponiveis.Items.Add(lboxMotoristaSelecionado.Items[i]);
             lboxMotoristaSelecionado.Items.Delete(lboxMotoristaSelecionado.ItemIndex);
           end;
       lboxMotoristaSelecionado.Items.Clear;
     end;
end;

procedure TPCP_FM_R_ORS.ExibirRel;
var
  PathImg,rDtaIni, rDtaFin, rOrde: String;
  LogoEmpresa: TfrxPictureView;
begin
   if lbxRelatorios.ItemIndex = -1 then
   Showmessage('Nenhum relatório foi selecionado.');

  // Período
  rDtaIni := deInicial.Text;
  rDtaFin := deFinal.Text;

  // Ordenação
  rOrde := IntToStr(cbborde.ItemIndex + 1);

  PreencherCondicao;

  PCP_CD_R_ORS.Close;
  PCP_CD_R_ORS.Data :=
    PCP_CD_R_ORS.DataRequest(
      VarArrayOf([lbxRelatorios.ItemIndex, xCondEmpresa, rDtaIni, rDtaFin, xCondMotorista, xCondAlm, xCondResponsavel, rOrde]));

  if not PCP_CD_R_ORS.IsEmpty then
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Geral' then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(PCP_FR_R_ORS.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_ORS.Name,xCodLme,xRevLme,nil);
          PCP_FR_R_ORS.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          PCP_FR_R_ORS.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          PCP_FR_R_ORS.Variables['Opcoes'] := QuotedStr(xOpcoes);

          TestaCorTamanhoDetalhe;

          PCP_FR_R_ORS.PrepareReport();
          PCP_FR_R_ORS.ShowReport();
        end;

      if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Por Romaneio' then
        begin
          if FileExists(PathImg) then
            begin
              LogoEmpresa := TfrxPictureView(PCP_FR_R_ORS_ROM.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                LogoEmpresa.Picture.LoadFromFile(PathImg);
            end;
          dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_ORS_ROM.Name,xCodLme,xRevLme,nil);
          PCP_FR_R_ORS_ROM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
          PCP_FR_R_ORS_ROM.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
          PCP_FR_R_ORS_ROM.Variables['Opcoes'] := QuotedStr(xOpcoes);

          TestaCorTamanhoDetalhe;

          PCP_FR_R_ORS_ROM.PrepareReport();
          PCP_FR_R_ORS_ROM.ShowReport();
        end;
    end
  else
    begin
      ShowMessage('Não existe relatorio.');
    end;
end;

procedure TPCP_FM_R_ORS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_ORS);
end;

procedure TPCP_FM_R_ORS.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  if not (dmGeral.CAD_CD_C_PAR_CTRUTILIZA_ALMOXARIFADO.AsBoolean) then
    begin
      txtAlmoxarifado.Enabled := False;
    end
  else
    begin
      txtAlmoxarifado.Enabled := True;
    end;

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

  // MOTORISTA--------------------------------
  dmsgq.BUS_CD_C_MTA.Close;
  dmsgq.BUS_CD_C_MTA.Data :=
      dmsgq.BUS_CD_C_MTA.DataRequest(VarArrayOf([1,'%']));

  if not dmsgq.BUS_CD_C_MTA.IsEmpty then
     begin
       dmsgq.BUS_CD_C_MTA.First;

       while not dmsgq.BUS_CD_C_MTA.eof do
          begin
            lboxMotoristaDisponiveis.Items.Add(StrZero(dmsgq.BUS_CD_C_MTA.FieldByName('ID_MOTORISTA').AsFloat,3,0) +
                                    ' - ' + dmsgq.BUS_CD_C_MTA.FieldByName('NOME').AsString);
            dmsgq.BUS_CD_C_MTA.Next;
          end;
     end;

   // RESPONSÁVEL--------------------------------
end;

procedure TPCP_FM_R_ORS.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TPCP_FM_R_ORS.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TPCP_FM_R_ORS.lboxMotoristaDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxMotoristaDisponiveis.ItemIndex > - 1 then
     begin
       lboxMotoristaSelecionado.Items.Add(lboxMotoristaDisponiveis.Items[lboxMotoristaDisponiveis.ItemIndex]);
       lboxMotoristaDisponiveis.Items.Delete(lboxMotoristaDisponiveis.ItemIndex);
     end;
end;

procedure TPCP_FM_R_ORS.lboxMotoristaSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxMotoristaSelecionado.ItemIndex > -1 then
     begin
       lboxMotoristaDisponiveis.Items.Add(lboxMotoristaSelecionado.Items[lboxMotoristaSelecionado.ItemIndex]);
       lboxMotoristaSelecionado.Items.Delete(lboxMotoristaSelecionado.ItemIndex);
     end;
end;

procedure TPCP_FM_R_ORS.lboxResponsavelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxResponsavel,3,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,3,0)) then
                begin
                  lboxResponsavel.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TPCP_FM_R_ORS.menuItemEmpresasClick(Sender: TObject);
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

procedure TPCP_FM_R_ORS.MenuItemMotoristasClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxMotoristaDisponiveis.ClearSelection;

  if lboxMotoristaDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxMotoristaDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxMotoristaDisponiveis.Items.Count - 1 do
           begin
             lboxMotoristaSelecionado.Items.Add(lboxMotoristaDisponiveis.Items[i]);
             lboxMotoristaDisponiveis.Items.Delete(lboxMotoristaDisponiveis.ItemIndex);
           end;
       lboxMotoristaDisponiveis.Items.Clear;
     end;
end;

procedure TPCP_FM_R_ORS.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesResponsavel,opcoesMotorista:string;
begin

  xCondAlm := '';
  if dmGeral.CAD_CD_C_PAR_CTRUTILIZA_ALMOXARIFADO.AsBoolean then
    begin
      xCondAlm := ''''+trim(txtAlmoxarifado.Text)+'''';
    end;

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

  // Motorista ------------------------------------------------------------------
  xCondMotorista := '';
  if lboxMotoristaSelecionado.Count > 0 then
     begin
      if lboxMotoristaDisponiveis.Count > 0 then
        begin
         for i := 0 to lboxMotoristaSelecionado.Count - 1 do
          begin
            if xCondMotorista <> '' then
               begin
                 xCondMotorista :=
                 xCondMotorista + ',' +''''+trim(copy(lboxMotoristaSelecionado.Items[i],1,3))+'''';
                 opcoesMotorista :=
                 opcoesMotorista +'                    '+lboxMotoristaSelecionado.Items[i] + #13+#10;
               end;
            if xCondMotorista = '' then
               begin
                 xCondMotorista :=
                 xCondMotorista +''''+trim(copy(lboxMotoristaSelecionado.Items[i],1,3))+'''';
                 opcoesMotorista :=
                 opcoesMotorista + lboxMotoristaSelecionado.Items[i] + #13+#10;
               end;
          end;
     end
     else
        begin
          opcoesMotorista:= 'Todos';
        End;
    end
   else
     begin
       opcoesMotorista:= 'Todos';
     end;

  // Responsavel --------------------------------------------------------------
  xCondResponsavel := '';
  if lboxResponsavel.Count > 0 then
     begin
       for i := 0 to lboxResponsavel.Count - 1 do
          begin
            if xCondResponsavel <> '' then
               begin
                 xCondResponsavel :=
                 xCondResponsavel + ',' +''''+trim(copy(lboxResponsavel.Items[i],1,6))+'''';
                 opcoesResponsavel :=
                 opcoesResponsavel +'                    '+lboxResponsavel.Items[i] + #13+#10;
               end;
            if xCondResponsavel = '' then
               begin
                 xCondResponsavel :=
                 xCondResponsavel +''''+trim(copy(lboxResponsavel.Items[i],1,6))+'''';
                 opcoesResponsavel :=
                 opcoesResponsavel + lboxResponsavel.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
        opcoesResponsavel := 'Todos';
      end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Motorista.........: ' + opcoesMotorista+#13+#10;
   xOpcoes := xOpcoes + 'Responsável.......: ' + opcoesResponsavel+#13+#10;

   if (dmGeral.CAD_CD_C_PAR_CTRUTILIZA_ALMOXARIFADO.AsBoolean) then
    begin
      xOpcoes := xOpcoes + 'Almoxarifado......: ' + trim(txtAlmoxarifado.Text) +' - '+lblAlmoxafiradoDesc.Caption + #13+#10;
    end;
end;

procedure TPCP_FM_R_ORS.TestaCorTamanhoDetalhe;
begin

  if chbDetalhes.Checked then
    begin
      PCP_FR_R_ORS.Variables['ft_Detalhes'] := True;
      PCP_FR_R_ORS_ROM.Variables['ft_Detalhes'] := True;
    end
  else
    begin
      PCP_FR_R_ORS.Variables['ft_Detalhes'] := False;
      PCP_FR_R_ORS_ROM.Variables['ft_Detalhes'] := False;
    end;

  if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
   begin
      PCP_FR_R_ORS.Variables['ft_Tamanho'] := QuotedStr('True');
      PCP_FR_R_ORS_ROM.Variables['ft_Tamanho'] := QuotedStr('True');
   end
   else
     begin
        PCP_FR_R_ORS.Variables['ft_Tamanho'] := QuotedStr('False');
        PCP_FR_R_ORS_ROM.Variables['ft_Tamanho'] := QuotedStr('False');
     end;

   if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
    begin
       PCP_FR_R_ORS.Variables['ft_Cor'] := QuotedStr('True');
       PCP_FR_R_ORS_ROM.Variables['ft_Cor'] := QuotedStr('True');
    end
   else
    begin
        PCP_FR_R_ORS.Variables['ft_Cor'] := QuotedStr('False');
        PCP_FR_R_ORS_ROM.Variables['ft_Cor'] := QuotedStr('False');
    end;
end;

function TPCP_FM_R_ORS.TestarCampos: Boolean;
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

  if (dmGeral.CAD_CD_C_PAR_CTRUTILIZA_ALMOXARIFADO.AsBoolean) then
    begin
       if (trim(txtAlmoxarifado.Text) = '') then
        begin
         mens := mens + '.Almoxarifado deve ser preenchido.' +#13;
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

procedure TPCP_FM_R_ORS.txtAlmoxarifadoButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ALM := TPSQ_FM_X_ALM.Create(Self);
   PSQ_FM_X_ALM.ShowModal;
      if not PSQ_FM_X_ALM.BUS_CD_C_ALM.IsEmpty then
         begin
           txtAlmoxarifado.Text := PSQ_FM_X_ALM.BUS_CD_C_ALM.FieldByName('ID_ALMOXARIFADO').AsString;
           lblAlmoxafiradoDesc.Caption := PSQ_FM_X_ALM.BUS_CD_C_ALM.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ALM.Free;
   lblAlmoxafiradoDesc.Height := 21;
   lblAlmoxafiradoDesc.Width := 212;
end;

procedure TPCP_FM_R_ORS.txtAlmoxarifadoExit(Sender: TObject);
begin
  inherited;
  if (trim(txtAlmoxarifado.Text) <> '0') and (trim(txtAlmoxarifado.Text) <> '') then
      begin
        dmGeral.BUS_CD_C_ALM.Close;
        dmGeral.BUS_CD_C_ALM.Data :=
          dmGeral.BUS_CD_C_ALM.DataRequest(VarArrayOf([0, trim(txtAlmoxarifado.Text)]));

        if not dmGeral.BUS_CD_C_ALM.IsEmpty then
          begin
            lblAlmoxafiradoDesc.Caption := dmGeral.BUS_CD_C_ALM.FieldByName('DESCRICAO').AsString;
          end
        else
          begin
            showMessage('Almoxarifado não Cadastrado.');
            txtAlmoxarifado.Text := '';
          end;
      end
  else
     begin
       txtAlmoxarifado.Text := '';
       lblAlmoxafiradoDesc.Caption := '';
     end;
end;

end.
