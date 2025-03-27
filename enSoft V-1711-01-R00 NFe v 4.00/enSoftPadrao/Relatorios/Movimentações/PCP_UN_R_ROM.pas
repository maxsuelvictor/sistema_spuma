unit PCP_UN_R_ROM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.Menus, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, Vcl.Grids, Vcl.DBGrids, Data.DB, vcl.wwdbigrd, vcl.wwdbgrid,
  Data.DBXDataSnap, IPPeerClient, Data.DBXCommon, Datasnap.DBClient,
  Datasnap.DSConnect, Data.SqlExpr,System.IniFiles;

type
  TPCP_FM_R_ROM = class(TPAD_FM_X_REL)
    Label1: TLabel;
    Label2: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    pcFiltros: TPageControl;
    tsCentroCusto: TTabSheet;
    lblCentroCustoDisponiveis: TLabel;
    lblCentroCustoSelecionado: TLabel;
    lboxMotoristaSelecionado: TListBox;
    lboxMotoristaDisponiveis: TListBox;
    tsResponsavel: TTabSheet;
    PCP_XL_R_ROM: TfrxXLSExport;
    PCP_PD_R_ROM: TfrxPDFExport;
    PCP_DB_R_ROM: TfrxDBDataset;
    pmSelMotoristas: TPopupMenu;
    MenuItemMotoristas: TMenuItem;
    pmRemoverTodosMotoristas: TPopupMenu;
    btnRemoverTodosMotoristas: TMenuItem;
    lboxResponsavel: TListBox;
    lblVendedoresDisponiveis: TLabel;
    pmRemoverResponsavel: TPopupMenu;
    btnRemoverResponsavel: TMenuItem;
    PCP_DB_R_ROM_PED_ITE: TfrxDBDataset;
    PCP_DB_R_ROM_PED: TfrxDBDataset;
    PCP_DB_R_ROM_LOT: TfrxDBDataset;
    PCP_FR_R_ROM: TfrxReport;
    TabSheet1: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmRemoverEmpresas: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    PCP_FR_R_ROM_LOCffff: TfrxReport;
    PCP_FR_R_ROM_LOC: TfrxReport;
    lblOrde: TLabel;
    cbbMotorista: TComboBox;
    chkMotorista: TCheckBox;
    ConexaoBDFat: TSQLConnection;
    pcConecaoDBFat: TDSProviderConnection;
    BUS_CD_M_NFE: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxResponsavelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lboxMotoristaDisponiveisDblClick(Sender: TObject);
    procedure lboxMotoristaSelecionadoDblClick(Sender: TObject);
    procedure MenuItemMotoristasClick(Sender: TObject);
    procedure btnRemoverTodosMotoristasClick(Sender: TObject);
    procedure btnRemoverResponsavelClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure PCP_DB_R_ROM_PEDCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure chkMotoristaClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function TestarCampos: Boolean;
    procedure TestaCorTamanho;
    procedure ConectarBancoFat;
    var
      xOpcoes, xCondEmpresa, xCondResponsavel, xCondMotorista:string;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_ROM: TPCP_FM_R_ROM;

implementation

{$R *.dfm}

uses uDmSgq, enFunc,uProxy, PSQ_UN_X_FUN, uDmGeral, enConstantes;

procedure TPCP_FM_R_ROM.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TPCP_FM_R_ROM.btnRemoverResponsavelClick(Sender: TObject);
begin
  inherited;
  if lboxResponsavel.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxResponsavel.DeleteSelected;
end;

procedure TPCP_FM_R_ROM.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TPCP_FM_R_ROM.btnRemoverTodosMotoristasClick(Sender: TObject);
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

procedure TPCP_FM_R_ROM.chkMotoristaClick(Sender: TObject);
begin
  inherited;
  if chkMotorista.Checked then
     begin
       cbbMotorista.ItemIndex := -1;
       cbbMotorista.enabled := false;
     end
  else
     begin
       cbbMotorista.enabled := true;
     end;
end;

procedure TPCP_FM_R_ROM.ConectarBancoFat;
var
  SMPrincipal : TSMClient;
  cds: TClientDataSet;
  x,z: integer;
  i: integer;
  xx:string;
  Rede:TInifile;
  msg: String;
begin
  msg:='';
  if ConexaoBDFat.Connected = true then
     begin
       msg := msg + 'A conexão esta aberta' + #13;
       ConexaoBDFat.Connected := false;
       msg := msg + 'A Conexão será reiniciada' + #13;
     end;


  If not FileExists(ExtractFilePath(Application.ExeName)+'RedeCliFat.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'RedeCliFat.Ini');
       Rede.WriteString('DEFINICAO_DE_DATABASE','HOST','');
       Application.MessageBox('O Arquivo RedeCliFat.Ini Encontra-se desconfigurado, Configure-o e reinicie o sistema!',
        'Atenção', MB_ICONINFORMATION or MB_OK);
       Application.Terminate;
     end;
  Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'RedeCliFat.Ini');
  ConexaoBDFat.Close;
  ConexaoBDFat.Params.Clear;
  ConexaoBDFat.Params.Add('DriverUnit=Data.DBXDataSnap');
  ConexaoBDFat.Params.Add('HostName='+Rede.ReadString('DEFINICAO_DE_DATABASE','HOST',''));
  ConexaoBDFat.Params.Add('Port='+Rede.ReadString('DEFINICAO_DE_DATABASE','PORTA',''));
  //Conexao.Params.Add('Port=211');
  ConexaoBDFat.Params.Add('CommunicationProtocol=tcp/ip');
  ConexaoBDFat.Params.Add('DatasnapContext=datasnap/');
  ConexaoBDFat.Params.Add('DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland.Data.DbxClientDriver,Version=18.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b');
  ConexaoBDFat.Params.Add('Filters={}');
  Try
    begin
      ConexaoBDFat.Open;
    end;
  Except on E:Exception do
    Begin
      Application.MessageBox(Pchar('Não foi possível conectar-se ao banco de dados do faturamento!'+#13+#13+#13+
        'Descrição do erro: '+
        #13+#13+E.Message),'Atenção', MB_ICONERROR or MB_OK);
        Application.Terminate;
    end;
  end;
end;

procedure TPCP_FM_R_ROM.ExibirRel;
var
  rDtaIni, rDtaFin, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  // Período
  rDtaIni := deInicial.Text;
  rDtaFin := deFinal.Text;

  PreencherCondicao;

  dmGeral.BUS_CD_M_PCP_ROM.Close;
  dmGeral.BUS_CD_M_PCP_ROM.Data :=
    dmGeral.BUS_CD_M_PCP_ROM.DataRequest(
      VarArrayOf([9,rDtaIni, rDtaFin, xCondResponsavel, xCondMotorista,xCondEmpresa]));

   PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

   if not dmGeral.BUS_CD_M_PCP_ROM.IsEmpty then
    begin
        try

        dmGeral.BUS_CD_M_PCP_ROM_PED.Filtered := true;
        dmGeral.BUS_CD_M_PCP_ROM_PED.Filter := '  int_situacaoped = 3  ' +
                                               '  and ( int_dtaemissao_ors >= ''' +
                                                  rDtaIni + ''' '+
                                               '  and int_dtaemissao_ors <= ''' +
                                                  rDtaFin + ''' ) ';


        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Relatório de Carga - Entrega externa' then
           begin

              if FileExists(PathImg) then
                 begin
                    LogoEmpresa := TfrxPictureView(PCP_FR_R_ROM.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                 end;


              dmGeral.BusCodigoRevListMestre(true,false,PCP_FM_R_ROM.Name,xCodLme,xRevLme,nil);
              PCP_FR_R_ROM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              PCP_FR_R_ROM.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              PCP_FR_R_ROM.Variables['Opcoes'] := QuotedStr(xOpcoes);

              TestaCorTamanho;

              PCP_FR_R_ROM.PrepareReport();
              PCP_FR_R_ROM.ShowReport();
           end;


        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Relatório de Carga - Entrega Local' then
           begin
              dmGeral.BUS_CD_M_PCP_ROM.IndexFieldNames := 'id_rom';
              if FileExists(PathImg) then
                 begin
                    LogoEmpresa := TfrxPictureView(PCP_FR_R_ROM_LOC.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                 end;
              dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_ROM_LOC.Name,xCodLme,xRevLme,nil);
              PCP_FR_R_ROM_LOC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              PCP_FR_R_ROM_LOC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              PCP_FR_R_ROM_LOC.Variables['Opcoes'] := QuotedStr(xOpcoes);
              //TestaCorTamanho;

              PCP_FR_R_ROM_LOC.PrepareReport();
              PCP_FR_R_ROM_LOC.ShowReport();
           end;

        finally
           dmGeral.BUS_CD_M_PCP_ROM_PED.Filtered := false;
        end;

    end
   else
    begin
      ShowMessage('Não existe relatorio.');
    end;
end;

procedure TPCP_FM_R_ROM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_ROM);
end;

procedure TPCP_FM_R_ROM.FormShow(Sender: TObject);
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

  // MOTORISTA--------------------------------

  tsCentroCusto.TabVisible := false;

  dmsgq.BUS_CD_C_MTA.Close;
  dmsgq.BUS_CD_C_MTA.Data :=
      dmsgq.BUS_CD_C_MTA.DataRequest(VarArrayOf([1,'%']));
  dmsgq.BUS_CD_C_MTA.First;
  while not dmsgq.BUS_CD_C_MTA.eof do
     begin
       cbbMotorista.Items.Add(GeraEspDir(copy(dmsgq.BUS_CD_C_MTA.FieldByName('NOME').AsString,1,30),30)
                               + ' - ' + StrZero(dmsgq.BUS_CD_C_MTA.FieldByName('ID_MOTORISTA').AsFloat,4,0) );
       dmsgq.BUS_CD_C_MTA.Next;
     end;
  dmsgq.BUS_CD_C_MTA.First;

  chkMotorista.Checked := true;


  {if not dmsgq.BUS_CD_C_MTA.IsEmpty then
     begin
       dmsgq.BUS_CD_C_MTA.First;

       while not dmsgq.BUS_CD_C_MTA.eof do
          begin
            lboxMotoristaDisponiveis.Items.Add(StrZero(dmsgq.BUS_CD_C_MTA.FieldByName('ID_MOTORISTA').AsFloat,3,0) +
                                    ' - ' + dmsgq.BUS_CD_C_MTA.FieldByName('NOME').AsString);
            dmsgq.BUS_CD_C_MTA.Next;
          end;
     end;
   }

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_atualiza_fin_base_prod').AsBoolean then
     begin
       ConectarBancoFat;
     end;
end;

procedure TPCP_FM_R_ROM.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TPCP_FM_R_ROM.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TPCP_FM_R_ROM.lboxMotoristaDisponiveisDblClick(Sender: TObject);
begin
  inherited;
  if lboxMotoristaDisponiveis.ItemIndex > - 1 then
     begin
       lboxMotoristaSelecionado.Items.Add(lboxMotoristaDisponiveis.Items[lboxMotoristaDisponiveis.ItemIndex]);
       lboxMotoristaDisponiveis.Items.Delete(lboxMotoristaDisponiveis.ItemIndex);
     end;
end;

procedure TPCP_FM_R_ROM.lboxMotoristaSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxMotoristaSelecionado.ItemIndex > -1 then
     begin
       lboxMotoristaDisponiveis.Items.Add(lboxMotoristaSelecionado.Items[lboxMotoristaSelecionado.ItemIndex]);
       lboxMotoristaSelecionado.Items.Delete(lboxMotoristaSelecionado.ItemIndex);
     end;
end;

procedure TPCP_FM_R_ROM.lboxResponsavelKeyDown(Sender: TObject; var Key: Word;
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

procedure TPCP_FM_R_ROM.menuItemEmpresasClick(Sender: TObject);
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

procedure TPCP_FM_R_ROM.MenuItemMotoristasClick(Sender: TObject);
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

procedure TPCP_FM_R_ROM.PCP_DB_R_ROM_PEDCheckEOF(Sender: TObject;
  var Eof: Boolean);
var
  qtde_conferida: Currency;
  nota_fiscal: String;
  desc_cpg: string;
begin
  inherited;
  qtde_conferida := 0;
  dmGeral.BUS_CD_M_PCP_ROM_PED_ITE.First;
  while not dmGeral.BUS_CD_M_PCP_ROM_PED_ITE.eof do
     begin
       qtde_conferida := qtde_conferida +
                         dmGeral.BUS_CD_M_PCP_ROM_PED_ITE.FieldByName('qtde_conferida').AsCurrency;
       dmGeral.BUS_CD_M_PCP_ROM_PED_ITE.Next;
     end;

  PCP_FR_R_ROM_LOC.Variables['ft_qtde_conferida'] := QuotedStr(currtostr(qtde_conferida));

  nota_fiscal := '0';

  desc_cpg := '';

  if dmGeral.BUS_CD_M_PCP_ROM_PED.FieldByName('int_tipopag').AsInteger = 2 then
     begin
       desc_cpg := dmGeral.BUS_CD_M_PCP_ROM_PED.FieldByName('int_nomecpg').AsString;
     end;


  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Relatório de Carga - Entrega externa' then
     begin
       PCP_FR_R_ROM.Variables['ft_nota_fiscal'] := QuotedStr(nota_fiscal);
       PCP_FR_R_ROM.Variables['ft_cpgped'] := QuotedStr(desc_cpg);
     end;

  if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Relatório de Carga - Entrega Local' then
     begin
       PCP_FR_R_ROM_LOC.Variables['ft_nota_fiscal_loc'] := QuotedStr(nota_fiscal);
       PCP_FR_R_ROM_LOC.Variables['ft_cpgped_loc'] := QuotedStr(desc_cpg);
     end;

  BUS_CD_M_NFE.Close;
        BUS_CD_M_NFE.Data :=
               BUS_CD_M_NFE.DataRequest(
                          VarArrayOf([119,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_fat').Text,
                                          dmGeral.BUS_CD_M_PCP_ROM_PED.FieldByName('id_pedido').AsString,
                                          dmGeral.BUS_CD_M_PCP_ROM_PED.FieldByName('id_pedido').AsString,
                                          dmGeral.BUS_CD_M_PCP_ROM_PED.FieldByName('id_pedido').AsString,
                                          dmGeral.BUS_CD_M_PCP_ROM_PED.FieldByName('id_pedido').AsString,
                                          dmGeral.BUS_CD_M_PCP_ROM_PED.FieldByName('id_pedido').AsString]));

  if not BUS_CD_M_NFE.IsEmpty then
     begin
       nota_fiscal := BUS_CD_M_NFE.FieldByName('NUMERO').AsString;

       if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Relatório de Carga - Entrega externa' then
          PCP_FR_R_ROM.Variables['ft_nota_fiscal'] := QuotedStr(nota_fiscal);

       if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Relatório de Carga - Entrega Local' then
          PCP_FR_R_ROM_LOC.Variables['ft_nota_fiscal_loc'] := QuotedStr(nota_fiscal);
     end;

  BUS_CD_M_NFE.Close;
end;

procedure TPCP_FM_R_ROM.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesResponsavel,opcoesMotorista:string;
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

  opcoesMotorista := 'Todos';

  if not (chkMotorista.Checked) then
     begin
       if cbbMotorista.Text <> '' then
          begin
            xCondMotorista := copy(cbbMotorista.Items[cbbMotorista.ItemIndex],34,4);
            opcoesMotorista := copy(cbbMotorista.Items[cbbMotorista.ItemIndex],1,38);
          end;
     end;
  {
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
  }
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

end;

procedure TPCP_FM_R_ROM.TestaCorTamanho;
begin
  if dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean then
   begin
      PCP_FR_R_ROM.Variables['ft_Tamanho'] := QuotedStr('True');
   end
   else
     begin
        PCP_FR_R_ROM.Variables['ft_Tamanho'] := QuotedStr('False');
     end;

   if dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean then
    begin
       PCP_FR_R_ROM.Variables['ft_Cor'] := QuotedStr('True');
    end
   else
    begin
        PCP_FR_R_ROM.Variables['ft_Cor'] := QuotedStr('False');
    end;
end;

function TPCP_FM_R_ROM.TestarCampos: Boolean;
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
