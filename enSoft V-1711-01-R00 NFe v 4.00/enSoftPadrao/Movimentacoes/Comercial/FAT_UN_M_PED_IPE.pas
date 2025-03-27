unit FAT_UN_M_PED_IPE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, JvExMask,
  JvToolEdit, JvDBControls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Data.DB, Datasnap.DBClient, System.IniFiles, Data.DBXDataSnap,
  IPPeerClient, Data.DBXCommon, Data.SqlExpr, Datasnap.DSConnect, vcl.Wwdbedit,
  vcl.wwdblook, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxButtons, Vcl.Buttons, System.Math;

type
  TFAT_FM_M_PED_IPE = class(TForm)
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    lblCodificacaoLMestre: TLabel;
    pnlDireita: TPanel;
    GroupBox1: TGroupBox;
    dbGrid: TwwDBGrid;
    btnImporta: TButton;
    btnSair: TButton;
    dsPed: TDataSource;
    dsPedItens: TDataSource;
    wwDBGrid1: TwwDBGrid;
    pcConecaoDBProd: TDSProviderConnection;
    ConexaoBDProd: TSQLConnection;
    BUS_CD_M_PED_PRD: TClientDataSet;
    BUS_CD_M_PED_ITE_PRD: TClientDataSet;
    Label5: TLabel;
    txtCliente: TJvDBComboEdit;
    txtClienteNome: TDBText;
    Label3: TLabel;
    BUS_CD_M_PED_PRDid_pedido: TIntegerField;
    BUS_CD_M_PED_PRDid_empresa: TIntegerField;
    BUS_CD_M_PED_PRDdta_pedido: TDateField;
    BUS_CD_M_PED_PRDid_tipo_mov_estoque: TIntegerField;
    BUS_CD_M_PED_PRDid_vendedor: TIntegerField;
    BUS_CD_M_PED_PRDvlr_bruto: TFMTBCDField;
    BUS_CD_M_PED_PRDvlr_desconto: TFMTBCDField;
    BUS_CD_M_PED_PRDper_desconto: TFloatField;
    BUS_CD_M_PED_PRDvlr_liquido: TFMTBCDField;
    BUS_CD_M_PED_PRDhor_pedido: TSQLTimeStampField;
    BUS_CD_M_PED_PRDid_condicao_pag: TIntegerField;
    BUS_CD_M_PED_PRDpcp_id_opr: TIntegerField;
    BUS_CD_M_PED_PRDsituacao: TIntegerField;
    BUS_CD_M_PED_PRDsituacao_aprovacao: TIntegerField;
    BUS_CD_M_PED_PRDid_atendente: TIntegerField;
    BUS_CD_M_PED_PRDid_responsavel: TIntegerField;
    BUS_CD_M_PED_PRDid_cliente: TIntegerField;
    BUS_CD_M_PED_PRDtipo_restricao: TWideStringField;
    BUS_CD_M_PED_PRDid_almoxarifado: TIntegerField;
    BUS_CD_M_PED_PRDjustificativa: TWideStringField;
    BUS_CD_M_PED_PRDid_usuario_lib: TIntegerField;
    BUS_CD_M_PED_PRDcod_lme: TWideStringField;
    BUS_CD_M_PED_PRDrev_lme: TWideStringField;
    BUS_CD_M_PED_PRDorigem: TIntegerField;
    BUS_CD_M_PED_PRDdispositivo: TWideStringField;
    BUS_CD_M_PED_PRDgps_latitude: TFloatField;
    BUS_CD_M_PED_PRDgps_longitude: TFloatField;
    BUS_CD_M_PED_PRDcubagem: TFloatField;
    BUS_CD_M_PED_PRDid_orcamento: TIntegerField;
    BUS_CD_M_PED_PRDenvia_carga: TBooleanField;
    BUS_CD_M_PED_PRDdta_prev_entrega: TDateField;
    BUS_CD_M_PED_PRDint_nomecli: TWideStringField;
    BUS_CD_M_PED_PRDint_nometme: TWideStringField;
    BUS_CD_M_PED_PRDint_nomefun: TWideStringField;
    BUS_CD_M_PED_PRDint_nomecpg: TWideStringField;
    BUS_CD_M_PED_PRDint_nomeate: TWideStringField;
    BUS_CD_M_PED_PRDint_nomeres: TWideStringField;
    BUS_CD_M_PED_PRDint_nomecid: TWideStringField;
    BUS_CD_M_PED_PRDint_nomeest: TWideStringField;
    BUS_CD_M_PED_PRDint_cpfcnpj: TWideStringField;
    BUS_CD_M_PED_PRDint_pessoacli: TIntegerField;
    BUS_CD_M_PED_PRDint_id_perfil: TIntegerField;
    BUS_CD_M_PED_PRDid_ors: TIntegerField;
    BUS_CD_M_PED_PRDint_sitaprov: TWideStringField;
    BUS_CD_M_PED_PRDint_sitped: TWideStringField;
    BUS_CD_M_PED_PRDid_abertura: TIntegerField;
    BUS_CD_M_PED_PRDint_ie_rg_cli: TWideStringField;
    BUS_CD_M_PED_PRDint_selecao: TBooleanField;
    BUS_CD_M_PED_PRDdias_cpg_prazo: TIntegerField;
    BUS_CD_M_PED_PRDint_nomereg: TWideStringField;
    BUS_CD_M_PED_PRDoffline: TBooleanField;
    BUS_CD_M_PED_PRDconferido: TBooleanField;
    BUS_CD_M_PED_PRDid_conf: TIntegerField;
    BUS_CD_M_PED_PRDdta_conf: TDateField;
    BUS_CD_M_PED_PRDhor_conf: TTimeField;
    BUS_CD_M_PED_PRDresultado_conf: TIntegerField;
    BUS_CD_M_PED_PRDid_resp_conf: TIntegerField;
    BUS_CD_M_PED_PRDint_nome_rcn: TWideStringField;
    BUS_CD_M_PED_PRDid_propriedade: TIntegerField;
    BUS_CD_M_PED_PRDmod_frete: TIntegerField;
    BUS_CD_M_PED_PRDvlr_frete: TFMTBCDField;
    BUS_CD_M_PED_PRDid_mkt: TIntegerField;
    BUS_CD_M_PED_PRDcan_usuario: TIntegerField;
    BUS_CD_M_PED_PRDcan_data: TDateField;
    BUS_CD_M_PED_PRDcan_motivo: TWideStringField;
    BUS_CD_M_PED_PRDcan_hora: TTimeField;
    BUS_CD_M_PED_PRDint_numloteopr: TWideStringField;
    BUS_CD_M_PED_PRDid_motorista: TIntegerField;
    BUS_CD_M_PED_PRDid_placa: TWideStringField;
    BUS_CD_M_PED_PRDint_nomemta: TWideStringField;
    BUS_CD_M_PED_PRDvlr_credito: TFMTBCDField;
    BUS_CD_M_PED_PRDvlr_desc_especial: TFMTBCDField;
    BUS_CD_M_PED_PRDvlr_desc_basico: TFMTBCDField;
    BUS_CD_M_PED_PRDsgq_per_comissao: TFloatField;
    BUS_CD_M_PED_PRDint_sitped2: TWideStringField;
    BUS_CD_M_PED_PRDqtde_volume: TFloatField;
    BUS_CD_M_PED_PRDvlr_icm_desn: TFMTBCDField;
    BUS_CD_M_PED_PRDint_sitord: TIntegerField;
    BUS_CD_M_PED_PRDvlr_desc_produtos: TFMTBCDField;
    BUS_CD_M_PED_PRDper_desc_produtos: TFloatField;
    BUS_CD_M_PED_PRDvlr_produtos: TFMTBCDField;
    BUS_CD_M_PED_PRDvlr_serv_bruto: TFMTBCDField;
    BUS_CD_M_PED_PRDvlr_desc_servicos: TFMTBCDField;
    BUS_CD_M_PED_PRDper_desc_servicos: TFloatField;
    BUS_CD_M_PED_PRDvlr_ser_liquido: TFMTBCDField;
    BUS_CD_M_PED_PRDvlr_terceiro: TFMTBCDField;
    BUS_CD_M_PED_PRDvlr_desc_terceiro: TFMTBCDField;
    BUS_CD_M_PED_PRDper_desc_terceiro: TFloatField;
    BUS_CD_M_PED_PRDvlr_terc_liquido: TFMTBCDField;
    BUS_CD_M_PED_PRDped_gera_fin_separado: TBooleanField;
    BUS_CD_M_PED_PRDvlr_prod_liquido: TFMTBCDField;
    BUS_CD_M_PED_PRDsepara_prod_serv: TBooleanField;
    BUS_CD_M_PED_PRDvlr_cred_produtos: TFMTBCDField;
    BUS_CD_M_PED_PRDvlr_cred_servicos: TFMTBCDField;
    BUS_CD_M_PED_PRDobs: TWideStringField;
    BUS_CD_M_PED_PRDid_mecanico: TIntegerField;
    BUS_CD_M_PED_PRDsgq_texto_cond_pgto: TWideStringField;
    BUS_CD_M_PED_PRDper_desc_basico: TFloatField;
    BUS_CD_M_PED_PRDper_desc_especial: TFloatField;
    BUS_CD_M_PED_PRDdta_liberacao: TDateField;
    BUS_CD_M_PED_PRDint_nomelib: TWideStringField;
    BUS_CD_M_PED_PRDpcp_obs: TWideStringField;
    BUS_CD_M_PED_PRDpedido_automatico: TBooleanField;
    BUS_CD_M_PED_PRDpedido_origem_aut: TIntegerField;
    BUS_CD_M_PED_PRDgerar_pedido_diferenca: TBooleanField;
    BUS_CD_M_PED_PRDid_pedido_gerado: TIntegerField;
    BUS_CD_M_PED_PRDFAT_SQ_M_PED_ITE: TDataSetField;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    Label6: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label7: TLabel;
    txtPercAbater: TwwDBEdit;
    Label8: TLabel;
    Label4: TLabel;
    txtCodPed: TJvComboEdit;
    lblPedNomeCli: TLabel;
    btnAdicionar: TcxButton;
    BUS_CD_M_PED_PRD2: TClientDataSet;
    BUS_CD_M_PED_ITE_PRD2: TClientDataSet;
    BUS_CD_M_PED_PRD2id_pedido: TIntegerField;
    BUS_CD_M_PED_PRD2id_empresa: TIntegerField;
    BUS_CD_M_PED_PRD2dta_pedido: TDateField;
    BUS_CD_M_PED_PRD2id_tipo_mov_estoque: TIntegerField;
    BUS_CD_M_PED_PRD2id_vendedor: TIntegerField;
    BUS_CD_M_PED_PRD2vlr_bruto: TFMTBCDField;
    BUS_CD_M_PED_PRD2vlr_desconto: TFMTBCDField;
    BUS_CD_M_PED_PRD2per_desconto: TFloatField;
    BUS_CD_M_PED_PRD2vlr_liquido: TFMTBCDField;
    BUS_CD_M_PED_PRD2hor_pedido: TSQLTimeStampField;
    BUS_CD_M_PED_PRD2id_condicao_pag: TIntegerField;
    BUS_CD_M_PED_PRD2pcp_id_opr: TIntegerField;
    BUS_CD_M_PED_PRD2situacao: TIntegerField;
    BUS_CD_M_PED_PRD2situacao_aprovacao: TIntegerField;
    BUS_CD_M_PED_PRD2id_atendente: TIntegerField;
    BUS_CD_M_PED_PRD2id_responsavel: TIntegerField;
    BUS_CD_M_PED_PRD2id_cliente: TIntegerField;
    BUS_CD_M_PED_PRD2tipo_restricao: TWideStringField;
    BUS_CD_M_PED_PRD2id_almoxarifado: TIntegerField;
    BUS_CD_M_PED_PRD2justificativa: TWideStringField;
    BUS_CD_M_PED_PRD2id_usuario_lib: TIntegerField;
    BUS_CD_M_PED_PRD2cod_lme: TWideStringField;
    BUS_CD_M_PED_PRD2rev_lme: TWideStringField;
    BUS_CD_M_PED_PRD2origem: TIntegerField;
    BUS_CD_M_PED_PRD2dispositivo: TWideStringField;
    BUS_CD_M_PED_PRD2gps_latitude: TFloatField;
    BUS_CD_M_PED_PRD2gps_longitude: TFloatField;
    BUS_CD_M_PED_PRD2cubagem: TFloatField;
    BUS_CD_M_PED_PRD2id_orcamento: TIntegerField;
    BUS_CD_M_PED_PRD2envia_carga: TBooleanField;
    BUS_CD_M_PED_PRD2dta_prev_entrega: TDateField;
    BUS_CD_M_PED_PRD2int_nomecli: TWideStringField;
    BUS_CD_M_PED_PRD2int_nometme: TWideStringField;
    BUS_CD_M_PED_PRD2int_nomefun: TWideStringField;
    BUS_CD_M_PED_PRD2int_nomecpg: TWideStringField;
    BUS_CD_M_PED_PRD2int_nomeate: TWideStringField;
    BUS_CD_M_PED_PRD2int_nomeres: TWideStringField;
    BUS_CD_M_PED_PRD2int_nomecid: TWideStringField;
    BUS_CD_M_PED_PRD2int_nomeest: TWideStringField;
    BUS_CD_M_PED_PRD2int_cpfcnpj: TWideStringField;
    BUS_CD_M_PED_PRD2int_pessoacli: TIntegerField;
    BUS_CD_M_PED_PRD2int_id_perfil: TIntegerField;
    BUS_CD_M_PED_PRD2id_ors: TIntegerField;
    BUS_CD_M_PED_PRD2int_sitaprov: TWideStringField;
    BUS_CD_M_PED_PRD2int_sitped: TWideStringField;
    BUS_CD_M_PED_PRD2id_abertura: TIntegerField;
    BUS_CD_M_PED_PRD2int_ie_rg_cli: TWideStringField;
    BUS_CD_M_PED_PRD2int_selecao: TBooleanField;
    BUS_CD_M_PED_PRD2dias_cpg_prazo: TIntegerField;
    BUS_CD_M_PED_PRD2int_nomereg: TWideStringField;
    BUS_CD_M_PED_PRD2offline: TBooleanField;
    BUS_CD_M_PED_PRD2conferido: TBooleanField;
    BUS_CD_M_PED_PRD2id_conf: TIntegerField;
    BUS_CD_M_PED_PRD2dta_conf: TDateField;
    BUS_CD_M_PED_PRD2hor_conf: TTimeField;
    BUS_CD_M_PED_PRD2resultado_conf: TIntegerField;
    BUS_CD_M_PED_PRD2id_resp_conf: TIntegerField;
    BUS_CD_M_PED_PRD2int_nome_rcn: TWideStringField;
    BUS_CD_M_PED_PRD2id_propriedade: TIntegerField;
    BUS_CD_M_PED_PRD2mod_frete: TIntegerField;
    BUS_CD_M_PED_PRD2vlr_frete: TFMTBCDField;
    BUS_CD_M_PED_PRD2id_mkt: TIntegerField;
    BUS_CD_M_PED_PRD2can_usuario: TIntegerField;
    BUS_CD_M_PED_PRD2can_data: TDateField;
    BUS_CD_M_PED_PRD2can_motivo: TWideStringField;
    BUS_CD_M_PED_PRD2can_hora: TTimeField;
    BUS_CD_M_PED_PRD2int_numloteopr: TWideStringField;
    BUS_CD_M_PED_PRD2id_motorista: TIntegerField;
    BUS_CD_M_PED_PRD2id_placa: TWideStringField;
    BUS_CD_M_PED_PRD2int_nomemta: TWideStringField;
    BUS_CD_M_PED_PRD2vlr_credito: TFMTBCDField;
    BUS_CD_M_PED_PRD2vlr_desc_especial: TFMTBCDField;
    BUS_CD_M_PED_PRD2vlr_desc_basico: TFMTBCDField;
    BUS_CD_M_PED_PRD2sgq_per_comissao: TFloatField;
    BUS_CD_M_PED_PRD2int_sitped2: TWideStringField;
    BUS_CD_M_PED_PRD2qtde_volume: TFloatField;
    BUS_CD_M_PED_PRD2vlr_icm_desn: TFMTBCDField;
    BUS_CD_M_PED_PRD2int_sitord: TIntegerField;
    BUS_CD_M_PED_PRD2vlr_desc_produtos: TFMTBCDField;
    BUS_CD_M_PED_PRD2per_desc_produtos: TFloatField;
    BUS_CD_M_PED_PRD2vlr_produtos: TFMTBCDField;
    BUS_CD_M_PED_PRD2vlr_serv_bruto: TFMTBCDField;
    BUS_CD_M_PED_PRD2vlr_desc_servicos: TFMTBCDField;
    BUS_CD_M_PED_PRD2per_desc_servicos: TFloatField;
    BUS_CD_M_PED_PRD2vlr_ser_liquido: TFMTBCDField;
    BUS_CD_M_PED_PRD2vlr_terceiro: TFMTBCDField;
    BUS_CD_M_PED_PRD2vlr_desc_terceiro: TFMTBCDField;
    BUS_CD_M_PED_PRD2per_desc_terceiro: TFloatField;
    BUS_CD_M_PED_PRD2vlr_terc_liquido: TFMTBCDField;
    BUS_CD_M_PED_PRD2ped_gera_fin_separado: TBooleanField;
    BUS_CD_M_PED_PRD2vlr_prod_liquido: TFMTBCDField;
    BUS_CD_M_PED_PRD2separa_prod_serv: TBooleanField;
    BUS_CD_M_PED_PRD2vlr_cred_produtos: TFMTBCDField;
    BUS_CD_M_PED_PRD2vlr_cred_servicos: TFMTBCDField;
    BUS_CD_M_PED_PRD2obs: TWideStringField;
    BUS_CD_M_PED_PRD2id_mecanico: TIntegerField;
    BUS_CD_M_PED_PRD2sgq_texto_cond_pgto: TWideStringField;
    BUS_CD_M_PED_PRD2per_desc_basico: TFloatField;
    BUS_CD_M_PED_PRD2per_desc_especial: TFloatField;
    BUS_CD_M_PED_PRD2dta_liberacao: TDateField;
    BUS_CD_M_PED_PRD2int_nomelib: TWideStringField;
    BUS_CD_M_PED_PRD2pcp_obs: TWideStringField;
    BUS_CD_M_PED_PRD2pedido_automatico: TBooleanField;
    BUS_CD_M_PED_PRD2pedido_origem_aut: TIntegerField;
    BUS_CD_M_PED_PRD2gerar_pedido_diferenca: TBooleanField;
    BUS_CD_M_PED_PRD2id_pedido_gerado: TIntegerField;
    BUS_CD_M_PED_PRD2FAT_SQ_M_PED_ITE: TDataSetField;
    dbGridIButton: TwwIButton;
    BUS_CD_M_PED_ITE_PRDid_pedido: TIntegerField;
    BUS_CD_M_PED_ITE_PRDid_sequencia: TIntegerField;
    BUS_CD_M_PED_ITE_PRDid_item: TIntegerField;
    BUS_CD_M_PED_ITE_PRDqtde: TFloatField;
    BUS_CD_M_PED_ITE_PRDvlr_unitario: TFMTBCDField;
    BUS_CD_M_PED_ITE_PRDvlr_bruto: TFMTBCDField;
    BUS_CD_M_PED_ITE_PRDper_desconto: TFloatField;
    BUS_CD_M_PED_ITE_PRDvlr_desconto: TFMTBCDField;
    BUS_CD_M_PED_ITE_PRDvlr_liquido: TFMTBCDField;
    BUS_CD_M_PED_ITE_PRDid_cor: TIntegerField;
    BUS_CD_M_PED_ITE_PRDid_tamanho: TIntegerField;
    BUS_CD_M_PED_ITE_PRDid_busca_item: TWideStringField;
    BUS_CD_M_PED_ITE_PRDint_nomeite: TWideStringField;
    BUS_CD_M_PED_ITE_PRDint_nomecor: TWideStringField;
    BUS_CD_M_PED_ITE_PRDint_id_und_venda: TWideStringField;
    BUS_CD_M_PED_ITE_PRDint_nometam: TWideStringField;
    BUS_CD_M_PED_ITE_PRDvlr_unitario_orig: TFMTBCDField;
    BUS_CD_M_PED_ITE_PRDint_tipo_item: TWideStringField;
    BUS_CD_M_PED_ITE_PRDint_seqitem: TIntegerField;
    BUS_CD_M_PED_ITE_PRDint_rua: TWideStringField;
    BUS_CD_M_PED_ITE_PRDint_prateleira: TWideStringField;
    BUS_CD_M_PED_ITE_PRDint_escaninho: TWideStringField;
    BUS_CD_M_PED_ITE_PRDper_desc_max: TFloatField;
    BUS_CD_M_PED_ITE_PRDqtde_conferida: TFloatField;
    BUS_CD_M_PED_ITE_PRDpcp_obs_item: TWideStringField;
    BUS_CD_M_PED_ITE_PRDid_cultura: TIntegerField;
    BUS_CD_M_PED_ITE_PRDint_nomecul: TWideStringField;
    BUS_CD_M_PED_ITE_PRDint_selecao: TBooleanField;
    BUS_CD_M_PED_ITE_PRDvlr_frete: TFMTBCDField;
    BUS_CD_M_PED_ITE_PRDint_rua2: TWideStringField;
    BUS_CD_M_PED_ITE_PRDint_prateleira2: TWideStringField;
    BUS_CD_M_PED_ITE_PRDint_escaninho2: TWideStringField;
    BUS_CD_M_PED_ITE_PRDvlr_icm_desn: TFMTBCDField;
    BUS_CD_M_PED_ITE_PRDnum_lote: TWideStringField;
    BUS_CD_M_PED_ITE_PRDint_lote_gru: TBooleanField;
    BUS_CD_M_PED_ITE_PRDmotivo_icms_des: TIntegerField;
    BUS_CD_M_PED_ITE_PRDint_serterceiro: TBooleanField;
    BUS_CD_M_PED_ITE_PRDid_mecanico: TIntegerField;
    BUS_CD_M_PED_ITE_PRDint_nomemec: TWideStringField;
    BUS_CD_M_PED_ITE_PRDper_desc_basico: TFloatField;
    BUS_CD_M_PED_ITE_PRDvlr_desc_basico: TFMTBCDField;
    BUS_CD_M_PED_ITE_PRDper_desc_especial: TFloatField;
    BUS_CD_M_PED_ITE_PRDvlr_desc_especial: TFMTBCDField;
    Label9: TLabel;
    Label10: TLabel;
    wwDBGrid2: TwwDBGrid;
    dsItensPedidosUni: TDataSource;
    cdsItensPedidosUni: TClientDataSet;
    btnUnificar: TButton;
    cdsItensPedidosUnicodigo: TIntegerField;
    cdsItensPedidosUnicod_cor: TIntegerField;
    cdsItensPedidosUnicod_tam: TIntegerField;
    cdsItensPedidosUniitem: TWideStringField;
    cdsItensPedidosUnicor: TWideStringField;
    cdsItensPedidosUnivlr_liquido: TFMTBCDField;
    cdsItensPedidosUniund_venda: TWideStringField;
    cdsItensPedidosUnitipo_item: TWideStringField;
    cdsItensPedidosUniqtde: TFloatField;
    Label11: TLabel;
    txtQtdeTotal: TEdit;
    cdsItensPedidosUnicod_ite_producao: TIntegerField;
    txtIdItem: TJvDBComboEdit;
    cdsItensPedidosUniitem_producao: TWideStringField;
    Label26: TLabel;
    Label12: TLabel;
    txtVlrTotal: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    txtVlrTotalDescontado: TEdit;
    pnMedidas: TPanel;
    mmPcpObsIte: TDBMemo;
    Label13: TLabel;
    cdsItensPedidosUnivlr_desc_basico: TFMTBCDField;
    cdsItensPedidosUnivlr_desc_especial: TFMTBCDField;
    cdsItensPedidosUnivlr_bruto: TFMTBCDField;
    cdsItensPedidosUnivlr_liquido_ped: TFMTBCDField;
    cdsItensPedidosUnivlr_desc_especial_ped: TFMTBCDField;
    Label14: TLabel;
    txtVlrTotalDescEspecial: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnImportaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dbGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtCodPedExit(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure dbGridIButtonClick(Sender: TObject);
    procedure btnUnificarClick(Sender: TObject);
    procedure txtIdItemButtonClick(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure mmPcpObsIteEnter(Sender: TObject);
    procedure mmPcpObsIteExit(Sender: TObject);
    procedure txtIdItemExit(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    xFechaCdsOrc: Boolean;
    procedure ConectarBancoProd;
  end;

var
  FAT_FM_M_PED_IPE: TFAT_FM_M_PED_IPE;
  CdsItens: TClientDataSet;

implementation

{$R *.dfm}

uses uDmGeral, uProxy, FAT_UN_M_PED, PSQ_UN_X_ITE;

procedure TFAT_FM_M_PED_IPE.btnSairClick(Sender: TObject);
begin
  xFechaCdsOrc := true;
  close;
end;

procedure TFAT_FM_M_PED_IPE.btnUnificarClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
  pedidos: String;
  qtdeTotal, vlrTotal, vlrTotalDesc: Currency;
  percDesconto: Currency;

  vlrLiquidoPedidos, vlrTotalDescEspecial: Currency;

  Modelo_calc_antigo: boolean;

  i, qtdeTotItens: integer;

  vlr_liquido_com_especial, TotalLiqTemp, TotalLiqRest: Currency;

  vlrDesconto: Currency;

  vlrAcumuladoDescontado,vlrADescontar, perc_repres: Currency;
begin


  { Comentado por Maxsuel Victor 06/09/2024, para ter um novo cálculo

  if (trim(txtPercAbater.Text) <> '') and (trim(txtPercAbater.Text) <> '0') then
      begin
        percDesconto := strtocurr(txtPercAbater.Text);
      end;

  vlrLiquidoPedidos    := 0;
  vlrTotalDescEspecial := 0;


  BUS_CD_M_PED_PRD.First;
  while not BUS_CD_M_PED_PRD.eof do
    begin
      if pedidos = '' then
        begin
          pedidos := pedidos+''''+BUS_CD_M_PED_PRD.FieldByName('id_pedido').AsString+'''';
        end
      else
        begin
          pedidos := pedidos+','+''''+BUS_CD_M_PED_PRD.FieldByName('id_pedido').AsString+'''';
        end;

      vlrLiquidoPedidos := vlrLiquidoPedidos + BUS_CD_M_PED_PRD.FieldByName('vlr_liquido').AsCurrency;

      BUS_CD_M_PED_PRD.Next;
    end;
  BUS_CD_M_PED_PRD.First;

  qtdeTotal := 0;
  vlrTotal  := 0;
  vlrTotalDesc := 0;

  CdsItens := TClientDataSet.Create(nil);

  SMPrincipal := TSMClient.Create(ConexaoBDProd.DBXConnection);
   try
    // cdsItensPedidosUnicodigo.OnChange := nil;

     CdsItens.data := SMPrincipal.enSgqFatJuntarItensDosPedidos(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').AsString,
                                              pedidos);

     cdsItensPedidosUni.data :=  CdsItens.data;

     if not (cdsItensPedidosUni.IsEmpty) then
        begin
          cdsItensPedidosUni.First;
          while not cdsItensPedidosUni.eof do
             begin

               dmgeral.BUS_CD_C_ITE.close;
               dmgeral.BUS_CD_C_ITE.Data :=
                    dmgeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([114,cdsItensPedidosUni.FieldByName('cod_ite_producao').AsInteger]));
               if not dmgeral.BUS_CD_C_ITE.IsEmpty then
                  begin
                    cdsItensPedidosUni.edit;
                    cdsItensPedidosUni.FieldByName('codigo').AsString := dmgeral.BUS_CD_C_ITE.FieldByName('id_item').AsString;
                    if not (dmgeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
                       begin
                         cdsItensPedidosUni.FieldByName('item').AsString := dmgeral.BUS_CD_C_ITE.FieldByName('descricao').AsString;
                       end
                    else
                       begin
                         cdsItensPedidosUni.FieldByName('item').AsString := cdsItensPedidosUni.FieldByName('item_producao').AsString;
                       end;
                    cdsItensPedidosUni.Post;
                  end;
               dmgeral.BUS_CD_C_ITE.close;

               cdsItensPedidosUni.Next;
             end;

          cdsItensPedidosUni.First;

          qtdeTotItens := cdsItensPedidosUni.RecordCount;

          cdsItensPedidosUni.First;

          while not cdsItensPedidosUni.eof do
             begin
               qtdeTotal := qtdeTotal + cdsItensPedidosUni.FieldByName('qtde').AsCurrency;
               vlrTotal  := vlrTotal  + cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency;

               vlrTotalDescEspecial := vlrTotalDescEspecial + cdsItensPedidosUni.FieldByName('vlr_desc_especial').AsCurrency;


               if (cdsItensPedidosUni.FieldByName('vlr_desc_especial').AsCurrency  = 0) or
                  (vlrLiquidoPedidos = vlrTotal) then
                   begin
                     Modelo_calc_antigo := true;
                   end
               else
                   Modelo_calc_antigo := false;

               cdsItensPedidosUni.Next;
             end;
          cdsItensPedidosUni.First;

        end;
     txtQtdeTotal.Text := CurrToStr(qtdeTotal);




     vlrDesconto  := 0;
     TotalLiqRest := 0;
     TotalLiqTemp := 0;

     if Modelo_calc_antigo = false then
        begin
          cdsItensPedidosUni.First;
          while not cdsItensPedidosUni.eof do
             begin
                cdsItensPedidosUni.edit;
                if i <> qtdeTotItens then
                   begin
                      vlrDesconto := cdsItensPedidosUni.FieldByName('vlr_bruto').AsCurrency -
                                                 ( cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency -
                                                     (cdsItensPedidosUni.FieldByName('vlr_desc_especial').AsCurrency)) ;

                      vlr_liquido_com_especial := cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency -
                                                  roundTo(dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_desc_especial').AsCurrency,-2);

                      //dmgeral.PCP_CD_M_ORS_ITE.FieldByName('per_desconto').AsCurrency    := 100 -
                      //                                                                      ( roundTo( (vlr_liquido_com_especial / dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_bruto').AsCurrency) * 100, -4) );

                      cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency     :=
                               cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency - (cdsItensPedidosUni.FieldByName('vlr_desc_especial').AsCurrency);


                      //cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency     :=
                        //       (cdsItensPedidosUni.FieldByName('qtde').AsCurrency *
                         //       cdsItensPedidosUni.FieldByName('vlr_unitario').AsCurrency) - vlrDesconto;
                            //vlr_liquido_com_especial;

                      TotalLiqTemp := TotalLiqTemp + cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency;
                   end
                else
                   begin
                      TotalLiqRest := vlrTotal -  TotalLiqTemp;

                      //dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_desconto').AsCurrency    := dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency -
                      //                                                                       ( TotalLiqRest -
                      //                                                                         roundTo(dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_desc_especial').AsCurrency,-4)) ;

                      vlr_liquido_com_especial := TotalLiqRest;

                      //dmgeral.PCP_CD_M_ORS_ITE.FieldByName('per_desconto').AsCurrency    := 100 -
                      //                                                                      ( roundTo( (vlr_liquido_com_especial / dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_bruto').AsCurrency) * 100, -4) );

                      cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency     := TotalLiqRest;
                   end;
                cdsItensPedidosUni.post;
                cdsItensPedidosUni.Next;
             end;
          cdsItensPedidosUni.First;
        end;

     if Modelo_calc_antigo then
        txtVlrTotal.Text := FormatCurr('###,###,##0.00',vlrTotal)
     else
        begin
          txtVlrTotal.Text := FormatCurr('###,###,##0.00',vlrTotal - vlrTotalDescEspecial);
          vlrTotal := vlrTotal - vlrTotalDescEspecial;
        end;

     if percDesconto > 0 then
        txtVlrTotalDescontado.Text := FormatCurr('###,###,##0.00',roundTo(vlrTotal - ((vlrTotal * percDesconto) / 100),-2) )
     else
        txtVlrTotalDescontado.Text := FormatCurr('###,###,##0.00', vlrTotal);
   finally
     FreeAndNil(SMPrincipal);
   end;

   }





  if (trim(txtPercAbater.Text) <> '') and (trim(txtPercAbater.Text) <> '0') then
      begin
        percDesconto := strtocurr(txtPercAbater.Text);
      end;

  vlrLiquidoPedidos    := 0;
  vlrTotalDescEspecial := 0;


  BUS_CD_M_PED_PRD.First;
  while not BUS_CD_M_PED_PRD.eof do
    begin
      if pedidos = '' then
        begin
          pedidos := pedidos+''''+BUS_CD_M_PED_PRD.FieldByName('id_pedido').AsString+'''';
        end
      else
        begin
          pedidos := pedidos+','+''''+BUS_CD_M_PED_PRD.FieldByName('id_pedido').AsString+'''';
        end;

      vlrLiquidoPedidos := vlrLiquidoPedidos + BUS_CD_M_PED_PRD.FieldByName('vlr_liquido').AsCurrency;

      BUS_CD_M_PED_PRD.Next;
    end;
  BUS_CD_M_PED_PRD.First;

  qtdeTotal := 0;
  vlrTotal  := 0;
  vlrTotalDescEspecial := 0;
  vlrTotalDesc := 0;

  CdsItens := TClientDataSet.Create(nil);

  SMPrincipal := TSMClient.Create(ConexaoBDProd.DBXConnection);
   try
     // Isso aqui já pega soma total do valor de desconto especial dos pedidos pois vem de um ( sum() )
     vlrTotalDescEspecial := SMPrincipal.enSgqFatBuscarDescEspPedidos(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').AsString,
                                              pedidos);

     CdsItens.data := SMPrincipal.enSgqFatJuntarItensDosPedidos(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').AsString,
                                              pedidos);

     cdsItensPedidosUni.data :=  CdsItens.data;

     if not (cdsItensPedidosUni.IsEmpty) then
        begin
          // Buscar o nome do produto seja normal ou personalizado
          cdsItensPedidosUni.First;


          while not cdsItensPedidosUni.eof do
             begin
               dmgeral.BUS_CD_C_ITE.close;
               dmgeral.BUS_CD_C_ITE.Data :=
                    dmgeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([114,cdsItensPedidosUni.FieldByName('cod_ite_producao').AsInteger]));
               if not dmgeral.BUS_CD_C_ITE.IsEmpty then
                  begin
                    cdsItensPedidosUni.edit;
                    cdsItensPedidosUni.FieldByName('codigo').AsString := dmgeral.BUS_CD_C_ITE.FieldByName('id_item').AsString;
                    if not (dmgeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
                       begin
                         cdsItensPedidosUni.FieldByName('item').AsString := dmgeral.BUS_CD_C_ITE.FieldByName('descricao').AsString;
                       end
                    else
                       begin
                         cdsItensPedidosUni.FieldByName('item').AsString := cdsItensPedidosUni.FieldByName('item_producao').AsString;
                       end;
                    cdsItensPedidosUni.Post;
                  end;
               dmgeral.BUS_CD_C_ITE.close;

               cdsItensPedidosUni.Next;
             end;

          cdsItensPedidosUni.First;
          qtdeTotItens := cdsItensPedidosUni.RecordCount;
          cdsItensPedidosUni.First;
          vlrAcumuladoDescontado := 0;
          i := 0;
          while not cdsItensPedidosUni.eof do
             begin
               qtdeTotal := qtdeTotal + cdsItensPedidosUni.FieldByName('qtde').AsCurrency;
               vlrTotal  := vlrTotal  + cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency;
               inc(i);
               if vlrTotalDescEspecial > 0 then
                  begin
                    if i = qtdeTotItens  then
                       begin
                          cdsItensPedidosUni.edit;
                          cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency := cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency -
                                                                                      (vlrTotalDescEspecial - vlrAcumuladoDescontado);
                          cdsItensPedidosUni.Post;
                       end
                    else
                       begin
                          perc_repres := roundTo((cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency / vlrLiquidoPedidos) * 100, -2);

                          vlrADescontar := roundTo( (vlrTotalDescEspecial * perc_repres) / 100,-4);
                          vlrAcumuladoDescontado := vlrAcumuladoDescontado + vlrADescontar;

                          cdsItensPedidosUni.edit;
                          cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency := cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency - vlrADescontar;
                          cdsItensPedidosUni.Post;
                       end;
                  end;

               cdsItensPedidosUni.Next;
             end;
          cdsItensPedidosUni.First;
        end;
     txtQtdeTotal.Text := CurrToStr(qtdeTotal);



     {vlrDesconto  := 0;
     TotalLiqRest := 0;
     TotalLiqTemp := 0;

     cdsItensPedidosUni.First;
     while not cdsItensPedidosUni.eof do
         begin
            cdsItensPedidosUni.edit;
            if i <> qtdeTotItens then
               begin
                  vlrDesconto := cdsItensPedidosUni.FieldByName('vlr_desconto').AsCurrency;

                      cdsItensPedidosUni.FieldByName('vlr_bruto').AsCurrency -
                                             ( cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency -
                                                 (cdsItensPedidosUni.FieldByName('vlr_desc_especial').AsCurrency)) ;


                  //dmgeral.PCP_CD_M_ORS_ITE.FieldByName('per_desconto').AsCurrency    := 100 -
                  //                                                                      ( roundTo( (vlr_liquido_com_especial / dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_bruto').AsCurrency) * 100, -4) );

                  cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency     :=
                           cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency - (cdsItensPedidosUni.FieldByName('vlr_desc_especial').AsCurrency);


                  //cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency     :=
                    //       (cdsItensPedidosUni.FieldByName('qtde').AsCurrency *
                     //       cdsItensPedidosUni.FieldByName('vlr_unitario').AsCurrency) - vlrDesconto;
                        //vlr_liquido_com_especial;

                  TotalLiqTemp := TotalLiqTemp + cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency;
               end
            else
               begin
                  TotalLiqRest := vlrTotal -  TotalLiqTemp;

                  //dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_desconto').AsCurrency    := dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_bruto').AsCurrency -
                  //                                                                       ( TotalLiqRest -
                  //                                                                         roundTo(dmGeral.BUS_CD_M_PED_ITE.FieldByName('vlr_desc_especial').AsCurrency,-4)) ;

                  vlr_liquido_com_especial := TotalLiqRest;

                  //dmgeral.PCP_CD_M_ORS_ITE.FieldByName('per_desconto').AsCurrency    := 100 -
                  //                                                                      ( roundTo( (vlr_liquido_com_especial / dmgeral.PCP_CD_M_ORS_ITE.FieldByName('vlr_bruto').AsCurrency) * 100, -4) );

                  cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency     := TotalLiqRest;
               end;
            cdsItensPedidosUni.post;
            cdsItensPedidosUni.Next;
         end;
      cdsItensPedidosUni.First;
                                }


      txtVlrTotal.Text := FormatCurr('###,###,##0.00',vlrTotal);

      txtVlrTotalDescEspecial.Text :=   FormatCurr('###,###,##0.00',vlrTotalDescEspecial);

      txtVlrTotalDescontado.Text := FormatCurr('###,###,##0.00', vlrTotal - vlrTotalDescEspecial);
   finally
     FreeAndNil(SMPrincipal);
   end;
end;

procedure TFAT_FM_M_PED_IPE.btnAdicionarClick(Sender: TObject);
var
   i:integer;
begin

  if btnSair.Focused  then
     begin
       exit;
     end;

  if (trim(txtCodPed.Text) <> '') and (trim(txtCodPed.Text) <> '0') then
     begin
       if BUS_CD_M_PED_PRD.locate('id_pedido',txtCodPed.Text,[]) then
          begin
            Showmessage('Este pedido já foi inserido.');
            lblPedNomeCli.Caption := '';
            txtCodPed.Text := '';
            txtCodPed.Setfocus;
            exit;
          end;


       BUS_CD_M_PED_PRD.Insert;
       for i := 0 to BUS_CD_M_PED_PRD2.FieldCount - 1 do
           begin
               if (BUS_CD_M_PED_PRD2.Fields[i].FieldName <> 'FAT_SQ_M_PED_ITE') and
                  (BUS_CD_M_PED_PRD2.Fields[i].FieldName <> 'FAT_SQ_M_PED_TIT') and
                  (BUS_CD_M_PED_PRD2.Fields[i].FieldName <> 'FAT_SQ_M_PED_TIT_SER') then
                   begin
                     BUS_CD_M_PED_PRD.FieldByName(BUS_CD_M_PED_PRD2.Fields[i].FieldName).AsString :=  BUS_CD_M_PED_PRD2.Fields[i].AsString;
                   end;
           end;

       BUS_CD_M_PED_ITE_PRD2.First;
       while not BUS_CD_M_PED_ITE_PRD2.Eof do
            begin
              BUS_CD_M_PED_ITE_PRD.Insert;
                for i := 0 to BUS_CD_M_PED_ITE_PRD.FieldCount - 1 do
                    begin
                      if BUS_CD_M_PED_ITE_PRD2.Fields[i].FieldName <> '' then
                         BUS_CD_M_PED_ITE_PRD.FieldByName(BUS_CD_M_PED_ITE_PRD2.Fields[i].FieldName).AsString :=  BUS_CD_M_PED_ITE_PRD2.Fields[i].AsString;
                    end;
              BUS_CD_M_PED_ITE_PRD.Post;

              BUS_CD_M_PED_ITE_PRD2.Next;
            end;
        BUS_CD_M_PED_ITE_PRD2.First;
     end;

  lblPedNomeCli.Caption := '';
  txtCodPed.Text := '';
  txtCodPed.Setfocus;
end;

procedure TFAT_FM_M_PED_IPE.btnImportaClick(Sender: TObject);
var
  vlrLiquidoComDesconto: Currency;
  percDesconto: Currency;
  mens: String;
  total_temp,t,vlrDiferença, vlrTotalComAbatimento: Currency;
begin

  if cdsItensPedidosUni.IsEmpty then
     begin
       ShowMessage('Nenhum registro encontrado para importação.');
       exit;
     end;

  mens := '';

  cdsItensPedidosUni.First;
  while not cdsItensPedidosUni.eof do
     begin

       if (cdsItensPedidosUni.FieldByName('codigo').AsString = '') or
          (cdsItensPedidosUni.FieldByName('codigo').AsString = '0')  then
          begin
            Showmessage('O item: "' + cdsItensPedidosUni.FieldByName('cod_ite_producao').AsString +'-'+
                                      cdsItensPedidosUni.FieldByName('item_producao').AsString +', está sem o código do item relacional.');
            exit;
          end;

       dmgeral.BUS_CD_C_ITE.close;
       dmgeral.BUS_CD_C_ITE.Data :=
            dmgeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0,cdsItensPedidosUni.FieldByName('codigo').AsString]));
       if not dmgeral.BUS_CD_C_ITE.IsEmpty then
          begin
             if dmGeral.BUS_CD_C_ITE.FieldByName('int_verif_cod_barra_ped').AsBoolean then
                begin
                   if trim(dmGeral.BUS_CD_C_ITE.FieldByName('cod_barra').AsString) = '' then
                      begin
                         mens := mens + 'Item: ' + cdsItensPedidosUni.FieldByName('codigo').AsString +'-'+
                                                   cdsItensPedidosUni.FieldByName('item').AsString + #13;
                      end;
                end;
          end;


      { if cdsItensPedidosUni.FieldByName('item').AsString <>
          cdsItensPedidosUni.FieldByName('item_producao').AsString then
          begin
            mens := mens + 'O item: "' + cdsItensPedidosUni.FieldByName('codigo').AsString +'-'+
                                         cdsItensPedidosUni.FieldByName('item').AsString + #13;
          end;        }
       cdsItensPedidosUni.Next;
     end;
  cdsItensPedidosUni.First;

  if trim(mens) <> '' then
     begin
       mens := 'Produto sem código de barra(GTIN): ' + #13 + mens;

       Showmessage(mens);
       exit;
     end;



  if MessageDlg('Confirma importação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       if (trim(txtPercAbater.Text) <> '') and (trim(txtPercAbater.Text) <> '0') then
          begin
            percDesconto := strtocurr(txtPercAbater.Text);
          end;

        try
        { O código abaixo server para anular os eventos dos campos abaixo
          pois os itens do pedido devem ser gravado com os mesmos valores do
          orçamento. Pois assim evita do pedido de venda fazer cálculo de preço   }
        dmGeral.FAT_CD_M_PED_ITEid_item.OnChange      := nil;
        dmGeral.FAT_CD_M_PED_ITEQTDE.OnChange         := nil;
        dmGeral.FAT_CD_M_PED_ITEVLR_UNITARIO.OnChange := nil;
        dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := nil;
        // ----------------------------------------------------------------------
        total_temp := 0;
        if not cdsItensPedidosUni.IsEmpty then
           begin
             cdsItensPedidosUni.First;
             while not cdsItensPedidosUni.eof do
                 begin
                   if percDesconto > 0 then
                      vlrLiquidoComDesconto := cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency -
                                            (roundTo( (cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency * percDesconto) / 100,-2))
                   else
                      vlrLiquidoComDesconto := cdsItensPedidosUni.FieldByName('vlr_liquido').AsCurrency;

                   dmGeral.FAT_CD_M_PED_ITE.Insert;
                   dmGeral.FAT_CD_M_PED_ITEid_item.AsInteger         := cdsItensPedidosUni.FieldByName('codigo').AsInteger;
                   dmGeral.FAT_CD_M_PED_ITEint_tipo_item.Asinteger   := cdsItensPedidosUni.FieldByName('tipo_item').Asinteger;
                   dmGeral.FAT_CD_M_PED_ITEint_nomeite.AsString      := cdsItensPedidosUni.FieldByName('item').AsString;

                   dmgeral.BUS_CD_C_ITE.close;
                   dmgeral.BUS_CD_C_ITE.Data :=
                        dmgeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0,cdsItensPedidosUni.FieldByName('codigo').AsString]));

                   if dmgeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean then
                      begin
                        dmGeral.FAT_CD_M_PED_ITEpcp_obs_item.AsString     := cdsItensPedidosUni.FieldByName('item').AsString;
                      end;
                   dmgeral.BUS_CD_C_ITE.close;

                   dmGeral.FAT_CD_M_PED_ITEint_id_und_venda.AsString := cdsItensPedidosUni.FieldByName('und_venda').AsString;
                   //dmGeral.FAT_CD_M_PED_ITEid_sequencia.AsInteger    := dmGeral.FAT_CD_M_ORC_ITEid_seq_item.AsInteger;
                   dmGeral.FAT_CD_M_PED_ITEid_busca_item.AsString    := cdsItensPedidosUni.FieldByName('codigo').AsString;
                   dmGeral.FAT_CD_M_PED_ITEid_cor.text               := '1'; //Cor única cdsItensPedidosUni.FieldByName('cod_cor').text;
                   dmGeral.FAT_CD_M_PED_ITEint_nomecor.text          := 'Única'; //cdsItensPedidosUni.FieldByName('cor').text;
                   //dmGeral.FAT_CD_M_PED_ITEid_tamanho.text           := dmGeral.FAT_CD_M_ORC_ITEid_tamanho.text;
                   dmGeral.FAT_CD_M_PED_ITEqtde.AsFloat              := cdsItensPedidosUni.FieldByName('qtde').AsFloat;

                   //dmGeral.FAT_CD_M_PED_ITEvlr_unitario.AsCurrency   := roundTo(vlrLiquidoComDesconto /
                   //                                                     cdsItensPedidosUni.FieldByName('qtde').AsFloat,-2);

                   dmGeral.FAT_CD_M_PED_ITEvlr_unitario.AsCurrency   := vlrLiquidoComDesconto /
                                                                        cdsItensPedidosUni.FieldByName('qtde').AsCurrency;


                   //dmGeral.FAT_CD_M_PED_ITEvlr_bruto.AsCurrency      := vlrLiquidoComDesconto;
                   dmGeral.FAT_CD_M_PED_ITEvlr_bruto.AsCurrency      :=
                            dmGeral.FAT_CD_M_PED_ITEqtde.AsFloat * dmGeral.FAT_CD_M_PED_ITEvlr_unitario.AsCurrency;


                   dmGeral.FAT_CD_M_PED_ITEper_desconto.AsCurrency   := 0;
                   dmGeral.FAT_CD_M_PED_ITEvlr_desconto.AsCurrency   := 0;

                   //t := roundTo(dmGeral.FAT_CD_M_PED_ITEvlr_bruto.AsCurrency,-4);
                   dmGeral.FAT_CD_M_PED_ITEvlr_liquido.AsCurrency    := roundTo(dmGeral.FAT_CD_M_PED_ITEvlr_bruto.AsCurrency,-4);
                   //dmGeral.FAT_CD_M_PED_ITEvlr_liquido.AsCurrency    := t;
                   total_temp := total_temp + dmGeral.FAT_CD_M_PED_ITEvlr_liquido.AsCurrency;

                   //dmGeral.FAT_CD_M_PED_ITEvlr_liquido.AsCurrency    := vlrLiquidoComDesconto;
                   dmGeral.FAT_CD_M_PED_ITE.Post;
                   cdsItensPedidosUni.Next;
                 end;
           end;
        cdsItensPedidosUni.First;


        vlrTotalComAbatimento := strtocurr(StringReplace(txtVlrTotalDescontado.Text,'.','',[rfReplaceAll]));
        vlrDiferença          := 0;

        if total_temp > vlrTotalComAbatimento then
           begin
             vlrDiferença := total_temp - vlrTotalComAbatimento;
             dmGeral.FAT_CD_M_PED_ITE.Edit;

             dmGeral.FAT_CD_M_PED_ITEvlr_liquido.AsCurrency  := dmGeral.FAT_CD_M_PED_ITEvlr_liquido.AsCurrency - vlrDiferença;
             dmGeral.FAT_CD_M_PED_ITEvlr_bruto.AsCurrency    :=  dmGeral.FAT_CD_M_PED_ITEvlr_liquido.AsCurrency;
             dmGeral.FAT_CD_M_PED_ITEvlr_unitario.AsCurrency := dmGeral.FAT_CD_M_PED_ITEvlr_bruto.AsCurrency /
                                                                        cdsItensPedidosUni.FieldByName('qtde').AsCurrency;
             dmGeral.FAT_CD_M_PED_ITE.post;
           end;

        dmGeral.FAT_CD_M_PED_ITE.First;

        finally
            dmGeral.FAT_CD_M_PED_ITEid_item.OnChange      := dmGeral.FAT_CD_M_PED_ITEid_itemChange;
            dmGeral.FAT_CD_M_PED_ITEQTDE.OnChange         := dmGeral.FAT_CD_M_PED_ITEQTDEChange;
            dmGeral.FAT_CD_M_PED_ITEVLR_UNITARIO.OnChange := dmGeral.FAT_CD_M_PED_ITEVLR_UNITARIOChange;
            dmGeral.FAT_CD_M_PED_ITEPER_DESCONTO.OnChange := dmGeral.FAT_CD_M_PED_ITEPER_DESCONTOChange;
        end;

        close;
     end;



end;

procedure TFAT_FM_M_PED_IPE.ConectarBancoProd;
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
  if ConexaoBDProd.Connected = true then
     begin
       msg := msg + 'A conexão esta aberta' + #13;
       ConexaoBDProd.Connected := false;
       msg := msg + 'A Conexão será reiniciada' + #13;
     end;


  if not FileExists(ExtractFilePath(Application.ExeName)+'RedeCliProd.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'RedeCliProd.Ini');
       Rede.WriteString('DEFINICAO_DE_DATABASE','HOST','');
       Application.MessageBox('O Arquivo RedeCliProd.Ini Encontra-se desconfigurado, Configure-o e reinicie o sistema!',
        'Atenção', MB_ICONINFORMATION or MB_OK);
       Application.Terminate;
     end;
  Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'RedeCliProd.Ini');
  ConexaoBDProd.Close;
  ConexaoBDProd.Params.Clear;
  ConexaoBDProd.Params.Add('DriverUnit=Data.DBXDataSnap');
  ConexaoBDProd.Params.Add('HostName='+Rede.ReadString('DEFINICAO_DE_DATABASE','HOST',''));
  ConexaoBDProd.Params.Add('Port='+Rede.ReadString('DEFINICAO_DE_DATABASE','PORTA',''));
  //Conexao.Params.Add('Port=211');
  ConexaoBDProd.Params.Add('CommunicationProtocol=tcp/ip');
  ConexaoBDProd.Params.Add('DatasnapContext=datasnap/');
  ConexaoBDProd.Params.Add('DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland.Data.DbxClientDriver,Version=18.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b');
  ConexaoBDProd.Params.Add('Filters={}');
  Try
    begin
      ConexaoBDProd.Open;
    end;
  Except on E:Exception do
    Begin
      Application.MessageBox(Pchar('Não foi possível conectar-se ao banco de dados para importar o pedido.!'+#13+#13+#13+
        'Descrição do erro: '+
        #13+#13+E.Message),'Atenção', MB_ICONERROR or MB_OK);
        Application.Terminate;
    end;
  end;
end;

procedure TFAT_FM_M_PED_IPE.dbGridIButtonClick(Sender: TObject);
begin

  if BUS_CD_M_PED_PRD.IsEmpty then
     begin
       Showmessage('Não há pedido para ser retirado.');
       exit;
     end;

  BUS_CD_M_PED_PRD.delete;

  txtQtdeTotal.Text := '0';
  txtVlrTotal.Text := '0';
  txtVlrTotalDescontado.Text := '0';

  cdsItensPedidosUni.EmptyDataSet;

end;

procedure TFAT_FM_M_PED_IPE.dbGridMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  xFechaCdsOrc := false;
end;

procedure TFAT_FM_M_PED_IPE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if xFechaCdsOrc then
     begin
       dmGeral.FAT_CD_M_ORC.close;
     end;
end;

procedure TFAT_FM_M_PED_IPE.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(27) then
     begin
       Key := #0;
       Close;
     end;
  if (Key = chr(13)) then
     begin
       Perform(wm_NextDlgCtl,0,0);
       Key := #0;
     end;

  if (key= char(9)) then
     key := #0;
end;

procedure TFAT_FM_M_PED_IPE.FormShow(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  ConectarBancoProd;

  BUS_CD_M_PED_PRD.close;
     BUS_CD_M_PED_PRD.Data :=
            BUS_CD_M_PED_PRD.DataRequest(VarArrayOf([0,0,'0']));

  BUS_CD_M_PED_PRD2.close;
     BUS_CD_M_PED_PRD2.Data :=
            BUS_CD_M_PED_PRD2.DataRequest(VarArrayOf([0,0,'0']));

  CdsItens := TClientDataSet.Create(nil);

  SMPrincipal := TSMClient.Create(ConexaoBDProd.DBXConnection);
   try
     CdsItens.data := SMPrincipal.enSgqFatJuntarItensDosPedidos(dmGeral.CAD_CD_C_PAR_CTR.FieldByName('pcp_id_empresa_base_prod').AsString,
                                              '''0''');
     txtQtdeTotal.Text := '0';
     txtVlrTotal.Text := '0';
     txtVlrTotalDescontado.Text := '0';
   finally
     FreeAndNil(SMPrincipal);
   end;
end;

procedure TFAT_FM_M_PED_IPE.mmPcpObsIteEnter(Sender: TObject);
begin
  FAT_FM_M_PED_IPE.KeyPreview := false;
end;

procedure TFAT_FM_M_PED_IPE.mmPcpObsIteExit(Sender: TObject);
begin
   FAT_FM_M_PED_IPE.KeyPreview := true;
   cdsItensPedidosUni.Post;
   pnMedidas.Visible := False;
end;

procedure TFAT_FM_M_PED_IPE.txtCodPedExit(Sender: TObject);
begin
  if btnSair.Focused  then
     begin
       exit;
     end;

  if (trim(txtCodPed.Text) <> '0') and (trim(txtCodPed.Text) <> '') then
     begin
       BUS_CD_M_PED_PRD2.close;
       BUS_CD_M_PED_PRD2.Data :=
            BUS_CD_M_PED_PRD2.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR_CTRpcp_id_empresa_base_prod.Text,trim(txtCodPed.Text)]));
       if not BUS_CD_M_PED_PRD2.IsEmpty then
          begin
            lblPedNomeCli.Caption := BUS_CD_M_PED_PRD2.FieldByName('int_nomecli').AsString;

             if dmGeral.FAT_CD_M_PEDint_cpfcnpj.AsString <>  BUS_CD_M_PED_PRD2.FieldByName('int_cpfcnpj').AsString then
                begin
                  ShowMessage('O CNPJ/CPF deste novo pedido é diferente do CNPJ/CPF do cliente do pedido que deseja inserir.');
                  BUS_CD_M_PED_PRD2.close;
                  lblPedNomeCli.Caption := '';
                  txtCodPed.Text := '';
                  txtCodPed.Setfocus;
                  exit;
                end;


            case BUS_CD_M_PED_PRD2.FieldByName('situacao').AsInteger of
               0:
                begin
                  ShowMessage('Este pedido de venda está em aberto (não foi para produção)');
                  BUS_CD_M_PED_PRD2.close;
                  lblPedNomeCli.Caption := '';
                  txtCodPed.Text := '';
                  txtCodPed.Setfocus;
                  exit;
                end;
               1:
                begin
                  ShowMessage('Este pedido de venda foi reprovado.');
                  BUS_CD_M_PED_PRD2.close;
                  lblPedNomeCli.Caption := '';
                  txtCodPed.Text := '';
                  txtCodPed.Setfocus;
                  exit;
                end;
               4:
                begin
                  ShowMessage('Este pedido de venda foi cancelado.');
                  BUS_CD_M_PED_PRD2.close;
                  lblPedNomeCli.Caption := '';
                  txtCodPed.Text := '';
                  txtCodPed.Setfocus;
                  exit;
                end;
            end;

          end
       else
          begin
            showMessage('Pedido não cadastrado.');
            txtCodPed.Text := '';
            txtCodPed.Setfocus;
          end;
     end
  else
     begin
       txtCodPed.Text    := '';
       lblPedNomeCli.Caption := '';
     end;

end;

procedure TFAT_FM_M_PED_IPE.txtIdItemButtonClick(Sender: TObject);
var
  comErro: boolean;
begin
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  dmGeral.BusCliente(0,dmGeral.FAT_CD_M_PED.FieldByName('ID_CLIENTE').Text);
  PSQ_FM_X_ITE.xPerfilCliPsqItem := dmGeral.BUS_CD_C_CLI.FieldByName('ID_PERFIL_CLI').Text;
   xFormRespPSQ_ITE := FAT_FM_M_PED.Name;

  xVendedor_externo := dmGeral.BUS_CD_C_FU3.FieldByName('vnd_interno_externo').AsString;
  if trim(xVendedor_externo) = '' then
          xVendedor_externo := '9';

  PSQ_FM_X_ITE.ShowModal;
  if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
     begin
       comErro := false;

       dmgeral.BUS_CD_C_ITE.close;
          dmgeral.BUS_CD_C_ITE.Data :=
              dmgeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0,PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger]));


             cdsItensPedidosUni.edit;
             cdsItensPedidosUni.FieldByName('codigo').AsInteger :=
                PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

         if not (dmgeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
            begin
               if  cdsItensPedidosUni.FieldByName('item_producao').AsString <>
                   PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString then
                   begin
                     ShowMessage('A descrição do item que deseja associar está diferente: ' + #13 +
                     ' Você pode ter selecionado um outro produto ou precisa corrigir o cadastro da descrição.');
                     //comErro := true;
                   end;
               cdsItensPedidosUni.FieldByName('item').AsString := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

               cdsItensPedidosUni.Post;
            end
         else
            begin
              cdsItensPedidosUni.FieldByName('item').AsString := cdsItensPedidosUni.FieldByName('item_producao').AsString;
              if MessageDlg('Deseja alterar a descricao do item personalizado?', mtConfirmation, [mbYes, mbNo], 1) = mrYes then
                 begin
                   cdsItensPedidosUni.Post;
                   cdsItensPedidosUni.edit;
                   pnMedidas.visible := true;
                   mmPcpObsIte.SetFocus;
                   exit;
                 end;
            end;



       if comErro = false then
          begin
             if (not (dmgeral.BUS_CD_C_ITE.IsEmpty)) and (not (dmgeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean)) then
                begin
                  dmgeral.BUS_CD_C_ITE.edit;
                  dmgeral.BUS_CD_C_ITE.FieldByName('cod_item_prod').AsString := cdsItensPedidosUni.FieldByName('cod_ite_producao').AsString;
                  dmgeral.BUS_CD_C_ITE.Post;
                  if dmgeral.BUS_CD_C_ITE.ApplyUpdates(0) <> 0 then
                     begin
                       ShowMessage('Erro ao tentar gravar o código do item da produção.');
                     end;
                end;
          end;
     end;
  PSQ_FM_X_ITE.Free;
end;

procedure TFAT_FM_M_PED_IPE.txtIdItemExit(Sender: TObject);
//var
//  comErro: boolean;
begin

  {if (txtIdItem.text <> '') and
     (txtIdItem.text <> '0') then
     begin
        cdsItensPedidosUni.edit;

        cdsItensPedidosUni.FieldByName('codigo').AsString := txtIdItem.text;

        dmgeral.BUS_CD_C_ITE.close;
                dmgeral.BUS_CD_C_ITE.Data :=
                    dmgeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0,txtIdItem.text]));

        if dmgeral.BUS_CD_C_ITE.IsEmpty then
           begin
             Showmessage('Item não encontrado.');
             exit;
           end;


         comErro := false;



         //cdsItensPedidosUni.edit;
         //cdsItensPedidosUni.FieldByName('codigo').AsInteger :=
         //   PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;

         if not (dmgeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
            begin
               if cdsItensPedidosUni.FieldByName('item_producao').AsString <>
                  dmgeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString then
                  begin
                     ShowMessage('A descrição do item que deseja associar está diferente: ' + #13 +
                     ' Você pode ter selecionado um outro produto ou precisa corrigir o cadastro da descrição.');
                     //comErro := true;
                  end;
               cdsItensPedidosUni.FieldByName('item').AsString := dmgeral.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString;

               cdsItensPedidosUni.Post;
            end
         else
            begin
              cdsItensPedidosUni.FieldByName('item').AsString := cdsItensPedidosUni.FieldByName('item_producao').AsString;
              if MessageDlg('Deseja alterar a descricao do item personalizado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                 begin
                   cdsItensPedidosUni.Post;
                   cdsItensPedidosUni.edit;
                   pnMedidas.visible := true;
                   mmPcpObsIte.SetFocus;
                   exit;
                 end;
            end;



         if comErro = false then
            begin
               if (not (dmgeral.BUS_CD_C_ITE.IsEmpty)) and (not (dmgeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean)) then
                  begin
                    dmgeral.BUS_CD_C_ITE.edit;
                    dmgeral.BUS_CD_C_ITE.FieldByName('cod_item_prod').AsString := cdsItensPedidosUni.FieldByName('cod_ite_producao').AsString;
                    dmgeral.BUS_CD_C_ITE.Post;
                    if dmgeral.BUS_CD_C_ITE.ApplyUpdates(0) <> 0 then
                       begin
                         ShowMessage('Erro ao tentar gravar o código do item da produção.');
                       end;
                  end;
            end;

     end; }

end;

procedure TFAT_FM_M_PED_IPE.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin

  if (cdsItensPedidosUni.FieldByName('codigo').AsString = '') or
     (cdsItensPedidosUni.FieldByName('codigo').AsString = '0') then
     begin
       aFont.Color := clRed;
     end;

 { if cdsItensPedidosUni.FieldByName('codigo').AsString <> '0' then
     begin
        if (cdsItensPedidosUni.FieldByName('item_producao').AsString <>
            cdsItensPedidosUni.FieldByName('item').AsString) then
            begin
             aFont.Color := clGreen;
            end;
     end;  }
end;

procedure TFAT_FM_M_PED_IPE.wwDBGrid1DblClick(Sender: TObject);
begin

    if (cdsItensPedidosUni.FieldByName('codigo').AsString <> '') and
       (cdsItensPedidosUni.FieldByName('codigo').AsString <> '0') then
       begin
           dmgeral.BUS_CD_C_ITE.close;
            dmgeral.BUS_CD_C_ITE.Data :=
                dmgeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0,cdsItensPedidosUni.FieldByName('codigo').AsString]));

           if (dmgeral.BUS_CD_C_ITE.FieldByName('sgq_personalizado').AsBoolean) then
              begin
                if MessageDlg('Deseja alterar a descricao do item personalizado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                   begin
                     cdsItensPedidosUni.edit;
                     pnMedidas.visible := true;
                     mmPcpObsIte.SetFocus;
                     exit;
                   end;
              end;

       end;
end;

end.
