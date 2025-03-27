unit PCP_UN_M_ORS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls,
  cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, vcl.wwdblook, JvExExtCtrls,
  JvExtComponent, JvPanel, JvExStdCtrls, JvEdit, JvValidateEdit, frxClass,
  frxDBSet, frxExportXLS, frxExportPDF, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, vcl.Wwdbedit, Datasnap.DBClient,System.IniFiles,
  Data.DBXDataSnap, IPPeerClient, Data.DBXCommon, Data.SqlExpr,
  Datasnap.DSConnect;

type
  TPCP_FM_M_ORS = class(TPAD_FM_X_PAD)
    lblEmissao: TLabel;
    lblResponsavel: TLabel;
    txtResponsavelNome: TDBEdit;
    lblObservacao: TLabel;
    txtObservacao: TDBEdit;
    GroupBox1: TGroupBox;
    dgItems: TwwDBGrid;
    dsoItens: TwwDataSource;
    dsoTitulos: TwwDataSource;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    lblCod: TLabel;
    txtcod: TDBEdit;
    txtPedido: TJvDBComboEdit;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    lblEntradas: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    dgFormaPagamento: TwwDBGrid;
    dgFormaPagamentoIButton: TwwIButton;
    txtVlrEntrada: TJvValidateEdit;
    txtFpgEntrada: TJvComboEdit;
    txtGerFpg: TJvComboEdit;
    txtQtdeParc: TEdit;
    pnTitulos: TPanel;
    lblFormaPagamento: TLabel;
    cbbFormaPagamento: TwwDBLookupCombo;
    txtDias: TDBEdit;
    lblDias: TLabel;
    lblVencimento: TLabel;
    Label4: TLabel;
    btnAddFormaPagamento: TBitBtn;
    PCP_PD_M_ORS: TfrxPDFExport;
    PCP_XL_M_ORS: TfrxXLSExport;
    PCP_DB_M_ORS: TfrxDBDataset;
    PCP_DB_M_ORS_ITE: TfrxDBDataset;
    PCP_DB_M_ORS_TIT: TfrxDBDataset;
    dpkEmissao: TDBEdit;
    txtCliente: TDBEdit;
    cbbMotorista: TwwDBLookupCombo;
    lblMotorista: TLabel;
    btnImprimeOrdFat: TcxButton;
    PCP_XL_M_ROM: TfrxXLSExport;
    PCP_PD_M_ROM: TfrxPDFExport;
    PCP_DB_M_ROM: TfrxDBDataset;
    PCP_DB_M_ROM_PED: TfrxDBDataset;
    PCP_DB_M_ROM_ITE: TfrxDBDataset;
    PCP_DB_M_ROM_LOT: TfrxDBDataset;
    PCP_DB_M_ROM_REG: TfrxDBDataset;
    BUS_DB_M_ROM_PED: TfrxDBDataset;
    PCP_FR_M_ROM: TfrxReport;
    txtVencimento: TDBEdit;
    txtVlrTitulos: TwwDBEdit;
    Label2: TLabel;
    txtDataRom: TDBEdit;
    txtRomaneio: TDBEdit;
    txtRespRom: TDBEdit;
    Label5: TLabel;
    Label7: TLabel;
    frxReport1: TfrxReport;
    PCP_FR_M_ORS: TfrxReport;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label13: TLabel;
    BUS_CD_M_ROM_PED_ICF: TClientDataSet;
    GroupBox3: TGroupBox;
    dgItensConf: TwwDBGrid;
    dsItensConf: TwwDataSource;
    ConexaoBDFat: TSQLConnection;
    Label14: TLabel;
    txtRepresentante: TDBEdit;
    pcConecaoDBFat: TDSProviderConnection;
    BUS_CD_M_NFE_CXA_FAT: TClientDataSet;
    BUS_CD_M_NFE_CXA_FATid_fiscal: TIntegerField;
    BUS_CD_M_NFE_CXA_FATid_almoxarifado: TIntegerField;
    BUS_CD_M_NFE_CXA_FATid_pedido_compra: TIntegerField;
    BUS_CD_M_NFE_CXA_FATid_condicao_pag: TIntegerField;
    BUS_CD_M_NFE_CXA_FATid_empresa: TIntegerField;
    BUS_CD_M_NFE_CXA_FATid_emitente: TIntegerField;
    BUS_CD_M_NFE_CXA_FATid_cfo: TWideStringField;
    BUS_CD_M_NFE_CXA_FATid_transportadora: TIntegerField;
    BUS_CD_M_NFE_CXA_FATid_tipo_mov_estoque: TIntegerField;
    BUS_CD_M_NFE_CXA_FATuf_emitente: TWideStringField;
    BUS_CD_M_NFE_CXA_FATuf_empresa: TWideStringField;
    BUS_CD_M_NFE_CXA_FATdta_emissao: TDateField;
    BUS_CD_M_NFE_CXA_FATdta_documento: TDateField;
    BUS_CD_M_NFE_CXA_FATcpf_cnpj: TWideStringField;
    BUS_CD_M_NFE_CXA_FATnumero: TIntegerField;
    BUS_CD_M_NFE_CXA_FATserie: TWideStringField;
    BUS_CD_M_NFE_CXA_FATsub_serie: TWideStringField;
    BUS_CD_M_NFE_CXA_FATmodelo: TWideStringField;
    BUS_CD_M_NFE_CXA_FATstatus: TIntegerField;
    BUS_CD_M_NFE_CXA_FATnfe_ecf: TIntegerField;
    BUS_CD_M_NFE_CXA_FATecf_prevenda: TIntegerField;
    BUS_CD_M_NFE_CXA_FATid_fiscal_referenciado: TIntegerField;
    BUS_CD_M_NFE_CXA_FATcanc_motivo: TWideStringField;
    BUS_CD_M_NFE_CXA_FATcanc_data: TDateField;
    BUS_CD_M_NFE_CXA_FATpeso_liquido: TFloatField;
    BUS_CD_M_NFE_CXA_FATpeso_bruto: TFloatField;
    BUS_CD_M_NFE_CXA_FATnfe_chave: TWideStringField;
    BUS_CD_M_NFE_CXA_FATnfe_obs: TWideStringField;
    BUS_CD_M_NFE_CXA_FATnfe_protocolo: TWideStringField;
    BUS_CD_M_NFE_CXA_FATnfe_recibo: TWideStringField;
    BUS_CD_M_NFE_CXA_FATnfe_canc_protocolo: TWideStringField;
    BUS_CD_M_NFE_CXA_FATnfe_canc_status: TWideStringField;
    BUS_CD_M_NFE_CXA_FATnfe_tipo_emissao: TWideStringField;
    BUS_CD_M_NFE_CXA_FATnfe_tipo_ambiente: TWideStringField;
    BUS_CD_M_NFE_CXA_FATnfe_cod_sit: TWideStringField;
    BUS_CD_M_NFE_CXA_FATind_operacao: TIntegerField;
    BUS_CD_M_NFE_CXA_FATind_emitente: TIntegerField;
    BUS_CD_M_NFE_CXA_FATind_frete: TIntegerField;
    BUS_CD_M_NFE_CXA_FATvlr_mercadoria: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATvlr_desconto: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATvlr_acrescimo: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATvlr_liquido: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATicm_n_valor: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATicm_n_base: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATicm_s_valor: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATicm_s_base: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATipi_base: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATipi_valor: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATiss_base: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATiss_valor: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATfre_base: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATfre_valor: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATpis_valor: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATpis_valor_st: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATcof_valor: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATcof_valor_st: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATvlr_isenta: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATvlr_outras: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATvlr_seguro: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATtipo_nf: TWideStringField;
    BUS_CD_M_NFE_CXA_FATecf_serial_impressora: TWideStringField;
    BUS_CD_M_NFE_CXA_FATecf_marca_impressora: TWideStringField;
    BUS_CD_M_NFE_CXA_FATecf_modelo_impressora: TWideStringField;
    BUS_CD_M_NFE_CXA_FATecf_caixa: TWideStringField;
    BUS_CD_M_NFE_CXA_FATdta_movimento: TDateField;
    BUS_CD_M_NFE_CXA_FATorigem_nf: TWideStringField;
    BUS_CD_M_NFE_CXA_FATfaturada: TBooleanField;
    BUS_CD_M_NFE_CXA_FATsituacao_inspecao: TIntegerField;
    BUS_CD_M_NFE_CXA_FATid_fiscal_frete: TIntegerField;
    BUS_CD_M_NFE_CXA_FATid_pedido_venda: TIntegerField;
    BUS_CD_M_NFE_CXA_FATvlr_outras_desp: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATfre_custo: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATvlr_icm_ser_nao_incide: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATcof_base: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATpis_base: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATposvenda: TBooleanField;
    BUS_CD_M_NFE_CXA_FATid_responsavel: TIntegerField;
    BUS_CD_M_NFE_CXA_FATint_id_perfil_cli: TIntegerField;
    BUS_CD_M_NFE_CXA_FATint_nfeecf: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATint_nometme: TWideStringField;
    BUS_CD_M_NFE_CXA_FATint_nomeope: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATint_nomecpg: TWideStringField;
    BUS_CD_M_NFE_CXA_FATint_nomevnd: TWideStringField;
    BUS_CD_M_NFE_CXA_FATint_nomeres: TWideStringField;
    BUS_CD_M_NFE_CXA_FATid_vendedor: TIntegerField;
    BUS_CD_M_NFE_CXA_FATcod_lme: TWideStringField;
    BUS_CD_M_NFE_CXA_FATrev_lme: TWideStringField;
    BUS_CD_M_NFE_CXA_FATint_nometra: TWideStringField;
    BUS_CD_M_NFE_CXA_FATint_endtra: TWideStringField;
    BUS_CD_M_NFE_CXA_FATint_cidtra: TWideStringField;
    BUS_CD_M_NFE_CXA_FATint_esttra: TWideStringField;
    BUS_CD_M_NFE_CXA_FATint_cnptra: TWideStringField;
    BUS_CD_M_NFE_CXA_FATint_instra: TWideStringField;
    BUS_CD_M_NFE_CXA_FATtipo_cte: TIntegerField;
    BUS_CD_M_NFE_CXA_FATnfe_finalidade: TIntegerField;
    BUS_CD_M_NFE_CXA_FATpath_xml: TWideStringField;
    BUS_CD_M_NFE_CXA_FATnfref_chave: TWideStringField;
    BUS_CD_M_NFE_CXA_FATint_cnpjcpf: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATint_pessoa: TIntegerField;
    BUS_CD_M_NFE_CXA_FATint_telefone: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATint_doc_ie: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATint_email: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATint_cep: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATint_endereco: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATint_estado: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATint_bairro: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATint_numero: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATint_complemento: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATint_cod_cidade: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATint_nom_cidade: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATimp_valor: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATtri_valor: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATtra_placa: TWideStringField;
    BUS_CD_M_NFE_CXA_FATtra_uf: TWideStringField;
    BUS_CD_M_NFE_CXA_FATtra_rntc: TWideStringField;
    BUS_CD_M_NFE_CXA_FATtra_qtde_vol: TFloatField;
    BUS_CD_M_NFE_CXA_FATtra_especie: TWideStringField;
    BUS_CD_M_NFE_CXA_FATtra_marca: TWideStringField;
    BUS_CD_M_NFE_CXA_FATtra_num_vol: TWideStringField;
    BUS_CD_M_NFE_CXA_FATint_indpag: TIntegerField;
    BUS_CD_M_NFE_CXA_FATint_cod_pais: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATint_nom_pais: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATid_iqm: TIntegerField;
    BUS_CD_M_NFE_CXA_FATint_nomeemp: TWideStringField;
    BUS_CD_M_NFE_CXA_FATFAT_SQ_M_NFE_NFF: TDataSetField;
    BUS_CD_M_NFE_CXA_FATFAT_SQ_M_NFE_DEV: TDataSetField;
    BUS_CD_M_NFE_CXA_FATFAT_SQ_M_NFE_TIT: TDataSetField;
    BUS_CD_M_NFE_CXA_FATFAT_SQ_M_NFE_ITE: TDataSetField;
    BUS_CD_M_NFE_CXA_FATid_abertura: TIntegerField;
    BUS_CD_M_NFE_CXA_FATlegenda: TWideStringField;
    BUS_CD_M_NFE_CXA_FATint_classe: TWideStringField;
    BUS_CD_M_NFE_CXA_FATprevenda: TBooleanField;
    BUS_CD_M_NFE_CXA_FATid_ordem: TIntegerField;
    BUS_CD_M_NFE_CXA_FATcanc_usuario: TIntegerField;
    BUS_CD_M_NFE_CXA_FATvenctos_origem: TWideStringField;
    BUS_CD_M_NFE_CXA_FATint_baitra: TWideStringField;
    BUS_CD_M_NFE_CXA_FATint_descnat: TWideStringField;
    BUS_CD_M_NFE_CXA_FATint_nomeemi: TWideStringField;
    BUS_CD_M_NFE_CXA_FATnro_termo: TIntegerField;
    BUS_CD_M_NFE_CXA_FATint_descnfecodsit: TWideStringField;
    BUS_CD_M_NFE_CXA_FATind_nf: TIntegerField;
    BUS_CD_M_NFE_CXA_FATint_tipofinal: TIntegerField;
    BUS_CD_M_NFE_CXA_FATint_contribuinte: TIntegerField;
    BUS_CD_M_NFE_CXA_FATvlr_part_dest: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATvlr_part_orig: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATvlr_icm_desc: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATid_ors: TIntegerField;
    BUS_CD_M_NFE_CXA_FATvlr_fcp: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATint_doc_ip: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATdi_estrangeiro: TWideStringField;
    BUS_CD_M_NFE_CXA_FATid_fiscal_ref_comp: TIntegerField;
    BUS_CD_M_NFE_CXA_FATid_ordem_gar: TIntegerField;
    BUS_CD_M_NFE_CXA_FATid_seq_fat_gar: TIntegerField;
    BUS_CD_M_NFE_CXA_FATdis_icm_dispensado: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATped_mod_frete: TIntegerField;
    BUS_CD_M_NFE_CXA_FATped_vlr_frete: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATint_doc_im: TWideMemoField;
    BUS_CD_M_NFE_CXA_FATnum_rps: TIntegerField;
    BUS_CD_M_NFE_CXA_FATFAT_SQ_M_NFE_ARQ: TDataSetField;
    BUS_CD_M_NFE_CXA_FATint_natope_nfe: TWideStringField;
    BUS_CD_M_NFE_CXA_FATiss_valor_retido: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATint_substituto_tributario: TBooleanField;
    BUS_CD_M_NFE_CXA_FATqtde_volume: TFloatField;
    BUS_CD_M_NFE_CXA_FATint_tot_vlr_bruto: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATint_tot_vlr_liquido: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATvlr_fcp_ope_int: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATvlr_fcp_st_ope_int: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATvlr_fcp_st_ret_ope_int: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATid_pedido_prod_1: TIntegerField;
    BUS_CD_M_NFE_CXA_FATvlr_liquido_ped_prod_1: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATid_pedido_prod_2: TIntegerField;
    BUS_CD_M_NFE_CXA_FATvlr_liquido_ped_prod_2: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATid_pedido_prod_3: TIntegerField;
    BUS_CD_M_NFE_CXA_FATvlr_liquido_ped_prod_3: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATid_pedido_prod_4: TIntegerField;
    BUS_CD_M_NFE_CXA_FATvlr_liquido_ped_prod_4: TFMTBCDField;
    BUS_CD_M_NFE_CXA_FATid_pedido_prod_5: TIntegerField;
    BUS_CD_M_NFE_CXA_FATvlr_liquido_ped_prod_5: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FAT: TClientDataSet;
    BUS_CD_M_NFE_ITE_CXA_FATid_fiscal: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATid_sequencia: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATid_item: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATid_inf_fisco: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATid_cfo: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATid_st_icm: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATqtde: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATqtde_devolvida: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_unitario: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_mercadoria: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATper_desconto: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_desconto: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_custo: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_liquido: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_outras: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_isenta: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_seguro: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATicm_n_aliquota: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATicm_per_reducao: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATicm_n_base: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATicm_n_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATicm_s_base: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATicm_s_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATipi_base: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATipi_aliquota: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATipi_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATiss_base: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATiss_aliquota: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATiss_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATfre_base: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATfre_percentual: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATfre_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATpis_base: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATpis_aliquota: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATpis_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATcof_base: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATcof_aliquota: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATcof_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATpeso_liquido: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATpeso_bruto: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATnro_pedido: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATcof_valor_st: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATimp_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_icm_ser_nao_incide: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_outras_desp: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATpis_valor_st: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATicm_n_dif_aliq: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATicm_n_vlr_dif_aliq: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATpara_analise_raa: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATfre_dif_aliq_icm: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATfre_vlr_dif_icm: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATfre_custo: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATorigem_mercadoria: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATid_cor: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATid_tamanho: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATint_desc_item: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATint_und_venda: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATid_busca_item: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATid_tributo: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATnum_lote: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATint_nomecor: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATint_nometam: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATid_st_pis: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATid_st_cof: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATid_st_ipi: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATint_id_ncm: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATtri_valor: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATtri_indice: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATicm_s_vlr_mva: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATicm_s_per_mva: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATid_sequencia_ite_cmp_ped: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATimp_base_calculo: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATimp_desp_aduana: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATimp_iof: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATdi_numero: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATdi_data: TDateField;
    BUS_CD_M_NFE_ITE_CXA_FATdi_local_desemb: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATdi_uf_desemb: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATdi_data_desemb: TDateField;
    BUS_CD_M_NFE_ITE_CXA_FATdi_exportador: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATdi_numero_adicao: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATdi_seq_adicao: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATdi_fabricante: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATdi_vlr_desconto: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATdi_fci: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATid_sequencia_ite_iqm: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATint_sldqtde: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATid_sequencia_ite_xml: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATint_tipo_item: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_acrescimo: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATint_ncmperimposto: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_unitario_orig: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATint_cod_onu: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_part_dest: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_part_orig: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_icm_desc: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATint_cest_ncm: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATpart_per_aliq_dest: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATpart_per_part_orig: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATpart_per_part_dest: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATper_fcp: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATint_id_grupo: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATint_part_perc_fcp: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATpart_per_red_int_dest: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_vlr_tot_custo_fix_mens: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_vlr_ven_med_mens: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_per_cust_ven_mens: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_per_icms_ven: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_per_simples: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_per_comissao: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_per_frete_ven: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_per_cust_fin_ven: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_per_lucro_ven: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_per_total_incid: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_per_markup_div: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_per_markup_mult: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_vlr_prc_ven_calc: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_vlr_prc_ven_prat: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_calculado: TBooleanField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_vlr_prc_prz_ven_prat: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATfp_per_prc_prz_ven_prat: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATid_fiscal_dev: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATdre_perc_out_ded_ven: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATdre_perc_ircs: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATint_origem: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATint_rt_composicao: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATint_rt_registro: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATdta_vencimento: TDateField;
    BUS_CD_M_NFE_ITE_CXA_FATdi_draw: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATdi_tp_viatransp: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATdi_tp_intermedio: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATint_cod_fabrica: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATint_cod_fab_danfe: TBooleanField;
    BUS_CD_M_NFE_ITE_CXA_FATdis_aliquota: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATdis_icm_dispensado: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATmotivo_icms_des: TIntegerField;
    BUS_CD_M_NFE_ITE_CXA_FATiss_valor_retido: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_base_icms_dest: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp_ope_int: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATper_fcp_ope_int: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp_base_ope_int: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp_st_ope_int: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATper_fcp_st_ope_int: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp_st_base_ope_int: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATper_st_sup_cons_final_ope_int: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp_st_ret_ope_int: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATper_fcp_st_ret_ope_int: TFloatField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp_st_ret_base_ope_int: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATvlr_fcp_base_uf_dest: TFMTBCDField;
    BUS_CD_M_NFE_ITE_CXA_FATint_cod_barra: TWideStringField;
    BUS_CD_M_NFE_ITE_CXA_FATint_sgq_person: TBooleanField;
    BUS_CD_M_NFE_ITE_CXA_FATpcp_obs_item: TWideStringField;
    BUS_CD_M_NFE_TIT_CXA_FAT: TClientDataSet;
    BUS_CD_M_NFE_TIT_CXA_FATid_fiscal: TIntegerField;
    BUS_CD_M_NFE_TIT_CXA_FATid_nfe_tit: TIntegerField;
    BUS_CD_M_NFE_TIT_CXA_FATid_forma_pag: TIntegerField;
    BUS_CD_M_NFE_TIT_CXA_FATnum_parcela: TWideStringField;
    BUS_CD_M_NFE_TIT_CXA_FATdias: TIntegerField;
    BUS_CD_M_NFE_TIT_CXA_FATdta_vencimento: TDateField;
    BUS_CD_M_NFE_TIT_CXA_FATvlr_titulo: TFMTBCDField;
    BUS_CD_M_NFE_TIT_CXA_FATid_plano: TWideStringField;
    BUS_CD_M_NFE_TIT_CXA_FATid_ccusto: TIntegerField;
    BUS_CD_M_NFE_TIT_CXA_FATche_banco: TWideStringField;
    BUS_CD_M_NFE_TIT_CXA_FATche_agencia: TWideStringField;
    BUS_CD_M_NFE_TIT_CXA_FATche_conta: TIntegerField;
    BUS_CD_M_NFE_TIT_CXA_FATche_numero: TIntegerField;
    BUS_CD_M_NFE_TIT_CXA_FATche_emitente: TWideStringField;
    BUS_CD_M_NFE_TIT_CXA_FATint_nomefpg: TWideStringField;
    BUS_CD_M_NFE_TIT_CXA_FATint_nomepct: TWideStringField;
    BUS_CD_M_NFE_TIT_CXA_FATint_nomeccu: TWideStringField;
    BUS_CD_M_NFE_TIT_CXA_FAThistorico_pag: TWideStringField;
    BUS_CD_M_NFE_TIT_CXA_FATint_tipopgto: TIntegerField;
    BUS_CD_M_NFE_TIT_CXA_FATid_maquineta: TIntegerField;
    BUS_CD_M_NFE_TIT_CXA_FATint_carbandeira: TWideStringField;
    BUS_CD_M_NFE_TIT_CXA_FATint_docimpresso: TIntegerField;
    BUS_CD_M_NFE_TIT_CXA_FATint_cnpj_ccr: TWideStringField;
    BUS_CD_M_NFE_TIT_CXA_FATint_nomemaq: TWideStringField;
    BUS_CD_M_NFE_TIT_CXA_FATint_cardebcre: TIntegerField;
    FIN_CD_M_REC_FAT: TClientDataSet;
    FIN_CD_M_REC_FATid_empresa: TIntegerField;
    FIN_CD_M_REC_FAThistorico: TWideStringField;
    FIN_CD_M_REC_FATid_titulo: TIntegerField;
    FIN_CD_M_REC_FATid_cliente: TIntegerField;
    FIN_CD_M_REC_FATnum_parcela: TWideStringField;
    FIN_CD_M_REC_FATdta_emissao: TDateField;
    FIN_CD_M_REC_FATvlr_parcela: TFMTBCDField;
    FIN_CD_M_REC_FATvlr_original: TFMTBCDField;
    FIN_CD_M_REC_FATdta_vencimento: TDateField;
    FIN_CD_M_REC_FATdta_original: TDateField;
    FIN_CD_M_REC_FATvlr_saldo: TFMTBCDField;
    FIN_CD_M_REC_FATid_fiscal: TIntegerField;
    FIN_CD_M_REC_FATorigem: TIntegerField;
    FIN_CD_M_REC_FATid_forma_pag: TIntegerField;
    FIN_CD_M_REC_FATche_conta: TIntegerField;
    FIN_CD_M_REC_FATche_cheque: TIntegerField;
    FIN_CD_M_REC_FATche_banco: TWideStringField;
    FIN_CD_M_REC_FATche_emitente: TWideStringField;
    FIN_CD_M_REC_FATche_agencia: TWideStringField;
    FIN_CD_M_REC_FATtipo_lancamento: TIntegerField;
    FIN_CD_M_REC_FATid_local_titulo: TIntegerField;
    FIN_CD_M_REC_FATid_plano: TWideStringField;
    FIN_CD_M_REC_FATint_nomecli: TWideStringField;
    FIN_CD_M_REC_FATint_nomefpg: TWideStringField;
    FIN_CD_M_REC_FATint_nomelto: TWideStringField;
    FIN_CD_M_REC_FATint_nomepct: TWideStringField;
    FIN_CD_M_REC_FATcod_lme: TWideStringField;
    FIN_CD_M_REC_FATrev_lme: TWideStringField;
    FIN_CD_M_REC_FATcar_taxa: TFloatField;
    FIN_CD_M_REC_FATcar_motivo_can: TWideStringField;
    FIN_CD_M_REC_FATcar_dta_can: TDateField;
    FIN_CD_M_REC_FATbol_nosso_numero: TWideStringField;
    FIN_CD_M_REC_FATint_cnpjcpf: TWideStringField;
    FIN_CD_M_REC_FATint_bairrocob: TWideStringField;
    FIN_CD_M_REC_FATint_endcob: TWideStringField;
    FIN_CD_M_REC_FATint_estadocob: TWideStringField;
    FIN_CD_M_REC_FATint_cepcob: TWideStringField;
    FIN_CD_M_REC_FATint_cidcob: TWideStringField;
    FIN_CD_M_REC_FATint_emailcli: TWideStringField;
    FIN_CD_M_REC_FATseq_nosso_numero: TIntegerField;
    FIN_CD_M_REC_FATbol_chave: TIntegerField;
    FIN_CD_M_REC_FATint_numeronf: TIntegerField;
    FIN_CD_M_REC_FATbol_id_conta: TIntegerField;
    FIN_CD_M_REC_FATcar_taxa_ope: TFloatField;
    FIN_CD_M_REC_FATcar_n_lote_id_resp: TIntegerField;
    FIN_CD_M_REC_FATcar_n_lote_id_conta: TIntegerField;
    FIN_CD_M_REC_FATid_baixa: TIntegerField;
    FIN_CD_M_REC_FATcar_n_lote: TWideStringField;
    FIN_CD_M_REC_FATsituacao_chq: TIntegerField;
    FIN_CD_M_REC_FATid_mch: TIntegerField;
    FIN_CD_M_REC_FATid_vendedor: TIntegerField;
    FIN_CD_M_REC_FATcar_id_maquineta: TIntegerField;
    FIN_CD_M_REC_FATid_credito: TIntegerField;
    FIN_CD_M_REC_FATint_docimpresso: TIntegerField;
    FIN_CD_M_REC_FATbol_banco: TIntegerField;
    FIN_CD_M_REC_FATid_obra: TIntegerField;
    FIN_CD_M_REC_FATdta_venc_original: TDateField;
    FIN_CD_M_REC_FATint_descobra: TWideStringField;
    FIN_CD_M_REC: TClientDataSet;
    FIN_CD_M_RECid_empresa: TIntegerField;
    FIN_CD_M_REChistorico: TWideStringField;
    FIN_CD_M_RECid_titulo: TIntegerField;
    FIN_CD_M_RECid_cliente: TIntegerField;
    FIN_CD_M_RECnum_parcela: TWideStringField;
    FIN_CD_M_RECdta_emissao: TDateField;
    FIN_CD_M_RECvlr_parcela: TFMTBCDField;
    FIN_CD_M_RECvlr_original: TFMTBCDField;
    FIN_CD_M_RECdta_vencimento: TDateField;
    FIN_CD_M_RECdta_original: TDateField;
    FIN_CD_M_RECvlr_saldo: TFMTBCDField;
    FIN_CD_M_RECid_fiscal: TIntegerField;
    FIN_CD_M_RECorigem: TIntegerField;
    FIN_CD_M_RECid_forma_pag: TIntegerField;
    FIN_CD_M_RECche_conta: TIntegerField;
    FIN_CD_M_RECche_cheque: TIntegerField;
    FIN_CD_M_RECche_banco: TWideStringField;
    FIN_CD_M_RECche_emitente: TWideStringField;
    FIN_CD_M_RECche_agencia: TWideStringField;
    FIN_CD_M_RECtipo_lancamento: TIntegerField;
    FIN_CD_M_RECid_local_titulo: TIntegerField;
    FIN_CD_M_RECid_plano: TWideStringField;
    FIN_CD_M_RECint_nomecli: TWideStringField;
    FIN_CD_M_RECint_nomefpg: TWideStringField;
    FIN_CD_M_RECint_nomelto: TWideStringField;
    FIN_CD_M_RECint_nomepct: TWideStringField;
    FIN_CD_M_RECcod_lme: TWideStringField;
    FIN_CD_M_RECrev_lme: TWideStringField;
    FIN_CD_M_RECcar_taxa: TFloatField;
    FIN_CD_M_RECcar_motivo_can: TWideStringField;
    FIN_CD_M_RECcar_dta_can: TDateField;
    FIN_CD_M_RECbol_nosso_numero: TWideStringField;
    FIN_CD_M_RECint_cnpjcpf: TWideStringField;
    FIN_CD_M_RECint_bairrocob: TWideStringField;
    FIN_CD_M_RECint_endcob: TWideStringField;
    FIN_CD_M_RECint_estadocob: TWideStringField;
    FIN_CD_M_RECint_cepcob: TWideStringField;
    FIN_CD_M_RECint_cidcob: TWideStringField;
    FIN_CD_M_RECint_emailcli: TWideStringField;
    FIN_CD_M_RECseq_nosso_numero: TIntegerField;
    FIN_CD_M_RECbol_chave: TIntegerField;
    FIN_CD_M_RECint_numeronf: TIntegerField;
    FIN_CD_M_RECbol_id_conta: TIntegerField;
    FIN_CD_M_RECcar_taxa_ope: TFloatField;
    FIN_CD_M_RECcar_n_lote_id_resp: TIntegerField;
    FIN_CD_M_RECcar_n_lote_id_conta: TIntegerField;
    FIN_CD_M_RECid_baixa: TIntegerField;
    FIN_CD_M_RECcar_n_lote: TWideStringField;
    FIN_CD_M_RECsituacao_chq: TIntegerField;
    FIN_CD_M_RECid_mch: TIntegerField;
    FIN_CD_M_RECid_vendedor: TIntegerField;
    FIN_CD_M_RECcar_id_maquineta: TIntegerField;
    FIN_CD_M_RECid_credito: TIntegerField;
    FIN_CD_M_RECint_docimpresso: TIntegerField;
    FIN_CD_M_RECbol_banco: TIntegerField;
    FIN_CD_M_RECid_obra: TIntegerField;
    FIN_CD_M_RECdta_venc_original: TDateField;
    FIN_CD_M_RECint_descobra: TWideStringField;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAddFormaPagamentoClick(Sender: TObject);
    procedure dgItensIButtonClick(Sender: TObject);
    procedure dgFormaPagamentoIButtonClick(Sender: TObject);
    procedure dgFormaPagamentoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtQtdeExit(Sender: TObject);
    procedure txtFpgEntradaButtonClick(Sender: TObject);
    procedure txtFpgEntradaExit(Sender: TObject);
    procedure txtVlrEntradaExit(Sender: TObject);
    procedure txtGerFpgButtonClick(Sender: TObject);
    procedure txtGerFpgExit(Sender: TObject);
    procedure txtQtdeParcExit(Sender: TObject);
    procedure txtPedidoButtonClick(Sender: TObject);
    procedure txtPedidoExit(Sender: TObject);
    procedure cbbFormaPagamentoEnter(Sender: TObject);
    procedure cbbFormaPagamentoExit(Sender: TObject);
    procedure txtDiasExit(Sender: TObject);
    procedure dpkVencimentoExit(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbMotoristaEnter(Sender: TObject);
    procedure cbbMotoristaExit(Sender: TObject);
    procedure btnImprimeOrdFatClick(Sender: TObject);
    procedure txtVlrTitulosExit(Sender: TObject);
    procedure txtPedidoEnter(Sender: TObject);
    procedure dgFormaPagamentoRowChanged(Sender: TObject);
    procedure txtVencimentoExit(Sender: TObject);
  private
    { Private declarations }
    procedure TestarPedido;
    function  VerificarCaixa: Boolean;
    procedure ExibirFormasPgto;
    procedure PcpValidaOrsFin;
    procedure PcpVerificaTitulosOrs;
    procedure ConectarBancoFat;
  public
    { Public declarations }
    var
      xIdCondicaoPag:Integer;
      xCodPedAnt: integer;
      xIdMotoristaSel: String;
  end;

var
  PCP_FM_M_ORS: TPCP_FM_M_ORS;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE, PSQ_UN_X_FPG, PSQ_UN_X_PED, uProxy, uDmSgq,
  PCP_RN_M_ORS, FAT_RN_M_NFE;

procedure TPCP_FM_M_ORS.acAdicionaExecute(Sender: TObject);
begin
  // Comentado em 09/04/2016 por Maxsuel Victor
     // essa função mudou para a tela PCP_FM_M_ORS_FIN
  //VerificarCaixa;

  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_ORS);

  dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
    dmGeral.BUS_CD_C_FUN.DataRequest(VarArrayOf([0, xFuncionario]));

  dmGeral.PCP_CD_M_ORS.FieldByName('INT_NOMERES').Text :=
    dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString;

  txtpedido.enabled        := true;
  btnImprime.Enabled       :=  false;
  btnImprimeOrdFat.Enabled := false;
  pnTitulos.Enabled := false;
  cbbMotorista.SetFocus;

  // Comentado em 09/04/2016 por Maxsuel Victor
     // essa função mudou para a tela PCP_FM_M_ORS_FIN
  //dmGeral.PCP_CD_M_ORS.FieldByName('id_abertura').AsInteger :=
  //     dmGeral.FIN_CD_M_CXA.FieldByName('id_abertura').AsInteger;

  xIdCondicaoPag := 0;

  if xIdMotoristaSel <> '' then
     begin
       dmGeral.PCP_CD_M_ORS.FieldByName('id_motorista').Text := xIdMotoristaSel;
     end;

end;


procedure TPCP_FM_M_ORS.PcpVerificaTitulosOrs;
begin
   dmGeral.BUS_CD_M_PED_TIT.First;
   while not (dmGeral.BUS_CD_M_PED_TIT.EOF) do
     begin
       if dmGeral.BUS_CD_M_PED_TIT.FieldByName('INT_DOCIMPRESSO').AsInteger in [0,5]  then  //Nenhum ou dinheiro
          begin
            ShowMessage('Há títulos com tipo dinheiro ou nenhum.');
            abort;
          end;
        dmGeral.BUS_CD_M_PED_TIT.Next;
     end;
end;



procedure TPCP_FM_M_ORS.acAlterarExecute(Sender: TObject);
begin
 {  if dmGeral.PCP_CD_M_ORS.FieldByName('fin_gerado').AsBoolean then
    begin
     ShowMessage('Financeiro já gerado.');
     exit;
    end;
  VerificarCaixa;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_ORS) then
      begin
        inherited;
        txtpedido.enabled := false;
        btnImprime.Enabled       :=  false;
        btnImprimeOrdFat.Enabled := false;
        pnTitulos.Enabled := false;
        cbbMotorista.SetFocus;
      end; }
end;

procedure TPCP_FM_M_ORS.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_ORS) then
     begin
       inherited;
       txtpedido.enabled := true;
       btnImprime.Enabled       := true;
       btnImprimeOrdFat.Enabled := true;
       dbGrid.SetFocus;
     end
  else
     begin
       cbbMotorista.SetFocus;
     end;
end;

procedure TPCP_FM_M_ORS.acExcluirExecute(Sender: TObject);
begin
  {VerificarCaixa;
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.PCP_CD_M_ORS); }
end;

procedure TPCP_FM_M_ORS.acGravarExecute(Sender: TObject);
var
  codigo: string;
  vAux: string;
begin
   // if VerificarCaixa then
    // begin
        PCP_RN_M_ORS.PcpValidaOrsFin;

        dmGeral.PCP_CD_M_ORS.FieldByName('ID_ABERTURA').AsInteger :=
                dmGeral.FIN_CD_M_CXA.FieldByName('ID_ABERTURA').AsInteger;
        dmGeral.PCP_CD_M_ORS.FieldByName('fin_gerado').AsBoolean := true;

        Screen.Cursor := crHourGlass;
        try

          codigo := dmGeral.PCP_CD_M_ORS.FieldByName('ID_ORS').AsString;
          DmGeral.Grava(dmGeral.PCP_CD_M_ORS);

          inherited;
          dmGeral.PCP_CD_M_ORS.Close;
          dmGeral.PCP_CD_M_ORS.Data :=
          dmGeral.PCP_CD_M_ORS.DataRequest(
                  VarArrayOf([0, codigo]));
          txtpedido.enabled        := true;
          btnImprime.Enabled       := true;
          btnImprimeOrdFat.Enabled := true;

          xIdMotoristaSel :=  dmGeral.PCP_CD_M_ORS.FieldByName('id_motorista').AsString;

          Screen.Cursor := crHourGlass;


          if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_atualiza_fin_base_prod').AsBoolean then
             begin
                BUS_CD_M_NFE_CXA_FAT.Close;
                    BUS_CD_M_NFE_CXA_FAT.Data :=
                       BUS_CD_M_NFE_CXA_FAT.DataRequest(
                          VarArrayOf([119,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_fat').Text,
                                          dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsString,
                                          dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsString,
                                          dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsString,
                                          dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsString,
                                          dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsString]));

                if not BUS_CD_M_NFE_CXA_FAT.IsEmpty then
                   begin
                     FIN_CD_M_REC_FAT.Close;
                       FIN_CD_M_REC_FAT.Data :=
                         FIN_CD_M_REC_FAT.DataRequest(
                             VarArrayOf([100,dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_fat').Text,
                                          ''''+ BUS_CD_M_NFE_CXA_FAT.FieldByName('id_fiscal').Text+'''']));

                     if not FIN_CD_M_REC_FAT.IsEmpty then
                        begin
                          FatAtualizarFinPcp(2,dmGeral.PCP_CD_M_ORS, FIN_CD_M_REC, FIN_CD_M_REC_FAT, false);
                        end;
                   end;
             end;

        finally
           Screen.Cursor := crDefault;
        end;

    // end;



     { Screen.Cursor := crHourGlass;
        try
          codigo := dmGeral.PCP_CD_M_ORS.FieldByName('ID_ORS').AsString;
          DmGeral.Grava(dmGeral.PCP_CD_M_ORS);
          inherited;
          dmGeral.PCP_CD_M_ORS.Close;
          dmGeral.PCP_CD_M_ORS.Data :=
          dmGeral.PCP_CD_M_ORS.DataRequest(
                  VarArrayOf([0, codigo]));
          txtpedido.enabled        := true;
          btnImprime.Enabled       := true;
          btnImprimeOrdFat.Enabled := true;
          btnGerarFinanceiro.Enabled := true;
        finally
          Screen.Cursor := crDefault;
        end;  }

end;

procedure TPCP_FM_M_ORS.btnAddFormaPagamentoClick(Sender: TObject);
begin
  inherited;
  {  try
      dmgeral.PCP_CD_M_ORS.BeforePost := nil;
      cbbFormaPagamento.Enabled := true;
      dmGeral.PCP_CD_M_ORS_TIT.Insert;
      cbbFormaPagamento.SetFocus;
    finally
      dmgeral.PCP_CD_M_ORS.BeforePost := dmgeral.PCP_CD_M_ORS.BeforePost;
    end;  }

  pnTitulos.Enabled  := true;
  txtDias.ReadOnly := false;
  txtVencimento.ReadOnly := false;

  dmGeral.PCP_CD_M_ORS_TIT.Insert;
  //grdFpg.Enabled := False;
  //grdFpg.Color   := clSilver;
  // txtItem.ReadOnly   := false;
  // txtItem.Color      := $00F9E1DF;
  cbbFormaPagamento.SetFocus;

end;

procedure TPCP_FM_M_ORS.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    if not (txtPesquisa.Text = '') then
      begin
        if cbbPesquisa.ItemIndex = 0 then
          begin
            dmGeral.PCP_CD_M_ORS.Close;
            dmGeral.PCP_CD_M_ORS.Data :=
            dmGeral.PCP_CD_M_ORS.DataRequest(
                    VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
          end
        else
          begin
            dmGeral.PCP_CD_M_ORS.Close;
            dmGeral.PCP_CD_M_ORS.Data :=
            dmGeral.PCP_CD_M_ORS.DataRequest(
                    VarArrayOf([cbbPesquisa.ItemIndex, dmgeral.CAD_CD_C_PARid_empresa.Text,txtPesquisa.Text]));
          end;
      end
    else
      ShowMessage('Ao menos um caracter dever ser informado no filtro de Pesquisa');
  finally
     Screen.Cursor := crDefault;
  end;
end;

function TPCP_FM_M_ORS.VerificarCaixa: Boolean;
begin
  result := true;

  dmGeral.FIN_CD_M_CXA.Close;
  dmGeral.FIN_CD_M_CXA.Data :=
  dmGeral.FIN_CD_M_CXA.DataRequest(
          VarArrayOf([90, IntToStr(xFuncionario), dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));
  if dmGeral.FIN_CD_M_CXA.IsEmpty then
     begin
       ShowMessage('Caixa está fechado!');
       ShowMessage('Não será permitido manipular a ordem de faturamento!');
       dmGeral.FIN_CD_M_CXA.Close;
       result := false;
       abort;
     end
  else
     begin
       if dmGeral.FIN_CD_M_CXA.FieldByName('DTA_ABERTURA').AsDateTime <> xDataSis then
          begin
            ShowMessage('É preciso que abra o caixa com a data do dia!' + #13 +
                        'A data do caixa aberto está diferente da data de hoje!');
            ShowMessage('Não será permitido manipular a ordem de faturamento!');
            dmGeral.FIN_CD_M_CXA.Close;
            result := false;
            abort;
          end;
     end;
end;



procedure TPCP_FM_M_ORS.btnImprimeClick(Sender: TObject);
var
PathImg: String;
LogoEmpresa: TfrxPictureView;
begin

  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

  if dmGeral.PCP_CD_M_ORS.IsEmpty then
     begin
       ShowMessage('Nenhuma ordem de faturmento foi selecionada!');
       exit;
     end;

  if FileExists(PathImg) then
    begin
      LogoEmpresa := TfrxPictureView(PCP_FR_M_ROM.FindObject('imgEmpresa1'));
      if Assigned(LogoEmpresa) then
        LogoEmpresa.Picture.LoadFromFile(PathImg);
    end;

  dmGeral.BUS_CD_M_PCP_ROM.Close;
  dmGeral.BUS_CD_M_PCP_ROM.Data :=
      dmGeral.BUS_CD_M_PCP_ROM.DataRequest(
               VarArrayOf([0, dmGeral.PCP_CD_M_ORS.FieldByName('id_rom').Text]));


   if not PCP_RN_M_ORS.PcpValidarRomOrs(1,dmGeral.BUS_CD_M_PCP_ROM) then
      begin
        dmGeral.BUS_CD_M_PCP_ROM.Close;
        abort;
      end;

  dmgeral.BUS_CD_M_ROM_REG.Close;
  dmGeral.BUS_CD_M_ROM_REG.Data :=
    dmGeral.BUS_CD_M_ROM_REG.DataRequest(
        VarArrayOf([dmGeral.PCP_CD_M_ORS.FieldByName('id_rom').Text]));

  dmgeral.BUS_CD_M_ROM_PED.Close;
  dmGeral.BUS_CD_M_ROM_PED.Data :=
    dmGeral.BUS_CD_M_ROM_PED.DataRequest(
        VarArrayOf([dmGeral.PCP_CD_M_ORS.FieldByName('id_rom').Text]));



  PCP_FR_M_ROM.PrepareReport();
  PCP_FR_M_ROM.ShowReport();

end;

procedure TPCP_FM_M_ORS.btnImprimeOrdFatClick(Sender: TObject);
var
PathImg: String;
LogoEmpresa: TfrxPictureView;
begin
  inherited;
  PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
  if not dmGeral.PCP_CD_M_ORS.IsEmpty then
    begin
      if FileExists(PathImg) then
        begin
          LogoEmpresa := TfrxPictureView(PCP_FR_M_ORS.FindObject('imgEmpresa1'));
          if Assigned(LogoEmpresa) then
            LogoEmpresa.Picture.LoadFromFile(PathImg);
        end;
     // dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_M_ORS.Name,xCodLme,xRevLme,nil);
     // PCP_FR_M_ORS.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

      dmGeral.BUS_CD_M_PED.Close;
      dmGeral.BUS_CD_M_PED.Data :=
        dmGeral.BUS_CD_M_PED.DataRequest(
          VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, dmgeral.PCP_CD_M_ORSid_pedido.Text]));

      PCP_FR_M_ORS.Variables['Valor_Venda'] := QuotedStr(dmGeral.BUS_CD_M_PED.FieldByName('vlr_liquido').Text);
      PCP_FR_M_ORS.Variables['ft_impresso_por'] := QuotedStr(dmGeral.CAD_CD_C_FUN.FieldByName('nome').AsString);
      PCP_FR_M_ORS.Pages[1].Visible := false;
      PCP_FR_M_ORS.PrepareReport();
      PCP_FR_M_ORS.ShowReport();
    end
  else
    begin
      ShowMessage('Nenhuma ordem de faturamento foi selecionada!');
      exit;
    end;
end;

procedure TPCP_FM_M_ORS.cbbFormaPagamentoEnter(Sender: TObject);
begin
  inherited;
  if dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsInteger = 0 then
     begin
       ShowMessage('O código do pedido de venda deve ser informado na ordem de faturamento.');
       txtPedido.SetFocus;
       exit;
     end;

  if xIdCondicaoPag = 0 then  // A vista
      begin
        // Busca as formas de pagamento a vista
        dmGeral.BusFormaPgtos(2,'0');
      end;

  if xIdCondicaoPag = 1 then // A prazo
      begin
        // Busca todas as formas de pagamento: a vista / a prazo
        dmGeral.BusFormaPgtos(4,'''1'',''2'',''3'',''4'',''5'',''7''');
      end;
  cbbFormaPagamento.DropDown;
end;

procedure TPCP_FM_M_ORS.cbbFormaPagamentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (btnAddFormaPagamento.Focused or dgFormaPagamento.Focused) or
     (not ( (txtDias.Focused) or (txtVencimento.Focused) or (txtVlrTitulos.Focused) ))  then
     begin
       exit;
     end;

  if (dmGeral.PCP_CD_M_ORS_TIT.FieldByName('id_forma_pag').text = '')     or
     (dmGeral.PCP_CD_M_ORS_TIT.FieldByName('id_forma_pag').AsInteger = 0) then
     begin
       Showmessage('O campo "Forma de pagamento" deve ser preenchido.');
       cbbFormaPagamento.SetFocus;
       abort;
     end;


  dmGeral.BusFormaPgtos(0,dmGeral.PCP_CD_M_ORS_TIT.FieldByName('id_forma_pag').Text);
  if dmGeral.BUS_CD_C_FPG.IsEmpty then
     begin
       ShowMessage('Forma de pagamento não encontrada.');
       dmGeral.PCP_CD_M_ORS_TIT.FieldByName('id_forma_pag').text := '';
       cbbFormaPagamento.SetFocus;
       abort;
     end;

  dmGeral.PCP_CD_M_ORS_TIT.FieldByName('int_nomefpg').text :=
          dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;

  { doc_impresso :
    0 - nenhum
    1 - duplicata
    2 - promissória
    3 - cartão
    4 - boleto
    5 - dinheiro
    6 - cheque
  }

  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [0] then
     begin
       ShowMessage('Não é permitido forma de pagamento do tipo: Nenhum.');
       dmGeral.PCP_CD_M_ORS_TIT.FieldByName('id_forma_pag').text := '';
       cbbFormaPagamento.SetFocus;
       abort;
     end;

  txtDias.ReadOnly := false;
  txtVencimento.ReadOnly := false;
  if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [5] then
     begin
       dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime := xDataSis;
       txtDias.ReadOnly := true;
       txtVencimento.ReadOnly := true;
     end;
end;

procedure TPCP_FM_M_ORS.cbbMotoristaEnter(Sender: TObject);
begin
  inherited;
  dmSgq.BusMotorista(1,'%');
  cbbMotorista.DropDown;
end;

procedure TPCP_FM_M_ORS.cbbMotoristaExit(Sender: TObject);
begin
  inherited;
  if trim(dmGeral.PCP_CD_M_ORS.FieldByName('id_motorista').Text) = '' then
     begin
      if btnCancelar.Focused or
         btnGrava.Focused  then
         begin
           exit;
         end;
               Showmessage('O campo "Motorista" deve ser preenchido.');
       dmGeral.PCP_CD_M_ORS.FieldByName('id_motorista').Text := '';
       cbbMotorista.SetFocus;
       exit;
     end;
end;

procedure TPCP_FM_M_ORS.cbbPesquisaChange(Sender: TObject);
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




procedure TPCP_FM_M_ORS.ConectarBancoFat;
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

procedure TPCP_FM_M_ORS.dgFormaPagamentoIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgFormaPagamentoIButton.Enabled := False;
     if dmGeral.PCP_CD_M_ORS_TIT.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmGeral.PCP_CD_M_ORS_TIT.Delete;
     dmGeral.PCP_CD_M_ORS_TIT.Edit;
  finally
    dgFormaPagamentoIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_ORS.dgFormaPagamentoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
{  dmGeral.PCP_CD_M_ORS_TIT.Cancel;

  if dmGeral.PCP_CD_M_ORS_TIT.IsEmpty then
     begin
       cbbFormaPagamento.Enabled := True;
       dmGeral.PCP_CD_M_ORS_TIT.Append;
       cbbFormaPagamento.SetFocus;
     end
  else
    begin
     cbbFormaPagamento.Enabled := False;
     dmGeral.PCP_CD_M_ORS_TIT.Edit;
     cbbFormaPagamento.SetFocus;
    end;   }
  txtDias.ReadOnly := false;
  txtVencimento.ReadOnly := false;

  if pnTitulos.Enabled = false then
     pnTitulos.Enabled := true;

  dmGeral.PCP_CD_M_ORS_TIT.cancel;

  if dmGeral.PCP_CD_M_ORS_TIT.IsEmpty then
     begin
       //txtFormaPgto.Enabled := true;
       dmGeral.PCP_CD_M_ORS_TIT.Append;
       pnTitulos.Enabled := true;
       cbbFormaPagamento.SetFocus;
     end
  else
    begin
      dmGeral.PCP_CD_M_ORS_TIT.Edit;

      ExibirFormasPgto;
      if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger in [5] then
         begin
           txtDias.ReadOnly := true;
           txtVencimento.ReadOnly := true;
         end;

      pnTitulos.Enabled := true;

      try
      dmGeral.BUS_CD_C_FPG2.Close;
      dmGeral.BUS_CD_C_FPG2.Data :=
                  dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, dmGeral.PCP_CD_M_ORS_TIT.FieldByName('ID_FORMA_PAG').Text]));

      finally
         dmGeral.BUS_CD_C_FPG2.close;
      end;

      if txtDias.CanFocus then
         txtDias.SetFocus
      else
         txtVlrTitulos.SetFocus;
    end;
end;

procedure TPCP_FM_M_ORS.dgFormaPagamentoRowChanged(Sender: TObject);
begin
  inherited;
  if dmGeral.PCP_CD_M_ORS.State in [dsInsert,dsEdit] then
     ExibirFormasPgto;
end;

procedure TPCP_FM_M_ORS.dgItensIButtonClick(Sender: TObject);
begin
  inherited;
  try
     dgFormaPagamentoIButton.Enabled := False;
     if dmGeral.PCP_CD_M_ORS_ITE.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;

     dmGeral.PCP_CD_M_ORS_ITE.Delete;
     dmGeral.PCP_CD_M_ORS_ITE.Edit;
  finally
    dgFormaPagamentoIButton.Enabled := True;
  end;
end;

procedure TPCP_FM_M_ORS.dpkVencimentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnAddFormaPagamento.Focused or cbbFormaPagamento.Focused or
     txtDias.Focused or dgFormaPagamento.Focused then
     begin
       abort;
     end;

  if not (dmGeral.TesValVencto(dmGeral.PCP_CD_M_ORS.FieldByName('DTA_EMISSAO').AsDateTime,
                               dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime)) then
     begin
       txtVencimento.SetFocus;
       abort;
     end;

   if dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DTA_VENCIMENTO').text <> '' then
     begin
       dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DIAS').Value :=
          dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DTA_VENCIMENTO').AsVariant -
                  dmGeral.PCP_CD_M_ORS.FieldByName('DTA_PEDIDO').AsVariant;
     end;
end;

procedure TPCP_FM_M_ORS.ExibirFormasPgto;
begin
  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
          dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,IntToStr(xIdCondicaoPag)]));

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
      begin
         // Busca as formas de pagamento a vista
         dmGeral.BusFormaPgtos(2,'0');
      end;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
      begin
         // Busca todas as formas de pagamento: a vista / a prazo
         dmGeral.BusFormaPgtos(4,'''1'',''2'',''3'',''4'',''5'',''7''');
      end;
end;

procedure TPCP_FM_M_ORS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.PCP_CD_M_ORS.Close;
  FreeAndNil(PCP_FM_M_ORS);
end;

procedure TPCP_FM_M_ORS.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_ORS.Close;
  dmGeral.PCP_CD_M_ORS.Data := dmGeral.PCP_CD_M_ORS.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_ORS.Open;
  dmGeral.AtualizarGridItens(dgItems,'int_nomeite',10,9);
  dmGeral.AtualizarGridItens(dgItensConf,'int_nomeite',10,9);

end;

procedure TPCP_FM_M_ORS.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.BusFormaPgtos(4,'''1'',''2'',''3'',''4'',''5'',''7''');
  dmSgq.BusMotorista(1,'%');
  xIdCondicaoPag := 0;
  xIdMotoristaSel := '';

  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_atualiza_fin_base_prod').AsBoolean then
     begin
       ConectarBancoFat;
     end;
end;

procedure TPCP_FM_M_ORS.TestarPedido;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    if SMPrincipal.enVerifPedDupOrs(dmgeral.CAD_CD_C_PARid_empresa.Text,dmgeral.PCP_CD_M_ORSid_ors.Text, dmgeral.PCP_CD_M_ORSid_pedido.Text) then
      begin
        ShowMessage('Este pedido já existe em outra ordem de faturamento!');
        txtPedido.text := '';
        dmgeral.PCP_CD_M_ORSid_pedido.Text := '';
        txtPedido.SetFocus;
        abort;
      end;
  finally
    FreeAndNil(SMPrincipal);
  end;
end;

procedure TPCP_FM_M_ORS.txtDiasExit(Sender: TObject);
begin
  inherited;
   if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnAddFormaPagamento.Focused or cbbFormaPagamento.Focused or dgFormaPagamento.Focused then
     begin
       abort;
     end;


  if not (dmGeral.TesValDias(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DIAS').AsInteger)) then
     begin
       txtDias.SetFocus;
       abort;
     end;

  if dmGeral.PCP_CD_M_ORS_TIT.State in [dsInsert,dsEdit] then
     begin
       dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime :=
           dmGeral.PCP_CD_M_ORS.FieldByName('DTA_EMISSAO').AsDateTime +
                   dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DIAS').AsInteger;
     end;
end;

procedure TPCP_FM_M_ORS.txtFpgEntradaButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);

  // Busca as formas de pagamento a vista
  PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
  PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(VarArrayOf([2, 0]));
  PSQ_FM_X_FPG.BUS_CD_C_FPG.Open; // Precisa do Open


  PSQ_FM_X_FPG.ShowModal;
  if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
     begin
       txtFpgEntrada.SetFocus;
       txtFpgEntrada.Text :=
             PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').Text;
     end;
  PSQ_FM_X_FPG.Free;
end;

procedure TPCP_FM_M_ORS.txtFpgEntradaExit(Sender: TObject);
begin
  inherited;
  {if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (trim(txtFpgEntrada.text) <> '') or
     (txtFpgEntrada.Text <> '0') then
     begin
        dmGeral.BusFormaPgtos(0,txtFpgEntrada.Text);

     end
  else
     begin
       txtVlrEntrada.Text := '';
     end; }

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsInteger = 0 then
     begin
       ShowMessage('O código do pedido de venda deve ser informado na ordem de faturamento.');
       txtPedido.SetFocus;
       exit;
     end;



  if (trim(txtFpgEntrada.text) <> '') and
     (txtFpgEntrada.Text <> '0') then
     begin
       try
          dmGeral.BUS_CD_C_FPG2.Close;
          dmGeral.BUS_CD_C_FPG2.Data :=
                  dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, txtFpgEntrada.Text]));
          if dmGeral.BUS_CD_C_FPG2.IsEmpty then
             begin
               ShowMessage('Forma de pagamento não encontrada.');
               txtFpgEntrada.Text := '';
               txtFpgEntrada.SetFocus;
               abort;
             end
          else
             begin
               if dmGeral.BUS_CD_C_FPG2.FieldByName('tipo_pagamento').AsInteger <> 0 then
                  begin
                    ShowMessage('Forma de pagamento deve ser do tipo "A vista".');
                    txtFpgEntrada.Text := '';
                    txtFpgEntrada.SetFocus;
                    abort;
                  end;
             end;
        finally
          dmGeral.BUS_CD_C_FPG2.Close;
        end;
     end
  else
     begin
       txtVlrEntrada.Text := '';
     end;
end;

procedure TPCP_FM_M_ORS.txtGerFpgButtonClick(Sender: TObject);
begin
  inherited;

  if dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsInteger = 0 then
     begin
       ShowMessage('O código do pedido de venda deve ser informado na ordem de faturamento.');
       txtPedido.SetFocus;
       exit;
     end;


  PSQ_FM_X_FPG := TPSQ_FM_X_FPG.Create(Self);

  dmGeral.BUS_CD_C_CPG.Close;
  dmGeral.BUS_CD_C_CPG.Data :=
           dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,IntToStr(xIdCondicaoPag)]));

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
     begin
         // Busca as formas de pagamento a vista
         PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
         PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(
             VarArrayOf([2, 0]));
         PSQ_FM_X_FPG.BUS_CD_C_FPG.Open;
     end;

  if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 1 then // A prazo
     begin
         // Busca as formas de pagamento a prazo
         PSQ_FM_X_FPG.BUS_CD_C_FPG.Close;
         PSQ_FM_X_FPG.BUS_CD_C_FPG.DataRequest(
             VarArrayOf([2, 1]));
         PSQ_FM_X_FPG.BUS_CD_C_FPG.Open;
     end;

  PSQ_FM_X_FPG.ShowModal;
  if not PSQ_FM_X_FPG.BUS_CD_C_FPG.IsEmpty then
     begin
       txtGerFpg.SetFocus;
       txtGerFpg.Text :=
            PSQ_FM_X_FPG.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').Text;
     end;
  PSQ_FM_X_FPG.Free;
end;

procedure TPCP_FM_M_ORS.txtGerFpgExit(Sender: TObject);
begin
  inherited;
{  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (trim(txtGerFpg.text) <> '') or
     (txtGerFpg.Text <> '0') then
     begin
        dmGeral.BusFormaPgtos(0,txtGerFpg.Text);

     end
  else
     begin
       txtQtdeParc.Text := '0';
     end;}

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsInteger = 0 then
     begin
       ShowMessage('O código do pedido de venda deve ser informado na ordem de faturamento.');
       txtPedido.SetFocus;
       exit;
     end;

  if (trim(txtGerFpg.text) <> '') and
     (txtGerFpg.Text <> '0') then
     begin
        try
        dmGeral.BUS_CD_C_FPG2.Close;
        dmGeral.BUS_CD_C_FPG2.Data :=
                  dmGeral.BUS_CD_C_FPG2.DataRequest(VarArrayOf([0, txtGerFpg.Text]));
        if dmGeral.BUS_CD_C_FPG2.IsEmpty then
           begin
             ShowMessage('Forma de pagamento não encontrada.');
             txtGerFpg.Text := '';
             txtGerFpg.SetFocus;
             abort;
           end
        else
           begin
             dmGeral.BUS_CD_C_CPG.Close;
             dmGeral.BUS_CD_C_CPG.Data :=
                       dmGeral.BUS_CD_C_CPG.DataRequest(VarArrayOf([0,IntToStr(xIdCondicaoPag)]));

             if dmGeral.BUS_CD_C_CPGtipo_pagamento.AsInteger = 0 then  // A vista
                begin
                   if dmGeral.BUS_CD_C_FPG2.FieldByName('tipo_pagamento').AsInteger <> 0 then
                      begin
                        ShowMessage('Forma de pagamento deve ser do tipo "A vista".');
                        txtGerFpg.Text := '';
                        txtGerFpg.SetFocus;
                        abort;
                      end;
                end;

             if dmGeral.BUS_CD_C_FPG2.FieldByName('doc_impresso').AsInteger = 6 then // cheque
                begin
                  ShowMessage('Não é permitido forma de pagamento do tipo "Cheque".');
                  txtGerFpg.Text := '';
                  txtGerFpg.SetFocus;
                  abort;
                end;
           end;
        finally
          dmGeral.BUS_CD_C_FPG2.close;
          dmGeral.BUS_CD_C_CPG.Close;
        end;
     end
  else
     begin
       txtQtdeParc.Text := '0';
     end;
end;

procedure TPCP_FM_M_ORS.txtPedidoButtonClick(Sender: TObject);
begin
  inherited;
  if txtPedido.ReadOnly = False then
    begin
      PSQ_FM_X_PED := TPSQ_FM_X_PED.Create(Self);
      PSQ_FM_X_PED.ShowModal;
      if not dmgeral.BUS_CD_M_PED.IsEmpty then
         begin
           dmGeral.PCP_CD_M_ORS.FieldByName('ID_PEDIDO').AsInteger :=
              dmgeral.BUS_CD_M_PED.FieldByName('ID_PEDIDO').AsInteger;

           dmGeral.PCP_CD_M_ORS.FieldByName('INT_NOMECLI').AsString := dmgeral.BUS_CD_M_PEDint_nomecli.AsString;
         end;
    end;
end;

procedure TPCP_FM_M_ORS.txtPedidoEnter(Sender: TObject);
begin
  inherited;
  xIdCondicaoPag := 0;
  xCodPedAnt := dmgeral.PCP_CD_M_ORSid_pedido.AsInteger;
end;

procedure TPCP_FM_M_ORS.txtPedidoExit(Sender: TObject);
var
  SMPrincipal : TSMClient;
  IdRom: Integer;
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  try
    dmgeral.PCP_CD_M_ORS.BeforePost := nil;

  if txtpedido.ReadOnly = true then
     begin
       exit;
     end;

  if dmGeral.PCP_CD_M_ORS.FieldByName('ID_PEDIDO').Text = '' then
     begin
       ShowMessage('O campo "Pedido" deve ser preenchido.');
       txtPedido.SetFocus;
       abort;
     end;

  if (trim(dmgeral.PCP_CD_M_ORSid_pedido.AsString) <> '')  and
     (trim(dmgeral.PCP_CD_M_ORSid_pedido.AsString) <> '0') then
      begin

        if xCodPedAnt > 0 then
           begin
             if xCodPedAnt <> dmgeral.PCP_CD_M_ORSid_pedido.AsInteger then
                begin
                  dmGeral.PCP_CD_M_ORS_ITE.cancel;
                  if not dmGeral.PCP_CD_M_ORS_ITE.IsEmpty then
                     while not dmGeral.PCP_CD_M_ORS_ITE.eof do
                        begin
                          dmGeral.PCP_CD_M_ORS_ITE.Delete;
                        end;

                  dmGeral.PCP_CD_M_ORS_TIT.cancel;
                  if not dmGeral.PCP_CD_M_ORS_TIT.IsEmpty then
                     while not dmGeral.PCP_CD_M_ORS_TIT.eof do
                        begin
                          dmGeral.PCP_CD_M_ORS_TIT.Delete;
                        end;

                  dmgeral.PCP_CD_M_ORS.FieldByName('id_rom').AsString           := '';
                  dmgeral.PCP_CD_M_ORS.FieldByName('int_dta_rom').AsString      := '';
                  dmgeral.PCP_CD_M_ORS.FieldByName('int_nomeresp_rom').AsString := '';
                  dmgeral.PCP_CD_M_ORS.FieldByName('vlr_desconto').AsCurrency := 0;
                  dmgeral.PCP_CD_M_ORS.FieldByName('vlr_bruto').AsCurrency :=    0;
                  dmgeral.PCP_CD_M_ORS.FieldByName('vlr_liquido').AsCurrency :=  0;
                  dmgeral.PCP_CD_M_ORS.FieldByName('id_tipo_mov_estoque').AsInteger := 0;
                  dmgeral.PCP_CD_M_ORS.FieldByName('id_almoxarifado').text := '';
                end
             else
                exit;
           end;


        TestarPedido;

        dmGeral.BUS_CD_M_PED.Close;
        dmGeral.BUS_CD_M_PED.Data :=
          dmGeral.BUS_CD_M_PED.DataRequest(
            VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text, dmgeral.PCP_CD_M_ORSid_pedido.Text]));


        if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_verif_op_ped').AsBoolean then
           begin
              if (dmGeral.BUS_CD_M_PED.FieldByName('pcp_id_opr').Text = '') or
                 (dmGeral.BUS_CD_M_PED.FieldByName('pcp_id_opr').Text = '0') then
                 begin
                   ShowMessage('Pedido de venda sem Ordem de Produção.');
                   dmgeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsString := '';
                   txtPedido.text := '';
                   txtPedido.SetFocus;
                   abort;
                 end;
           end;

        if not dmGeral.BUS_CD_M_PED.IsEmpty then
          begin

            PcpVerificaTitulosOrs;

            xIdCondicaoPag := dmgeral.BUS_CD_M_PED.FieldByName('id_condicao_pag').AsInteger;

            dmgeral.PCP_CD_M_ORS.FieldByName('id_tipo_mov_estoque').AsInteger :=
                    dmgeral.BUS_CD_M_PED.FieldByName('id_tipo_mov_estoque').AsInteger;

            dmgeral.PCP_CD_M_ORS.FieldByName('id_almoxarifado').text :=
                    dmgeral.BUS_CD_M_PED.FieldByName('id_almoxarifado').text;

            dmgeral.PCP_CD_M_ORS.FieldByName('vlr_desconto').AsCurrency :=
                    dmgeral.BUS_CD_M_PED.FieldByName('vlr_desconto').AsCurrency;

            dmgeral.PCP_CD_M_ORS.FieldByName('vlr_bruto').AsCurrency :=
                    dmgeral.BUS_CD_M_PED.FieldByName('vlr_bruto').AsCurrency;

            dmgeral.PCP_CD_M_ORS.FieldByName('vlr_liquido').AsCurrency :=
                    dmgeral.BUS_CD_M_PED.FieldByName('vlr_liquido').AsCurrency;

            dmgeral.PCP_CD_M_ORS.FieldByName('int_nomeven').AsString :=
                   dmGeral.BUS_CD_M_PED.FieldByName('int_nomefun').AsString;

            //Busca sequencia no servidor
            SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
            try
              IdRom := SMPrincipal.enSgqVefPedRom(dmgeral.PCP_CD_M_ORSid_pedido.Text);
              if IdRom = 0 then
                begin
                  ShowMessage('Este pedido de venda não foi inserido em nenhum Relatório de Carga!');
                  dmgeral.PCP_CD_M_ORS.FieldByName('id_pedido').Text := '';
                  dmgeral.PCP_CD_M_ORS.FieldByName('int_nomecli').AsString := '';
                  dmgeral.PCP_CD_M_ORS.FieldByName('id_rom').AsString           := '';
                  dmgeral.PCP_CD_M_ORS.FieldByName('int_dta_rom').AsString      := '';
                  dmgeral.PCP_CD_M_ORS.FieldByName('int_nomeresp_rom').AsString := '';
                  dmgeral.PCP_CD_M_ORS.FieldByName('id_tipo_mov_estoque').AsString := '';
                  dmgeral.PCP_CD_M_ORS.FieldByName('id_almoxarifado').text :=          '';
                  dmgeral.PCP_CD_M_ORS.FieldByName('vlr_desconto').AsCurrency := 0;
                  dmgeral.PCP_CD_M_ORS.FieldByName('vlr_bruto').AsCurrency :=    0;
                  dmgeral.PCP_CD_M_ORS.FieldByName('vlr_liquido').AsCurrency :=  0;
                  abort;
                end;
            finally
              FreeAndNil(SMPrincipal);
            end;

            dmGeral.BUS_CD_M_PCP_ROM.Close;
            dmGeral.BUS_CD_M_PCP_ROM.Data :=
                dmGeral.BUS_CD_M_PCP_ROM.DataRequest(
                         VarArrayOf([0, IdRom]));

            dmgeral.PCP_CD_M_ORS.FieldByName('id_rom').AsInteger :=
                    dmGeral.BUS_CD_M_PCP_ROM.FieldByName('id_rom').AsInteger;

            dmgeral.PCP_CD_M_ORS.FieldByName('int_dta_rom').AsDateTime :=
                    dmGeral.BUS_CD_M_PCP_ROM.FieldByName('dta_emissao').AsDateTime;

            dmgeral.PCP_CD_M_ORS.FieldByName('int_nomeresp_rom').AsString :=
                   dmGeral.BUS_CD_M_PCP_ROM.FieldByName('int_nomeres').AsString;


            if not PCP_RN_M_ORS.PcpValidarRomOrs(0,dmGeral.BUS_CD_M_PCP_ROM) then
               begin
                 txtPedido.SetFocus;
                 txtPedido.Text := '';
                 dmgeral.PCP_CD_M_ORS.FieldByName('int_nomecli').AsString := '';
                 dmgeral.PCP_CD_M_ORS.FieldByName('id_rom').AsString           := '';
                 dmgeral.PCP_CD_M_ORS.FieldByName('int_dta_rom').AsString      := '';
                 dmgeral.PCP_CD_M_ORS.FieldByName('int_nomeresp_rom').AsString := '';
                 dmGeral.BUS_CD_M_PCP_ROM.Close;
                 abort;
               end;


            PcpImportarPedOrs(IdRom,dmgeral.PCP_CD_M_ORSid_pedido.AsInteger);

            dmGeral.BUS_CD_M_PCP_ROM.Close;

            dmGeral.PCP_CD_M_ORS.FieldByName('INT_NOMECLI').AsString := dmgeral.BUS_CD_M_PEDint_nomecli.AsString;

            dmGeral.BUS_CD_C_CLI.Close;
            dmGeral.BUS_CD_C_CLI.Data :=
                dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([1, dmGeral.PCP_CD_M_ORS.FieldByName('INT_NOMECLI').Text]));

            dmGeral.PCP_CD_M_ORS.FieldByName('INT_NOMECLI').AsString := dmGeral.BUS_CD_C_CLInome.AsString;

            btnGrava.SetFocus;
          end
        else
          begin
            ShowMessage('Pedido não cadastrado.');
            dmGeral.PCP_CD_M_ORS.FieldByName('ID_PEDIDO').Text := '';
            txtpedido.Setfocus;
          end;
      end
  else
      begin
        dmGeral.PCP_CD_M_ORS_ITE.cancel;
        if not dmGeral.PCP_CD_M_ORS_ITE.IsEmpty then
           while not dmGeral.PCP_CD_M_ORS_ITE.eof do
              begin
                dmGeral.PCP_CD_M_ORS_ITE.Delete;
              end;

        dmGeral.PCP_CD_M_ORS_TIT.cancel;
        if not dmGeral.PCP_CD_M_ORS_TIT.IsEmpty then
           while not dmGeral.PCP_CD_M_ORS_TIT.eof do
              begin
                dmGeral.PCP_CD_M_ORS_TIT.Delete;
              end;

        dmgeral.PCP_CD_M_ORS.FieldByName('id_rom').AsString           := '';
        dmgeral.PCP_CD_M_ORS.FieldByName('int_dta_rom').AsString      := '';
        dmgeral.PCP_CD_M_ORS.FieldByName('int_nomeresp_rom').AsString := '';
        dmgeral.PCP_CD_M_ORS.FieldByName('vlr_desconto').AsCurrency := 0;
        dmgeral.PCP_CD_M_ORS.FieldByName('vlr_bruto').AsCurrency :=    0;
        dmgeral.PCP_CD_M_ORS.FieldByName('vlr_liquido').AsCurrency :=  0;
        dmgeral.PCP_CD_M_ORS.FieldByName('id_tipo_mov_estoque').AsInteger := 0;
        dmgeral.PCP_CD_M_ORS.FieldByName('id_almoxarifado').text := '';
      end;
  finally
    dmgeral.PCP_CD_M_ORS.BeforePost := dmgeral.PCP_CD_M_ORSBeforePost;
  end;
end;

procedure TPCP_FM_M_ORS.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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
procedure TPCP_FM_M_ORS.txtQtdeExit(Sender: TObject);
begin
  inherited;
   //dmGeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_Total').Text := floattostr(strtofloat(txtVlrUnitario.Text)*strtofloat(txtQtde.Text));
end;

procedure TPCP_FM_M_ORS.txtQtdeParcExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsInteger = 0 then
     begin
       ShowMessage('O código do pedido de venda deve ser informado na ordem de faturamento.');
       txtPedido.SetFocus;
       exit;
     end;

  if ((trim(txtGerFpg.text) = '') or
     (txtGerFpg.Text = '0')) and
     ((trim(txtQtdeParc.text) <> '') and
      (txtQtdeParc.Text <> '0'))  then
     begin
       ShowMessage('O campo "Forma de pagamento" deve ser prenchido.');
       abort;
     end;

  if (trim(txtQtdeParc.text) = '') or
     (txtQtdeParc.Text = '0') then
     begin
       txtGerFpg.Text := '';
       exit;
     end;

  if dmGeral.PCP_CD_M_ORS.FieldByName('vlr_liquido').AsCurrency <= 0 then
     begin
       ShowMessage('Ordem de faturamento sem valor.');
       exit;
     end;

  if strtoint(txtQtdeParc.text) < 0 then
     begin
       ShowMessage('O campo "Qtde de parcelas" não pode ser menor que 0.');
       txtQtdeParc.text := '0';
       txtQtdeParc.SetFocus;
       abort;
     end;

  dmGeral.GerarFPG_Doc(txtGerFpg.Text,'','',strtoint(txtQtdeParc.text), dmGeral.PCP_CD_M_ORS.FieldByName('vlr_liquido').AsCurrency, dmGeral.PCP_CD_M_ORS_TIT,2);

  txtGerFpg.text   := '';
  txtQtdeParc.text := '0';
  //btnGrava.SetFocus;
end;

procedure TPCP_FM_M_ORS.txtVencimentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if btnAddFormaPagamento.Focused or cbbFormaPagamento.Focused or
     txtDias.Focused or dgFormaPagamento.Focused then
     begin
       abort;
     end;

  if not (dmGeral.TesValVencto(dmGeral.PCP_CD_M_ORS.FieldByName('DTA_EMISSAO').AsDateTime,
                               dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime)) then
     begin
       txtVencimento.SetFocus;
       abort;
     end;

   if dmGeral.PCP_CD_M_ORS_TIT.State in [dsInsert,dsEdit] then
     begin
       if dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DTA_VENCIMENTO').text <> '' then
         begin
           dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DIAS').Value :=
              dmGeral.PCP_CD_M_ORS_TIT.FieldByName('DTA_VENCIMENTO').AsVariant -
                      dmGeral.PCP_CD_M_ORS.FieldByName('DTA_EMISSAO').AsVariant;
         end;
     end;
end;

procedure TPCP_FM_M_ORS.txtVlrEntradaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if dmGeral.PCP_CD_M_ORS.FieldByName('id_pedido').AsInteger = 0 then
     begin
       ShowMessage('O código do pedido de venda deve ser informado na ordem de faturamento.');
       txtPedido.SetFocus;
       exit;
     end;

  if ((trim(txtFpgEntrada.text) = '') or
     (txtFpgEntrada.Text = '0')) and
     ((trim(txtVlrEntrada.text) <> '') and
      (txtVlrEntrada.Value <> 0)) then
     begin
       ShowMessage('O campo "Forma de pagamento" deve ser prenchido.');
       abort;
     end;


  if (trim(txtVlrEntrada.text) = '') or
     (txtVlrEntrada.value = 0) then
     begin
       txtFpgEntrada.Text := '';
       exit;
     end;

    if txtVlrEntrada.value < 0 then
     begin
       ShowMessage('O campo "Valor" não pode ser menor que 0.');
       txtVlrEntrada.SetFocus;
       abort;
     end;

    if dmGeral.PCP_CD_M_ORS.FieldByName('vlr_liquido').AsCurrency <= 0 then
     begin
       ShowMessage('Ordem de faturamento sem valor.');
       exit;
     end;

  dmGeral.GerarFPG_Entrada(3,txtFpgEntrada.Text,'',txtVlrEntrada.Value,dmGeral.PCP_CD_M_ORS_TIT);

  //txtFpgEntrada.text := '';
  //txtVlrEntrada.Text := '0';

  ExibirFormasPgto;

 // txtObservacao.SetFocus;
 // txtGerFpg.SetFocus;
  txtFpgEntrada.text := '';
  txtVlrEntrada.Text := '0';
end;

procedure TPCP_FM_M_ORS.txtVlrTitulosExit(Sender: TObject);
var
id_titulo: string;
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;


  if cbbFormaPagamento.Focused  then
     begin
       abort;
     end;

    if txtDias.Focused then
     begin
       abort;
     end;

    if txtVencimento.Focused then
     begin
       abort;
     end;
{      if ( not ( (btnAddFormaPagamento.focused) or (txtVlrTitulos.Focused)) )  then
     begin
       abort;
     end;}
     {  if (cbbFormaPagamento.Focused or
      txtDias.Focused or txtVencimento.Focused) or
     // dgFormaPagamento.Focused) or
      ( not ( (btnAddFormaPagamento.focused) or (txtVlrTitulos.Focused)) )  then
     begin
       abort;
     end;  }

  if not (dmGeral.TesValVlr(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('VLR_TITULO').AsCurrency)) then
     begin
       txtVlrTitulos.SetFocus;
       abort;
     end;

  id_titulo := dmGeral.PCP_CD_M_ORS_TIT.FieldByName('ID_ORS_TIT').AsString;
  dmGeral.PCP_CD_M_ORS_TIT.Post;
  pnTitulos.Enabled := false;

  btnAddFormaPagamento.SetFocus;
end;

procedure  TPCP_FM_M_ORS.PcpValidaOrsFin;
var
  mens: String;
begin
  dmGeral.PCP_CD_M_ORS_TIT.cancel;
  if (dmGeral.PCP_CD_M_ORS_TIT.IsEmpty)  then
     begin
           mens := mens + 'Nenhum título foi inserido na ordem de faturamento.' + #13
     end;

  if PCP_CD_M_ORS_TesTotFpgXTotOrs then
     begin
       mens := mens + 'Valor dos vencimentos diferente do total da ordem de faturamento.' + #13;
     end;

  if mens <> '' then
     begin
       ShowMessage('Atenção:' + #13 + mens);
       mens := '';
       abort;
     end
  else
     begin
       dmGeral.PCP_CD_M_ORS_TIT.First;
          while not dmGeral.PCP_CD_M_ORS_TIT.eof do
             begin
                dmGeral.BusFormaPgtos(0,dmGeral.PCP_CD_M_ORS_TIT.FieldByName('ID_FORMA_PAG').AsString);
                if not dmGeral.BUS_CD_C_FPG.IsEmpty then
                   begin
                     if dmGeral.BUS_CD_C_FPG.FieldByName('DOC_IMPRESSO').AsInteger = 6 then
                        begin
                          if (trim(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('che_banco').AsString)    = '') or
                             (trim(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('che_agencia').AsString)  = '') or
                             (trim(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('che_conta').AsString)    = '') or
                             (dmGeral.PCP_CD_M_ORS_TIT.FieldByName('che_numero').AsInteger        = 0)  or
                             (trim(dmGeral.PCP_CD_M_ORS_TIT.FieldByName('che_emitente').AsString) = '') then
                             begin
                               dmGeral.BUS_CD_C_FPG.close;
                               Showmessage('Existe forma de pagamento do tipo "Cheque" que está sem informações do cheque!');
                               dmGeral.PCP_CD_M_ORS_TIT.First;
                               abort;
                             end;
                        end;
                    end;
                dmGeral.PCP_CD_M_ORS_TIT.Next;
             end;
          dmGeral.PCP_CD_M_ORS_TIT.First;
     end;
end;

end.

