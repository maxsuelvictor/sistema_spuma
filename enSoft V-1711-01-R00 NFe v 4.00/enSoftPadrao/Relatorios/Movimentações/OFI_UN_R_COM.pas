unit OFI_UN_R_COM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ImgList, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Menus, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS, Data.DB, Datasnap.DBClient;

type
  TOFI_FM_R_COM = class(TPAD_FM_X_REL)
    deFinal: TJvDateEdit;
    Label2: TLabel;
    deInicial: TJvDateEdit;
    Label1: TLabel;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsMecanico: TTabSheet;
    tsVeiculo: TTabSheet;
    tsCondicaoPagamento: TTabSheet;
    lblCondicaoPagamentoDisponivel: TLabel;
    lblCondicaoPagamentoSelecionado: TLabel;
    lboxCondicaoPagamentoSelecionada: TListBox;
    lboxCondicaoPagamentoDisponivel: TListBox;
    lblMecanicoDisp: TLabel;
    lboxMecanicoDisponiveis: TListBox;
    lblVeiculo: TLabel;
    lboxVeiculo: TListBox;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverEmpresas: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmSelCondicaoPag: TPopupMenu;
    btnSelFormaPag: TMenuItem;
    pmRemoverCondicaoPag: TPopupMenu;
    btnRemoverFormaPag: TMenuItem;
    pmSelMecanico: TPopupMenu;
    MenuItemMecanico: TMenuItem;
    pmRemoverTodosMecanicos: TPopupMenu;
    btnRemoverTodosMecanicos: TMenuItem;
    OFI_FR_R_OFV_COM_01: TfrxReport;
    OFI_XL_R_COM: TfrxXLSExport;
    OFI_PD_R_COM: TfrxPDFExport;
    OFI_DB_R_COM_001: TfrxDBDataset;
    OFI_DB_R_COM_002: TfrxDBDataset;
    OFI_FR_R_OFV_COM_02: TfrxReport;
    pmExcluirVeiculo: TPopupMenu;
    btnRemoverVeiculo: TMenuItem;
    lboxMecanicoSelecionado: TListBox;
    lblMecanicoSel: TLabel;
    OFI_CD_R_OFV_COM_001: TClientDataSet;
    OFI_CD_R_OFV_COM_002: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxMecanicoDisponiveisDblClick(Sender: TObject);
    procedure lboxMecanicoSelecionadoDblClick(Sender: TObject);
    procedure lboxCondicaoPagamentoDisponivelDblClick(Sender: TObject);
    procedure lboxCondicaoPagamentoSelecionadaDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnSelFormaPagClick(Sender: TObject);
    procedure btnRemoverFormaPagClick(Sender: TObject);
    procedure MenuItemMecanicoClick(Sender: TObject);
    procedure btnRemoverTodosMecanicosClick(Sender: TObject);
    procedure btnRemoverVeiculoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure OFI_FR_R_OFV_COM_01BeforePrint(Sender: TfrxReportComponent);
    procedure OFI_FR_R_OFV_COM_02BeforePrint(Sender: TfrxReportComponent);
    procedure lboxVeiculoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function TestarCampos:Boolean;
    var
      xCondEmpresa,xCondMecanico,xCondVeiculo,xCondPag,xOpcoes:string;
  public
    { Public declarations }
  end;

var
  OFI_FM_R_COM: TOFI_FM_R_COM;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, enConstantes, PSQ_UN_X_VEI;

procedure TOFI_FM_R_COM.ExibirRel;
var
  rDtaIni, rDtaFin,PathImg,Tipo: String;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   PreencherCondicao;

   if dmGeral.CAD_CD_C_PAR_MODota.AsBoolean then
    Tipo := '2'
   else
    Tipo := '1';

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Detalhada') then
      begin
        OFI_CD_R_OFV_COM_001.Active:= False;
        OFI_CD_R_OFV_COM_001.Close;
        OFI_CD_R_OFV_COM_001.Data :=
                OFI_CD_R_OFV_COM_001.DataRequest(
                      VarArrayOf([rDtaIni,rDtaFin,xCondEmpresa,xCondMecanico,xCondVeiculo,xCondPag,Tipo]));
        OFI_CD_R_OFV_COM_001.IndexFieldNames := 'ID_MECANICO';
        if not OFI_CD_R_OFV_COM_001.IsEmpty then
           begin
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
                begin
                   LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_COM_01.FindObject('imgEmpresa1'));
                   if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;

             dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_COM_01.Name,xCodLme,xRevLme,nil);
             OFI_FR_R_OFV_COM_01.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             OFI_FR_R_OFV_COM_01.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
             OFI_FR_R_OFV_COM_01.Variables['Opcoes'] := QuotedStr(xOpcoes);
             OFI_FR_R_OFV_COM_01.PrepareReport();
             OFI_FR_R_OFV_COM_01.ShowReport();
           end
        else
           begin
             ShowMessage('Nenhum registro foi encontrado.');
           end;
      end;

     if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Resumida') then
      begin
        OFI_CD_R_OFV_COM_002.Active:= False;
        OFI_CD_R_OFV_COM_002.Close;
        OFI_CD_R_OFV_COM_002.Data :=
                OFI_CD_R_OFV_COM_002.DataRequest(
                      VarArrayOf([rDtaIni,rDtaFin,xCondEmpresa,xCondMecanico,xCondVeiculo,xCondPag,Tipo]));

        if not OFI_CD_R_OFV_COM_002.IsEmpty then
           begin
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
                begin
                   LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_COM_02.FindObject('imgEmpresa2'));
                   if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;

             dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_COM_02.Name,xCodLme,xRevLme,nil);
             OFI_FR_R_OFV_COM_02.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             OFI_FR_R_OFV_COM_02.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
             OFI_FR_R_OFV_COM_02.Variables['Opcoes'] := QuotedStr(xOpcoes);
             OFI_FR_R_OFV_COM_02.PrepareReport();
             OFI_FR_R_OFV_COM_02.ShowReport();
           end
        else
           begin
             ShowMessage('Nenhum registro foi encontrado.');
           end;
      end;
end;

procedure TOFI_FM_R_COM.PreencherCondicao;
var
  i: integer;
  opcoesEmpresa,opcoesMecanico,opcoesVeiculo,opcoesCondPag:string;
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

   // Mecanico ----------------------------------------------------------------
  xCondMecanico := '';
  if lboxMecanicoSelecionado.Count > 0 then
    begin
      if lboxMecanicoDisponiveis.Count <> 0 then
        begin
         for i := 0 to lboxMecanicoSelecionado.Count - 1 do
          begin
            if xCondMecanico <> '' then
               begin
                 xCondMecanico :=
                 xCondMecanico + ',' +''''+trim(copy(lboxMecanicoSelecionado.Items[i],1,6))+'''';
                 opcoesMecanico :=
                 opcoesMecanico +'                    '+lboxMecanicoSelecionado.Items[i] + #13+#10;
               end;
            if xCondMecanico = '' then
               begin
                 xCondMecanico :=
                 xCondMecanico +''''+trim(copy(lboxMecanicoSelecionado.Items[i],1,6))+'''';
                 opcoesMecanico :=
                 opcoesMecanico + lboxMecanicoSelecionado.Items[i] + #13+#10;
               end;
          end;
       end
      else
       begin
         opcoesMecanico := 'Todos';
       end;
    end
   else
     begin
       opcoesMecanico := 'Todos';
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

  // Cond de Pagamento ----------------------------------------------------------------
  xCondPag := '';
  if lboxCondicaoPagamentoSelecionada.Count > 0 then
  begin
    if lboxCondicaoPagamentoDisponivel.Count <> 0 then
     begin
       for i := 0 to lboxCondicaoPagamentoSelecionada.Count - 1 do
          begin
            if xCondPag <> '' then
               begin
                 xCondPag :=
                 xCondPag + ',' +''''+trim(copy(lboxCondicaoPagamentoSelecionada.Items[i],1,3))+'''';
                 opcoesCondPag :=
                 opcoesCondPag +'                    '+lboxCondicaoPagamentoSelecionada.Items[i] + #13+#10;
               end;
            if xCondPag = '' then
               begin
                 xCondPag :=
                 xCondPag +''''+trim(copy(lboxCondicaoPagamentoSelecionada.Items[i],1,3))+'''';
                 opcoesCondPag :=
                 opcoesCondPag + lboxCondicaoPagamentoSelecionada.Items[i] + #13+#10;
               end;
          end;
     end
      else
        begin
          opcoesCondPag:= 'Todos';
        End;
  end
   else
     begin
      opcoesCondPag:= 'Todos';
     end;

   // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Mecânico..........: ' + opcoesMecanico+#13+#10;
   xOpcoes := xOpcoes + 'Veículo...........: ' + opcoesVeiculo+#13+#10;
   xOpcoes := xOpcoes + 'Cond. Pagamento...: ' + opcoesCondPag+#13+#10;

end;

function TOFI_FM_R_COM.TestarCampos:Boolean;
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

procedure TOFI_FM_R_COM.btnImprimirClick(Sender: TObject);
begin
  inherited;
   if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TOFI_FM_R_COM.btnRemoverFormaPagClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxCondicaoPagamentoSelecionada.ClearSelection;

  if lboxCondicaoPagamentoSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCondicaoPagamentoSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxCondicaoPagamentoSelecionada.Items.Count - 1 do
           begin
             lboxCondicaoPagamentoDisponivel.Items.Add(lboxCondicaoPagamentoSelecionada.Items[i]);
             lboxCondicaoPagamentoSelecionada.Items.Delete(lboxCondicaoPagamentoSelecionada.ItemIndex);
           end;
       lboxCondicaoPagamentoSelecionada.Items.Clear;
     end;
end;

procedure TOFI_FM_R_COM.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TOFI_FM_R_COM.btnRemoverTodosMecanicosClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxMecanicoSelecionado.ClearSelection;

  if lboxMecanicoSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxMecanicoSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxMecanicoSelecionado.Items.Count - 1 do
           begin
             lboxMecanicoDisponiveis.Items.Add(lboxMecanicoSelecionado.Items[i]);
             lboxMecanicoSelecionado.Items.Delete(lboxMecanicoSelecionado.ItemIndex);
           end;
       lboxMecanicoSelecionado.Items.Clear;
     end;
end;



procedure TOFI_FM_R_COM.btnRemoverVeiculoClick(Sender: TObject);
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

procedure TOFI_FM_R_COM.btnSelFormaPagClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxCondicaoPagamentoDisponivel.ClearSelection;
  if lboxCondicaoPagamentoDisponivel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxCondicaoPagamentoDisponivel.Items.Count > 0 then
     begin
       for i := 0 to lboxCondicaoPagamentoDisponivel.Items.Count - 1 do
           begin
             lboxCondicaoPagamentoSelecionada.Items.Add(lboxCondicaoPagamentoDisponivel.Items[i]);
             lboxCondicaoPagamentoDisponivel.Items.Delete(lboxCondicaoPagamentoDisponivel.ItemIndex);
           end;
       lboxCondicaoPagamentoDisponivel.Items.Clear;
     end;
end;

procedure TOFI_FM_R_COM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(OFI_FM_R_COM);
end;

procedure TOFI_FM_R_COM.FormShow(Sender: TObject);
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

  // Mecânico -------------------------------------------------------------------

  dmGeral.BUS_CD_C_FUN_MEC.Close;
  dmGeral.BUS_CD_C_FUN_MEC.Open;
 if (dmGeral.BUS_CD_C_FUN_MEC.RecordCount>0) then
     begin
       dmGeral.BUS_CD_C_FUN_MEC.First;

       while not dmGeral.BUS_CD_C_FUN_MEC.eof do
          begin
            lboxMecanicoDisponiveis.Items.Add(StrZero(dmGeral.BUS_CD_C_FUN_MEC.FieldByName('ID_FUNCIONARIO').AsFloat,6,0) +
                                    ' - ' + dmGeral.BUS_CD_C_FUN_MEC.FieldByName('NOME').AsString);
            dmGeral.BUS_CD_C_FUN_MEC.Next;
          end;
     end;

 dmGeral.BUS_CD_C_FUN_MEC.Close;


  // Condição de Pagamento -------------------------------------------------------
  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
  dmGeral.BUS_CD_C_CPG.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       dmGeral.BUS_CD_C_CPG.First;

       while not dmGeral.BUS_CD_C_CPG.eof do
          begin
            lboxCondicaoPagamentoDisponivel.Items.Add(StrZero(dmGeral.BUS_CD_C_CPG.FieldByName('ID_CONDICAO_PAG').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_CPG.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_CPG.Next;
          end;
     end;

 dmGeral.BUS_CD_C_CPG.Close;
end;

procedure TOFI_FM_R_COM.lboxCondicaoPagamentoDisponivelDblClick(
  Sender: TObject);
begin
  inherited;
  if lboxCondicaoPagamentoDisponivel.ItemIndex > - 1 then
     begin
       lboxCondicaoPagamentoSelecionada.Items.Add(lboxCondicaoPagamentoDisponivel.Items[lboxCondicaoPagamentoDisponivel.ItemIndex]);
       lboxCondicaoPagamentoDisponivel.Items.Delete(lboxCondicaoPagamentoDisponivel.ItemIndex);
     end;
end;

procedure TOFI_FM_R_COM.lboxCondicaoPagamentoSelecionadaDblClick(
  Sender: TObject);
begin
  inherited;
   if lboxCondicaoPagamentoSelecionada.ItemIndex > -1 then
     begin
       lboxCondicaoPagamentoDisponivel.Items.Add(lboxCondicaoPagamentoSelecionada.Items[lboxCondicaoPagamentoSelecionada.ItemIndex]);
       lboxCondicaoPagamentoSelecionada.Items.Delete(lboxCondicaoPagamentoSelecionada.ItemIndex);
     end;
end;

procedure TOFI_FM_R_COM.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TOFI_FM_R_COM.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TOFI_FM_R_COM.lboxMecanicoDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxMecanicoDisponiveis.ItemIndex > - 1 then
     begin
       lboxMecanicoSelecionado.Items.Add(lboxMecanicoDisponiveis.Items[lboxMecanicoDisponiveis.ItemIndex]);
       lboxMecanicoDisponiveis.Items.Delete(lboxMecanicoDisponiveis.ItemIndex);
     end;
end;

procedure TOFI_FM_R_COM.lboxMecanicoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxMecanicoSelecionado.ItemIndex > -1 then
     begin
       lboxMecanicoDisponiveis.Items.Add(lboxMecanicoSelecionado.Items[lboxMecanicoSelecionado.ItemIndex]);
       lboxMecanicoSelecionado.Items.Delete(lboxMecanicoSelecionado.ItemIndex);
     end;
end;


procedure TOFI_FM_R_COM.lboxVeiculoKeyDown(Sender: TObject; var Key: Word;
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

procedure TOFI_FM_R_COM.menuItemEmpresasClick(Sender: TObject);
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

procedure TOFI_FM_R_COM.MenuItemMecanicoClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxMecanicoDisponiveis.ClearSelection;
  if lboxMecanicoDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxMecanicoDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxMecanicoDisponiveis.Items.Count - 1 do
           begin
             lboxMecanicoSelecionado.Items.Add(lboxMecanicoDisponiveis.Items[i]);
             lboxMecanicoDisponiveis.Items.Delete(lboxMecanicoDisponiveis.ItemIndex);
           end;
       lboxMecanicoDisponiveis.Items.Clear;
     end;
end;



procedure TOFI_FM_R_COM.OFI_FR_R_OFV_COM_01BeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  if (OFI_CD_R_OFV_COM_001.FieldByName('INT_NOMEMEC').AsString <>'') then
     begin
       OFI_FR_R_OFV_COM_01.Variables['ft_nomemec'] := QuotedStr(OFI_CD_R_OFV_COM_001.FieldByName('INT_NOMEMEC').AsString);
     end
   else
     begin
       OFI_FR_R_OFV_COM_01.Variables['ft_nomemec'] := QuotedStr('INDEFINIDO');
     end;
end;

procedure TOFI_FM_R_COM.OFI_FR_R_OFV_COM_02BeforePrint(
  Sender: TfrxReportComponent);
begin
  inherited;
   if (OFI_CD_R_OFV_COM_002.FieldByName('INT_NOMEMEC').AsString <>'') then
     begin
       OFI_FR_R_OFV_COM_02.Variables['ft_nomemec'] := QuotedStr(OFI_CD_R_OFV_COM_002.FieldByName('INT_NOMEMEC').AsString);
     end
   else
     begin
       OFI_FR_R_OFV_COM_02.Variables['ft_nomemec'] := QuotedStr('INDEFINIDO');
     end;
end;

end.
