unit CAD_UN_C_CLI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, JvDBControls,
  Vcl.DBCtrls, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, Vcl.ComCtrls, Vcl.Mask, vcl.wwdblook, enFunc,
  JvExExtCtrls, JvExtComponent, JvPanel,frxClass,dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb, frxDBSet,
  Datasnap.DBClient, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TCAD_FM_C_CLI = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblLimite: TLabel;
    lblValidade: TLabel;
    lblTelefoneFixo: TLabel;
    lblFax: TLabel;
    txtCodigo: TDBEdit;
    chkAtivo: TDBCheckBox;
    pcFilho: TPageControl;
    tsContatos: TTabSheet;
    dgContatos: TwwDBGrid;
    btnAddContato: TBitBtn;
    tsReclamacoes: TTabSheet;
    dgReclamacoes: TwwDBGrid;
    btnAddReclamacoes: TBitBtn;
    txtLimite: TDBEdit;
    txtSaldoLimite: TDBEdit;
    txtTelefoneFixo: TDBEdit;
    txtFax: TDBEdit;
    rgPessoa: TDBRadioGroup;
    CAD_DS_C_CLI_CTO: TwwDataSource;
    CAD_DS_C_CLI_REC: TwwDataSource;
    lblCPFCNPJ: TLabel;
    txtCPFCNPJ: TDBEdit;
    txtIdentidadeIE: TDBEdit;
    lblIdentidadeIE: TLabel;
    lblOrgao: TLabel;
    txtOrgao: TDBEdit;
    lblInscMunicipal: TLabel;
    txtInscMunicipal: TDBEdit;
    lblInscProdutor: TLabel;
    txtInscProdutor: TDBEdit;
    lblNome: TLabel;
    txtNome: TDBEdit;
    lblAniversario: TLabel;
    txtEndereco: TDBEdit;
    lblEndereco: TLabel;
    lblComplemento: TLabel;
    txtComplemento: TDBEdit;
    txtNumero: TDBEdit;
    lblNumero: TLabel;
    txtCep: TDBEdit;
    lblCep: TLabel;
    lblCidade: TLabel;
    lblBairro: TLabel;
    txtBairro: TDBEdit;
    Label37: TLabel;
    cbbPerfil: TwwDBLookupCombo;
    lblPerfil: TLabel;
    lblSexo: TLabel;
    lblEmail: TLabel;
    txtEmail: TDBEdit;
    lblTelefoneMovel: TLabel;
    txtTelefoneMovel: TDBEdit;
    lblSituacao: TLabel;
    cbbRota: TwwDBLookupCombo;
    lblRota: TLabel;
    lblSaldo: TLabel;
    CAD_DS_C_CLI_INF: TwwDataSource;
    tbiInformacoes: TTabSheet;
    TabSheet1: TTabSheet;
    tsBancoInfo: TTabSheet;
    dgBancoInformacoes: TwwDBGrid;
    btnAddBancoInformacoes: TBitBtn;
    lblEnderecoCobranca: TLabel;
    txtEnderecoCobranca: TDBEdit;
    lblCidadeCobranca: TLabel;
    lblCepCobranca: TLabel;
    txtCepCobranca: TDBEdit;
    lblBairroCobranca: TLabel;
    txtBairroCobranca: TDBEdit;
    CAD_DS_C_CLI_BCO: TwwDataSource;
    cbbTipo: TwwDBLookupCombo;
    cbbSexo: TwwDBLookupCombo;
    cbbSituacao: TwwDBLookupCombo;
    txtCidadeDescricao: TDBText;
    txtEstadoDescricao: TDBText;
    dgContatosIButton: TwwIButton;
    dgReclamacoesIButton: TwwIButton;
    dpkAniversario: TJvDBDateEdit;
    txtCidade: TJvDBComboEdit;
    dpkValidade: TJvDBDateEdit;
    dgBancoInformacoesIButton: TwwIButton;
    txtCidadeCobranca: TDBEdit;
    txtEstadoCobranca: TDBEdit;
    Label1: TLabel;
    lblApelido: TLabel;
    txtApelido: TDBEdit;
    pnlContatos: TPanel;
    lblNomeContato: TLabel;
    lblTelefoneContato: TLabel;
    lblEmailContato: TLabel;
    lblAniversarioContatos: TLabel;
    txtNomeContato: TDBEdit;
    txtTelefoneContato: TDBEdit;
    txtEmailContato: TDBEdit;
    dpkAniversarioContatos: TJvDBDateEdit;
    pnlReclamacoes: TPanel;
    lblObservacao: TLabel;
    lblDataReclamacoes: TLabel;
    txtObservacao: TDBEdit;
    dpkDataRegistro: TJvDBDateEdit;
    pnlBancoInformacoes: TPanel;
    lblDataBancoInformacoes: TLabel;
    lblObservacaoBancoInformacoes: TLabel;
    dpkDataBancoInformacoes: TJvDBDateEdit;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    Label2: TLabel;
    cbbRegiao: TwwDBLookupCombo;
    Label13: TLabel;
    txtTipoContrib: TwwDBComboBox;
    txtObservacaoBancoInformacoes: TDBMemo;
    lblVendedor: TLabel;
    cbbVendedor: TwwDBLookupCombo;
    txtPrePrazoFinan: TwwDBEdit;
    lblPrePrazoFinan: TLabel;
    tsPessoais: TTabSheet;
    txtFiliacao: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    txtRenda: TDBEdit;
    Label5: TLabel;
    txtProfissao: TDBEdit;
    btnImprimirFicha: TBitBtn;
    Label6: TLabel;
    txtArquivo: TJvDBComboEdit;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    btnBaixar: TButton;
    lblHrqFpg: TLabel;
    cbbHrqFpg: TwwDBLookupCombo;
    CAD_DS_C_CLI_PRD: TwwDataSource;
    tsPrazoCompra: TTabSheet;
    pnlPrazoCompra: TPanel;
    Label7: TLabel;
    txtPrazoDias: TwwDBEdit;
    btnAddDiasPrazo: TBitBtn;
    chbAlterarDiasPedido: TDBCheckBox;
    dgDiasPrazo: TwwDBGrid;
    dgDiasPrazoIButton: TwwIButton;
    dgInformacoes: TwwDBGrid;
    dgInformacoesIButton: TwwIButton;
    pnlInformacoes: TPanel;
    lblResponsavelInformacoes: TLabel;
    lblLimiteInformacoes: TLabel;
    lblObservacaoInformacoes: TLabel;
    lblMaiorCompraInformacoes: TLabel;
    lblDataFichaInformacoes: TLabel;
    lblAtrasaInformacoes: TLabel;
    lblTipoInformacoes: TLabel;
    txtResponsavelInformacoes: TDBEdit;
    txtLimiteInformacoes: TDBEdit;
    txtObservacaoInformacoes: TDBEdit;
    txtMaiorCompraInformacoes: TDBEdit;
    cbxAtrasaInformacoes: TDBCheckBox;
    cbbTipoInformacoes: TwwDBLookupCombo;
    dpkDataFichaInformacoes: TJvDBDateEdit;
    btnAddInformacoes: TBitBtn;
    CAD_FR_R_CLI_FIC: TfrxReport;
    CAD_DB_C_CLI: TfrxDBDataset;
    tsAreaRural: TTabSheet;
    ScrollBox1: TScrollBox;
    dgAr: TwwDBGrid;
    dgArIButton: TwwIButton;
    CAD_DS_C_CLI_PRO: TwwDataSource;
    txtDtaUltCmp: TJvDBDateEdit;
    Label21: TLabel;
    txtVlrUltCmp: TDBEdit;
    Label22: TLabel;
    txtDtaMaiorCmp: TJvDBDateEdit;
    Label23: TLabel;
    tsRevenda: TTabSheet;
    pnlRevenda: TPanel;
    btnAddRevenda: TBitBtn;
    dgRevenda: TwwDBGrid;
    dgRevendaButton: TwwIButton;
    CAD_DS_C_CLI_RVD: TwwDataSource;
    txtRevenda: TJvDBComboEdit;
    Label25: TLabel;
    txtDescRev: TDBText;
    bus_cd_c_rvd: TClientDataSet;
    Label24: TLabel;
    txtComissao: TDBEdit;
    btnCadastro: TButton;
    dgCultura: TwwDBGrid;
    dgCulIButton: TwwIButton;
    CAD_DS_C_CLI_PRO_CUL: TwwDataSource;
    Label8: TLabel;
    Label9: TLabel;
    txtLatitude: TDBEdit;
    txtLongitude: TDBEdit;
    btnLocalizacao: TSpeedButton;
    tsVeiculo: TTabSheet;
    pnlVeiculo: TPanel;
    Label10: TLabel;
    DBText1: TDBText;
    txtPlaca: TJvDBComboEdit;
    btnAddVeiculo: TBitBtn;
    dgVeiculo: TwwDBGrid;
    dgVeiculoButton: TwwIButton;
    CAD_DS_C_CLI_VEI: TwwDataSource;
    tsEmail: TTabSheet;
    CAD_DS_C_CLI_EML: TwwDataSource;
    dgEmail: TwwDBGrid;
    pnlEmail: TPanel;
    Label11: TLabel;
    btnAddEmail: TBitBtn;
    txtEmailNota: TwwDBEdit;
    dgEmailButton: TwwIButton;
    chbSubstTrib: TDBCheckBox;
    txtDtaDesnv: TJvDBDateEdit;
    Label12: TLabel;
    DBCheckBox1: TDBCheckBox;
    tsCredito: TTabSheet;
    dgFrgCrd: TwwDBGrid;
    pnlFpgCrd: TPanel;
    Label14: TLabel;
    txtFpgLimValor: TwwDBEdit;
    txtFpgLimSaldo: TwwDBEdit;
    Label15: TLabel;
    cbbFormaPagCrd: TwwDBLookupCombo;
    Label16: TLabel;
    btnAddFpgCrd: TBitBtn;
    CAD_DS_C_CLI_CRD: TwwDataSource;
    dgFrgCrdIButton: TwwIButton;
    txtProfissao2: TDBEdit;
    lblProfissao2: TLabel;
    tsAvalistaBol: TTabSheet;
    ScrollBox2: TScrollBox;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    txtAvalCnpjCpf: TDBEdit;
    txtAvalNome: TDBEdit;
    txxtAvalLogradouro: TDBEdit;
    txtNroEnd: TDBEdit;
    txtAvalBairro: TDBEdit;
    Label17: TLabel;
    Label28: TLabel;
    JvDBComboEdit1: TJvDBComboEdit;
    DBText2: TDBText;
    DBText3: TDBText;
    Label29: TLabel;
    txtAvalFone: TDBEdit;
    Label30: TLabel;
    txtAvalEmail: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit1: TDBEdit;
    BUS_CD_C_FUN_CRG: TClientDataSet;
    BUS_CD_C_FUN_CRGid_cargo: TIntegerField;
    BUS_CD_C_FUN_CRGint_nomecrg: TWideStringField;
    BUS_CD_C_FUN_CRGint_tipo: TIntegerField;
    Label33: TLabel;
    txtCpfCnpjProprietario: TDBEdit;
    Label34: TLabel;
    txtNomeProprietario: TDBEdit;
    procedure btnAddContatoClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure btnAddReclamacoesClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPerfilEnter(Sender: TObject);
    procedure cbbRotaEnter(Sender: TObject);
    procedure cbbTipoInformacoesEnter(Sender: TObject);
    procedure txtCidadeButtonClick(Sender: TObject);
    procedure txtCidadeExit(Sender: TObject);
    procedure cbbTipoEnter(Sender: TObject);
    procedure cbbSexoEnter(Sender: TObject);
    procedure cbbSituacaoEnter(Sender: TObject);
    procedure dgContatosIButtonClick(Sender: TObject);
    procedure dgContatosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dgReclamacoesIButtonClick(Sender: TObject);
    procedure dgReclamacoesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dgInformacoesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dgInformacoesIButtonClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtEmailContatoExit(Sender: TObject);
    procedure txtObservacaoExit(Sender: TObject);
    procedure btnAddInformacoesClick(Sender: TObject);
    procedure pnlContatosExit(Sender: TObject);
    procedure pnlReclamacoesExit(Sender: TObject);
    procedure pnlInformacoesExit(Sender: TObject);
    procedure cbbTipoInformacoesExit(Sender: TObject);
    procedure btnAddBancoInformacoesClick(Sender: TObject);
    procedure pnlBancoInformacoesExit(Sender: TObject);
    procedure dgBancoInformacoesIButtonClick(Sender: TObject);
    procedure txtObservacaoBancoInformacoesExit(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgPessoaExit(Sender: TObject);
    procedure dpkDataRegistroEnter(Sender: TObject);
    procedure dpkDataBancoInformacoesEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtCPFCNPJExit(Sender: TObject);
    procedure cbbRegiaoEnter(Sender: TObject);
    procedure cbbTipoExit(Sender: TObject);
    procedure txtCPFCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure cbbPerfilExit(Sender: TObject);
    procedure cbbSexoExit(Sender: TObject);
    procedure cbbSituacaoExit(Sender: TObject);
    procedure rgPessoaClick(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure cbbVendedorEnter(Sender: TObject);
    procedure txtCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimirFichaClick(Sender: TObject);
    procedure txtArquivoButtonClick(Sender: TObject);
    procedure btnBaixarClick(Sender: TObject);
    procedure dgBancoInformacoesDblClick(Sender: TObject);
    procedure btnAddDiasPrazoClick(Sender: TObject);
    procedure pnlPrazoCompraExit(Sender: TObject);
    procedure dgDiasPrazoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dgDiasPrazoIButtonClick(Sender: TObject);
    procedure txtPrazoDiasExit(Sender: TObject);
    procedure txtInscProdutorExit(Sender: TObject);
    procedure txtArCEPExit(Sender: TObject);
    procedure txtArCidadeButtonClick(Sender: TObject);
    procedure dgArIButtonClick(Sender: TObject);
    procedure tsAreaRuralShow(Sender: TObject);
    procedure txtCepKeyPress(Sender: TObject; var Key: Char);
    procedure txtObservacaoInformacoesExit(Sender: TObject);
    procedure txtRevendaExit(Sender: TObject);
    procedure pnlRevendaExit(Sender: TObject);
    procedure dgRevendaButtonClick(Sender: TObject);
    procedure btnAddRevendaClick(Sender: TObject);
    procedure txtRevendaButtonClick(Sender: TObject);
    procedure dgRevendaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnCadastroClick(Sender: TObject);
    procedure dgCulIButtonClick(Sender: TObject);
    procedure btnLocalizacaoClick(Sender: TObject);
    procedure txtPlacaExit(Sender: TObject);
    procedure txtPlacaButtonClick(Sender: TObject);
    procedure btnAddVeiculoClick(Sender: TObject);
    procedure pnlVeiculoExit(Sender: TObject);
    procedure dgVeiculoButtonClick(Sender: TObject);
    procedure pnlEmailExit(Sender: TObject);
    procedure btnAddEmailClick(Sender: TObject);
    procedure txtEmailNotaExit(Sender: TObject);
    procedure dgEmailMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dgEmailButtonClick(Sender: TObject);
    procedure cbbFormaPagCrdEnter(Sender: TObject);
    procedure dgFrgCrdMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnAddFpgCrdClick(Sender: TObject);
    procedure cbbFormaPagCrdExit(Sender: TObject);
    procedure txtFpgLimValorExit(Sender: TObject);
    procedure pnlFpgCrdExit(Sender: TObject);
    procedure tsCreditoShow(Sender: TObject);
    procedure dgFrgCrdIButtonClick(Sender: TObject);
    procedure JvDBComboEdit1ButtonClick(Sender: TObject);
    procedure JvDBComboEdit1Exit(Sender: TObject);
    procedure JvDBComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure txtCpfCnpjProprietarioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function RemoveCaracter (Str: String; Caracter: Array of String):String;
    procedure AbrirBuscas;
    function TamanhoArquivo(Arquivo: string): Integer;
    procedure TestarCPF_CNPJ_IP;
    procedure CadCliSimplificado(status:Boolean);
    var
    TipoCliente,PerfilCliente,SexoCliente,SitCliente : String;
  public
    { Public declarations }
  end;

var
  CAD_FM_C_CLI: TCAD_FM_C_CLI;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ROT, PSQ_UN_X_CID, uDmSgq, enConstantes, uProxy,
  CAD_UN_C_CLI_PRO, PSQ_UN_X_RVD,CSU_UN_M_GPS, PSQ_UN_X_VEI;
  //PSQ_UN_X_RVD;


procedure TCAD_FM_C_CLI.CadCliSimplificado(status:Boolean);
var
  cor:TColor;
  habilitar:Boolean;
begin
   if status then
    begin
     cor := $00DADADA;
     habilitar := false;
    end
   else
    begin
     cor := clWhite;
     habilitar := true;
    end;

  txtInscProdutor.Enabled := habilitar;
  txtInscProdutor.Color := cor;

  txtApelido.Enabled := habilitar;
  txtApelido.Color := cor;

  txtOrgao.Enabled := habilitar;
  txtOrgao.Color := cor;

//  cbbSituacao.Enabled := habilitar;
 // cbbSituacao.Color := cor;

  cbbPerfil.Enabled := habilitar;
  cbbPerfil.Color := cor;



  cbbRota.Enabled := habilitar;
  cbbRota.Color := cor;

  cbbVendedor.Enabled := habilitar;
  cbbVendedor.Color := cor;

  txtLimite.Enabled := habilitar;
  txtLimite.Color := cor;

  cbbRegiao.Enabled := habilitar;
  cbbRegiao.Color := cor;

  txtFax.Enabled := habilitar;
  txtFax.Color := cor;

  dpkValidade.Enabled := habilitar;
  dpkValidade.Color := cor;

  txtComissao.Enabled := habilitar;
  txtComissao.Color := cor;

  cbbHrqFpg.Enabled := habilitar;
  cbbHrqFpg.Color := cor;

  txtSaldoLimite.Enabled := habilitar;
  txtSaldoLimite.Color := cor;

  lblProfissao2.Visible := status;
  txtProfissao2.Visible := status;



  tsContatos.TabVisible := habilitar;
  tbiInformacoes.TabVisible := habilitar;
  tsBancoInfo.TabVisible := habilitar;
  tsPessoais.TabVisible := habilitar;
  tsRevenda.TabVisible := habilitar;

end;

procedure TCAD_FM_C_CLI.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CLI);

  dmGeral.CAD_CD_C_CLI.FieldByName('DTA_ULT_COMPRA').AsDateTime := xDataSis;
  dmGeral.CAD_CD_C_CLI.FieldByName('DTA_PRI_COMPRA').AsDateTime := xDataSis;

  dmGeral.CAD_CD_C_CLI.FieldByName('PESSOA').AsInteger := 0;
  dmGeral.CAD_CD_C_CLI.FieldByName('ATIVO').AsBoolean := True;


  BUS_CD_C_FUN_CRG.Close;
  BUS_CD_C_FUN_CRG.Data :=
  BUS_CD_C_FUN_CRG.DataRequest(VarArrayOf([xFuncionario]));

  if BUS_CD_C_FUN_CRG.FieldByName('INT_TIPO').AsString = '1' then
     dmGeral.CAD_CD_C_CLI.FieldByName('ID_VENDEDOR').AsInteger := xFuncionario;


  pnlContatos.Enabled := False;
  pnlReclamacoes.Enabled := False;
  pnlInformacoes.Enabled := False;
  pnlBancoInformacoes.Enabled := False;
  pnlRevenda.Enabled := False;
  txtCPFCNPJ.ReadOnly := false;
  rgPessoa.ReadOnly := false;
  rgPessoa.ItemIndex := 0;
  rgPessoa.SetFocus;

  btnImprimirFicha.Enabled := false;

  //  Mesmo o funcionário não podendo alterar o representante , no momento da inclusão de um cliente
  //  ele tem que ter acesso ao campo para poder informar o representante.
  if ( (dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsString = '') or
       (dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsString = '0')  )  and // funcionário interno
     (dmGeral.BUS_CD_C_FU3.FieldByName('per_alterar_repres').AsBoolean = false) then
      begin
        cbbVendedor.Enabled := true;
      end;
end;

procedure TCAD_FM_C_CLI.acAlterarExecute(Sender: TObject);
begin
 if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CLI) then
    begin
      inherited;
      pnlContatos.Enabled := False;
      pnlReclamacoes.Enabled := False;
      pnlInformacoes.Enabled := False;
      pnlBancoInformacoes.Enabled := False;

      btnImprimirFicha.Enabled := false;

      rgPessoa.SetFocus;
      rgPessoa.ReadOnly := true;
      txtCPFCNPJ.ReadOnly := true;

      if  (dmGeral.CAD_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').IsNull) or
         ((dmGeral.CAD_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').AsString) = '') then
          begin
            txtCPFCNPJ.ReadOnly := false;
          end
      else
         begin
           if Length(trim(dmGeral.CAD_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').text))=11 then  //CPF
              begin
                if VerCPF(trim(dmGeral.CAD_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').text)) = false then
                   txtCPFCNPJ.ReadOnly := false;
              end
           else if Length(trim(dmGeral.CAD_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').text))=14 then  //CNPJ
              begin
                if VerCNPJ(trim(dmGeral.CAD_CD_C_CLI.FieldByName('DOC_CNPJ_CPF').text)) = false then
                   txtCPFCNPJ.ReadOnly := false;
              end
           else
              begin
                txtCPFCNPJ.ReadOnly := false;
              end;
         end;
    end;
end;

procedure TCAD_FM_C_CLI.acCancelarExecute(Sender: TObject);
begin
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CLI) then
      begin
        inherited;
        dbGrid.SetFocus;
        btnImprimirFicha.Enabled := true;

        if (dmGeral.BUS_CD_C_FU3.FieldByName('per_alterar_repres').AsBoolean = false) then
            begin
              cbbVendedor.Enabled := false;
            end;
      end
   else
      begin
        cbbTipo.SetFocus;
      end;
end;

procedure TCAD_FM_C_CLI.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_CLI);
end;

procedure TCAD_FM_C_CLI.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  TestarCPF_CNPJ_IP;
  if dmGeral.CAD_CD_C_CLI_TesCampos then
     begin
        if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
             codigo := dmGeral.CAD_CD_C_CLI.FieldByName('ID_CLIENTE').AsString;

             DmGeral.Grava(dmGeral.CAD_CD_C_CLI);
             inherited;

             dmGeral.CAD_CD_C_CLI.Close;
             dmGeral.CAD_CD_C_CLI.Data :=
             dmGeral.CAD_CD_C_CLI.DataRequest(
                     VarArrayOf([0, codigo]));

             btnImprimirFicha.Enabled := true;

             //  Depois que o funcionário cadastrar um novo cliente, o sistema deverá deixar o campo representante
             //  inativo caso ele não tenha permissão para alterá-lo.
             if (dmGeral.BUS_CD_C_FU3.FieldByName('per_alterar_repres').AsBoolean = false) then
                 begin
                   cbbVendedor.Enabled := false;
                 end;

             AbrirBuscas;
           end
        else
           begin
             if cbbTipo.CanFocus then
                cbbTipo.SetFocus;
           end;
     end
  else
     begin
       if cbbTipo.CanFocus then
          cbbTipo.SetFocus;
     end;
end;

procedure TCAD_FM_C_CLI.AbrirBuscas;
begin
   dmGeral.BusFunCargoGeral('''0'',''1''','true');
   dmGeral.BusHierarquiaFpg(1,'');
end;

procedure TCAD_FM_C_CLI.btnAddContatoClick(Sender: TObject);
begin
  inherited;
  pnlContatos.Enabled := True;

  dmGeral.CAD_CD_C_CLI_CTO.Insert;
  txtNomeContato.SetFocus;
end;

procedure TCAD_FM_C_CLI.btnAddDiasPrazoClick(Sender: TObject);
begin
  inherited;
  pnlPrazoCompra.Enabled := True;

  dmGeral.CAD_CD_C_CLI_PRD.Insert;
  txtPrazoDias.SetFocus;
end;

procedure TCAD_FM_C_CLI.btnAddEmailClick(Sender: TObject);
begin
  inherited;
  pnlEmail.Enabled := True;
  dmGeral.CAD_CD_C_CLI_EML.Insert;
  txtEmailNota.SetFocus;
end;

procedure TCAD_FM_C_CLI.btnAddFpgCrdClick(Sender: TObject);
begin
  inherited;
  pnlFpgCrd.Enabled := True;

  dmGeral.CAD_CD_C_CLI_CRD.Insert;
  cbbFormaPagCrd.SetFocus;
end;

procedure TCAD_FM_C_CLI.btnAddInformacoesClick(Sender: TObject);
begin
  inherited;
  pnlInformacoes.Enabled := True;

  dmGeral.CAD_CD_C_CLI_INF.Insert;
  cbbTipoInformacoes.SetFocus;
end;

procedure TCAD_FM_C_CLI.btnAddReclamacoesClick(Sender: TObject);
begin
  inherited;
  pnlReclamacoes.Enabled := True;

  dmGeral.CAD_CD_C_CLI_REC.Insert;
  dpkDataRegistro.SetFocus;
end;

procedure TCAD_FM_C_CLI.btnAddRevendaClick(Sender: TObject);
begin
  inherited;
  pnlRevenda.Enabled := True;

  dmGeral.CAD_CD_C_CLI_RVD.Insert;
  txtRevenda.SetFocus;
end;

procedure TCAD_FM_C_CLI.btnAddVeiculoClick(Sender: TObject);
begin
  inherited;
  pnlVeiculo.Enabled := True;
  dmGeral.CAD_CD_C_CLI_VEI.Insert;
  txtPlaca.SetFocus;
end;

procedure TCAD_FM_C_CLI.btnBaixarClick(Sender: TObject);
begin
  inherited;
   if not  dmgeral.CAD_CD_C_CLI_BCOarquivo.IsNull then
    begin
      SaveDialog1.FileName := dmGeral.CAD_CD_C_CLI_BCO.FieldByName('nome_arquivo').Text;
      if SaveDialog1.Execute then
        begin
          TBlobField(dmgeral.CAD_CD_C_CLI_BCO.FieldByName('arquivo')).SaveToFile(
            ExtractFilePath(SaveDialog1.FileName) + dmGeral.CAD_CD_C_CLI_BCO.FieldByName('nome_arquivo').Text);

          ShowMessage('Arquivo salvo em: ' + ExtractFilePath(SaveDialog1.FileName) + dmGeral.CAD_CD_C_CLI_BCO.FieldByName('nome_arquivo').Text);
        end;
    end
  else
    begin
      ShowMessage('Nenhum registro encontrado!');
    end;
end;

procedure TCAD_FM_C_CLI.btnCadastroClick(Sender: TObject);
begin
  inherited;
  CAD_FM_C_CLI_PRO := TCAD_FM_C_CLI_PRO.Create(Self);
  CAD_FM_C_CLI_PRO.Show;
end;

procedure TCAD_FM_C_CLI.btnAddBancoInformacoesClick(Sender: TObject);
begin
  inherited;
  pnlBancoInformacoes.Enabled := True;

  dmGeral.CAD_CD_C_CLI_BCO.Insert;
  dpkDataBancoInformacoes.SetFocus;
end;

procedure TCAD_FM_C_CLI.btnFiltroClick(Sender: TObject);
var
  i:integer;
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;

    if trim(txtPesquisa.Text) = '' then
       begin
         ShowMessage('É preciso que digite pelo menos 1 caractere para poder realizar a pesquisa.');
         exit;
       end;


    if dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsString = '1' then // Externo
       begin
         i:= 85;
         if cbbPesquisa.ItemIndex = 0 then
            begin
               dmGeral.CAD_CD_C_CLI.Close;
               dmGeral.CAD_CD_C_CLI.Data :=
               dmGeral.CAD_CD_C_CLI.DataRequest(
                       VarArrayOf([85, txtPesquisa.Text,xFuncionario]));
            end
         else
            begin
               dmGeral.CAD_CD_C_CLI.Close;
               dmGeral.CAD_CD_C_CLI.Data :=
               dmGeral.CAD_CD_C_CLI.DataRequest(
                       VarArrayOf([cbbPesquisa.ItemIndex + i, txtPesquisa.Text,xFuncionario]));
            end;
       end
    else
       begin
         dmGeral.CAD_CD_C_CLI.Close;
         dmGeral.CAD_CD_C_CLI.Data :=
         dmGeral.CAD_CD_C_CLI.DataRequest(
                 VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
       end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_CLI.btnImprimirFichaClick(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.CAD_CD_C_CLI.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(CAD_FR_R_CLI_FIC.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        CAD_FR_R_CLI_FIC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        CAD_FR_R_CLI_FIC.PrepareReport();
        CAD_FR_R_CLI_FIC.ShowReport();
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TCAD_FM_C_CLI.btnLocalizacaoClick(Sender: TObject);
begin
  inherited;
  xCaminho := '';

  Application.CreateForm(TCSU_FM_M_GPS,CSU_FM_M_GPS);

  if (dmGeral.CAD_CD_C_CLI.FieldByName('gps_latitude').AsString<>'')
    and (dmGeral.CAD_CD_C_CLI.FieldByName('gps_longitude').AsString<>'') then
    begin
      xCaminho := xCaminho+ stringReplace( dmGeral.CAD_CD_C_CLI.FieldByName('gps_latitude').AsString,',','.',[rfReplaceAll]) +','+
        stringReplace(dmGeral.CAD_CD_C_CLI.FieldByName('gps_longitude').AsString,',','.',[rfReplaceAll]);
    end;

  CSU_FM_M_GPS.btnRotaClick(sender);
  CSU_FM_M_GPS.panel1.Visible := false;
  CSU_FM_M_GPS.ShowModal;

  if (CSU_FM_M_GPS.OLat.Text <> '') and (CSU_FM_M_GPS.OLong.Text <> '') then
    begin
      dmGeral.CAD_CD_C_CLI.FieldByName('gps_latitude').AsString := CSU_FM_M_GPS.OLat.Text;
      dmGeral.CAD_CD_C_CLI.FieldByName('gps_longitude').AsString := CSU_FM_M_GPS.OLong.Text;
    end;

  CSU_FM_M_GPS.Free;
end;

procedure TCAD_FM_C_CLI.cbbFormaPagCrdEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos2(1,'%');
  cbbFormaPagCrd.DropDown;
end;

procedure TCAD_FM_C_CLI.cbbFormaPagCrdExit(Sender: TObject);
VAR
  id_forma_pag,descricao:String;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


  id_forma_pag := dmGeral.CAD_CD_C_CLI_CRD.FieldByName('ID_FORMA_PAG').AsString;
  descricao := dmGeral.BUS_CD_C_FPG2.FieldByName('DESCRICAO').AsString;
  if (id_forma_pag = '') then
    begin
      ShowMessage('O campo "Forma Pagamento" deve ser preenchido.');
      cbbFormaPagCrd.SetFocus;
      exit;
    end;

   if not (dmGeral.BUS_CD_C_FPG2.FieldByName('DOC_IMPRESSO').AsInteger in [1,2,4]) then
    begin
      ShowMessage('É permitido somente forma de pagamento do tipo duplicada, boleto ou nota promissória.');
      cbbFormaPagCrd.SetFocus;
      exit;
    end;

  dmGeral.CAD_CD_C_CLI_CRD.Cancel;
  if dmGeral.CAD_CD_C_CLI_CRD.Locate('ID_FORMA_PAG',id_forma_pag,[]) then
    begin
     ShowMessage('Forma Pag. já foi selecionado.');
     dmGeral.CAD_CD_C_CLI_CRD.Insert;
     cbbFormaPagCrd.SetFocus;
    end
  else
    begin
       dmGeral.CAD_CD_C_CLI_CRD.Insert;
       dmGeral.CAD_CD_C_CLI_CRD.FieldByName('ID_FORMA_PAG').AsString := id_forma_pag;
       dmGeral.CAD_CD_C_CLI_CRD.FieldByName('INT_NOMEFPG').AsString := descricao;
       txtFpgLimValor.SetFocus;
    end;
end;

procedure TCAD_FM_C_CLI.cbbPerfilEnter(Sender: TObject);
begin
  inherited;
  PerfilCliente :=  dmGeral.CAD_CD_C_CLIid_perfil_cli.AsString;
  dmGeral.BusPerfil(1,'%');
  cbbPerfil.DropDown;
end;

procedure TCAD_FM_C_CLI.cbbPerfilExit(Sender: TObject);
begin
  inherited;
  if cbbPerfil.Text = '' then
  dmGeral.CAD_CD_C_CLIid_perfil_cli.AsString := PerfilCliente;
end;

procedure TCAD_FM_C_CLI.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCAD_FM_C_CLI.cbbRegiaoEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BUS_CD_C_REG.Close;
  dmSgq.BUS_CD_C_REG.Data :=
    dmSgq.BUS_CD_C_REG.DataRequest(VarArrayOf([1, '%']));
  cbbRegiao.DropDown;
end;

procedure TCAD_FM_C_CLI.cbbRotaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusRota(1,'%');
  cbbRota.DropDown;
end;

procedure TCAD_FM_C_CLI.cbbSexoEnter(Sender: TObject);
begin
  inherited;
  //SexoCliente := dmgeral.CAD_CD_C_CLIsexo.AsString;
  //dmGeral.BUS_PR_X_SXO;
  cbbSexo.DropDown;
end;

procedure TCAD_FM_C_CLI.cbbSexoExit(Sender: TObject);
begin
  inherited;
  if cbbSexo.Text = '' then
  //dmgeral.CAD_CD_C_CLIsexo.AsString := SexoCliente;
end;

procedure TCAD_FM_C_CLI.cbbSituacaoEnter(Sender: TObject);
begin
  inherited;
  //SitCliente := dmgeral.CAD_CD_C_CLIsituacao.AsString;
  //dmGeral.BUS_PR_X_STC;
  cbbSituacao.DropDown;
end;

procedure TCAD_FM_C_CLI.cbbSituacaoExit(Sender: TObject);
begin
  inherited;
  if cbbSituacao.Text = '' then
  //dmgeral.CAD_CD_C_CLIsituacao.AsString := SitCliente;
end;

procedure TCAD_FM_C_CLI.cbbTipoEnter(Sender: TObject);
begin
  inherited;
  TipoCliente := dmGeral.CAD_CD_C_CLItipo_cliente.AsString;
  dmGeral.BUS_PR_X_TCN;
  cbbTipo.DropDown;
end;

procedure TCAD_FM_C_CLI.cbbTipoExit(Sender: TObject);
begin
  inherited;
  if cbbTipo.Text = '' then
    dmGeral.CAD_CD_C_CLItipo_cliente.AsString := TipoCliente;
end;

procedure TCAD_FM_C_CLI.cbbTipoInformacoesEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusInfoCad(1,'%');
  cbbTipoInformacoes.DropDown;
end;

procedure TCAD_FM_C_CLI.cbbTipoInformacoesExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused    then
     begin
       Exit;
     end;

  if dmGeral.CAD_CD_C_CLI_INF.FieldByName('ID_CLI_INFORMA').Text = '' then
     begin
       ShowMessage('O campo "Tipo" deve ser prenchido.');
       cbbTipoInformacoes.SetFocus;
       Exit;
     end;

  dmGeral.BusInfoCad(0,dmGeral.CAD_CD_C_CLI_INF.FieldByName('ID_CLI_INFORMA').Text);
  if dmGeral.BUS_CD_C_CAD_CIN.IsEmpty then
     begin
       ShowMessage('Tipo não encontrado.');
       cbbTipoInformacoes.SetFocus;
       Exit;
     end;
end;

procedure TCAD_FM_C_CLI.cbbVendedorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFunCargoGeral('''0'',''1''','true');
  cbbVendedor.DropDown;
end;

procedure TCAD_FM_C_CLI.dbGridRowChanged(Sender: TObject);
begin
  inherited;
  if (dmgeral.CAD_CD_C_PAR_CTR.FieldByname('cad_cli_simplificado').AsBoolean) then
    begin
       if (dmGeral.CAD_CD_C_CLI.FieldByName('PESSOA').AsInteger = 0) then // Pessoa Física
         begin
           lblCPFCNPJ.Caption := 'CPF :';
           txtCPFCNPJ.MaxLength := 11;
           //txtCPFCNPJ.Text := '';

           lblIdentidadeIE.Caption := 'Identidade :';
           //txtIdentidadeIE.Text := '';

           txtInscMunicipal.Enabled := False;
           //txtInscMunicipal.Text := '';
           txtInscMunicipal.Tag := 0;
           txtInscMunicipal.TabStop := False;
           txtInscMunicipal.Color := $00DADADA;


           cbbSexo.Enabled := True;
           cbbSexo.Tag := 0;
           cbbSexo.TabStop := True;

           //tsPessoais.TabVisible := True;
           label3.visible := True;
           txtFiliacao.visible := True;
           label5.visible := True;
           txtprofissao.visible := True;
           label4.visible := True;
           txtrenda.visible := True;
         end
      else // Pessoa Jurídica
         begin
           lblCPFCNPJ.Caption := 'CNPJ:';
           txtCPFCNPJ.MaxLength := 14;
           //txtCPFCNPJ.Text := '';

           lblIdentidadeIE.Caption := 'Insc. Estadual :';
           //txtIdentidadeIE.Text := '';

           txtInscMunicipal.Enabled := True;
           //txtInscMunicipal.Text := '';
           txtInscMunicipal.Tag := 1;
           txtInscMunicipal.TabStop := True;
           txtInscMunicipal.Color := clWhite;



           cbbSexo.Enabled := False;
           cbbSexo.Tag := 1;
           cbbSexo.TabStop := False;

           //tsPessoais.TabVisible := False;
           label3.visible := False;
           txtFiliacao.visible := False;
           label5.visible := False;
           txtprofissao.visible := False;
           label4.visible := False;
           txtrenda.visible := False;
         end;
    end
  else
    begin
      if (dmGeral.CAD_CD_C_CLI.FieldByName('PESSOA').AsInteger = 0) then // Pessoa Física
         begin
           lblCPFCNPJ.Caption := 'CPF :';
           txtCPFCNPJ.MaxLength := 11;
           //txtCPFCNPJ.Text := '';

           lblIdentidadeIE.Caption := 'Identidade :';
           //txtIdentidadeIE.Text := '';

           txtInscMunicipal.Enabled := False;
           //txtInscMunicipal.Text := '';
           txtInscMunicipal.Tag := 0;
           txtInscMunicipal.TabStop := False;
           txtInscMunicipal.Color := $00DADADA;

           txtInscProdutor.Enabled := True;
           //txtInscProdutor.Text := '';
           txtInscProdutor.Tag := 0;
           txtInscProdutor.TabStop := True;
           txtInscProdutor.Color := clWhite;

           txtOrgao.Enabled := True;
           //txtOrgao.Text := '';
           txtOrgao.Tag := 0;
           txtOrgao.TabStop := True;
           txtOrgao.Color := clWhite;

           cbbSexo.Enabled := True;
           cbbSexo.Tag := 0;
           cbbSexo.TabStop := True;

           //tsPessoais.TabVisible := True;
           label3.visible := True;
           txtFiliacao.visible := True;
           label5.visible := True;
           txtprofissao.visible := True;
           label4.visible := True;
           txtrenda.visible := True;
         end
      else // Pessoa Jurídica
         begin
           lblCPFCNPJ.Caption := 'CNPJ:';
           txtCPFCNPJ.MaxLength := 14;
           //txtCPFCNPJ.Text := '';

           lblIdentidadeIE.Caption := 'Insc. Estadual :';
           //txtIdentidadeIE.Text := '';

           txtInscMunicipal.Enabled := True;
           //txtInscMunicipal.Text := '';
           txtInscMunicipal.Tag := 1;
           txtInscMunicipal.TabStop := True;
           txtInscMunicipal.Color := clWhite;

           txtInscProdutor.Enabled := False;
           txtInscProdutor.Tag := 1;
           //txtInscProdutor.Text := '';
           txtInscProdutor.TabStop := False;
           txtInscProdutor.Color := $00DADADAe;

           txtOrgao.Enabled := False;
           //txtOrgao.Text := '';
           txtOrgao.Tag := 1;
           txtOrgao.TabStop := False;
           txtOrgao.Color := $00DADADA;

           cbbSexo.Enabled := False;
           cbbSexo.Tag := 1;
           cbbSexo.TabStop := False;

           //tsPessoais.TabVisible := False;
           label3.visible := False;
           txtFiliacao.visible := False;
           label5.visible := False;
           txtprofissao.visible := False;
           label4.visible := False;
           txtrenda.visible := False;
         end;
    end;
end;

procedure TCAD_FM_C_CLI.dgBancoInformacoesDblClick(Sender: TObject);
begin
  inherited;
  if pnlBancoInformacoes.Enabled = False then
     pnlBancoInformacoes.Enabled := True;

  dmGeral.CAD_CD_C_CLI_BCO.Cancel;

  if dmGeral.CAD_CD_C_CLI_BCO.IsEmpty then
     begin
       dmGeral.CAD_CD_C_CLI_BCO.Append;
       pnlBancoInformacoes.Enabled := True;
       dpkDataBancoInformacoes.SetFocus;
     end
  else
     begin
       dmGeral.CAD_CD_C_CLI_BCO.Edit;
       pnlBancoInformacoes.Enabled := True;
       dpkDataBancoInformacoes.SetFocus;
     end;
end;

procedure TCAD_FM_C_CLI.dgBancoInformacoesIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgBancoInformacoesIButton.Enabled := False;
     if dmGeral.CAD_CD_C_CLI_BCO.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          Abort;
        end;
     dmGeral.CAD_CD_C_CLI_BCO.Delete;
     dmGeral.CAD_CD_C_CLI_BCO.Edit;
  finally
    dgBancoInformacoesIButton.Enabled := True;
  end;
end;

procedure TCAD_FM_C_CLI.dgContatosIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgContatosIButton.Enabled := False;
     if dmGeral.CAD_CD_C_CLI_CTO.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_CLI_CTO.Delete;
     dmGeral.CAD_CD_C_CLI_CTO.Edit;
  finally
    dgContatosIButton.Enabled := True;
  end;
end;

procedure TCAD_FM_C_CLI.dgContatosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlContatos.Enabled = False then
     pnlContatos.Enabled := True;

  dmGeral.CAD_CD_C_CLI_CTO.Cancel;

  if dmGeral.CAD_CD_C_CLI_CTO.IsEmpty then
     begin
       //dmGeral.CAD_CD_C_CLI_CTO.Append;
       pnlContatos.Enabled := True;
       txtNomeContato.SetFocus;
     end
  else
     begin
       dmGeral.CAD_CD_C_CLI_CTO.Edit;
       pnlContatos.Enabled := True;
       txtNomeContato.SetFocus;
     end;
end;

procedure TCAD_FM_C_CLI.dgCulIButtonClick(Sender: TObject);
begin
  inherited;
   try
     dgCulIButton.Enabled := False;
     if dmGeral.CAD_CD_C_CLI_PRO_CUL.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_CLI_PRO_CUL.Delete;
   //  dmGeral.CAD_CD_C_CLI_PRO_CUL.Edit;
  finally
    dgCULIButton.Enabled := True;
  end;
end;

procedure TCAD_FM_C_CLI.dgDiasPrazoIButtonClick(Sender: TObject);
begin
  inherited;
   try
     dgDiasPrazoIButton.Enabled := False;
     if dmGeral.CAD_CD_C_CLI_PRD.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_CLI_PRD.Delete;
     dmGeral.CAD_CD_C_CLI_PRD.Edit;
  finally
    dgDiasPrazoIButton.Enabled := True;
  end;
end;

procedure TCAD_FM_C_CLI.dgDiasPrazoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
   if pnlPrazoCompra.Enabled = False then
     pnlPrazoCompra.Enabled := True;

  dmGeral.CAD_CD_C_CLI_PRD.Cancel;

  if dmGeral.CAD_CD_C_CLI_PRD.IsEmpty then
     begin
       dmGeral.CAD_CD_C_CLI_PRD.Append;
       pnlPrazoCompra.Enabled := True;
       txtPrazoDias.SetFocus;
     end
  else
     begin
       dmGeral.CAD_CD_C_CLI_PRD.Edit;
       pnlPrazoCompra.Enabled := True;
       txtPrazoDias.SetFocus;
     end;
end;

procedure TCAD_FM_C_CLI.dgEmailButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgEmailButton.Enabled := False;
     if dmGeral.CAD_CD_C_CLI_EML.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_CLI_EML.Delete;
     dmGeral.CAD_CD_C_CLI_EML.Edit;
  finally
    dgEmailButton.Enabled := True;
  end;
end;

procedure TCAD_FM_C_CLI.dgEmailMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlEmail.Enabled = False then
     pnlEmail.Enabled := True;

  dmGeral.CAD_CD_C_CLI_EML.Cancel;

  if dmGeral.CAD_CD_C_CLI_EML.IsEmpty then
     begin
       dmGeral.CAD_CD_C_CLI_EML.Append;
       pnlEmail.Enabled := True;
       txtEmailNota.SetFocus;
     end
  else
     begin
       dmGeral.CAD_CD_C_CLI_EML.Edit;
       pnlEmail.Enabled := false;
     end;
end;

procedure TCAD_FM_C_CLI.dgFrgCrdIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgFrgCrd.Enabled := False;
     if dmGeral.CAD_CD_C_CLI_CRD.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_CLI_CRD.Delete;
     dmGeral.CAD_CD_C_CLI_CRD.Edit;
  finally
    dgFrgCrdIButton.Enabled := True;
  end;
end;

procedure TCAD_FM_C_CLI.dgFrgCrdMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
   if pnlFpgCrd.Enabled = False then
     pnlFpgCrd.Enabled := True;

  dmGeral.CAD_CD_C_CLI_CRD.Cancel;

  if dmGeral.CAD_CD_C_CLI_CRD.IsEmpty then
     begin
       dmGeral.CAD_CD_C_CLI_CRD.Append;
       cbbFormaPagCrd.SetFocus;
     end
  else
     begin
       dmGeral.CAD_CD_C_CLI_CRD.Edit;
       txtFpgLimValor.SetFocus;
     end;
end;

procedure TCAD_FM_C_CLI.dgInformacoesIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgInformacoesIButton.Enabled := False;
     if dmGeral.CAD_CD_C_CLI_INF.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_CLI_INF.Delete;
     dmGeral.CAD_CD_C_CLI_INF.Edit;
  finally
    dgInformacoesIButton.Enabled := True;
  end;
end;

procedure TCAD_FM_C_CLI.dgInformacoesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlInformacoes.Enabled = False then
     pnlInformacoes.Enabled := True;

  dmGeral.CAD_CD_C_CLI_INF.Cancel;

  if dmGeral.CAD_CD_C_CLI_INF.IsEmpty then
     begin
       dmGeral.CAD_CD_C_CLI_INF.Append;
       pnlInformacoes.Enabled := True;
       cbbTipoInformacoes.SetFocus;
     end
  else
     begin
       dmGeral.CAD_CD_C_CLI_INF.Edit;
       pnlInformacoes.Enabled := True;
       cbbTipoInformacoes.SetFocus;
     end;
end;

procedure TCAD_FM_C_CLI.dgReclamacoesIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgReclamacoesIButton.Enabled := False;
     if dmGeral.CAD_CD_C_CLI_REC.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_CLI_REC.Delete;
     dmGeral.CAD_CD_C_CLI_REC.Edit;
  finally
    dgReclamacoesIButton.Enabled := True;
  end;
end;

procedure TCAD_FM_C_CLI.dgReclamacoesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlReclamacoes.Enabled = False then
     pnlReclamacoes.Enabled := True;

  dmGeral.CAD_CD_C_CLI_REC.Cancel;

  if dmGeral.CAD_CD_C_CLI_REC.IsEmpty then
     begin
       dmGeral.CAD_CD_C_CLI_REC.Append;
       pnlReclamacoes.Enabled := True;
       dpkDataRegistro.SetFocus;
     end
  else
     begin
       dmGeral.CAD_CD_C_CLI_REC.Edit;
       pnlReclamacoes.Enabled := True;
       dpkDataRegistro.SetFocus;
     end;
end;

procedure TCAD_FM_C_CLI.dgRevendaButtonClick(Sender: TObject);
begin
  inherited;
 try
     dgRevendaButton.Enabled := False;
     if dmGeral.CAD_CD_C_CLI_RVD.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_CLI_RVD.Delete;
     dmGeral.CAD_CD_C_CLI_RVD.Edit;
  finally
    dgRevendaButton.Enabled := True;
  end;
end;

procedure TCAD_FM_C_CLI.dgRevendaMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlRevenda.Enabled = False then
     pnlRevenda.Enabled := True;

  dmGeral.CAD_CD_C_CLI_RVD.Cancel;

  if dmGeral.CAD_CD_C_CLI_RVD.IsEmpty then
     begin
       dmGeral.CAD_CD_C_CLI_RVD.Append;
       pnlRevenda.Enabled := True;
       txtRevenda.SetFocus;
     end
  else
     begin
       dmGeral.CAD_CD_C_CLI_RVD.Edit;
       pnlRevenda.Enabled := false;
       //txtRevenda.SetFocus;
     end;
end;

procedure TCAD_FM_C_CLI.dgVeiculoButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgVeiculoButton.Enabled := False;
     if dmGeral.CAD_CD_C_CLI_VEI.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_CLI_VEI.Delete;
     dmGeral.CAD_CD_C_CLI_VEI.Edit;
  finally
    dgVeiculoButton.Enabled := True;
  end;
end;

procedure TCAD_FM_C_CLI.dpkDataBancoInformacoesEnter(Sender: TObject);
begin
  inherited;
  dpkDataBancoInformacoes.Date := xDataSis;
end;

procedure TCAD_FM_C_CLI.dpkDataRegistroEnter(Sender: TObject);
begin
  inherited;
  dpkDataRegistro.Date := xDataSis;
end;

procedure TCAD_FM_C_CLI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_CLI.Close;
  FreeAndNil(CAD_FM_C_CLI);
end;

procedure TCAD_FM_C_CLI.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_CLI.Close;
  dmGeral.CAD_CD_C_CLI.Data := dmGeral.CAD_CD_C_CLI.DataRequest(VarArrayOf([0, '']));

  dmSgq.BUS_CD_C_REG.Close;
  dmSgq.BUS_CD_C_REG.Data :=
    dmSgq.BUS_CD_C_REG.DataRequest(VarArrayOf([1, '%']));

  dmGeral.BusFunCargoGeral('''0'',''1''','true');
  dmGeral.BusPerfil(1,'%');
  dmGeral.BusRota(1,'%');
  dmGeral.BusHierarquiaFpg(1,'');
  dmGeral.BUS_PR_X_TCN;
  dmGeral.BUS_PR_X_SXO;
  dmGeral.BUS_PR_X_STC;
end;

procedure TCAD_FM_C_CLI.FormShow(Sender: TObject);
begin
  inherited;
  lblRota.Visible := false;
  cbbRota.Visible := false;

  lblHrqFpg.Visible := false;
  cbbHrqFpg.Visible := false;

  if dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean = true then
    begin
      // Comentado por Maxsuel Victor, 28/10/2016. Esse parte foi substituída pelo if do par_mod = car
      // logo abaixo.
         //lblRota.Visible := true;
         //cbbRota.Visible := true;
     lblVendedor.Caption := 'Representante :';
    end;

  if dmgeral.CAD_CD_C_PAR_CTRped_ver_limite.AsBoolean = true then
    begin
      txtLimite.Enabled := true;
      dpkValidade.Enabled := true;
      //txtSaldoLimite.ReadOnly := false;
    end;

   if dmgeral.CAD_CD_C_PAR_CTRativa_forma_fpg_hrq.AsBoolean = true then
    begin
      lblHrqFpg.Visible := true;
      cbbHrqFpg.Visible := true;
    end;


  lblPrePrazoFinan.Visible := false;
  txtPrePrazoFinan.Visible := false;
  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) and
      (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ped_corr_preco_prazo').AsBoolean = True)) then
    begin
      lblPrePrazoFinan.Visible := true;
      txtPrePrazoFinan.Visible := true;
     end;

  tsPrazoCompra.TabVisible := false;
  tsAreaRural.TabVisible := false;
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = True) then
    begin
       tsPrazoCompra.TabVisible := true;
       tsAreaRural.TabVisible   := true;
     end;

  if ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CAR').AsBoolean = True) or
    (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = true)) and
    dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean = False then
    begin
      lblRota.Visible := true;
      cbbRota.Visible := true;
    end
  else
    begin
      lblRota.Visible := False;
      cbbRota.Visible := False;
    end;

  tsVeiculo.TabVisible := false;
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = True) then
     tsVeiculo.TabVisible := true;

  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('limite_cred_fpg').AsBoolean=true) then
   begin
    tsCredito.TabVisible := true;
    txtLimite.ReadOnly := true;
    txtLimite.Color := $00DADADA;
   end
  else
   begin
     tsCredito.TabVisible := false;
     txtLimite.ReadOnly := false;
     txtLimite.Color := clWhite;
   end;


  if (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('cad_cli_simplificado').AsBoolean) then
    begin
     CadCliSimplificado(true);
    end;


  dmGeral.BusFuncionario3(0,IntToStr(xFuncionario));
  if dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsString = '1' then // Externo
     begin
       cbbVendedor.Enabled := false;
     end;

  if dmGeral.BUS_CD_C_FU3.FieldByName('per_alterar_repres').AsBoolean = false then
     begin
       cbbVendedor.Enabled := false;
     end;


end;

procedure TCAD_FM_C_CLI.JvDBComboEdit1ButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
   PSQ_FM_X_CID.ShowModal;
      if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
         begin
           dmGeral.CAD_CD_C_CLI.FieldByName('int_aval_nomecid').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString;

           dmGeral.CAD_CD_C_CLI.FieldByName('AVAL_ID_CIDADE').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString;
         end;
   PSQ_FM_X_CID.Free;
end;

procedure TCAD_FM_C_CLI.JvDBComboEdit1Exit(Sender: TObject);
begin
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_CID.Close;

  dmGeral.CAD_CD_C_CLI.FieldByName('INT_AVAL_NOMECID').Text := '';

  dmGeral.BUS_CD_C_CID.Close;
  dmGeral.BUS_CD_C_CID.Data :=
  dmGeral.BUS_CD_C_CID.DataRequest(VarArrayOf([0, txtCidade.Text]));

  if not dmGeral.BUS_CD_C_CID.IsEmpty then
    begin
      dmGeral.CAD_CD_C_CLI.FieldByName('INT_AVAL_NOMECID').Text :=
        dmGeral.BUS_CD_C_CID.FieldByName('NOME').AsString;

      dmGeral.CAD_CD_C_CLI.FieldByName('INT_AVAL_UF').Text :=
        dmGeral.BUS_CD_C_CID.FieldByName('UF').AsString;
    end
  else
    begin
      ShowMessage('Cidade com código IBGE inválido. Favor verificar!');
      txtCidade.Text := '';
    end;

end;

procedure TCAD_FM_C_CLI.JvDBComboEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  not ( Key in ['0'..'9', Chr(8)] ) then
      Key := #0;
end;

procedure TCAD_FM_C_CLI.txtRevendaButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_RVD := TPSQ_FM_X_RVD.Create(Self);
   PSQ_FM_X_RVD.ShowModal;
      if not PSQ_FM_X_RVD.BUS_CD_C_RVD.IsEmpty then
         begin
           dmGeral.CAD_CD_C_CLI_RVD.FieldByName('ID_RVD').AsString :=
                PSQ_FM_X_RVD.BUS_CD_C_RVD.FieldByName('ID_RVD').AsString;
         end;
   PSQ_FM_X_RVD.Free;
end;

procedure TCAD_FM_C_CLI.txtRevendaExit(Sender: TObject);
var
  id_sequencia: string;
  SMPrincipal : TSMClient;
  id_rvd: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        Exit;
     end;

  { if (not (btnAddRevenda.Focused)) and
     (not (dgRevenda.Focused)) then
      begin
        exit;
      end; }

   if (dgRevenda.Focused) then
      begin
        exit;
      end;


  if (dmGeral.CAD_CD_C_CLI_RVD.FieldBYName('id_rvd').AsString = '')then
    begin
      ShowMessage('Revenda deve ser preenchida.');
      txtRevenda.Text := '';
      txtRevenda.SetFocus;
      exit;
    end;

  id_rvd := dmGeral.CAD_CD_C_CLI_RVD.FieldBYName('id_rvd').AsString;

  BUS_CD_C_RVD.Close;
    BUS_CD_C_RVD.Data :=
     BUS_CD_C_RVD.DataRequest(
          VarArrayOf([0, id_rvd]));

  if BUS_CD_C_RVD.IsEmpty then
     begin
        ShowMessage('Revenda não cadastrada!');
        BUS_CD_C_RVD.Close;
        txtRevenda.Text := '';
        txtRevenda.SetFocus;
        exit;
     end;


  dmGeral.CAD_CD_C_CLI_RVD.cancel;

  if dmGeral.CAD_CD_C_CLI_RVD.locate('id_rvd',id_rvd,[]) then
     begin
       ShowMessage('Esta revenda já foi inserida!');
       BUS_CD_C_RVD.Close;
       dmGeral.CAD_CD_C_CLI_RVD.Insert;
       txtRevenda.Text := '';
       txtRevenda.SetFocus;
       exit;
     end;

  dmGeral.CAD_CD_C_CLI_RVD.insert;

  dmGeral.CAD_CD_C_CLI_RVD.FieldBYName('id_rvd').AsString := id_rvd;
  dmGeral.CAD_CD_C_CLI_RVD.FieldBYName('int_descrev').AsString :=
       BUS_CD_C_RVD.FieldBYName('descricao').AsString;
  BUS_CD_C_RVD.Close;

  dmGeral.CAD_CD_C_CLI_RVD.Post;
  pnlRevenda.Enabled := False;
  btnAddRevenda.SetFocus;
end;

procedure TCAD_FM_C_CLI.pnlBancoInformacoesExit(Sender: TObject);
begin
  inherited;
  if (btnAddBancoInformacoes.Focused) or (dgBancoInformacoes.Focused) or
     (not dgBancoInformacoesIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               Exit;
             end;

          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          dmGeral.CAD_CD_C_CLI_BCO.Cancel;
          if not dmGeral.CAD_CD_C_CLI_BCO.IsEmpty then
             dmGeral.CAD_CD_C_CLI_BCO.Edit;
          finally
             pnlBancoInformacoes.Enabled := False;
          end;
      end;
end;

procedure TCAD_FM_C_CLI.pnlContatosExit(Sender: TObject);
begin
  inherited;
  if (btnAddContato.Focused) or (dgContatos.Focused) or (not dgContatosIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               Exit;
             end;

          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          dmGeral.CAD_CD_C_CLI_CTO.Cancel;
          if not dmGeral.CAD_CD_C_CLI_CTO.IsEmpty then
             dmGeral.CAD_CD_C_CLI_CTO.Edit;
          finally
             pnlContatos.Enabled := False;
          end;
      end;
end;

procedure TCAD_FM_C_CLI.pnlEmailExit(Sender: TObject);
begin
  inherited;
  if (btnAddEmail.Focused)  or (not dgEmailButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               Exit;
             end;

          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          dmGeral.CAD_CD_C_CLI_EML.Cancel;
          if not dmGeral.CAD_CD_C_CLI_EML.IsEmpty then
             dmGeral.CAD_CD_C_CLI_EML.Edit;
          finally
             pnlEmail.Enabled := False;
          end;
      end;
end;

procedure TCAD_FM_C_CLI.pnlFpgCrdExit(Sender: TObject);
begin
  inherited;
   if (btnAddFpgCrd.Focused)  or (not dgFrgCrd.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               Exit;
             end;

          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          dmGeral.CAD_CD_C_CLI_CRD.Cancel;
          if not dmGeral.CAD_CD_C_CLI_CRD.IsEmpty then
             dmGeral.CAD_CD_C_CLI_CRD.Edit;
          finally
             pnlFpgCrd.Enabled := False;
          end;
      end;
end;

procedure TCAD_FM_C_CLI.pnlInformacoesExit(Sender: TObject);
begin
  inherited;
  if (btnAddInformacoes.Focused) or (dgInformacoes.Focused) or (not dgInformacoesIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               Exit;
             end;

          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          dmGeral.CAD_CD_C_CLI_INF.Cancel;
          if not dmGeral.CAD_CD_C_CLI_INF.IsEmpty then
             dmGeral.CAD_CD_C_CLI_INF.Edit;
          finally
             pnlInformacoes.Enabled := False;
          end;
      end;
end;

procedure TCAD_FM_C_CLI.pnlPrazoCompraExit(Sender: TObject);
begin
  inherited;
  if (btnAddDiasPrazo.Focused) or (dgDiasPrazo.Focused) or (not dgDiasPrazoIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               Exit;
             end;

          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          dmGeral.CAD_CD_C_CLI_PRD.Cancel;
          if not dmGeral.CAD_CD_C_CLI_PRD.IsEmpty then
             dmGeral.CAD_CD_C_CLI_PRD.Edit;
          finally
             pnlPrazoCompra.Enabled := False;
          end;
      end;
end;

procedure TCAD_FM_C_CLI.pnlReclamacoesExit(Sender: TObject);
begin
  inherited;
  if (btnAddReclamacoes.Focused) or (dgReclamacoes.Focused) or (not dgReclamacoesIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               Exit;
             end;

          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          dmGeral.CAD_CD_C_CLI_REC.Cancel;
          if not dmGeral.CAD_CD_C_CLI_REC.IsEmpty then
             dmGeral.CAD_CD_C_CLI_REC.Edit;
          finally
             pnlReclamacoes.Enabled := False;
          end;
      end;
end;

procedure TCAD_FM_C_CLI.pnlRevendaExit(Sender: TObject);
begin
  inherited;
 if (btnAddRevenda.Focused) {or (dgRevenda.Focused)} or (not dgRevendaButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               Exit;
             end;

          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          dmGeral.CAD_CD_C_CLI_RVD.Cancel;
          if not dmGeral.CAD_CD_C_CLI_RVD.IsEmpty then
             dmGeral.CAD_CD_C_CLI_RVD.Edit;
          finally
             pnlRevenda.Enabled := False;
          end;
      end;
end;

procedure TCAD_FM_C_CLI.pnlVeiculoExit(Sender: TObject);
begin
  inherited;
 if (btnAddVeiculo.Focused)  or (not dgVeiculoButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               Exit;
             end;

          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          dmGeral.CAD_CD_C_CLI_VEI.Cancel;
          if not dmGeral.CAD_CD_C_CLI_VEI.IsEmpty then
             dmGeral.CAD_CD_C_CLI_VEI.Edit;
          finally
             pnlVeiculo.Enabled := False;
          end;
      end;
end;

function TCAD_FM_C_CLI.RemoveCaracter(Str: String;
  Caracter: array of String): String;
  var
  I: integer;
begin
  Result := Str;
  for I := 0 to High(Caracter) do
    begin
      while Pos(Caracter[I],Result) > 0 do
        delete (result, Pos(caracter[i],Result),1);
    end;
end;

procedure TCAD_FM_C_CLI.tsAreaRuralShow(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_PR_X_TIP_PRO;
  dmGeral.BUS_CD_X_TIP_PRO.Open;
end;

procedure TCAD_FM_C_CLI.tsCreditoShow(Sender: TObject);
begin
  inherited;
   dmGeral.BusFormaPgtos2(1,'%');
end;

procedure TCAD_FM_C_CLI.txtArCEPExit(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_CLI_PRO.Post;
end;

procedure TCAD_FM_C_CLI.txtArCidadeButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
   PSQ_FM_X_CID.ShowModal;
      if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
         begin
           dmGeral.CAD_CD_C_CLI_PRO.FieldByName('INT_NOMECID').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString;

           dmGeral.CAD_CD_C_CLI_PRO.FieldByName('ID_CIDADE').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString;

           dmGeral.CAD_CD_C_CLI_PRO.FieldByName('INT_UF').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('UF').AsString;

         end;
   PSQ_FM_X_CID.Free;
end;

procedure TCAD_FM_C_CLI.txtArquivoButtonClick(Sender: TObject);
begin
  inherited;
  if opendialog1.Execute then
    begin
      if TamanhoArquivo(opendialog1.FileName) <= 1048576 then
        begin
          txtArquivo.Text := ExtractFileName(opendialog1.FileName);
          {txtArquivo.Text := ExtractFilePath(Application.ExeName)+'emp'+dmgeral.CAD_CD_C_PARid_empresa.Text+'\Protocolos\ArqP'+
            txtItem.Text+'L'+txtLote.Text+Copy(arq_orig , Pos('.', arq_orig), Length(arq_orig));}
          dmGeral.CAD_CD_C_CLI_BCOarquivo.LoadFromFile(opendialog1.FileName);
        end
      else
        begin
          ShowMessage('Tamanho do arquivo deve ser inferior a 1Mb (um megabite)!');
        end;
    end;
end;

procedure TCAD_FM_C_CLI.txtCepKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
  key:=#0;
end;

procedure TCAD_FM_C_CLI.txtCidadeButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
   PSQ_FM_X_CID.ShowModal;
      if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
         begin
           dmGeral.CAD_CD_C_CLI.FieldByName('INT_NOMECID').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString;

           dmGeral.CAD_CD_C_CLI.FieldByName('ID_CIDADE').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString;

           dmGeral.CAD_CD_C_CLI.FieldByName('COD_PAIS').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('COD_PAIS').AsString;

         end;
   PSQ_FM_X_CID.Free;
end;

procedure TCAD_FM_C_CLI.txtCidadeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_CID.Close;

  dmGeral.CAD_CD_C_CLI.FieldByName('INT_NOMECID').Text := '';

  dmGeral.BUS_CD_C_CID.Close;
  dmGeral.BUS_CD_C_CID.Data :=
  dmGeral.BUS_CD_C_CID.DataRequest(VarArrayOf([0, txtCidade.Text]));

  if not dmGeral.BUS_CD_C_CID.IsEmpty then
    begin
      dmGeral.CAD_CD_C_CLI.FieldByName('INT_NOMECID').Text :=
        dmGeral.BUS_CD_C_CID.FieldByName('NOME').AsString;

      dmGeral.CAD_CD_C_CLI.FieldByName('INT_UF').Text :=
        dmGeral.BUS_CD_C_CID.FieldByName('UF').AsString;

      dmGeral.CAD_CD_C_CLI.FieldByName('COD_PAIS').Text :=
        dmGeral.BUS_CD_C_CID.FieldByName('COD_PAIS').AsString;
    end
  else
    begin
      ShowMessage('Cidade com código IBGE inválido. Favor verificar!');
      txtCidade.Text := '';
    end;
end;

procedure TCAD_FM_C_CLI.txtCidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if  not ( Key in ['0'..'9', Chr(8)] ) then
   Key := #0;
end;

procedure TCAD_FM_C_CLI.txtCPFCNPJExit(Sender: TObject);
var
doc_cnpj_cpf,doc_ip: string;
begin
  inherited;
  doc_cnpj_cpf := dmGeral.CAD_CD_C_CLIdoc_cnpj_cpf.Text;
  doc_ip := dmGeral.CAD_CD_C_CLIdoc_ip.Text;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
     dmGeral.BUS_CD_C_CLI.DataRequest
             (VarArrayOf([80,dmGeral.CAD_CD_C_CLIid_cliente.Text,dmGeral.CAD_CD_C_CLIdoc_cnpj_cpf.Text]));

   if not dmGeral.BUS_CD_C_CLI.IsEmpty then
    begin
      if length(RemoveCaracter(dmGeral.CAD_CD_C_CLIdoc_cnpj_cpf.AsString,['/','.','-'])) = 14 then
        begin
          ShowMessage('CNPJ já Cadastrado.');
          dmGeral.CAD_CD_C_CLIdoc_cnpj_cpf.Text := '';
          txtcpfcnpj.SetFocus;
        end
      else
        begin
          if MessageDlg('CPF já Cadastrado, deseja continuar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              if dmGeral.BUS_CD_C_CLI.Locate('doc_cnpj_cpf;doc_ip',VarArrayOf([doc_cnpj_cpf,doc_ip]),[]) then
                begin
                  ShowMessage('Cobinação CPF/Insc. Produtor já Cadastrada.');
                end;
            end
          else
            begin
              dmGeral.CAD_CD_C_CLIdoc_cnpj_cpf.Text := '';
              txtcpfcnpj.SetFocus;
            end;
        end;
    end;
end;

procedure TCAD_FM_C_CLI.txtCPFCNPJKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
  key:=#0;
end;

procedure TCAD_FM_C_CLI.txtCpfCnpjProprietarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
     key:=#0;
end;

procedure TCAD_FM_C_CLI.rgPessoaClick(Sender: TObject);
begin
  inherited;

  if dmgeral.CAD_CD_C_PAR_CTR.FieldByname('cad_cli_simplificado').AsBoolean then
     begin
        if rgPessoa.ItemIndex = 0 then // Pessoa Física
           begin
             lblCPFCNPJ.Caption := 'CPF :';
             txtCPFCNPJ.MaxLength := 11;
             //txtCPFCNPJ.Text := '';

             lblIdentidadeIE.Caption := 'Identidade :';
             //txtIdentidadeIE.Text := '';


             //txtInscMunicipal.Text := '';
             txtInscMunicipal.Enabled := False;
             txtInscMunicipal.Tag := 0;
             txtInscMunicipal.TabStop := False;
             txtInscMunicipal.Color := $00DADADA;



             cbbSexo.Enabled := True;
             cbbSexo.Tag := 0;
             cbbSexo.TabStop := True;

             //tsPessoais.TabVisible := True;
             label3.visible := True;
             txtFiliacao.visible := True;
             label5.visible := True;
             txtprofissao.visible := True;
             label4.visible := True;
             txtrenda.visible := True;
           end
        else // Pessoa Jurídica
           begin
             lblCPFCNPJ.Caption := 'CNPJ:';
             txtCPFCNPJ.MaxLength := 14;
             //txtCPFCNPJ.Text := '';

             lblIdentidadeIE.Caption := 'Insc. Estadual :';
             //txtIdentidadeIE.Text := '';

             txtInscMunicipal.Enabled := True;
             //txtInscMunicipal.Text := '';
             txtInscMunicipal.Tag := 1;
             txtInscMunicipal.TabStop := True;
             txtInscMunicipal.Color := clWhite;




             cbbSexo.Enabled := False;
             cbbSexo.Tag := 1;
             cbbSexo.TabStop := False;

             //tsPessoais.TabVisible := False;
             label3.visible := False;
             txtFiliacao.visible := False;
             label5.visible := False;
             txtprofissao.visible := False;
             label4.visible := False;
             txtrenda.visible := False;
           end;
     end
  else
     begin

        if rgPessoa.ItemIndex = 0 then // Pessoa Física
           begin
             lblCPFCNPJ.Caption := 'CPF :';
             txtCPFCNPJ.MaxLength := 11;
             //txtCPFCNPJ.Text := '';

             lblIdentidadeIE.Caption := 'Identidade :';
             //txtIdentidadeIE.Text := '';


             //txtInscMunicipal.Text := '';
             txtInscMunicipal.Tag := 0;
             txtInscMunicipal.TabStop := False;
             txtInscMunicipal.Color := $00DADADA;
             txtInscMunicipal.Enabled := False;

             txtInscProdutor.Enabled := True;
             //txtInscProdutor.Text := '';
             txtInscProdutor.Tag := 0;
             txtInscProdutor.TabStop := True;

             txtOrgao.Enabled := True;
             //txtOrgao.Text := '';
             txtOrgao.Tag := 0;
             txtOrgao.TabStop := True;

             cbbSexo.Enabled := True;
             cbbSexo.Tag := 0;
             cbbSexo.TabStop := True;

             //tsPessoais.TabVisible := True;
             label3.visible := True;
             txtFiliacao.visible := True;
             label5.visible := True;
             txtprofissao.visible := True;
             label4.visible := True;
             txtrenda.visible := True;
           end
        else // Pessoa Jurídica
           begin
             lblCPFCNPJ.Caption := 'CNPJ:';
             txtCPFCNPJ.MaxLength := 14;
             //txtCPFCNPJ.Text := '';

             lblIdentidadeIE.Caption := 'Insc. Estadual :';
             //txtIdentidadeIE.Text := '';

             txtInscMunicipal.Enabled := True;
             //txtInscMunicipal.Text := '';
             txtInscMunicipal.Tag := 1;
             txtInscMunicipal.TabStop := True;
             txtInscMunicipal.Color := clWhite;
             txtInscMunicipal.ReadOnly := false;

             txtInscProdutor.Enabled := False;
             txtInscProdutor.Tag := 1;
             //txtInscProdutor.Text := '';
             txtInscProdutor.TabStop := False;

             txtOrgao.Enabled := False;
             //txtOrgao.Text := '';
             txtOrgao.Tag := 1;
             txtOrgao.TabStop := False;

             cbbSexo.Enabled := False;
             cbbSexo.Tag := 1;
             cbbSexo.TabStop := False;

             //tsPessoais.TabVisible := False;
             label3.visible := False;
             txtFiliacao.visible := False;
             label5.visible := False;
             txtprofissao.visible := False;
             label4.visible := False;
             txtrenda.visible := False;
           end;
     end;
end;

procedure TCAD_FM_C_CLI.rgPessoaExit(Sender: TObject);
begin
  inherited;
   if dmgeral.CAD_CD_C_PAR_CTR.FieldByname('cad_cli_simplificado').AsBoolean then
     begin
         if rgPessoa.ItemIndex = 0 then // Pessoa Física
           begin
             lblCPFCNPJ.Caption := 'CPF :';
             txtCPFCNPJ.MaxLength := 11;
             //txtCPFCNPJ.Text := '';

             lblIdentidadeIE.Caption := 'Identidade :';
             //txtIdentidadeIE.Text := '';


             //txtInscMunicipal.Text := '';
             txtInscMunicipal.Enabled := False;
             txtInscMunicipal.Tag := 0;
             txtInscMunicipal.TabStop := False;
             txtInscMunicipal.Color := $00DADADA;



             cbbSexo.Enabled := True;
             cbbSexo.Tag := 0;
             cbbSexo.TabStop := True;

             //tsPessoais.TabVisible := True;
             label3.visible := True;
             txtFiliacao.visible := True;
             label5.visible := True;
             txtprofissao.visible := True;
             label4.visible := True;
             txtrenda.visible := True;
           end
        else // Pessoa Jurídica
           begin
             lblCPFCNPJ.Caption := 'CNPJ:';
             txtCPFCNPJ.MaxLength := 14;
             //txtCPFCNPJ.Text := '';

             lblIdentidadeIE.Caption := 'Insc. Estadual :';
             //txtIdentidadeIE.Text := '';

             txtInscMunicipal.Enabled := True;
             //txtInscMunicipal.Text := '';
             txtInscMunicipal.Tag := 1;
             txtInscMunicipal.TabStop := True;
             txtInscMunicipal.Color := clWhite;




             cbbSexo.Enabled := False;
             cbbSexo.Tag := 1;
             cbbSexo.TabStop := False;

             //tsPessoais.TabVisible := False;
             label3.visible := False;
             txtFiliacao.visible := False;
             label5.visible := False;
             txtprofissao.visible := False;
             label4.visible := False;
             txtrenda.visible := False;
           end;
     end
  else
     begin


        if (dmGeral.CAD_CD_C_CLI.FieldByName('PESSOA').AsInteger = 0) then // Pessoa Física
           begin
             lblCPFCNPJ.Caption := 'CPF :';
             txtCPFCNPJ.MaxLength := 11;
             //txtCPFCNPJ.Text := '';

             lblIdentidadeIE.Caption := 'Identidade :';
             //txtIdentidadeIE.Text := '';

             txtInscMunicipal.Enabled := False;
             //txtInscMunicipal.Text := '';
             txtInscMunicipal.Tag := 0;
             txtInscMunicipal.TabStop := False;
             txtInscMunicipal.Color := $00DADADA;

             txtInscProdutor.Enabled := True;
             //txtInscProdutor.Text := '';
             txtInscProdutor.Tag := 0;
             txtInscProdutor.TabStop := True;
             txtInscProdutor.Color := clWhite;

             txtOrgao.Enabled := True;
             //txtOrgao.Text := '';
             txtOrgao.Tag := 0;
             txtOrgao.TabStop := True;
             txtOrgao.Color := clWhite;

             cbbSexo.Enabled := True;
             cbbSexo.Tag := 0;
             cbbSexo.TabStop := True;
           end
        else // Pessoa Jurídica
           begin
             lblCPFCNPJ.Caption := 'CNPJ:';
             txtCPFCNPJ.MaxLength := 14;
             //txtCPFCNPJ.Text := '';

             lblIdentidadeIE.Caption := 'Insc. Estadual :';
             //txtIdentidadeIE.Text := '';

             txtInscMunicipal.Enabled := True;
             //txtInscMunicipal.Text := '';
             txtInscMunicipal.Tag := 1;
             txtInscMunicipal.TabStop := True;
             txtInscMunicipal.Color := clWhite;

             txtInscProdutor.Enabled := False;
             txtInscProdutor.Tag := 1;
             //txtInscProdutor.Text := '';
             txtInscProdutor.TabStop := False;
             txtInscProdutor.Color := $00DADADA;

             txtOrgao.Enabled := False;
             //txtOrgao.Text := '';
             txtOrgao.Tag := 1;
             txtOrgao.TabStop := False;
             txtOrgao.Color := $00DADADA;

             cbbSexo.Enabled := False;
             cbbSexo.Tag := 1;
             cbbSexo.TabStop := False;
           end;
     end;
end;

function TCAD_FM_C_CLI.TamanhoArquivo(Arquivo: string): Integer;
begin
  with TFileStream.Create(Arquivo, fmOpenRead or fmShareExclusive) do
  try
    Result := Size;
  finally
   Free;
  end;
end;

procedure TCAD_FM_C_CLI.TestarCPF_CNPJ_IP;
var
doc_cnpj_cpf,doc_ip: string;
begin
  inherited;
  doc_cnpj_cpf := dmGeral.CAD_CD_C_CLIdoc_cnpj_cpf.Text;
  doc_ip := dmGeral.CAD_CD_C_CLIdoc_ip.Text;

  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
     dmGeral.BUS_CD_C_CLI.DataRequest
             (VarArrayOf([80,dmGeral.CAD_CD_C_CLIid_cliente.Text,dmGeral.CAD_CD_C_CLIdoc_cnpj_cpf.Text]));

  if not dmGeral.BUS_CD_C_CLI.IsEmpty then
    begin
      if length(RemoveCaracter(dmGeral.CAD_CD_C_CLIdoc_cnpj_cpf.AsString,['/','.','-'])) <> 14 then
        begin
          if dmGeral.BUS_CD_C_CLI.Locate('doc_cnpj_cpf;doc_ip',VarArrayOf([doc_cnpj_cpf,doc_ip]),[]) then
            begin
              ShowMessage('Cobinação CPF/Insc. Produtor já Cadastrada.');
              txtInscProdutor.SetFocus;
              abort;
            end;
        end;
    end;
end;

procedure TCAD_FM_C_CLI.txtEmailContatoExit(Sender: TObject);
var
  contato: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        exit;
     end;

  if txtNomeContato.Focused or txtTelefoneContato.Focused or
     dpkAniversarioContatos.Focused then
     begin
       abort;
     end;

  contato := dmGeral.CAD_CD_C_CLI_CTO.FieldByName('ID_CONTATO').AsString;
  dmGeral.CAD_CD_C_CLI_CTO.Post;
  pnlContatos.Enabled := False;
  btnAddContato.SetFocus;
  dmGeral.CAD_CD_C_CLI_CTO.locate('ID_CONTATO',contato,[]);
end;

procedure TCAD_FM_C_CLI.txtEmailNotaExit(Sender: TObject);
var
  email:String;
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;



  if (trim(txtEmailNota.Text) = '') then
    begin
      ShowMessage('O campo "Email" deve ser preenchido.');
      txtEmailNota.SetFocus;
      exit;
    end;

  email := trim(txtEmailNota.Text);


  dmGeral.CAD_CD_C_CLI_EML.Cancel;
  if dmGeral.CAD_CD_C_CLI_EML.Locate('EMAIL',email,[]) then
    begin
     ShowMessage('Email já foi selecionado.');
     dmGeral.CAD_CD_C_CLI_EML.Insert;
     txtEmailNota.SetFocus;
    end
  else
    begin
       dmGeral.CAD_CD_C_CLI_EML.Insert;
       dmGeral.CAD_CD_C_CLI_EML.FieldByName('email').AsString := email;
       dmGeral.CAD_CD_C_CLI_EML.Post;
    end;
end;

procedure TCAD_FM_C_CLI.txtFpgLimValorExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  codigo:String;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
       begin
         exit;
       end;

  if (dmGeral.CAD_CD_C_CLI_CRD.FieldByName('LIM_VALOR').AsString='') then
    begin
      dmGeral.CAD_CD_C_CLI_CRD.FieldByName('LIM_VALOR').AsCurrency := 0;
    end;
   //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.CAD_CD_C_CLI_CRD.FieldByName('lim_saldo').AsCurrency :=
         SMPrincipal.enBusNovoSldlimCli(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('id_empresa').AsString,
                                        dmGeral.CAD_CD_C_CLI_CRD.FieldByName('id_cliente').AsString,
                                        dmGeral.CAD_CD_C_CLI_CRD.FieldByName('id_forma_pag').AsString,
                                        dmGeral.CAD_CD_C_CLI_CRD.FieldByName('lim_valor').AsCurrency);
  finally
    FreeAndNil(SMPrincipal);
  end;

  codigo := dmGeral.CAD_CD_C_CLI_CRD.FieldByName('id_forma_pag').AsString;
  dmGeral.CAD_CD_C_CLI_CRD.Post;
  dmgeral.CAD_CD_C_CLI_CRD.Locate('ID_FORMA_PAG',codigo,[]);

  btnAddFpgCrd.SetFocus;
end;

procedure TCAD_FM_C_CLI.txtInscProdutorExit(Sender: TObject);
var
doc_cnpj_cpf,doc_ip: string;
begin
  inherited;
  doc_cnpj_cpf := dmGeral.CAD_CD_C_CLIdoc_cnpj_cpf.Text;
  doc_ip := dmGeral.CAD_CD_C_CLIdoc_ip.Text;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
     dmGeral.BUS_CD_C_CLI.DataRequest
             (VarArrayOf([80,dmGeral.CAD_CD_C_CLIid_cliente.Text,dmGeral.CAD_CD_C_CLIdoc_cnpj_cpf.Text]));

  if not dmGeral.BUS_CD_C_CLI.IsEmpty then
    begin
      if length(RemoveCaracter(dmGeral.CAD_CD_C_CLIdoc_cnpj_cpf.AsString,['/','.','-'])) <> 14 then
        begin
          if dmGeral.BUS_CD_C_CLI.Locate('doc_cnpj_cpf;doc_ip',VarArrayOf([doc_cnpj_cpf,doc_ip]),[]) then
            begin
              ShowMessage('Cobinação CPF/Insc. Produtor já Cadastrada.');
            end;
        end;
    end;
end;

procedure TCAD_FM_C_CLI.txtObservacaoBancoInformacoesExit(Sender: TObject);
var
  bancoInformacoes: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        Exit;
     end;

  if dpkDataBancoInformacoes.Focused then
     begin
       Exit;
     end;


  bancoInformacoes := dmGeral.CAD_CD_C_CLI_BCO.FieldByName('ID_BANCO_INFO').AsString;

  dmGeral.CAD_CD_C_CLI_BCO.Post;
  pnlBancoInformacoes.Enabled := False;
  btnAddBancoInformacoes.SetFocus;

  dmGeral.CAD_CD_C_CLI_BCO.locate('ID_BANCO_INFO',bancoInformacoes,[]);
end;

procedure TCAD_FM_C_CLI.txtObservacaoExit(Sender: TObject);
var
  reclamacao: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        Exit;
     end;

  if dpkDataRegistro.Focused then
     begin
       Abort;
     end;

  reclamacao := dmGeral.CAD_CD_C_CLI_REC.FieldByName('ID_RECLAMACAO').AsString;

  dmGeral.CAD_CD_C_CLI_REC.Post;
  pnlReclamacoes.Enabled := False;
  btnAddReclamacoes.SetFocus;

  dmGeral.CAD_CD_C_CLI_REC.locate('ID_RECLAMACAO',reclamacao,[]);
end;

procedure TCAD_FM_C_CLI.txtObservacaoInformacoesExit(Sender: TObject);
var
  id_sequencia: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        Exit;
     end;

  if cbbTipoInformacoes.Focused or cbxAtrasaInformacoes.Focused or
     txtResponsavelInformacoes.Focused or txtMaiorCompraInformacoes.Focused or txtLimiteInformacoes.Focused or
     txtVlrUltCmp.Focused or txtDtaUltCmp.Focused or txtDtaMaiorCmp.Focused then
     begin
       Abort;
     end;

  id_sequencia := dmGeral.CAD_CD_C_CLI_INF.FieldByName('id_sequencia').AsString;
  dmGeral.CAD_CD_C_CLI_INF.Post;
  pnlContatos.Enabled := False;
  btnAddInformacoes.SetFocus;
  dmGeral.CAD_CD_C_CLI_INF.locate('id_sequencia',id_sequencia,[]);
end;

procedure TCAD_FM_C_CLI.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCAD_FM_C_CLI.txtPlacaButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_VEI := TPSQ_FM_X_VEI.Create(Self);
  PSQ_FM_X_VEI.ShowModal;
  if not PSQ_FM_X_VEI.BUS_CD_C_VEI.IsEmpty then
     begin
        dmGeral.CAD_CD_C_CLI_VEI.FieldByName('id_veiculo').Text :=
                PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('id_veiculo').AsString;
        dmGeral.CAD_CD_C_CLI_VEI.FieldByName('int_placa').Text :=
                trim(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('id_placa').AsString);
        dmGeral.CAD_CD_C_CLI_VEI.FieldByName('int_descricao').Text :=
                trim(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('descricao').AsString);
     end;
   PSQ_FM_X_VEI.BUS_CD_C_VEI.Close;
   PSQ_FM_X_VEI.Free;
end;

procedure TCAD_FM_C_CLI.txtPlacaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  DmGeral.CAD_CD_C_CLI_VEI.FieldByName('id_veiculo').Text := '';
  dmGeral.CAD_CD_C_CLI_VEI.FieldByName('int_descricao').Text := '';

  if (trim(txtPlaca.Text) = '') then
    begin
      ShowMessage('O campo "Placa" deve ser preenchido.');
      txtPlaca.SetFocus;
      exit;
    end;

  dmGeral.BusVeiculo(3,trim(txtPlaca.Text));
  if dmGeral.BUS_CD_C_VEI.IsEmpty then
     begin
       ShowMessage('Placa não encontrado.');
       txtPlaca.SetFocus;
       Exit;
     end;
  if (dmGeral.BUS_CD_C_VEI.FieldByName('TIPO').AsInteger <> 0) then
    begin
       ShowMessage('Tem que ser do tipo veículo.');
       txtPlaca.SetFocus;
       Exit;
    end;

  dmGeral.CAD_CD_C_CLI_VEI.Cancel;
  if dmGeral.CAD_CD_C_CLI_VEI.Locate('ID_VEICULO',dmGeral.BUS_CD_C_VEI.FieldByName('ID_VEICULO').AsString,[]) then
    begin
     ShowMessage('Veículo já foi selecionado.');
     dmGeral.CAD_CD_C_CLI_VEI.Insert;
     txtPlaca.SetFocus;
    end
  else
    begin
       dmGeral.CAD_CD_C_CLI_VEI.Insert;
       dmGeral.CAD_CD_C_CLI_VEI.FieldByName('id_veiculo').AsInteger := dmGeral.BUS_CD_C_VEI.FieldByName('ID_VEICULO').AsInteger;
       dmGeral.CAD_CD_C_CLI_VEI.FieldByName('int_placa').Text := dmGeral.BUS_CD_C_VEI.FieldByName('ID_PLACA').AsString;
       dmGeral.CAD_CD_C_CLI_VEI.FieldByName('int_descricao').Text := dmGeral.BUS_CD_C_VEI.FieldByName('DESCRICAO').AsString;
       dmGeral.CAD_CD_C_CLI_VEI.Post;
    end;


end;

procedure TCAD_FM_C_CLI.txtPrazoDiasExit(Sender: TObject);
var
  id_sequencia: string;
  SMPrincipal : TSMClient;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
        Exit;
     end;

  if  ((dmGeral.CAD_CD_C_CLI_PRD.FieldBYName('DIAS').AsString = '') or
      (dmGeral.CAD_CD_C_CLI_PRD.FieldBYName('DIAS').AsInteger <= 0)) then
    begin
      ShowMessage('Nº dias tem que ser maior que zero.');
      txtPrazoDias.Text := '';
      txtPrazoDias.SetFocus;
      exit;
    end;

   //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.CAD_CD_C_CLI_PRD.FieldByName('ID_SEQUENCIA').AsInteger :=
         SMPrincipal.enValorChave('CAD_TB_C_CLI_PRD');
  finally
    FreeAndNil(SMPrincipal);
  end;

  id_sequencia := dmGeral.CAD_CD_C_CLI_PRD.FieldByName('ID_SEQUENCIA').AsString;
  dmGeral.CAD_CD_C_CLI_PRD.Post;
  dmGeral.CAD_CD_C_CLI_PRD.IndexFieldNames := 'DIAS';
  pnlPrazoCompra.Enabled := False;
  btnAddDiasPrazo.SetFocus;
  dmGeral.CAD_CD_C_CLI_PRD.locate('ID_SEQUENCIA',id_sequencia,[]);
end;

procedure TCAD_FM_C_CLI.dgArIButtonClick(Sender: TObject);
begin
  inherited;
   try
     dgArIButton.Enabled := False;
     if dmGeral.CAD_CD_C_CLI_PRO.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_CLI_PRO.Delete;
   //  dmGeral.CAD_CD_C_CLI_PRO.Edit;
  finally
    dgArIButton.Enabled := True;
  end;
end;

end.
