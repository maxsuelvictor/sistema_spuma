unit PCP_UN_M_ROM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvExMask,
  JvToolEdit, JvDBControls, Vcl.Mask, Vcl.DBCtrls, vcl.wwdblook, vcl.Wwdbedit,
  JvExExtCtrls, JvExtComponent, JvPanel, frxClass, frxDBSet, frxExportPDF,
  frxExportHTML, frxExportXLS, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.ComCtrls, Datasnap.DBClient;

type
  TPCP_FM_M_ROM = class(TPAD_FM_X_PAD)
    txtResponsavel: TDBEdit;
    lblEndereco: TLabel;
    lblEmissao: TLabel;
    lblMotorista: TLabel;
    cbbMotorista: TwwDBLookupCombo;
    dsoLote: TwwDataSource;
    dsoPed: TwwDataSource;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    dsoPedIte: TwwDataSource;
    dpkEmissao: TDBEdit;
    PCP_DB_M_ROM: TfrxDBDataset;
    PCP_DB_M_ROM_ITE: TfrxDBDataset;
    PCP_DB_M_ROM_LOT: TfrxDBDataset;
    PCP_PD_M_ROM: TfrxPDFExport;
    PCP_XL_M_ROM: TfrxXLSExport;
    PCP_DB_M_ROM_PED: TfrxDBDataset;
    Label4: TLabel;
    txtplaca: TDBEdit;
    PCP_DB_M_ROM_REG: TfrxDBDataset;
    BUS_DB_M_ROM_PED: TfrxDBDataset;
    PCP_FR_M_ROM: TfrxReport;
    txtObservação: TDBMemo;
    lblObjetivo: TLabel;
    GroupBox1: TGroupBox;
    txtQtdeTotalItePed: TwwDBEdit;
    txtQtdeTotalIteLot: TwwDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    gbPedLote: TGroupBox;
    pcPedLote: TPageControl;
    tsPedido: TTabSheet;
    tsLote: TTabSheet;
    gbLote: TGroupBox;
    btnAddLote: TBitBtn;
    dgPedLote: TwwDBGrid;
    dgLoteIButton: TwwIButton;
    Panel2: TPanel;
    lblNLote: TLabel;
    lblObservacaoLote: TLabel;
    Label12: TLabel;
    txtNLote: TDBEdit;
    txtObservacaoLote: TDBEdit;
    txtQtde: TwwDBEdit;
    gbPedido: TGroupBox;
    Label51: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    txtPedido: TJvDBComboEdit;
    btnAddPedido: TBitBtn;
    dgPed: TwwDBGrid;
    dgPedIButton: TwwIButton;
    dgPedIte: TwwDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    BUS_CD_C_ITE_COJ: TClientDataSet;
    dsItensConj: TDataSource;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    Label9: TLabel;
    txtTotalItensPed: TEdit;
    Label10: TLabel;
    txtCodCarreg: TwwDBEdit;
    sbApagarCarregamento: TSpeedButton;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dpkEmissaoExit(Sender: TObject);
    procedure cbbMotoristaEnter(Sender: TObject);
    procedure cbbMotoristaExit(Sender: TObject);
    procedure btnAddLoteClick(Sender: TObject);
    procedure btnAddPedidoClick(Sender: TObject);
    procedure txtPedidoButtonClick(Sender: TObject);
    procedure txtPedidoExit(Sender: TObject);
    procedure dgPedIButtonClick(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure txtNLoteExit(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure dgLoteIButtonClick(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure dgPedDblClick(Sender: TObject);
    procedure dgPedCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dgPedRowChanged(Sender: TObject);
    procedure sbApagarCarregamentoClick(Sender: TObject);
    procedure txtCodCarregExit(Sender: TObject);
    procedure txtCodCarregEnter(Sender: TObject);
  private
    { Private declarations }
    procedure Griditem;
    procedure TestQdte;
    procedure OpenForm(FClass: TFormClass; var Instance);
    procedure TestOrdemFaturamento;
    procedure SomarQtdePedido;
    procedure ItensDoPedidoPca;

    procedure PcpRetirarItensDoRomaneio;
    var
      ID_PED:string;
      Qtde_Ped,Qtde_Lot : integer;
  public
    { Public declarations }
  end;

var
  PCP_FM_M_ROM: TPCP_FM_M_ROM;
  CodAntCarregamento: String;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_PED, uDmSgq, PCP_UN_M_ROM_COF, uProxy, enSoftMenu,
  PCP_UN_M_ROM_IPE, enFunc, PCP_UN_M_ROM_ICF;

procedure TPCP_FM_M_ROM.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_ROM);
  btnImprime.Enabled:= False;
  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
    dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, xFuncionario]));

  dmGeral.PCP_CD_M_ROM.FieldByName('id_responsavel').AsInteger := xFuncionario;
  dmGeral.PCP_CD_M_ROM.FieldByName('INT_NOMERES').Text :=
    dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;

  pcPedLote.TabIndex :=0;
  cbbMotorista.SetFocus;
end;

procedure  TPCP_FM_M_ROM.OpenForm(FClass: TFormClass; var Instance);
begin
  if Assigned(TForm(Instance)) then begin
	 TForm(Instance).SetFocus;
	 TForm(Instance).WindowState := wsMaximized;
	 TForm(Instance).BringToFront;
  end else
	 Application.CreateForm(FClass, Instance);
end;


procedure TPCP_FM_M_ROM.acAlterarExecute(Sender: TObject);
begin

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_ROM) then
      begin
        inherited;
        btnImprime.Enabled:= False;
        cbbMotorista.SetFocus;
        dmGeral.PCP_CD_M_ROM.FieldByName('HOR_ALT').AsDateTime := xHoraSis;
        dmGeral.PCP_CD_M_ROM.FieldByName('DTA_ALT').AsDateTime := xDataSis;
        dmGeral.PCP_CD_M_ROM.FieldByName('ID_RESP_ALT').AsInteger := xFuncionario;
        pcPedLote.ActivePage := tsPedido;
      end;
end;

procedure TPCP_FM_M_ROM.acCancelarExecute(Sender: TObject);
begin

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_ROM) then
     begin
       inherited;
       dbGrid.SetFocus;
       btnImprime.Enabled:= True;
     end
  else
     begin
       cbbMotorista.SetFocus;
     end;
end;

procedure TPCP_FM_M_ROM.acExcluirExecute(Sender: TObject);
begin
  inherited;
  TestOrdemFaturamento;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_ROM);
end;

procedure TPCP_FM_M_ROM.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  inherited;
  codigo := dmGeral.PCP_CD_M_ROM.FieldByName('ID_ROM').AsString;
  DmGeral.Grava(dmGeral.PCP_CD_M_ROM);

  dmGeral.PCP_CD_M_ROM.Close;
  dmGeral.PCP_CD_M_ROM.Data :=
  dmGeral.PCP_CD_M_ROM.DataRequest(
        VarArrayOf([0, codigo]));

   //Foi substituido o codigo abaixo pelo a de cima por não precisar fazer validação entre qtde de itens do pedido e do lote
  {btnImprime.Enabled:= True;
  Testqdte;

  if Qtde_Ped = Qtde_Lot then
    begin
      codigo := dmGeral.PCP_CD_M_ROM.FieldByName('ID_ROM').AsString;
      DmGeral.Grava(dmGeral.PCP_CD_M_ROM);

      dmGeral.PCP_CD_M_ROM.Close;
      dmGeral.PCP_CD_M_ROM.Data :=
        dmGeral.PCP_CD_M_ROM.DataRequest(
          VarArrayOf([0, codigo]));
    end
  else
    begin
      ShowMessage('A quantidade de itens da Pedido deve ser igual a de lotes');
      btnAddLote.SetFocus
    end; }
end;

procedure TPCP_FM_M_ROM.BitBtn1Click(Sender: TObject);
begin
  inherited;

  if (dmgeral.PCP_CD_M_ROM_PED.RecordCount > 0) then
     begin
       Showmessage('Já existe pedido inserido no relatório de carga.');
       exit;
     end;

  PCP_FM_M_ROM_IPE := TPCP_FM_M_ROM_IPE.Create(Self);
  PCP_FM_M_ROM_IPE.ShowModal;

  SomarQtdePedido;
end;

procedure TPCP_FM_M_ROM.btnAddLoteClick(Sender: TObject);
begin
  inherited;
  try
    dmGeral.PCP_CD_M_ROM.BeforePost := nil;
    if not (dmGeral.PCP_CD_M_ROM_PED.IsEmpty) then
      begin
        panel2.Enabled := True;
        dmGeral.PCP_CD_M_ROM_LOT.Insert;
        txtNLote.SetFocus;
      end
    else
      ShowMessage('Pedido de ser preenchido.');
  finally
     dmGeral.PCP_CD_M_ROM.BeforePost := dmGeral.PCP_CD_M_ROMBeforePost;
  end;
end;

procedure TPCP_FM_M_ROM.btnAddPedidoClick(Sender: TObject);
begin
  inherited;
  try
    dmGeral.PCP_CD_M_ROM.BeforePost := nil;
    panel1.Enabled := True;
    dmGeral.PCP_CD_M_ROM_PED.Cancel;
    dmGeral.PCP_CD_M_ROM_PED.Insert;
    txtPedido.SetFocus;
   finally
     dmGeral.PCP_CD_M_ROM.BeforePost := dmGeral.PCP_CD_M_ROMBeforePost;
   end;
end;

procedure TPCP_FM_M_ROM.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if (cbbPesquisa.ItemIndex = 5) or (cbbPesquisa.ItemIndex = 6)  then
       begin
          dmGeral.PCP_CD_M_ROM.Close;
          dmGeral.PCP_CD_M_ROM.Data :=
          dmGeral.PCP_CD_M_ROM.DataRequest(
                  VarArrayOf([cbbPesquisa.ItemIndex+1, txtPesquisa.Text]));
       end
    else
       begin
          dmGeral.PCP_CD_M_ROM.Close;
          dmGeral.PCP_CD_M_ROM.Data :=
          dmGeral.PCP_CD_M_ROM.DataRequest(
                  VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
       end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPCP_FM_M_ROM.btnImprimeClick(Sender: TObject);
var
PathImg: String;
LogoEmpresa: TfrxPictureView;
begin
  inherited;
  // Este código foi levado para rotina de Ordem de Faturamento , depois de Reunião com Allison
  // na reunião dia 04/02/2016

  {PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
  if not dmGeral.PCP_CD_M_ROM.IsEmpty then
    begin
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(PCP_FR_M_ROM.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;

      dmgeral.BUS_CD_M_ROM_REG.Close;
      dmGeral.BUS_CD_M_ROM_REG.Data :=
        dmGeral.BUS_CD_M_ROM_REG.DataRequest(
            VarArrayOf([dmGeral.PCP_CD_M_ROM.FieldByName('id_rom').Text]));

      dmgeral.BUS_CD_M_ROM_PED.Close;
      dmGeral.BUS_CD_M_ROM_PED.Data :=
        dmGeral.BUS_CD_M_ROM_PED.DataRequest(
            VarArrayOf([dmGeral.PCP_CD_M_ROM.FieldByName('id_rom').Text]));

      PCP_FR_M_ROM.PrepareReport();
      PCP_FR_M_ROM.ShowReport();
    end
  else
    begin
      ShowMessage('Nenhum Romaneio Selecionado!');
        exit;
    end;}
end;

procedure TPCP_FM_M_ROM.cbbMotoristaEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BusMotorista(1,'%');
  cbbMotorista.DropDown;
end;

procedure TPCP_FM_M_ROM.cbbMotoristaExit(Sender: TObject);
begin
  inherited;
    if trim(dmGeral.PCP_CD_M_ROM.FieldByName('id_motorista').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           exit;
         end;
       Showmessage('O campo "Motorista" deve ser preenchido.');
       cbbMotorista.SetFocus;
       exit;
     end
    else
      begin
        dmgeral.PCP_CD_M_ROM.FieldByName('int_fonemta').AsString := dmSgq.BUS_CD_C_MTA.FieldByName('fone').AsString;
        dmgeral.PCP_CD_M_ROM.FieldByName('int_celuar').AsString := dmSgq.BUS_CD_C_MTA.FieldByName('celular').AsString;
        dmgeral.PCP_CD_M_ROM.FieldByName('int_email').AsString := dmSgq.BUS_CD_C_MTA.FieldByName('email').AsString;
        dmgeral.PCP_CD_M_ROM.FieldByName('placa').AsString := dmSgq.BUS_CD_C_MTA.FieldByName('placa').AsString;
      end;
end;

procedure TPCP_FM_M_ROM.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,1] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPCP_FM_M_ROM.dpkEmissaoExit(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_FUN.Close;

  dmGeral.PCP_CD_M_ROM.FieldByName('INT_NOMERES').Text := '';

  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, xFuncionario]));

  dmGeral.PCP_CD_M_ROM.FieldByName('INT_NOMERES').Text :=
       dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;
end;

procedure TPCP_FM_M_ROM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_ROM.Close;
  FreeAndNil(PCP_FM_M_ROM);
  frmSoftMenu.rbMenu.ShowTabGroups := true;
end;

procedure TPCP_FM_M_ROM.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_ROM.Close;
  dmGeral.PCP_CD_M_ROM.Data := dmGeral.PCP_CD_M_ROM.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_ROM.Open;
  dmGeral.AtualizarGridItens(dgPedIte,'int_nomeite',20,9);

  dmSgq.BusMotorista(1,'%');
end;

procedure TPCP_FM_M_ROM.FormShow(Sender: TObject);
begin
  inherited;
  frmSoftMenu.rbMenu.ShowTabGroups := false;
end;

procedure TPCP_FM_M_ROM.Griditem;
var
  itens_sel: String;
  qtde_total: Currency;
  sequencia: integer;
  nome_ite: String;
  id_rom_ite: integer;
begin
  dmgeral.BUS_CD_M_PED.Close;
  dmGeral.BUS_CD_M_PED.Data :=
    dmGeral.BUS_CD_M_PED.DataRequest(
      VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').Text]));

  dmgeral.BUS_CD_M_PED_ITE.First;
  dmGeral.PCP_CD_M_ROM_PED.AfterPost := NIL;
  while not dmgeral.BUS_CD_M_PED_ITE.Eof do
    begin
      dmgeral.PCP_CD_M_ROM_PED_ITE.Insert;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ROM').AsInteger := dmgeral.PCP_CD_M_ROM.FieldByName('ID_ROM').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_PEDIDO').AsInteger := dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_COR').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_TAMANHO').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger;
      // Maxsuel Victor, em 08/08/2017
      // Atenção o valor do campo QTDE pode ficar diferente do pedido do venda, pois o usuário pode alterar depois
      // a qtde do pedido.
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('QTDE').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('int_qtde_ped_ite').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('QTDE').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONJ').AsCurrency      := 0;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONJ_CONF').AsCurrency := 0;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_PED_ITE').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('id_sequencia').AsInteger;


      if trim(dmgeral.BUS_CD_M_PED_ITE.FieldByName('pcp_obs_item').AsString) <> '' then
          dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMEITE').AsString :=
            dmgeral.BUS_CD_M_PED_ITE.FieldByName('pcp_obs_item').AsString
      else
         dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMEITE').AsString := dmgeral.BUS_CD_M_PED_ITE.FieldByName('INT_NOMEITE').AsString;

      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMECOR').AsString := dmgeral.BUS_CD_M_PED_ITE.FieldByName('INT_NOMECOR').AsString;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMETAM').AsString := dmgeral.BUS_CD_M_PED_ITE.FieldByName('INT_NOMETAM').AsString;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_UNDVENDA').AsString := dmgeral.BUS_CD_M_PED_ITE.FieldByName('INT_ID_UND_VENDA').AsString;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsInteger := 0;

      if itens_sel <> '' then
         begin
          itens_sel :=
          itens_sel + ',' +''''+ dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsString+'''';
         end;
      if itens_sel = '' then
         begin
           itens_sel :=
           itens_sel +'''' + dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsString+'''';
         end;

      // Incluir os itens do pedido na parte dos itens do romaneio ------------
      if trim(dmgeral.BUS_CD_M_PED_ITE.FieldByName('pcp_obs_item').AsString) <> '' then
         nome_ite := dmgeral.BUS_CD_M_PED_ITE.FieldByName('pcp_obs_item').AsString
      else
         nome_ite := dmgeral.BUS_CD_M_PED_ITE.FieldByName('INT_NOMEITE').AsString;

      // Gerar o código sequencial da tabela pcp_tb_m_rom_ite
      if dmgeral.PCP_CD_M_ROM_ITE.RecordCount = 0 then
         id_rom_ite := 0
      else
         begin
           dmgeral.PCP_CD_M_ROM_ITE.IndexFieldNames := 'id_rom_ite';
           dmgeral.PCP_CD_M_ROM_ITE.Last;
           id_rom_ite := dmgeral.PCP_CD_M_ROM_ITE.FieldByName('id_rom_ite').AsInteger + 1;
         end;


      if dmgeral.PCP_CD_M_ROM_ITE.Locate('id_item;id_cor;id_tamanho;nome_ite',
         VarArrayof([dmgeral.BUS_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger,
                     dmgeral.BUS_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger,
                     dmgeral.BUS_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger,
                     nome_ite]),[]) then
         begin
           dmgeral.PCP_CD_M_ROM_ITE.Edit;
           dmgeral.PCP_CD_M_ROM_ITE.FieldByName('QTDE').AsCurrency := dmgeral.PCP_CD_M_ROM_ITE.FieldByName('QTDE').AsCurrency +
                                    dmgeral.BUS_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency;
         end
      else
         begin
            dmgeral.PCP_CD_M_ROM_ITE.Insert;
            dmgeral.PCP_CD_M_ROM_ITE.FieldByName('ID_ROM_ITE').AsInteger  := id_rom_ite;
            dmgeral.PCP_CD_M_ROM_ITE.FieldByName('ID_ITEM').AsInteger     := dmgeral.BUS_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger;
            dmgeral.PCP_CD_M_ROM_ITE.FieldByName('NOME_ITE').AsString     := nome_ite;
            dmgeral.PCP_CD_M_ROM_ITE.FieldByName('ID_COR').AsInteger      := dmgeral.BUS_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger;
            dmgeral.PCP_CD_M_ROM_ITE.FieldByName('ID_TAMANHO').AsInteger  := dmgeral.BUS_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger;
            dmgeral.PCP_CD_M_ROM_ITE.FieldByName('QTDE').AsCurrency        := dmgeral.BUS_CD_M_PED_ITE.FieldByName('QTDE').AsCurrency;
         end;
      dmgeral.PCP_CD_M_ROM_ITE.Post;
      // ---------------------------------------------------------------------

      dmgeral.PCP_CD_M_ROM_PED_ITE.Post;
      dmgeral.BUS_CD_M_PED_ITE.Next;
    end;

  qtde_total := 0;

  BUS_CD_C_ITE_COJ.Close;
  BUS_CD_C_ITE_COJ.Data :=
     BUS_CD_C_ITE_COJ.DataRequest(
        VarArrayOf([1, itens_sel]));

  if not (dmGeral.PCP_CD_M_ROM_PED_ICJ.IsEmpty) then
     begin
       dmGeral.PCP_CD_M_ROM_PED_ICJ.EmptyDataSet;
     end;

  sequencia := 0;
  dmgeral.PCP_CD_M_ROM_PED_ITE.First;
  while not  dmgeral.PCP_CD_M_ROM_PED_ITE.Eof do
    begin
      try

      BUS_CD_C_ITE_COJ.Filtered := True;
      BUS_CD_C_ITE_COJ.Filter   := ' ID_ITEM = ' + dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsString;
      while not (BUS_CD_C_ITE_COJ.eof) do
      //if BUS_CD_C_ITE_COJ.Locate('ID_ITEM',dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsInteger,[]) then
         begin
           inc(sequencia);

           dmGeral.PCP_CD_M_ROM_PED_ICJ.Insert;

           dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('ID_ITEM').AsInteger :=
                   BUS_CD_C_ITE_COJ.FieldByName('ID_ITEM_CONJUGADO').AsInteger;

           qtde_total := qtde_total +
                    ( BUS_CD_C_ITE_COJ.FieldByName('qtde').AsCurrency *
                      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde').AsCurrency);


           dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('id_sequencia').AsInteger := sequencia;

           dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('id_responsavel').AsInteger :=
                   dmGeral.PCP_CD_M_ROM.FieldByName('id_responsavel').AsInteger;

           dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('id_ped_ite').AsInteger :=
                   dmGeral.PCP_CD_M_ROM_PED_ITE.FieldByName('id_ped_ite').AsInteger;

           dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('int_undvenda').AsString :=
                   BUS_CD_C_ITE_COJ.FieldByName('int_undvendaconj').AsString;

           dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('qtde_a_inserir').AsCurrency :=
                   (BUS_CD_C_ITE_COJ.FieldByName('qtde').AsCurrency *
                    dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde').AsCurrency);

           dmgeral.PCP_CD_M_ROM_PED_ITE.edit;
           dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONJ').AsCurrency :=
                   dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONJ').AsCurrency +
                      ( BUS_CD_C_ITE_COJ.FieldByName('qtde').AsCurrency *
                       dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde').AsCurrency);
           dmgeral.PCP_CD_M_ROM_PED_ITE.Post;

           dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('qtde_conf').AsCurrency := 0;

           dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('ID_COR').AsInteger :=
                   dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_COR').AsInteger;

           dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('ID_TAMANHO').AsInteger :=
                   dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_TAMANHO').AsInteger;

           dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('int_nomeite').AsString :=
                   BUS_CD_C_ITE_COJ.FieldByName('INT_NOMEITE').AsString;

           dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('int_nometam').AsString :=
                   BUS_CD_C_ITE_COJ.FieldByName('INT_NOMETAM').AsString;

           dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('int_nomecor').AsString :=
                   BUS_CD_C_ITE_COJ.FieldByName('INT_NOMECOR').AsString;

           dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('DTA_CONFERENCIA').AsDateTime := xDataSis;
           dmGeral.PCP_CD_M_ROM_PED_ICJ.FieldByName('HOR_CONFERENCIA').AsDateTime := xHoraSis;

           dmGeral.PCP_CD_M_ROM_PED_ICJ.Post;

           BUS_CD_C_ITE_COJ.Next;
         end;
      finally
         BUS_CD_C_ITE_COJ.Filtered := false;
      end;
       dmgeral.PCP_CD_M_ROM_PED_ITE.Next;
    end;
  dmgeral.PCP_CD_M_ROM_PED_ITE.First;

  dmgeral.PCP_CD_M_ROM_PED.FieldByName('qtde_total_item_conj').AsCurrency := qtde_total;
  dmgeral.PCP_CD_M_ROM_PED.FieldByName('qtde_total_item_conj_conf').AsCurrency := 0;

  dmGeral.PCP_CD_M_ROM_PED.AfterPost := dmGeral.PCP_CD_M_ROM_PEDAfterPost;
end;


procedure TPCP_FM_M_ROM.ItensDoPedidoPca;
var
  itens_sel: String;
  qtde_total: Currency;
  sequencia: integer;
begin
  dmgeral.BUS_CD_M_PED.Close;
  dmGeral.BUS_CD_M_PED.Data :=
    dmGeral.BUS_CD_M_PED.DataRequest(
      VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').Text]));

  dmgeral.BUS_CD_M_PED_ITE.First;
  dmGeral.PCP_CD_M_ROM_PED.AfterPost := NIL;
  while not dmgeral.BUS_CD_M_PED_ITE.Eof do
    begin
      dmgeral.PCP_CD_M_ROM_PED_ITE.Insert;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ROM').AsInteger := dmgeral.PCP_CD_M_ROM.FieldByName('ID_ROM').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_PEDIDO').AsInteger := dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('ID_ITEM').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_COR').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('ID_COR').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_TAMANHO').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('ID_TAMANHO').AsInteger;
      // Maxsuel Victor, em 08/08/2017
      // Atenção o valor do campo QTDE pode ficar diferente do pedido do venda, pois o usuário pode alterar depois
      // a qtde do pedido.
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('QTDE').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('int_qtde_ped_ite').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('QTDE').AsInteger;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONJ').AsCurrency      := 0;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONJ_CONF').AsCurrency := 0;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_PED_ITE').AsInteger := dmgeral.BUS_CD_M_PED_ITE.FieldByName('id_sequencia').AsInteger;


      if trim(dmgeral.BUS_CD_M_PED_ITE.FieldByName('pcp_obs_item').AsString) <> '' then
          dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMEITE').AsString :=
            dmgeral.BUS_CD_M_PED_ITE.FieldByName('pcp_obs_item').AsString
      else
         dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMEITE').AsString := dmgeral.BUS_CD_M_PED_ITE.FieldByName('INT_NOMEITE').AsString;

      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMECOR').AsString := dmgeral.BUS_CD_M_PED_ITE.FieldByName('INT_NOMECOR').AsString;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMETAM').AsString := dmgeral.BUS_CD_M_PED_ITE.FieldByName('INT_NOMETAM').AsString;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_UNDVENDA').AsString := dmgeral.BUS_CD_M_PED_ITE.FieldByName('INT_ID_UND_VENDA').AsString;
      dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE_CONFERIDA').AsInteger := 0;

      if itens_sel <> '' then
         begin
          itens_sel :=
          itens_sel + ',' +''''+ dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsString+'''';
         end;
      if itens_sel = '' then
         begin
           itens_sel :=
           itens_sel +'''' + dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsString+'''';
         end;

      dmgeral.PCP_CD_M_ROM_PED_ITE.Post;
      dmgeral.BUS_CD_M_PED_ITE.Next;
    end;
end;

procedure TPCP_FM_M_ROM.dgLoteIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgLoteIButton.Enabled := False;
     if dmGeral.PCP_CD_M_ROM_LOT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.PCP_CD_M_ROM_LOT.Delete;
     dmGeral.PCP_CD_M_ROM_LOT.Edit;
  finally
    dgLoteIButton.Enabled := true;
  end;
end;

procedure TPCP_FM_M_ROM.dgPedCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
    if dmgeral.PCP_CD_M_ROM_PEDstatus.AsInteger = 0 then
    begin
      aFont.Color := clBlack;
    end;

    if dmgeral.PCP_CD_M_ROM_PEDstatus.AsInteger = 1 then
    begin
      aFont.Color := clBlue;
    end;

    if dmgeral.PCP_CD_M_ROM_PEDstatus.AsInteger = 2 then
    begin
      aFont.Color := clGreen;
    end;

end;

procedure TPCP_FM_M_ROM.dgPedDblClick(Sender: TObject);
begin
  inherited;
  if (btnCancelar.Enabled) and
     (btnGrava.Enabled) then
      begin
        // OpenForm(TPCP_FM_M_ROM_COF, PCP_FM_M_ROM_COF);
        OpenForm(TPCP_FM_M_ROM_ICF, PCP_FM_M_ROM_ICF);
      end;
end;

procedure TPCP_FM_M_ROM.dgPedIButtonClick(Sender: TObject);
begin
  inherited;
  try
    dgPedIButton.Enabled := false;

    if dmGeral.PCP_CD_M_ROM_PED.IsEmpty then
      begin
        ShowMessage('Não há registro para excluir.');
        abort;
      end;

      dmGeral.BUS_CD_M_ORS.Close;
      dmGeral.BUS_CD_M_ORS.Data :=
        dmGeral.BUS_CD_M_ORS.DataRequest(
          VarArrayOf([4, dmgeral.CAD_CD_C_PARid_empresa.Text, dmGeral.PCP_CD_M_ROM_PEDid_pedido.Text]));

    if not dmGeral.BUS_CD_M_ORS.IsEmpty then
      begin
        ShowMessage('Existe ordem de faturamento para o pedido !');
        exit;
      end;

    dmGeral.PCP_CD_M_ROM_PED.Delete;

    PcpRetirarItensDoRomaneio;

    if dmGeral.PCP_CD_M_ROM_PED.IsEmpty then
      begin
        dmGeral.PCP_CD_M_ROM.FieldByName('id_pca').AsString := '0';
      end;

    dmGeral.PCP_CD_M_ROM_PED.Edit;
  finally
    dgPedIButton.Enabled := true;
  end;
end;

procedure TPCP_FM_M_ROM.dgPedRowChanged(Sender: TObject);
begin
  inherited;
  SomarQtdePedido;
end;

procedure TPCP_FM_M_ROM.Panel1Exit(Sender: TObject);
begin
  inherited;
   // Padrao do CMP_SOL
  if (btnAddPedido.Focused) or (dgPed.Focused) or (dgPedIte.Focused) or
     (not dgPedIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;
        dmGeral.PCP_CD_M_ROM_PED.Cancel;
        dmGeral.PCP_CD_M_ROM_PED.edit;
        finally
        end;
      end;
end;

procedure TPCP_FM_M_ROM.Panel2Exit(Sender: TObject);
begin
  inherited;
  // Padrao do CMP_SOL
  if (btnAddLote.Focused) or (dgPedLote.Focused) or
     (not dgLoteIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
        if btnCancelar.Focused then
           begin
             acCancelarExecute(acCancelar);
             exit;
           end;
        if btnGrava.Focused  then
           begin
              acGravarExecute(acGravar);
              exit;
           end;
        dmGeral.PCP_CD_M_ROM_LOT.Cancel;
        dmGeral.PCP_CD_M_ROM_LOT.edit;
        finally
        end;
      end;
  gbLote.SetFocus;
end;

procedure TPCP_FM_M_ROM.PcpRetirarItensDoRomaneio;
begin
   if dmgeral.PCP_CD_M_ROM_ITE.Locate('id_item;id_cor;id_tamanho;nome_ite',
      VarArrayof([dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_ITEM').AsInteger,
                   dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_COR').AsInteger,
                   dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('ID_TAMANHO').AsInteger,
                   dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('INT_NOMEITE').AsString]),[]) then
      begin
        dmgeral.PCP_CD_M_ROM_ITE.edit;
        dmgeral.PCP_CD_M_ROM_ITE.FieldByName('qtde').AsCurrency :=
          dmgeral.PCP_CD_M_ROM_ITE.FieldByName('qtde').AsCurrency -
          dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde').AsCurrency;
        dmgeral.PCP_CD_M_ROM_ITE.post;
      end;
end;

procedure TPCP_FM_M_ROM.SomarQtdePedido;
var
  QtdeTotal: Currency;
begin

  dsoPedIte.DataSet := nil;

  QtdeTotal := 0;
  dmgeral.PCP_CD_M_ROM_PED_ITE.First;
  while not dmgeral.PCP_CD_M_ROM_PED_ITE.eof do
     begin
       QtdeTotal := QtdeTotal + dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('qtde').AsCurrency;
       dmgeral.PCP_CD_M_ROM_PED_ITE.Next;
     end;

  dmgeral.PCP_CD_M_ROM_PED_ITE.First;
  dsoPedIte.DataSet := dmGeral.PCP_CD_M_ROM_PED_ITE;

  txtTotalItensPed.Text := CurrToStr(QtdeTotal);
end;

procedure TPCP_FM_M_ROM.sbApagarCarregamentoClick(Sender: TObject);
 procedure MostraMensagem;
  begin
    ShowMessage('Mensagem');
  end;
begin
  inherited;

   if Dc_MessageDlgCheck('Deseja realmente excluir o carregamento do relatório de carga?' + #13 + '', mtConfirmation, [mbYes, mbNo],
      0, mrNo, true, false,'', @MostraMensagem) = 7 then
      begin
         exit;
      end
   else
      begin
        dmGeral.PCP_CD_M_ROM_PED.First;
        while not dmGeral.PCP_CD_M_ROM_PED.Eof do
           begin
             if dmgeral.PCP_CD_M_ROM_PED.FieldByName('importado').AsBoolean then
                begin
                  dmGeral.PCP_CD_M_ROM_PED.delete;
                end
             else
                dmGeral.PCP_CD_M_ROM_PED.Next;
           end;
        dmGeral.PCP_CD_M_ROMid_pca.Text := '0';
      end;
end;

procedure TPCP_FM_M_ROM.TestOrdemFaturamento;
begin
  dmGeral.PCP_CD_M_ROM_PED.First;
  while not dmGeral.PCP_CD_M_ROM_PED.Eof do
    begin
      dmGeral.BUS_CD_M_ORS.Close;
      dmGeral.BUS_CD_M_ORS.Data :=
        dmGeral.BUS_CD_M_ORS.DataRequest(
          VarArrayOf([4, dmgeral.CAD_CD_C_PARid_empresa.Text, dmGeral.PCP_CD_M_ROM_PEDid_pedido.Text]));

      if not dmGeral.BUS_CD_M_ORS.IsEmpty then
        begin
          ShowMessage('Existe ordem de faturamento para o pedido: '+dmGeral.PCP_CD_M_ROM_PEDid_pedido.Text+' !');
          abort;
        end;
      dmGeral.PCP_CD_M_ROM_PED.Next;
    end;
end;

procedure TPCP_FM_M_ROM.TestQdte;
begin

  Qtde_PED :=0;
  Qtde_Lot :=0;

  dmgeral.PCP_CD_M_ROM_PED.First;
  while not dmgeral.PCP_CD_M_ROM_PED.Eof do
    begin
      dmgeral.PCP_CD_M_ROM_PED_ITE.First;
      while not dmgeral.PCP_CD_M_ROM_PED_ITE.Eof do
        begin
         Qtde_PED := Qtde_Ped + dmgeral.PCP_CD_M_ROM_PED_ITE.FieldByName('QTDE').AsInteger;
         dmgeral.PCP_CD_M_ROM_PED_ITE.Next;
        end;
      dmgeral.PCP_CD_M_ROM_PED.Next;
    end;

  dmgeral.PCP_CD_M_ROM_LOT.First;
  while not dmgeral.PCP_CD_M_ROM_LOT.Eof do
    begin
      Qtde_Lot := Qtde_Lot + dmgeral.PCP_CD_M_ROM_LOT.FieldByName('QTDE').AsInteger;
      dmgeral.PCP_CD_M_ROM_LOT.Next;
    end;

end;

procedure TPCP_FM_M_ROM.txtCodCarregEnter(Sender: TObject);
begin
  inherited;
  CodAntCarregamento :=  txtCodCarreg.text;
end;

procedure TPCP_FM_M_ROM.txtCodCarregExit(Sender: TObject);
procedure MostraMensagem;
  begin
    ShowMessage('Mensagem');
  end;
begin
  inherited;

  if (CodAntCarregamento) <> (trim(txtCodCarreg.Text)) then
      if dmGeral.PCP_CD_M_ROM_PED.RecordCount > 0 then
         begin
           Showmessage('Não é permitido alterar o código do carregamento, pois já existe pedido lançado neste relatório de carga.');

           Showmessage('Se deseja informar um novo código de carregamento, é preciso que você delete o carregamento clicando no botão ao lado.');
           dmgeral.PCP_CD_M_ROM.FieldByName('id_pca').AsString := CodAntCarregamento;
           txtCodCarreg.Text :=  CodAntCarregamento;
           exit;
         end;

  if (trim(txtCodCarreg.Text) <> '') and (trim(txtCodCarreg.Text) <> '0') then
      begin

         if (CodAntCarregamento <> '0') and ( (CodAntCarregamento) <> (trim(txtCodCarreg.Text)) ) then
            begin
              if dmGeral.PCP_CD_M_ROM_PED.RecordCount > 0 then
                 begin
                   Showmessage('Não é permitido alterar o código do carregamento, pois já existe pedido lançado neste relatório de carga.');
                   Showmessage('Se deseja informar um novo código de carregamento, é preciso que você delete o carregamento clicando no botão ao lado.');
                   dmgeral.PCP_CD_M_ROM.FieldByName('id_pca').AsString := CodAntCarregamento;
                   txtCodCarreg.Text := CodAntCarregamento;
                   exit;
                 end;
            end;

        if (CodAntCarregamento) = (trim(txtCodCarreg.Text)) then
           begin
             Showmessage('Carregamento já importado para este relatório de carga.');
             exit;
           end;

        dmGeral.BUS_CD_M_PCA.Close;
           dmGeral.BUS_CD_M_PCA.Data :=
              dmGeral.BUS_CD_M_PCA.DataRequest(VarArrayOf([0, txtCodCarreg.Text]));
        if dmGeral.BUS_CD_M_PCA.IsEmpty then
           begin
             ShowMessage('Carregamento não existe.');
             dmgeral.PCP_CD_M_ROM.FieldByName('id_pca').AsString := CodAntCarregamento;
             dmGeral.BUS_CD_M_PCA.Close;
             exit;
           end;


        if (dmGeral.BUS_CD_M_PCA.FieldByName('STATUS').AsInteger = 1) then
            begin
              ShowMessage('O carregamento selecionado já foi importado.');
              dmgeral.PCP_CD_M_ROM.FieldByName('id_pca').AsString := CodAntCarregamento;
              dmGeral.BUS_CD_M_PCA.Close;
              exit;
            end;

        if (dmgeral.PCP_CD_M_ROM_PED.RecordCount > 0) then
            begin
              Showmessage('Já existe pedido inserido no relatório de carga.');
              dmGeral.BUS_CD_M_PCA.Close;
              exit;
            end;

        dmGeral.BUS_CD_M_PCA_PED.First;
        while not dmGeral.BUS_CD_M_PCA_PED.EOF do
           begin

              if (dmgeral.BUS_CD_M_PCA_PED.FieldByName('int_situacaoped').AsInteger = 2) and  // em produção
                 (dmgeral.BUS_CD_M_PCA_PED.FieldByName('int_sitaprov').AsInteger = 1) then    // Liberado
                 begin

                    dmgeral.BUS_CD_M_PED.Close;
                    dmGeral.BUS_CD_M_PED.Data :=
                      dmGeral.BUS_CD_M_PED.DataRequest(
                        VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, dmgeral.BUS_CD_M_PCA_PED.FieldByName('id_pedido').AsString]));

                    dmgeral.BUS_CD_C_CLI.Close;
                    dmGeral.BUS_CD_C_CLI.Data :=
                      dmGeral.BUS_CD_C_CLI.DataRequest(
                        VarArrayOf([0,dmgeral.BUS_CD_M_PED.FieldByName('id_cliente').AsString]));



                    dmgeral.PCP_CD_M_ROM_PED.Insert;
                    dmgeral.PCP_CD_M_ROM_PED.FieldByName('STATUS').AsInteger := 0;
                    dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').AsString :=
                            dmgeral.BUS_CD_M_PCA_PED.FieldByName('id_pedido').AsString;
                    dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_NOMECLI').AsString :=
                            dmgeral.BUS_CD_M_PCA_PED.FieldByName('INT_NOMECLI').AsString;;
                    dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_DTAPEDIDO').AsString :=
                            dmgeral.BUS_CD_M_PED.FieldByName('dta_pedido').AsString;

                    dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_CODIGOREGCLI').AsString :=
                            dmgeral.BUS_CD_C_CLI.FieldByName('ID_REGIAO').AsString;
                    dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_NOMEREG').AsString :=
                            dmgeral.BUS_CD_C_CLI.FieldByName('INT_NOMEREG').AsString;

                    dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_CODCLI').AsString :=
                            dmgeral.BUS_CD_M_PED.FieldByName('id_cliente').AsString;
                    dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_CUBAGEMPED').AsString :=
                            dmgeral.BUS_CD_M_PED.FieldByName('CUBAGEM').AsString;
                    dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_NOMEVEND').AsString :=
                            dmgeral.BUS_CD_M_PED.FieldByName('INT_NOMERES').AsString;

                    dmgeral.PCP_CD_M_ROM_PED.FieldByName('importado').AsBoolean := true;

                    ItensDoPedidoPca;

                    dmgeral.PCP_CD_M_ROM_PED.Post;
                 end;
             dmgeral.BUS_CD_M_PCA_PED.Next;
           end;

        if (dmgeral.PCP_CD_M_ROM_PED.RecordCount > 0) then
            begin
              dmgeral.PCP_CD_M_ROM.FieldByName('ID_PCA').AsInteger := dmGeral.BUS_CD_M_PCA_PED.FieldByName('ID_CARREGAMENTO').AsInteger;
            end;

        dmgeral.PCP_CD_M_ROM_PED.First;
      end;
end;

procedure TPCP_FM_M_ROM.txtNLoteExit(Sender: TObject);
var
id_lote:string;
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;
  if dmgeral.PCP_CD_M_ROM_LOT.FieldByName('nro_lote_caminhao').AsString = '' then
    begin
    ShowMessage('Numero do Lote deve ser preenchido');
    txtNLote.SetFocus;
    end
  else
    begin
      id_lote:= dmgeral.PCP_CD_M_ROM_LOT.FieldByName('nro_lote_caminhao').Text;
      if dmgeral.PCP_CD_M_ROM_LOT.State in [dsInsert] then
        begin
          dmgeral.PCP_CD_M_ROM_LOT.Cancel;
          if dmgeral.PCP_CD_M_ROM_LOT.Locate('nro_lote_caminhao',id_lote,[]) then
            begin
              ShowMessage('Lote já inserido');
              dmgeral.PCP_CD_M_ROM_LOT.Insert;
              dmgeral.PCP_CD_M_ROM_LOT.FieldByName('nro_lote_caminhao').Text := '';
              txtNlote.SetFocus;
              abort;
            end
          else
            begin
              dmgeral.PCP_CD_M_ROM_LOT.Insert;
              dmgeral.PCP_CD_M_ROM_LOT.FieldByName('nro_lote_caminhao').AsString := id_lote;
              //txtObservacaoLote.SetFocus;
              ActiveControl := nil;
              PostMessage(txtObservacaoLote.Handle, WM_SETFOCUS, 0, 0);
              txtObservacaoLote.SetFocus;
            end;
        end;
    end;
end;

procedure TPCP_FM_M_ROM.txtPedidoButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_PED := TPSQ_FM_X_PED.Create(Self);
  PSQ_FM_X_PED.ShowModal;

  if not dmgeral.BUS_CD_M_PED.IsEmpty  then
    begin
      ID_PED := dmgeral.BUS_CD_M_PED.FieldByName('ID_PEDIDO').AsString;
      dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').AsString := dmgeral.BUS_CD_M_PED.FieldByName('ID_PEDIDO').AsString;
      dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_ROM').AsString := dmgeral.PCP_CD_M_ROM.FieldByName('ID_ROM').AsString;
      dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_NOMECLI').AsString := dmgeral.BUS_CD_M_PED.FieldByName('INT_NOMECLI').AsString;

      dmgeral.BUS_CD_C_CLI.Close;
      dmGeral.BUS_CD_C_CLI.Data :=
        dmGeral.BUS_CD_C_CLI.DataRequest(
          VarArrayOf([1,dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_NOMECLI').AsString]));

      dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_CODIGOREGCLI').AsString := dmgeral.BUS_CD_C_CLI.FieldByName('ID_REGIAO').AsString;
      dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_NOMEREG').AsString := dmgeral.BUS_CD_C_CLI.FieldByName('INT_NOMEREG').AsString;
    end;
end;

procedure TPCP_FM_M_ROM.txtPedidoExit(Sender: TObject);
var
  Cliente,CodRegiao,Regiao,Emissao,ID_cliente,Cubagem,Representante :string;
  SMPrincipal : TSMClient;
  IdRom: Integer;
begin
  inherited;
  if (btnCancelar.Focused) or (btnGrava.Focused) then
    begin
      exit;
    end;

  if dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').Text = '' then
    begin

       {if btnAddPedido.Focused then
          exit;

       if dgPed.Focused then
          exit;

       if not dgPedIButton.Enabled then
          exit;}


      panel1.Enabled := false;
      dmgeral.PCP_CD_M_ROM_PED.Cancel;
      gbPedido.SetFocus;
    end
  else
    begin
      SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
      IdRom := SMPrincipal.enSgqVefPedRom(dmgeral.PCP_CD_M_ROM_PEDid_pedido.Text);

      if IdRom <> 0 then
        begin
          ShowMessage('Este pedido já existe no relatório de carga Nº '+IntToStr(IdRom)+'.');
          dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').Text := '';
          txtPedido.SetFocus;
          abort;
        end;

      dmgeral.BUS_CD_M_PED.Close;
      dmGeral.BUS_CD_M_PED.Data :=
        dmGeral.BUS_CD_M_PED.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').Text]));

      if dmgeral.BUS_CD_M_PED.IsEmpty then
         begin
           ShowMessage('Pedido não encontrado.');
           dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').Text := '';
           txtPedido.SetFocus;
           abort;
         end;

      if dmgeral.BUS_CD_M_PED.FieldByName('situacao_aprovacao').AsInteger = 0 then
         begin
           ShowMessage('Pedido de venda está esperando por aprovação.');
           dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').Text := '';
           txtPedido.SetFocus;
           abort;
         end;

      if dmgeral.BUS_CD_M_PED.FieldByName('situacao_aprovacao').AsInteger = 2 then
         begin
           ShowMessage('Este pedido de venda foi reprovado.');
           dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').Text := '';
           txtPedido.SetFocus;
           abort;
         end;

      if dmgeral.BUS_CD_M_PED.FieldByName('situacao').AsInteger = 3 then
         begin
           ShowMessage('Este Pedido de venda já foi faturado.');
           dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').Text := '';
           txtPedido.SetFocus;
           abort;
         end;


      dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_NOMECLI').AsString := dmgeral.BUS_CD_M_PED.FieldByName('INT_NOMECLI').AsString;

      dmgeral.BUS_CD_C_CLI.Close;
      dmGeral.BUS_CD_C_CLI.Data :=
        dmGeral.BUS_CD_C_CLI.DataRequest(
          VarArrayOf([1,dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_NOMECLI').AsString]));



      ID_PED  := dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').AsString;
      Cliente   := dmgeral.BUS_CD_M_PED.FieldByName('INT_NOMECLI').AsString;
      Emissao   := dmgeral.BUS_CD_M_PED.FieldByName('DTA_PEDIDO').AsString;
      CodRegiao := dmgeral.BUS_CD_C_CLI.FieldByName('ID_REGIAO').AsString;
      Regiao    := dmgeral.BUS_CD_C_CLI.FieldByName('INT_NOMEREG').AsString;

      Id_Cliente := dmgeral.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString;
      Cubagem := dmgeral.BUS_CD_M_PED.FieldByName('CUBAGEM').AsString;
      Representante := dmgeral.BUS_CD_M_PED.FieldByName('INT_NOMERES').AsString;

      if dmgeral.PCP_CD_M_ROM_PED.State in [dsInsert] then
        begin
          dmgeral.PCP_CD_M_ROM_PED.Cancel;
          if dmgeral.PCP_CD_M_ROM_PED.Locate('ID_PEDIDO',ID_PED,[]) then
            begin
              ShowMessage('Pedido já inserido!');
              dmgeral.PCP_CD_M_ROM_PED.Insert;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').Text := '';
              txtPedido.SetFocus;
              abort;
            end
          else
            begin
              dmgeral.PCP_CD_M_ROM_PED.Insert;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('STATUS').AsInteger := 0;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('ID_PEDIDO').AsString := ID_PED;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_NOMECLI').AsString := Cliente;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_DTAPEDIDO').AsString := Emissao;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_CODIGOREGCLI').AsString := CodRegiao;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_NOMEREG').AsString := Regiao;

              dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_CODCLI').AsString :=  Id_Cliente;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_CUBAGEMPED').AsString := Cubagem;
              dmgeral.PCP_CD_M_ROM_PED.FieldByName('INT_NOMEVEND').AsString :=  Representante;


              GridItem;
              dmgeral.PCP_CD_M_ROM_PED.Post;

              //panel1.Enabled := false;
              //ActiveControl := nil;
              //PostMessage(btnAddPedido.Handle, WM_SETFOCUS, 0, 0);
              //btnAddPedido.SetFocus;
              //btnAddPedidoClick(self);
              dmGeral.PCP_CD_M_ROM_PED.Cancel;
              dmGeral.PCP_CD_M_ROM_PED.Insert;
              txtPedido.SetFocus;
            end;
        end;
    end;
end;

procedure TPCP_FM_M_ROM.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;

procedure TPCP_FM_M_ROM.txtQtdeExit(Sender: TObject);
begin
  inherited;
  //Padrão CMP_SOL
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtObservacaoLote.Focused or txtNLote.Focused then
     begin
       exit;
     end;

  if dmgeral.PCP_CD_M_ROM_LOT.FieldByName('qtde').Text = '' then
    begin
      ShowMessage('Informe a quantidade.');
      txtqtde.SetFocus;
      exit;
    end;

   if dmgeral.PCP_CD_M_ROM_LOT.FieldByName('qtde').AsFloat = 0 then
    begin
      ShowMessage('Quantidade deve ser maior que zero.');
      dmGeral.PCP_CD_M_ROM_LOT.FieldByName('QTDE').AsString := '';
      txtqtde.SetFocus;
      exit;
    end;


   dmgeral.PCP_CD_M_ROM_LOT.Post;
   panel2.Enabled := false;
   gbLote.SetFocus;

    //end;
{   ActiveControl := nil;
       PostMessage(btnAddComposicao.Handle, WM_SETFOCUS, 0, 0);
       btnAddComposicao.SetFocus;}
end;

end.
