unit CSU_UN_C_CLI_EXT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.Mask, JvExMask, JvToolEdit, Datasnap.DBClient, Vcl.DBCtrls,
  Vcl.ComCtrls, enFunc,frxClass, frxDBSet, frxExportXLS, frxExportPDF;

type
  TCSU_FM_C_CLI_EXT = class(TPAD_FM_X_FRM)
    dsOFPrestCta: TwwDataSource;
    dsOFPrestCtaAberto: TwwDataSource;
    cdsOFs: TClientDataSet;
    cdsOFPrestCta: TClientDataSet;
    cdsOFPrestCtaAberto: TClientDataSet;
    cdsOFsid_ors: TIntegerField;
    cdsOFsdta_emissao: TDateField;
    cdsOFsid_pedido: TIntegerField;
    cdsOFsvlr_liquido: TFMTBCDField;
    cdsOFPrestCtaid_ors: TIntegerField;
    cdsOFPrestCtadta_emissao: TDateField;
    cdsOFPrestCtaid_pedido: TIntegerField;
    cdsOFPrestCtavlr_liquido: TFMTBCDField;
    cdsOFPrestCtavlr_saldo: TFMTBCDField;
    cdsOFPrestCtaAbertoid_ors: TIntegerField;
    cdsOFPrestCtaAbertodta_emissao: TDateField;
    cdsOFPrestCtaAbertoid_pedido: TIntegerField;
    cdsOFPrestCtaAbertovlr_liquido: TFMTBCDField;
    cdsOFPrestCtaAbertovlr_saldo: TFMTBCDField;
    Panel5: TPanel;
    txtRazaoSocial: TDBEdit;
    Label7: TLabel;
    txtCodigo: TDBEdit;
    txtFantasia: TDBEdit;
    txtCidade: TDBEdit;
    txtUf: TDBEdit;
    txtFoneFixo: TDBEdit;
    txtFoneMovel: TDBEdit;
    txtCnpjCpf: TDBEdit;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    pnFiltroVendas: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    btnFiltrar: TButton;
    pnVendas: TPanel;
    pnOFPrestCtaAberto: TPanel;
    Label21: TLabel;
    grdOFsPrestCtaAberto: TwwDBGrid;
    Panel7: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    txtVlrOFPrestCtaAberto: TEdit;
    txtVlrOFPrestCtaSldAberto: TEdit;
    pnOFs: TPanel;
    Label24: TLabel;
    grdOFs: TwwDBGrid;
    Panel9: TPanel;
    Label25: TLabel;
    txtVlrTotalOFs: TEdit;
    pnOFPrestCta: TPanel;
    Label26: TLabel;
    grdOFsPrestCta: TwwDBGrid;
    Panel11: TPanel;
    Label27: TLabel;
    txtVlrOFPrestCta: TEdit;
    Label29: TLabel;
    dsTotTitPresCta: TwwDataSource;
    dsTotTitAberto: TwwDataSource;
    dsTotChqDev: TwwDataSource;
    grdTotTitPagos: TwwDataSource;
    cdsTotTitPresCta: TClientDataSet;
    cdsTotTitPresCtadta_vencimento: TDateField;
    cdsTotTitPresCtavlr_saldo: TFMTBCDField;
    cdsTotTitPresCtanum_parcela: TWideStringField;
    cdsTotTitAberto: TClientDataSet;
    cdsTotTitAbertodescricao: TWideStringField;
    cdsTotTitAbertonum_parcela: TWideStringField;
    cdsTotTitAbertodta_vencimento: TDateField;
    cdsTotTitAbertovlr_saldo: TFMTBCDField;
    cdsTotChqDev: TClientDataSet;
    cdsTotChqDevche_cheque: TIntegerField;
    cdsTotChqDevdta_vencimento: TDateField;
    cdsTotChqDevvlr_saldo: TFMTBCDField;
    cdsTotTitPagos: TClientDataSet;
    cdsTotChqDevdescricao: TWideStringField;
    cdsTotTitPagosdescricao: TWideStringField;
    cdsTotTitPagosdta_pagamento: TDateField;
    cdsTotTitPagosnum_parcela: TWideStringField;
    cdsTotTitPagosvlr_pagamento: TFMTBCDField;
    cdsTotTitPresCtadescricao: TWideStringField;
    pgInformacoesFin: TPageControl;
    tbTitChq: TTabSheet;
    tsTitPagos: TTabSheet;
    pnFiltroTitulos: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    deInicialFin: TJvDateEdit;
    deFinalFin: TJvDateEdit;
    btnFiltrarFin: TButton;
    pnTitPagos: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    txtVlrTotPagos: TEdit;
    grdTotPagos: TwwDBGrid;
    pnTitulos: TPanel;
    pnTitPrestCta: TPanel;
    lblPagamentos: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    txtVlrTotTitPresCta: TEdit;
    grdTotTitPresCta: TwwDBGrid;
    pnChequesDev: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    txtVlrTotChqDev: TEdit;
    grdTotChqDev: TwwDBGrid;
    pnTitAberto: TPanel;
    Label30: TLabel;
    Panel13: TPanel;
    Label31: TLabel;
    txtVlrTitAberto: TEdit;
    grdTotTitAberto: TwwDBGrid;
    pnChequesDepositar: TPanel;
    Label6: TLabel;
    Panel6: TPanel;
    Label28: TLabel;
    txtVlrChqDepositar: TEdit;
    grdChqDepositar: TwwDBGrid;
    dsTotChqDepositar: TDataSource;
    cdsTotChqDepositar: TClientDataSet;
    cdsTotChqDepositardescricao: TWideStringField;
    cdsTotChqDepositarche_cheque: TIntegerField;
    cdsTotChqDepositardta_vencimento: TDateField;
    cdsTotChqDepositarvlr_saldo: TFMTBCDField;
    pmTitPrestCta: TPopupMenu;
    pmTitAberto: TPopupMenu;
    LocalizarOF1: TMenuItem;
    cdsTotTitPresCtaid_ors: TIntegerField;
    LocalizarOF2: TMenuItem;
    cdsTotTitAbertoid_ors: TIntegerField;
    Label32: TLabel;
    txtVlrTitAbertoVencido: TEdit;
    Label33: TLabel;
    txtVlrChqDepositarVencido: TEdit;
    pmOFsPrestCta: TPopupMenu;
    Visualizarbaixas1: TMenuItem;
    FIN_PD_M_RBX: TfrxPDFExport;
    FIN_XL_M_RBX: TfrxXLSExport;
    FIN_DB_M_RBX_GER: TfrxDBDataset;
    FIN_DB_M_RBX: TfrxDBDataset;
    FIN_DB_M_RBX_TIT: TfrxDBDataset;
    FIN_FR_M_RBX: TfrxReport;
    FIN_FR_M_RBX_DNR: TfrxReport;
    tsChqDaOF: TTabSheet;
    pnChqDaOF: TPanel;
    pnBaixasDoChq: TPanel;
    Label36: TLabel;
    grdTitDaBaixa: TwwDBGrid;
    Label37: TLabel;
    grdBaixasDoCheque: TwwDBGrid;
    Panel3: TPanel;
    gbFiltroChq: TGroupBox;
    txtNroCheque: TEdit;
    btnFiltrarChqOF: TButton;
    Label34: TLabel;
    grdCheques: TwwDBGrid;
    Panel8: TPanel;
    Label35: TLabel;
    grdChqOFs: TwwDBGrid;
    dsChqOFs: TDataSource;
    dsCheques: TDataSource;
    dsBaixasDoCheque: TDataSource;
    dsTitDaBaixa: TDataSource;
    FIN_CD_M_RBX: TClientDataSet;
    FIN_CD_M_RBXid_baixa: TIntegerField;
    FIN_CD_M_RBXid_empresa: TIntegerField;
    FIN_CD_M_RBXdta_baixa: TDateField;
    FIN_CD_M_RBXvlr_baixa: TFMTBCDField;
    FIN_CD_M_RBXobservacao: TWideStringField;
    FIN_CD_M_RBXvlr_cred_utilizado: TFMTBCDField;
    FIN_CD_M_RBXid_forma_pag: TIntegerField;
    FIN_CD_M_RBXid_abertura: TIntegerField;
    FIN_CD_M_RBXid_cliente: TIntegerField;
    FIN_CD_M_RBXint_nomecli: TWideStringField;
    FIN_CD_M_RBXint_nomefpg: TWideStringField;
    FIN_CD_M_RBXFIN_SQ_M_RBX_GER: TDataSetField;
    FIN_CD_M_RBXFIN_SQ_M_RBX_TIT: TDataSetField;
    FIN_CD_M_RBXcod_lme: TWideStringField;
    FIN_CD_M_RBXrev_lme: TWideStringField;
    FIN_CD_M_RBXid_conta: TIntegerField;
    FIN_CD_M_RBXid_tipo_financeiro: TIntegerField;
    FIN_CD_M_RBXid_plano: TWideStringField;
    FIN_CD_M_RBXid_ccusto: TIntegerField;
    FIN_CD_M_RBXvlr_saldo_credito: TFMTBCDField;
    FIN_CD_M_RBXvlr_credito_disponivel: TFMTBCDField;
    FIN_CD_M_RBXid_responsavel: TIntegerField;
    FIN_CD_M_RBXdta_lancamento: TDateField;
    FIN_CD_M_RBXint_nomeres: TWideStringField;
    FIN_CD_M_RBXint_nomeccu: TWideStringField;
    FIN_CD_M_RBXid_maquineta: TIntegerField;
    FIN_CD_M_RBXid_recibo: TIntegerField;
    FIN_CD_M_RBXvlr_a_pagar: TFMTBCDField;
    FIN_CD_M_RBXvlr_pago_ger: TFMTBCDField;
    FIN_CD_M_RBXvlr_tot_ger: TFMTBCDField;
    FIN_CD_M_RBX_GER: TClientDataSet;
    FIN_CD_M_RBX_GERvlr_pagamento: TFMTBCDField;
    FIN_CD_M_RBX_GERdta_vencimento: TDateField;
    FIN_CD_M_RBX_GERche_conta: TIntegerField;
    FIN_CD_M_RBX_GERche_cheque: TIntegerField;
    FIN_CD_M_RBX_GERche_banco: TWideStringField;
    FIN_CD_M_RBX_GERche_emitente: TWideStringField;
    FIN_CD_M_RBX_GERche_agencia: TWideStringField;
    PCP_CD_M_ORS: TClientDataSet;
    PCP_CD_M_ORSid_ors: TIntegerField;
    PCP_CD_M_ORSdta_emissao: TDateField;
    PCP_CD_M_ORSid_pedido: TIntegerField;
    PCP_CD_M_ORSint_nomecli: TWideStringField;
    PCP_CD_M_ORSvlr_liquido: TFMTBCDField;
    BUS_CD_M_REC: TClientDataSet;
    BUS_CD_M_RECid_titulo: TIntegerField;
    BUS_CD_M_RECid_cliente: TIntegerField;
    BUS_CD_M_RECdta_emissao: TDateField;
    BUS_CD_M_REChistorico: TWideStringField;
    BUS_CD_M_RECdta_vencimento: TDateField;
    BUS_CD_M_RECid_forma_pag: TIntegerField;
    BUS_CD_M_RECche_conta: TIntegerField;
    BUS_CD_M_RECche_cheque: TIntegerField;
    BUS_CD_M_RECche_banco: TWideStringField;
    BUS_CD_M_RECche_emitente: TWideStringField;
    BUS_CD_M_RECche_agencia: TWideStringField;
    BUS_CD_M_RECint_nomecli: TWideStringField;
    BUS_CD_M_RECint_nomefpg: TWideStringField;
    BUS_CD_M_RECvlr_parcela: TFMTBCDField;
    Label38: TLabel;
    txtRepresentante: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFiltrarFinClick(Sender: TObject);
    procedure LocalizarOF1Click(Sender: TObject);
    procedure LocalizarOF2Click(Sender: TObject);
    procedure Visualizarbaixas1Click(Sender: TObject);
    procedure FIN_DB_M_RBXCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure btnFiltrarChqOFClick(Sender: TObject);
    procedure tsChqDaOFShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AjustarColunas;
    procedure BuscarDados(DataIni,DataFim,IdCliente: String);
    procedure BuscarDadosFin(DataIni,DataFim,IdCliente: String);
    procedure ImprimirRecibo;
    var
      dataOFs,dataOFPrestCta, dataOFPrestCtaAberto: OleVariant;
      dataTitPrestAberto,dataTitAberto,dataChqDev,dataTitPag,dataChqDepositar: OleVariant;
  end;

var
  CSU_FM_C_CLI_EXT: TCSU_FM_C_CLI_EXT;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, CSU_UN_C_CLI, enSoftMenu;

procedure TCSU_FM_C_CLI_EXT.AjustarColunas;
var
  t: integer;
begin
  inherited;

  t := grdOFs.ColWidths[1] + grdOFs.ColWidths[2] + grdOFs.ColWidths[3];
  grdOFs.ColWidths[4] := (grdOFs.Width - t) - 35;


  t :=  grdOFsPrestCta.ColWidths[1] + grdOFsPrestCta.ColWidths[2] + grdOFsPrestCta.ColWidths[3];
  grdOFsPrestCta.ColWidths[4] := (grdOFsPrestCta.Width - t) - 35;

  t :=  grdOFsPrestCtaAberto.ColWidths[1] + grdOFsPrestCtaAberto.ColWidths[2] + grdOFsPrestCtaAberto.ColWidths[3]
        + grdOFsPrestCtaAberto.ColWidths[4];
  grdOFsPrestCtaAberto.ColWidths[5] := (grdOFsPrestCtaAberto.Width - t) - 35;


  t := grdTotTitPresCta.ColWidths[1] + grdTotTitPresCta.ColWidths[2] + grdTotTitPresCta.ColWidths[3];
  grdTotTitPresCta.ColWidths[4] := (grdTotTitPresCta.Width - t) - 34;

  t := grdTotTitAberto.ColWidths[1] + grdTotTitAberto.ColWidths[2] + grdTotTitAberto.ColWidths[3];;
  grdTotTitAberto.ColWidths[4] := (grdTotTitAberto.Width - t) - 34;

  t := grdTotChqDev.ColWidths[1] + grdTotChqDev.ColWidths[2] + grdTotChqDev.ColWidths[3];;
  grdTotChqDev.ColWidths[4] := (grdTotChqDev.Width - t) - 34;

  t := grdChqDepositar.ColWidths[1] + grdChqDepositar.ColWidths[2] + grdChqDepositar.ColWidths[3];;
  grdChqDepositar.ColWidths[4] := (grdChqDepositar.Width - t) - 34;



 // t := grdTotPagos.ColWidths[1] + grdTotPagos.ColWidths[2] + grdTotPagos.ColWidths[3];;
 // grdTotPagos.ColWidths[4] := (grdTotPagos.Width - t) - 34;

end;

procedure TCSU_FM_C_CLI_EXT.BuscarDados(DataIni,DataFim,IdCliente: String);
var
  SMPrincipal: TSMClient;
  totalOFs,totalOFsPrestCta,totalOFsPrestCtaAberto, totalOFsPrestCtaAbertoSaldo: Currency;
  TotTitPresCta: Currency;
begin
    try
     SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

     SMPrincipal.enSgqFinBucarDadosOFs(DataIni,DataFim,IdCliente,
                                       dataOFs,dataOFPrestCta, dataOFPrestCtaAberto,dataTitPrestAberto);


     cdsOFs.Data := dataOFs;
     cdsOFPrestCta.Data := dataOFPrestCta;
     cdsOFPrestCtaAberto.Data := dataOFPrestCtaAberto;

     cdsTotTitPresCta.Data := dataTitPrestAberto;


     AjustarColunas;


     totalOFs := 0;
     totalOFsPrestCta := 0;
     totalOFsPrestCtaAberto := 0;
     totalOFsPrestCtaAbertoSaldo := 0;

     TotTitPresCta := 0;

     cdsOFS.First;
     while not cdsOFS.eof do
        begin
          totalOFs := totalOFs + cdsOFS.FieldByName('vlr_liquido').AsCurrency;
          cdsOFS.Next;
        end;
     cdsOFS.First;

     cdsOFPrestCta.First;
     while not cdsOFPrestCta.eof do
        begin
          totalOFsPrestCta := totalOFsPrestCta + cdsOFPrestCta.FieldByName('vlr_liquido').AsCurrency;
          cdsOFPrestCta.Next;
        end;
     cdsOFPrestCta.First;


     cdsOFPrestCtaAberto.First;
     while not cdsOFPrestCtaAberto.eof do
        begin
          totalOFsPrestCtaAberto := totalOFsPrestCtaAberto + cdsOFPrestCtaAberto.FieldByName('vlr_liquido').AsCurrency;
          totalOFsPrestCtaAbertoSaldo := totalOFsPrestCtaAbertoSaldo + cdsOFPrestCtaAberto.FieldByName('vlr_saldo').AsCurrency;
          cdsOFPrestCtaAberto.Next;
        end;
     cdsOFPrestCtaAberto.First;


     // Financeiro

     // Títulos a prestar conta
     cdsTotTitPresCta.First;
     while not cdsTotTitPresCta.eof do
        begin
          TotTitPresCta := TotTitPresCta + cdsTotTitPresCta.FieldByName('vlr_saldo').AsCurrency;
          cdsTotTitPresCta.Next;
        end;
     cdsTotTitPresCta.First;

     cdsTotTitPresCta.IndexFieldNames := 'NUM_PARCELA;DTA_VENCIMENTO';

     txtVlrTotalOFs.Text            := FormatCurr('###,###,###,##0.00', totalOFs);
     txtVlrOFPrestCta.Text          := FormatCurr('###,###,###,##0.00', totalOFsPrestCta);
     txtVlrOFPrestCtaAberto.Text    := FormatCurr('###,###,###,##0.00', totalOFsPrestCtaAberto);
     txtVlrOFPrestCtaSldAberto.text := FormatCurr('###,###,###,##0.00', totalOFsPrestCtaAbertoSaldo);

     txtVlrTotTitPresCta.Text       := FormatCurr('###,###,###,##0.00', TotTitPresCta);

  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure TCSU_FM_C_CLI_EXT.BuscarDadosFin(DataIni, DataFim,IdCliente: String);
var
  SMPrincipal: TSMClient;
  TitAberto,TotChqDev, TotPagos, TotChqDepositar, TotAbertoVencido,TotAbertoChqVencido: Currency;
begin
    try
     SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);


     SMPrincipal.enSgqFinBucarDadosFin(DataIni,DataFim,IdCliente, dataTitPrestAberto,dataTitAberto,dataChqDev,dataTitPag,dataChqDepositar);

     cdsTotTitAberto.data  := dataTitAberto;
     cdsTotChqDev.Data     := dataChqDev;
     cdsTotTitPagos.Data   := dataTitPag;
     cdsTotChqDepositar.Data := dataChqDepositar;

     AjustarColunas;

     TitAberto     := 0;
     TotChqDev     := 0;
     TotPagos      := 0;
     TotChqDepositar := 0;
     TotAbertoVencido := 0;
     TotAbertoChqVencido := 0;

     // Financeiro

     //*** Títulos em aberto depois de prestado conta e sem ser cheque devolvido ******/
     cdsTotTitAberto.First;
     while not cdsTotTitAberto.eof do
        begin
          if cdsTotTitAberto.FieldByName('dta_vencimento').AsDateTime >= xDataSistema then
             TitAberto := TitAberto + cdsTotTitAberto.FieldByName('vlr_saldo').AsCurrency;
          if cdsTotTitAberto.FieldByName('dta_vencimento').AsDateTime < xDataSistema then
             TotAbertoVencido := TotAbertoVencido + cdsTotTitAberto.FieldByName('vlr_saldo').AsCurrency;
          cdsTotTitAberto.Next;
        end;
     cdsTotTitAberto.First;

     //*** Cheques em aberto depois de prestado conta e somente cheque devolvido ******/
     cdsTotChqDev.First;
     while not cdsTotChqDev.eof do
        begin
          TotChqDev := TotChqDev + cdsTotChqDev.FieldByName('vlr_saldo').AsCurrency;
          cdsTotChqDev.Next;
        end;
     cdsTotChqDev.First;


     //*** Títulos/Cheques com baixas (seja parcial ou total) e menos as substituições ******/

     cdsTotTitPagos.First;
     while not cdsTotTitPagos.eof do
        begin

          TotPagos := TotPagos + cdsTotTitPagos.FieldByName('vlr_pagamento').AsCurrency;

          cdsTotTitPagos.Next;
        end;
     cdsTotTitPagos.First;

     //*** Somente cheques a depositar ****/

     cdsTotChqDepositar.First;
     while not cdsTotChqDepositar.eof do
        begin
          if cdsTotChqDepositar.FieldByName('dta_vencimento').AsDateTime >= xDataSistema then
             TotChqDepositar := TotChqDepositar + cdsTotChqDepositar.FieldByName('vlr_saldo').AsCurrency;

          if cdsTotChqDepositar.FieldByName('dta_vencimento').AsDateTime < xDataSistema then
             TotAbertoChqVencido := TotAbertoChqVencido + cdsTotChqDepositar.FieldByName('vlr_saldo').AsCurrency;

          cdsTotChqDepositar.Next;
        end;
     cdsTotChqDepositar.First;

     txtVlrTitAberto.Text     := FormatCurr('###,###,###,##0.00', TitAberto);
     txtVlrTotChqDev.Text     := FormatCurr('###,###,###,##0.00', TotChqDev);
     txtVlrTotPagos.Text      := FormatCurr('###,###,###,##0.00', TotPagos);
     txtVlrChqDepositar.Text  := FormatCurr('###,###,###,##0.00', TotChqDepositar);
     txtVlrTitAbertoVencido.Text := FormatCurr('###,###,###,##0.00', TotAbertoVencido);
     txtVlrChqDepositarVencido.Text := FormatCurr('###,###,###,##0.00', TotAbertoChqVencido);

  finally
    FreeAndNil(SMPrincipal);
  end;

end;

procedure TCSU_FM_C_CLI_EXT.btnFiltrarFinClick(Sender: TObject);
begin
  inherited;
  if ((deInicialFin.Text = '  /  /    ') or (deFinalFin.Text = '  /  /    ')) then
      begin
        Showmessage('O período deve ser preenchido.');
        exit;
      end
  else
      begin
        if (deInicialFin.Date >  deFinalFin.Date) then
            begin
              showmessage('Data inicial não pode ser maior que a data final');
              exit;
            end;
      end;

  BuscarDadosFin(deInicialFin.Text,deFinalFin.Text,CSU_FM_C_CLI.CAD_CD_C_CLI.FieldByName('id_cliente').AsString);
end;

procedure TCSU_FM_C_CLI_EXT.btnFiltrarChqOFClick(Sender: TObject);
begin
  inherited;

  if (txtNroCheque.text = '') or (txtNroCheque.text = '0')  then
      begin
        Showmessage('Digite o nro do cheque!');
        exit;
      end;


   BUS_CD_M_REC.Close;
   BUS_CD_M_REC.Data :=
   BUS_CD_M_REC.DataRequest(
            VarArrayOf([122,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,txtNroCheque.text,
                            CSU_FM_C_CLI.CAD_CD_C_CLI.FieldByName('id_cliente').AsString]));

   PCP_CD_M_ORS.Close;
   PCP_CD_M_ORS.Data :=
   PCP_CD_M_ORS.DataRequest(
            VarArrayOf([90,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                           CSU_FM_C_CLI.CAD_CD_C_CLI.FieldByName('id_cliente').AsString,
                           txtNroCheque.text]));

   FIN_CD_M_RBX.Close;
   FIN_CD_M_RBX.Data :=
   FIN_CD_M_RBX.DataRequest(
            VarArrayOf([91,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,txtNroCheque.text,
                           CSU_FM_C_CLI.CAD_CD_C_CLI.FieldByName('id_cliente').AsString]));

end;

procedure TCSU_FM_C_CLI_EXT.btnFiltrarClick(Sender: TObject);
begin
  inherited;

  if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
      begin
        Showmessage('O período deve ser preenchido.');
        exit;
      end
  else
      begin
        if (deInicial.Date >  deFinal.Date) then
            begin
              showmessage('Data inicial não pode ser maior que a data final');
              exit;
            end;
      end;

  BuscarDados(deInicial.Text,deFinal.Text,CSU_FM_C_CLI.CAD_CD_C_CLI.FieldByName('id_cliente').AsString);
end;

procedure TCSU_FM_C_CLI_EXT.FIN_DB_M_RBXCheckEOF(Sender: TObject;
  var Eof: Boolean);
var
 vlr_bxa:currency;
begin
  inherited;

  vlr_bxa := Tenorth.Soma(dmGeral.FIN_CD_M_RBX_TIT,'vlr_pagamento');

  FIN_FR_M_RBX.Variables['vlr_bxa'] := QuotedStr(FormatCurr('###,###,###,###,##0.00',vlr_bxa));
  FIN_FR_M_RBX_DNR.Variables['vlr_bxa'] := QuotedStr(FormatCurr('###,###,###,###,##0.00',vlr_bxa));
end;

procedure TCSU_FM_C_CLI_EXT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmSoftMenu.rbMenu.ShowTabGroups := true;
  FreeAndNil(CSU_FM_C_CLI_EXT);
end;

procedure TCSU_FM_C_CLI_EXT.FormCreate(Sender: TObject);
var
  TamanhoDividido: integer;
begin
  inherited;

  TamanhoDividido := trunc(pnlDados.Width / 3);

  pnOFs.Width := TamanhoDividido;
  pnOFPrestCta.Width := TamanhoDividido;
  pnOFPrestCtaAberto.Width := TamanhoDividido;


  TamanhoDividido := trunc(pnTitulos.Width / 4);

  pnTitPrestCta.Width := TamanhoDividido;

  pnTitAberto.Width := TamanhoDividido;

  pnChequesDev.Width := TamanhoDividido;

  pnChequesDepositar.Width := TamanhoDividido;



end;

procedure TCSU_FM_C_CLI_EXT.FormShow(Sender: TObject);

begin
  inherited;
  frmSoftMenu.rbMenu.ShowTabGroups := false;
  BuscarDados('01/01/0001','01/01/0001',CSU_FM_C_CLI.CAD_CD_C_CLI.FieldByName('id_cliente').AsString);
  BuscarDadosFin('01/01/0001','01/01/0001',CSU_FM_C_CLI.CAD_CD_C_CLI.FieldByName('id_cliente').AsString);

  deInicial.Text := '01/01/0001';
  deInicialFin.Text := '01/01/0001';

  deFinal.Text := '31/12/9999';
  deFinalFin.Text := '31/12/9999';


  BUS_CD_M_REC.Close;
  BUS_CD_M_REC.Data :=
      BUS_CD_M_REC.DataRequest(VarArrayOf([122,'-1','-1','-1']));


  PCP_CD_M_ORS.Close;
  PCP_CD_M_ORS.Data :=
  PCP_CD_M_ORS.DataRequest(VarArrayOf([90,'-1','-1','-1']));

  FIN_CD_M_RBX.Close;
  FIN_CD_M_RBX.Data :=
  FIN_CD_M_RBX.DataRequest(
            VarArrayOf([91,'-1','-1','-1']));

end;


procedure TCSU_FM_C_CLI_EXT.ImprimirRecibo;
var
  SMPrincipal : TSMClient;
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
 // vlr_bxa:currency;
begin
  inherited;
  {if dmGeral.FIN_CD_M_RBX.IsEmpty then
     begin
       ShowMessage('É necessário selecionar registro');
       exit;
     end;}

 // codigo := dmGeral.FIN_CD_M_RBXid_baixa.text;

 // dmGeral.FIN_CD_M_RBX.Close;
//  dmGeral.FIN_CD_M_RBX.Data :=
 // dmGeral.FIN_CD_M_RBX.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, codigo]));

  if not dmGeral.FIN_CD_M_RBX.IsEmpty then
     begin
        dmGeral.BusFormaPgtos(0, dmGeral.FIN_CD_M_RBX.FieldByName('id_forma_pag').AsString);

        if ((dmGeral.FIN_CD_M_RBX.FieldByName('ID_RECIBO').IsNull) or
          (dmGeral.FIN_CD_M_RBX.FieldByName('ID_RECIBO').AsString = '')) then
          begin
            dmGeral.FIN_CD_M_RBX.BeforeEdit := nil;
            dmGeral.FIN_CD_M_RBX.BeforePost := nil;
            dmGeral.FIN_CD_M_RBX.Edit;
            SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
            try
               dmGeral.FIN_CD_M_RBX.FieldByName('ID_RECIBO').AsInteger :=
                             SMPrincipal.enValorChave('NUM_RCB_RBX');
            finally
               dmGeral.FIN_CD_M_RBX.BeforeEdit := dmGeral.FIN_CD_M_RBXBeforeEdit;
               dmGeral.FIN_CD_M_RBX.BeforePost := dmGeral.FIN_CD_M_RBXBeforePost;
               FreeAndNil(SMPrincipal);
            end;
            dmGeral.FIN_CD_M_RBX.Post;
            if (dmGeral.FIN_CD_M_RBX.ApplyUpdates(0) <> 0) then
              begin
                ShowMessage('Falha ao gerar nº do recibo.');
                exit;
              end;
          end;


      // vlr_bxa := Tenorth.Soma(dmGeral.FIN_CD_M_RBX_TIT,'vlr_pagamento');

       PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

       if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [1,2,3,4,6]) then
          begin
           FIN_FR_M_RBX.Variables['ft_vlrExtenso'] := QuotedStr(Extenso(dmGeral.FIN_CD_M_RBXvlr_baixa.AsCurrency));
           if FileExists(PathImg) then
              begin
                 LogoEmpresa := TfrxPictureView(FIN_FR_M_RBX.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);

                 LogoEmpresa := TfrxPictureView(FIN_FR_M_RBX.FindObject('imgEmpresa2'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;
           dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_M_RBX.Name,xCodLme,xRevLme,nil);
           FIN_FR_M_RBX.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
           FIN_FR_M_RBX.Variables['Opcoes'] := QuotedStr('');
         //  FIN_FR_M_RBX.Variables['vlr_bxa'] := QuotedStr(FormatCurr('###,###,###,###,##0.00',vlr_bxa));
           FIN_FR_M_RBX.PrepareReport();
           FIN_FR_M_RBX.ShowReport();
          end;

        if (dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [5,7]) then
          begin
           FIN_FR_M_RBX_DNR.Variables['ft_vlrExtenso'] := QuotedStr(Extenso(dmGeral.FIN_CD_M_RBXvlr_baixa.AsCurrency));
           if FileExists(PathImg) then
              begin
                 LogoEmpresa := TfrxPictureView(FIN_FR_M_RBX_DNR.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);

                 LogoEmpresa := TfrxPictureView(FIN_FR_M_RBX_DNR.FindObject('imgEmpresa2'));
                 if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;
           dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_M_RBX_DNR.Name,xCodLme,xRevLme,nil);
           FIN_FR_M_RBX_DNR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
           FIN_FR_M_RBX_DNR.Variables['Opcoes'] := QuotedStr('');
        //   FIN_FR_M_RBX_DNR.Variables['vlr_bxa'] := QuotedStr(FormatCurr('###,###,###,###,##0.00',vlr_bxa));
           FIN_FR_M_RBX_DNR.PrepareReport();
           FIN_FR_M_RBX_DNR.ShowReport();
          end;
     end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        Exit;
      end;
end;

procedure TCSU_FM_C_CLI_EXT.LocalizarOF1Click(Sender: TObject);
var
  NroOF: String;
begin
  inherited;

  if cdsTotTitPresCta.IsEmpty then
     showmessage('Não há registro para localizar.');

  if not(InputQuery('Localizar O.F ', 'Nro da O.F', NroOF)) then
     exit;

  if not cdsTotTitPresCta.locate('id_ors',NroOF,[]) then
     showmessage('Ordem de Faturamento não encontrada!');


end;

procedure TCSU_FM_C_CLI_EXT.LocalizarOF2Click(Sender: TObject);
var
  NroOF: String;
begin
  inherited;

  if cdsTotTitAberto.IsEmpty then
     showmessage('Não há registro para localizar.');

  if not(InputQuery('Localizar O.F ', 'Nro da O.F', NroOF)) then
     exit;

  if not cdsTotTitAberto.locate('id_ors',NroOF,[]) then
     showmessage('Ordem de Faturamento não encontrada!');
end;

procedure TCSU_FM_C_CLI_EXT.tsChqDaOFShow(Sender: TObject);
begin
  inherited;
  txtNroCheque.SetFocus;
end;

procedure TCSU_FM_C_CLI_EXT.Visualizarbaixas1Click(Sender: TObject);
var
  xPesquisa:String;
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;

    if cdsOFPrestCta.IsEmpty then
       begin
         ShowMessage('Não há registro para poder visualizar baixa!');
         exit;
       end;


    dmGeral.FIN_CD_M_RBX.Close;
    dmGeral.FIN_CD_M_RBX.Data :=
    dmGeral.FIN_CD_M_RBX.DataRequest(
            VarArrayOf([6,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,
                        cdsOFPrestCta.FieldByName('id_ors').AsString]));

    ImprimirRecibo;
  finally
     Screen.Cursor := crDefault;
  end;

end;

end.



