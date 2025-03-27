unit CAD_UN_C_PAR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvExMask, JvToolEdit, JvDBControls, vcl.wwdblook, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, Vcl.ComCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, ACBrNFe, JvExExtCtrls, JvExtComponent,
  JvPanel, vcl.Wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, ACBrBase, ACBrDFe, ACBrNFSe, JvEdit, JvValidateEdit,
  Datasnap.DBClient, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TCAD_FM_C_PAR = class(TPAD_FM_X_PAD)
    dsoCTR: TwwDataSource;
    txtCodigo: TDBEdit;
    lblRazaoSocial: TLabel;
    txtRazaoSocial: TDBEdit;
    Label1: TLabel;
    lblFantasia: TLabel;
    txtFantasia: TDBEdit;
    lblEndereco: TLabel;
    txtEndereco: TDBEdit;
    lblNumero: TLabel;
    txtNumero: TDBEdit;
    lblComplemento: TLabel;
    txtComplemento: TDBEdit;
    lblBairro: TLabel;
    txtBairro: TDBEdit;
    lblCEP: TLabel;
    txtCEP: TDBEdit;
    lblCidade: TLabel;
    txtCidade: TJvDBComboEdit;
    txtCidadeDescricao: TDBText;
    lblTelefone: TLabel;
    txtTelefone: TDBEdit;
    lblFax: TLabel;
    txtFax: TDBEdit;
    lblEmail: TLabel;
    txtEmail: TDBEdit;
    lblSite: TLabel;
    txtSite: TDBEdit;
    lblAtividade: TLabel;
    Label3: TLabel;
    txtCNPJ: TDBEdit;
    lblInscEstadual: TLabel;
    txtInscEstadual: TDBEdit;
    lblJunta: TLabel;
    txtJunta: TDBEdit;
    lblInscMunicipal: TLabel;
    txtInscMunicipal: TDBEdit;
    lblSuframa: TLabel;
    txtSuframa: TDBEdit;
    tabFilhos: TPageControl;
    tbiResponsaveis: TTabSheet;
    tbiControle: TTabSheet;
    tbiNFe: TTabSheet;
    tbiProducao: TTabSheet;
    tbiSEF: TTabSheet;
    lblResponsavel: TLabel;
    txtResponsavel: TDBEdit;
    lblQualificacao: TLabel;
    txtQualificacao: TDBEdit;
    lblCPFResponsavel: TLabel;
    txtCPFResponsavel: TDBEdit;
    lblEnderecoResponsavel: TLabel;
    txtEnderecoResponsavel: TDBEdit;
    lblNumeroResponsavel: TLabel;
    txtNumeroResponsavel: TDBEdit;
    lblComplementoResponsavel: TLabel;
    txtComplementoResponsavel: TDBEdit;
    lblCidadeResponsavel: TLabel;
    txtCidadeResponsavelDescricao: TDBText;
    lblBairroResponsavel: TLabel;
    txtBairroResponsavel: TDBEdit;
    lblCEPResponsavel: TLabel;
    txtCEPResponsavel: TDBEdit;
    lblTelefoneResponsavel: TLabel;
    txtTelefoneResponsavel: TDBEdit;
    lblFaxResponsavel: TLabel;
    txtFaxResponsavel: TDBEdit;
    lblEmailResponsavel: TLabel;
    txtEmailResponsavel: TDBEdit;
    txtContador: TDBEdit;
    lblContador: TLabel;
    lblCidadeContador: TLabel;
    txtCidadeContador: TJvDBComboEdit;
    txtCidadeContadorDescricao: TDBText;
    lblTelefoneContador: TLabel;
    txtTelefoneContador: TDBEdit;
    txtFaxContador: TDBEdit;
    lblFaxContador: TLabel;
    lblQualificacaoContador: TLabel;
    txtQualificacaoContador: TDBEdit;
    txtCPFContador: TDBEdit;
    lblCPFContador: TLabel;
    txtCRC: TDBEdit;
    lblCRC: TLabel;
    lblNumeroContador: TLabel;
    txtNumeroContador: TDBEdit;
    lblComplementoContador: TLabel;
    txtComplementoContador: TDBEdit;
    lblCEPContador: TLabel;
    txtCEPContador: TDBEdit;
    lblBairroContador: TLabel;
    txtBairroContador: TDBEdit;
    lblEnderecoContador: TLabel;
    txtEnderecoContador: TDBEdit;
    lblEmailContador: TLabel;
    txtEmailContador: TDBEdit;
    tbiEDoc: TTabSheet;
    tbiSPEDFiscal: TTabSheet;
    tbiSPEDContribuicoes: TTabSheet;
    tbiEstoque: TTabSheet;
    lblContagemEstoque: TLabel;
    lblTipoEstoqueEntrada: TLabel;
    cbbTipoEstoqueEntrada: TwwDBLookupCombo;
    lblTipoEstoqueSaida: TLabel;
    cbbTipoEstoqueSaida: TwwDBLookupCombo;
    Label2: TLabel;
    lblEscrituracao: TLabel;
    lblSituacaoEspecial: TLabel;
    lblNaturezaPJuridica: TLabel;
    lblCriterioEscrituracao: TLabel;
    lblTipoContribuicao: TLabel;
    lblMetodoApropriacao: TLabel;
    lblAtividadePreponderante: TLabel;
    lblLayoutSPEDFiscal: TLabel;
    lblFinalidade: TLabel;
    lblPerfil: TLabel;
    lblAtividadeSPEDFiscal: TLabel;
    lblFinalidadeSef: TLabel;
    lblConteudoArquivoSef: TLabel;
    lblEntradaDadosSef: TLabel;
    lblExijeImpDocumentosSef: TLabel;
    lblExijeEscrituracaoICMSSef: TLabel;
    lblExijeEscrituracaoISSSef: TLabel;
    lblDocumentoContidoSef: TLabel;
    lblExijeLivroCombustivelSef: TLabel;
    lblExijeUtilDocumentosSef: TLabel;
    lblExijeRegDocumentosSef: TLabel;
    lblExijeRegInventarioSef: TLabel;
    lblApresentaEscContabilSef: TLabel;
    lblOperacaoSujeitaISSSef: TLabel;
    lblOperacaoSujeitaAntecipacaoSef: TLabel;
    lblOperacaoSujeitaSTSef: TLabel;
    lblOperacaoSujeitaICMSSef: TLabel;
    lblRetencaoISSSubsSef: TLabel;
    lblApresentaAvulsaRISef: TLabel;
    lblOperacaoSujeitaIPISef: TLabel;
    txtUF: TDBText;
    cbbRamo: TwwDBLookupCombo;
    dsoNFE: TwwDataSource;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    txtLayoutDoc: TDBEdit;
    txtLayout: TDBEdit;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    tbiOficina: TTabSheet;
    dsoCPG: TwwDataSource;
    ScrollBox1: TScrollBox;
    lblTipoImpressao: TLabel;
    lblTipoEmissao: TLabel;
    lblSituacaoEmissao: TLabel;
    lblPathXML: TLabel;
    lblPathLogotipo: TLabel;
    lblJustificativaContig: TLabel;
    lblDataContingencia: TLabel;
    txtPathXML: TDBEdit;
    txtPathLogotipo: TDBEdit;
    txtJustificativaContig: TDBEdit;
    dpkDataContingencia: TJvDBDateEdit;
    gbServidor: TGroupBox;
    lblServidorSMTP: TLabel;
    lblPorta: TLabel;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    txtServidorSMTP: TDBEdit;
    txtPorta: TDBEdit;
    chbSeguro: TDBCheckBox;
    txtUsuario: TDBEdit;
    txtSenha: TDBEdit;
    gbItens: TGroupBox;
    pnParSer: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    txtTipoSerieNfe: TwwDBEdit;
    txtSequencia: TwwDBEdit;
    grdParSer: TwwDBGrid;
    grdParSerIButton: TwwIButton;
    btn_Add_Ser: TBitBtn;
    dsoSer: TwwDataSource;
    cbbTipoEmissao: TwwDBComboBox;
    cbbTipoImpressao: TwwDBComboBox;
    cbbSituacaoEmissao: TwwDBComboBox;
    Label29: TLabel;
    txtSerie: TDBEdit;
    chbUsaNroDifNfeDev: TDBCheckBox;
    Label30: TLabel;
    tbiFinanceiro: TTabSheet;
    ScrollBox3: TScrollBox;
    lblControleCaixa: TLabel;
    gbCxaSuprimento: TGroupBox;
    lblPlanoContas: TLabel;
    lblTipoFinanceiro: TLabel;
    cbbPlanoContasSup: TwwDBLookupCombo;
    cbbTipoFinanceiroSup: TwwDBLookupCombo;
    gbCxaSangria: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    cbbPlanoContasSang: TwwDBLookupCombo;
    cbbTipoFinanceiroSang: TwwDBLookupCombo;
    cbbPlanoContasSangCred: TwwDBLookupCombo;
    cbbTipoFinanceiroSangCred: TwwDBLookupCombo;
    Label39: TLabel;
    Label40: TLabel;
    lblNotaFiscalDevVendas: TLabel;
    gbGerNotaCre: TGroupBox;
    lblCondPag: TLabel;
    lblFormaPag: TLabel;
    cbbFinanCondPag: TwwDBLookupCombo;
    cbbFinanFormaPag: TwwDBLookupCombo;
    gbPeqDespesas: TGroupBox;
    txtFornecedor: TJvDBComboEdit;
    lblfornecedor: TLabel;
    cbbFormPag: TwwDBLookupCombo;
    cbbCusto: TwwDBLookupCombo;
    cbbTipoFin: TwwDBLookupCombo;
    cbbLocalTit: TwwDBLookupCombo;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    txtDescFornecedor: TDBText;
    NFE: TACBrNFe;
    chbInfValDadosCheque: TDBCheckBox;
    lblDevForCondPag: TLabel;
    cbbDevForCondPag: TwwDBLookupCombo;
    lblNotaFiscalDevFor: TLabel;
    lblNfeOriginadaCupomFiscal: TLabel;
    cbbNfeCupomFiscalCondPag: TwwDBLookupCombo;
    Label47: TLabel;
    cbbNfeCupomFiscalTipoMovEstoque: TwwDBLookupCombo;
    Label48: TLabel;
    DBCheckBox1: TDBCheckBox;
    lblTipoFinanceiroFormaPagCredito: TLabel;
    GroupBox3: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    cbbTipoCredito: TwwDBLookupCombo;
    cbbTipoDebito: TwwDBLookupCombo;
    GroupBox4: TGroupBox;
    cbbPlanoContasSemFluxo: TwwDBLookupCombo;
    ScrollBox4: TScrollBox;
    lblMargemLucro: TLabel;
    lblPerDespAdm: TLabel;
    lblPerIcmsInterno: TLabel;
    lclPerIss: TLabel;
    lblPerCssl: TLabel;
    lblPerIR: TLabel;
    lblPerCofins: TLabel;
    lblPerPis: TLabel;
    lblPerJurosMensal: TLabel;
    lblAliquotasTaxas: TLabel;
    lblPedidoVenda: TLabel;
    lblPerDescontoPermitido: TLabel;
    Label26: TLabel;
    lblControle: TLabel;
    lblDataSaldoEstoque: TLabel;
    lblMesAno: TLabel;
    lblDiasProtesto: TLabel;
    txtMargemLucro: TDBEdit;
    txtPerDespFixa: TDBEdit;
    txtPerIcmsInterno: TDBEdit;
    txtPerIss: TDBEdit;
    txtPerCssl: TDBEdit;
    txtPerIR: TDBEdit;
    txtPerCofinsReal: TDBEdit;
    txtPerPisReal: TDBEdit;
    txtPerJurosMensal: TDBEdit;
    chbAceitaEstoqueNegativo: TDBCheckBox;
    chbAlertaPrecoVenda: TDBCheckBox;
    chbAtivaTitulos: TDBCheckBox;
    chbVerificaLimiteCredito: TDBCheckBox;
    chbSeparaProdutoServicos: TDBCheckBox;
    txtPerDescontoPermitido: TDBEdit;
    txtPerDespVarialvel: TDBEdit;
    txtDataSaldoEstoque: TDBEdit;
    txtMes: TDBEdit;
    txtAno: TDBEdit;
    txtDiasProtesto: TDBEdit;
    gbAlmoxarifado: TGroupBox;
    lblAlmoxarifadoPadrao: TLabel;
    chbUtilizaAlmoxarifado: TDBCheckBox;
    txtAlmoxarifadoPadrao: TDBEdit;
    gbPerfil: TGroupBox;
    lblPerCorrecaoPAPrazo: TLabel;
    chbFazCorrecaoPrecoPerfil: TDBCheckBox;
    txtPerCorrecaoPAPrazo: TDBEdit;
    chbAtivaUtilizacaoCor: TDBCheckBox;
    Label49: TLabel;
    txtPerPisPresumido: TDBEdit;
    Label50: TLabel;
    txtPerCofinsPresumido: TDBEdit;
    chbAtivaUtilizacaoTam: TDBCheckBox;
    cbbSef_Cod_Fin: TwwDBLookupCombo;
    cbbSef_Cod_Ctd: TwwDBLookupCombo;
    cbbSef_ind_ed: TwwDBLookupCombo;
    cbbSef_ind_arq: TwwDBLookupCombo;
    cbbSef_Prf_Iss: TwwDBLookupCombo;
    cbbSef_prf_icms: TwwDBLookupCombo;
    cbbSef_prf_ridf: TwwDBLookupCombo;
    cbbSef_prf_rv: TwwDBLookupCombo;
    cbbSef_prf_ri: TwwDBLookupCombo;
    cbbSef_ind_ec: TwwDBLookupCombo;
    cbbSef_ind_iss: TwwDBLookupCombo;
    cbbSef_ind_rt: TwwDBLookupCombo;
    cbbSef_ind_icms: TwwDBLookupCombo;
    cbbSef_ind_st: TwwDBLookupCombo;
    cbbSef_ind_at: TwwDBLookupCombo;
    cbbSef_prf_lmc: TwwDBLookupCombo;
    cbbSef_prf_rudf: TwwDBLookupCombo;
    cbbSef_ind_ri: TwwDBLookupCombo;
    cbbSef_ind_ipi: TwwDBLookupCombo;
    dbchInfNroLoteCar: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    Label51: TLabel;
    gbMovCheTipoFinan: TGroupBox;
    Label52: TLabel;
    gbMovChePlano: TGroupBox;
    cbbMovCheTipoFinanDep: TwwDBLookupCombo;
    cbbMovCheTipoFinanDev: TwwDBLookupCombo;
    cbbMovCheTipoFinanPPR: TwwDBLookupCombo;
    cbbMovChePlanoDep: TwwDBLookupCombo;
    cbbMovChePlanoDev: TwwDBLookupCombo;
    cbbMovChePlanoPPR: TwwDBLookupCombo;
    lblMovCheTipoFinanDep: TLabel;
    lblMovCheTipoFinanDev: TLabel;
    lblMovCheTipoFinanPPR: TLabel;
    lblMovChePlanoDep: TLabel;
    lblMovChePlanoDev: TLabel;
    lblMovChePlanoPagRec: TLabel;
    cbbMovCheFormaPag: TwwDBLookupCombo;
    lblMovCheFormaPag: TLabel;
    txtCidadeResponsavel: TJvDBComboEdit;
    cbbIncidenciaTributaria: TwwDBComboBox;
    Label54: TLabel;
    cbbMotivoInventario: TwwDBComboBox;
    Label55: TLabel;
    cbbFinalidade: TwwDBComboBox;
    cbbPerfil: TwwDBComboBox;
    cbbatividade: TwwDBComboBox;
    cbbescrituracao: TwwDBComboBox;
    cbbSituacaoEspecial: TwwDBComboBox;
    cbbAtividadePrepo: TwwDBComboBox;
    cbbNaturezaJuridica: TwwDBComboBox;
    cbbTipoAtrib: TwwDBComboBox;
    cbbMetodoApro: TwwDBComboBox;
    cbbCriterioEsc: TwwDBComboBox;
    Label56: TLabel;
    DBCheckBox2: TDBCheckBox;
    Label57: TLabel;
    cbbMaquinetaPadrao: TwwDBLookupCombo;
    lblOrvFormaPagNotaCre: TLabel;
    tbiMDF: TTabSheet;
    Label58: TLabel;
    cbbTipoEmiMfd: TwwDBComboBox;
    Label59: TLabel;
    cbbTipoEmitente: TwwDBComboBox;
    chbEnviaPedCarga: TDBCheckBox;
    Label60: TLabel;
    txtIdToken: TwwDBEdit;
    Label61: TLabel;
    Label62: TLabel;
    txtCSC: TwwDBEdit;
    Label63: TLabel;
    txtLotRPS: TwwDBEdit;
    lblNumLotRPS: TLabel;
    cbbRet: TwwDBComboBox;
    lblRet: TLabel;
    txtCodItemListaSer: TwwDBEdit;
    txtCodTriMcp: TwwDBEdit;
    lblCodItemSer: TLabel;
    lblCodTriMcp: TLabel;
    odPesqCertRPS: TOpenDialog;
    NFSe: TACBrNFSe;
    Label64: TLabel;
    txtPerImcsSaida: TDBEdit;
    Label65: TLabel;
    txtPartilhaDest: TDBEdit;
    txtPartilhaOrig: TDBEdit;
    Label66: TLabel;
    Label67: TLabel;
    txtCNPJContabilidade: TDBEdit;
    gbPlanoContas: TGroupBox;
    lblBaixaCartaoCredito: TLabel;
    cbbBcrPlano: TwwDBLookupCombo;
    lblBcrPlano: TLabel;
    cbbBcrPlanoDesc: TwwDBLookupCombo;
    lblPlanoDescOper: TLabel;
    cbbBcrPlanoDescAnt: TwwDBLookupCombo;
    lblBcrPlanoDescAntec: TLabel;
    gbTipoFinanceiro: TGroupBox;
    cbbBcrTipoFinanceiro: TwwDBLookupCombo;
    lblBcrTipoFinanceiro: TLabel;
    cbbBcrTipoFinanDesc: TwwDBLookupCombo;
    lblTipoFinanDesc: TLabel;
    lblBaixaAutBol: TLabel;
    cbbBxaAutBolTipoFinan: TwwDBLookupCombo;
    lblBxaAutBolTipoFinanceiro: TLabel;
    cbbBxaAutBolPlanoContas: TwwDBLookupCombo;
    lblBxaAutBolPlano: TLabel;
    cbbBxaAutBolCentroCusto: TwwDBLookupCombo;
    lblBxaAutBolCentroCusto: TLabel;
    cbbBxaAutBolFormaPag: TwwDBLookupCombo;
    lblBxaAutBolFormaPag: TLabel;
    ScrollBox2: TScrollBox;
    gbParamPreco: TGroupBox;
    pnlParametrizacao: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    txtAjuPer: TwwDBEdit;
    cbbCondicaoCpgPrc: TwwDBLookupCombo;
    btn_Add_Prc: TBitBtn;
    grdParamPreco: TwwDBGrid;
    grdCodIButton: TwwIButton;
    chkUtilizaNumLote: TDBCheckBox;
    chkAtivaProducao: TDBCheckBox;
    Label24: TLabel;
    cbbCodLme: TwwDBLookupCombo;
    Label25: TLabel;
    txtEtqtec: TJvDBComboEdit;
    DBText1: TDBText;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    GroupBox2: TGroupBox;
    txtDiasPrevUfDentro: TwwDBEdit;
    txtPrevDiasUfFora: TwwDBEdit;
    Label73: TLabel;
    Label74: TLabel;
    tbiDestda: TTabSheet;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    JvDBComboBox2: TJvDBComboBox;
    JvDBComboBox3: TJvDBComboBox;
    JvDBComboBox4: TJvDBComboBox;
    JvDBComboBox5: TJvDBComboBox;
    JvDBComboBox6: TJvDBComboBox;
    JvDBComboBox7: TJvDBComboBox;
    JvDBComboBox8: TJvDBComboBox;
    JvDBComboBox9: TJvDBComboBox;
    JvDBComboBox10: TJvDBComboBox;
    JvDBComboBox11: TJvDBComboBox;
    JvDBComboBox12: TJvDBComboBox;
    JvDBComboBox13: TJvDBComboBox;
    JvDBComboBox14: TJvDBComboBox;
    JvDBComboBox15: TJvDBComboBox;
    JvDBComboBox16: TJvDBComboBox;
    JvDBComboBox17: TJvDBComboBox;
    JvDBComboBox18: TJvDBComboBox;
    GroupBox5: TGroupBox;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    txtFornecedorMovBan: TJvDBComboEdit;
    txtDescForMovBan: TEdit;
    Label96: TLabel;
    cbbCFCondPag: TwwDBLookupCombo;
    cbbCFTipoMovEst: TwwDBLookupCombo;
    Label97: TLabel;
    Label98: TLabel;
    cbbPedCupomImp: TwwDBComboBox;
    cbbFinalidadeDoc: TwwDBComboBox;
    cbbConteudoDoc: TwwDBComboBox;
    cbbEntradaDoc: TwwDBComboBox;
    cbbIssDoc: TwwDBComboBox;
    cbbDocumetoDoc: TwwDBComboBox;
    cbbImpressDoc: TwwDBComboBox;
    cbbIcmsDoc: TwwDBComboBox;
    cbblivroDoc: TwwDBComboBox;
    cbbUtilDoc: TwwDBComboBox;
    cbbiventarioDoc: TwwDBComboBox;
    cbbVeiculoDoc: TwwDBComboBox;
    cbbSujIssDoc: TwwDBComboBox;
    cbbApresentacaoDoc: TwwDBComboBox;
    cbbsujicmsDoc: TwwDBComboBox;
    cbbretIssDoc: TwwDBComboBox;
    cbbOperAntDoc: TwwDBComboBox;
    cbbOperStDoc: TwwDBComboBox;
    cbbApreRiDoc: TwwDBComboBox;
    cbbOperIpiDoc: TwwDBComboBox;
    GroupBox6: TGroupBox;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    cbbRCRTipoFinanceiro: TwwDBLookupCombo;
    cbbRCRPlanoContas: TwwDBLookupCombo;
    gbBxaNEmpresa: TGroupBox;
    chkBxaNEmpresa: TDBCheckBox;
    dsoBxp: TwwDataSource;
    grdBxaNEmp: TwwDBGrid;
    Label102: TLabel;
    chkRcrCriFomaPag: TDBCheckBox;
    tbiFaturamento: TTabSheet;
    ScrollBox5: TScrollBox;
    Label103: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    txtPerCusFixSobVenMen: TwwDBEdit;
    txtPerIcmsSobVen: TwwDBEdit;
    txtPerSimples: TwwDBEdit;
    txtPerComiss: TwwDBEdit;
    txtPerFretSobVen: TwwDBEdit;
    txtPerCusFinSobVen: TwwDBEdit;
    Label104: TLabel;
    wwDBEdit1: TwwDBEdit;
    ckbTSL: TDBCheckBox;
    chbSSL: TDBCheckBox;
    chbAssoAcavasf: TDBCheckBox;
    cbbControleTipoImp: TwwDBComboBox;
    lblControleTipoImp: TLabel;
    chbCorrPrecoPrazo: TDBCheckBox;
    chbImprimeDupAceite: TDBCheckBox;
    GroupBox7: TGroupBox;
    txtClienteConsumidor: TDBEdit;
    lblClienteConsumidor: TLabel;
    txtPedVendaMax: TwwDBEdit;
    Label105: TLabel;
    Label112: TLabel;
    GroupBox8: TGroupBox;
    Label113: TLabel;
    cbbTifDebCancNfeAnt: TwwDBLookupCombo;
    GroupBox9: TGroupBox;
    Label114: TLabel;
    cbbPctDespCancNfeAnt: TwwDBLookupCombo;
    Label115: TLabel;
    GroupBox10: TGroupBox;
    Label116: TLabel;
    cbbMovAlmTransEnt: TwwDBLookupCombo;
    Label117: TLabel;
    gbTmeEntIteOp: TGroupBox;
    Label119: TLabel;
    cbbTipoMovEstEntOP: TwwDBLookupCombo;
    GroupBox11: TGroupBox;
    Label118: TLabel;
    txtLocalRemessa: TDBEdit;
    Label120: TLabel;
    chbHierarquiaFpg: TDBCheckBox;
    TabSheet1: TTabSheet;
    lblCumprimentoPrazo: TLabel;
    lblConformidadePreco: TLabel;
    lblConformidadeQuantidade: TLabel;
    lblPreenchimentoNotaFiscal: TLabel;
    lblMaterialConforme: TLabel;
    lblProdutosForaPrazo: TLabel;
    lblintegridadeEmbalagens: TLabel;
    txtcriterio_01: TDBEdit;
    txtcriterio_02: TDBEdit;
    tctcriterio_03: TDBEdit;
    txtcriterio_04: TDBEdit;
    txtcriterio_05: TDBEdit;
    txtcriterio_06: TDBEdit;
    txtcriterio_07: TDBEdit;
    Label121: TLabel;
    chbAtivaIteConj: TDBCheckBox;
    txtPathXmlOutros: TDBEdit;
    Label122: TLabel;
    chbPedFrete: TDBCheckBox;
    tsRestrPed: TTabSheet;
    dsoRstPed: TwwDataSource;
    grdRst: TwwDBGrid;
    Label123: TLabel;
    cbbTipoRst: TwwDBComboBox;
    chbUtilizaMecanico: TDBCheckBox;
    chbPrcFilial: TDBCheckBox;
    gbBxaRecNEmpresa: TGroupBox;
    grdBxaRecNEmp: TwwDBGrid;
    chkBxaRecNEmpresa: TDBCheckBox;
    Label127: TLabel;
    Label132: TLabel;
    GroupBox16: TGroupBox;
    Label130: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    cbbFinanConFormaPagPag: TwwDBLookupCombo;
    cbbFinanConTipoFinPag: TwwDBLookupCombo;
    cbbFinanConLocalTitPag: TwwDBLookupCombo;
    cbbFinanConCustoPag: TwwDBLookupCombo;
    GroupBox15: TGroupBox;
    Label128: TLabel;
    Label129: TLabel;
    Label131: TLabel;
    cbbFinanConFormaPag: TwwDBLookupCombo;
    cbbFinanConTipoFin: TwwDBLookupCombo;
    cbbFinanConLocalTit: TwwDBLookupCombo;
    dbchCalcIcmDispensado: TDBCheckBox;
    TabSheet2: TTabSheet;
    Label136: TLabel;
    cbbTipoMovEstVenda: TwwDBLookupCombo;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    txtQtdeUltMesesVend: TwwDBEdit;
    GroupBox14: TGroupBox;
    Label140: TLabel;
    cbbDesTitPlano: TwwDBLookupCombo;
    lblPlanoTaxaDesc: TLabel;
    cbbDescTitPlanoTaxaDesc: TwwDBLookupCombo;
    Label141: TLabel;
    cbbDescTitTif: TwwDBLookupCombo;
    Label142: TLabel;
    cbbDescTitTifTaxaDesc: TwwDBLookupCombo;
    GroupBox17: TGroupBox;
    cbbDescTitFpgBxa: TwwDBLookupCombo;
    Label143: TLabel;
    GroupBox18: TGroupBox;
    cbbDescTitPlanoCanc: TwwDBLookupCombo;
    Label144: TLabel;
    Label145: TLabel;
    cbbDescTitTifCanc: TwwDBLookupCombo;
    lblBanco: TLabel;
    txtBanco: TDBEdit;
    lblAgencia: TLabel;
    txtAgencia: TDBEdit;
    txtAgeDig: TDBEdit;
    lblConta: TLabel;
    txtConta: TwwDBEdit;
    txtContaDig: TwwDBEdit;
    GroupBox19: TGroupBox;
    Label146: TLabel;
    cbbFpgRcrPed: TwwDBLookupCombo;
    txtLayoutSPEDFiscal: TwwDBEdit;
    chkBaixaRecNTitulos: TDBCheckBox;
    txtPrefeitura: TwwDBEdit;
    cbbNatOpr: TwwDBComboBox;
    Label147: TLabel;
    Label148: TLabel;
    txtCodCnae: TwwDBEdit;
    Label149: TLabel;
    chbInformarCaixaNfe: TDBCheckBox;
    Label150: TLabel;
    Label151: TLabel;
    cbbNfeTipoFinanceiro: TwwDBLookupCombo;
    Label152: TLabel;
    Label153: TLabel;
    txtLatitude: TDBEdit;
    txtLongitude: TDBEdit;
    chkPermSalvXMLNfe: TDBCheckBox;
    btnLocalizacao: TSpeedButton;
    Label155: TLabel;
    txtPercLimDescEspec: TwwDBEdit;
    Label156: TLabel;
    DBCheckBox6: TDBCheckBox;
    gbComissaoRep: TGroupBox;
    txtComissaoMax: TwwDBEdit;
    lblComissaoMax: TLabel;
    cbbTipoComissao: TwwDBComboBox;
    lblTipoComissao: TLabel;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    chbPermitirChqNfce: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    Label157: TLabel;
    cbbTipoData: TwwDBComboBox;
    Label158: TLabel;
    Label159: TLabel;
    chbNatOpeComp: TDBCheckBox;
    Label160: TLabel;
    txtNatOprNotaComp: TwwDBEdit;
    DBCheckBox11: TDBCheckBox;
    wwDBEdit2: TwwDBEdit;
    Label161: TLabel;
    DBCheckBox12: TDBCheckBox;
    ScrollBox6: TScrollBox;
    GroupBox13: TGroupBox;
    Label126: TLabel;
    cbbDevCliTme: TwwDBLookupCombo;
    GroupBox12: TGroupBox;
    Label125: TLabel;
    cbbDevForTme: TwwDBLookupCombo;
    Label124: TLabel;
    cbbTipoEstoqueOrdemServico: TwwDBLookupCombo;
    lblTipoEstoque: TLabel;
    lblAberOrdemServico: TLabel;
    GroupBox1: TGroupBox;
    Label154: TLabel;
    chbOSImpOrc: TDBCheckBox;
    chbOSInclusaoIte: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    chbImpOS: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    lblOrvNotaCre: TLabel;
    cbbOrvFormaPagNotaCre: TwwDBLookupCombo;
    GroupBox20: TGroupBox;
    cbbTipoOrdem: TwwDBLookupCombo;
    Label162: TLabel;
    chbPrcPerfil: TDBCheckBox;
    dsoBxr: TwwDataSource;
    chbIcmsDesn: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    Label163: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    wwDBComboBox2: TwwDBComboBox;
    Label165: TLabel;
    Label164: TLabel;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    gbRelEmail: TGroupBox;
    dgRelEmail: TwwDBGrid;
    pnlRelEmail: TPanel;
    btnAddEmail: TBitBtn;
    dsoEml: TwwDataSource;
    btnDelIButton: TwwIButton;
    txtRelEmail: TwwDBEdit;
    Label166: TLabel;
    chbEnviarRel: TDBCheckBox;
    cbbDanfeCodItem: TwwDBComboBox;
    Label167: TLabel;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    GroupBox21: TGroupBox;
    DBCheckBox23: TDBCheckBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label168: TLabel;
    DBCheckBox24: TDBCheckBox;
    Label169: TLabel;
    DBCheckBox25: TDBCheckBox;
    GroupBox22: TGroupBox;
    DBCheckBox26: TDBCheckBox;
    wwDBComboBox3: TwwDBComboBox;
    Label170: TLabel;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    Label171: TLabel;
    SSLLib: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Label174: TLabel;
    cbbSSLLib: TwwDBComboBox;
    cbbCriptLib: TwwDBComboBox;
    cbbHttpLib: TwwDBComboBox;
    cbbXMLSignLib: TwwDBComboBox;
    Label175: TLabel;
    cbbVersaoNFe: TwwDBComboBox;
    gbComCapicom: TGroupBox;
    lblSerieCertificado: TLabel;
    txtSerieCertificado: TDBEdit;
    gbComOpenSSL: TGroupBox;
    Label176: TLabel;
    txtSenhaPFX: TDBEdit;
    opPathPfx: TOpenDialog;
    sbtnGetCert: TSpeedButton;
    Label177: TLabel;
    txtPathPFX: TDBEdit;
    btnPathPFX: TSpeedButton;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    Label178: TLabel;
    cbbAlmPadEntEpp: TwwDBLookupCombo;
    GroupBox23: TGroupBox;
    Label179: TLabel;
    cbbCpaTipoMovEstEnt: TwwDBLookupCombo;
    Label180: TLabel;
    BUS_CD_C_TME_EXP4: TClientDataSet;
    BUS_CD_C_TME_EXP4descricao: TWideStringField;
    BUS_CD_C_TME_EXP4id_tipo_mov_estoque: TIntegerField;
    BUS_CD_C_TME_EXP4tipo_movimento: TIntegerField;
    BUS_CD_C_TME_EXP4ativo: TBooleanField;
    BUS_CD_C_TME_EXP4esto_critica: TBooleanField;
    BUS_CD_C_TME_EXP4esto_movimenta: TBooleanField;
    BUS_CD_C_TME_EXP4cfo_interno_pf: TWideStringField;
    BUS_CD_C_TME_EXP4cfo_interno_pj: TWideStringField;
    BUS_CD_C_TME_EXP4cfo_externo_pf: TWideStringField;
    BUS_CD_C_TME_EXP4cfo_externo_pj: TWideStringField;
    BUS_CD_C_TME_EXP4indicador: TIntegerField;
    BUS_CD_C_TME_EXP4int_nomeipf: TWideStringField;
    BUS_CD_C_TME_EXP4int_nomeipj: TWideStringField;
    BUS_CD_C_TME_EXP4int_nomeepf: TWideStringField;
    BUS_CD_C_TME_EXP4int_nomeepj: TWideStringField;
    BUS_CD_C_TME_EXP4cod_lme: TWideStringField;
    BUS_CD_C_TME_EXP4rev_lme: TWideStringField;
    BUS_CD_C_TME_EXP4cfo_servico_dentro: TWideStringField;
    BUS_CD_C_TME_EXP4cfo_servico_fora: TWideStringField;
    BUS_CD_C_TME_EXP4cfo_interno_icm_s_pf: TWideStringField;
    BUS_CD_C_TME_EXP4cfo_interno_icm_s_pj: TWideStringField;
    BUS_CD_C_TME_EXP4cfo_externo_icm_s_pf: TWideStringField;
    BUS_CD_C_TME_EXP4cfo_externo_icm_s_pj: TWideStringField;
    BUS_CD_C_TME_EXP4cfo_exterior_pf: TWideStringField;
    BUS_CD_C_TME_EXP4cfo_exterior_pj: TWideStringField;
    Label181: TLabel;
    wwDBEdit3: TwwDBEdit;
    DBCheckBox35: TDBCheckBox;
    GroupBox24: TGroupBox;
    Label182: TLabel;
    cbbOpbTipoMovEstSai: TwwDBLookupCombo;
    Label183: TLabel;
    BUS_CD_C_TME_EXP5: TClientDataSet;
    Label184: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label185: TLabel;
    Label186: TLabel;
    wwDBEdit5: TwwDBEdit;
    Label187: TLabel;
    Label188: TLabel;
    Label189: TLabel;
    Label190: TLabel;
    Label191: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    BUS_CD_C_CPG_REP: TClientDataSet;
    BUS_CD_C_CPG_REPdescricao: TWideStringField;
    BUS_CD_C_CPG_REPid_condicao_pag: TIntegerField;
    BUS_CD_C_CPG_REPativo: TBooleanField;
    BUS_CD_C_CPG_REPtipo_pagamento: TIntegerField;
    BUS_CD_C_CPG_REPnum_parcelas: TIntegerField;
    BUS_CD_C_CPG_REPcod_lme: TWideStringField;
    BUS_CD_C_CPG_REPrev_lme: TWideStringField;
    BUS_CD_C_CPG_REPper_desc: TFloatField;
    BUS_CD_C_CPG_REPperm_desc_especial: TBooleanField;
    BUS_CD_C_CPG_REPsgq_texto_cnd_ped: TBooleanField;
    Label192: TLabel;
    wwDBEdit6: TwwDBEdit;
    Label194: TLabel;
    cbbPedTipoMovEstRep: TwwDBLookupCombo;
    Label193: TLabel;
    Label195: TLabel;
    wwDBEdit7: TwwDBEdit;

    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtCidadeButtonClick(Sender: TObject);
    procedure txtCidadeExit(Sender: TObject);
    procedure cbbRamoEnter(Sender: TObject);
    procedure cbbTipoEstoqueEntradaEnter(Sender: TObject);
    procedure cbbTipoEstoqueSaidaEnter(Sender: TObject);
    procedure txtCidadeContadorButtonClick(Sender: TObject);
    procedure txtCidadeContadorExit(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure tbiNFeEnter(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtEtqtecButtonClick(Sender: TObject);
    procedure txtEtqtecExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbTipoEstoqueOrdemServicoEnter(Sender: TObject);
    procedure btn_Add_PrcClick(Sender: TObject);
    procedure txtCodPagButtonClick(Sender: TObject);
    procedure grdCodIButtonClick(Sender: TObject);
    procedure txtCodPagExit(Sender: TObject);
    procedure cbbCodPagEnter(Sender: TObject);
    procedure txtAjuPerExit(Sender: TObject);
    procedure cbbCondicaoCpgPrcExit(Sender: TObject);
    procedure cbbCondicaoCpgPrcEnter(Sender: TObject);
    procedure pnlParametrizacaoExit(Sender: TObject);
    procedure grdParamPrecoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Add_SerClick(Sender: TObject);
    procedure txtSequenciaExit(Sender: TObject);
    procedure grdParSerIButtonClick(Sender: TObject);
    procedure grdParSerMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnParSerExit(Sender: TObject);
    procedure txtTipoSerieNfeExit(Sender: TObject);
    procedure cbbTipoCreditoEnter(Sender: TObject);
    procedure cbbTipoDebitoEnter(Sender: TObject);
    procedure cbbPlanoContasSemFluxoEnter(Sender: TObject);
    procedure cbbPlanoContasSupEnter(Sender: TObject);
    procedure cbbTipoFinanceiroSupEnter(Sender: TObject);
    procedure cbbPlanoContasSangEnter(Sender: TObject);
    procedure cbbTipoFinanceiroSangEnter(Sender: TObject);
    procedure cbbPlanoContasSangCredEnter(Sender: TObject);
    procedure cbbTipoFinanceiroSangCredEnter(Sender: TObject);
    procedure cbbFinanCondPagEnter(Sender: TObject);
    procedure cbbFinanFormaPagEnter(Sender: TObject);
    procedure txtFornecedorButtonClick(Sender: TObject);
    procedure txtFornecedorExit(Sender: TObject);
    procedure cbbTipoFinEnter(Sender: TObject);
    procedure cbbFormPagEnter(Sender: TObject);
    procedure cbbCustoEnter(Sender: TObject);
    procedure cbbLocalTitEnter(Sender: TObject);
    procedure cbbDevForCondPagEnter(Sender: TObject);
    procedure cbbNfeCupomFiscalCondPagEnter(Sender: TObject);
    procedure cbbNfeCupomFiscalTipoMovEstoqueEnter(Sender: TObject);
    procedure txtLayoutSefKeyPress(Sender: TObject; var Key: Char);
    procedure cbbSef_Cod_FinEnter(Sender: TObject);
    procedure cbbSef_Cod_CtdEnter(Sender: TObject);
    procedure cbbSef_ind_edEnter(Sender: TObject);
    procedure cbbSef_ind_arqEnter(Sender: TObject);
    procedure cbbSef_Prf_IssEnter(Sender: TObject);
    procedure cbbSef_prf_icmsEnter(Sender: TObject);
    procedure cbbSef_prf_ridfEnter(Sender: TObject);
    procedure cbbSef_prf_rudfEnter(Sender: TObject);
    procedure cbbSef_prf_lmcEnter(Sender: TObject);
    procedure cbbSef_prf_rvEnter(Sender: TObject);
    procedure cbbSef_prf_riEnter(Sender: TObject);
    procedure cbbSef_ind_ecEnter(Sender: TObject);
    procedure cbbSef_ind_issEnter(Sender: TObject);
    procedure cbbSef_ind_rtEnter(Sender: TObject);
    procedure cbbSef_ind_icmsEnter(Sender: TObject);
    procedure cbbSef_ind_stEnter(Sender: TObject);
    procedure cbbSef_ind_atEnter(Sender: TObject);
    procedure cbbSef_ind_ipiEnter(Sender: TObject);
    procedure cbbSef_ind_riEnter(Sender: TObject);
    procedure cbbMovCheTipoFinanDepEnter(Sender: TObject);
    procedure cbbMovCheTipoFinanDevEnter(Sender: TObject);
    procedure cbbMovCheTipoFinanPPREnter(Sender: TObject);
    procedure cbbMovChePlanoDepEnter(Sender: TObject);
    procedure cbbMovChePlanoDevEnter(Sender: TObject);
    procedure cbbMovChePlanoPPREnter(Sender: TObject);
    procedure cbbMovCheFormaPagEnter(Sender: TObject);
    procedure txtCidadeResponsavelButtonClick(Sender: TObject);
    procedure txtCidadeResponsavelExit(Sender: TObject);
    procedure cbbMaquinetaPadraoEnter(Sender: TObject);
    procedure cbbOrvFormaPagNotaCreEnter(Sender: TObject);
    procedure cbbFinalidadeEnter(Sender: TObject);
    procedure cbbPerfilEnter(Sender: TObject);
    procedure cbbatividadeEnter(Sender: TObject);
    procedure cbbMotivoInventarioEnter(Sender: TObject);
    procedure cbbescrituracaoEnter(Sender: TObject);
    procedure cbbSituacaoEspecialEnter(Sender: TObject);
    procedure cbbNaturezaJuridicaEnter(Sender: TObject);
    procedure cbbAtividadePrepoEnter(Sender: TObject);
    procedure cbbMetodoAproEnter(Sender: TObject);
    procedure cbbTipoAtribEnter(Sender: TObject);
    procedure cbbCriterioEscEnter(Sender: TObject);
    procedure cbbIncidenciaTributariaEnter(Sender: TObject);
    procedure cbbTipoEmiMfdEnter(Sender: TObject);
    procedure cbbTipoEmitenteEnter(Sender: TObject);
    procedure dsoStateChange(Sender: TObject);
    procedure tbiProducaoShow(Sender: TObject);
    procedure tbiSEFShow(Sender: TObject);
    procedure tbiEstoqueShow(Sender: TObject);
    procedure tbiOficinaShow(Sender: TObject);
    procedure tbiNFeShow(Sender: TObject);
    procedure tbiFinanceiroShow(Sender: TObject);
    procedure cbbBcrPlanoEnter(Sender: TObject);
    procedure cbbBcrPlanoDescEnter(Sender: TObject);
    procedure cbbBcrPlanoDescAntEnter(Sender: TObject);
    procedure cbbBcrTipoFinanceiroEnter(Sender: TObject);
    procedure cbbBcrTipoFinanDescEnter(Sender: TObject);
    procedure cbbBxaAutBolTipoFinanEnter(Sender: TObject);
    procedure cbbBxaAutBolPlanoContasEnter(Sender: TObject);
    procedure cbbBxaAutBolCentroCustoEnter(Sender: TObject);
    procedure cbbBxaAutBolFormaPagEnter(Sender: TObject);
    procedure txtFornecedorMovBanButtonClick(Sender: TObject);
    procedure txtFornecedorMovBanExit(Sender: TObject);
    procedure tbiControleShow(Sender: TObject);
    procedure cbbCFTipoMovEstEnter(Sender: TObject);
    procedure cbbCFCondPagEnter(Sender: TObject);
    procedure cbbFinalidadeDocEnter(Sender: TObject);
    procedure cbbConteudoDocEnter(Sender: TObject);
    procedure cbbEntradaDocEnter(Sender: TObject);
    procedure cbbDocumetoDocEnter(Sender: TObject);
    procedure cbbIssDocEnter(Sender: TObject);
    procedure cbbIcmsDocEnter(Sender: TObject);
    procedure cbbImpressDocEnter(Sender: TObject);
    procedure cbbUtilDocEnter(Sender: TObject);
    procedure cbblivroDocEnter(Sender: TObject);
    procedure cbbVeiculoDocEnter(Sender: TObject);
    procedure cbbiventarioDocEnter(Sender: TObject);
    procedure cbbApresentacaoDocEnter(Sender: TObject);
    procedure cbbSujIssDocEnter(Sender: TObject);
    procedure cbbretIssDocEnter(Sender: TObject);
    procedure cbbsujicmsDocEnter(Sender: TObject);
    procedure cbbOperStDocEnter(Sender: TObject);
    procedure cbbOperAntDocEnter(Sender: TObject);
    procedure cbbOperIpiDocEnter(Sender: TObject);
    procedure cbbApreRiDocEnter(Sender: TObject);
    procedure cbbRCRTipoFinanceiroEnter(Sender: TObject);
    procedure cbbRCRPlanoContasEnter(Sender: TObject);
    procedure chkBxaNEmpresaClick(Sender: TObject);
    procedure grdBxaNEmpDblClick(Sender: TObject);
    procedure grdParBxpButtonClick(Sender: TObject);
    procedure cbbTifDebCancNfeAntEnter(Sender: TObject);
    procedure tbiFaturamentoShow(Sender: TObject);
    procedure cbbPctDespCancNfeAntEnter(Sender: TObject);
    procedure cbbMovAlmTransEntEnter(Sender: TObject);
    procedure cbbTipoMovEstEntOPEnter(Sender: TObject);
    procedure tsRestrPedShow(Sender: TObject);
    procedure cbbTipoRstEnter(Sender: TObject);
    procedure grdRstMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbDevForTmeEnter(Sender: TObject);
    procedure cbbDevCliTmeEnter(Sender: TObject);
    procedure chbPrcFilialExit(Sender: TObject);
    procedure chbPrcFilialClick(Sender: TObject);
    procedure ScrollBox4Enter(Sender: TObject);
    procedure ScrollBox4Exit(Sender: TObject);
    procedure grdBxaRecNEmpDblClick(Sender: TObject);
    procedure cbbFinanConFormaPagEnter(Sender: TObject);
    procedure cbbFinanConTipoFinEnter(Sender: TObject);
    procedure cbbFinanConLocalTitEnter(Sender: TObject);
    procedure cbbFinanConFormaPagPagEnter(Sender: TObject);
    procedure cbbFinanConTipoFinPagEnter(Sender: TObject);
    procedure cbbFinanConLocalTitPagEnter(Sender: TObject);
    procedure cbbFinanConCustoPagEnter(Sender: TObject);
    procedure chkBxaRecNEmpresaClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure cbbTipoMovEstVendaEnter(Sender: TObject);
    procedure cbbDesTitPlanoEnter(Sender: TObject);
    procedure cbbDescTitPlanoTaxaDescEnter(Sender: TObject);
    procedure cbbDescTitTifEnter(Sender: TObject);
    procedure cbbDescTitTifTaxaDescEnter(Sender: TObject);
    procedure cbbDescTitTifCancEnter(Sender: TObject);
    procedure cbbDescTitPlanoCancEnter(Sender: TObject);
    procedure cbbDescTitFpgBxaEnter(Sender: TObject);
    procedure cbbFpgRcrPedEnter(Sender: TObject);
    procedure cbbNfeTipoFinanceiroEnter(Sender: TObject);
    procedure btnLocalizacaoClick(Sender: TObject);
    procedure chbNatOpeCompClick(Sender: TObject);
    procedure cbbTipoOrdemEnter(Sender: TObject);
    procedure btnAddEmailClick(Sender: TObject);
    procedure txtRelEmailExit(Sender: TObject);
    procedure pnlRelEmailExit(Sender: TObject);
    procedure btnDelIButtonClick(Sender: TObject);
    procedure dgRelEmailMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chbEnviarRelClick(Sender: TObject);
    procedure wwDBLookupCombo1Enter(Sender: TObject);
    procedure btnPathPFXClick(Sender: TObject);
    procedure cbbAlmPadEntEppEnter(Sender: TObject);
    procedure BusTipoEstoque4(index: integer; filtro: String);
    procedure BusTipoEstoque5(index: integer; filtro: String);
    procedure cbbCpaTipoMovEstEntEnter(Sender: TObject);
    procedure cbbOpbTipoMovEstSaiEnter(Sender: TObject);
    procedure cbbPedTipoMovEstRepEnter(Sender: TObject);
  private
    { Private declarations }
    xCodEmpresa: String;
  public
    { Public declarations }
  end;

var
  CAD_FM_C_PAR: TCAD_FM_C_PAR;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CID, PSQ_UN_X_ITE, PSQ_UN_X_CPG, PSQ_UN_X_FOR,
  CAD_RN_C_PAR, uProxy, PSQ_UN_X_CLI, CSU_UN_M_GPS;

procedure TCAD_FM_C_PAR.acAdicionaExecute(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PAR);
  txtRazaoSocial.SetFocus;

  if dmgeral.CAD_CD_C_PAR_MOD.FieldByName('rev').AsBoolean = true then
    begin
      dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean := false;
      dmGeral.CAD_CD_C_PAR_CTRid_alm_padrao.AsString:= '';
    end;

  try
      SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
      if (SMPrincipal.enExisteItePrcFilial) then
        begin
           dmGeral.CAD_CD_C_PAR_CTRpreco_por_filial.AsBoolean:= true;
        end;
  finally
      FreeAndNil(SMPrincipal);
  end;

end;

procedure TCAD_FM_C_PAR.acAlterarExecute(Sender: TObject);
begin
 if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PAR) then
    begin
      inherited;
      pnParSer.Enabled := False;
      dmgeral.CAD_CD_C_PAR_CTR.Edit;
      dmGeral.CAD_CD_C_PAR_NFE.Edit;
      CAD_RN_C_PAR.CadTrazerEmpParBxp;
      CAD_RN_C_PAR.CadTrazerEmpParBxr;
      txtRazaoSocial.SetFocus;

      if dmgeral.CAD_CD_C_PAR_MOD.FieldByName('rev').AsBoolean = true then
        begin
          dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean := false;
          dmGeral.CAD_CD_C_PAR_CTRid_alm_padrao.AsString:= '';
        end;

      gbBxaNEmpresa.Enabled := false;
      if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_pag_n_emp').AsBoolean then
         begin
           gbBxaNEmpresa.Enabled := true;
         end;

      gbBxaRecNEmpresa.Enabled := false;
      if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_rec_n_emp').AsBoolean then
         begin
           gbBxaRecNEmpresa.Enabled := true;
         end;

      if dmGeral.CAD_CD_C_PAR_NFE.FieldByName('ativar_nat_ope_nfe_comp').AsBoolean then
         begin
           txtNatOprNotaComp.Color := clWhite;
         end;



    end;
end;

procedure TCAD_FM_C_PAR.acCancelarExecute(Sender: TObject);
begin
   chbPrcFilial.OnClick := nil;
   if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PAR) then
      begin
        inherited;
        dbGrid.SetFocus;
      end
   else
      begin
        txtRazaoSocial.SetFocus;
      end;
end;

procedure TCAD_FM_C_PAR.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PAR);
end;

procedure TCAD_FM_C_PAR.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin

  codigo := dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;
  chbPrcFilial.OnClick := nil;
  DmGeral.Grava(dmGeral.CAD_CD_C_PAR);

  inherited;

  dmGeral.CAD_CD_C_PAR.Close;
  dmGeral.CAD_CD_C_PAR.Data :=
          dmGeral.CAD_CD_C_PAR.DataRequest(VarArrayOf([0, codigo]));
end;



procedure TCAD_FM_C_PAR.btnAddEmailClick(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_PAR_EML.Insert;
  pnlRelEmail.Enabled := true;
  txtRelEmail.SetFocus;
end;

procedure TCAD_FM_C_PAR.btnDelIButtonClick(Sender: TObject);
begin
  inherited;
  try
     btnDelIButton.Enabled := false;
     if dmGeral.CAD_CD_C_PAR_EML.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_PAR_EML.Delete;


  finally
    btnDelIButton.Enabled := true;
  end;
end;

procedure TCAD_FM_C_PAR.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_PAR.Close;
    dmGeral.CAD_CD_C_PAR.Data :=
    dmGeral.CAD_CD_C_PAR.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;





procedure TCAD_FM_C_PAR.btnLocalizacaoClick(Sender: TObject);
begin
  inherited;
  xCaminho := '';

  Application.CreateForm(TCSU_FM_M_GPS,CSU_FM_M_GPS);

  if (dmGeral.CAD_CD_C_PAR.FieldByName('gps_latitude').AsString<>'')
    and (dmGeral.CAD_CD_C_PAR.FieldByName('gps_longitude').AsString<>'') then
    begin
      xCaminho := xCaminho+ stringReplace( dmGeral.CAD_CD_C_PAR.FieldByName('gps_latitude').AsString,',','.',[rfReplaceAll]) +','+
        stringReplace(dmGeral.CAD_CD_C_PAR.FieldByName('gps_longitude').AsString,',','.',[rfReplaceAll]);
    end;

  CSU_FM_M_GPS.btnRotaClick(sender);
  CSU_FM_M_GPS.panel1.Visible := false;
  CSU_FM_M_GPS.ShowModal;

  if (CSU_FM_M_GPS.OLat.Text <> '') and (CSU_FM_M_GPS.OLong.Text <> '') then
    begin
      dmGeral.CAD_CD_C_PAR.FieldByName('gps_latitude').AsString := CSU_FM_M_GPS.OLat.Text;
      dmGeral.CAD_CD_C_PAR.FieldByName('gps_longitude').AsString := CSU_FM_M_GPS.OLong.Text;
    end;

  CSU_FM_M_GPS.Free;
end;

procedure TCAD_FM_C_PAR.btn_Add_PrcClick(Sender: TObject);
begin
  inherited;
  pnlParametrizacao.Enabled  := true;
  dmGeral.CAD_CD_C_PAR_CPG.Insert;
  cbbCondicaoCpgPrc.SetFocus;
end;

procedure TCAD_FM_C_PAR.btn_Add_SerClick(Sender: TObject);
begin
  inherited;

  pnParSer.Enabled := true;

  dmGeral.CAD_CD_C_PAR_SER.Insert;
  txtTipoSerieNfe.SetFocus;
end;

procedure TCAD_FM_C_PAR.cbbAlmPadEntEppEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusAlmox(1,'%');
  cbbAlmPadEntEpp.DropDown;
end;


procedure TCAD_FM_C_PAR.BusTipoEstoque4(index: integer; filtro: String);
begin
  BUS_CD_C_TME_EXP4.Close;
  BUS_CD_C_TME_EXP4.Data :=
         BUS_CD_C_TME_EXP4.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TCAD_FM_C_PAR.BusTipoEstoque5(index: integer; filtro: String);
begin
  BUS_CD_C_TME_EXP5.Close;
  BUS_CD_C_TME_EXP5.Data :=
         BUS_CD_C_TME_EXP5.DataRequest(VarArrayOf([index, filtro]));
end;

procedure TCAD_FM_C_PAR.cbbApreRiDocEnter(Sender: TObject);
begin
  inherited;
  cbbApreRiDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbApresentacaoDocEnter(Sender: TObject);
begin
  inherited;
  cbbApresentacaoDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbatividadeEnter(Sender: TObject);
begin
  inherited;
  cbbAtividade.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbAtividadePrepoEnter(Sender: TObject);
begin
  inherited;
  cbbAtividadePrepo.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbBcrPlanoDescAntEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp9(92,'0');
  cbbBcrPlanoDescAnt.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbBcrPlanoDescEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp8(92,'0');
  cbbBcrPlanoDesc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbBcrPlanoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp7(92,'1');
  cbbBcrPlano.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbBcrTipoFinanceiroEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp9(90,'1');
  cbbBcrTipoFinanceiro.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbBcrTipoFinanDescEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp10(90,'0');
  cbbBcrTipoFinanDesc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbBxaAutBolCentroCustoEnter(Sender: TObject);
begin
  inherited;
   dmGeral.BusCCustoExp2(1,'%');
   cbbBxaAutBolCentroCusto.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbBxaAutBolFormaPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtosExp2(6,'''0''','''5''');
  cbbBxaAutBolFormaPag.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbBxaAutBolPlanoContasEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp10(92,'1');
  cbbBxaAutBolPlanoContas.DropDown;
end;



procedure TCAD_FM_C_PAR.cbbBxaAutBolTipoFinanEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp11(90,'1');
  cbbBxaAutBolTipoFinan.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbCFCondPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCondPgto(1,'%');
  cbbCFCondPag.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbCFTipoMovEstEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque(1,'%');
  cbbCFTipoMovEst.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbCodPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCondPgto(1,'%');
  cbbCondicaoCpgPrc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbCondicaoCpgPrcEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCondPgto(1,'%');
  cbbCondicaoCpgPrc.DropDown;

end;

procedure TCAD_FM_C_PAR.cbbCondicaoCpgPrcExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
       btnGrava.Focused  then
       begin
         exit;
       end;

  if grdParamPreco.Focused then
     begin
       exit;
     end;

  if (dmGeral.CAD_CD_C_PAR_CPG.FieldByName('id_condicao_pag').Text = '') then
     begin
       ShowMessage('O campo "Condição de Pagamento" deve ser prenchido.');
       cbbCondicaoCpgPrc.SetFocus;
     end;

  dmGeral.BusCondPgto(0,dmGeral.CAD_CD_C_PAR_CPG.FieldByName('id_condicao_pag').Text);
  if dmGeral.BUS_CD_C_CPG.IsEmpty then
     begin
       ShowMessage('Condição de pagamento não encontrada.');
       cbbCondicaoCpgPrc.SetFocus;
       exit;
     end;

  dmGeral.CAD_CD_C_PAR_CPGint_nomecpg.AsString := dmGeral.BUS_CD_C_CPGdescricao.AsString;
end;

procedure TCAD_FM_C_PAR.cbbConteudoDocEnter(Sender: TObject);
begin
  inherited;
   cbbConteudoDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbCpaTipoMovEstEntEnter(Sender: TObject);
begin
  inherited;
  BusTipoEstoque4(4,'0');
  cbbCpaTipoMovEstEnt.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbCriterioEscEnter(Sender: TObject);
begin
  inherited;
  cbbCriterioEsc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbCustoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCCusto(1,'%');
  cbbCusto.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbDescTitFpgBxaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtosExp5(13,'0');
  cbbDescTitFpgBxa.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbDescTitPlanoCancEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp15(92,'0');
  cbbDescTitPlanoCanc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbDescTitPlanoTaxaDescEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp14(92,'0');
  cbbDescTitPlanoTaxaDesc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbDescTitTifCancEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp17(90,'0');
  cbbDescTitTifCanc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbDescTitTifEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp15(90,'1');
  cbbDescTitTif.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbDescTitTifTaxaDescEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp16(90,'0');
  cbbDescTitTifTaxaDesc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbDesTitPlanoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp13(92,'1');
  cbbDesTitPlano.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbDevCliTmeEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque3(6,'0');
  cbbDevCliTme.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbDevForCondPagEnter(Sender: TObject);
begin
  inherited;
   dmGeral.BusCondPgtoExp(4,'2');
   cbbDevForCondPag.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbDevForTmeEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque2(6,'1');
  cbbDevForTme.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbDocumetoDocEnter(Sender: TObject);
begin
  inherited;
  cbbDocumetoDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbEntradaDocEnter(Sender: TObject);
begin
  inherited;
  cbbEntradaDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbescrituracaoEnter(Sender: TObject);
begin
  inherited;
  cbbEscrituracao.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbFinalidadeDocEnter(Sender: TObject);
begin
  inherited;
  cbbFinalidadeDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbFinalidadeEnter(Sender: TObject);
begin
  inherited;
  cbbFinalidade.DropDown;
end;



procedure TCAD_FM_C_PAR.cbbFinanConCustoPagEnter(Sender: TObject);
begin
  inherited;
   dmGeral.BusCCustoExp3(1,'%');
   cbbFinanConCustoPag.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbFinanCondPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCondPgto(4,'2');
  cbbFinanCondPag.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbFinanConFormaPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtosExp3(13,'0');
  cbbFinanConFormaPag.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbFinanConFormaPagPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtosExp4(13,'0');
  cbbFinanConFormaPagPag.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbFinanConLocalTitEnter(Sender: TObject);
begin
  inherited;
   dmGeral.BusLocalTitExp2(1,'%');
   cbbFinanConLocalTit.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbFinanConLocalTitPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusLocalTitExp3(1,'%');
   cbbFinanConLocalTitPag.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbFinanConTipoFinEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp13(90,'1');
  cbbFinanConTipoFin.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbFinanConTipoFinPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp14(90,'0');
  cbbFinanConTipoFinPag.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbFinanFormaPagEnter(Sender: TObject);
begin
  inherited;
   dmGeral.BusFormaPgtos(4,'7');
   cbbFinanFormaPag.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbFormPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos2(2,'0');
  cbbFormPag.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbFpgRcrPedEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos(4,'7');
  cbbFpgRcrPed.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbIcmsDocEnter(Sender: TObject);
begin
  inherited;
  cbbIcmsDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbImpressDocEnter(Sender: TObject);
begin
  inherited;
  cbbImpressDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbIncidenciaTributariaEnter(Sender: TObject);
begin
  inherited;
  cbbIncidenciaTributaria.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbIssDocEnter(Sender: TObject);
begin
  inherited;
  cbbIssDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbiventarioDocEnter(Sender: TObject);
begin
  inherited;
  cbbiventarioDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbblivroDocEnter(Sender: TObject);
begin
  inherited;
  cbblivroDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbLocalTitEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusLocalTit(1,'%');
  cbbLocalTit.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbMotivoInventarioEnter(Sender: TObject);
begin
  inherited;
    cbbMotivoInventario.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbMovAlmTransEntEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque3(4,'0');
  cbbMovAlmTransEnt.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbMovCheFormaPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtosExp(4,'0');
  cbbMovCheFormaPag.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbMovChePlanoDepEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp4(93,'','1');
  cbbMovChePlanoDep.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbMovChePlanoDevEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp5(93,'','0');
  cbbMovChePlanoDev.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbMovChePlanoPPREnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp6(93,'','1');
  cbbMovChePlanoPPR.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbMovCheTipoFinanDepEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp4(90,'1');
  cbbMovCheTipoFinanDep.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbMovCheTipoFinanDevEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp5(90,'0');
  cbbMovCheTipoFinanDev.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbMovCheTipoFinanPPREnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp6(90,'1');
  cbbMovCheTipoFinanPPR.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbNaturezaJuridicaEnter(Sender: TObject);
begin
  inherited;
  cbbNaturezaJuridica.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbNfeCupomFiscalCondPagEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusCondPgto(4,'2');
  cbbNfeCupomFiscalCondPag.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbNfeCupomFiscalTipoMovEstoqueEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque(7,'');
  cbbNfeCupomFiscalTipoMovEstoque.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbNfeTipoFinanceiroEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp18(90,'0');
  cbbNfeTipoFinanceiro.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbOperAntDocEnter(Sender: TObject);
begin
  inherited;
  cbbOperAntDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbOperIpiDocEnter(Sender: TObject);
begin
  inherited;
  cbbOperIpiDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbOperStDocEnter(Sender: TObject);
begin
  inherited;
  cbbOperStDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbOrvFormaPagNotaCreEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos(4,'7');
  cbbOrvFormaPagNotaCre.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbPctDespCancNfeAntEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp6(93,'','0');
  cbbPctDespCancNfeAnt.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbPerfilEnter(Sender: TObject);
begin
  inherited;
  cbbPerfil.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbPesquisaChange(Sender: TObject);
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

procedure TCAD_FM_C_PAR.cbbPlanoContasSupEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCta(92,'2');
  cbbPlanoContasSup.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbPlanoContasSemFluxoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp(92,'2');
  cbbPlanoContasSemFluxo.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbRamoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusRamAtiv(1,'%');
  cbbRamo.DropDown;
end;



procedure TCAD_FM_C_PAR.cbbRCRTipoFinanceiroEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp12(90,'1');
  cbbRCRTipoFinanceiro.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbretIssDocEnter(Sender: TObject);
begin
  inherited;
  cbbretIssDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_Cod_CtdEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_CTD.Open;
  cbbSef_Cod_Ctd.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_Cod_FinEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_FIN.Open;
  cbbSef_Cod_Fin.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_ind_arqEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_ARQ.Open;
  cbbSef_ind_arq.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_ind_atEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_AT.Open;
  cbbSef_ind_at.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_ind_ecEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_EC.Open;
  cbbSef_ind_ec.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_ind_edEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_ED.Open;
  cbbSef_ind_ed.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_ind_icmsEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_ICMS.Open;
  cbbSef_ind_icms.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_ind_ipiEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_IPI.Open;
  cbbSef_ind_ipi.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_ind_issEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_ISS.Open;
  cbbSef_ind_iss.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_ind_riEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_RI.Open;
  cbbSef_ind_ri.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_ind_rtEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_RT.Open;
  cbbSef_ind_rt.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_ind_stEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_ST.Open;
  cbbSef_ind_st.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_prf_icmsEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_PRF_ICMS.Open;
  cbbSef_prf_icms.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_Prf_IssEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_PRF_ISS.Open;
  cbbSef_Prf_Iss.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_prf_lmcEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_PRF_LMC.Open;
  cbbSef_prf_lmc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_prf_ridfEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_PRF_RIDF.Open;
  cbbSef_prf_ridf.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_prf_riEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_PRF_RI.Open;
  cbbSef_prf_ri.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_prf_rudfEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_PRF_RUDF.Open;
  cbbSef_prf_rudf.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSef_prf_rvEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_X_SEF_PRF_RV.Open;
  cbbSef_prf_rv.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSituacaoEspecialEnter(Sender: TObject);
begin
  inherited;
  cbbSituacaoEspecial.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbsujicmsDocEnter(Sender: TObject);
begin
  inherited;
  cbbsujicmsDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbSujIssDocEnter(Sender: TObject);
begin
  inherited;
  cbbSujIssDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTifDebCancNfeAntEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp6(90,'0');
  cbbTifDebCancNfeAnt.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoAtribEnter(Sender: TObject);
begin
  inherited;
  cbbTipoAtrib.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoCreditoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFin(90,'0');
  cbbTipoCredito.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoDebitoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp(90,'1');
  cbbTipoDebito.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoEstoqueOrdemServicoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque(4,'1');
  cbbTipoEstoqueOrdemServico.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoEmiMfdEnter(Sender: TObject);
begin
  inherited;
  cbbtipoEmiMfd.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoEmitenteEnter(Sender: TObject);
begin
  inherited;
  CbbTipoEmitente.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoEstoqueEntradaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque(2,'0');
  cbbTipoEstoqueEntrada.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoEstoqueSaidaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque2(2,'1');
  cbbTipoEstoqueSaida.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoFinanceiroSangCredEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp7(90,'1');
  cbbTipoFinanceiroSangCred.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoFinanceiroSangEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp3(90,'0');
  cbbTipoFinanceiroSang.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoFinanceiroSupEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp2(90,'1');
  cbbTipoFinanceiroSup.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoFinEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp8(90,'0');
  cbbTipoFin.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoMovEstEntOPEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque(4,'0');
  cbbTipoMovEstEntOP.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoMovEstVendaEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque(2,'1');
  cbbTipoMovEstVenda.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoOrdemEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoOS(1,'%');
  cbbTipoOrdem.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbTipoRstEnter(Sender: TObject);
begin
  inherited;
dmGeral.CAD_CD_C_PAR_RST.Edit;
end;

procedure TCAD_FM_C_PAR.cbbUtilDocEnter(Sender: TObject);
begin
  inherited;
  cbbUtilDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbVeiculoDocEnter(Sender: TObject);
begin
  inherited;
  cbbVeiculoDoc.DropDown;
end;

procedure TCAD_FM_C_PAR.chbPrcFilialClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;
  if chbPrcFilial.Checked = false then
    begin
      try
        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        if (SMPrincipal.enExisteItePrcFilial) then
          begin
            ShowMessage('Exitem itens com preços cadastrados por filial.');
            chbPrcFilial.Checked := true;
          end;
      finally
        FreeAndNil(SMPrincipal);
      end;
    end;
end;

procedure TCAD_FM_C_PAR.chbPrcFilialExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  inherited;
 { if chbPrcFilial.Checked = false then
    begin
      try
        SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
        if (SMPrincipal.enExisteItePrcFilial) then
          begin
            ShowMessage('Exitem itens com preços cadastrados por filial.');
            chbPrcFilial.Checked := true;
          end;
      finally
        FreeAndNil(SMPrincipal);
      end;
    end; }
end;

procedure TCAD_FM_C_PAR.chkBxaNEmpresaClick(Sender: TObject);
begin
  inherited;
  if chkBxaNEmpresa.Checked then // chkBxaNEmpresa.Checked then
     begin
       gbBxaNEmpresa.Enabled := true;
       if dmGeral.CAD_CD_C_PAR_CTR.State in [dsInsert, dsEdit] then
          begin
            dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_pag_n_emp').AsBoolean := true;
            CAD_RN_C_PAR.CadTrazerEmpParBxp;
          end;
     end
  else
     gbBxaNEmpresa.Enabled := false;
end;

procedure TCAD_FM_C_PAR.chkBxaRecNEmpresaClick(Sender: TObject);
begin
  inherited;
   if chkBxaRecNEmpresa.Checked then // chkBxaNEmpresa.Checked then
     begin
       gbBxaRecNEmpresa.Enabled := true;
       if dmGeral.CAD_CD_C_PAR_CTR.State in [dsInsert, dsEdit] then
          begin
            dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_rec_n_emp').AsBoolean := true;
            CAD_RN_C_PAR.CadTrazerEmpParBxr;
          end;
     end
  else
     gbBxaRecNEmpresa.Enabled := false;
end;

procedure TCAD_FM_C_PAR.chbEnviarRelClick(Sender: TObject);
begin
  inherited;
  gbRelEmail.Enabled := chbEnviarRel.Checked;
end;

procedure TCAD_FM_C_PAR.chbNatOpeCompClick(Sender: TObject);
begin
  inherited;

  if (chbNatOpeComp.Checked = true) then
    begin
     txtNatOprNotaComp.Enabled := true;
     txtNatOprNotaComp.Color := clWhite;
    end
  else
    begin
     txtNatOprNotaComp.Enabled := false;
      txtNatOprNotaComp.Color := $00DADADA;
    end;

end;

procedure TCAD_FM_C_PAR.dgRelEmailMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  dmGeral.CAD_CD_C_PAR_EML.Cancel;
end;

procedure TCAD_FM_C_PAR.dsoStateChange(Sender: TObject);
begin
  inherited;
  acExcluir.Enabled   := False;
end;

procedure TCAD_FM_C_PAR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if trim(xCodEmpresa) <> '' then
     begin
       dmGeral.CAD_CD_C_PAR.Close;
       dmGeral.CAD_CD_C_PAR.Data := dmGeral.CAD_CD_C_PAR.DataRequest(VarArrayOf([0, xCodEmpresa]));
       dmGeral.CAD_CD_C_PAR.Open;
     end;
  FreeAndNil(CAD_FM_C_PAR);
end;

procedure TCAD_FM_C_PAR.FormCreate(Sender: TObject);
begin
  inherited;



  if not dmGeral.CAD_CD_C_PAR.IsEmpty then
     begin
        xCodEmpresa := dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString;
        dmGeral.CAD_CD_C_PAR.Close;
        dmGeral.CAD_CD_C_PAR.Data := dmGeral.CAD_CD_C_PAR.DataRequest(VarArrayOf([0, xCodEmpresa]));
     end
  else
     begin
       dmGeral.CAD_CD_C_PAR.Close;
       dmGeral.CAD_CD_C_PAR.Data := dmGeral.CAD_CD_C_PAR.DataRequest(VarArrayOf([0, 0]));
     end;
  dmGeral.CAD_CD_C_PAR.Open;

  

  dmGeral.BusTipoEstoque(1,'%');
  dmGeral.BusTipoEstoque2(1,'%');
  dmGeral.BusLisMestre(1,'%');
  dmGeral.BusCondPgto(1,'%');

  BUS_CD_C_CPG_REP.Close;
  BUS_CD_C_CPG_REP.Data :=
      BUS_CD_C_CPG_REP.DataRequest(VarArrayOf([1, '%']));

  dmGeral.BusPlanoCta(92,'2');
  dmGeral.BusPlanoCtaExp(92,'2');
  dmGeral.BusTipoFin(90,'1');
  dmGeral.BusTipoFinExp(90,'0');
  dmGeral.BusCondPgto(4,'2');
  dmGeral.BusFormaPgtos(4,'7');
  dmGeral.BusCCusto(1,'%');
  dmGeral.BusLocalTit(1,'%');
  dmGeral.BusMaquineta(1,'%');
  dmGeral.BusAlmox(1,'%');

  dmgeral.BUS_PR_X_SEF_FIN;
  dmgeral.BUS_PR_X_SEF_CTD;
  dmgeral.BUS_PR_X_SEF_ED;
  dmgeral.BUS_PR_X_SEF_ARQ;
  dmgeral.BUS_PR_X_SEF_PRF_ISS;
  dmgeral.BUS_PR_X_SEF_PRF_ICMS;
  dmgeral.BUS_PR_X_SEF_PRF_RIDF;
  dmgeral.BUS_PR_X_SEF_PRF_RUDF;
  dmgeral.BUS_PR_X_SEF_PRF_LMC;
  dmgeral.BUS_PR_X_SEF_PRF_RV;
  dmgeral.BUS_PR_X_SEF_PRF_RI;
  dmgeral.BUS_PR_X_SEF_EC;
  dmgeral.BUS_PR_X_SEF_ISS;
  dmgeral.BUS_PR_X_SEF_RT;
  dmgeral.BUS_PR_X_SEF_ICMS;
  dmgeral.BUS_PR_X_SEF_ST;
  dmgeral.BUS_PR_X_SEF_AT;
  dmgeral.BUS_PR_X_SEF_IPI;
  dmgeral.BUS_PR_X_SEF_RI;
end;

procedure TCAD_FM_C_PAR.FormShow(Sender: TObject);
begin
  inherited;
  tabFilhos.ActivePage   := tbiResponsaveis;

  gbAlmoxarifado.Visible := false;

  if (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('sgq').AsBoolean = true) or
     (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('ctc').AsBoolean = true) then
    begin
      gbAlmoxarifado.Visible := true;
    end;

  chbEnviaPedCarga.Visible := false;
  chbAssoAcavasf.Visible   := false;
  chbCorrPrecoPrazo.Visible := false;
  chbAtivaIteConj.Visible := false;
  lblControleTipoImp.Visible := false;
  cbbControleTipoImp.Visible := false;
  if (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('rev').AsBoolean = true) or
     (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('tor').AsBoolean = true) then
    begin
      chbEnviaPedCarga.Visible := true;
      chbAssoAcavasf.Visible   := true;
      chbCorrPrecoPrazo.Visible := true;
      lblControleTipoImp.Visible := true;
      cbbControleTipoImp.Visible := true;
      chbAtivaIteConj.Visible := true;

    end;

  if (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('sgq').AsBoolean = true) then
    begin
      //tbiOficina.TabVisible := false;
      chbAtivaIteConj.Visible := true;
    end;

   chbUtilizaMecanico.Visible := false;
   tbiOficina.TabVisible := false;
   if (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('ome').AsBoolean = true) or
      (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('ota').AsBoolean = true) or
      (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('oqp').AsBoolean = true) or
      (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('omp').AsBoolean = true) then
    begin
       chbUtilizaMecanico.Visible := true;
       tbiOficina.TabVisible := true;
    end;


  gbComissaoRep.Visible := false;
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('sgq').AsBoolean = true) then
    begin
      gbComissaoRep.Visible := true;
    end;

end;

procedure TCAD_FM_C_PAR.grdCodIButtonClick(Sender: TObject);
begin
  inherited;
    try
     grdCodIButton.Enabled := False;
     if dmGeral.CAD_CD_C_PAR_CPG.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     if dmGeral.CAD_CD_C_PAR_CPG.state in [dsBrowse] then
        dmGeral.CAD_CD_C_PAR_CPG.Edit;
     dmGeral.CAD_CD_C_PAR_CPG.Delete;
     dmGeral.CAD_CD_C_PAR_CPG.Edit;
  finally
    grdCodIButton.Enabled := True;
  end;
end;

procedure TCAD_FM_C_PAR.grdParSerIButtonClick(Sender: TObject);
begin
  inherited;
  try
     grdParSerIButton.Enabled := false;
     if dmGeral.CAD_CD_C_PAR_SER.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_PAR_SER.Delete;
     dmGeral.CAD_CD_C_PAR_SER.Edit;
  finally
    grdParSerIButton.Enabled := true;
  end;

end;

procedure TCAD_FM_C_PAR.grdParSerMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnParSer.Enabled = false then
     pnParSer.Enabled := true;

  dmGeral.CAD_CD_C_PAR_SER.cancel;

  if dmGeral.CAD_CD_C_PAR_SER.IsEmpty then
     begin
       dmGeral.CAD_CD_C_PAR_SER.Append;
       pnParSer.Enabled := true;
       txtTipoSerieNfe.SetFocus;
     end
  else
     begin
       dmGeral.CAD_CD_C_PAR_SER.Edit;
       pnParSer.Enabled := true;
       txtTipoSerieNfe.SetFocus;
     end;
end;

procedure TCAD_FM_C_PAR.grdParamPrecoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if pnlParametrizacao.Enabled = false then
     pnlParametrizacao.Enabled := true;

  dmGeral.CAD_CD_C_PAR_CPG.cancel;

  if dmGeral.CAD_CD_C_PAR_CPG.IsEmpty then
     begin
       dmGeral.CAD_CD_C_PAR_CPG.Append;
       pnlParametrizacao.Enabled := true;
       //txtAjuPer.SetFocus;
     end
  else
     begin
       dmGeral.CAD_CD_C_PAR_CPG.Edit;
       pnlParametrizacao.Enabled := true;
       //txtAjuPer.SetFocus;
     end;
end;

procedure TCAD_FM_C_PAR.pnlParametrizacaoExit(Sender: TObject);
begin
  inherited;

  if (btn_Add_Prc.Focused) or (grdParamPreco.Focused) or
     (not grdCodIButton.Enabled) then
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

        dmGeral.CAD_CD_C_PAR_CPG.Cancel;
        dmGeral.CAD_CD_C_PAR_CPG.edit;

        finally
           pnlParametrizacao.Enabled := false;
        end;
      end;
end;

procedure TCAD_FM_C_PAR.pnParSerExit(Sender: TObject);
begin
  inherited;
  if (btn_Add_Ser.Focused) or (grdParSer.Focused) or
     (not grdParSerIButton.Enabled) then
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

        dmGeral.CAD_CD_C_PAR_SER.Cancel;
        dmGeral.CAD_CD_C_PAR_SER.edit;

        finally
           pnParSer.Enabled := false;
        end;
      end;
end;

procedure TCAD_FM_C_PAR.sbtnGetCertClick(Sender: TObject);
begin
  inherited;
   {$IFNDEF ACBrNFeOpenSSL}
   // v antigo
   //txtSerieCertificado.Text := NFe.Configuracoes.Certificados.SelecionarCertificado;
   txtSerieCertificado.Text := NFe.SSL.SelecionarCertificado;
   dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_serie').Text :=
           NFe.SSL.SelecionarCertificado;
        //v antigo
       //NFe.Configuracoes.Certificados.SelecionarCertificado;
   {$ENDIF}
end;

procedure TCAD_FM_C_PAR.ScrollBox4Enter(Sender: TObject);
begin
  inherited;
  chbPrcFilial.OnClick := chbPrcFilialClick;
end;

procedure TCAD_FM_C_PAR.ScrollBox4Exit(Sender: TObject);
begin
  inherited;
   chbPrcFilial.OnClick := nil;
end;

procedure TCAD_FM_C_PAR.btnPathPFXClick(Sender: TObject);
begin
  inherited;
  opPathPfx.Title      := 'Selecione o arquivo PFX';
  opPathPfx.DefaultExt := '*.PFX';
  opPathPfx.Filter     := 'Arquivos (*.PFX)|*.PFX';

  opPathPfx.InitialDir := ExtractFilePath(Application.ExeName);
  opPathPfx.FileName   := '';

  if opPathPfx.Execute then
     begin
       dmGeral.CAD_CD_C_PAR_NFE.FieldByName('cert_caminho_pfx').AsString := opPathPfx.FileName;
     end;
end;

procedure TCAD_FM_C_PAR.TabSheet2Show(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque(2,'1');
end;

procedure TCAD_FM_C_PAR.tbiControleShow(Sender: TObject);
begin
  inherited;
   dmGeral.BusCondPgto(1,'%');
   dmGeral.BusTipoEstoque(1,'%');
   dmGeral.BusFormaPgtos(4,'7');
   dmGeral.BusTipoEstoque2(1,'%');
end;

procedure TCAD_FM_C_PAR.tbiEstoqueShow(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque(2,'0');
  dmGeral.BusTipoEstoque2(2,'1');
  dmGeral.BusTipoEstoque3(4,'0');
end;

procedure TCAD_FM_C_PAR.tbiFaturamentoShow(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoFinExp6(90,'0');
  dmGeral.BusPlanoCtaExp6(93,'','0');

end;

procedure TCAD_FM_C_PAR.tbiFinanceiroShow(Sender: TObject);
begin
  inherited;
  dmGeral.BusMaquineta(1,'%');
   dmGeral.BusCondPgto(4,'2');
    dmGeral.BusFormaPgtos(4,'7');
     dmGeral.BusCondPgtoExp(4,'2');
     dmGeral.BusTipoFin(90,'0');
     dmGeral.BusTipoFinExp(90,'1');
      dmGeral.BusPlanoCta(92,'2');
      dmGeral.BusTipoFinExp2(90,'1');
      dmGeral.BusPlanoCtaExp(92,'2');
      dmGeral.BusPlanoCtaExp2(92,'2');
      dmGeral.BusTipoFinExp3(90,'0');
      dmGeral.BusTipoFinExp4(90,'1');
      dmGeral.BusTipoFinExp5(90,'0');
      dmGeral.BusTipoFinExp6(90,'1');


       dmGeral.BusPlanoCtaExp3(92,'2');
       dmGeral.BusTipoFinExp7(90,'1');
       dmGeral.BusPlanoCtaExp4(93,'','1');
       dmGeral.BusPlanoCtaExp5(93,'','0');
       dmGeral.BusPlanoCtaExp6(93,'','1');
        dmGeral.BusFormaPgtos2(1,'%');
        dmGeral.BusCCusto(1,'%');
        dmGeral.BusLocalTit(1,'%');
        dmGeral.BusTipoFinExp8(90,'0');
        dmGeral.BusFormaPgtosExp(4,'0');


        dmGeral.BusPlanoCtaExp7(92,'1');
        dmGeral.BusPlanoCtaExp8(92,'0');
        dmGeral.BusPlanoCtaExp9(92,'0');
        dmGeral.BusPlanoCtaExp10(92,'1');

        dmGeral.BusTipoFinExp9(90,'1');
        dmGeral.BusTipoFinExp10(90,'0');
        dmGeral.BusTipoFinExp11(90,'1');
         dmGeral.BusCCustoExp2(1,'%');

        dmGeral.BusFormaPgtosExp2(6,'''0''','''5''');


        dmGeral.BusTipoFinExp12(90,'1');
        dmGeral.BusPlanoCtaExp12(92,'1');


        dmGeral.BusFormaPgtosExp3(13,'0');
        dmGeral.BusTipoFinExp13(90,'1');
        dmGeral.BusLocalTitExp2(1,'%');

        dmGeral.BusFormaPgtosExp4(13,'0');
        dmGeral.BusTipoFinExp14(90,'0');
        dmGeral.BusLocalTitExp3(1,'%');
        dmGeral.BusCCustoExp3(1,'%');


        ///Utilizado por Desconto de Titulos///
        dmGeral.BusPlanoCtaExp13(92,'1');
        dmGeral.BusPlanoCtaExp14(92,'0');

        dmGeral.BusTipoFinExp15(90,'1');
        dmGeral.BusTipoFinExp16(90,'0');

        dmGeral.BusFormaPgtosExp5(13,'0');


        dmGeral.BusPlanoCtaExp15(92,'0');
        dmGeral.BusTipoFinExp17(90,'0');
        ////////////FIM//////////////////
        dmGeral.BusTipoFinExp18(90,'0');

        txtDescForMovBan.Text := '';

       if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('MVB_ID_FORNECEDOR').AsString <> '')   AND
          (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('MVB_ID_FORNECEDOR').AsInteger > 0)) then
         begin
           dmGeral.BusFornecedor(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('MVB_ID_FORNECEDOR').AsString);
           if not dmGeral.BUS_CD_C_FOR.IsEmpty then
             begin
               txtDescForMovBan.Text :=
                       dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
             end;
         end;



end;

procedure TCAD_FM_C_PAR.tbiNFeEnter(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_PAR_NFE.Edit;
end;

procedure TCAD_FM_C_PAR.tbiNFeShow(Sender: TObject);
begin
  inherited;
   dmGeral.BusCondPgto(4,'2');
   dmGeral.BusTipoEstoque(7,'');
end;

procedure TCAD_FM_C_PAR.tbiOficinaShow(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque(4,'1');
  dmGeral.BusFormaPgtos(4,'7');

  dmGeral.BusTipoEstoque2(6,'1');
  dmGeral.BusTipoEstoque3(6,'0');
   dmGeral.BusTipoOS(1,'%');
end;

procedure TCAD_FM_C_PAR.tbiProducaoShow(Sender: TObject);
begin
  inherited;
  dmGeral.BusCondPgto(1,'%');
  dmGeral.BusTipoEstoque(4,'0');
  BusTipoEstoque4(4,'0');
  BusTipoEstoque5(4,'1');
end;

procedure TCAD_FM_C_PAR.tbiSEFShow(Sender: TObject);
begin
  inherited;
   dmgeral.BUS_CD_X_SEF_FIN.Open;
   dmgeral.BUS_CD_X_SEF_CTD.Open;
   dmgeral.BUS_CD_X_SEF_ED.Open;
   dmgeral.BUS_CD_X_SEF_ARQ.Open;
   dmgeral.BUS_CD_X_SEF_PRF_ISS.Open;
    dmgeral.BUS_CD_X_SEF_PRF_ICMS.Open;
    dmgeral.BUS_CD_X_SEF_PRF_RIDF.Open;
    dmgeral.BUS_CD_X_SEF_PRF_RUDF.Open;
    dmgeral.BUS_CD_X_SEF_PRF_LMC.Open;
    dmgeral.BUS_CD_X_SEF_PRF_RV.Open;
    dmgeral.BUS_CD_X_SEF_PRF_RI.Open;
     dmgeral.BUS_CD_X_SEF_EC.Open;
      dmgeral.BUS_CD_X_SEF_ISS.Open;
       dmgeral.BUS_CD_X_SEF_RT.Open;
        dmgeral.BUS_CD_X_SEF_ICMS.Open;
        dmgeral.BUS_CD_X_SEF_ST.Open;
        dmgeral.BUS_CD_X_SEF_AT.Open;
        dmgeral.BUS_CD_X_SEF_IPI.Open;
        dmgeral.BUS_CD_X_SEF_RI.Open;
end;

procedure TCAD_FM_C_PAR.tsRestrPedShow(Sender: TObject);
begin
  inherited;
  CAD_RN_C_PAR.CadPreencherRst(dmGeral.CAD_CD_C_PAR,dmGeral.CAD_CD_C_PAR_RST);
  grdRst.SetFocus;
  dmGeral.CAD_CD_C_PAR_RST.Edit;
end;

procedure TCAD_FM_C_PAR.txtAjuPerExit(Sender: TObject);
begin
  inherited;
 if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if cbbCondicaoCpgPrc.Focused or
     grdParamPreco.Focused then
     begin
       exit;
     end;

  //btn_Add_Prc.SetFocus;

  dmGeral.CAD_CD_C_PAR_CPG.Post;

  pnlParametrizacao.Enabled := false;


//  ActiveControl := nil;
//  PostMessage(btn_Add_Prc.Handle, WM_SETFOCUS, 0, 0);
//  btn_Add_Prc.SetFocus;


end;

procedure TCAD_FM_C_PAR.txtCidadeButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
   PSQ_FM_X_CID.ShowModal;
      if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
         begin
           dmGeral.CAD_CD_C_PAR.FieldByName('INT_NOMECID').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString;

           dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('UF').AsString;

           dmGeral.CAD_CD_C_PAR.FieldByName('ID_CIDADE').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString;
         end;
   PSQ_FM_X_CID.Free;
end;

procedure TCAD_FM_C_PAR.txtCidadeContadorButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
   PSQ_FM_X_CID.ShowModal;
      if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
         begin
           dmGeral.CAD_CD_C_PAR.FieldByName('CNT_ID_CIDADE').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString;

           txtCidadeContadorDescricao.Caption := PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString;
         end;
   PSQ_FM_X_CID.Free;
end;

procedure TCAD_FM_C_PAR.txtCidadeContadorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_CID.Close;

  dmGeral.BUS_CD_C_CID.Close;
  dmGeral.BUS_CD_C_CID.Data :=
  dmGeral.BUS_CD_C_CID.DataRequest(VarArrayOf([0, txtCidadeContador.Text]));

  txtCidadeContadorDescricao.Caption := dmGeral.BUS_CD_C_CID.FieldByName('NOME').AsString;
end;

procedure TCAD_FM_C_PAR.txtCidadeExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_CID.Close;

  dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').AsString := '';

  dmGeral.BUS_CD_C_CID.Close;
  dmGeral.BUS_CD_C_CID.Data :=
  dmGeral.BUS_CD_C_CID.DataRequest(VarArrayOf([0, txtCidade.Text]));

  dmGeral.CAD_CD_C_PAR.FieldByName('INT_NOMECID').AsString :=
       dmGeral.BUS_CD_C_CID.FieldByName('NOME').AsString;

  dmGeral.CAD_CD_C_PAR.FieldByName('INT_UF').AsString :=
       dmGeral.BUS_CD_C_CID.FieldByName('UF').AsString;
end;

procedure TCAD_FM_C_PAR.txtCidadeResponsavelButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
   PSQ_FM_X_CID.ShowModal;
      if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
         begin
           dmGeral.CAD_CD_C_PAR.FieldByName('RES_CIDADE').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString;

           dmGeral.CAD_CD_C_PAR.FieldByName('RES_ID_CIDADE').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString;
         end;
   PSQ_FM_X_CID.Free;
end;

procedure TCAD_FM_C_PAR.txtCidadeResponsavelExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_CID.Close;

  dmGeral.BUS_CD_C_CID.Close;
  dmGeral.BUS_CD_C_CID.Data :=
  dmGeral.BUS_CD_C_CID.DataRequest(VarArrayOf([0, txtCidadeResponsavel.Text]));

  dmGeral.CAD_CD_C_PAR.FieldByName('RES_CIDADE').AsString :=
                dmGeral.BUS_CD_C_CID.FieldByName('NOME').AsString;
end;

procedure TCAD_FM_C_PAR.txtCodPagButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CPG.Visible:= false;
  PSQ_FM_X_CPG := TPSQ_FM_X_CPG(Self);
  PSQ_FM_X_CPG.ShowModal;
  if not PSQ_FM_X_CPG.BUS_CD_C_CPG.IsEmpty then
    begin
      dmgeral.CAD_CD_C_PAR_CPGid_condicao_pag.AsInteger :=
        PSQ_FM_X_CPG.BUS_CD_C_CPG.FieldByName('id_condicao_pag').AsInteger;
    end;

end;

procedure TCAD_FM_C_PAR.txtCodPagExit(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_PAR_CPG.FieldByName('id_empresa').AsInteger := dmGeral.CAD_CD_C_PARid_empresa.AsInteger;
end;

procedure TCAD_FM_C_PAR.txtEtqtecButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
   PSQ_FM_X_ITE.ShowModal;
      if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
         begin
           dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').AsInteger :=
               PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

           dmGeral.CAD_CD_C_PAR_CTR.FieldByName('int_nomeitesobmed').Text :=
              PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_ITE.Free;
end;

procedure TCAD_FM_C_PAR.txtEtqtecExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_ITE.Close;
  dmGeral.BUS_CD_C_ITE.Data :=
            dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([
            0, dmGeral.CAD_CD_C_PAR_CTRpcp_id_item_sob_medida.Text]));
  if dmGeral.BUS_CD_C_ITE.IsEmpty then
     begin
       ShowMessage('Item não encontrado.');
       txtEtqtec.SetFocus;
       dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_item_sob_medida').Text := '';
       dmGeral.CAD_CD_C_PAR_CTR.FieldByName('int_nomeitesobmed').Text  := '';
       exit;
     end;

  dmGeral.CAD_CD_C_PAR_CTR.FieldByName('int_nomeitesobmed').Text :=
       dmGeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;


end;

procedure TCAD_FM_C_PAR.txtFornecedorButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
   PSQ_FM_X_FOR.ShowModal;
      if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
         begin
           dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PDE_ID_FORNECEDOR').AsString :=
                PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString;

           dmGeral.CAD_CD_C_PAR_CTR.FieldByName('INT_PDEFORNECEDOR').AsString :=
                PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_FOR.Free;
end;

procedure TCAD_FM_C_PAR.txtFornecedorExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;
  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PDE_ID_FORNECEDOR').AsInteger > 0 then
    begin
      dmGeral.BusFornecedor(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PDE_ID_FORNECEDOR').AsString);

      dmGeral.CAD_CD_C_PAR_CTR.FieldByName('INT_PDEFORNECEDOR').AsString :=
          dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;

     if not dmgeral.CAD_CD_C_FOR_TesValObrigatorio(dmGeral.BUS_CD_C_FOR) then
        begin
          dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PDE_ID_FORNECEDOR').AsString := '';
          txtDescFornecedor.Caption := '';
          txtfornecedor.SetFocus;
          exit;
        end;
    end
  else
    begin
      dmGeral.CAD_CD_C_PAR_CTR.FieldByName('INT_PDEFORNECEDOR').AsString := '';
      dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PDE_ID_FORNECEDOR').AsString := '';
    end;
end;

procedure TCAD_FM_C_PAR.txtFornecedorMovBanButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
   PSQ_FM_X_FOR.ShowModal;
      if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
         begin
           dmGeral.CAD_CD_C_PAR_CTR.FieldByName('MVB_ID_FORNECEDOR').AsString :=
                PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString;

           txtDescForMovBan.Text :=
                PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_FOR.Free;
end;

procedure TCAD_FM_C_PAR.txtFornecedorMovBanExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  txtDescForMovBan.Text := '';

  if  ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('MVB_ID_FORNECEDOR').AsString <> '')   AND
       (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('MVB_ID_FORNECEDOR').AsInteger > 0)) then
    begin
      dmGeral.BusFornecedor(0,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('MVB_ID_FORNECEDOR').AsString);

      txtDescForMovBan.Text :=
          dmGeral.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;

      if not dmgeral.CAD_CD_C_FOR_TesValObrigatorio(dmGeral.BUS_CD_C_FOR) then
        begin
          dmGeral.CAD_CD_C_PAR_CTR.FieldByName('MBV_ID_FORNECEDOR').AsString := '';
          txtDescForMovBan.Text := '';
          txtFornecedorMovBan.SetFocus;
          exit;
        end;
    end
  else
    begin
      dmGeral.CAD_CD_C_PAR_CTR.FieldByName('MVB_ID_FORNECEDOR').AsString := '';
    end;
end;

procedure TCAD_FM_C_PAR.txtLayoutSefKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TCAD_FM_C_PAR.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCAD_FM_C_PAR.txtRelEmailExit(Sender: TObject);
var
  email:String;
begin
  inherited;

  if dgRelEmail.Focused then
     begin
       exit;
     end;


  if trim(dmGeral.CAD_CD_C_PAR_EML.FieldByName('EMAIL').AsString)='' then
    begin
      ShowMessage('Email deve ser preenchido.');
      txtRelEmail.SetFocus;
      exit;
    end;

  email := trim(dmGeral.CAD_CD_C_PAR_EML.FieldByName('EMAIL').AsString);

  dmGeral.CAD_CD_C_PAR_EML.Cancel;

  if dmGeral.CAD_CD_C_PAR_EML.Locate('EMAIL',EMAIL,[]) then
    begin
      ShowMessage('Email já existente.');
      dmGeral.CAD_CD_C_PAR_EML.Insert;
      txtRelEmail.SetFocus;
      exit;
    end
  else
    begin
      dmGeral.CAD_CD_C_PAR_EML.Insert;
      dmGeral.CAD_CD_C_PAR_EML.FieldByName('EMAIL').AsString := email;
      dmGeral.CAD_CD_C_PAR_EML.Post;
    end;

  pnlRelEmail.Enabled := false;
  btnAddEmail.SetFocus;

end;

procedure TCAD_FM_C_PAR.txtSequenciaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if grdParSer.Focused or txtSerie.Focused then
     begin
       exit;
     end;

  dmGeral.CAD_CD_C_PAR_SER.Post;

  pnParSer.Enabled := false;

  ActiveControl := nil;
  PostMessage(btn_Add_Ser.Handle, WM_SETFOCUS, 0, 0);
  btn_Add_Ser.SetFocus;
end;

procedure TCAD_FM_C_PAR.txtTipoSerieNfeExit(Sender: TObject);
var
  serie: String;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if grdParSer.Focused or txtSerie.Focused then
     begin
       exit;
     end;

  if dmGeral.CAD_CD_C_PAR_SER.State in [dsInsert] then
     begin
       serie := dmGeral.CAD_CD_C_PAR_SERnfe_serie.AsString;
       dmGeral.CAD_CD_C_PAR_SER.Cancel;
       if dmGeral.CAD_CD_C_PAR_SER.Locate('NFE_SERIE',serie,[]) then
          begin
            ShowMessage('Série já informada.');
            dmGeral.CAD_CD_C_PAR_SER.Insert;
            pnParSer.Enabled := true;
            txtSerie.SetFocus;
            exit;
          end
       else
          begin
            dmGeral.CAD_CD_C_PAR_SER.Insert;
            pnParSer.Enabled := true;
            dmGeral.CAD_CD_C_PAR_SERnfe_serie.AsString := serie;

            ActiveControl := nil;
            PostMessage(txtSequencia.Handle, WM_SETFOCUS, 0, 0);
            txtSequencia.SetFocus;
          end;
     end;
end;

procedure TCAD_FM_C_PAR.wwDBLookupCombo1Enter(Sender: TObject);
begin
  inherited;
 dmGeral.BusTipoEstoque2(1,'%');
end;

procedure TCAD_FM_C_PAR.cbbPedTipoMovEstRepEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusTipoEstoque(1,'%');
  cbbPedTipoMovEstRep.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbOpbTipoMovEstSaiEnter(Sender: TObject);
begin
  inherited;
  BusTipoEstoque5(4,'1');
  cbbOpbTipoMovEstSai.DropDown;
end;

procedure TCAD_FM_C_PAR.grdBxaRecNEmpDblClick(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_PAR_BXR.Edit;
  dmGeral.CAD_CD_C_PAR_BXR.Post;
  dmGeral.CAD_CD_C_PAR_BXR.Edit;
end;

procedure TCAD_FM_C_PAR.grdRstMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
//  dmGeral.CAD_CD_C_PAR_RST.Edit;
end;

procedure TCAD_FM_C_PAR.pnlRelEmailExit(Sender: TObject);
begin
  inherited;
  if (btnAddEmail.Focused) or (dgRelEmail.Focused) or
     (not btnDelIButton.Enabled) then
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
        finally
           pnlRelEmail.Enabled := false;
        end;
      end;
end;

procedure TCAD_FM_C_PAR.grdParBxpButtonClick(Sender: TObject);
begin
  inherited;
  {try
     grdParBxpButton.Enabled := false;
     if dmGeral.CAD_CD_C_PAR_BXP.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_PAR_BXP.Delete;
     dmGeral.CAD_CD_C_PAR_BXP.Edit;
  finally
    grdParBxpButton.Enabled := true;
  end;    }
end;

procedure TCAD_FM_C_PAR.grdBxaNEmpDblClick(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_PAR_BXP.Edit;
  dmGeral.CAD_CD_C_PAR_BXP.Post;
  dmGeral.CAD_CD_C_PAR_BXP.Edit;
end;

procedure TCAD_FM_C_PAR.cbbRCRPlanoContasEnter(Sender: TObject);
begin
  inherited;
   dmGeral.BusPlanoCtaExp12(92,'1');
   cbbRCRPlanoContas.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbMaquinetaPadraoEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusMaquineta(1,'%');
  cbbMaquinetaPadrao.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbMetodoAproEnter(Sender: TObject);
begin
  inherited;
  cbbMetodoApro.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbPlanoContasSangCredEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp3(92,'2');
  cbbPlanoContasSangCred.DropDown;
end;

procedure TCAD_FM_C_PAR.cbbPlanoContasSangEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusPlanoCtaExp2(92,'2');
  cbbPlanoContasSang.DropDown;
end;

end.
