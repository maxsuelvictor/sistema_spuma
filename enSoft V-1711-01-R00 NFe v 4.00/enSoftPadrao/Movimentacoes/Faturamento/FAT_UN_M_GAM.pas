unit FAT_UN_M_GAM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, inifiles, ACBrUtil,ACBrSEF2Conversao,
  ACBrSEF2_eDoc_BlocoC,  ACBrSef2_BlocoE, ACBrSEF2_BlocoH,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,ACBrEFDBlocos,
  Data.DB, vcl.wwdatsrc, JvExMask, JvToolEdit, JvDBControls, vcl.wwdblook, ACBrTXTClass,
  Vcl.CheckLst, Vcl.Buttons, ACBrSpedFiscal, ACBrEFDBloco_K,
  ACBrSpedPisCofins, ACBrEPCBlocos, Datasnap.DBClient, ACBrSEF2, ACBrDeSTDA, ACBrDeSTDABlocos,
  ACBrBase;

type
  TFAT_FM_M_GAM = class(TForm)
    dso: TwwDataSource;
    dsoIte: TwwDataSource;
    dlgSave: TSaveDialog;
    dso2: TwwDataSource;
    dsoIte2: TwwDataSource;
    PanelCentral: TPanel;
    PcNotaFscal: TPageControl;
    tsNotaFiscal: TTabSheet;
    dgNotaFiscal: TwwDBGrid;
    dgNotaItem: TwwDBGrid;
    tsCupomFiscal: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    pnlDown: TPanel;
    lblPeriodo: TLabel;
    Label1: TLabel;
    dtaInicial: TJvDateEdit;
    dtaFinal: TJvDateEdit;
    btnSEF: TButton;
    btnSpedFiscal: TButton;
    btnSpedPisCofins: TButton;
    btnEdoc: TButton;
    ClbEmpresa: TCheckListBox;
    btnInventario: TButton;
    btnFiltrar: TButton;
    BitBtn1: TBitBtn;
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    ACBrSPEDPisCofins1: TACBrSPEDPisCofins;
    txtNumReciboEscrituracaoAnterior: TEdit;
    Label2: TLabel;
    FAT_CD_R_GAM_150: TClientDataSet;
    FAT_CD_R_GAM_150cod_pais: TWideMemoField;
    FAT_CD_R_GAM_150doc_cnpj_cpf: TWideMemoField;
    FAT_CD_R_GAM_150uf: TWideStringField;
    FAT_CD_R_GAM_150ie: TWideMemoField;
    FAT_CD_R_GAM_150id_cidade: TWideStringField;
    FAT_CD_R_GAM_150im: TWideStringField;
    FAT_CD_R_GAM_150suframa: TWideMemoField;
    FAT_CD_R_GAM_150endereco: TWideMemoField;
    FAT_CD_R_GAM_150numero: TWideMemoField;
    FAT_CD_R_GAM_150end_complemento: TWideStringField;
    FAT_CD_R_GAM_150bairro: TWideStringField;
    FAT_CD_R_GAM_E20: TClientDataSet;
    FAT_CD_R_GAM_E20id_fiscal: TIntegerField;
    FAT_CD_R_GAM_E20ind_operacao: TIntegerField;
    FAT_CD_R_GAM_E20ind_emitente: TIntegerField;
    FAT_CD_R_GAM_E20cpf_cnpj: TWideStringField;
    FAT_CD_R_GAM_E20cod_participantes: TIntegerField;
    FAT_CD_R_GAM_E20modelo: TWideStringField;
    FAT_CD_R_GAM_E20situacao_lancto: TWideStringField;
    FAT_CD_R_GAM_E20serie: TWideStringField;
    FAT_CD_R_GAM_E20numero: TIntegerField;
    FAT_CD_R_GAM_E20nfe_chave: TWideStringField;
    FAT_CD_R_GAM_E20dta_emissao: TDateField;
    FAT_CD_R_GAM_E20dta_documento: TDateField;
    FAT_CD_R_GAM_E20cod_natureza: TWideStringField;
    FAT_CD_R_GAM_E20cod_cla_oper: TWideStringField;
    FAT_CD_R_GAM_E20num_lancto_contabil: TIntegerField;
    FAT_CD_R_GAM_E20ind_pagamento: TIntegerField;
    FAT_CD_R_GAM_E20vlr_contabil: TFMTBCDField;
    FAT_CD_R_GAM_E20vlr_iss: TFMTBCDField;
    FAT_CD_R_GAM_E20vlr_base_icms: TFMTBCDField;
    FAT_CD_R_GAM_E20vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_E20vlr_icms_subst: TFMTBCDField;
    FAT_CD_R_GAM_E20vlr_icms_subst_credit: TIntegerField;
    FAT_CD_R_GAM_E20vlr_icms_subst_saida: TIntegerField;
    FAT_CD_R_GAM_E20vlr_icms_oper_entr: TIntegerField;
    FAT_CD_R_GAM_E20vlr_isenta: TFMTBCDField;
    FAT_CD_R_GAM_E20vlr_outras: TFMTBCDField;
    FAT_CD_R_GAM_E20vlr_ipi: TFMTBCDField;
    FAT_CD_R_GAM_E20vlr_outros_ipi: TIntegerField;
    FAT_CD_R_GAM_E25: TClientDataSet;
    FAT_CD_R_GAM_E25id_fiscal: TIntegerField;
    FAT_CD_R_GAM_E25id_cfo: TWideStringField;
    FAT_CD_R_GAM_E25aliq_icms: TFloatField;
    FAT_CD_R_GAM_E25vlr_mercadoria: TFMTBCDField;
    FAT_CD_R_GAM_E25vlr_iss: TFMTBCDField;
    FAT_CD_R_GAM_E25vlr_base_icms: TFMTBCDField;
    FAT_CD_R_GAM_E25vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_E25vlr_base_icms_subst: TFMTBCDField;
    FAT_CD_R_GAM_E25vlr_icms_subst: TFMTBCDField;
    FAT_CD_R_GAM_E25vlr_isenta: TFMTBCDField;
    FAT_CD_R_GAM_E25vlr_outras: TFMTBCDField;
    FAT_CD_R_GAM_E25vlr_ipi_base: TFMTBCDField;
    FAT_CD_R_GAM_E25vlr_ipi_isento: TIntegerField;
    FAT_CD_R_GAM_E25vlr_ipi_outros: TIntegerField;
    FAT_CD_R_GAM_E25ind_petr: TIntegerField;
    FAT_CD_R_GAM_E25ind_imun: TWideMemoField;
    FAT_CD_R_GAM_E105: TClientDataSet;
    FAT_CD_R_GAM_E105id_fiscal: TIntegerField;
    FAT_CD_R_GAM_E105id_cfo: TWideStringField;
    FAT_CD_R_GAM_E105aliq_icm: TFloatField;
    FAT_CD_R_GAM_E105vlr_mercadoria: TFMTBCDField;
    FAT_CD_R_GAM_E105vlr_iss: TFMTBCDField;
    FAT_CD_R_GAM_E105vlr_base_icms: TFMTBCDField;
    FAT_CD_R_GAM_E105vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_E105vlr_icms_subst: TFMTBCDField;
    FAT_CD_R_GAM_E105vlr_isenta: TFMTBCDField;
    FAT_CD_R_GAM_E105vlr_outras: TFMTBCDField;
    FAT_CD_R_GAM_E105ind_petr: TIntegerField;
    FAT_CD_R_GAM_E100: TClientDataSet;
    FAT_CD_R_GAM_E100id_fiscal: TIntegerField;
    FAT_CD_R_GAM_E100ind_operacao: TIntegerField;
    FAT_CD_R_GAM_E100ind_emitente: TIntegerField;
    FAT_CD_R_GAM_E100cpf_cnpj: TWideStringField;
    FAT_CD_R_GAM_E100id_cidade: TWideStringField;
    FAT_CD_R_GAM_E100modelo: TWideStringField;
    FAT_CD_R_GAM_E100situacao_lancto: TWideStringField;
    FAT_CD_R_GAM_E100qtde_canceladas: TIntegerField;
    FAT_CD_R_GAM_E100serie: TWideStringField;
    FAT_CD_R_GAM_E100sub_serie: TWideStringField;
    FAT_CD_R_GAM_E100cod_consolidado: TWideMemoField;
    FAT_CD_R_GAM_E100numero: TIntegerField;
    FAT_CD_R_GAM_E100qtde_doc: TIntegerField;
    FAT_CD_R_GAM_E100dta_emissao: TDateField;
    FAT_CD_R_GAM_E100dta_documento: TDateField;
    FAT_CD_R_GAM_E100id_classe: TWideStringField;
    FAT_CD_R_GAM_E100id_classe_1: TWideStringField;
    FAT_CD_R_GAM_E100num_lancto_contabil: TWideMemoField;
    FAT_CD_R_GAM_E100vlr_contabil: TFMTBCDField;
    FAT_CD_R_GAM_E100vlr_iss: TFMTBCDField;
    FAT_CD_R_GAM_E100vlr_base_icms: TFMTBCDField;
    FAT_CD_R_GAM_E100vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_E100vlr_icms_subst: TFMTBCDField;
    FAT_CD_R_GAM_E100vlr_isenta: TFMTBCDField;
    FAT_CD_R_GAM_E100vlr_outras: TFMTBCDField;
    FAT_CD_R_GAM_E100cod_observacao: TWideMemoField;
    FAT_CD_R_GAM_E120: TClientDataSet;
    FAT_CD_R_GAM_E120ind_operacao: TIntegerField;
    FAT_CD_R_GAM_E120ind_emitente: TIntegerField;
    FAT_CD_R_GAM_E120cpf_cnpj: TWideStringField;
    FAT_CD_R_GAM_E120id_cidade: TWideStringField;
    FAT_CD_R_GAM_E120modelo: TWideStringField;
    FAT_CD_R_GAM_E120situacao_lancto: TWideStringField;
    FAT_CD_R_GAM_E120serie: TWideStringField;
    FAT_CD_R_GAM_E120sub_serie: TWideStringField;
    FAT_CD_R_GAM_E120numero: TIntegerField;
    FAT_CD_R_GAM_E120nfe_chave: TWideStringField;
    FAT_CD_R_GAM_E120dta_emissao: TDateField;
    FAT_CD_R_GAM_E120dta_documento: TDateField;
    FAT_CD_R_GAM_E120id_classe: TWideStringField;
    FAT_CD_R_GAM_E120num_lancto_contabil: TWideMemoField;
    FAT_CD_R_GAM_E120ind_pagamento: TIntegerField;
    FAT_CD_R_GAM_E120vlr_contabil: TFMTBCDField;
    FAT_CD_R_GAM_E120id_cfo: TWideStringField;
    FAT_CD_R_GAM_E120vlr_base_icms: TFMTBCDField;
    FAT_CD_R_GAM_E120alq_icms: TFMTBCDField;
    FAT_CD_R_GAM_E120vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_E120vlr_icms_subst: TFMTBCDField;
    FAT_CD_R_GAM_E120vlr_isenta: TFMTBCDField;
    FAT_CD_R_GAM_E120vlr_outras: TFMTBCDField;
    FAT_CD_R_GAM_E120cod_observacao: TWideMemoField;
    FAT_CD_R_GAM_H20: TClientDataSet;
    FAT_CD_R_GAM_H20id_empresa: TIntegerField;
    FAT_CD_R_GAM_H20dta_inventario: TDateField;
    FAT_CD_R_GAM_H20ind_data: TWideMemoField;
    FAT_CD_R_GAM_H20vlr_estoque: TFloatField;
    FAT_CD_R_GAM_H20vlr_icms_recup: TIntegerField;
    FAT_CD_R_GAM_H20vlr_ipi_recup: TIntegerField;
    FAT_CD_R_GAM_H20vlr_cofins_recup: TIntegerField;
    FAT_CD_R_GAM_H20vlr_trib_n_cumul: TIntegerField;
    FAT_CD_R_GAM_H20vlr_estoque_1: TFloatField;
    FAT_CD_R_GAM_H20num_lancto: TWideMemoField;
    FAT_CD_R_GAM_H20cod_observacao: TWideMemoField;
    FAT_CD_R_GAM_H30: TClientDataSet;
    FAT_CD_R_GAM_H30ind_posse: TWideMemoField;
    FAT_CD_R_GAM_H30emp_cnpj: TWideStringField;
    FAT_CD_R_GAM_H30ind_item: TWideStringField;
    FAT_CD_R_GAM_H30id_ncm: TWideStringField;
    FAT_CD_R_GAM_H30id_empresa: TIntegerField;
    FAT_CD_R_GAM_H30id_item: TIntegerField;
    FAT_CD_R_GAM_H30vlr_unit: TFMTBCDField;
    FAT_CD_R_GAM_H30qtd: TFloatField;
    FAT_CD_R_GAM_H30vlr_liquido: TFloatField;
    FAT_CD_R_GAM_H30vlr_icms: TIntegerField;
    FAT_CD_R_GAM_H30vlr_ipi: TIntegerField;
    FAT_CD_R_GAM_H30vlr_pis: TIntegerField;
    FAT_CD_R_GAM_H30vlr_cofins: TIntegerField;
    FAT_CD_R_GAM_H30vlr_trib_n_cumul: TIntegerField;
    FAT_CD_R_GAM_H30cod_observacao: TWideMemoField;
    FAT_CD_R_GAM_H30id_und_compra: TWideStringField;
    FAT_CD_R_GAM_H50: TClientDataSet;
    FAT_CD_R_GAM_H50id_empresa: TIntegerField;
    FAT_CD_R_GAM_H50dta_inventario: TDateField;
    FAT_CD_R_GAM_H50tipo_item: TWideStringField;
    FAT_CD_R_GAM_H50vlr_total: TFloatField;
    FAT_CD_R_GAM_H60: TClientDataSet;
    FAT_CD_R_GAM_H60id_empresa: TIntegerField;
    FAT_CD_R_GAM_H60dta_inventario: TDateField;
    FAT_CD_R_GAM_H60id_ncm: TWideStringField;
    FAT_CD_R_GAM_H60vlr_total: TFloatField;
    FAT_CD_R_GAM_C20: TClientDataSet;
    FAT_CD_R_GAM_C20id_fiscal: TIntegerField;
    FAT_CD_R_GAM_C20ind_operacao: TIntegerField;
    FAT_CD_R_GAM_C20ind_emitente: TIntegerField;
    FAT_CD_R_GAM_C20cpf_cnpj: TWideStringField;
    FAT_CD_R_GAM_C20modelo: TWideStringField;
    FAT_CD_R_GAM_C20situacao_lancto: TWideStringField;
    FAT_CD_R_GAM_C20serie: TWideStringField;
    FAT_CD_R_GAM_C20numero: TIntegerField;
    FAT_CD_R_GAM_C20nfe_chave: TWideStringField;
    FAT_CD_R_GAM_C20dta_emissao: TDateField;
    FAT_CD_R_GAM_C20dta_documento: TDateField;
    FAT_CD_R_GAM_C20ind_pagamento: TIntegerField;
    FAT_CD_R_GAM_C20vlr_contabil: TFMTBCDField;
    FAT_CD_R_GAM_C20vlr_desconto: TFMTBCDField;
    FAT_CD_R_GAM_C20vlr_acrescimo: TFMTBCDField;
    FAT_CD_R_GAM_C20vlr_mercadoria: TFMTBCDField;
    FAT_CD_R_GAM_C20fre_valor: TFMTBCDField;
    FAT_CD_R_GAM_C20vlr_seguro: TFMTBCDField;
    FAT_CD_R_GAM_C20vlr_outras: TFMTBCDField;
    FAT_CD_R_GAM_C20vlr_op_iss: TIntegerField;
    FAT_CD_R_GAM_C20vlr_base_icms: TFMTBCDField;
    FAT_CD_R_GAM_C20vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_C20vlr_base_icms_subst: TFMTBCDField;
    FAT_CD_R_GAM_C20vlr_icms_subst: TFMTBCDField;
    FAT_CD_R_GAM_C20vlr_at: TIntegerField;
    FAT_CD_R_GAM_C20vlr_ipi: TFMTBCDField;
    FAT_CD_R_GAM_C20ind_frete: TIntegerField;
    FAT_CD_R_GAM_C20vlr_aba_nt: TIntegerField;
    FAT_CD_R_GAM_C20pis_valor: TFMTBCDField;
    FAT_CD_R_GAM_C20pis_valor_st: TFMTBCDField;
    FAT_CD_R_GAM_C20cof_valor: TFMTBCDField;
    FAT_CD_R_GAM_C20cof_valor_st: TFMTBCDField;
    FAT_CD_R_GAM_C600: TClientDataSet;
    FAT_CD_R_GAM_C300: TClientDataSet;
    FAT_CD_R_GAM_C300id_fiscal: TIntegerField;
    FAT_CD_R_GAM_C300id_sequencia: TIntegerField;
    FAT_CD_R_GAM_C300id_item: TIntegerField;
    FAT_CD_R_GAM_C300id_und_compra: TWideStringField;
    FAT_CD_R_GAM_C300vlr_unitario: TFMTBCDField;
    FAT_CD_R_GAM_C300qtde: TFloatField;
    FAT_CD_R_GAM_C300vlr_desconto: TFMTBCDField;
    FAT_CD_R_GAM_C300vlr_acrescimo: TFMTBCDField;
    FAT_CD_R_GAM_C300vlr_mercadoria: TFMTBCDField;
    FAT_CD_R_GAM_C300id_ncm: TWideStringField;
    FAT_CD_R_GAM_C300id_st_icm: TWideStringField;
    FAT_CD_R_GAM_C300id_cfo: TWideStringField;
    FAT_CD_R_GAM_C300icm_n_base: TFMTBCDField;
    FAT_CD_R_GAM_C300aliq_icms_i: TFloatField;
    FAT_CD_R_GAM_C300icm_n_valor: TFMTBCDField;
    FAT_CD_R_GAM_C300icm_s_base: TFMTBCDField;
    FAT_CD_R_GAM_C300aliq_st: TIntegerField;
    FAT_CD_R_GAM_C300icm_s_valor: TFMTBCDField;
    FAT_CD_R_GAM_C300ipi_base: TFMTBCDField;
    FAT_CD_R_GAM_C300ipi_aliquota: TFloatField;
    FAT_CD_R_GAM_C300ipi_valor: TFMTBCDField;
    FAT_CD_R_GAM_C300ind_mov: TIntegerField;
    FAT_CD_R_GAM_C300ind_apur: TIntegerField;
    FAT_CD_R_GAM_C300id_st_ipi: TWideStringField;
    FAT_CD_R_GAM_C300cod_enq: TWideMemoField;
    FAT_CD_R_GAM_C300id_st_pis: TWideStringField;
    FAT_CD_R_GAM_C300pis_base: TFMTBCDField;
    FAT_CD_R_GAM_C300pis_aliquota: TFloatField;
    FAT_CD_R_GAM_C300quant_bc_pis: TWideMemoField;
    FAT_CD_R_GAM_C300aliq_pis: TIntegerField;
    FAT_CD_R_GAM_C300pis_valor: TFMTBCDField;
    FAT_CD_R_GAM_C300id_st_cof: TWideStringField;
    FAT_CD_R_GAM_C300cof_base: TFMTBCDField;
    FAT_CD_R_GAM_C300cof_aliquota: TFloatField;
    FAT_CD_R_GAM_C300quant_bc_cof: TWideMemoField;
    FAT_CD_R_GAM_C300aliq_cof: TIntegerField;
    FAT_CD_R_GAM_C300cof_valor: TFMTBCDField;
    FAT_CD_R_GAM_C300desc_item: TWideStringField;
    FAT_CD_R_GAM_C610: TClientDataSet;
    FAT_CD_R_GAM_200: TClientDataSet;
    FAT_CD_R_GAM_200id_item: TIntegerField;
    FAT_CD_R_GAM_200id_ncm: TWideStringField;
    FAT_CD_R_GAM_200descricao: TWideStringField;
    FAT_CD_R_GAM_200id_und_compra: TWideStringField;
    FAT_CD_R_GAM_200cod_barra: TWideStringField;
    FAT_CD_R_GAM_200tipo_item: TWideStringField;
    FAT_CD_R_GAM_200ex_ipi: TWideMemoField;
    FAT_CD_R_GAM_200aliq_icms: TFloatField;
    FAT_CD_R_GAM_200cod_gen: TWideMemoField;
    FAT_CD_R_GAM_400: TClientDataSet;
    FAT_CD_R_GAM_C190: TClientDataSet;
    FAT_CD_R_GAM_C190id_st_icm: TWideStringField;
    FAT_CD_R_GAM_C190id_cfo: TWideStringField;
    FAT_CD_R_GAM_C190icm_n_aliquota: TFloatField;
    FAT_CD_R_GAM_C190vlr_operacao: TFMTBCDField;
    FAT_CD_R_GAM_C190vlr_bc_icms: TFMTBCDField;
    FAT_CD_R_GAM_C190vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_C190vlr_base_icms_sub: TFMTBCDField;
    FAT_CD_R_GAM_C190vlr_icms_sub: TFMTBCDField;
    FAT_CD_R_GAM_C190vlr_base_reduzida: TFloatField;
    FAT_CD_R_GAM_C190vlr_ipi: TFMTBCDField;
    FAT_CD_R_GAM_C400: TClientDataSet;
    FAT_CD_R_GAM_C400ecf_serial_impressora: TWideStringField;
    FAT_CD_R_GAM_C400ecf_marca_impressora: TWideStringField;
    FAT_CD_R_GAM_C400ecf_modelo_impressora: TWideStringField;
    FAT_CD_R_GAM_C400ecf_caixa: TWideStringField;
    FAT_CD_R_GAM_C400serie: TWideStringField;
    FAT_CD_R_GAM_C400cod_lme: TWideStringField;
    FAT_CD_R_GAM_C400rev_lme: TWideStringField;
    FAT_CD_R_GAM_C400paf_serial_pv: TWideStringField;
    FAT_CD_R_GAM_C405: TClientDataSet;
    FAT_CD_R_GAM_C405data_movimento: TDateField;
    FAT_CD_R_GAM_C405cro: TWideMemoField;
    FAT_CD_R_GAM_C405crz: TWideMemoField;
    FAT_CD_R_GAM_C405num_coo_fin: TWideMemoField;
    FAT_CD_R_GAM_C405gt_fin: TWideMemoField;
    FAT_CD_R_GAM_C405vl_brt: TWideMemoField;
    FAT_CD_R_GAM_C500: TClientDataSet;
    FAT_CD_R_GAM_C500id_fiscal: TIntegerField;
    FAT_CD_R_GAM_C500ind_operacao: TIntegerField;
    FAT_CD_R_GAM_C500ind_emitente: TIntegerField;
    FAT_CD_R_GAM_C500cpf_cnpj: TWideStringField;
    FAT_CD_R_GAM_C500cod_participantes: TIntegerField;
    FAT_CD_R_GAM_C500modelo: TWideStringField;
    FAT_CD_R_GAM_C500cod_sit: TWideStringField;
    FAT_CD_R_GAM_C500serie: TWideStringField;
    FAT_CD_R_GAM_C500sub_serie: TWideStringField;
    FAT_CD_R_GAM_C500numero: TIntegerField;
    FAT_CD_R_GAM_C500nfe_chave: TWideStringField;
    FAT_CD_R_GAM_C500cod_cons: TWideMemoField;
    FAT_CD_R_GAM_C500dta_emissao: TDateField;
    FAT_CD_R_GAM_C500dta_documento: TDateField;
    FAT_CD_R_GAM_C500vlr_doc: TFMTBCDField;
    FAT_CD_R_GAM_C500vlr_desconto: TFMTBCDField;
    FAT_CD_R_GAM_C500vlr_forn: TIntegerField;
    FAT_CD_R_GAM_C500vlr_serv_nt: TIntegerField;
    FAT_CD_R_GAM_C500vlr_terc: TIntegerField;
    FAT_CD_R_GAM_C500vlr_da: TIntegerField;
    FAT_CD_R_GAM_C500vlr_base_icms: TFMTBCDField;
    FAT_CD_R_GAM_C500vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_C500vlr_base_icms_subst: TFMTBCDField;
    FAT_CD_R_GAM_C500vlr_icms_subst: TFMTBCDField;
    FAT_CD_R_GAM_C500cod_inf: TWideMemoField;
    FAT_CD_R_GAM_C500vlr_ipi: TFMTBCDField;
    FAT_CD_R_GAM_C500vlr_pis: TFMTBCDField;
    FAT_CD_R_GAM_C500vlr_cof: TFMTBCDField;
    FAT_CD_R_GAM_C500tp_ligacao: TWideMemoField;
    FAT_CD_R_GAM_C500cod_grupo_tencao: TWideMemoField;
    FAT_CD_R_GAM_C510: TClientDataSet;
    FAT_CD_R_GAM_C510id_fiscal: TIntegerField;
    FAT_CD_R_GAM_C510id_sequencia: TIntegerField;
    FAT_CD_R_GAM_C510id_item: TIntegerField;
    FAT_CD_R_GAM_C510cod_class: TWideMemoField;
    FAT_CD_R_GAM_C510id_und_venda: TWideStringField;
    FAT_CD_R_GAM_C510vlr_unitario: TFMTBCDField;
    FAT_CD_R_GAM_C510qtde: TFloatField;
    FAT_CD_R_GAM_C510vlr_desconto: TFMTBCDField;
    FAT_CD_R_GAM_C510id_st_icm: TWideStringField;
    FAT_CD_R_GAM_C510id_cfo: TWideStringField;
    FAT_CD_R_GAM_C510icm_n_base: TFMTBCDField;
    FAT_CD_R_GAM_C510aliq_icms: TFloatField;
    FAT_CD_R_GAM_C510icm_s_base: TFMTBCDField;
    FAT_CD_R_GAM_C510icm_s_valor: TFMTBCDField;
    FAT_CD_R_GAM_C510ind_rec: TIntegerField;
    FAT_CD_R_GAM_C510cod_part: TWideMemoField;
    FAT_CD_R_GAM_C510pis_valor: TFMTBCDField;
    FAT_CD_R_GAM_C510cof_valor: TFMTBCDField;
    FAT_CD_R_GAM_C510cod_cta: TIntegerField;
    FAT_CD_R_GAM_C590: TClientDataSet;
    FAT_CD_R_GAM_C590id_fiscal: TIntegerField;
    FAT_CD_R_GAM_C590id_cfo: TWideStringField;
    FAT_CD_R_GAM_C590aliq_icms: TFloatField;
    FAT_CD_R_GAM_C590vlr_operacao: TFMTBCDField;
    FAT_CD_R_GAM_C590vlr_base_icms: TFMTBCDField;
    FAT_CD_R_GAM_C590vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_C590vlr_base_icms_subst: TFMTBCDField;
    FAT_CD_R_GAM_C590vlr_icms_subst: TFMTBCDField;
    FAT_CD_R_GAM_C590vlr_base_reduzida: TFloatField;
    FAT_CD_R_GAM_C590cod_obs: TWideMemoField;
    FAT_CD_R_GAM_D100: TClientDataSet;
    FAT_CD_R_GAM_D100id_fiscal: TIntegerField;
    FAT_CD_R_GAM_D100ind_operacao: TIntegerField;
    FAT_CD_R_GAM_D100ind_emitente: TIntegerField;
    FAT_CD_R_GAM_D100cpf_cnpj: TWideStringField;
    FAT_CD_R_GAM_D100cod_participantes: TIntegerField;
    FAT_CD_R_GAM_D100modelo: TWideStringField;
    FAT_CD_R_GAM_D100cod_sit: TWideStringField;
    FAT_CD_R_GAM_D100serie: TWideStringField;
    FAT_CD_R_GAM_D100sub_serie: TWideStringField;
    FAT_CD_R_GAM_D100numero: TIntegerField;
    FAT_CD_R_GAM_D100nfe_chave: TWideStringField;
    FAT_CD_R_GAM_D100dta_emissao: TDateField;
    FAT_CD_R_GAM_D100dta_documento: TDateField;
    FAT_CD_R_GAM_D100tp_ct_e: TWideMemoField;
    FAT_CD_R_GAM_D100vlr_doc: TFMTBCDField;
    FAT_CD_R_GAM_D100vlr_desconto: TFMTBCDField;
    FAT_CD_R_GAM_D100ind_frete: TIntegerField;
    FAT_CD_R_GAM_D100vlr_serv: TFMTBCDField;
    FAT_CD_R_GAM_D100vlr_base_icms: TFMTBCDField;
    FAT_CD_R_GAM_D100vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_D100vl_nt: TIntegerField;
    FAT_CD_R_GAM_D100cod_inf: TWideMemoField;
    FAT_CD_R_GAM_D100cod_cta: TWideMemoField;
    FAT_CD_R_GAM_D500: TClientDataSet;
    FAT_CD_R_GAM_D500id_fiscal: TIntegerField;
    FAT_CD_R_GAM_D500ind_operacao: TIntegerField;
    FAT_CD_R_GAM_D500ind_emitente: TIntegerField;
    FAT_CD_R_GAM_D500cpf_cnpj: TWideStringField;
    FAT_CD_R_GAM_D500cod_participantes: TIntegerField;
    FAT_CD_R_GAM_D500modelo: TWideStringField;
    FAT_CD_R_GAM_D500cod_sit: TWideStringField;
    FAT_CD_R_GAM_D500serie: TWideStringField;
    FAT_CD_R_GAM_D500sub_serie: TWideStringField;
    FAT_CD_R_GAM_D500numero: TIntegerField;
    FAT_CD_R_GAM_D500nfe_chave: TWideStringField;
    FAT_CD_R_GAM_D500dta_emissao: TDateField;
    FAT_CD_R_GAM_D500dta_documento: TDateField;
    FAT_CD_R_GAM_D500tp_ct_e: TWideMemoField;
    FAT_CD_R_GAM_D500vlr_doc: TFMTBCDField;
    FAT_CD_R_GAM_D500vlr_desconto: TFMTBCDField;
    FAT_CD_R_GAM_D500vlr_serv: TFMTBCDField;
    FAT_CD_R_GAM_D500vlr_serv_nt: TIntegerField;
    FAT_CD_R_GAM_D500vlr_terc: TIntegerField;
    FAT_CD_R_GAM_D500vlr_da: TIntegerField;
    FAT_CD_R_GAM_D500vlr_base_icms: TFMTBCDField;
    FAT_CD_R_GAM_D500vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_D500cod_inf: TWideMemoField;
    FAT_CD_R_GAM_D500pis_valor: TFMTBCDField;
    FAT_CD_R_GAM_D500cof_valor: TFMTBCDField;
    FAT_CD_R_GAM_D500cod_cta: TWideMemoField;
    FAT_CD_R_GAM_D500tp_assinante: TWideMemoField;
    FAT_CD_R_GAM_D510: TClientDataSet;
    FAT_CD_R_GAM_D510id_fiscal: TIntegerField;
    FAT_CD_R_GAM_D510id_sequencia: TIntegerField;
    FAT_CD_R_GAM_D510id_item: TIntegerField;
    FAT_CD_R_GAM_D510cod_class: TWideMemoField;
    FAT_CD_R_GAM_D510id_und_venda: TWideStringField;
    FAT_CD_R_GAM_D510vlr_unitario: TFMTBCDField;
    FAT_CD_R_GAM_D510qtde: TFloatField;
    FAT_CD_R_GAM_D510vlr_desconto: TFMTBCDField;
    FAT_CD_R_GAM_D510id_st_icm: TWideStringField;
    FAT_CD_R_GAM_D510id_cfo: TWideStringField;
    FAT_CD_R_GAM_D510icm_n_base: TFMTBCDField;
    FAT_CD_R_GAM_D510aliq_icms: TFloatField;
    FAT_CD_R_GAM_D510icm_s_base: TFMTBCDField;
    FAT_CD_R_GAM_D510icm_s_valor: TFMTBCDField;
    FAT_CD_R_GAM_D510ind_rec: TIntegerField;
    FAT_CD_R_GAM_D510cod_part: TWideMemoField;
    FAT_CD_R_GAM_D510pis_valor: TFMTBCDField;
    FAT_CD_R_GAM_D510cof_valor: TFMTBCDField;
    FAT_CD_R_GAM_D510cod_cta: TIntegerField;
    FAT_CD_R_GAM_D590: TClientDataSet;
    FAT_CD_R_GAM_D590id_fiscal: TIntegerField;
    FAT_CD_R_GAM_D590id_cfo: TWideStringField;
    FAT_CD_R_GAM_D590aliq_icms: TFloatField;
    FAT_CD_R_GAM_D590vlr_operacao: TFMTBCDField;
    FAT_CD_R_GAM_D590vlr_base_icms: TFMTBCDField;
    FAT_CD_R_GAM_D590vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_D590vlr_base_icms_subst: TFMTBCDField;
    FAT_CD_R_GAM_D590vlr_icms_subst: TFMTBCDField;
    FAT_CD_R_GAM_D590vlr_base_reduzida: TFloatField;
    FAT_CD_R_GAM_D590cod_obs: TWideMemoField;
    FAT_CD_R_GAM_C420: TClientDataSet;
    FAT_CD_R_GAM_C420data_movimento: TDateField;
    FAT_CD_R_GAM_C420totalizador: TWideMemoField;
    FAT_CD_R_GAM_C420vlr_acum: TWideMemoField;
    FAT_CD_R_GAM_C420num_totalizador: TWideStringField;
    FAT_CD_R_GAM_C420descricao: TWideStringField;
    FAT_CD_R_GAM_C425: TClientDataSet;
    FAT_CD_R_GAM_C425id_item: TIntegerField;
    FAT_CD_R_GAM_C425id_und_compra: TWideStringField;
    FAT_CD_R_GAM_C425quantidade: TFloatField;
    FAT_CD_R_GAM_C425vlr_total: TFMTBCDField;
    FAT_CD_R_GAM_C425vlr_pis: TFMTBCDField;
    FAT_CD_R_GAM_C425vlr_cofins: TFMTBCDField;
    FAT_CD_R_GAM_C490: TClientDataSet;
    FAT_CD_R_GAM_C490id_st_icm: TWideStringField;
    FAT_CD_R_GAM_C490icm_n_aliquota: TFloatField;
    FAT_CD_R_GAM_C490vlr_operacao: TFMTBCDField;
    FAT_CD_R_GAM_C490vlr_base_icm: TFMTBCDField;
    FAT_CD_R_GAM_C490vlr_icm: TFMTBCDField;
    FAT_CD_R_GAM_C490id_cfo: TWideStringField;
    FAT_CD_R_GAM_A100: TClientDataSet;
    FAT_CD_R_GAM_A100id_fiscal: TIntegerField;
    FAT_CD_R_GAM_A100ind_operacao: TIntegerField;
    FAT_CD_R_GAM_A100ind_emitente: TIntegerField;
    FAT_CD_R_GAM_A100cpf_cnpj: TWideStringField;
    FAT_CD_R_GAM_A100cod_sit: TWideStringField;
    FAT_CD_R_GAM_A100cod_participantes: TIntegerField;
    FAT_CD_R_GAM_A100serie: TWideStringField;
    FAT_CD_R_GAM_A100sub_serie: TWideStringField;
    FAT_CD_R_GAM_A100numero: TIntegerField;
    FAT_CD_R_GAM_A100nfe_chave: TWideStringField;
    FAT_CD_R_GAM_A100modelo: TWideStringField;
    FAT_CD_R_GAM_A100dta_emissao: TDateField;
    FAT_CD_R_GAM_A100dta_documento: TDateField;
    FAT_CD_R_GAM_A100vlr_doc: TFMTBCDField;
    FAT_CD_R_GAM_A100int_tipopgto: TIntegerField;
    FAT_CD_R_GAM_A100vlr_desconto: TFMTBCDField;
    FAT_CD_R_GAM_A100pis_base: TFMTBCDField;
    FAT_CD_R_GAM_A100vlr_pis: TFMTBCDField;
    FAT_CD_R_GAM_A100cof_base: TFMTBCDField;
    FAT_CD_R_GAM_A100vlr_cof: TFMTBCDField;
    FAT_CD_R_GAM_A100vlr_pis_ret: TIntegerField;
    FAT_CD_R_GAM_A100vlr_cof_ret: TIntegerField;
    FAT_CD_R_GAM_A100vlr_iss: TFMTBCDField;
    FAT_CD_R_GAM_A170: TClientDataSet;
    FAT_CD_R_GAM_A170id_fiscal: TIntegerField;
    FAT_CD_R_GAM_A170id_sequencia: TIntegerField;
    FAT_CD_R_GAM_A170id_item: TIntegerField;
    FAT_CD_R_GAM_A170desc_item: TWideStringField;
    FAT_CD_R_GAM_A170vlr_liquido: TFMTBCDField;
    FAT_CD_R_GAM_A170vlr_desconto: TFMTBCDField;
    FAT_CD_R_GAM_A170nat_bc_cred: TIntegerField;
    FAT_CD_R_GAM_A170ind_orig_cred: TIntegerField;
    FAT_CD_R_GAM_A170id_st_pis: TWideStringField;
    FAT_CD_R_GAM_A170pis_base: TFMTBCDField;
    FAT_CD_R_GAM_A170pis_valor: TFMTBCDField;
    FAT_CD_R_GAM_A170pis_aliquota: TFloatField;
    FAT_CD_R_GAM_A170id_st_cof: TWideStringField;
    FAT_CD_R_GAM_A170cof_base: TFMTBCDField;
    FAT_CD_R_GAM_A170cof_valor: TFMTBCDField;
    FAT_CD_R_GAM_A170cof_aliquota: TFloatField;
    FAT_CD_R_GAM_A170cod_ccus: TWideMemoField;
    FAT_CD_R_GAM_C481: TClientDataSet;
    FAT_CD_R_GAM_C485: TClientDataSet;
    FAT_CD_R_GAM_C505: TClientDataSet;
    FAT_CD_R_GAM_C505id_fiscal: TIntegerField;
    FAT_CD_R_GAM_C505id_st_cof: TWideStringField;
    FAT_CD_R_GAM_C505id_cfo: TWideStringField;
    FAT_CD_R_GAM_C505aliq_cof: TFloatField;
    FAT_CD_R_GAM_C505vlr_base_cof: TFMTBCDField;
    FAT_CD_R_GAM_C505vlr_cof: TFMTBCDField;
    FAT_CD_R_GAM_C505cod_cta: TWideMemoField;
    FAT_CD_R_GAM_C501: TClientDataSet;
    FAT_CD_R_GAM_C501id_fiscal: TIntegerField;
    FAT_CD_R_GAM_C501id_st_pis: TWideStringField;
    FAT_CD_R_GAM_C501id_cfo: TWideStringField;
    FAT_CD_R_GAM_C501aliq_pis: TFloatField;
    FAT_CD_R_GAM_C501vlr_base_pis: TFMTBCDField;
    FAT_CD_R_GAM_C501vlr_pis: TFMTBCDField;
    FAT_CD_R_GAM_C501cod_cta: TWideMemoField;
    FAT_CD_R_GAM_C460: TClientDataSet;
    FAT_CD_R_GAM_C460id_fiscal: TIntegerField;
    FAT_CD_R_GAM_C460cpf_cnpj: TWideStringField;
    FAT_CD_R_GAM_C460modelo: TWideStringField;
    FAT_CD_R_GAM_C460nfe_cod_sit: TWideStringField;
    FAT_CD_R_GAM_C460numero: TIntegerField;
    FAT_CD_R_GAM_C460dta_emissao: TDateField;
    FAT_CD_R_GAM_C460vlr_contabil: TFMTBCDField;
    FAT_CD_R_GAM_C460pis_valor: TFMTBCDField;
    FAT_CD_R_GAM_C460cof_valor: TFMTBCDField;
    FAT_CD_R_GAM_C460nome_adq: TWideMemoField;
    FAT_CD_R_GAM_C470: TClientDataSet;
    FAT_CD_R_GAM_C470id_fiscal: TIntegerField;
    FAT_CD_R_GAM_C470id_sequencia: TIntegerField;
    FAT_CD_R_GAM_C470id_item: TIntegerField;
    FAT_CD_R_GAM_C470id_und_venda: TWideStringField;
    FAT_CD_R_GAM_C470vlr_unitario: TFMTBCDField;
    FAT_CD_R_GAM_C470qtde: TFloatField;
    FAT_CD_R_GAM_C470qtde_canc: TIntegerField;
    FAT_CD_R_GAM_C470vlr_desconto: TFMTBCDField;
    FAT_CD_R_GAM_C470vlr_acrescimo: TFMTBCDField;
    FAT_CD_R_GAM_C470vlr_liquido: TFMTBCDField;
    FAT_CD_R_GAM_C470id_st_icm: TWideStringField;
    FAT_CD_R_GAM_C470id_cfo: TWideStringField;
    FAT_CD_R_GAM_C470aliq_icms: TFloatField;
    FAT_CD_R_GAM_C470pis_valor: TFMTBCDField;
    FAT_CD_R_GAM_C470cof_valor: TFMTBCDField;
    ACBrSEF2: TACBrSEF2;
    FAT_CD_X_GAM_150: TClientDataSet;
    FAT_CD_X_GAM_150codigo: TIntegerField;
    FAT_CD_X_GAM_150nome: TStringField;
    FAT_CD_X_GAM_150cod_pais: TStringField;
    FAT_CD_X_GAM_150uf: TStringField;
    FAT_CD_X_GAM_150ie: TStringField;
    FAT_CD_X_GAM_150id_cidade: TStringField;
    FAT_CD_X_GAM_150im: TStringField;
    FAT_CD_X_GAM_150suframa: TStringField;
    FAT_CD_X_GAM_150endereco: TStringField;
    FAT_CD_X_GAM_150numero: TStringField;
    FAT_CD_X_GAM_150end_complemento: TStringField;
    FAT_CD_X_GAM_150bairro: TStringField;
    FAT_CD_R_GAM_150codigo: TIntegerField;
    FAT_CD_R_GAM_150nome: TWideStringField;
    FAT_CD_X_GAM_150doc_cnpj_cpf: TStringField;
    tsSpedContribuicoes: TTabSheet;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    TXT_REC_BRU_NCUM_TRIB_MI: TEdit;
    TXT_REC_BRU_NCUM_NT_MI: TEdit;
    Label4: TLabel;
    TXT_REC_BRU_NCUM_EXP: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    TXT_REC_BRU_CUM: TEdit;
    TXT_REC_BRU_TOTAL: TEdit;
    Label7: TLabel;
    FAT_CD_R_GAM_190: TClientDataSet;
    FAT_CD_R_GAM_450: TClientDataSet;
    FAT_CD_R_GAM_190id_unidade: TWideStringField;
    FAT_CD_R_GAM_190descricao: TWideStringField;
    FAT_CD_R_GAM_450codigo: TIntegerField;
    FAT_CD_R_GAM_450descricao: TWideStringField;
    FAT_CD_R_GAM_C300vlr_liquido: TFMTBCDField;
    FAT_CD_R_GAM_H30cod_cta: TIntegerField;
    dtaInventario: TJvDateEdit;
    Label8: TLabel;
    FAT_CD_R_GAM_H30int_codncm: TWideStringField;
    FAT_CD_R_GAM_H30int_nomeite: TWideStringField;
    FAT_CD_R_GAM_H30cod_barra: TWideStringField;
    FAT_CD_R_GAM_H30tipo_item: TWideStringField;
    FAT_CD_R_GAM_H30ex_ipi: TWideMemoField;
    FAT_CD_R_GAM_H30cod_gen: TWideMemoField;
    FAT_CD_R_GAM_H30aliq_icms: TFloatField;
    FAT_CD_R_GAM_H30int_id_und: TWideStringField;
    FAT_CD_R_GAM_H30int_desc_und: TWideStringField;
    FAT_CD_X_GAM_H30_190: TClientDataSet;
    FAT_CD_X_GAM_H30_190descricao: TStringField;
    FAT_CD_X_GAM_H30_190id_unidade: TStringField;
    FAT_CD_X_GAM_H30_200: TClientDataSet;
    FAT_CD_X_GAM_H30_200id_item: TIntegerField;
    FAT_CD_X_GAM_H30_200id_ncm: TStringField;
    FAT_CD_X_GAM_H30_200descricao: TStringField;
    FAT_CD_X_GAM_H30_200id_und_compra: TStringField;
    FAT_CD_X_GAM_H30_200cod_barra: TStringField;
    FAT_CD_X_GAM_H30_200tipo_item: TStringField;
    FAT_CD_X_GAM_H30_200ex_ipi: TIntegerField;
    FAT_CD_X_GAM_H30_200aliq_icms: TFloatField;
    FAT_CD_X_GAM_H30_200cod_gen: TIntegerField;
    btnDestda: TButton;
    ACBrDeSTDA1: TACBrDeSTDA;
    FAT_CD_R_GAM_G600: TClientDataSet;
    FAT_CD_R_GAM_G600vl_tot_nf: TFMTBCDField;
    FAT_CD_R_GAM_G600vl_tot_aj: TFMTBCDField;
    FAT_CD_R_GAM_G600vl_tot_da: TFMTBCDField;
    FAT_CD_R_GAM_G605: TClientDataSet;
    FAT_CD_R_GAM_G610: TClientDataSet;
    FAT_CD_R_GAM_G615: TClientDataSet;
    FAT_CD_R_GAM_G620: TClientDataSet;
    FAT_CD_R_GAM_G625: TClientDataSet;
    FAT_CD_R_GAM_G605uf_emitente: TWideStringField;
    FAT_CD_R_GAM_G605ind_sit: TIntegerField;
    FAT_CD_R_GAM_G605vl_tot_nf: TFMTBCDField;
    FAT_CD_R_GAM_G605vl_tot_aj: TFMTBCDField;
    FAT_CD_R_GAM_G605vl_tot_da: TFMTBCDField;
    FAT_CD_R_GAM_G610vl_tot_part_nf: TFMTBCDField;
    FAT_CD_R_GAM_G610vl_aj_part: TFMTBCDField;
    FAT_CD_R_GAM_G610vl_tot_part_desc: TFMTBCDField;
    FAT_CD_R_GAM_G615uf_emitente: TWideStringField;
    FAT_CD_R_GAM_G615vl_tot_part_uf_nf: TFMTBCDField;
    FAT_CD_R_GAM_G615vl_aj_part_uf: TFMTBCDField;
    FAT_CD_R_GAM_G615vl_tot_part_uf_desc: TFMTBCDField;
    FAT_CD_R_GAM_G620ind_operacao: TIntegerField;
    FAT_CD_R_GAM_G620ind_emitente: TIntegerField;
    FAT_CD_R_GAM_G620vl_tot_st_nf: TFMTBCDField;
    FAT_CD_R_GAM_G620vl_tot_aj_st: TFMTBCDField;
    FAT_CD_R_GAM_G620vl_tot_aj_st_1: TFMTBCDField;
    FAT_CD_R_GAM_G620vl_tot_st_comb: TIntegerField;
    FAT_CD_R_GAM_G625uf_emitente: TWideStringField;
    FAT_CD_R_GAM_G625ind_tp_st: TIntegerField;
    FAT_CD_R_GAM_G625vl_tot_st_nf: TFMTBCDField;
    FAT_CD_R_GAM_G625vl_tot_aj_st: TFMTBCDField;
    FAT_CD_R_GAM_G625vl_tot_aj_st_1: TFMTBCDField;
    FAT_CD_R_GAM_C20cod_participantes: TIntegerField;
    FAT_CD_R_GAM_400codigo: TWideStringField;
    FAT_CD_R_GAM_400descricao: TWideStringField;
    FAT_CD_R_GAM_400id_classe: TWideStringField;
    FAT_CD_R_GAM_C20id_cfo: TWideStringField;
    FAT_CD_R_GAM_E60: TClientDataSet;
    FAT_CD_R_GAM_E65: TClientDataSet;
    FAT_CD_R_GAM_E80: TClientDataSet;
    FAT_CD_R_GAM_E80id_classe: TWideStringField;
    FAT_CD_R_GAM_E80num_mr: TWideMemoField;
    FAT_CD_R_GAM_E80dt_doc: TDateField;
    FAT_CD_R_GAM_E80int_tot: TWideMemoField;
    FAT_CD_R_GAM_E80cod_mod: TWideMemoField;
    FAT_CD_R_GAM_E80num_lcto: TWideMemoField;
    FAT_CD_R_GAM_E80ind_obs: TWideMemoField;
    FAT_CD_R_GAM_E80vlr_bruto: TFMTBCDField;
    FAT_CD_R_GAM_E80vlr_cancelado: TFMTBCDField;
    FAT_CD_R_GAM_E80vlr_desconto: TFMTBCDField;
    FAT_CD_R_GAM_E80vlr_bc_icms: TFMTBCDField;
    FAT_CD_R_GAM_E80vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_E80vlr_contabil: TFMTBCDField;
    FAT_CD_R_GAM_E80vlr_isento: TFMTBCDField;
    FAT_CD_R_GAM_E80vlr_st: TFMTBCDField;
    FAT_CD_R_GAM_E80vlr_op_iss: TFMTBCDField;
    FAT_CD_R_GAM_E85: TClientDataSet;
    FAT_CD_R_GAM_E85cfop: TIntegerField;
    FAT_CD_R_GAM_E85aliquota: TWideStringField;
    FAT_CD_R_GAM_E85ind_imun: TWideMemoField;
    FAT_CD_R_GAM_E85vlr_bruto: TFMTBCDField;
    FAT_CD_R_GAM_E85vlr_cancelado: TFMTBCDField;
    FAT_CD_R_GAM_E85vlr_desconto: TFMTBCDField;
    FAT_CD_R_GAM_E85vlr_bc_icms: TFMTBCDField;
    FAT_CD_R_GAM_E85vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_E85vlr_contabil: TFMTBCDField;
    FAT_CD_R_GAM_E85vlr_isento: TFMTBCDField;
    FAT_CD_R_GAM_E85vlr_st: TFMTBCDField;
    FAT_CD_R_GAM_E85vlr_op_iss_p: TFMTBCDField;
    FAT_CD_R_GAM_E80vl_acmo_icms: TFMTBCDField;
    FAT_CD_R_GAM_C300cod_nat: TWideStringField;
    FAT_CD_R_GAM_C481id_item: TIntegerField;
    FAT_CD_R_GAM_C481id_st_pis: TWideStringField;
    FAT_CD_R_GAM_C481id_cfo: TWideStringField;
    FAT_CD_R_GAM_C481pis_aliquota: TFloatField;
    FAT_CD_R_GAM_C481vlr_item: TFloatField;
    FAT_CD_R_GAM_C481vlr_pis: TFMTBCDField;
    FAT_CD_R_GAM_C485id_item: TIntegerField;
    FAT_CD_R_GAM_C485id_st_cof: TWideStringField;
    FAT_CD_R_GAM_C485id_cfo: TWideStringField;
    FAT_CD_R_GAM_C485cof_aliquota: TFloatField;
    FAT_CD_R_GAM_C485vlr_item: TFloatField;
    FAT_CD_R_GAM_C485vlr_cofins: TFMTBCDField;
    FAT_CD_R_GAM_C485vlr_cof_base: TFMTBCDField;
    FAT_CD_R_GAM_C481vlr_pis_base: TFMTBCDField;
    FAT_CD_R_GAM_200P: TClientDataSet;
    FAT_CD_R_GAM_200Pid_item: TIntegerField;
    FAT_CD_R_GAM_200Pid_st_pis: TWideStringField;
    FAT_CD_R_GAM_200Pid_cfo: TWideStringField;
    FAT_CD_R_GAM_200Ppis_aliquota: TFloatField;
    FAT_CD_R_GAM_200Pid_ncm: TWideStringField;
    FAT_CD_R_GAM_200Pdescricao: TWideStringField;
    FAT_CD_R_GAM_200Pid_und_compra: TWideStringField;
    FAT_CD_R_GAM_200Pcod_barra: TWideStringField;
    FAT_CD_R_GAM_200Ptipo_item: TWideStringField;
    FAT_CD_R_GAM_200Pex_ipi: TWideMemoField;
    FAT_CD_R_GAM_200Pcod_gen: TWideMemoField;
    FAT_CD_R_GAM_200Paliq_icms: TFloatField;
    FAT_CD_R_GAM_200Pvlr_item: TFloatField;
    FAT_CD_R_GAM_200Pvlr_pis: TFMTBCDField;
    FAT_CD_R_GAM_200Pvlr_pis_base: TFMTBCDField;
    cdsItens: TClientDataSet;
    cdsItensID_ITEM: TStringField;
    cdsItensDESCRICAO: TStringField;
    cdsItensCOD_BARRA: TStringField;
    cdsItensCOD_ANT_ITEM: TStringField;
    cdsItensUND_COMPRA: TStringField;
    cdsItensTIPO_ITEM: TStringField;
    cdsItensCOD_NCM: TStringField;
    cdsItensEX_IPI: TStringField;
    cdsItensCOD_GEN: TStringField;
    cdsItensALIQ_ICMS: TIntegerField;
    cdsUnidade: TClientDataSet;
    cdsUnidadeunid: TStringField;
    FAT_CD_R_NFE_CHV_VAZ: TClientDataSet;
    FAT_CD_R_NFE_CHV_VAZnumero: TIntegerField;
    FAT_CD_R_NFE_CHV_VAZserie: TWideStringField;
    FAT_CD_R_NFE_CHV_VAZmodelo: TWideStringField;
    FAT_CD_R_NFE_CHV_VAZnfe_chave: TWideStringField;
    Button1: TButton;
    FAT_CD_R_NFE_CHV_VAZid_empresa: TIntegerField;
    FAT_CD_R_NFE_CHV_VAZdta_emissao: TDateField;
    FAT_CD_R_GAM_E65id_cfo: TIntegerField;
    FAT_CD_R_GAM_E65aliq_icms: TWideMemoField;
    FAT_CD_R_GAM_E65ind_imun: TWideMemoField;
    FAT_CD_R_GAM_E65vrl_bc_icms_p: TFMTBCDField;
    FAT_CD_R_GAM_C600n_cupom: TIntegerField;
    FAT_CD_R_GAM_C600serial_impressora: TWideStringField;
    FAT_CD_R_GAM_C600data_movimento: TDateField;
    FAT_CD_R_GAM_C600cpf_cnpj: TWideMemoField;
    FAT_CD_R_GAM_C600n_caixa: TWideStringField;
    FAT_CD_R_GAM_C600situacao: TWideMemoField;
    FAT_CD_R_GAM_C600classe: TWideStringField;
    FAT_CD_R_GAM_C600vlr_total: TFMTBCDField;
    FAT_CD_R_GAM_C600vlr_desconto: TFMTBCDField;
    FAT_CD_R_GAM_C600vlr_cancelado: TFMTBCDField;
    FAT_CD_R_GAM_C600base_icms: TFMTBCDField;
    FAT_CD_R_GAM_C600vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_C600base_icms_sub: TFMTBCDField;
    FAT_CD_R_GAM_C600vlr_isento: TFMTBCDField;
    FAT_CD_R_GAM_C600cro: TWideStringField;
    FAT_CD_R_GAM_C600crz: TWideStringField;
    FAT_CD_R_GAM_C610n_item: TIntegerField;
    FAT_CD_R_GAM_C610cod_produto: TWideStringField;
    FAT_CD_R_GAM_C610unidade: TWideStringField;
    FAT_CD_R_GAM_C610valor_unitario: TFMTBCDField;
    FAT_CD_R_GAM_C610qtde: TFMTBCDField;
    FAT_CD_R_GAM_C610desconto: TFMTBCDField;
    FAT_CD_R_GAM_C610valor_total: TFMTBCDField;
    FAT_CD_R_GAM_C610cst_icms: TWideStringField;
    FAT_CD_R_GAM_C610cfop: TIntegerField;
    FAT_CD_R_GAM_C610aliquota: TWideStringField;
    FAT_CD_R_GAM_C610base_icms: TFMTBCDField;
    FAT_CD_R_GAM_C610vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_C610base_icms_sub: TFMTBCDField;
    FAT_CD_R_GAM_C610vlr_isento: TFMTBCDField;
    FAT_CD_R_GAM_E60data_movimento: TDateField;
    FAT_CD_R_GAM_E60ecf_fab: TWideStringField;
    FAT_CD_R_GAM_E60ecf_cx: TWideStringField;
    FAT_CD_R_GAM_E60num_doc_ini: TIntegerField;
    FAT_CD_R_GAM_E60num_doc_fin: TIntegerField;
    FAT_CD_R_GAM_E60gt_ini: TFMTBCDField;
    FAT_CD_R_GAM_E60cro: TWideMemoField;
    FAT_CD_R_GAM_E60crz: TWideMemoField;
    FAT_CD_R_GAM_E60gt_fin: TFMTBCDField;
    FAT_CD_R_GAM_E60vlr_op_iss: TFMTBCDField;
    FAT_CD_R_GAM_E60vlr_canc_icms: TFMTBCDField;
    FAT_CD_R_GAM_E60vlr_desc_icms: TFMTBCDField;
    FAT_CD_R_GAM_E60vlr_acmo_icms: TFMTBCDField;
    FAT_CD_R_GAM_E60vlr_liq: TFMTBCDField;
    FAT_CD_R_GAM_E60vlr_isn: TFMTBCDField;
    FAT_CD_R_GAM_E60vlr_nt: TFMTBCDField;
    FAT_CD_R_GAM_E60vlr_st: TFMTBCDField;
    FAT_CD_R_GAM_E60vlr_bc_icms: TFMTBCDField;
    FAT_CD_R_GAM_E60vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_E60vlr_brt: TFMTBCDField;
    FAT_CD_R_GAM_E25vlr_contabil: TFMTBCDField;
    FAT_CD_X_GAM_H30_200cest: TStringField;
    FAT_CD_R_GAM_200cest: TWideStringField;
    FAT_CD_R_GAM_H30cest: TWideStringField;
    cdsUnidadedesc: TStringField;
    FAT_CD_R_GAM_INV_ITE: TClientDataSet;
    btnSintegra: TButton;
    BUS_CD_C_PCC: TClientDataSet;
    BUS_CD_C_PCCcod_nat_cc: TWideStringField;
    BUS_CD_C_PCCind_cta: TWideStringField;
    BUS_CD_C_PCCcod_cta: TWideStringField;
    BUS_CD_C_PCCnome_cta: TWideStringField;
    BUS_CD_C_PCCcod_cta_ref: TWideStringField;
    FAT_CD_R_GAM_C300cod_cta: TWideStringField;
    FAT_CD_R_GAM_A170cod_cta: TWideStringField;
    FAT_CD_R_GAM_D_190: TClientDataSet;
    FAT_CD_R_GAM_D_190id_st_icm: TWideMemoField;
    FAT_CD_R_GAM_D_190id_cfo: TWideStringField;
    FAT_CD_R_GAM_D_190icm_n_aliquota: TFMTBCDField;
    FAT_CD_R_GAM_D_190vlr_operacao: TFMTBCDField;
    FAT_CD_R_GAM_D_190vlr_bc_icms: TFMTBCDField;
    FAT_CD_R_GAM_D_190vlr_icms: TFMTBCDField;
    FAT_CD_R_GAM_D_190vlr_base_icms_sub: TFMTBCDField;
    FAT_CD_R_GAM_D_190vlr_icms_sub: TFMTBCDField;
    FAT_CD_R_GAM_D_190vlr_base_reduzida: TIntegerField;
    cdsItens0200: TClientDataSet;
    cdsItens0200id_item: TIntegerField;
    lblItens0200: TLabel;
    BUS_CD_C_ITE: TClientDataSet;
    BUS_CD_C_ITEid_item: TIntegerField;
    BUS_CD_C_ITEativo: TBooleanField;
    BUS_CD_C_ITEcardapio: TBooleanField;
    BUS_CD_C_ITEdescricao: TWideStringField;
    BUS_CD_C_ITEfantasia: TWideStringField;
    BUS_CD_C_ITEreferencia: TWideStringField;
    BUS_CD_C_ITEaplicacao: TWideStringField;
    BUS_CD_C_ITEid_fornecedor: TIntegerField;
    BUS_CD_C_ITEid_grupo: TWideStringField;
    BUS_CD_C_ITEid_und_compra: TWideStringField;
    BUS_CD_C_ITEid_und_venda: TWideStringField;
    BUS_CD_C_ITEemb_compra: TFloatField;
    BUS_CD_C_ITEemb_venda: TFloatField;
    BUS_CD_C_ITEcod_barra: TWideStringField;
    BUS_CD_C_ITEcod_fabrica: TWideStringField;
    BUS_CD_C_ITEpes_liquido: TFloatField;
    BUS_CD_C_ITEpes_bruto: TFloatField;
    BUS_CD_C_ITEest_minimo: TFloatField;
    BUS_CD_C_ITEloca_rua: TWideStringField;
    BUS_CD_C_ITEloca_prateleira: TWideStringField;
    BUS_CD_C_ITEloca_escaninho: TWideStringField;
    BUS_CD_C_ITEtam_largura: TFloatField;
    BUS_CD_C_ITEtam_comprimento: TFloatField;
    BUS_CD_C_ITEtam_espessura: TFloatField;
    BUS_CD_C_ITEdensidade: TIntegerField;
    BUS_CD_C_ITEdensidade_2: TIntegerField;
    BUS_CD_C_ITEdensidade_3: TIntegerField;
    BUS_CD_C_ITEtipo: TIntegerField;
    BUS_CD_C_ITEgeracao_lote_interno: TIntegerField;
    BUS_CD_C_ITEdestino_reclamado: TIntegerField;
    BUS_CD_C_ITEetiq_classificacao_pro: TIntegerField;
    BUS_CD_C_ITEetiq_medidas: TWideStringField;
    BUS_CD_C_ITEetiq_recomendacoes_1: TWideStringField;
    BUS_CD_C_ITEetiq_recomendacoes_2: TWideStringField;
    BUS_CD_C_ITElote_fabric_obrigatorio: TIntegerField;
    BUS_CD_C_ITEid_ncm: TWideStringField;
    BUS_CD_C_ITEint_nomencm: TWideStringField;
    BUS_CD_C_ITEint_desc_grupo: TWideStringField;
    BUS_CD_C_ITEint_tipo_item: TWideStringField;
    BUS_CD_C_ITEint_origem: TWideStringField;
    BUS_CD_C_ITEint_tributo: TIntegerField;
    BUS_CD_C_ITEint_nomefor: TWideStringField;
    BUS_CD_C_ITECAD_SQ_C_ITE_ESP: TDataSetField;
    BUS_CD_C_ITECAD_SQ_C_ITE_COM: TDataSetField;
    BUS_CD_C_ITEPRECO_AVISTA: TFMTBCDField;
    BUS_CD_C_ITEPRECO_APRAZO: TFMTBCDField;
    BUS_CD_C_ITEdta_cadastro: TDateField;
    BUS_CD_C_ITEetiq_modelo: TWideStringField;
    BUS_CD_C_ITEcod_lme: TWideStringField;
    BUS_CD_C_ITErev_lme: TWideStringField;
    BUS_CD_C_ITEint_mva: TFloatField;
    BUS_CD_C_ITEint_fteetq: TIntegerField;
    BUS_CD_C_ITEint_impselo: TBooleanField;
    BUS_CD_C_ITEint_pis_entrada: TWideStringField;
    BUS_CD_C_ITEint_pis_saida: TWideStringField;
    BUS_CD_C_ITEint_cof_entrada: TWideStringField;
    BUS_CD_C_ITEint_cof_saida: TWideStringField;
    BUS_CD_C_ITEid_familia: TIntegerField;
    BUS_CD_C_ITEdes_completa: TWideStringField;
    BUS_CD_C_ITErt_pricipio_ativo: TWideStringField;
    BUS_CD_C_ITErt_composicao: TWideStringField;
    BUS_CD_C_ITEcod_onu: TWideStringField;
    BUS_CD_C_ITEret_emb_nao_lavavel: TIntegerField;
    BUS_CD_C_ITEret_emb_lavaveis: TIntegerField;
    BUS_CD_C_ITEtam_observacoes: TWideStringField;
    BUS_CD_C_ITEint_perimpostoncm: TFloatField;
    BUS_CD_C_ITEret_emb_capacidade: TWideStringField;
    BUS_CD_C_ITEsgq_critica_laudo_fab: TBooleanField;
    BUS_CD_C_ITECAD_SQ_C_ITE_XML: TDataSetField;
    BUS_CD_C_ITECAD_SQ_C_ITE_APL: TDataSetField;
    BUS_CD_C_ITECAD_SQ_C_ITE_TPR: TDataSetField;
    BUS_CD_C_ITEint_ipi_entrada: TWideStringField;
    BUS_CD_C_ITEint_ipi_saida: TWideStringField;
    BUS_CD_C_ITEint_serterceiro: TBooleanField;
    BUS_CD_C_ITEetiq_id_cue: TIntegerField;
    BUS_CD_C_ITEint_msg_etq1: TWideStringField;
    BUS_CD_C_ITEint_msg_etq2: TWideStringField;
    BUS_CD_C_ITEint_msg_etq3: TWideStringField;
    BUS_CD_C_ITEint_msg_etq4: TWideStringField;
    BUS_CD_C_ITEint_msg_etq5: TWideStringField;
    BUS_CD_C_ITEint_impmsgetq: TBooleanField;
    BUS_CD_C_ITEint_msg_etq6: TWideStringField;
    BUS_CD_C_ITEint_msg_etq7: TWideStringField;
    BUS_CD_C_ITEcubagem: TFMTBCDField;
    BUS_CD_C_ITEpreco_avista_ant_reajuste: TFMTBCDField;
    BUS_CD_C_ITEpreco_aprazo_ant_reajuste: TFMTBCDField;
    BUS_CD_C_ITEdta_ult_reajuste: TDateField;
    BUS_CD_C_ITEint_ctcepi: TBooleanField;
    BUS_CD_C_ITEint_dre_perc_ircs: TFloatField;
    BUS_CD_C_ITEint_dre_perc_out_ded_ven: TFloatField;
    BUS_CD_C_ITErt_registro: TWideStringField;
    BUS_CD_C_ITEint_ctr_lot_entr: TBooleanField;
    BUS_CD_C_ITEcusto_servico: TFMTBCDField;
    BUS_CD_C_ITEint_impetqsimples: TBooleanField;
    BUS_CD_C_ITEint_pathetqsimples: TWideStringField;
    BUS_CD_C_ITEint_inf_tempo_ite_coj: TBooleanField;
    BUS_CD_C_ITEint_ctc_epi: TBooleanField;
    BUS_CD_C_ITEper_cmv_interno: TFMTBCDField;
    BUS_CD_C_ITEper_cmv_externo: TFMTBCDField;
    BUS_CD_C_ITECAD_SQ_C_ITE_LOC: TDataSetField;
    BUS_CD_C_ITEetiq_madeira: TWideStringField;
    BUS_CD_C_ITEetiq_marca: TWideStringField;
    BUS_CD_C_ITEetiq_espuma1: TWideStringField;
    BUS_CD_C_ITEetiq_espuma2: TWideStringField;
    BUS_CD_C_ITEetiq_espuma3: TWideStringField;
    BUS_CD_C_ITEetiq_revestimento1: TWideStringField;
    BUS_CD_C_ITEetiq_revestimento2: TWideStringField;
    BUS_CD_C_ITEetiq_revestimento3: TWideStringField;
    BUS_CD_C_ITEetiq_espuma4: TWideStringField;
    BUS_CD_C_ITEetiq_espuma5: TWideStringField;
    BUS_CD_C_ITEetiq_espuma6: TWideStringField;
    BUS_CD_C_ITEetiq_revestimento4: TWideStringField;
    BUS_CD_C_ITEetiq_revestimento5: TWideStringField;
    BUS_CD_C_ITEetiq_revestimento6: TWideStringField;
    BUS_CD_C_ITEint_lote_gru: TBooleanField;
    BUS_CD_C_ITEint_ali_interna_icms: TFloatField;
    BUS_CD_C_ITEint_cest: TWideStringField;
    FAT_CD_R_GAM_C425id_ncm: TWideStringField;
    FAT_CD_R_GAM_C425cest: TWideStringField;
    FAT_CD_R_GAM_C425descricao: TWideStringField;
    FAT_CD_R_GAM_C425cod_barra: TWideStringField;
    FAT_CD_R_GAM_C425tipo_item: TWideStringField;
    FAT_CD_R_GAM_C425ex_ipi: TWideMemoField;
    FAT_CD_R_GAM_C425cod_gen: TWideMemoField;
    FAT_CD_R_GAM_C425aliq_icms: TFloatField;
    FAT_CD_R_GAM_C300cest: TWideStringField;
    FAT_CD_R_GAM_C300cod_barra: TWideStringField;
    FAT_CD_R_GAM_C300tipo_item: TWideStringField;
    FAT_CD_R_GAM_C300aliq_icms: TFloatField;
    FAT_CD_R_GAM_C300ex_ipi: TWideMemoField;
    FAT_CD_R_GAM_C300cod_gen: TWideMemoField;
    BUS_CD_C_PCCnivel: TWideStringField;
    cdsCli_For: TClientDataSet;
    cdsCli_Fordoc_cnpj_cpf: TStringField;
    cdsM400: TClientDataSet;
    cdsM400CST_PIS: TStringField;
    cdsM400VL_TOT_REC: TCurrencyField;
    cdsM400COD_CTA: TStringField;
    cdsM410: TClientDataSet;
    cdsM410NAT_REC: TStringField;
    cdsM410COD_CTA: TStringField;
    cdsM410VL_REC: TCurrencyField;
    FAT_CD_R_GAM_A170nat_rec: TWideStringField;
    FAT_CD_R_GAM_C300nat_rec: TWideStringField;
    dsM400: TDataSource;
    dsM410: TDataSource;
    FAT_CD_R_GAM_E_A_305: TClientDataSet;
    FAT_CD_R_GAM_E_B_305: TClientDataSet;
    FAT_CD_R_GAM_E_C_305: TClientDataSet;
    FAT_CD_R_GAM_E_A_305ind_mro: TIntegerField;
    FAT_CD_R_GAM_E_A_305ind_ope: TIntegerField;
    FAT_CD_R_GAM_E_A_305dt_doc: TDateField;
    FAT_CD_R_GAM_E_A_305cop: TWideStringField;
    FAT_CD_R_GAM_E_A_305num_lcto: TWideMemoField;
    FAT_CD_R_GAM_E_A_305qtd_lcto: TIntegerField;
    FAT_CD_R_GAM_E_A_305vl_cont: TFMTBCDField;
    FAT_CD_R_GAM_E_A_305vlr_op_iss: TFMTBCDField;
    FAT_CD_R_GAM_E_A_305vl_bc_icms: TFMTBCDField;
    FAT_CD_R_GAM_E_A_305vl_icms: TFMTBCDField;
    FAT_CD_R_GAM_E_A_305vl_icms_st: TFMTBCDField;
    FAT_CD_R_GAM_E_A_305vl_st_ent: TWideMemoField;
    FAT_CD_R_GAM_E_A_305vl_st_fnt: TWideMemoField;
    FAT_CD_R_GAM_E_A_305vl_st_uf: TWideMemoField;
    FAT_CD_R_GAM_E_A_305vl_st_oe: TWideMemoField;
    FAT_CD_R_GAM_E_A_305vl_at: TWideMemoField;
    FAT_CD_R_GAM_E_A_305vl_isnt_icms: TFMTBCDField;
    FAT_CD_R_GAM_E_A_305vl_out_icms: TFMTBCDField;
    FAT_CD_R_GAM_E_A_305vl_bc_ipi: TFMTBCDField;
    FAT_CD_R_GAM_E_A_305vl_ipi: TFMTBCDField;
    FAT_CD_R_GAM_E_A_305vl_isnt_ipi: TWideMemoField;
    FAT_CD_R_GAM_E_A_305vl_out_ipi: TWideMemoField;
    FAT_CD_R_GAM_E_B_305ind_mro: TIntegerField;
    FAT_CD_R_GAM_E_B_305ind_ope: TIntegerField;
    FAT_CD_R_GAM_E_B_305cop: TWideStringField;
    FAT_CD_R_GAM_E_B_305num_lcto: TWideMemoField;
    FAT_CD_R_GAM_E_B_305qtd_lcto: TIntegerField;
    FAT_CD_R_GAM_E_B_305vl_cont: TFMTBCDField;
    FAT_CD_R_GAM_E_B_305vlr_op_iss: TFMTBCDField;
    FAT_CD_R_GAM_E_B_305vl_bc_icms: TFMTBCDField;
    FAT_CD_R_GAM_E_B_305vl_icms: TFMTBCDField;
    FAT_CD_R_GAM_E_B_305vl_icms_st: TFMTBCDField;
    FAT_CD_R_GAM_E_B_305vl_st_ent: TWideMemoField;
    FAT_CD_R_GAM_E_B_305vl_st_fnt: TWideMemoField;
    FAT_CD_R_GAM_E_B_305vl_st_uf: TWideMemoField;
    FAT_CD_R_GAM_E_B_305vl_st_oe: TWideMemoField;
    FAT_CD_R_GAM_E_B_305vl_at: TWideMemoField;
    FAT_CD_R_GAM_E_B_305vl_isnt_icms: TFMTBCDField;
    FAT_CD_R_GAM_E_B_305vl_out_icms: TFMTBCDField;
    FAT_CD_R_GAM_E_B_305vl_bc_ipi: TFMTBCDField;
    FAT_CD_R_GAM_E_B_305vl_ipi: TFMTBCDField;
    FAT_CD_R_GAM_E_B_305vl_isnt_ipi: TWideMemoField;
    FAT_CD_R_GAM_E_B_305vl_out_ipi: TWideMemoField;
    FAT_CD_R_GAM_E_C_305ind_mro: TIntegerField;
    FAT_CD_R_GAM_E_C_305ind_ope: TIntegerField;
    FAT_CD_R_GAM_E_C_305dt_doc: TDateField;
    FAT_CD_R_GAM_E_C_305num_lcto: TWideMemoField;
    FAT_CD_R_GAM_E_C_305qtd_lcto: TIntegerField;
    FAT_CD_R_GAM_E_C_305vl_cont: TFMTBCDField;
    FAT_CD_R_GAM_E_C_305vlr_op_iss: TFMTBCDField;
    FAT_CD_R_GAM_E_C_305vl_bc_icms: TFMTBCDField;
    FAT_CD_R_GAM_E_C_305vl_icms: TFMTBCDField;
    FAT_CD_R_GAM_E_C_305vl_icms_st: TFMTBCDField;
    FAT_CD_R_GAM_E_C_305vl_st_ent: TWideMemoField;
    FAT_CD_R_GAM_E_C_305vl_st_fnt: TWideMemoField;
    FAT_CD_R_GAM_E_C_305vl_st_uf: TWideMemoField;
    FAT_CD_R_GAM_E_C_305vl_st_oe: TWideMemoField;
    FAT_CD_R_GAM_E_C_305vl_at: TWideMemoField;
    FAT_CD_R_GAM_E_C_305vl_isnt_icms: TFMTBCDField;
    FAT_CD_R_GAM_E_C_305vl_out_icms: TFMTBCDField;
    FAT_CD_R_GAM_E_C_305vl_bc_ipi: TFMTBCDField;
    FAT_CD_R_GAM_E_C_305vl_ipi: TFMTBCDField;
    FAT_CD_R_GAM_E_C_305vl_isnt_ipi: TWideMemoField;
    FAT_CD_R_GAM_E_C_305vl_out_ipi: TWideMemoField;
    procedure btnFiltrarClick(Sender: TObject);
    procedure tsNotaFiscalShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSEFClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEdocClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnInventarioClick(Sender: TObject);
    procedure ClbEmpresaClick(Sender: TObject);
    procedure dtaInicialChange(Sender: TObject);
    procedure dtaFinalChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnSpedFiscalClick(Sender: TObject);
    procedure btnSpedPisCofinsClick(Sender: TObject);
    procedure btnDestdaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnSintegraClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirDados;
    function  TestarCampos: Boolean;
    function  TestarCamposInv: Boolean;
    procedure TestarParametros(tipo:string);
    procedure TestarData;
    procedure DefinirPath;
    procedure GravarINI;

    procedure GerarArq20;
    procedure GerarArq60;
    procedure GerarArq80;
    procedure GerarArq100;
    procedure GerarArq000(DataIni,DataFim: TDateTime);
    procedure GerarArq000_EDOC;

    procedure SpedFiscal_0;
    procedure SpedFiscal_C;
    procedure SpedFiscal_D;
    procedure SpedFiscal_E;
    procedure SpedFiscal_H;
    procedure Spedfiscal_K;

    procedure SpedPisCofins_0;
    procedure SpedPisCofins_A;
    procedure SpedPisCofins_C;
    procedure SpedPisCofins_D;
    procedure SpedPisCofins_M;

    procedure DeSTDA_0;
    procedure DeSTDA_G;
    procedure DeSTDA_9;

    procedure FAT_PR_X_GAM_150(modelos:String);
    procedure FAT_PR_X_GAM_H30_190;
    procedure FAT_PR_X_GAM_H30_200;

    function RemoveCaracter (Str: String; Caracter: Array of String):String;
    function Vazio(cds:TClientDataSet;campo:string):integer;
    function Isenta(cds:TClientDataSet;campo:string):integer;
    function AjusteMonetario(campo:string):string;
    procedure BuscarItens0200;
    var
      TipoArq: integer;
      rDtaIni, rDtaFin, zEmpresa: string;
      rValor_tot_deb_E110,rValor_tot_cre_E110 : Currency;
  public
    { Public declarations }

  end;

var
  FAT_FM_M_GAM: TFAT_FM_M_GAM;

implementation

{$R *.dfm}

uses uDmGeral, CAD_UN_C_PAR, enFunc, FAT_UN_M_SIN;

function TFAT_FM_M_GAM.AjusteMonetario(campo: string): String;
var
i,vtotp,vtotv:integer;
begin
  vtotp:=0;
  vtotv:=0;
  result := campo;
  for I := 1 to length(campo) do
    begin
      if campo[i]= '.' then
        vtotp := vtotp+1;

      if campo[i]= ',' then
        vtotv := vtotv+1;
    end;

  if vtotv = 1 then
    begin
      for I := 1 to vtotp do
        begin
          result := StringReplace(result,'.','',[rfIgnoreCase])
        end;
    end
  else
    begin
      if (vtotv = 0) and (vtotp > 1) then
        begin
          for I := 2 to vtotp do
            begin
              result := StringReplace(result,'.','',[rfIgnoreCase])
            end;
        end;
    end;

  result := StringReplace(result,'.',',',[rfIgnoreCase])
end;

procedure TFAT_FM_M_GAM.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFAT_FM_M_GAM.btnDestdaClick(Sender: TObject);
var
I,T:integer;
yEmpresa: string;
begin

   T := 0;
   yEmpresa := '';

  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          T := T + 1;
          yEmpresa := trim(copy(ClbEmpresa.Items[I],1,1));
        end;
    end;
  if T > 1 then
    begin
      ShowMessage('Deve ser selecionada apenas "uma" empresa.');
      abort;
    end;

  TestarData;

  FAT_CD_R_GAM_G600.Close;
  FAT_CD_R_GAM_G600.Data :=
    FAT_CD_R_GAM_G600.DataRequest(
      VarArrayOf([yEmpresa,rDtaIni,rDtaFin]));

  FAT_CD_R_GAM_G605.Close;
  FAT_CD_R_GAM_G605.Data :=
    FAT_CD_R_GAM_G605.DataRequest(
      VarArrayOf([yEmpresa,rDtaIni,rDtaFin]));

  FAT_CD_R_GAM_G610.Close;
  FAT_CD_R_GAM_G610.Data :=
    FAT_CD_R_GAM_G610.DataRequest(
      VarArrayOf([yEmpresa,rDtaIni,rDtaFin]));

  FAT_CD_R_GAM_G615.Close;
  FAT_CD_R_GAM_G615.Data :=
    FAT_CD_R_GAM_G615.DataRequest(
      VarArrayOf([yEmpresa,rDtaIni,rDtaFin]));

  FAT_CD_R_GAM_G620.Close;
  FAT_CD_R_GAM_G620.Data :=
    FAT_CD_R_GAM_G620.DataRequest(
      VarArrayOf([yEmpresa,rDtaIni,rDtaFin]));

  FAT_CD_R_GAM_G625.Close;
  FAT_CD_R_GAM_G625.Data :=
    FAT_CD_R_GAM_G625.DataRequest(
      VarArrayOf([yEmpresa,rDtaIni,rDtaFin]));

  TipoArq := 5;
  DefinirPath;

  DeSTDA_0;
  DeSTDA_G;
  //DeSTDA_9;

  ACBrDeSTDA1.SaveFileTXT;
  ShowMessage('DeSTDA gerado com Sucesso!');
end;

procedure TFAT_FM_M_GAM.btnEdocClick(Sender: TObject);
var
  wRegistroC020: TRegistroSEFC020;
  wRegistroC300: TRegistroSEFC300;
  wRegistroC600: TRegistroSEFC600;
  wRegistroC610: TRegistroSEFC610;
I,T: integer;
begin
  TestarParametros('eDOC');
  FAT_CD_X_GAM_150.Close;
  FAT_CD_X_GAM_150.CreateDataSet;

  T := 0;
  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          T := T + 1;
        end;
    end;
  if T > 1 then
    begin
      ShowMessage('Deve ser selecionada apenas "uma" empresa.');
      abort;
    end;
  TestarData;
  TipoArq := 1;
  ACBrSEF2.TipoArquivo:= aEDOC;
  GerarArq000_EDOC;

  with ACBrSEF2.Bloco_C do
  begin
     with RegistroC001New do
      begin
        if (not FAT_CD_R_GAM_C20.IsEmpty) or (not FAT_CD_R_GAM_C600.IsEmpty) then
          IND_DAD := icContConteudo
        else
          IND_DAD := icSemConteudo;

        try
          FAT_CD_R_GAM_C20.Filtered := true;
          FAT_CD_R_GAM_C20.Filter := ' MODELO IN (''01'',''04'',''55'')';
          FAT_CD_R_GAM_C20.First;
        while not FAT_CD_R_GAM_C20.Eof do
          begin
            wRegistroC020:= RegistroC020New;

            with wRegistroC020 do
              begin
                Case FAT_CD_R_GAM_C20ind_operacao.AsInteger of
                  0: IND_OPER := SefioEntrada;
                  1: IND_OPER := SefioSaida;
                End;

                Case FAT_CD_R_GAM_C20ind_emitente.AsInteger of
                  0: IND_EMIT := SefiePropria;
                  1: IND_EMIT := SefieTerceiros;
                End;

                if FAT_CD_R_GAM_C20ind_operacao.AsInteger = 1 then
                  IND_EMIT := SefiePropria;

                COD_PART := RemoveCaracter(FAT_CD_R_GAM_C20cpf_cnpj.AsString,['/','.','-']);

                Case FAT_CD_R_GAM_C20modelo.AsInteger of
                  01: COD_MOD := SrefNF;
                  04: COD_MOD := SrefNFPR;
                  55: COD_MOD := SrefNFe;
                 End;

                Case FAT_CD_R_GAM_C20situacao_lancto.AsInteger of
                  00: COD_SIT := SefcsEmissaonormal;
                  02: COD_SIT := SefcsOperacancelada;
                  //01: COD_SIT := SefcsEmissaocontingencia;
                  //02: COD_SIT := SefcsEmissaocontingenciaFS;
                  //03: COD_SIT := SefcsEmissaocontingenciaSCAN;
                  //04: COD_SIT := SefcsEmissaocontingenciaDPEC;
                  //05: COD_SIT := SefcsEmissaocontingenciaFSDA;
                  //06: COD_SIT := SefcsEmissaoContingenciaSVCAN;
                  //07: COD_SIT := SefcsEmissaoContingenciaSVCRS;
                  //10: COD_SIT := SefcsEmissaoavulsa;
                  //20: COD_SIT := SefcsComplemento;
                  //25: COD_SIT := SefcsConsolidavalores;
                  //80: COD_SIT := SefcsAutorizadenegada;
                  //90: COD_SIT := SefcsOperacancelada;
                  //91: COD_SIT := SefcsNegociodesfeito;
                  //95: COD_SIT := SefcsAjusteinformacoes;
                  //99: COD_SIT := SefcsSemrepercussaofiscal;
                else  COD_SIT := SefcsNumerainutilizada;
                End;

                SER     := copy(FAT_CD_R_GAM_C20serie.AsString,1,3);
                NUM_DOC := FAT_CD_R_GAM_C20numero.AsInteger;

                if FAT_CD_R_GAM_C20nfe_chave.AsString = '' then // gerador de chave NFE, CHV;
                  begin
                    CHV_NFE :=  MontaCheveNfe(copy( dmgeral.BUS_CD_C_PARid_cidade.AsString,1,2),
                                FAT_CD_R_GAM_C20dta_emissao.Value,dmgeral.BUS_CD_C_PARemp_cnpj.AsString,trim(FAT_CD_R_GAM_C20modelo.AsString),trim(FAT_CD_R_GAM_C20serie.AsString),
                                strtoint(trim(FAT_CD_R_GAM_C20numero.AsString)),strtoint(trim(FAT_CD_R_GAM_C20numero.AsString)),'1');
                  end
                else
                  begin
                    CHV_NFE := FAT_CD_R_GAM_C20nfe_chave.AsString;
                  end;

                if FAT_CD_R_GAM_C20ind_operacao.AsInteger = 0 then
                  DT_EMIS := FAT_CD_R_GAM_C20dta_emissao.AsDateTime;

                DT_DOC  := FAT_CD_R_GAM_C20dta_documento.AsDateTime;
                COD_NAT := FAT_CD_R_GAM_C20id_cfo.AsString;

                Case FAT_CD_R_GAM_C20ind_pagamento.AsInteger of
                  0: IND_PGTO := SefipAVista;
                  1: IND_PGTO := SefAPrazo;
                  2: IND_PGTO := SefNaoOnerada;
                else IND_PGTO := SefNenhum;
                End;

                VL_DOC      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_contabil.AsCurrency));
                VL_DESC     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_desconto.AsCurrency));
                VL_ACMO     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_acrescimo.AsCurrency));
                VL_MERC     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_mercadoria.AsCurrency));
                VL_FRT      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20fre_valor.AsCurrency));
                VL_SEG      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_seguro.AsCurrency));
                VL_OUT_DA   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_outras.AsCurrency));

                if dmgeral.BUS_CD_C_PAR_CTRsef_ind_iss.AsInteger = 0 then
                  VL_OP_ISS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_op_iss.AsCurrency));

                if dmgeral.BUS_CD_C_PAR_CTRsef_ind_icms.AsInteger = 0 then
                  begin
                    VL_BC_ICMS  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_base_icms.AsCurrency));
                    VL_ICMS     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_icms.AsCurrency));
                    VL_BC_ST    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_base_icms_subst.AsCurrency));
                    VL_ICMS_ST  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_icms_subst.AsCurrency));
                  end;
                VL_AT       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_at.AsCurrency));

                if dmgeral.BUS_CD_C_PAR_CTRsef_ind_ipi.AsInteger = 0 then
                  VL_IPI    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_ipi.AsCurrency))
                else
                  VL_IPI    := 0;

                COD_INF_OBS := '';

                // FILHO
                FAT_CD_R_GAM_C300.Close;
                    FAT_CD_R_GAM_C300.Data :=
                      FAT_CD_R_GAM_C300.DataRequest(
                        VarArrayOf([FAT_CD_R_GAM_C20id_fiscal.Text]));

                FAT_CD_R_GAM_C300.First;
                while not  FAT_CD_R_GAM_C300.Eof do
                  begin
                    if FAT_CD_R_GAM_C300id_fiscal.AsInteger = FAT_CD_R_GAM_C20id_fiscal.AsInteger then
                      begin
                      //  wRegistroC300 := wRegistroC020.RegistrosC300.New(wRegistroC020);
                        with wRegistroC300 do
                          begin
                            NUM_ITEM     := FAT_CD_R_GAM_C300id_sequencia.AsInteger;
                            COD_ITEM     := FAT_CD_R_GAM_C300id_item.AsString;
                            UNID         := FAT_CD_R_GAM_C300id_und_compra.AsString;
                            VL_UNIT      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300vlr_unitario.AsCurrency));
                            QTD          := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300qtde.AsCurrency));
                            VL_DESC_I    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300vlr_desconto.AsCurrency));
                            VL_ACMO_I    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300vlr_acrescimo.AsCurrency));
                            VL_ITEM      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300vlr_mercadoria.AsCurrency));
                            COD_NCM      := FAT_CD_R_GAM_C300id_ncm.AsString;

                            if Length(FAT_CD_R_GAM_C300id_st_icm.AsString) < 3 then
                              CST        := '0' + FAT_CD_R_GAM_C300id_st_icm.AsString
                            else
                              begin
                                if ((FAT_CD_R_GAM_C300id_st_icm.AsString = '101') or      // chamado 2020
                                  (FAT_CD_R_GAM_C300id_st_icm.AsString = '102') or
                                  (FAT_CD_R_GAM_C300id_st_icm.AsString = '103') or
                                  (FAT_CD_R_GAM_C300id_st_icm.AsString = '201') or
                                  (FAT_CD_R_GAM_C300id_st_icm.AsString = '202') or
                                  (FAT_CD_R_GAM_C300id_st_icm.AsString = '203') or
                                  (FAT_CD_R_GAM_C300id_st_icm.AsString = '300') or
                                  (FAT_CD_R_GAM_C300id_st_icm.AsString = '400') or
                                  (FAT_CD_R_GAM_C300id_st_icm.AsString = '500') or
                                  (FAT_CD_R_GAM_C300id_st_icm.AsString = '900')) and
                                  (FAT_CD_R_GAM_C20ind_operacao.AsInteger = 0) and
                                  (FAT_CD_R_GAM_C20ind_emitente.AsInteger = 1) then
                                begin
                                  CST := '040';
                                end
                              else
                                CST := FAT_CD_R_GAM_C300id_st_icm.AsString;
                              end;

                            CFOP         := StrToInt(trim(FAT_CD_R_GAM_C300id_cfo.AsString));

                            if dmgeral.BUS_CD_C_PAR_CTRsef_ind_icms.AsInteger = 0 then
                              begin
                                VL_BC_ICMS_I := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300icm_n_base.AsCurrency));
                                ALIQ_ICMS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300aliq_icms_i.AsCurrency));
                                VL_ICMS_I    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300icm_n_valor.AsCurrency));
                                VL_BC_ST_I   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300icm_s_base.AsCurrency));
                                ALIQ_ST      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300aliq_st.AsCurrency));
                              end;

                            if dmgeral.BUS_CD_C_PAR_CTRsef_ind_ipi.AsInteger = 0 then
                              begin
                                VL_ICMS_ST_I := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300icm_s_valor.AsCurrency));
                                VL_BC_IPI    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300ipi_base.AsCurrency));
                                ALIQ_IPI     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300ipi_aliquota.AsCurrency));
                                VL_IPI_I     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300ipi_valor.AsCurrency));
                              end;
                          end;
                      end;
                    FAT_CD_R_GAM_C300.Next;
                  end;// while  FAT_CD_R_GAM_C300;
              end;
            FAT_CD_R_GAM_C20.Next;
          end;

        finally

        end;
        FAT_CD_R_GAM_C600.First;

        while not FAT_CD_R_GAM_C600.Eof do
          begin
            wRegistroC600:= RegistroC600New;

            FAT_CD_R_GAM_C610.Close;
            FAT_CD_R_GAM_C610.Data :=
              FAT_CD_R_GAM_C610.DataRequest(
                VarArrayOf([FAT_CD_R_GAM_C600n_cupom.Text,FAT_CD_R_GAM_C600serial_impressora.Text, rDtaIni,rDtaFin]));

            with wRegistroC600 do
              begin
                if Length(FAT_CD_R_GAM_C600cpf_cnpj.AsString)=14 then
                  begin
                    CPF_CONS :='';
                    CNPJ_CONS:=RemoveCaracter(FAT_CD_R_GAM_C600cpf_cnpj.AsString,['/','.','-']);
                  end
                else
                  begin
                    CPF_CONS:=RemoveCaracter(FAT_CD_R_GAM_C600cpf_cnpj.AsString,['/','.','-']);
                    CNPJ_CONS:='';
                  end;

                COD_MOD := SrefCCF;

                Case StrToInt(Trim(FAT_CD_R_GAM_C600SITUACAO.AsString)) of
                  00: COD_SIT := SefcsEmissaonormal;
                  01: COD_SIT := SefcsEmissaocontingencia;
                  02: COD_SIT := SefcsEmissaocontingenciaFS;
                  03: COD_SIT := SefcsEmissaocontingenciaSCAN;
                  04: COD_SIT := SefcsEmissaocontingenciaDPEC;
                  05: COD_SIT := SefcsEmissaocontingenciaFSDA;
                  06: COD_SIT := SefcsEmissaoContingenciaSVCAN;
                  07: COD_SIT := SefcsEmissaoContingenciaSVCRS;
                  10: COD_SIT := SefcsEmissaoavulsa;
                  20: COD_SIT := SefcsComplemento;
                  25: COD_SIT := SefcsConsolidavalores;
                  80: COD_SIT := SefcsAutorizadenegada;
                  90: COD_SIT := SefcsOperacancelada;
                  91: COD_SIT := SefcsNegociodesfeito;
                  95: COD_SIT := SefcsAjusteinformacoes;
                  99: COD_SIT := SefcsSemrepercussaofiscal;
                else  COD_SIT := SefcsNumerainutilizada;
                End;
                if FAT_CD_R_GAM_C600n_caixa.AsString = '' then
                   ECF_CX    := 0
                else
                  ECF_CX     := FAT_CD_R_GAM_C600n_caixa.AsInteger;
                ECF_FAB      := FAT_CD_R_GAM_C600serial_impressora.AsString;

                if FAT_CD_R_GAM_C600cro.AsString = '' then
                  CRO        := 0
                else
                  CRO        := FAT_CD_R_GAM_C600cro.AsInteger;

                if FAT_CD_R_GAM_C600crz.AsString = '' then
                  CRZ        := 0
                else
                  CRZ        := FAT_CD_R_GAM_C600crz.AsInteger;

                NUM_DOC      := FAT_CD_R_GAM_C600n_cupom.AsInteger;
                DT_DOC       := FAT_CD_R_GAM_C600data_movimento.AsDateTime;

                if Trim(FAT_CD_R_GAM_C600SITUACAO.AsString) <> '90' then
                  COP        := FAT_CD_R_GAM_C600classe.AsString
                else
                  COP        := 'OP00';

                VL_DOC       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C600vlr_total.AsCurrency));
                VL_CANC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C600vlr_cancelado.AsCurrency));
                VL_DESC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C600vlr_desconto.AsCurrency));
                VL_ACMO_ICMS := 0;
                VL_OP_ISS    := 0;

                VL_BC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C600base_icms.AsCurrency));

                VL_ICMS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C600vlr_icms.AsCurrency));

                VL_ISN       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C600vlr_isento.AsCurrency));

                VL_NT        := 0;
                VL_ST        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C600base_icms_sub.AsCurrency));

                FAT_CD_R_GAM_C610.First;
                while not FAT_CD_R_GAM_C610.Eof do
                  begin
                    wRegistroC610 := wRegistroC600.RegistroC610.New(wRegistroC600);

                    with wRegistroC610 do
                      begin
                        VL_ST_I      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C610base_icms_sub.AsCurrency));
                        //VL_NT_I      := FAT_CD_R_GAM_C610.AsCurrency;
                        VL_ITEM      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C610valor_total.AsCurrency));
                        VL_UNIT      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C610valor_unitario.AsCurrency));
                        VL_ICMS_I    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C610VLR_ICMS.AsCurrency));

                        VL_BC_ICMS_I := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C610BASE_ICMS.AsCurrency));

                        VL_ACMO_I    := 0;
                        VL_DESC_I    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C610DESCONTO.AsCurrency));

                        VL_ISN_I     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C610vlr_isento.AsCurrency));

                        if FAT_CD_R_GAM_C610aliquota.AsString <>'II' then
                          ALIQ_ICMS  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C610aliquota.AsCurrency));

                        QTD          := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C610qtde.AsInteger));

                        if FAT_CD_R_GAM_C600situacao.Asstring = '90' then
                          CFOP       := '0000'
                        else
                          CFOP       := FAT_CD_R_GAM_C610cfop.asString;

                        NUM_ITEM     := StrToInt(trim(FAT_CD_R_GAM_C610n_item.AsString));
                        COD_ITEM     := trim(FAT_CD_R_GAM_C610cod_produto.AsString);
                        CST          := '0' + FAT_CD_R_GAM_C610cst_icms.AsString;
                        UNID         := trim(FAT_CD_R_GAM_C610UNIDADE.AsString);
                      end;
                    FAT_CD_R_GAM_C610.Next;
                  end;
              end;
            FAT_CD_R_GAM_C600.Next;
          end; // fim do gerador ecf (cupom fiscal);
      end;
  end;
  ACBrSEF2.WriteBloco_C(true);
  ACBrSEF2.SaveFileTXT;
  ShowMessage('"eDoc" gerado com Sucesso!');
end;

procedure TFAT_FM_M_GAM.btnFiltrarClick(Sender: TObject);
var
 i:integer;
begin
  if TestarCampos then
     begin
       ExibirDados;
     end
  else
    dtainicial.SetFocus;
end;

procedure TFAT_FM_M_GAM.btnInventarioClick(Sender: TObject);
var
  wRegistroH020: TRegistroSEFH020;
  wRegistroH030: TRegistroSEFH030;
  wRegistroH040: TRegistroSEFH040;
  wRegistroH050: TRegistroSEFH050;
  wRegistroH060: TRegistroSEFH060;
  I,T: integer;
  vlrTotalH40: Currency;
  xEmpresa: string;
begin

  if not (TestarCamposInv) then
     exit;

  xEmpresa := '';
  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          //yEmpresa := trim(copy(ClbEmpresa.Items[I],1,1));
          if xEmpresa <> '' then
           begin
             xEmpresa :=
             xEmpresa + ',' +''''+trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
          if xEmpresa = '' then
           begin
             xEmpresa :=
             xEmpresa +''''+ trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
        end;
    end;

  //  zEmpresa := xEmpresa;



  FAT_CD_R_GAM_INV_ITE.Close;
  FAT_CD_R_GAM_INV_ITE.Data :=
    FAT_CD_R_GAM_INV_ITE.DataRequest(
      VarArrayOf([xEmpresa,dtaInventario.Text]));

  FAT_CD_R_GAM_H30.Close;
  FAT_CD_R_GAM_H30.Data :=
    FAT_CD_R_GAM_H30.DataRequest(
      VarArrayOf([xEmpresa,dtaInventario.Text]));

  FAT_CD_R_GAM_H20.Close;
  FAT_CD_R_GAM_H20.Data :=
    FAT_CD_R_GAM_H20.DataRequest(
      VarArrayOf([xEmpresa,dtaInventario.Text]));

  FAT_CD_R_GAM_H50.Close;
      FAT_CD_R_GAM_H50.Data :=
        FAT_CD_R_GAM_H50.DataRequest(
          VarArrayOf([xEmpresa,dtaInventario.Text, dtaInventario.text]));

  FAT_CD_R_GAM_H60.Close;
      FAT_CD_R_GAM_H60.Data :=
        FAT_CD_R_GAM_H60.DataRequest(
              VarArrayOf([xEmpresa,dtaInventario.Text, dtaInventario.text]));


  T := 0;
  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          T := T + 1;
        end;
    end;
  if T > 1 then
    begin
      ShowMessage('Deve ser selecionada apenas 1 empresa.');
      abort;
    end;
  TipoArq := 2;
  ACBrSEF2.TipoArquivo:= aSEF;
  GerarArq000(dtaInventario.date,dtaInventario.date);

  if FAT_CD_R_GAM_H20.IsEmpty then
     begin
       Showmessage('Nenhum inventário foi encontrado na data informada!');
       ACBrSEF2.Bloco_H.RegistroH001.IND_DAD := icSemConteudo;
       exit;
     end
  else
    begin
       ACBrSEF2.Bloco_H.RegistroH001.IND_DAD := icContConteudo
    end;

  //wRegistroH020:= ACBrSEF2.Bloco_H.RegistroH020New;
  FAT_CD_R_GAM_H20.First;
  while not FAT_CD_R_GAM_H20.Eof do
    begin
      with ACBrSEF2.Bloco_H.RegistroH020New do
        begin
          IND_DT        := FAT_CD_R_GAM_H20ind_data.AsInteger;
          DT_INV        := FAT_CD_R_GAM_H20dta_inventario.AsDateTime;
          VL_ESTQ       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H20vlr_estoque.AsCurrency));
          VL_ICMS_REC   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H20vlr_icms_recup.AsCurrency));
          VL_IPI_REC    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H20vlr_ipi_recup.AsCurrency));
          VL_PIS_REC    := 0;
          VL_COFINS_REC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H20vlr_cofins_recup.AsCurrency));
          VL_TRIB_NC    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H20vlr_trib_n_cumul.AsCurrency));
          VL_ESTQ_NC    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H20vlr_estoque_1.AsCurrency));
          NUM_LCTO      := FAT_CD_R_GAM_H20num_lancto.AsString;
          COD_INF_OBS   := FAT_CD_R_GAM_H20cod_observacao.AsString;
        end;
        FAT_CD_R_GAM_H20.Next;
    end;

  //wRegistroH030:= ACBrSEF2.Bloco_H.RegistroH030New;
  FAT_CD_R_GAM_H30.First;
  while not FAT_CD_R_GAM_H30.Eof do
    begin
//      with wRegistroH030 do
      with ACBrSEF2.Bloco_H.RegistroH030New do
        begin
          IND_POSSE       := FAT_CD_R_GAM_H30ind_posse.AsInteger;
          COD_PART        := RemoveCaracter(FAT_CD_R_GAM_H30emp_cnpj.AsString,['/','.','-']);
          IND_ITEM        := FAT_CD_R_GAM_H30ind_item.AsInteger;
          COD_NCM         := StrToInt(trim(FAT_CD_R_GAM_H30id_ncm.AsString));
          COD_ITEM        := FAT_CD_R_GAM_H30id_item.AsString;
          UNID            := FAT_CD_R_GAM_H30id_und_compra.AsString;
          VL_UNIT         := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H30vlr_unit.AsCurrency));
          QTD             := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H30qtd.AsCurrency));
          VL_ITEM         := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H30vlr_liquido.AsCurrency));
          VL_ICMS_REC_I   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H30vlr_icms.AsCurrency));
          VL_IPI_REC_I    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H30vlr_ipi.AsCurrency));
          VL_PIS_REC_I    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H30vlr_pis.AsCurrency));
          VL_COFINS_REC_I := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H30vlr_cofins.AsCurrency));
          VL_TRIB_NC_I    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H30vlr_trib_n_cumul.AsCurrency));
          COD_INF_OBS     := FAT_CD_R_GAM_H30cod_observacao.AsString;
        end;
        FAT_CD_R_GAM_H30.Next;
    end;

  //wRegistroH040:= ACBrSEF2.Bloco_H.RegistroH040New;
  //with wRegistroH040 do
  vlrTotalH40 := 0;


  //wRegistroH050:= ACBrSEF2.Bloco_H.RegistroH050New;
  FAT_CD_R_GAM_H50.First;
  while not FAT_CD_R_GAM_H50.Eof do
    begin
     // with wRegistroH050 do
     with ACBrSEF2.Bloco_H.RegistroH050New do
        begin
          IND_ITEM    := FAT_CD_R_GAM_H50tipo_item.AsInteger;
          VL_SUB_ITEM := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H50vlr_total.AsCurrency));
          vlrTotalH40 := vlrTotalH40 + strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H50vlr_total.AsCurrency));
        end;
        FAT_CD_R_GAM_H50.Next;
    end;

  with ACBrSEF2.Bloco_H.RegistroH040New do
    begin
      IND_POSSE    := 0;
      VL_SUB_POSSE := vlrTotalH40;
    end;
  vlrTotalH40 := 0;

  //wRegistroH060:= ACBrSEF2.Bloco_H.RegistroH060New;
  FAT_CD_R_GAM_H60.First;
  while not FAT_CD_R_GAM_H60.Eof do
    begin
     // with wRegistroH060 do
      with ACBrSEF2.Bloco_H.RegistroH060New do
        begin
          COD_NCM    := StrToInt(trim(FAT_CD_R_GAM_H60id_ncm.AsString));
          VL_SUB_NCM := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H60vlr_total.AsCurrency));
        end;
      FAT_CD_R_GAM_H60.Next;
    end;
  ACBrSEF2.SaveFileTXT;
  ShowMessage('Inventário gerado com Sucesso!');
end;

procedure TFAT_FM_M_GAM.btnSEFClick(Sender: TObject);
var
  wRegistroE120: TRegistroSEFE120;
I,T,z: integer;
xempresa : string;
begin
  TestarParametros('Sef');

  rDtaIni := dtaInicial.Text;
  rDtaFin := dtaFinal.Text;
  T := 0;
  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          T := T + 1;
        end;
    end;
  if T > 1 then
    begin
      ShowMessage('Deve ser selecionada apenas "uma" empresa.');
      abort;
    end;

  TestarData;
  TipoArq := 0;

  xEmpresa := '';
  FAT_CD_X_GAM_150.Close;
  FAT_CD_X_GAM_150.CreateDataSet;

  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          if xEmpresa <> '' then
           begin
             xEmpresa :=
             xEmpresa + ',' +''''+trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
          if xEmpresa = '' then
           begin
             xEmpresa :=
             xEmpresa +''''+ trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
        end;
    end;

  { TODO -oMaxsuel -cComentado : Inserido em 14/02/2017 }
  {
  Bloco 0: Abertura, identificação e referências
  Bloco C: Documentos fiscais do ICMS e do IPI – mercadorias
  Bloco E: Livros de registro das operações da apuração do ICMS e do IPI
  Bloco F: Livros e mapas de registro das operações de controle
  Bloco G: Informações econômico-fiscais
  Bloco H: Livro de Registro do Inventário
  Bloco 8: Informações complementares da Sefaz/UF
  Bloco 9: Controle e encerramento do arquivo digital
  }

  ACBrSEF2.TipoArquivo:= aSEF;
  GerarArq000(dtaInicial.date,dtaFinal.date);

  //ACBrSEF2.Bloco_E.RegistroE001.IND_DAD :=  idDocEntrSaiAjuste;

  with ACBrSEF2.Bloco_E do
  begin
    with RegistroE001New do
      begin
        IND_DAD :=  idDocEntrSaiAjuste;
      end;

     if dmGeral.cad_cd_c_par.FieldByName('int_uf').AsString = 'PE' then
       begin
         for z := 1 to 7 do
             begin
                with RegistroE003New do
                     begin
                       UF :=  dmGeral.cad_cd_c_par.FieldByName('int_uf').AsString;
                       case z of
                         1:
                           begin
                             LIN_MON   := 'E025';
                             CAMPO_INI := 16;
                             QTD_CAMPO := 2;
                           end;
                         2:
                           begin
                             LIN_MON   := 'E055';
                             CAMPO_INI := 09;
                             QTD_CAMPO := 1;
                           end;
                         3:
                           begin
                             LIN_MON   := 'E065';
                             CAMPO_INI := 10;
                             QTD_CAMPO := 1;
                           end;
                         4:
                           begin
                             LIN_MON   := 'E085';
                             CAMPO_INI := 06;
                             QTD_CAMPO := 1;
                           end;
                         5:
                           begin
                             LIN_MON   := 'E105';
                             CAMPO_INI := 11;
                             QTD_CAMPO := 1;
                           end;
                         6:
                           begin
                             LIN_MON   := 'E310';
                             CAMPO_INI := 10;
                             QTD_CAMPO := 1;
                           end;
                         7:
                           begin
                             LIN_MON   := 'E350';
                             CAMPO_INI := 10;
                             QTD_CAMPO := 1;
                           end;
                       end;
                     end;
             end;
       end;

    FAT_CD_R_GAM_E20.First;
    while not FAT_CD_R_GAM_E20.Eof do
      begin
        with RegistroE020New do
         begin
            Case FAT_CD_R_GAM_E20ind_operacao.AsInteger of
              0: IND_OPER := SefioEntrada;
              1: IND_OPER := SefioSaida;
            End;

            Case FAT_CD_R_GAM_E20ind_emitente.AsInteger of
              0: IND_EMIT := SefiePropria;
              1: IND_EMIT := SefieTerceiros;
            End;

            //IND_EMIT     := SefiePropria;
            COD_PART     := RemoveCaracter(FAT_CD_R_GAM_E20cpf_cnpj.AsString,['/','.','-']);

            Case FAT_CD_R_GAM_E20modelo.AsInteger of
              01: COD_MOD := SrefNF;
              04: COD_MOD := SrefNFPR;
              55: COD_MOD := SrefNFe;
            End;

            Case FAT_CD_R_GAM_E20situacao_lancto.AsInteger of
              00: COD_SIT := SefcsEmissaonormal;
              02: COD_SIT := SefcsOperacancelada;
             // 01: COD_SIT := SefcsEmissaocontingencia;
             // 02: COD_SIT := SefcsEmissaocontingenciaFS;
             // 03: COD_SIT := SefcsEmissaocontingenciaSCAN;
              04: COD_SIT := SefcsAutorizadenegada;
             // 05: COD_SIT := SefcsAutorizadenegada;
             // 06: COD_SIT := SefcsEmissaoContingenciaSVCAN;
             // 07: COD_SIT := SefcsEmissaoContingenciaSVCRS;
             // 10: COD_SIT := SefcsEmissaoavulsa;
             // 20: COD_SIT := SefcsComplemento;
             // 25: COD_SIT := SefcsConsolidavalores;
             // 80: COD_SIT := SefcsAutorizadenegada;
             // 90: COD_SIT := SefcsOperacancelada;
             // 91: COD_SIT := SefcsNegociodesfeito;
             // 95: COD_SIT := SefcsAjusteinformacoes;
             // 99: COD_SIT := SefcsSemrepercussaofiscal;
            else  COD_SIT := SefcsNumerainutilizada;
            End; // A pedido de Sangia se "00" - normal, se "02" - cancelada;
                 // A pedido de Sangia se "04" - Denegada, 30/08/2016;

            SER          := copy(FAT_CD_R_GAM_E20serie.AsString,1,3);
            NUM_DOC      := FAT_CD_R_GAM_E20numero.AsInteger;

            if FAT_CD_R_GAM_E20nfe_chave.AsString = '' then // gerador de chave NFE, CHV;
              begin
                CHV_NFE :=  MontaCheveNfe(copy( dmgeral.BUS_CD_C_PARid_cidade.AsString,1,2),
                            FAT_CD_R_GAM_E20dta_emissao.Value,dmgeral.BUS_CD_C_PARemp_cnpj.AsString,trim(FAT_CD_R_GAM_E20modelo.AsString),trim(FAT_CD_R_GAM_E20serie.AsString),
                            strtoint(trim(FAT_CD_R_GAM_E20numero.AsString)),strtoint(trim(FAT_CD_R_GAM_E20numero.AsString)),'1');
              end
            else
              begin
                CHV_NFE      := FAT_CD_R_GAM_E20nfe_chave.AsString;
              end;

            if FAT_CD_R_GAM_E20ind_operacao.AsInteger = 0 then
              DT_EMIS    := FAT_CD_R_GAM_E20dta_emissao.AsDateTime;

            DT_DOC       := FAT_CD_R_GAM_E20dta_documento.AsDateTime;
            COD_NAT      := FAT_CD_R_GAM_E20cod_natureza.AsString;
            COP          := FAT_CD_R_GAM_E20cod_cla_oper.AsString;
            NUM_LCTO     := FAT_CD_R_GAM_E20num_lancto_contabil.AsString;

            Case FAT_CD_R_GAM_E20ind_pagamento.AsInteger of
              0: IND_PGTO     := SefipAVista;
              1: IND_PGTO     := SefAPrazo;
              2: IND_PGTO     := SefNaoOnerada;
            else IND_PGTO     := SefNenhum;
            End;

            VL_CONT      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_contabil.AsCurrency));

            if dmgeral.BUS_CD_C_PAR_CTRsef_ind_iss.AsInteger = 0 then
              VL_OP_ISS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_iss.AsCurrency));

            if dmgeral.BUS_CD_C_PAR_CTRsef_ind_icms.AsInteger = 0 then
              begin
                VL_BC_ICMS   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_base_icms.AsCurrency));
                VL_ICMS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_icms.AsCurrency));
                VL_ICMS_ST   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_icms_subst.AsCurrency));
                VL_ST_E      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_icms_subst_credit.AsCurrency));
                VL_ST_S      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_icms_subst_saida.AsCurrency));
                VL_AT        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_icms_oper_entr.AsCurrency));
                VL_OUT_ICMS  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_outras.AsCurrency));
              end;
            VL_ISNT_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_isenta.AsCurrency));
            if dmgeral.BUS_CD_C_PAR_CTRsef_ind_ipi.AsInteger = 0 then
              begin
                VL_BC_IPI    := 0;
                VL_IPI       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_ipi.AsCurrency));
                VL_ISNT_IPI  := 0;
                VL_OUT_IPI   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_outros_ipi.AsCurrency));
              end;
            COD_INF_OBS  := '';

            FAT_CD_R_GAM_E25.First;

            while not FAT_CD_R_GAM_E25.eof do
              begin
                if FAT_CD_R_GAM_E25id_fiscal.AsInteger = FAT_CD_R_GAM_E20id_fiscal.AsInteger then
                  begin
                    with RegistroE025New do
                    begin
                      VL_CONT_P      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_contabil.AsCurrency));

                      if dmgeral.BUS_CD_C_PAR_CTRsef_ind_ipi.AsInteger = 0 then
                        begin
                          VL_OP_ISS_P    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_iss.AsCurrency));
                          VL_BC_IPI_P    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_ipi_base.AsCurrency));
                          VL_IPI_P       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25aliq_icms.AsCurrency));
                          VL_OUT_IPI_P   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_outras.AsCurrency));
                        end;

                      CFOP           := FAT_CD_R_GAM_E25id_cfo.AsString;

                      if dmgeral.BUS_CD_C_PAR_CTRsef_ind_icms.AsInteger = 0 then
                        begin
                          VL_BC_ICMS_P   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_base_icms.AsCurrency));
                          ALIQ_ICMS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25aliq_icms.AsCurrency));
                          VL_ICMS_P      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_icms.AsCurrency));
                          VL_BC_ST_P     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_base_icms_subst.AsCurrency));
                          VL_ICMS_ST_P   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_icms_subst.AsCurrency));
                          VL_OUT_ICMS_P  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_outras.AsCurrency));
                        end;
                      VL_ISNT_ICMS_P := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_isenta.AsCurrency));
                      VL_ISNT_IPI_P  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_ipi_isento.AsCurrency));
                      IND_PETR       := FAT_CD_R_GAM_E25ind_petr.AsInteger;
                      IND_IMUN       := FAT_CD_R_GAM_E25ind_imun.AsInteger;
                    end;
                  end;
                FAT_CD_R_GAM_E25.Next;
              end;
         end;
        FAT_CD_R_GAM_E20.Next;
      end;

      FAT_CD_R_GAM_E60.Close;
      FAT_CD_R_GAM_E60.Data :=
        FAT_CD_R_GAM_E60.DataRequest(
          VarArrayOf([rDtaIni, rDtaFin]));

      {if FAT_CD_R_GAM_E60.IsEmpty then
        exit;}

      FAT_CD_R_GAM_E60.First;
      while not FAT_CD_R_GAM_E60.Eof do
        begin
          with RegistroE060New do
            begin
              COD_MOD      := SrefCCF;
              ECF_CX       := StrToInt(trim(FAT_CD_R_GAM_E60.FieldByName('ecf_cx').AsString));
              ECF_FAB      := FAT_CD_R_GAM_E60.FieldByName('ecf_fab').AsString;
              CRO          := StrToInt(trim(FAT_CD_R_GAM_E60.FieldByName('cro').AsString));
              CRZ          := StrToInt(trim(FAT_CD_R_GAM_E60.FieldByName('crz').AsString));
              DT_DOC       := FAT_CD_R_GAM_E60.FieldByName('data_movimento').AsDateTime;
              NUM_DOC_INI  := FAT_CD_R_GAM_E60.FieldByName('num_doc_ini').AsInteger;
              NUM_DOC_FIN  := FAT_CD_R_GAM_E60.FieldByName('num_doc_fin').AsInteger;
              GT_INI       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('gt_ini').AsCurrency));;
              GT_FIN       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('gt_fin').AsCurrency));
              //VL_BRT       := StrToInt(RemoveCaracter(FAT_CD_R_GAM_E60.FieldByName('vlr_brt').AsString,[',','.']));
              VL_BRT       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_brt').AsCurrency));
              VL_CANC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_canc_icms').AsCurrency));
              VL_DESC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_desc_icms').AsCurrency));
              VL_ACMO_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_acmo_icms').AsCurrency));
              VL_OP_ISS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_op_iss').AsCurrency));
              VL_LIQ       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_liq').AsCurrency));
              VL_BC_ICMS   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_bc_icms').AsCurrency));
              VL_ICMS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_icms').AsCurrency));
              VL_ISN       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_isn').AsCurrency));
              VL_NT        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_nt').AsCurrency));
              VL_ST        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_st').AsCurrency));
              COD_INF_OBS  := '';

              FAT_CD_R_GAM_E65.Close;
              FAT_CD_R_GAM_E65.Data :=
                FAT_CD_R_GAM_E65.DataRequest(
                  VarArrayOf([FAT_CD_R_GAM_E60.FieldByName('data_movimento').Text, FAT_CD_R_GAM_E60.FieldByName('data_movimento').Text]));

              FAT_CD_R_GAM_E65.First;
              while not FAT_CD_R_GAM_E65.Eof do
                begin
                  with RegistroE065New do
                    begin
                      CFOP         := FAT_CD_R_GAM_E65.FieldByName('id_cfo').AsString;

                     // if FAT_CD_R_GAM_E65.FieldByName('aliq_icms').AsString <> '0,00' then
                        VL_BC_ICMS_P := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E65.FieldByName('vrl_bc_icms_p').AsCurrency));
                     // else
                     //   VL_BC_ICMS_P := 0;

                      ALIQ_ICMS    := strtocurr(formatcurr('#####0.00',strtocurr(FAT_CD_R_GAM_E65.FieldByName('aliq_icms').AsString)));
                      VL_ICMS_P    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E65.FieldByName('vrl_bc_icms_p').AsCurrency*
                        strtocurr(FAT_CD_R_GAM_E65.FieldByName('aliq_icms').AsString)/100));


                      if FAT_CD_R_GAM_E65.FieldByName('ind_imun').AsString <> '' then
                        IND_IMUN   := FAT_CD_R_GAM_E65.FieldByName('ind_imun').AsInteger
                      else
                        IND_IMUN   := 0;
                    end;
                  FAT_CD_R_GAM_E65.Next
                end;
             end;
          FAT_CD_R_GAM_E60.Next;
        end;

        FAT_CD_R_GAM_E80.Close;
  FAT_CD_R_GAM_E80.Data :=
    FAT_CD_R_GAM_E80.DataRequest(
      VarArrayOf([rDtaIni, rDtaFin]));

  {if FAT_CD_R_GAM_E80.IsEmpty then
    exit;}

  FAT_CD_R_GAM_E80.First;
  while not FAT_CD_R_GAM_E80.Eof do
    begin
      with RegistroE080New do
        begin
          IND_TOT      := FAT_CD_R_GAM_E80.FieldByName('int_tot').asInteger;
          COD_MOD      := SrefCCF;

          if trim(FAT_CD_R_GAM_E80.FieldByName('num_mr').AsString) <> '' then
            NUM_MR     := FAT_CD_R_GAM_E80.FieldByName('num_mr').AsInteger
          else
            NUM_MR     := 0;

          DT_DOC       := FAT_CD_R_GAM_E80.FieldByName('dt_doc').AsDateTime;
          VL_BRT       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_bruto').AsCurrency));
          VL_CANC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_cancelado').AsCurrency));
          VL_DESC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_desconto').AsCurrency));
          VL_ACMO_ICMS := 0; // perguntar a Luan;
          VL_OP_ISS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_op_iss').AsCurrency));
          COP          := FAT_CD_R_GAM_E80.FieldByName('id_classe').AsString;
          NUM_LCTO     := FAT_CD_R_GAM_E80.FieldByName('num_lcto').AsString;
          VL_CONT      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_contabil').AsCurrency));
          VL_BC_ICMS   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_bc_icms').AsCurrency));
          VL_ICMS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_icms').AsCurrency));
          VL_ISNT_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_isento').AsCurrency));
          VL_ST        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_st').AsCurrency));

          if trim(FAT_CD_R_GAM_E80.FieldByName('ind_obs').asString) <> '' then
            IND_OBS    := FAT_CD_R_GAM_E80.FieldByName('ind_obs').asInteger
          else
            IND_OBS    := 0;

          FAT_CD_R_GAM_E85.Close;
          FAT_CD_R_GAM_E85.Data :=
            FAT_CD_R_GAM_E85.DataRequest(
              VarArrayOf([FAT_CD_R_GAM_E80.FieldByName('dt_doc').Text, FAT_CD_R_GAM_E80.FieldByName('dt_doc').Text]));

          FAT_CD_R_GAM_E85.First;
          while not FAT_CD_R_GAM_E85.Eof do
            begin
              with RegistroE085New do
                begin
                  VL_CONT_P      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E85.FieldByName('vlr_contabil').AsCurrency));
                  VL_OP_ISS_P    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E85.FieldByName('vlr_op_iss_p').AsCurrency));
                  VL_BC_ICMS_P   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E85.FieldByName('vlr_bc_icms').AsCurrency));
                  if trim(FAT_CD_R_GAM_E85.FieldByName('aliquota').AsString) <> 'II' then
                    ALIQ_ICMS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E85.FieldByName('aliquota').AsCurrency))
                  else
                  ALIQ_ICMS    := 0;
                  VL_ISNT_ICMS_P := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E85.FieldByName('vlr_isento').AsCurrency));
                  VL_ST_P        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E85.FieldByName('vlr_st').AsCurrency));
                  if trim(FAT_CD_R_GAM_E85.FieldByName('ind_imun').AsString) <> '' then
                    IND_IMUN     := FAT_CD_R_GAM_E85.FieldByName('ind_imun').asInteger
                  else
                    IND_IMUN     := 0;
                end;
              FAT_CD_R_GAM_E85.Next;
            end;
        end;
      FAT_CD_R_GAM_E80.Next;
    end;

    FAT_CD_R_GAM_E100.First;
    while not FAT_CD_R_GAM_E100.Eof do
      begin;
        with RegistroE100New do
          begin
            Case FAT_CD_R_GAM_E100ind_operacao.AsInteger of
              0: IND_OPER := SefioEntrada;
              1: IND_OPER := SefioSaida;
            End;

            if trim(FAT_CD_R_GAM_E100ind_emitente.AsString) = '' then
              begin
                Showmessage('Campo ind_emitenet da NF ' + FAT_CD_R_GAM_E100numero.AsString + ' está invalido!');
              end
            else
              begin
                Case FAT_CD_R_GAM_E100ind_emitente.AsInteger of
                  0: IND_EMIT := SefiePropria;
                  1: IND_EMIT := SefieTerceiros;
                End;
              end;

            COD_PART     := RemoveCaracter(FAT_CD_R_GAM_E100cpf_cnpj.AsString,['/','.','-']);
            COD_MUN_SERV := trim(FAT_CD_R_GAM_E100id_cidade.AsString);

             Case FAT_CD_R_GAM_E100modelo.AsInteger of
              01: COD_MOD := SrefNF;
              06: COD_MOD := SrefNFEE;
              21: COD_MOD := SrefNFSC;
              22: COD_MOD := SrefNFST;
              28: COD_MOD := SrefNFGC;
              29: COD_MOD := SrefNFAC;
              55: COD_MOD := SrefNFe;
             End;

            Case FAT_CD_R_GAM_E100situacao_lancto.AsInteger of
              00: COD_SIT := SefcsEmissaonormal;
              01: COD_SIT := SefcsEmissaocontingencia;
              02: COD_SIT := SefcsEmissaocontingenciaFS;
              03: COD_SIT := SefcsEmissaocontingenciaSCAN;
              04: COD_SIT := SefcsEmissaocontingenciaDPEC;
              05: COD_SIT := SefcsEmissaocontingenciaFSDA;
              06: COD_SIT := SefcsEmissaoContingenciaSVCAN;
              07: COD_SIT := SefcsEmissaoContingenciaSVCRS;
              10: COD_SIT := SefcsEmissaoavulsa;
              20: COD_SIT := SefcsComplemento;
              25: COD_SIT := SefcsConsolidavalores;
              80: COD_SIT := SefcsAutorizadenegada;
              90: COD_SIT := SefcsOperacancelada;
              91: COD_SIT := SefcsNegociodesfeito;
              95: COD_SIT := SefcsAjusteinformacoes;
              99: COD_SIT := SefcsSemrepercussaofiscal;
            else  COD_SIT := SefcsNumerainutilizada;
            End;

            QTD_CANC     := FAT_CD_R_GAM_E100qtde_canceladas.AsInteger;
            SER          := copy(FAT_CD_R_GAM_E100serie.AsString,1,3);
            SUB          := copy(FAT_CD_R_GAM_E100sub_serie.AsString,1,2);

            if Trim(FAT_CD_R_GAM_E100cod_consolidado.AsString) <> '' then
              COD_CONS   := StrToInt(Trim(FAT_CD_R_GAM_E100cod_consolidado.AsString));

            NUM_DOC      := FAT_CD_R_GAM_E100numero.AsInteger;
            QTD_DOC      := FAT_CD_R_GAM_E100qtde_doc.AsInteger;
            DT_EMIS      := FAT_CD_R_GAM_E100dta_emissao.AsDateTime;
            DT_DOC       := FAT_CD_R_GAM_E100dta_documento.AsDateTime;
            COP          := FAT_CD_R_GAM_E100id_classe.AsString;
            NUM_LCTO     := FAT_CD_R_GAM_E100num_lancto_contabil.AsString;
            VL_CONT      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E100vlr_contabil.AsCurrency));

            if dmgeral.BUS_CD_C_PAR_CTRsef_ind_iss.AsInteger = 0 then
              VL_OP_ISS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E100vlr_iss.AsCurrency));

            if dmgeral.BUS_CD_C_PAR_CTRsef_ind_icms.AsInteger = 0 then
              begin
                VL_BC_ICMS   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E100vlr_base_icms.AsCurrency));
                VL_ICMS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E100vlr_icms.AsCurrency));
                VL_ICMS_ST   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E100vlr_icms_subst.AsCurrency));
                VL_OUT_ICMS  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E100vlr_outras.AsCurrency));
              end;

              VL_ISNT_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E100vlr_isenta.AsCurrency));
              COD_INF_OBS  := '';

            FAT_CD_R_GAM_E105.Close;
            FAT_CD_R_GAM_E105.Data :=
              FAT_CD_R_GAM_E105.DataRequest(
                VarArrayOf([xEmpresa,FAT_CD_R_GAM_E100dta_documento.AsString, FAT_CD_R_GAM_E100dta_documento.AsString]));

             FAT_CD_R_GAM_E105.First;
             while not FAT_CD_R_GAM_E105.Eof do
              begin
                if FAT_CD_R_GAM_E105id_fiscal.AsInteger = FAT_CD_R_GAM_E100id_fiscal.AsInteger then
                  begin
                     with RegistroE105New do
                      begin
                        VL_CONT_P      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105vlr_mercadoria.AsCurrency));

                        if dmgeral.BUS_CD_C_PAR_CTRsef_ind_iss.AsInteger = 0 then
                          VL_OP_ISS_P  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105vlr_iss.AsCurrency));

                        CFOP := FAT_CD_R_GAM_E105id_cfo.AsString;

                        if dmgeral.BUS_CD_C_PAR_CTRsef_ind_icms.AsInteger = 0 then
                          begin
                            VL_BC_ICMS_P   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105vlr_base_icms.AsCurrency));
                            ALIQ_ICMS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105aliq_icm.AsCurrency));
                            VL_ICMS_P      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105vlr_icms.AsCurrency));
                            VL_ICMS_ST_P   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105vlr_icms_subst.AsCurrency));
                            VL_OUT_ICMS_P  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105vlr_outras.AsCurrency));
                          end;

                        VL_ISNT_ICMS_P := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105vlr_isenta.AsCurrency));
                        IND_PETR := FAT_CD_R_GAM_E105ind_petr.AsInteger;
                      end;
                  end;
                FAT_CD_R_GAM_E105.Next;
              end;
          end;
          FAT_CD_R_GAM_E100.Next;
      end;




      //GerarArq20;
      //GerarArq60;
      //GerarArq80;
      //GerarArq100;

      FAT_CD_R_GAM_E120.First;
      while not FAT_CD_R_GAM_E120.Eof do
        begin

          wRegistroE120:= ACBrSEF2.Bloco_E.RegistroE120New;

          with wRegistroE120 do
            begin
              Case FAT_CD_R_GAM_E120ind_operacao.AsInteger of
                0: IND_OPER := SefioEntrada;
                1: IND_OPER := SefioSaida;
              End;

              Case FAT_CD_R_GAM_E120ind_emitente.AsInteger of
                0: IND_EMIT := SefiePropria;
                1: IND_EMIT := SefieTerceiros;
              End;

              COD_PART     := RemoveCaracter(FAT_CD_R_GAM_E120cpf_cnpj.AsString,['/','.','-']);
              { TODO 1 -oMariel -cValidação :
                Independente do COD_MUN_SERV que eu passo no bloco "E120" ao gerar o arquivo SEF ele é
                preenchido com o codigo "27129034', deve ser  alguma coisa do componente ACBRSEF. }
              COD_MUN_SERV := (FAT_CD_R_GAM_E120id_cidade.Asinteger);

              Case FAT_CD_R_GAM_E120modelo.AsInteger of
                07: COD_MOD := SrefNFTR;
                08: COD_MOD := SrefCTRC;
                09: COD_MOD := SrefCTAQ;
                10: COD_MOD := SrefCTAR;
                11: COD_MOD := SrefCTFC;
                18: COD_MOD := SrefRMD;
                26: COD_MOD := SrefCTMC;
                27: COD_MOD := SrefNFTF;
                57: COD_MOD := SrefCTe;
              End;

              Case FAT_CD_R_GAM_E120situacao_lancto.AsInteger of
                00: COD_SIT := SefcsEmissaonormal;
                01: COD_SIT := SefcsEmissaocontingencia;
                02: COD_SIT := SefcsEmissaocontingenciaFS;
                03: COD_SIT := SefcsEmissaocontingenciaSCAN;
                04: COD_SIT := SefcsEmissaocontingenciaDPEC;
                05: COD_SIT := SefcsEmissaocontingenciaFSDA;
                06: COD_SIT := SefcsEmissaoContingenciaSVCAN;
                07: COD_SIT := SefcsEmissaoContingenciaSVCRS;
                10: COD_SIT := SefcsEmissaoavulsa;
                20: COD_SIT := SefcsComplemento;
                25: COD_SIT := SefcsConsolidavalores;
                80: COD_SIT := SefcsAutorizadenegada;
                90: COD_SIT := SefcsOperacancelada;
                91: COD_SIT := SefcsNegociodesfeito;
                95: COD_SIT := SefcsAjusteinformacoes;
                99: COD_SIT := SefcsSemrepercussaofiscal;
              else  COD_SIT := SefcsNumerainutilizada;
              End;

              SER          := copy(FAT_CD_R_GAM_E120serie.AsString,1,3);
              SUB          := StrToInt(trim(copy(FAT_CD_R_GAM_E120sub_serie.AsString,1,2)));
              NUM_DOC      := FAT_CD_R_GAM_E120numero.AsInteger;

              if FAT_CD_R_GAM_C20nfe_chave.AsString = '' then // gerador de chave NFE, CHV;
                begin
                  CHV_CTE :=  MontaCheveNfe(copy( dmgeral.BUS_CD_C_PARid_cidade.AsString,1,2),
                              FAT_CD_R_GAM_E120dta_emissao.Value,dmgeral.BUS_CD_C_PARemp_cnpj.AsString,trim(FAT_CD_R_GAM_E120modelo.AsString),trim(FAT_CD_R_GAM_E120serie.AsString),
                              strtoint(trim(FAT_CD_R_GAM_E120numero.AsString)),strtoint(trim(FAT_CD_R_GAM_E120numero.AsString)),'1');
                end
              else
                begin
                  CHV_CTE := FAT_CD_R_GAM_E120nfe_chave.AsString;
                end;

              DT_EMIS      := FAT_CD_R_GAM_E120dta_emissao.AsDateTime;
              DT_DOC       := FAT_CD_R_GAM_E120dta_documento.AsDateTime;
              COP          := FAT_CD_R_GAM_E120id_classe.AsString;
              NUM_LCTO     := FAT_CD_R_GAM_E120num_lancto_contabil.AsString;

              Case FAT_CD_R_GAM_E120ind_pagamento.AsInteger of
                0: IND_PGTO     := SefipAVista;
                1: IND_PGTO     := SefAPrazo;
                2: IND_PGTO     := SefNaoOnerada;
              else IND_PGTO     := SefNenhum;
              End;

              VL_CONT      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E120vlr_contabil.AsCurrency));
              CFOP         := StrToInt(trim(FAT_CD_R_GAM_E120id_cfo.AsString));

              if dmgeral.BUS_CD_C_PAR_CTRsef_ind_icms.AsInteger = 0 then
                begin
                  VL_BC_ICMS   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E120vlr_base_icms.AsCurrency));
                  AL_ICMS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E120alq_icms.AsCurrency));
                  VL_ICMS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E120vlr_icms.AsCurrency));
                  VL_ICMS_ST   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E120vlr_icms_subst.AsCurrency));
                  VL_OUT_ICMS  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E120vlr_outras.AsCurrency));
                end;

                VL_ISNT_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E120vlr_isenta.AsCurrency));
                COD_INF_OBS  := '';
            end;
            FAT_CD_R_GAM_E120.Next;
        end;



      FAT_CD_R_GAM_E_A_305.Close;
        FAT_CD_R_GAM_E_A_305.Data :=
          FAT_CD_R_GAM_E_A_305.DataRequest(
            VarArrayOf([xEmpresa,rDtaIni,rDtaFin]));

      FAT_CD_R_GAM_E_B_305.Close;
         FAT_CD_R_GAM_E_B_305.Data :=
           FAT_CD_R_GAM_E_B_305.DataRequest(
            VarArrayOf([xEmpresa,rDtaIni,rDtaFin]));

      FAT_CD_R_GAM_E_C_305.Close;
          FAT_CD_R_GAM_E_C_305.Data :=
             FAT_CD_R_GAM_E_C_305.DataRequest(
                VarArrayOf([xEmpresa,rDtaIni,rDtaFin]));

      if not (FAT_CD_R_GAM_E_A_305.IsEmpty) then
         begin
            with RegistroE300New do
               begin
                 DT_INI :=  strtodate( rDtaIni );
                 DT_FIN :=  strtodate( rDtaFin );
               end;
            while not (FAT_CD_R_GAM_E_A_305.eof) do
                begin
                  with RegistroE305New do
                     begin
                        IND_MRO   := FAT_CD_R_GAM_E_A_305ind_mro.AsInteger;
                        IND_OPER  := FAT_CD_R_GAM_E_A_305ind_ope.AsInteger;
                        DT_DOC    := FAT_CD_R_GAM_E_A_305dt_doc.AsDateTime;
                        COP       := FAT_CD_R_GAM_E_A_305cop.AsString;
                        NUM_LCTO  := FAT_CD_R_GAM_E_A_305num_lcto.AsString;
                        QTD_LCTO  := FAT_CD_R_GAM_E_A_305qtd_lcto.AsInteger;
                        VL_CONT   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_A_305vl_cont.AsCurrency));
                        VL_OP_ISS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_A_305vlr_op_iss.AsCurrency));
                        VL_BC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_A_305vl_bc_icms.AsCurrency));
                        VL_ICMS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_A_305vl_icms.AsCurrency));
                        VL_ICMS_ST := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_A_305vl_icms_st.AsCurrency));
                        VL_ST_ENT  := 0; //FAT_CD_R_GAM_E_A_305vl_st_ent.AsString;
                        VL_ST_FNT  := 0; //FAT_CD_R_GAM_E_A_305vl_st_fnt.AsString;
                        VL_ST_UF   := 0; //FAT_CD_R_GAM_E_A_305vl_st_uf.AsString;
                        VL_ST_OE   := 0; //FAT_CD_R_GAM_E_A_305vl_st_oe.AsString;
                        VL_AT      := 0; //FAT_CD_R_GAM_E_A_305vl_at.AsString;
                        VL_ISNT_ICMS  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_A_305vl_isnt_icms.AsCurrency));
                        VL_OUT_ICMS   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_A_305vl_out_icms.AsCurrency));
                        VL_BC_IPI     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_A_305vl_bc_ipi.AsCurrency));
                        VL_IPI        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_A_305vl_ipi.AsCurrency));
                        VL_ISNT_IPI   := 0; //strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_A_305vl_isnt_ipi.AsCurrency));
                        VL_OUT_IPI    := 0; //strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_A_305vl_out_ipi.AsCurrency));
                     end;
                  FAT_CD_R_GAM_E_A_305.Next;
                end;

            while not (FAT_CD_R_GAM_E_B_305.eof) do
                begin
                  with RegistroE305New do
                     begin
                        IND_MRO   := FAT_CD_R_GAM_E_B_305ind_mro.AsInteger;
                        IND_OPER  := FAT_CD_R_GAM_E_B_305ind_ope.AsInteger;
                        //DT_DOC    := ''; //FAT_CD_R_GAM_E_B_305dt_doc.AsDateTime;
                        COP       := FAT_CD_R_GAM_E_B_305cop.AsString;
                        NUM_LCTO  := FAT_CD_R_GAM_E_B_305num_lcto.AsString;
                        QTD_LCTO  := FAT_CD_R_GAM_E_B_305qtd_lcto.AsInteger;
                        VL_CONT   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_B_305vl_cont.AsCurrency));
                        VL_OP_ISS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_A_305vlr_op_iss.AsCurrency));
                        VL_BC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_B_305vl_bc_icms.AsCurrency));
                        VL_ICMS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_B_305vl_icms.AsCurrency));
                        VL_ICMS_ST := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_B_305vl_icms_st.AsCurrency));
                        VL_ST_ENT  := 0; //FAT_CD_R_GAM_E_B_305vl_st_ent.AsString;
                        VL_ST_FNT  := 0; //FAT_CD_R_GAM_E_B_305vl_st_fnt.AsString;
                        VL_ST_UF   := 0; //FAT_CD_R_GAM_E_B_305vl_st_uf.AsString;
                        VL_ST_OE   := 0; //FAT_CD_R_GAM_E_B_305vl_st_oe.AsString;
                        VL_AT      := 0; //FAT_CD_R_GAM_E_B_305vl_at.AsString;
                        VL_ISNT_ICMS  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_B_305vl_isnt_icms.AsCurrency));
                        VL_OUT_ICMS   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_B_305vl_out_icms.AsCurrency));
                        VL_BC_IPI     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_B_305vl_bc_ipi.AsCurrency));
                        VL_IPI        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_B_305vl_ipi.AsCurrency));
                        VL_ISNT_IPI   := 0; //strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_B_305vl_isnt_ipi.AsCurrency));
                        VL_OUT_IPI    := 0; //strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_B_305vl_out_ipi.AsCurrency));
                     end;
                  FAT_CD_R_GAM_E_B_305.Next;
                end;

             while not (FAT_CD_R_GAM_E_C_305.eof) do
                begin
                  with RegistroE305New do
                     begin
                        IND_MRO   := FAT_CD_R_GAM_E_C_305ind_mro.AsInteger;
                        IND_OPER  := FAT_CD_R_GAM_E_C_305ind_ope.AsInteger;
                        DT_DOC    := FAT_CD_R_GAM_E_C_305dt_doc.AsDateTime;
                        COP       := ''; //FAT_CD_R_GAM_E_C_305cop.AsString;
                        NUM_LCTO  := FAT_CD_R_GAM_E_C_305num_lcto.AsString;
                        QTD_LCTO  := FAT_CD_R_GAM_E_C_305qtd_lcto.AsInteger;
                        VL_CONT   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_C_305vl_cont.AsCurrency));
                        VL_OP_ISS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_A_305vlr_op_iss.AsCurrency));
                        VL_BC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_C_305vl_bc_icms.AsCurrency));
                        VL_ICMS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_C_305vl_icms.AsCurrency));
                        VL_ICMS_ST := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_C_305vl_icms_st.AsCurrency));
                        VL_ST_ENT  := 0; //FAT_CD_R_GAM_E_C_305vl_st_ent.AsString;
                        VL_ST_FNT  := 0; //FAT_CD_R_GAM_E_C_305vl_st_fnt.AsString;
                        VL_ST_UF   := 0; //FAT_CD_R_GAM_E_C_305vl_st_uf.AsString;
                        VL_ST_OE   := 0; //FAT_CD_R_GAM_E_C_305vl_st_oe.AsString;
                        VL_AT      := 0; //FAT_CD_R_GAM_E_C_305vl_at.AsString;
                        VL_ISNT_ICMS  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_C_305vl_isnt_icms.AsCurrency));
                        VL_OUT_ICMS   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_C_305vl_out_icms.AsCurrency));
                        VL_BC_IPI     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_C_305vl_bc_ipi.AsCurrency));
                        VL_IPI        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_C_305vl_ipi.AsCurrency));
                        VL_ISNT_IPI   := 0; //strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_C_305vl_isnt_ipi.AsCurrency));
                        VL_OUT_IPI    := 0; //strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E_C_305vl_out_ipi.AsCurrency));
                     end;
                  FAT_CD_R_GAM_E_C_305.Next;
                end;
         end;
  end;

  ACBrSEF2.WriteBloco_E;
  ACBrSEF2.SaveFileTXT;
  ShowMessage('"SEF" gerado com Sucesso!');
end;

procedure TFAT_FM_M_GAM.btnSintegraClick(Sender: TObject);
begin
  Application.CreateForm(TFAT_FM_M_SIN,FAT_FM_M_SIN);
  FAT_FM_M_SIN.showmodal;
  FAT_FM_M_SIN.free;
end;

procedure TFAT_FM_M_GAM.btnSpedFiscalClick(Sender: TObject);
var
I,T: integer;
xEmpresa,yEmpresa: string;
begin
  TestarParametros('Sped Fiscal');
  rValor_tot_deb_E110 := 0;

  //Empresas
  xEmpresa := '';
  FAT_CD_X_GAM_150.Close;
  FAT_CD_X_GAM_150.CreateDataSet;

  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          yEmpresa := trim(copy(ClbEmpresa.Items[I],1,1));
          if xEmpresa <> '' then
           begin
             xEmpresa :=
             xEmpresa + ',' +''''+trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
          if xEmpresa = '' then
           begin
             xEmpresa :=
             xEmpresa +''''+ trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
        end;
    end;

  T := 0;
  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          T := T + 1;
        end;
    end;
  if T > 1 then
    begin
      ShowMessage('Deve ser selecionada apenas "uma" empresa.');
      abort;
    end;
  Screen.Cursor := crHourGlass;
  try

  TestarData;

  FAT_CD_R_GAM_190.Close;
  FAT_CD_R_GAM_190.Data:=
    FAT_CD_R_GAM_190.DataRequest(
      VarArrayOf([xEmpresa,rDtaIni, rDtaFin,'''00''',0]));

  FAT_CD_R_GAM_200.Close;
      FAT_CD_R_GAM_200.Data :=
        FAT_CD_R_GAM_200.DataRequest(
          VarArrayOf([1,zEmpresa,rDtaIni, rDtaFin,'''00''']));

  FAT_CD_R_GAM_H30.Close;
        FAT_CD_R_GAM_H30.Data :=
          FAT_CD_R_GAM_H30.DataRequest(
            VarArrayOf([-1,'01/01/0001']));

  if dtaInventario.Text <> '  /  /    ' then
     begin
        if not (TestarCamposInv) then
           exit;

        FAT_CD_R_GAM_H30.Close;
        FAT_CD_R_GAM_H30.Data :=
          FAT_CD_R_GAM_H30.DataRequest(
            VarArrayOf([xEmpresa,dtaInventario.Text]));
     end;



  TipoArq := 3;

  DefinirPath;

  SpedFiscal_0;
  SpedFiscal_C;
  SpedFiscal_D;
  SpedFiscal_E;

  if dtaInventario.Text <> '  /  /    ' then
    SpedFiscal_H;   // Mariel: Vai ser feito em Março/2016

  Spedfiscal_K;

  ACBrSPEDFiscal1.SaveFileTXT;
  finally
     Screen.Cursor := crDefault;
  end;
  ShowMessage('Sped Fiscal gerado com Sucesso!');
end;

procedure TFAT_FM_M_GAM.btnSpedPisCofinsClick(Sender: TObject);
var
xEmpresa,yEmpresa: string;
I: integer;
begin
  TestarParametros('Sped Contribuições');
  //Empresas
  xEmpresa := '';
  FAT_CD_X_GAM_150.Close;
  FAT_CD_X_GAM_150.CreateDataSet;

  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          yEmpresa := trim(copy(ClbEmpresa.Items[I],1,1));
          if xEmpresa <> '' then
           begin
             xEmpresa :=
             xEmpresa + ',' +''''+trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
          if xEmpresa = '' then
           begin
             xEmpresa :=
             xEmpresa +''''+ trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
        end;
    end;
  TestarData;

  FAT_CD_R_GAM_190.Close;
  FAT_CD_R_GAM_190.Data:=
    FAT_CD_R_GAM_190.DataRequest(
      VarArrayOf([xEmpresa,rDtaIni, rDtaFin,'''00''',1]));

  FAT_CD_R_GAM_200.Close;
      FAT_CD_R_GAM_200.Data :=
        FAT_CD_R_GAM_200.DataRequest(
          VarArrayOf([0,zEmpresa,rDtaIni, rDtaFin,'''00''']));

  TipoArq := 4;
  DefinirPath;

  cdsM400.EmptyDataSet;
  cdsM410.EmptyDataSet;

  SpedPisCofins_0;
  SpedPisCofins_A;
  SpedPisCofins_C;
  SpedPisCofins_D;
  SpedPisCofins_M;

  ACBrSPEDPisCofins1.SaveFileTXT;
  ShowMessage('Sped Contribuições gerado com Sucesso!');
end;

procedure TFAT_FM_M_GAM.BuscarItens0200;
begin

end;

procedure TFAT_FM_M_GAM.Button1Click(Sender: TObject);
var
retorno,cont:integer;
begin
  if ((dtaInicial.Text = '  /  /    ') or (dtaFinal.Text = '  /  /    ')) then
    begin
       showmessage('.O período deve ser preenchido.');
       exit;
    end
  else
    begin
      if (dtaInicial.Date >  dtaInicial.Date) then
        begin
           showmessage('.Data inicial não pode ser maior que a data final');
           exit;
        end;
    end;


  FAT_CD_R_NFE_CHV_VAZ.Close; // Esaú: para notas modelo '55' e tipo_nf 'S' (saida) com nfe_chave vazio;
  FAT_CD_R_NFE_CHV_VAZ.Data := FAT_CD_R_NFE_CHV_VAZ.DataRequest(VarArrayOf([dtaInicial.Text,dtaFinal.Text]));

  while not FAT_CD_R_NFE_CHV_VAZ.IsEmpty do
    begin
      dmgeral.BUS_CD_C_PAR.Close;
      dmgeral.BUS_CD_C_PAR.Data := dmgeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([0,FAT_CD_R_NFE_CHV_VAZid_empresa.Text]));

      FAT_CD_R_NFE_CHV_VAZ.Edit;

      FAT_CD_R_NFE_CHV_VAZnfe_chave.AsString := MontaCheveNfe(copy( dmgeral.BUS_CD_C_PARid_cidade.AsString,1,2),
        FAT_CD_R_NFE_CHV_VAZdta_emissao.Value,dmgeral.BUS_CD_C_PARemp_cnpj.AsString,'55',trim(FAT_CD_R_NFE_CHV_VAZserie.AsString),
        strtoint(trim(FAT_CD_R_NFE_CHV_VAZnumero.AsString)),strtoint(trim(FAT_CD_R_NFE_CHV_VAZnumero.AsString)),'1');

      try
        FAT_CD_R_NFE_CHV_VAZ.Post;
        try
           retorno := FAT_CD_R_NFE_CHV_VAZ.ApplyUpdates(0);
        {if retorno = 0 then
           begin
             FAT_CD_R_NFE_CHV_VAZ.Close;
             FAT_CD_R_NFE_CHV_VAZ.Open;
             Showmessage('Gravação realizada com sucesso.');
           end}
        finally
          if retorno <> 0 then
             FAT_CD_R_NFE_CHV_VAZ.edit;
        end;
      except
        on e:EReconcileError do
          begin
            showmessage(e.Message);
          end;
      end;

      FAT_CD_R_NFE_CHV_VAZ.Close;
      FAT_CD_R_NFE_CHV_VAZ.Data := FAT_CD_R_NFE_CHV_VAZ.DataRequest(VarArrayOf([dtaInicial.Text,dtaFinal.Text]));

      Cont := FAT_CD_R_NFE_CHV_VAZ.RecordCount;
    end;
  showmessage('Chave fiscais geradas com sucesso!');
end;

procedure TFAT_FM_M_GAM.ClbEmpresaClick(Sender: TObject);
begin
  dmGeral.BUS_CD_M_NFE.Close;
end;

procedure TFAT_FM_M_GAM.DefinirPath;
var
  wPathCompleto: String;
begin
  if not DirectoryExists(ExtractFilePath(Application.ExeName)+'Emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\Arquivos\') then
            ForceDirectories(ExtractFilePath(Application.ExeName)+'Emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\Arquivos\');

   wPathCompleto:= ExtractFilePath(Application.ExeName)+'Emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\Arquivos\';
   Case TipoArq of
     0: ACBrSEF2.Path           := ExtractFilePath(wPathCompleto);
     1: ACBrSEF2.Path           := ExtractFilePath(wPathCompleto);
     2: ACBrSEF2.Path           := ExtractFilePath(wPathCompleto);
     3: ACBrSPEDFiscal1.Path    := ExtractFilePath(wPathCompleto);
     4: ACBrSPEDPisCofins1.Path := ExtractFilePath(wPathCompleto);
     5: ACBrDeSTDA1.Path        := ExtractFilePath(wPathCompleto);
   end;

   Case TipoArq of
     0: ACBrSEF2.Arquivo := 'sef2.txt';
     1: ACBrSEF2.Arquivo := 'eDoc.txt';
     2: ACBrSEF2.Arquivo := 'inv.txt';
     3: ACBrSPEDFiscal1.Arquivo := 'SpedFiscal.txt';
     4: ACBrSPEDPisCofins1.Arquivo := 'SpedPisCofins.txt';
     5: ACBrDeSTDA1.Arquivo := 'DeSTDA.txt'
   End;
end;

procedure TFAT_FM_M_GAM.DeSTDA_0;
VAR
wIndiceOpcao: Integer;
begin
  ACBrDeSTDA1.DT_INI := dtainicial.Date;
  ACBrDeSTDA1.DT_FIN := dtafinal.Date;

  with ACBrDeSTDA1.Bloco_0 do
    begin
      with Registro0000New do
        begin
          DT_INI    := dtainicial.Date;
          DT_FIN    := dtafinal.Date;
          NOME_EMPR := dmgeral.BUS_CD_C_PARemp_razao.AsString;
          CNPJ      := RemoveCaracter(dmgeral.BUS_CD_C_PARemp_cnpj.AsString,['/','.','-']);
          UF        := dmgeral.BUS_CD_C_PARint_uf.AsString;

          if (UpperCase(dmgeral.BUS_CD_C_PARemp_ie.AsString) = 'ISENTO') or (dmgeral.BUS_CD_C_PARemp_ie.AsString = '') then
            IE := ''
          else
            begin
              if Length (RemoveCaracter(Trim(dmgeral.BUS_CD_C_PARemp_ie.AsString),['-','.','/'])) < 9 then
                IE := '0' + RemoveCaracter(Trim(dmgeral.BUS_CD_C_PARemp_ie.AsString),['-','.','/'])
              else
                IE := RemoveCaracter(Trim(dmgeral.BUS_CD_C_PARemp_ie.AsString),['-','.','/']);
            end;

          COD_MUN  := StrToInt(trim(dmgeral.BUS_CD_C_PARid_cidade.AsString));

          if dmgeral.BUS_CD_C_PARemp_im.AsString = 'ISENTO' then
            IM := ''
          else
            IM := dmgeral.BUS_CD_C_PARemp_im.AsString;

          VAZIO1   := '';
          SUFRAMA  := dmgeral.BUS_CD_C_PARemp_suframa.AsString;
          COD_VER  := vlVersao2000;

          case dmgeral.BUS_CD_C_PAR_CTRdes_cod_fin.AsInteger of
            0: COD_FIN  := raOriginal;
            1: COD_FIN  := raSubstituto;
          end;

          COD_CTD  := cn30;
          PAIS     := 'Brasil';
          FANTASIA := dmgeral.BUS_CD_C_PARemp_fantasia.AsString;
          NIRE     := dmgeral.BUS_CD_C_PARemp_numero_junta.AsString;
          //CPF      := '';
          VAZIO2   := '';
        end;

      with Registro0001New do
        begin
          IND_MOV := imComDados;

          with Registro0005New do
            begin
              NOME_RESP := dmgeral.BUS_CD_C_PARres_nome.AsString;

              Case DmGeral.BUS_CD_C_PARres_qualificacao.AsInteger of
                    203: COD_ASSIN := asDiretor;
                    204: COD_ASSIN := asConsAdm;
                    205: COD_ASSIN := asAdministrador;
                    206: COD_ASSIN := asAdmGrupo;
                    207: COD_ASSIN := asAdmSocFiliada;
                    220: COD_ASSIN := asAdmJudicialPF;
                    222: COD_ASSIN := asAdmJudicialPJPR;
                    223: COD_ASSIN := asAdmJudicialGestor;
                    226: COD_ASSIN := asGestorJudicial;
                    309: COD_ASSIN := asProcurador;
                    312: COD_ASSIN := asInventariante;
                    313: COD_ASSIN := asLiquidante;
                    315: COD_ASSIN := asInterventor;
                    801: COD_ASSIN := asEmpresario;
                    900: COD_ASSIN := asContador;
              else   COD_ASSIN := asOutros;
              End;

              CPF_RESP  := RemoveCaracter(dmgeral.BUS_CD_C_PARres_cpf.AsString,['/','.','-']);
              CEP       := dmgeral.BUS_CD_C_PARres_cep.AsString;
              ENDR      := dmgeral.BUS_CD_C_PARres_endereco.AsString;
              NUM       := dmgeral.BUS_CD_C_PARres_numero.AsString;
              COMPL     := dmgeral.BUS_CD_C_PARres_complemento.AsString;
              BAIRRO    := dmgeral.BUS_CD_C_PARres_cep.AsString;
              CEP_CP    := '';

              if dmgeral.BUS_CD_C_PARres_cp.AsString <> '' then
                CP      := dmgeral.BUS_CD_C_PARres_cp.AsInteger;

              FONE      := RemoveCaracter(dmgeral.BUS_CD_C_PARres_telefone.AsString,['(',')','-']);
              FAX       := dmgeral.BUS_CD_C_PARres_fax.AsString;
              EMAIL     := dmgeral.BUS_CD_C_PARres_email.AsString;
            end;

          with Registro0030New do
            begin
              case dmgeral.BUS_CD_C_PAR_CTRdes_ind_ed.AsInteger of
                 0: IND_ED := edDigitacao;
                 1: IND_ED := edImportacaoArquivo;
                 2: IND_ED := edAdicaoDoc_ArqTexto;
                 3: IND_ED := edExportArquivo;
              end;

              IND_ARQ := dcGuiasInfEconFisc;

              case dmgeral.BUS_CD_C_PAR_CTRdes_prf_iss.AsInteger of
                0: PRF_ISS  := exISSSimplificado;
                2: PRF_ISS  := exISSIntegral;
                9: PRF_ISS  := exISSNaoObrigado;
              end;

              case dmgeral.BUS_CD_C_PAR_CTRdes_prf_icms.AsInteger of
                0: PRF_ICMS  := exICMSSimplificado;
                1: PRF_ICMS  := exICMSIntermediario;
                2: PRF_ICMS  := exICMSIntegral;
                9: PRF_ICMS  := exICMSNaoObrigado;
              end;

              if dmgeral.BUS_CD_C_PAR_CTRdes_prf_ridf.AsInteger = 0 then
                 PRF_RIDF :=  snSim
              else
                 PRF_RIDF :=  snNao;

              if dmgeral.BUS_CD_C_PAR_CTRdes_prf_rudf.AsInteger = 0 then
                 PRF_RUDF :=  snSim
              else
                 PRF_RUDF :=  snNao;

              if dmgeral.BUS_CD_C_PAR_CTRdes_prf_lcm.AsInteger = 0 then
                 PRF_LMC :=  snSim
              else
                 PRF_LMC :=  snNao;

              if dmgeral.BUS_CD_C_PAR_CTRdes_prf_rv.AsInteger = 0 then
                 PRF_RV :=  snSim
              else
                 PRF_RV :=  snNao;

              if dmgeral.BUS_CD_C_PAR_CTRdes_prf_ri.AsInteger = 0 then
                 PRF_RI :=  snSim
              else
                 PRF_RI :=  snNao;

              case dmgeral.BUS_CD_C_PAR_CTRdes_ind_ec.AsInteger of
                 1: IND_EC := ecCompletaEmArquivoDig;
                 2: IND_EC := ecCompletaRegistradaPapel;
                 3: IND_EC := ecSimplificadaEmArquivoDig;
                 4: IND_EC := ecLivroCaixaArquivoDig;
                 5: IND_EC := ecLivroCaixaRegistradoPapel;
                 9: IND_EC := ecNaoObrigado;
              end;

              if dmgeral.BUS_CD_C_PAR_CTRdes_ind_iss.AsInteger = 0 then
                 IND_ISS :=  snSim
              else
                 IND_ISS :=  snNao;

              if dmgeral.BUS_CD_C_PAR_CTRdes_ind_rt.AsInteger = 0 then
                 IND_RT :=  snSim
              else
                 IND_RT :=  snNao;

              if dmgeral.BUS_CD_C_PAR_CTRdes_ind_icms.AsInteger = 0 then
                 IND_ICMS :=  snSim
              else
                 IND_ICMS :=  snNao;

              if dmgeral.BUS_CD_C_PAR_CTRdes_ind_st.AsInteger = 0 then
                 IND_ST :=  snSim
              else
                 IND_ST :=  snNao;

              if dmgeral.BUS_CD_C_PAR_CTRdes_ind_at.AsInteger = 0 then
                 IND_AT :=  snSim
              else
                 IND_AT :=  snNao;

              if dmgeral.BUS_CD_C_PAR_CTRdes_ind_ipi.AsInteger = 0 then
                 IND_IPI :=  snSim
              else
                 IND_IPI :=  snNao;

              if dmgeral.BUS_CD_C_PAR_CTRdes_ind_pi.AsInteger = 0 then
                 IND_RI :=  snSim
              else
                 IND_RI :=  snNao;
            end;

          with Registro0100New do
            begin
              NOME := dmgeral.BUS_CD_C_PARcnt_nome.AsString;

              case dmgeral.BUS_CD_C_PARcnt_qualificacao.AsInteger of
                203: COD_ASSIN := asDiretor;
                204: COD_ASSIN := asConsAdm;
                205: COD_ASSIN := asAdministrador;
                206: COD_ASSIN := asAdmGrupo;
                207: COD_ASSIN := asAdmSocFiliada;
                220: COD_ASSIN := asAdmJudicialPF;
                222: COD_ASSIN := asAdmJudicialPJPR;
                223: COD_ASSIN := asAdmJudicialGestor;
                226: COD_ASSIN := asGestorJudicial;
                309: COD_ASSIN := asProcurador;
                312: COD_ASSIN := asInventariante;
                313: COD_ASSIN := asLiquidante;
                315: COD_ASSIN := asInterventor;
                801: COD_ASSIN := asEmpresario;
                900: COD_ASSIN := asContador;
              else   COD_ASSIN := asOutros;
              end;

              CNPJ := dmgeral.BUS_CD_C_PARcnt_cnpj.AsString;
              CPF := dmgeral.BUS_CD_C_PARcnt_cpf.AsString;
              CRC := dmgeral.BUS_CD_C_PARcnt_crc.AsString;
              CEP := dmgeral.BUS_CD_C_PARcnt_cep.AsString;
              ENDR := dmgeral.BUS_CD_C_PARcnt_endereco.AsString;
              NUM := dmgeral.BUS_CD_C_PARcnt_numero.AsString;
              COMPL := dmgeral.BUS_CD_C_PARcnt_complemento.AsString;
              BAIRRO := dmgeral.BUS_CD_C_PARcnt_bairro.AsString;
              UF := dmgeral.BUS_CD_C_PARint_uf.AsString;
              COD_MUN := Vazio(dmgeral.BUS_CD_C_PAR,'cnt_id_cidade');
              CEP_CP := '';

              if dmgeral.BUS_CD_C_PARcnt_cp.AsString <> '' then
              CP := dmgeral.BUS_CD_C_PARcnt_cp.AsInteger;

              FONE := dmgeral.BUS_CD_C_PARcnt_telefone.AsString;
              FAX := dmgeral.BUS_CD_C_PARcnt_fax.AsString;
              EMAIL := dmgeral.BUS_CD_C_PARcnt_email.AsString;
            end;
        end;
    end;
end;

procedure TFAT_FM_M_GAM.DeSTDA_9;
begin
  with ACBrDeSTDA1.Bloco_9 do
    begin
      with Registro9001 do
        begin
        //  IND_MOV :='';

          with Registro9020New do
            begin
              LEIAUTE := laLFPD;
              ARQ_DT_INI := dtainicial.Date;
              ARQ_DT_FIN := dtafinal.Date;
              ARQ_NOME_EMPR := dmgeral.BUS_CD_C_PARemp_razao.AsString;
              ARQ_CNPJ := dmgeral.BUS_CD_C_PARemp_cnpj.AsString;
              ARQ_UF := dmgeral.BUS_CD_C_PARint_uf.AsString;

              if (uppercase(dmgeral.BUS_CD_C_PARemp_ie.AsString) = 'ISENTO') or (dmgeral.BUS_CD_C_PARemp_ie.AsString = '') then
                ARQ_IE := ''
              else
                ARQ_IE := RemoveCaracter(Trim(dmgeral.BUS_CD_C_PARemp_ie.AsString),['-','.','/']);

              ARQ_COD_MUN := StrToInt(trim(dmgeral.BUS_CD_C_PARid_cidade.AsString));

              if dmgeral.BUS_CD_C_PARemp_im.AsString = 'ISENTO' then
                ARQ_IM := ''
              else
                ARQ_IM := dmgeral.BUS_CD_C_PARemp_im.AsString;

              VAZIO := '';
              ARQ_SUFRAMA := dmgeral.BUS_CD_C_PARemp_suframa.AsString;
              ARQ_COD_VER := '';
              ARQ_COD_FIN := '';
              ARQ_COD_CTD := '';
              ARQ_PAIS := 'Brasil';
              ARQ_CPF :='';
              ARQ_FANTASIA := dmgeral.BUS_CD_C_PARemp_fantasia.AsString;
              ARQ_QTD_LIN := 0;
              ARQ_NOME := '';
              ASS_HASH :=''
            end;

          with Registro9030New do
            begin
              ARQ_QTD_LIN_BLC := 0;
            end;
        end;
    end;
end;

procedure TFAT_FM_M_GAM.DeSTDA_G;
begin
  with ACBrDeSTDA1.Bloco_G do
    begin
      with RegistroG001New do
        begin
          IND_MOV := imComDados;

          with RegistroG020New do
            begin
              Case DmGeral.BUS_CD_C_PAR_CTRdes_ind_gef.AsInteger of
                0: IND_GEF := igISS;
                1: IND_GEF := igICMS;
                2: IND_GEF := igSimples;
                8: IND_GEF := igRecalcICMS;
              else IND_GEF := igGuiaSemDados;
              End;

              DT_INI    := dtainicial.Date;
              DT_FIN    := dtafinal.Date;
              End;

          FAT_CD_R_GAM_G600.First;
          while not FAT_CD_R_GAM_G600.Eof do
            begin
              with RegistroG600New do
                begin
                  VL_TOT_NF := FAT_CD_R_GAM_G600vl_tot_nf.AsCurrency;
                  VL_TOT_AJ := FAT_CD_R_GAM_G600vl_tot_aj.AsCurrency;
                  VL_TOT_DA := FAT_CD_R_GAM_G600vl_tot_da.AsCurrency;
                end;
              FAT_CD_R_GAM_G600.Next;
            end;

          FAT_CD_R_GAM_G605.First;
          while not FAT_CD_R_GAM_G605.Eof do
            begin
              with RegistroG605New do
                begin
                  case FAT_CD_R_GAM_G605ind_sit.AsInteger of
                    0: IND_SIT := dfAntEntAtivoPermanente;
                    1: IND_SIT := dfAntEntAtivoPermanente;
                    2: IND_SIT := dfAntEntAtivoPermanente;
                    3: IND_SIT := dfAntEntAtivoPermanente;
                  end;
                  VL_TOT_ANTC_NF := FAT_CD_R_GAM_G605vl_tot_nf.AsCurrency;
                  VL_TOT_AJ_ANTC := FAT_CD_R_GAM_G605vl_tot_aj.AsCurrency;
                  VL_TOT_DA_ANTC := FAT_CD_R_GAM_G605vl_tot_da.AsCurrency;

                  FAT_CD_R_GAM_G605.Next;
                end;
            end;

          FAT_CD_R_GAM_G610.First;
          while not FAT_CD_R_GAM_G610.Eof do
            begin
              with RegistroG610New do
                begin
                  VL_TOT_ST_NF := FAT_CD_R_GAM_G610vl_tot_part_nf.AsCurrency;
                  VL_TOT_AJ_ST := FAT_CD_R_GAM_G610vl_aj_part.AsCurrency;
                  VL_TOT_ST_DEC := FAT_CD_R_GAM_G610vl_tot_part_desc.AsCurrency;
                end;
              FAT_CD_R_GAM_G610.Next;
            end;

          FAT_CD_R_GAM_G615.First;
          while not FAT_CD_R_GAM_G615.Eof do
            begin
              with RegistroG615New do
                begin
                  UF :=FAT_CD_R_GAM_G615uf_emitente.AsString;
                  VL_TOT_ST_UF_NF := FAT_CD_R_GAM_G615vl_tot_part_uf_nf.AsCurrency;
                  VL_TOT_AJ_ST_UF := FAT_CD_R_GAM_G615vl_aj_part_uf.AsCurrency;
                  VL_TOT_ST_UF_DEC :=FAT_CD_R_GAM_G615vl_tot_part_uf_desc.AsCurrency;
                end;
              FAT_CD_R_GAM_G615.Next;
            end;

          FAT_CD_R_GAM_G620.First;
          while not FAT_CD_R_GAM_G620.Eof do
            begin
              with RegistroG620New do
                begin
                  case FAT_CD_R_GAM_G620ind_operacao.AsInteger of
                    0: IND_OPER := tpEntradaAquisicao;
                    1: IND_OPER := tpSaidaPrestacao;
                  end;

                  case FAT_CD_R_GAM_G620ind_emitente.AsInteger of
                    0: IND_EMIT := edEmissaoPropria;
                    1: IND_EMIT := edTerceiros;
                  end;

                  VL_TOT_ST_NF := FAT_CD_R_GAM_G620vl_tot_st_nf.AsCurrency;
                  VL_TOT_AJ_ST := FAT_CD_R_GAM_G620vl_tot_aj_st.AsCurrency;
                  VL_TOT_ST_DEC := FAT_CD_R_GAM_G620vl_tot_aj_st_1.AsCurrency;
                  VL_TOT_ST_COMB := FAT_CD_R_GAM_G620vl_tot_st_comb.AsCurrency;
                end;
              FAT_CD_R_GAM_G620.Next;
            end;

          FAT_CD_R_GAM_G625.First;
          while not FAT_CD_R_GAM_G625.Eof do
            begin
              with RegistroG625New do
                begin
                  UF := FAT_CD_R_GAM_G625uf_emitente.AsString;

                  case FAT_CD_R_GAM_G625ind_tp_st.AsInteger of
                    0: IND_TP_ST := stOpSubsequentes;
                    1: IND_TP_ST := stOpAntecedentes;
                    2: IND_TP_ST := stServicosTransportes;
                    3: IND_TP_ST := stRefCombustiveis;
                  end;

                  VL_TOT_ST_NF := FAT_CD_R_GAM_G625vl_tot_st_nf.AsCurrency;
                  VL_TOT_AJ_ST := FAT_CD_R_GAM_G625vl_tot_aj_st.AsCurrency;
                  VL_TOT_DEC_ST := FAT_CD_R_GAM_G625vl_tot_aj_st_1.AsCurrency;
                end;
              FAT_CD_R_GAM_G625.Next;
            end;
        end;
    end;
end;

procedure TFAT_FM_M_GAM.dtaFinalChange(Sender: TObject);
begin
  dmGeral.BUS_CD_M_NFE.Close;
end;

procedure TFAT_FM_M_GAM.dtaInicialChange(Sender: TObject);
begin
  dmGeral.BUS_CD_M_NFE.Close;
end;

procedure TFAT_FM_M_GAM.ExibirDados;
var
xEmpresa,yEmpresa: string;
I: integer;
begin

// Período
   rDtaIni := dtaInicial.Text;
   rDtaFin := dtaFinal.Text;


//Empresas
  xEmpresa := '';
  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          yEmpresa := trim(copy(ClbEmpresa.Items[I],1,1));
          if xEmpresa <> '' then
           begin
             xEmpresa :=
             xEmpresa + ',' +''''+trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
          if xEmpresa = '' then
           begin
             xEmpresa :=
             xEmpresa +''''+ trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
        end;
    end;

  zEmpresa := xEmpresa;

  dmGeral.BUS_CD_M_NFE.Close;
  dmgeral.BUS_CD_M_NFE.Data :=
    dmGeral.FAT_CD_M_NFE.DataRequest(
      VarArrayOf([98,xEmpresa,rDtaIni, rDtaFin]));

  dmGeral.BUS_CD_M_NFE_2.Close;
  dmgeral.BUS_CD_M_NFE_2.Data :=
    dmgeral.BUS_CD_M_NFE_2.DataRequest(
      VarArrayOf([99,xEmpresa,rDtaIni, rDtaFin]));

  FAT_CD_R_GAM_E20.Close;
  FAT_CD_R_GAM_E20.Data :=
    FAT_CD_R_GAM_E20.DataRequest(
      VarArrayOf([xEmpresa,rDtaIni, rDtaFin]));

  FAT_CD_R_GAM_E25.Close;
          FAT_CD_R_GAM_E25.Data :=
            FAT_CD_R_GAM_E25.DataRequest(
              VarArrayOf([xEmpresa,rDtaIni, rDtaFin]));

  FAT_CD_R_GAM_E100.Close;
  FAT_CD_R_GAM_E100.Data :=
    FAT_CD_R_GAM_E100.DataRequest(
      VarArrayOf([xEmpresa,rDtaIni, rDtaFin]));

  FAT_CD_R_GAM_E120.Close;
  FAT_CD_R_GAM_E120.Data :=
    FAT_CD_R_GAM_E120.DataRequest(
      VarArrayOf([xEmpresa,rDtaIni, rDtaFin]));

  FAT_CD_R_GAM_C20.Close;
      FAT_CD_R_GAM_C20.Data :=
        FAT_CD_R_GAM_C20.DataRequest(
          VarArrayOf([xEmpresa,rDtaIni, rDtaFin]));

  FAT_CD_R_GAM_C460.Close;
      FAT_CD_R_GAM_C460.Data :=
        FAT_CD_R_GAM_C460.DataRequest(
          VarArrayOf([xEmpresa,rDtaIni, rDtaFin]));

  FAT_CD_R_GAM_C500.Close;
      FAT_CD_R_GAM_C500.Data :=
        FAT_CD_R_GAM_C500.DataRequest(
          VarArrayOf([xEmpresa,rDtaIni, rDtaFin]));

  FAT_CD_R_GAM_C400.Close;
      FAT_CD_R_GAM_C400.Data :=
        FAT_CD_R_GAM_C400.DataRequest(
          VarArrayOf([1, '%']));

  FAT_CD_R_GAM_C600.Close;
      FAT_CD_R_GAM_C600.Data :=
        FAT_CD_R_GAM_C600.DataRequest(
          VarArrayOf([rDtaIni, rDtaFin,xEmpresa]));

  FAT_CD_R_GAM_D100.Close;
      FAT_CD_R_GAM_D100.Data :=
        FAT_CD_R_GAM_D100.DataRequest(
          VarArrayOf([xEmpresa,rDtaIni, rDtaFin]));

  FAT_CD_R_GAM_D500.Close;
      FAT_CD_R_GAM_D500.Data :=
        FAT_CD_R_GAM_D500.DataRequest(
          VarArrayOf([xEmpresa,rDtaIni, rDtaFin]));

   FAT_CD_R_GAM_A100.Close;
      FAT_CD_R_GAM_A100.Data :=
        FAT_CD_R_GAM_A100.DataRequest(
          VarArrayOf([xEmpresa,rDtaIni, rDtaFin]));

  FAT_CD_R_GAM_400.Close;
  FAT_CD_R_GAM_400.Data:=
    FAT_CD_R_GAM_400.DataRequest(
      VarArrayOf([xEmpresa,rDtaIni, rDtaFin,'''00''']));

  FAT_CD_R_GAM_450.Close;
  FAT_CD_R_GAM_450.Data:=
    FAT_CD_R_GAM_450.DataRequest(
      VarArrayOf([xEmpresa,rDtaIni, rDtaFin,'''00''']));

  FAT_CD_R_GAM_190.Close;
  FAT_CD_R_GAM_190.Data:=
    FAT_CD_R_GAM_190.DataRequest(
      VarArrayOf([xEmpresa,rDtaIni, rDtaFin,'''00''',1]));

  FAT_CD_R_GAM_200.Close;
      FAT_CD_R_GAM_200.Data :=
        FAT_CD_R_GAM_200.DataRequest(
          VarArrayOf([1,zEmpresa,rDtaIni, rDtaFin,'''00''']));


  dmGeral.BUS_CD_C_UND.Close;
    dmGeral.BUS_CD_C_UND.Data :=
    dmGeral.BUS_CD_C_UND.DataRequest(
            VarArrayOf([1, '%']));

  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
  dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([0, yEmpresa]));



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

procedure TFAT_FM_M_GAM.FAT_PR_X_GAM_150(modelos:String);
var
teste : string;
begin

  if (TipoArq = 0) or (TipoArq = 1) then
    begin
      FAT_CD_R_GAM_150.Close;
      FAT_CD_R_GAM_150.Data :=
      FAT_CD_R_GAM_150.DataRequest(VarArrayOf([zEmpresa,rDtaIni,rDtaFin,'''00'',''02'',''04'',''05''',modelos]));

      FAT_CD_X_GAM_150.IndexFieldNames:='doc_cnpj_cpf';


      FAT_CD_R_GAM_150.First;
      while not FAT_CD_R_GAM_150.Eof do
        begin
          if not FAT_CD_X_GAM_150.Locate('doc_cnpj_cpf',FAT_CD_R_GAM_150.FieldByName('doc_cnpj_cpf').AsString,[]) then
            begin
              FAT_CD_X_GAM_150.Insert;

              FAT_CD_X_GAM_150codigo.AsString          := FAT_CD_R_GAM_150codigo.AsString;
              FAT_CD_X_GAM_150nome.AsString            := FAT_CD_R_GAM_150nome.AsString;
              FAT_CD_X_GAM_150cod_pais.AsString        := Trim(FAT_CD_R_GAM_150cod_pais.AsString);
              FAT_CD_X_GAM_150doc_cnpj_cpf.AsString    := FAT_CD_R_GAM_150doc_cnpj_cpf.AsString;
              FAT_CD_X_GAM_150uf.AsString              := FAT_CD_R_GAM_150uf.AsString;
              FAT_CD_X_GAM_150ie.AsString              := Trim(FAT_CD_R_GAM_150ie.AsString);
              FAT_CD_X_GAM_150id_cidade.AsString       := Trim(FAT_CD_R_GAM_150id_cidade.AsString);
              FAT_CD_X_GAM_150im.AsString              := Trim(FAT_CD_R_GAM_150im.AsString);
              FAT_CD_X_GAM_150suframa.AsString         := FAT_CD_R_GAM_150suframa.AsString;
              FAT_CD_X_GAM_150endereco.AsString        := FAT_CD_R_GAM_150endereco.AsString;
              FAT_CD_X_GAM_150numero.AsString          := Trim(FAT_CD_R_GAM_150numero.AsString);
              FAT_CD_X_GAM_150end_complemento.AsString := FAT_CD_R_GAM_150end_complemento.AsString;
              FAT_CD_X_GAM_150bairro.AsString          := FAT_CD_R_GAM_150bairro.AsString;

              FAT_CD_X_GAM_150.Post;
            end;
          FAT_CD_R_GAM_150.Next;
        end;
      FAT_CD_X_GAM_150.First;

    end
  else
    begin
        FAT_CD_R_GAM_150.Close;
        FAT_CD_R_GAM_150.Data :=
          FAT_CD_R_GAM_150.DataRequest(VarArrayOf([zEmpresa,rDtaIni,rDtaFin,'''00'',''02''',modelos]));


        FAT_CD_X_GAM_150.IndexFieldNames:='doc_cnpj_cpf';


        cdsCli_For.EmptyDataSet;

        FAT_CD_R_GAM_C20.First;
        while not FAT_CD_R_GAM_C20.Eof do
           begin
             if FAT_CD_R_GAM_C20situacao_lancto.AsInteger <> 2 then // se for diferente de nota fiscal cancelada
                begin
                  FAT_CD_R_GAM_C300.Close;
                    FAT_CD_R_GAM_C300.Data :=
                      FAT_CD_R_GAM_C300.DataRequest(
                        VarArrayOf([FAT_CD_R_GAM_C20id_fiscal.Text]));


                  if not FAT_CD_R_GAM_C300.IsEmpty then
                     begin
                       if not cdsCli_For.Locate('doc_cnpj_cpf',FAT_CD_R_GAM_C20cpf_cnpj.AsString,[]) then
                          begin
                             cdsCli_For.Insert;
                             cdsCli_For.FieldByName('doc_cnpj_cpf').AsString :=
                                   RemoveCaracter(FAT_CD_R_GAM_C20cpf_cnpj.AsString,['/','.','-']);
                             cdsCli_For.Post;
                          end;
                     end;
                end;
             FAT_CD_R_GAM_C20.Next;
           end;
        FAT_CD_R_GAM_C20.First;


        FAT_CD_R_GAM_C500.First;
        while not FAT_CD_R_GAM_C500.Eof do
            begin
              FAT_CD_R_GAM_C510.Close;
              FAT_CD_R_GAM_C510.Data :=
                FAT_CD_R_GAM_C510.DataRequest(
                  VarArrayOf([FAT_CD_R_GAM_C500id_fiscal.Text]));

             if not FAT_CD_R_GAM_C510.IsEmpty then
                begin

                  if not cdsCli_For.Locate('doc_cnpj_cpf',FAT_CD_R_GAM_C20cpf_cnpj.AsString,[]) then
                     begin
                        cdsCli_For.Insert;
                           cdsCli_For.FieldByName('doc_cnpj_cpf').AsString :=
                                RemoveCaracter(FAT_CD_R_GAM_C500cpf_cnpj.AsString,['/','.','-']);
                        cdsCli_For.Post;
                     end;
                end;
            end;

        FAT_CD_R_GAM_D100.First;
        while not FAT_CD_R_GAM_D100.Eof do
            begin
               FAT_CD_R_GAM_D_190.Close;
               FAT_CD_R_GAM_D_190.Data :=
               FAT_CD_R_GAM_D_190.DataRequest(
                   VarArrayOf([FAT_CD_R_GAM_D100id_fiscal.AsString]));
               if not FAT_CD_R_GAM_D_190.IsEmpty then
                  begin

                    if not cdsCli_For.Locate('doc_cnpj_cpf',FAT_CD_R_GAM_D100cpf_cnpj.AsString,[]) then
                       begin
                          cdsCli_For.Insert;
                             cdsCli_For.FieldByName('doc_cnpj_cpf').AsString :=
                                  RemoveCaracter(FAT_CD_R_GAM_D100cpf_cnpj.AsString,['/','.','-']);
                          cdsCli_For.Post;
                       end;
                  end;
              FAT_CD_R_GAM_D100.Next;
            end;


        FAT_CD_R_GAM_D500.First;
        while not FAT_CD_R_GAM_D500.Eof do
           begin
              FAT_CD_R_GAM_D510.Close;
              FAT_CD_R_GAM_D510.Data :=
                FAT_CD_R_GAM_D510.DataRequest(
                  VarArrayOf([FAT_CD_R_GAM_D500id_fiscal.Text]));

              if not FAT_CD_R_GAM_D510.IsEmpty then
                 begin
                     if not cdsCli_For.Locate('doc_cnpj_cpf',FAT_CD_R_GAM_D500cpf_cnpj.AsString,[]) then
                        begin
                           cdsCli_For.Insert;
                              cdsCli_For.FieldByName('doc_cnpj_cpf').AsString :=
                                   RemoveCaracter(FAT_CD_R_GAM_D500cpf_cnpj.AsString,['/','.','-']);
                           cdsCli_For.Post;
                        end;
                 end;
             FAT_CD_R_GAM_D500.Next;
           end;


        FAT_CD_R_GAM_150.First;
        while not FAT_CD_R_GAM_150.Eof do
          begin
            if (cdsCli_For.Locate('doc_cnpj_cpf',FAT_CD_R_GAM_150.FieldByName('doc_cnpj_cpf').AsString,[])) and
               (not (FAT_CD_X_GAM_150.Locate('doc_cnpj_cpf',FAT_CD_R_GAM_150.FieldByName('doc_cnpj_cpf').AsString,[])) ) then
              begin
                FAT_CD_X_GAM_150.Insert;

                FAT_CD_X_GAM_150codigo.AsString          := FAT_CD_R_GAM_150codigo.AsString;
                FAT_CD_X_GAM_150nome.AsString            := FAT_CD_R_GAM_150nome.AsString;
                FAT_CD_X_GAM_150cod_pais.AsString        := Trim(FAT_CD_R_GAM_150cod_pais.AsString);
                FAT_CD_X_GAM_150doc_cnpj_cpf.AsString    := FAT_CD_R_GAM_150doc_cnpj_cpf.AsString;
                FAT_CD_X_GAM_150uf.AsString              := FAT_CD_R_GAM_150uf.AsString;
                FAT_CD_X_GAM_150ie.AsString              := Trim(FAT_CD_R_GAM_150ie.AsString);
                FAT_CD_X_GAM_150id_cidade.AsString       := Trim(FAT_CD_R_GAM_150id_cidade.AsString);
                FAT_CD_X_GAM_150im.AsString              := Trim(FAT_CD_R_GAM_150im.AsString);
                FAT_CD_X_GAM_150suframa.AsString         := FAT_CD_R_GAM_150suframa.AsString;
                FAT_CD_X_GAM_150endereco.AsString        := FAT_CD_R_GAM_150endereco.AsString;
                FAT_CD_X_GAM_150numero.AsString          := Trim(FAT_CD_R_GAM_150numero.AsString);
                FAT_CD_X_GAM_150end_complemento.AsString := FAT_CD_R_GAM_150end_complemento.AsString;
                FAT_CD_X_GAM_150bairro.AsString          := FAT_CD_R_GAM_150bairro.AsString;

                FAT_CD_X_GAM_150.Post;
              end;
            FAT_CD_R_GAM_150.Next;
          end;
        FAT_CD_X_GAM_150.First;
    end;
end;

procedure TFAT_FM_M_GAM.FAT_PR_X_GAM_H30_190;
begin
  FAT_CD_R_GAM_H30.First;
  while not FAT_CD_R_GAM_H30.Eof do
    begin
      if not FAT_CD_X_GAM_H30_190.Locate('id_unidade',trim(AnsiUpperCase(FAT_CD_R_GAM_H30.FieldByName('id_und_compra').AsString)),[loCaseInsensitive]) then
        begin
          FAT_CD_X_GAM_H30_190.Insert;

          FAT_CD_X_GAM_H30_190descricao.AsString      := AnsiLowerCase(FAT_CD_R_GAM_H30int_desc_und.AsString);
          FAT_CD_X_GAM_H30_190id_unidade.AsString     := AnsiUpperCase(FAT_CD_R_GAM_H30id_und_compra.AsString);

          FAT_CD_X_GAM_H30_190.Post;
        end;
      FAT_CD_R_GAM_H30.Next;
    end;

  FAT_CD_R_GAM_190.First;
  while not FAT_CD_R_GAM_190.Eof do
    begin
      if not FAT_CD_X_GAM_H30_190.Locate('id_unidade',trim(FAT_CD_R_GAM_190.FieldByName('id_unidade').AsString),[]) then
        begin
          FAT_CD_X_GAM_H30_190.Insert;

          FAT_CD_X_GAM_H30_190descricao.AsString   := FAT_CD_R_GAM_190descricao.AsString;
          FAT_CD_X_GAM_H30_190id_unidade.AsString  := FAT_CD_R_GAM_190id_unidade.AsString;

          FAT_CD_X_GAM_H30_190.Post;
        end;
      FAT_CD_R_GAM_190.Next;
    end;

  FAT_CD_X_GAM_H30_190.First;
end;

procedure TFAT_FM_M_GAM.FAT_PR_X_GAM_H30_200;
begin
  FAT_CD_R_GAM_H30.First;
  while not FAT_CD_R_GAM_H30.Eof do
    begin
      if not FAT_CD_X_GAM_H30_200.Locate('id_item',trim(FAT_CD_R_GAM_H30.FieldByName('id_item').AsString),[]) then
        begin
          FAT_CD_X_GAM_H30_200.Insert;

          FAT_CD_X_GAM_H30_200id_item.AsString       := FAT_CD_R_GAM_H30id_item.AsString;
          FAT_CD_X_GAM_H30_200id_ncm.AsString         := FAT_CD_R_GAM_H30id_ncm.AsString;
          FAT_CD_X_GAM_H30_200descricao.AsString      := FAT_CD_R_GAM_H30int_nomeite.AsString;
          FAT_CD_X_GAM_H30_200id_und_compra.AsString  := FAT_CD_R_GAM_H30id_und_compra.AsString;
          FAT_CD_X_GAM_H30_200cod_barra.AsString      := FAT_CD_R_GAM_H30cod_barra.AsString;
          FAT_CD_X_GAM_H30_200tipo_item.AsString      := FAT_CD_R_GAM_H30tipo_item.AsString;
          FAT_CD_X_GAM_H30_200ex_ipi.AsString        := FAT_CD_R_GAM_H30ex_ipi.AsString;
          FAT_CD_X_GAM_H30_200aliq_icms.AsFloat       := FAT_CD_R_GAM_H30aliq_icms.AsFloat;
          FAT_CD_X_GAM_H30_200cod_gen.AsString       := FAT_CD_R_GAM_H30cod_gen.AsString;
          FAT_CD_X_GAM_H30_200cest.AsString          := FAT_CD_R_GAM_H30cest.AsString;

          FAT_CD_X_GAM_H30_200.Post;
        end;
      FAT_CD_R_GAM_H30.Next;
    end;

  FAT_CD_R_GAM_200.First;
  while not FAT_CD_R_GAM_200.Eof do
    begin
      if not FAT_CD_X_GAM_H30_200.Locate('id_item',trim(FAT_CD_R_GAM_200.FieldByName('id_item').AsString),[]) then
        begin
          FAT_CD_X_GAM_H30_200.Insert;

          FAT_CD_X_GAM_H30_200id_item.AsString       := FAT_CD_R_GAM_200id_item.AsString;
          FAT_CD_X_GAM_H30_200id_ncm.AsString         := FAT_CD_R_GAM_200id_ncm.AsString;
          FAT_CD_X_GAM_H30_200descricao.AsString      := FAT_CD_R_GAM_200descricao.AsString;
          FAT_CD_X_GAM_H30_200id_und_compra.AsString  := FAT_CD_R_GAM_200id_und_compra.AsString;
          FAT_CD_X_GAM_H30_200cod_barra.AsString      := FAT_CD_R_GAM_200cod_barra.AsString;
          FAT_CD_X_GAM_H30_200tipo_item.AsString      := FAT_CD_R_GAM_200tipo_item.AsString;
          FAT_CD_X_GAM_H30_200ex_ipi.AsString        := FAT_CD_R_GAM_200ex_ipi.AsString;
          FAT_CD_X_GAM_H30_200aliq_icms.AsFloat       := FAT_CD_R_GAM_200aliq_icms.AsFloat;
          FAT_CD_X_GAM_H30_200cod_gen.AsString       := FAT_CD_R_GAM_200cod_gen.AsString;
          FAT_CD_X_GAM_H30_200cest.AsString       := FAT_CD_R_GAM_200cest.AsString;
          FAT_CD_X_GAM_H30_200.Post;
        end;
      FAT_CD_R_GAM_200.Next;
    end;

  FAT_CD_X_GAM_H30_200.First;
end;

procedure TFAT_FM_M_GAM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmGeral.FAT_CD_M_NFE.Close;
  dmGeral.BUS_CD_C_PAR.Close;
  BUS_CD_C_PCC.Close;
  FreeAndNil(FAT_FM_M_GAM);
end;

procedure TFAT_FM_M_GAM.FormCreate(Sender: TObject);
begin
  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
  dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([1, '%']));

  cdsItens.Close;
  cdsItens.CreateDataSet;

  cdsUnidade.Close;
  cdsUnidade.CreateDataSet;

  FAT_CD_X_GAM_H30_190.Close;
  FAT_CD_X_GAM_H30_190.CreateDataSet;

  FAT_CD_X_GAM_H30_200.Close;
  FAT_CD_X_GAM_H30_200.CreateDataSet;

  WindowState := wsMaximized;
  self.FormStyle := fsMDIChild;
end;

procedure TFAT_FM_M_GAM.FormShow(Sender: TObject);
begin
  PanelCentral.Left := Round((FAT_FM_M_GAM.Width - PanelCentral.Width)/2);
  PanelCentral.Top  := Round((FAT_FM_M_GAM.Height - PanelCentral.Height)/2);
  dmGeral.BUS_CD_C_PAR.First;
  while not dmGeral.BUS_CD_C_PAR.Eof do
    begin
      clbempresa.Items.Add(dmGeral.BUS_CD_C_PARid_empresa.AsString + ' - ' + dmGeral.BUS_CD_C_PARemp_razao.AsString);
      dmGeral.BUS_CD_C_PAR.Next;
    end;
end;

procedure TFAT_FM_M_GAM.GerarArq000(DataIni,DataFim: TDateTime);
var
   wIndiceOpcao: Integer;
   Idem : string;
begin
  if (dtaInventario.Text =  '  /  /    ') then
      begin
        if dmgeral.BUS_CD_M_NFE.IsEmpty then
          begin
            ShowMessage('Dados não Carregados.');
            abort;
          end;
      end;

  DefinirPath;

  GravarINI;

  ACBrSEF2.DT_INI := DataIni;
  ACBrSEF2.DT_FIN := DataFim;

  ACBrSEF2.Delimitador := '|';
  ACBrSEF2.CurMascara  := '#0.00';
  ACBrSEF2.IniciaGeracao;

  with ACBrSEF2.Bloco_0 do
  begin
     with Registro0000New do
     begin
        NOME_EMPR := dmgeral.BUS_CD_C_PARemp_razao.AsString;
        CNPJ      := RemoveCaracter(dmgeral.BUS_CD_C_PARemp_cnpj.AsString,['/','.','-']);
        UF        := dmgeral.BUS_CD_C_PARint_uf.AsString;

        if (UpperCase(dmgeral.BUS_CD_C_PARemp_ie.AsString) = 'ISENTO') or (dmgeral.BUS_CD_C_PARemp_ie.AsString = '') then
          IE := ''
        else
          begin
            if Length (RemoveCaracter(Trim(dmgeral.BUS_CD_C_PARemp_ie.AsString),['/','.','-'])) < 9 then
              IE := '0' + RemoveCaracter(Trim(dmgeral.BUS_CD_C_PARemp_ie.AsString),['/','.','-'])
            else
              IE := RemoveCaracter(Trim(dmgeral.BUS_CD_C_PARemp_ie.AsString),['/','.','-']);
          end;

        COD_MUN   := trim(dmgeral.BUS_CD_C_PARid_cidade.AsString);

        if dmgeral.BUS_CD_C_PARemp_im.AsString = 'ISENTO' then
          IM := ''
        else
          IM := dmgeral.BUS_CD_C_PARemp_im.AsString;

        SUFRAMA   := dmgeral.BUS_CD_C_PARemp_suframa.AsString;
        FANTASIA  := dmgeral.BUS_CD_C_PARemp_fantasia.AsString;
        CPF       := '';
        NIRE      := dmgeral.BUS_CD_C_PARemp_numero_junta.AsString;
        PAIS      := 'Brasil';
        COD_VER   := ACBrSEF2Conversao.vlVersao2000;

        Case DmGeral.BUS_CD_C_PAR_CTRsef_cod_fin.AsInteger of
          0: COD_FIN := ACBrSEF2Conversao.TSEFIICodFinalidade.raOriginal;
          1: COD_FIN := ACBrSEF2Conversao.TSEFIICodFinalidade.raSubstituto;
        End;
        if TipoArq = 1 then
          begin
            COD_CTD := caExtratodocfiscais;
          end
        else
          begin
            Case DmGeral.BUS_CD_C_PAR_CTRsef_cod_ctd.AsInteger of
              20: COD_CTD := caLancOpResultFiscal;
              21: COD_CTD := caLancControlesFiscais;
              30: COD_CTD := caResumosInfConsolidadas;
            End;
          end;

        with Registro0001New do
        begin
           IND_MOV := icContConteudo;

           with Registro0005New do
           begin
              NOME_RESP := dmgeral.BUS_CD_C_PARres_nome.AsString;

              Case DmGeral.BUS_CD_C_PARres_qualificacao.AsInteger of
                203: COD_ASSIN := qaDiretor;
                204: COD_ASSIN := qaConsAdministracao;
                205: COD_ASSIN := qaAdministrador;
                206: COD_ASSIN := qaAdmGrupo;
                207: COD_ASSIN := qaAdmSociedadeFiliada;
                220: COD_ASSIN := qaAdmJudicialPessoaFisica;
                222: COD_ASSIN := qaAdmJudicialPessoaJuridica;
                223: COD_ASSIN := qaAdmJudicial;
                226: COD_ASSIN := qaGestorJudicial;
                309: COD_ASSIN := qaProcurador;
                312: COD_ASSIN := qaInventariante;
                313: COD_ASSIN := qaLiquidante;
                315: COD_ASSIN := qaInterventor;
                801: COD_ASSIN := qaEmpresario;
                900: COD_ASSIN := qaContador;
              else   COD_ASSIN := qaOutros;
              End;

              CPF_RESP  := RemoveCaracter(dmgeral.BUS_CD_C_PARres_cpf.AsString,['/','.','-']);
              CEP       := dmgeral.BUS_CD_C_PARres_cep.AsString;
              ENDERECO  := dmgeral.BUS_CD_C_PARres_endereco.AsString;
              NUM       := dmgeral.BUS_CD_C_PARres_numero.AsString;
              COMPL     := dmgeral.BUS_CD_C_PARres_complemento.AsString;
              BAIRRO    := dmgeral.BUS_CD_C_PARres_cep.AsString;
              CEP_CP    := '';
              CP        := dmgeral.BUS_CD_C_PARres_cp.AsString;
              FONE      := RemoveCaracter(dmgeral.BUS_CD_C_PARres_telefone.AsString,['(',')','-']);
              FAX       := dmgeral.BUS_CD_C_PARres_fax.AsString;
              EMAIL     := dmgeral.BUS_CD_C_PARres_email.AsString;
           end;

           with Registro0030New do
           begin
              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_ind_ed.AsString,1,1));
              case wIndiceOpcao of
                 0: IND_ED := entDigitacao;
                 1: IND_ED := entImportacao;
                 2: IND_ED := entValidacao;
              end;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_ind_arq.AsString,1,1));
              case wIndiceOpcao of
                 0: IND_ARQ := arqOriginal;
                 1: IND_ARQ := arqTranscricaoEmissaoPropria;
                 2: IND_ARQ := arqTranscricaoEmissaoTerceiros;
                 3: IND_ARQ := arqTrancricaoDigitalizacao;
                 4: IND_ARQ := arqTranscricaoEmissaoEquipEspecilizado;
                 5: IND_ARQ := arqLivrosResultadosObrigacoes;
                 6: IND_ARQ := arqLivroMapaControles;
                 7: IND_ARQ := arqGuiasInfEconomicasFiscais;
                 8: IND_ARQ := arqLivrosContabilidade;
                 9: IND_ARQ := arqExtratoDocumentos;
              end;

              if TipoArq = 1 then
                IND_ARQ := arqExtratoDocumentos;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_prf_iss.AsString,1,1));
              case wIndiceOpcao of
                0: PRF_ISS  := impSimRegimeSimplificado;
                2: PRF_ISS  := impSimRegimeIntegral;
                9: PRF_ISS  := impNaoObrigado;
              end;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_prf_icms.AsString,1,1));
              case wIndiceOpcao of
                0: PRF_ICMS  := impSimRegimeSimplificado;
                1: PRF_ICMS  := impSimRegimeIntermediario;
                2: PRF_ICMS  := impSimRegimeIntegral;
                9: PRF_ICMS  := impNaoObrigado;
              end;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_prf_ridf.AsString,1,1));
              if wIndiceOpcao = 0 then
                 PRF_RIDF :=  exSim
              else
                 PRF_RIDF :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_prf_rudf.AsString,1,1));
              if wIndiceOpcao = 0 then
                 PRF_RUDF :=  exSim
              else
                 PRF_RUDF :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_prf_lmc.AsString,1,1));
              if wIndiceOpcao = 0 then
                 PRF_LMC :=  exSim
              else
                 PRF_LMC :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_prf_rv.AsString,1,1));
              if wIndiceOpcao = 0 then
                 PRF_RV :=  exSim
              else
                 PRF_RV :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_prf_ri.AsString,1,1));
              if wIndiceOpcao = 0 then
                 PRF_RI :=  exSim
              else
                 PRF_RI :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_ind_ec.AsString,1,1));
              case wIndiceOpcao of
                 0: IND_EC := esCompletaArquivo;
                 1: IND_EC := esCompletaPapel;
                 2: IND_EC := esSimplificadaArquivo;
                 3: IND_EC := esSimplificadaPapel;
                 4: IND_EC := esLivroCaixaArquivo;
                 5: IND_EC := esLivroCaixaPapel;
                 9: IND_EC := esNaoObrigado;
              end;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_ind_iss.AsString,1,1));
              if wIndiceOpcao = 0 then
                 IND_ISS :=  exSim
              else
                 IND_ISS :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_ind_rt.AsString,1,1));
              if wIndiceOpcao = 0 then
                 IND_RT :=  exSim
              else
                 IND_RT :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_ind_icms.AsString,1,1));
              if wIndiceOpcao = 0 then
                 IND_ICMS :=  exSim
              else
                 IND_ICMS :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_ind_st.AsString,1,1));

              if wIndiceOpcao = 0 then
                 IND_ST :=  exSim
              else
                 IND_ST :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_ind_at.AsString,1,1));

              if wIndiceOpcao = 0 then
                 IND_AT :=  exSim
              else
                 IND_AT :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_ind_ipi.AsString,1,1));

              if wIndiceOpcao = 0 then
                 IND_IPI :=  exSim
              else
                 IND_IPI :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRsef_ind_ri.AsString,1,1));

              if wIndiceOpcao = 0 then
                 IND_RI :=  exSim
              else
                 IND_RI :=  exNao;

              if TipoArq = 1 then
                IND_RI :=  exVazio

           end;

           with Registro0100New do
           begin
              NOME := dmgeral.BUS_CD_C_PARcnt_nome.AsString;

              Case DmGeral.BUS_CD_C_PARcnt_qualificacao.AsInteger of
                203: COD_ASSIN := qaDiretor;
                204: COD_ASSIN := qaConsAdministracao;
                205: COD_ASSIN := qaAdministrador;
                206: COD_ASSIN := qaAdmGrupo;
                207: COD_ASSIN := qaAdmSociedadeFiliada;
                220: COD_ASSIN := qaAdmJudicialPessoaFisica;
                222: COD_ASSIN := qaAdmJudicialPessoaJuridica;
                223: COD_ASSIN := qaAdmJudicial;
                226: COD_ASSIN := qaGestorJudicial;
                309: COD_ASSIN := qaProcurador;
                312: COD_ASSIN := qaInventariante;
                313: COD_ASSIN := qaLiquidante;
                315: COD_ASSIN := qaInterventor;
                801: COD_ASSIN := qaEmpresario;
                900: COD_ASSIN := qaContador;
              else   COD_ASSIN := qaOutros;
              End;

              CNPJ      := RemoveCaracter(dmgeral.BUS_CD_C_PARcnt_cnpj.AsString,['/','.','-']);
              CPF       := RemoveCaracter(dmgeral.BUS_CD_C_PARcnt_cpf.AsString,['/','.','-']);
              CRC       := dmgeral.BUS_CD_C_PARcnt_crc.AsString;
              CEP       := dmgeral.BUS_CD_C_PARcnt_cep.AsString;
              ENDERECO  := dmgeral.BUS_CD_C_PARcnt_endereco.AsString;
              NUM       := dmgeral.BUS_CD_C_PARcnt_numero.AsString;
              COMPL     := dmgeral.BUS_CD_C_PARcnt_complemento.AsString;
              BAIRRO    := dmgeral.BUS_CD_C_PARcnt_bairro.AsString;
              UF        := dmgeral.BUS_CD_C_PARint_uf.AsString;
              COD_MUN   := StrToInt(trim(dmgeral.BUS_CD_C_PARid_cidade.AsString));
              CEP_CP    := 0;

              if dmgeral.BUS_CD_C_PARcnt_cp.AsString <> '' then
                CP:= StrToInt(trim(dmgeral.BUS_CD_C_PARcnt_cp.AsString))
              else
                CP:= 0;

              FONE      := dmgeral.BUS_CD_C_PARcnt_telefone.AsString;
              FAX       := dmgeral.BUS_CD_C_PARcnt_fax.AsString;
              EMAIL     := dmgeral.BUS_CD_C_PARcnt_email.AsString;
           end;
           RemoveCaracter(dmgeral.BUS_CD_C_PARres_telefone.AsString,['(',')','-']);

           FAT_CD_X_GAM_150.Close;
           FAT_CD_X_GAM_150.CreateDataSet;

           if TipoArq = 2 then
              // Comentado por Maxsuel Victor em 11/05/2017, tamires disse que só pode ser os dados da empresa
              //FAT_PR_X_GAM_150('''01'',''04'',''1B'',''55'',''2D'',''59''')
           else
              FAT_PR_X_GAM_150('''01'',''04'',''1B'',''55'',''2D'',''59'',''06'',''21'',''22'',''28'',''29'',''07'',''08'',''09'',''10'',''11'',''18'',''26'',''27'',''57''');

           if TipoArq = 2 then
              begin
                with Registro0150New do
                  begin
                    COD_PART := RemoveCaracter(dmgeral.BUS_CD_C_PARemp_cnpj.AsString,['/','.','-']);
                    NOME     := dmgeral.BUS_CD_C_PARemp_razao.AsString;
                    COD_PAIS := '01058';
                    CNPJ     := RemoveCaracter(dmgeral.BUS_CD_C_PARemp_cnpj.AsString,['/','.','-']);
                    CPF      := '';
                    UF       := dmgeral.BUS_CD_C_PARint_uf.AsString;
                    if (UpperCase(dmgeral.BUS_CD_C_PARemp_ie.AsString) = 'ISENTO') or (dmgeral.BUS_CD_C_PARemp_ie.AsString = '') then
                      IE := ''
                    else
                      begin
                        if Length (RemoveCaracter(Trim(dmgeral.BUS_CD_C_PARemp_ie.AsString),['/','.','-'])) < 9 then
                          IE := '0' + RemoveCaracter(Trim(dmgeral.BUS_CD_C_PARemp_ie.AsString),['/','.','-'])
                        else
                          IE := RemoveCaracter(Trim(dmgeral.BUS_CD_C_PARemp_ie.AsString),['/','.','-']);
                      end;

                    IE_ST    := '';
                    COD_MUN  := StrToInt(trim(dmgeral.BUS_CD_C_PARid_cidade.AsString));

                    if dmgeral.BUS_CD_C_PARemp_im.AsString = 'ISENTO' then
                      IM := ''
                    else
                      IM := dmgeral.BUS_CD_C_PARemp_im.AsString;
                    SUFRAMA  := dmgeral.BUS_CD_C_PARemp_suframa.AsString;
                  end;
              end
           else
              begin
                FAT_CD_X_GAM_150.First;
                   while not FAT_CD_X_GAM_150.Eof do
                    begin
                      with Registro0150New do
                        begin
                          COD_PART := RemoveCaracter(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString,['/','.','-']);
                          NOME     := FAT_CD_X_GAM_150nome.AsString;
                          COD_PAIS := FAT_CD_X_GAM_150cod_pais.AsString;
                          if length(RemoveCaracter(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString,['/','.','-'])) = 14 then
                            begin
                              CNPJ := RemoveCaracter(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString,['/','.','-']);
                              CPF  := '';
                            end
                          else
                            begin
                              CNPJ := '';
                              CPF  := RemoveCaracter(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString,['/','.','-']);
                            end;
                          UF       := FAT_CD_X_GAM_150uf.AsString;

                          if (UpperCase(FAT_CD_X_GAM_150ie.AsString) = 'ISENTO') or (FAT_CD_X_GAM_150ie.AsString = '') then
                            IE := ''
                          else
                            IE := RemoveCaracter(Trim(FAT_CD_X_GAM_150ie.AsString),['/','.','-']);

                          IE_ST    := '';
                          COD_MUN  := StrToInt(trim(FAT_CD_X_GAM_150id_cidade.AsString));
                          IM       := FAT_CD_X_GAM_150im.AsString;
                          SUFRAMA  := FAT_CD_X_GAM_150suframa.AsString;
                        end;
                      FAT_CD_X_GAM_150.Next;
                    end;
              end;
           if (TipoArq = 1) then
               begin
                  FAT_CD_R_GAM_200.First;
                  while not FAT_CD_R_GAM_200.Eof do
                    begin
                      with Registro0200New do
                        begin
                          COD_ITEM   := FAT_CD_R_GAM_200id_item.AsString;
                          DESCR_ITEM := copy(FAT_CD_R_GAM_200descricao.AsString,1,80);
                          COD_GEN    := '';
                          COD_LST    := '';
                        end;
                      FAT_CD_R_GAM_200.Next;
                    end;
               end;
           if (TipoArq = 2) then
               begin
                  FAT_CD_R_GAM_INV_ITE.First;
                  while not FAT_CD_R_GAM_INV_ITE.Eof do
                    begin
                      with Registro0200New do
                        begin
                          COD_ITEM   := FAT_CD_R_GAM_INV_ITE.FieldByName('id_item').AsString;
                          DESCR_ITEM := copy(FAT_CD_R_GAM_INV_ITE.FieldByName('int_nomeite').AsString,1,80);
                          COD_GEN    := '';
                          COD_LST    := '';
                        end;
                      FAT_CD_R_GAM_INV_ITE.Next;
                    end;
               end;

           if TipoArq = 1 then
              begin
                { TODO 1 -oMariel -cValidação :
                  27/07/2015 - Se o parametro IND_ISS = 0 (NF com iss) e IND_ICMS = 1 (NF sem icms)
                  o registro 400 (tabela de Naturezas) só aceita "OP00" (Lançamento sem repercussão fiscal). }
                FAT_CD_R_GAM_400.First;
                while not FAT_CD_R_GAM_400.Eof do
                  begin
                    with Registro0400New do
                      begin
                        COD_NAT   := FAT_CD_R_GAM_400codigo.AsString;
                        DESCR_NAT := FAT_CD_R_GAM_400descricao.AsString;
                        COP := FAT_CD_R_GAM_400id_classe.AsString; // Luan vai cria o campo classe; 09/03/2016
                      end;
                    FAT_CD_R_GAM_400.Next;
                  end;
              end;

           if TipoArq = 0 then
              begin
               { TODO -oMaxsuel -cCriação : Inserido em 12/02/2017 a pedido da tarefa 4026 (Tamires) }
                FAT_CD_R_GAM_450.First;
                while not FAT_CD_R_GAM_450.Eof do
                    begin
                      if not (FAT_CD_R_GAM_450codigo.AsString = '') then
                         begin
                           with Registro0450New do
                              begin
                                COD_INF := FAT_CD_R_GAM_450codigo.AsString;
                                TXT     := FAT_CD_R_GAM_450descricao.AsString;
                              end;
                         end;
                      FAT_CD_R_GAM_450.Next;
                    end;
              end;
        end;
     end;
  end;
ACBrSEF2.WriteBloco_0;
end;

procedure TFAT_FM_M_GAM.GerarArq000_EDOC;
var
   wIndiceOpcao: Integer;
   Idem : string;
begin
  if dmgeral.BUS_CD_M_NFE.IsEmpty then
    begin
      ShowMessage('Dados não Carregados.');
      abort;
    end;

  DefinirPath;

  GravarINI;

  ACBrSEF2.DT_INI := DtaInicial.Date;
  ACBrSEF2.DT_FIN := DtaFinal.Date;

  ACBrSEF2.Delimitador := '|';
  ACBrSEF2.CurMascara  := '#0.00';
  ACBrSEF2.IniciaGeracao;

  with ACBrSEF2.Bloco_0 do
  begin
     with Registro0000New do
     begin
        NOME_EMPR := dmgeral.BUS_CD_C_PARemp_razao.AsString;
        CNPJ      := RemoveCaracter(dmgeral.BUS_CD_C_PARemp_cnpj.AsString,['/','.','-']);
        UF        := dmgeral.BUS_CD_C_PARint_uf.AsString;

        if (UpperCase(dmgeral.BUS_CD_C_PARemp_ie.AsString) = 'ISENTO') or (dmgeral.BUS_CD_C_PARemp_ie.AsString = '') then
          IE := ''
        else
          begin
            if Length (RemoveCaracter(Trim(dmgeral.BUS_CD_C_PARemp_ie.AsString),['/','.','-'])) < 9 then
              IE := '0' + RemoveCaracter(Trim(dmgeral.BUS_CD_C_PARemp_ie.AsString),['/','.','-'])
            else
              IE := RemoveCaracter(Trim(dmgeral.BUS_CD_C_PARemp_ie.AsString),['/','.','-']);
          end;

        COD_MUN   := trim(dmgeral.BUS_CD_C_PARid_cidade.AsString);

        if dmgeral.BUS_CD_C_PARemp_im.AsString = 'ISENTO' then
          IM := ''
        else
          IM := dmgeral.BUS_CD_C_PARemp_im.AsString;

        SUFRAMA   := dmgeral.BUS_CD_C_PARemp_suframa.AsString;
        FANTASIA  := dmgeral.BUS_CD_C_PARemp_fantasia.AsString;
        CPF       := '';
        NIRE      := dmgeral.BUS_CD_C_PARemp_numero_junta.AsString;
        PAIS      := 'Brasil';
        COD_VER   := ACBrSEF2Conversao.vlVersao2000;

        Case DmGeral.BUS_CD_C_PAR_CTRdoc_cod_fin.AsInteger of
          0: COD_FIN := ACBrSEF2Conversao.TSEFIICodFinalidade.raOriginal;
          1: COD_FIN := ACBrSEF2Conversao.TSEFIICodFinalidade.raSubstituto;
        End;
        if TipoArq = 1 then
          begin
            COD_CTD := caExtratodocfiscais;
          end
        else
          begin
            Case DmGeral.BUS_CD_C_PAR_CTRdoc_cod_ctd.AsInteger of
              91: COD_CTD := caExtratodocfiscais;
            End;
          end;

        with Registro0001New do
        begin
           IND_MOV := icContConteudo;

           with Registro0005New do
           begin
              NOME_RESP := dmgeral.BUS_CD_C_PARres_nome.AsString;

              Case DmGeral.BUS_CD_C_PARres_qualificacao.AsInteger of
                203: COD_ASSIN := qaDiretor;
                204: COD_ASSIN := qaConsAdministracao;
                205: COD_ASSIN := qaAdministrador;
                206: COD_ASSIN := qaAdmGrupo;
                207: COD_ASSIN := qaAdmSociedadeFiliada;
                220: COD_ASSIN := qaAdmJudicialPessoaFisica;
                222: COD_ASSIN := qaAdmJudicialPessoaJuridica;
                223: COD_ASSIN := qaAdmJudicial;
                226: COD_ASSIN := qaGestorJudicial;
                309: COD_ASSIN := qaProcurador;
                312: COD_ASSIN := qaInventariante;
                313: COD_ASSIN := qaLiquidante;
                315: COD_ASSIN := qaInterventor;
                801: COD_ASSIN := qaEmpresario;
              else   COD_ASSIN := qaOutros;
              End;

              CPF_RESP  := RemoveCaracter(dmgeral.BUS_CD_C_PARres_cpf.AsString,['/','.','-']);
              CEP       := dmgeral.BUS_CD_C_PARres_cep.AsString;
              ENDERECO  := dmgeral.BUS_CD_C_PARres_endereco.AsString;
              NUM       := dmgeral.BUS_CD_C_PARres_numero.AsString;
              COMPL     := dmgeral.BUS_CD_C_PARres_complemento.AsString;
              BAIRRO    := dmgeral.BUS_CD_C_PARres_cep.AsString;
              CEP_CP    := '';
              CP        := dmgeral.BUS_CD_C_PARres_cp.AsString;
              FONE      := RemoveCaracter(dmgeral.BUS_CD_C_PARres_telefone.AsString,['(',')','-']);
              FAX       := dmgeral.BUS_CD_C_PARres_fax.AsString;
              EMAIL     := dmgeral.BUS_CD_C_PARres_email.AsString;
           end;

           with Registro0030New do
           begin
              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_ind_ed.AsString,1,1));
              case wIndiceOpcao of
                 0: IND_ED := entDigitacao;
                 1: IND_ED := entImportacao;
                 2: IND_ED := entValidacao;
              end;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_ind_arq.AsString,1,1));
              case wIndiceOpcao of
                 0: IND_ARQ := arqOriginal;
                 1: IND_ARQ := arqTranscricaoEmissaoPropria;
                 2: IND_ARQ := arqTranscricaoEmissaoTerceiros;
                 3: IND_ARQ := arqTrancricaoDigitalizacao;
                 4: IND_ARQ := arqTranscricaoEmissaoEquipEspecilizado;
                 5: IND_ARQ := arqLivrosResultadosObrigacoes;
                 6: IND_ARQ := arqLivroMapaControles;
                 7: IND_ARQ := arqGuiasInfEconomicasFiscais;
                 8: IND_ARQ := arqLivrosContabilidade;
                 9: IND_ARQ := arqExtratoDocumentos;
              end;

              {if TipoArq = 1 then
                IND_ARQ := arqExtratoDocumentos;}

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_prf_iss.AsString,1,1));
              case wIndiceOpcao of
                0: PRF_ISS  := impSimRegimeSimplificado;
                2: PRF_ISS  := impSimRegimeIntegral;
                9: PRF_ISS  := impNaoObrigado;
              end;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_prf_icms.AsString,1,1));
              case wIndiceOpcao of
                0: PRF_ICMS  := impSimRegimeSimplificado;
                1: PRF_ICMS  := impSimRegimeIntermediario;
                2: PRF_ICMS  := impSimRegimeIntegral;
                9: PRF_ICMS  := impNaoObrigado;
              end;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_prf_ridf.AsString,1,1));
              if wIndiceOpcao = 0 then
                 PRF_RIDF :=  exSim
              else
                 PRF_RIDF :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_prf_rudf.AsString,1,1));
              if wIndiceOpcao = 0 then
                 PRF_RUDF :=  exSim
              else
                 PRF_RUDF :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_prf_lmc.AsString,1,1));
              if wIndiceOpcao = 0 then
                 PRF_LMC :=  exSim
              else
                 PRF_LMC :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_prf_rv.AsString,1,1));
              if wIndiceOpcao = 0 then
                 PRF_RV :=  exSim
              else
                 PRF_RV :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_prf_ri.AsString,1,1));
              if wIndiceOpcao = 0 then
                 PRF_RI :=  exSim
              else
                 PRF_RI :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_ind_ec.AsString,1,1));
              case wIndiceOpcao of
                 0: IND_EC := esCompletaArquivo;
                 1: IND_EC := esCompletaPapel;
                 2: IND_EC := esSimplificadaArquivo;
                 3: IND_EC := esSimplificadaPapel;
                 4: IND_EC := esLivroCaixaArquivo;
                 5: IND_EC := esLivroCaixaPapel;
                 9: IND_EC := esNaoObrigado;
              end;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_ind_iss.AsString,1,1));
              if wIndiceOpcao = 0 then
                 IND_ISS :=  exSim
              else
                 IND_ISS :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_ind_rt.AsString,1,1));
              if wIndiceOpcao = 0 then
                 IND_RT :=  exSim
              else
                 IND_RT :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_ind_icms.AsString,1,1));
              if wIndiceOpcao = 0 then
                 IND_ICMS :=  exSim
              else
                 IND_ICMS :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_ind_st.AsString,1,1));

              if wIndiceOpcao = 0 then
                 IND_ST :=  exSim
              else
                 IND_ST :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_ind_at.AsString,1,1));

              if wIndiceOpcao = 0 then
                 IND_AT :=  exSim
              else
                 IND_AT :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_ind_ipi.AsString,1,1));

              if wIndiceOpcao = 0 then
                 IND_IPI :=  exSim
              else
                 IND_IPI :=  exNao;

              wIndiceOpcao := StrToInt(copy(dmgeral.BUS_CD_C_PAR_CTRdoc_ind_ri.AsString,1,1));

              if wIndiceOpcao = 0 then
                 IND_RI :=  exSim
              else
                 IND_RI :=  exVazio; // regra edoc: valores posiveis '0' ou 'nulo';



           end;

           with Registro0100New do
           begin
              NOME := dmgeral.BUS_CD_C_PARcnt_nome.AsString;

              {Case DmGeral.BUS_CD_C_PARcnt_qualificacao.AsInteger of
                203: COD_ASSIN := qaDiretor;
                204: COD_ASSIN := qaConsAdministracao;
                205: COD_ASSIN := qaAdministrador;
                206: COD_ASSIN := qaAdmGrupo;
                207: COD_ASSIN := qaAdmSociedadeFiliada;
                220: COD_ASSIN := qaAdmJudicialPessoaFisica;
                222: COD_ASSIN := qaAdmJudicialPessoaJuridica;
                223: COD_ASSIN := qaAdmJudicial;
                226: COD_ASSIN := qaGestorJudicial;
                309: COD_ASSIN := qaProcurador;
                312: COD_ASSIN := qaInventariante;
                313: COD_ASSIN := qaLiquidante;
                315: COD_ASSIN := qaInterventor;
                801: COD_ASSIN := qaEmpresario;
                900: COD_ASSIN := qaContador;
              else   COD_ASSIN := qaOutros;
              End;}

              COD_ASSIN := qaContador; // só pode vir contador;

              CNPJ      := RemoveCaracter(dmgeral.BUS_CD_C_PARcnt_cnpj.AsString,['/','.','-']);
              CPF       := RemoveCaracter(dmgeral.BUS_CD_C_PARcnt_cpf.AsString,['/','.','-']);
              CRC       := dmgeral.BUS_CD_C_PARcnt_crc.AsString;
              CEP       := dmgeral.BUS_CD_C_PARcnt_cep.AsString;
              ENDERECO  := dmgeral.BUS_CD_C_PARcnt_endereco.AsString;
              NUM       := dmgeral.BUS_CD_C_PARcnt_numero.AsString;
              COMPL     := dmgeral.BUS_CD_C_PARcnt_complemento.AsString;
              BAIRRO    := dmgeral.BUS_CD_C_PARcnt_bairro.AsString;
              UF        := dmgeral.BUS_CD_C_PARint_uf.AsString;
              COD_MUN   := StrToInt(trim(dmgeral.BUS_CD_C_PARid_cidade.AsString));
              CEP_CP    := 0;

              if dmgeral.BUS_CD_C_PARcnt_cp.AsString <> '' then
                CP:= StrToInt(trim(dmgeral.BUS_CD_C_PARcnt_cp.AsString))
              else
                CP:= 0;

              FONE      := dmgeral.BUS_CD_C_PARcnt_telefone.AsString;
              FAX       := dmgeral.BUS_CD_C_PARcnt_fax.AsString;
              EMAIL     := dmgeral.BUS_CD_C_PARcnt_email.AsString;
           end;
           RemoveCaracter(dmgeral.BUS_CD_C_PARres_telefone.AsString,['(',')','-']);

           FAT_PR_X_GAM_150('''01'',''04'',''1B'',''55'',''2D'',''59''');
           FAT_CD_X_GAM_150.First;
           while not FAT_CD_X_GAM_150.Eof do
            begin
              with Registro0150New do
                begin
                      COD_PART := RemoveCaracter(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString,['/','.','-']);
                      NOME     := FAT_CD_X_GAM_150nome.AsString;
                      COD_PAIS := FAT_CD_X_GAM_150cod_pais.AsString;
                      if length(RemoveCaracter(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString,['/','.','-'])) = 14 then
                        begin
                          CNPJ := RemoveCaracter(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString,['/','.','-']);
                          CPF  := '';
                        end
                      else
                        begin
                          CNPJ := '';
                          CPF  := RemoveCaracter(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString,['/','.','-']);
                        end;
                      UF       := FAT_CD_X_GAM_150uf.AsString;

                      if (UpperCase(FAT_CD_X_GAM_150ie.AsString) = 'ISENTO') or (FAT_CD_X_GAM_150ie.AsString = '') then
                        IE := ''
                      else
                        IE := RemoveCaracter(Trim(FAT_CD_X_GAM_150ie.AsString),['/','.','-']);

                      IE_ST    := '';
                      COD_MUN  := StrToInt(trim(FAT_CD_X_GAM_150id_cidade.AsString));
                      IM       := FAT_CD_X_GAM_150im.AsString;
                      SUFRAMA  := FAT_CD_X_GAM_150suframa.AsString;
                end;
              FAT_CD_X_GAM_150.Next;
            end;
           if (TipoArq = 1) or (TipoArq = 2) then
            begin
              cdsItens.EmptyDataSet;
              cdsItens.IndexFieldNames:='ID_ITEM';
              FAT_CD_R_GAM_200.First;
              while not FAT_CD_R_GAM_200.Eof do
                begin
                  IF not cdsItens.Locate('ID_ITEM',FAT_CD_R_GAM_200.FieldByName('ID_ITEM').AsString,[]) Then
                     begin
                       cdsItens.Insert;
                       cdsItens.FieldByName('ID_ITEM').AsString   :=FAT_CD_R_GAM_200.fieldByName('ID_ITEM').AsString;
                       cdsItens.FieldByName('DESCRICAO').AsString :=FAT_CD_R_GAM_200.fieldByName('DESCRICAO').AsString;
                       cdsItens.post;
                     end;
                  FAT_CD_R_GAM_200.Next;
                end;

                FAT_CD_R_GAM_C20.Filtered := true;
                FAT_CD_R_GAM_C20.Filter := ' MODELO IN (''01'',''04'',''55'')';
                FAT_CD_R_GAM_C20.First;
                while not FAT_CD_R_GAM_C20.Eof do
                  begin
                    FAT_CD_R_GAM_C300.Close;
                    FAT_CD_R_GAM_C300.Data :=
                      FAT_CD_R_GAM_C300.DataRequest(
                        VarArrayOf([FAT_CD_R_GAM_C20id_fiscal.Text]));

                    FAT_CD_R_GAM_C300.First;
                    while not FAT_CD_R_GAM_C300.Eof do
                      begin
                        if FAT_CD_R_GAM_C300id_fiscal.AsInteger = FAT_CD_R_GAM_C20id_fiscal.AsInteger then
                          begin
                            IF not cdsItens.Locate('ID_ITEM',FAT_CD_R_GAM_C300.FieldByName('ID_ITEM').AsString,[]) Then
                             begin
                               cdsItens.Insert;
                               cdsItens.FieldByName('ID_ITEM').AsString :=FAT_CD_R_GAM_C300.fieldByName('ID_ITEM').AsString;

                               dmgeral.bus_cd_c_ite.Close;
                               dmgeral.bus_cd_c_ite.Data :=
                                 dmgeral.bus_cd_c_ite.DataRequest(
                                   VarArrayOf([0,FAT_CD_R_GAM_C300.fieldByName('ID_ITEM').Text]));

                               cdsItens.FieldByName('DESCRICAO').AsString :=dmgeral.bus_cd_c_ite.fieldByName('DESCRICAO').AsString;
                               cdsItens.post;
                             end;
                          end;
                        FAT_CD_R_GAM_C300.Next;
                      end;
                    FAT_CD_R_GAM_C20.Next;
                  end;

                  FAT_CD_R_GAM_C600.First;
                  while not FAT_CD_R_GAM_C600.Eof do
                    begin
                      FAT_CD_R_GAM_C610.Close;
                      FAT_CD_R_GAM_C610.Data :=
                        FAT_CD_R_GAM_C610.DataRequest(
                          VarArrayOf([FAT_CD_R_GAM_C600n_cupom.Text,FAT_CD_R_GAM_C600serial_impressora.Text, rDtaIni,rDtaFin]));

                      FAT_CD_R_GAM_C610.First;
                      while not FAT_CD_R_GAM_C610.Eof do
                        begin
                          IF not cdsItens.Locate('ID_ITEM',FAT_CD_R_GAM_C610.FieldByName('cod_produto').AsString,[]) Then
                             begin
                               cdsItens.Insert;
                               cdsItens.FieldByName('ID_ITEM').AsString   :=FAT_CD_R_GAM_C610.fieldByName('cod_produto').AsString;

                               dmgeral.bus_cd_c_ite.Close;
                               dmgeral.bus_cd_c_ite.Data :=
                                 dmgeral.bus_cd_c_ite.DataRequest(
                                   VarArrayOf([0,FAT_CD_R_GAM_C610.fieldByName('cod_produto').Text]));

                               cdsItens.FieldByName('DESCRICAO').AsString :=dmgeral.bus_cd_c_ite.fieldByName('DESCRICAO').AsString;
                               cdsItens.post;
                             end;
                          FAT_CD_R_GAM_C610.Next;
                        end;
                      FAT_CD_R_GAM_C600.Next;
                    end;


                  cdsItens.First;
                  while not cdsItens.Eof do
                  begin
                  with Registro0200New do
                    begin
                      COD_ITEM   := cdsItensID_ITEM.AsString;
                      DESCR_ITEM := cdsItensDESCRICAO.AsString;
                      COD_GEN    := '';
                      COD_LST    := '';
                    end;
                    cdsItens.Next;
                  end;
            end;  // fim lista itens
           if TipoArq = 1 then
            begin
              { TODO 1 -oMariel -cValidação :
                27/07/2015 - Se o parametro IND_ISS = 0 (NF com iss) e IND_ICMS = 1 (NF sem icms)
                o registro 400 (tabela de Naturezas) só aceita "OP00" (Lançamento sem repercussão fiscal). }
              FAT_CD_R_GAM_400.First;
              while not FAT_CD_R_GAM_400.Eof do
                begin
                  with Registro0400New do
                    begin
                      COD_NAT   := FAT_CD_R_GAM_400codigo.AsString;
                      DESCR_NAT := copy(FAT_CD_R_GAM_400descricao.AsString,1,60);
                      COP := FAT_CD_R_GAM_400id_classe.AsString; // Luan vai cria o campo classe; 09/03/2016
                    end;
                  FAT_CD_R_GAM_400.Next;
                end;
            end;
        end;
     end;
  end;
ACBrSEF2.WriteBloco_0;
end;

procedure TFAT_FM_M_GAM.GerarArq100;
var
  wRegistroE100: TRegistroSEFE100;
  wRegistroE105: TRegistroSEFE105;
  xempresa: string;
  I: Integer;
begin

  xEmpresa := '';
  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          if xEmpresa <> '' then
           begin
             xEmpresa :=
             xEmpresa + ',' +''''+trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
          if xEmpresa = '' then
           begin
             xEmpresa :=
             xEmpresa +''''+ trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
        end;
    end;

  FAT_CD_R_GAM_E100.First;
  while not FAT_CD_R_GAM_E100.Eof do
    begin
      wRegistroE100:= ACBrSEF2.Bloco_E.RegistroE100New;
      with wRegistroE100 do
        begin
          Case FAT_CD_R_GAM_E100ind_operacao.AsInteger of
            0: IND_OPER := SefioEntrada;
            1: IND_OPER := SefioSaida;
          End;

           IND_EMIT     := SefiePropria;
           COD_PART     := RemoveCaracter(FAT_CD_R_GAM_E100cpf_cnpj.AsString,['/','.','-']);
           COD_MUN_SERV := trim(FAT_CD_R_GAM_E100id_cidade.AsString);

           Case FAT_CD_R_GAM_E100modelo.AsInteger of
            01: COD_MOD := SrefNF;
            06: COD_MOD := SrefNFEE;
            21: COD_MOD := SrefNFSC;
            22: COD_MOD := SrefNFST;
            28: COD_MOD := SrefNFGC;
            29: COD_MOD := SrefNFAC;
            55: COD_MOD := SrefNFe;
           End;

          Case FAT_CD_R_GAM_E100situacao_lancto.AsInteger of
            00: COD_SIT := SefcsEmissaonormal;
            01: COD_SIT := SefcsEmissaocontingencia;
            02: COD_SIT := SefcsEmissaocontingenciaFS;
            03: COD_SIT := SefcsEmissaocontingenciaSCAN;
            04: COD_SIT := SefcsEmissaocontingenciaDPEC;
            05: COD_SIT := SefcsEmissaocontingenciaFSDA;
            06: COD_SIT := SefcsEmissaoContingenciaSVCAN;
            07: COD_SIT := SefcsEmissaoContingenciaSVCRS;
            10: COD_SIT := SefcsEmissaoavulsa;
            20: COD_SIT := SefcsComplemento;
            25: COD_SIT := SefcsConsolidavalores;
            80: COD_SIT := SefcsAutorizadenegada;
            90: COD_SIT := SefcsOperacancelada;
            91: COD_SIT := SefcsNegociodesfeito;
            95: COD_SIT := SefcsAjusteinformacoes;
            99: COD_SIT := SefcsSemrepercussaofiscal;
          else  COD_SIT := SefcsNumerainutilizada;
          End;

          QTD_CANC     := FAT_CD_R_GAM_E100qtde_canceladas.AsInteger;
          SER          := copy(FAT_CD_R_GAM_E100serie.AsString,1,3);
          SUB          := copy(FAT_CD_R_GAM_E100sub_serie.AsString,1,2);
          COD_CONS     := FAT_CD_R_GAM_E100cod_consolidado.AsInteger;
          NUM_DOC      := FAT_CD_R_GAM_E100numero.AsInteger;
          QTD_DOC      := FAT_CD_R_GAM_E100qtde_doc.AsInteger;
          DT_EMIS      := FAT_CD_R_GAM_E100dta_emissao.AsDateTime;
          DT_DOC       := FAT_CD_R_GAM_E100dta_documento.AsDateTime;
          COP          := FAT_CD_R_GAM_E100id_classe.AsString;
          NUM_LCTO     := FAT_CD_R_GAM_E100num_lancto_contabil.AsString;
          VL_CONT      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E100vlr_contabil.AsCurrency));

          if dmgeral.BUS_CD_C_PAR_CTRsef_ind_iss.AsInteger = 0 then
            VL_OP_ISS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E100vlr_iss.AsCurrency));

          if dmgeral.BUS_CD_C_PAR_CTRsef_ind_icms.AsInteger = 0 then
            begin
              VL_BC_ICMS   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E100vlr_base_icms.AsCurrency));
              VL_ICMS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E100vlr_icms.AsCurrency));
              VL_ICMS_ST   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E100vlr_icms_subst.AsCurrency));
              VL_OUT_ICMS  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E100vlr_outras.AsCurrency));
            end;

            VL_ISNT_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E100vlr_isenta.AsCurrency));
            COD_INF_OBS  := '';

         //  wRegistroE105:= wRegistroE100.RegistroE105.New(wRegistroE100);

           FAT_CD_R_GAM_E105.Close;
            FAT_CD_R_GAM_E105.Data :=
              FAT_CD_R_GAM_E105.DataRequest(
                VarArrayOf([xempresa,FAT_CD_R_GAM_E100dta_documento.AsString, FAT_CD_R_GAM_E100dta_documento.AsString]));

           FAT_CD_R_GAM_E105.First;
           while not FAT_CD_R_GAM_E105.Eof do
            begin
              if FAT_CD_R_GAM_E105id_fiscal.AsInteger = FAT_CD_R_GAM_E100id_fiscal.AsInteger then
                begin
                   with wRegistroE105 do
                    begin
                      VL_CONT_P      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105vlr_mercadoria.AsCurrency));

                      if dmgeral.BUS_CD_C_PAR_CTRsef_ind_iss.AsInteger = 0 then
                        VL_OP_ISS_P  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105vlr_iss.AsCurrency));

                      CFOP := FAT_CD_R_GAM_E105id_cfo.AsString;

                      if dmgeral.BUS_CD_C_PAR_CTRsef_ind_icms.AsInteger = 0 then
                        begin
                          VL_BC_ICMS_P   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105vlr_base_icms.AsCurrency));
                          ALIQ_ICMS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105aliq_icm.AsCurrency));
                          VL_ICMS_P      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105vlr_icms.AsCurrency));
                          VL_ICMS_ST_P   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105vlr_icms_subst.AsCurrency));
                          VL_OUT_ICMS_P  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105vlr_outras.AsCurrency));
                        end;

                      VL_ISNT_ICMS_P := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E105vlr_isenta.AsCurrency));
                      IND_PETR := FAT_CD_R_GAM_E105ind_petr.AsInteger;
                    end;
                end;
              FAT_CD_R_GAM_E105.Next;
            end;
        end;
        FAT_CD_R_GAM_E100.Next;
    end;
end;

procedure TFAT_FM_M_GAM.GerarArq20;
var
  wRegistroE020: TRegistroSEFE020;
  wRegistroE025: TRegistroSEFE025;
  rDtaIni, rDtaFin: string;
begin
  // Período
   rDtaIni := dtaInicial.Text;
   rDtaFin := dtaFinal.Text;

  FAT_CD_R_GAM_E20.First;
  while not FAT_CD_R_GAM_E20.Eof do
    begin

      wRegistroE020:= ACBrSEF2.Bloco_E.RegistroE020New;

      with wRegistroE020 do
       begin
          Case FAT_CD_R_GAM_E20ind_operacao.AsInteger of
            0: IND_OPER := SefioEntrada;
            1: IND_OPER := SefioSaida;
          End;

          IND_EMIT     := SefiePropria;
          COD_PART     := RemoveCaracter(FAT_CD_R_GAM_E20cpf_cnpj.AsString,['/','.','-']);

          Case FAT_CD_R_GAM_E20modelo.AsInteger of
            01: COD_MOD := SrefNF;
            04: COD_MOD := SrefNFPR;
            55: COD_MOD := SrefNFe;
          End;

          Case FAT_CD_R_GAM_E20situacao_lancto.AsInteger of
            00: COD_SIT := SefcsEmissaonormal;
            01: COD_SIT := SefcsEmissaocontingencia;
            02: COD_SIT := SefcsEmissaocontingenciaFS;
            03: COD_SIT := SefcsEmissaocontingenciaSCAN;
            04: COD_SIT := SefcsEmissaocontingenciaDPEC;
            05: COD_SIT := SefcsEmissaocontingenciaFSDA;
            06: COD_SIT := SefcsEmissaoContingenciaSVCAN;
            07: COD_SIT := SefcsEmissaoContingenciaSVCRS;
            10: COD_SIT := SefcsEmissaoavulsa;
            20: COD_SIT := SefcsComplemento;
            25: COD_SIT := SefcsConsolidavalores;
            80: COD_SIT := SefcsAutorizadenegada;
            90: COD_SIT := SefcsOperacancelada;
            91: COD_SIT := SefcsNegociodesfeito;
            95: COD_SIT := SefcsAjusteinformacoes;
            99: COD_SIT := SefcsSemrepercussaofiscal;
          else  COD_SIT := SefcsNumerainutilizada;
          End;

          SER          := copy(FAT_CD_R_GAM_E20serie.AsString,1,3);
          NUM_DOC      := FAT_CD_R_GAM_E20numero.AsInteger;

          if FAT_CD_R_GAM_C20nfe_chave.AsString = '' then // gerador de chave NFE, CHV;
            begin
              CHV_NFE :=  MontaCheveNfe(copy( dmgeral.BUS_CD_C_PARid_cidade.AsString,1,2),
                          FAT_CD_R_GAM_E20dta_emissao.Value,dmgeral.BUS_CD_C_PARemp_cnpj.AsString,trim(FAT_CD_R_GAM_E20modelo.AsString),trim(FAT_CD_R_GAM_E20serie.AsString),
                          strtoint(trim(FAT_CD_R_GAM_E20numero.AsString)),strtoint(trim(FAT_CD_R_GAM_E20numero.AsString)),'1');
            end
          else
            begin
              CHV_NFE := FAT_CD_R_GAM_E20nfe_chave.AsString;
            end;


          if FAT_CD_R_GAM_E20ind_operacao.AsInteger = 0 then
            DT_EMIS    := FAT_CD_R_GAM_E20dta_emissao.AsDateTime;

          DT_DOC       := FAT_CD_R_GAM_E20dta_documento.AsDateTime;
          COD_NAT      := FAT_CD_R_GAM_E20cod_natureza.AsString;
          COP          := FAT_CD_R_GAM_E20cod_cla_oper.AsString;
          NUM_LCTO     := FAT_CD_R_GAM_E20num_lancto_contabil.AsString;

          Case FAT_CD_R_GAM_E20ind_pagamento.AsInteger of
            0: IND_PGTO     := SefipAVista;
            1: IND_PGTO     := SefAPrazo;
            2: IND_PGTO     := SefNaoOnerada;
          else IND_PGTO     := SefNenhum;
          End;

          VL_CONT      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_contabil.AsCurrency));

          if dmgeral.BUS_CD_C_PAR_CTRsef_ind_iss.AsInteger = 0 then
            VL_OP_ISS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_iss.AsCurrency));

          if dmgeral.BUS_CD_C_PAR_CTRsef_ind_icms.AsInteger = 0 then
            begin
              VL_BC_ICMS   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_base_icms.AsCurrency));
              VL_ICMS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_icms.AsCurrency));
              VL_ICMS_ST   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_icms_subst.AsCurrency));
              VL_ST_E      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_icms_subst_credit.AsCurrency));
              VL_ST_S      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_icms_subst_saida.AsCurrency));
              VL_AT        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_icms_oper_entr.AsCurrency));
              VL_ISNT_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_isenta.AsCurrency));
              VL_OUT_ICMS  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_outras.AsCurrency));
            end;

          if dmgeral.BUS_CD_C_PAR_CTRsef_ind_ipi.AsInteger = 0 then
            begin
              VL_BC_IPI    := 0;
              VL_IPI       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_ipi.AsCurrency));
              VL_ISNT_IPI  := 0;
              VL_OUT_IPI   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E20vlr_outros_ipi.AsCurrency));
            end;
          COD_INF_OBS  := '';

          FAT_CD_R_GAM_E25.First;

          while not FAT_CD_R_GAM_E25.eof do
            begin
              if FAT_CD_R_GAM_E25id_fiscal.AsInteger = FAT_CD_R_GAM_E20id_fiscal.AsInteger then
                begin
                  wRegistroE025:= wRegistroE020.RegistroE025.New(wRegistroE020);
                  with wRegistroE025 do
                  begin
                    VL_CONT_P      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_mercadoria.AsCurrency));

                    if dmgeral.BUS_CD_C_PAR_CTRsef_ind_ipi.AsInteger = 0 then
                      begin
                        VL_OP_ISS_P    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_iss.AsCurrency));
                        VL_BC_IPI_P    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_ipi_base.AsCurrency));
                        VL_IPI_P       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25aliq_icms.AsCurrency));
                        VL_OUT_IPI_P   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_outras.AsCurrency));
                      end;

                    CFOP           := FAT_CD_R_GAM_E25id_cfo.AsString;

                    if dmgeral.BUS_CD_C_PAR_CTRsef_ind_icms.AsInteger = 0 then
                      begin
                        VL_BC_ICMS_P   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_base_icms.AsCurrency));
                        ALIQ_ICMS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25aliq_icms.AsCurrency));
                        VL_ICMS_P      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_icms.AsCurrency));
                        VL_BC_ST_P     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_base_icms_subst.AsCurrency));
                        VL_ICMS_ST_P   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_icms_subst.AsCurrency));
                      end;

                    VL_ISNT_ICMS_P := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_isenta.AsCurrency));
                    VL_ISNT_IPI_P  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E25vlr_ipi_isento.AsCurrency));
                    IND_PETR       := FAT_CD_R_GAM_E25ind_petr.AsInteger;
                    IND_IMUN       := FAT_CD_R_GAM_E25ind_imun.AsInteger;
                  end;
                end;
              FAT_CD_R_GAM_E25.Next;
            end;
       end;
      FAT_CD_R_GAM_E20.Next;
    end;
end;

procedure TFAT_FM_M_GAM.GerarArq60;
var
  wRegistroE060: TRegistroSEFE060;
  wRegistroE065: TRegistroSEFE065;
begin
  FAT_CD_R_GAM_E60.Close;
  FAT_CD_R_GAM_E60.Data :=
    FAT_CD_R_GAM_E60.DataRequest(
      VarArrayOf([rDtaIni, rDtaFin]));

  if FAT_CD_R_GAM_E60.IsEmpty then
    exit;

  wRegistroE060:= ACBrSEF2.Bloco_E.RegistroE060New;

  FAT_CD_R_GAM_E60.First;
  while not FAT_CD_R_GAM_E60.Eof do
    begin
      with wRegistroE060 do
        begin
          COD_MOD      := SrefCCF;
          ECF_CX       := StrToInt(trim(FAT_CD_R_GAM_E60.FieldByName('ecf_cx').AsString));
          ECF_FAB      := FAT_CD_R_GAM_E60.FieldByName('ecf_fab').AsString;
          CRO          := StrToInt(trim(FAT_CD_R_GAM_E60.FieldByName('cro').AsString));
          CRZ          := StrToInt(trim(FAT_CD_R_GAM_E60.FieldByName('crz').AsString));
          DT_DOC       := FAT_CD_R_GAM_E60.FieldByName('data_movimento').AsDateTime;
          NUM_DOC_INI  := 1;  // Luan disse que é 0;
          NUM_DOC_FIN  := FAT_CD_R_GAM_E60.FieldByName('num_doc_fin').AsInteger;
          GT_INI       := StrToInt(RemoveCaracter(FAT_CD_R_GAM_E60.FieldByName('gt_ini').AsString,[',','.']));
          GT_FIN       := StrToInt(RemoveCaracter(FAT_CD_R_GAM_E60.FieldByName('gt_fin').AsString,[',','.']));
          VL_BRT       := StrToInt(RemoveCaracter(FAT_CD_R_GAM_E60.FieldByName('gt_fin').AsString,[',','.'])) -
                            StrToInt(RemoveCaracter(FAT_CD_R_GAM_E60.FieldByName('gt_ini').AsString,[',','.']));
          //VL_BRT       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_brt').AsCurrency));
          VL_CANC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_canc_icms').AsCurrency));
          VL_DESC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_desc_icms').AsCurrency));
          VL_ACMO_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_acmo_icms').AsCurrency));
          VL_OP_ISS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_op_iss').AsCurrency));
          VL_LIQ       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_liq').AsCurrency));
          VL_BC_ICMS   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_bc_icms').AsCurrency));
          VL_ICMS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_icms').AsCurrency));
          VL_ISN       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_isn').AsCurrency));
          VL_NT        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_nt').AsCurrency));
          VL_ST        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E60.FieldByName('vlr_st').AsCurrency));
          COD_INF_OBS  := '';

         // wRegistroE065:= wRegistroE060.RegistroE065.New(wRegistroE060);

          FAT_CD_R_GAM_E65.Close;
          FAT_CD_R_GAM_E65.Data :=
            FAT_CD_R_GAM_E65.DataRequest(
              VarArrayOf([FAT_CD_R_GAM_E60.FieldByName('data_movimento').Text, FAT_CD_R_GAM_E60.FieldByName('data_movimento').Text]));

          FAT_CD_R_GAM_E65.First;
          while not FAT_CD_R_GAM_E65.Eof do
            begin
              with wRegistroE065 do
                begin
                  CFOP         := FAT_CD_R_GAM_E65.FieldByName('id_cfo').AsString;
                  VL_BC_ICMS_P := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E65.FieldByName('vrl_bc_icms_p').AsCurrency));
                  ALIQ_ICMS    := strtocurr(formatcurr('#####0.00',strtocurr(FAT_CD_R_GAM_E65.FieldByName('aliq_icms').AsString)));

                  VL_ICMS_P    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E65.FieldByName('vrl_bc_icms_p').AsCurrency*
                    strtocurr(FAT_CD_R_GAM_E65.FieldByName('aliq_icms').AsString)/100));

                  if FAT_CD_R_GAM_E65.FieldByName('ind_imun').AsString <> '' then
                    IND_IMUN   := FAT_CD_R_GAM_E65.FieldByName('ind_imun').AsInteger
                  else
                    IND_IMUN   := 0;
                end;
              FAT_CD_R_GAM_E65.Next
            end;
         end;
      FAT_CD_R_GAM_E60.Next;
    end;
end;

procedure TFAT_FM_M_GAM.GerarArq80;
var
  wRegistroE080: TRegistroSEFE080;
  wRegistroE085: TRegistroSEFE085;
begin

  FAT_CD_R_GAM_E80.Close;
  FAT_CD_R_GAM_E80.Data :=
    FAT_CD_R_GAM_E80.DataRequest(
      VarArrayOf([rDtaIni, rDtaFin]));

  if FAT_CD_R_GAM_E80.IsEmpty then
    exit;


  wRegistroE080:= ACBrSEF2.Bloco_E.RegistroE080New;

  FAT_CD_R_GAM_E80.First;
  while not FAT_CD_R_GAM_E80.Eof do
    begin
      with wRegistroE080 do
        begin
          IND_TOT      := FAT_CD_R_GAM_E80.FieldByName('int_tot').asInteger;
          COD_MOD      := SrefCCF;

          if trim(FAT_CD_R_GAM_E80.FieldByName('num_mr').AsString) <> '' then
            NUM_MR     := FAT_CD_R_GAM_E80.FieldByName('num_mr').AsInteger
          else
            NUM_MR     := 0;

          DT_DOC       := FAT_CD_R_GAM_E80.FieldByName('dt_doc').AsDateTime;
          VL_BRT       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_bruto').AsCurrency));
          VL_CANC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_cancelado').AsCurrency));
          VL_DESC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_desconto').AsCurrency));
          VL_ACMO_ICMS := 0; // perguntar a Luan;
          VL_OP_ISS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_op_iss').AsCurrency));
          COP          := FAT_CD_R_GAM_E80.FieldByName('id_classe').AsString;
          NUM_LCTO     := FAT_CD_R_GAM_E80.FieldByName('num_lcto').AsString;
          VL_CONT      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_contabil').AsCurrency));
          VL_BC_ICMS   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_bc_icms').AsCurrency));
          VL_ICMS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_icms').AsCurrency));
          VL_ISNT_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_isento').AsCurrency));
          VL_ST        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E80.FieldByName('vlr_st').AsCurrency));

          if trim(FAT_CD_R_GAM_E80.FieldByName('ind_obs').asString) <> '' then
            IND_OBS    := FAT_CD_R_GAM_E80.FieldByName('ind_obs').asInteger
          else
            IND_OBS    := 0;

          wRegistroE085:= wRegistroE080.RegistroE085.New;

          FAT_CD_R_GAM_E85.Close;
          FAT_CD_R_GAM_E85.Data :=
            FAT_CD_R_GAM_E85.DataRequest(
              VarArrayOf([rDtaIni, rDtaFin]));

          FAT_CD_R_GAM_E85.First;
          while not FAT_CD_R_GAM_E85.Eof do
            begin
              with wRegistroE085 do
                begin
                  VL_CONT_P      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E85.FieldByName('vlr_contabil').AsCurrency));
                  VL_OP_ISS_P    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E85.FieldByName('vlr_op_iss_p').AsCurrency));
                  VL_BC_ICMS_P   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E85.FieldByName('vlr_bc_icms').AsCurrency));
                  if trim(FAT_CD_R_GAM_E85.FieldByName('aliquota').AsString) <> 'II' then
                    ALIQ_ICMS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E85.FieldByName('aliquota').AsCurrency))
                  else
                   ALIQ_ICMS    := 0;
                  VL_ISNT_ICMS_P := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E85.FieldByName('vlr_isento').AsCurrency));
                  VL_ST_P        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_E85.FieldByName('vlr_st').AsCurrency));
                  if trim(FAT_CD_R_GAM_E85.FieldByName('ind_imun').AsString) <> '' then
                    IND_IMUN     := FAT_CD_R_GAM_E85.FieldByName('ind_imun').asInteger
                  else
                    IND_IMUN     := 0;
                end;
              FAT_CD_R_GAM_E85.Next;
            end;
        end;
      FAT_CD_R_GAM_E80.Next;
    end;
end;

procedure TFAT_FM_M_GAM.GravarINI;
var cINI : TIniFile;
I : Integer;
begin
  cINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'Emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\Arquivos\REG_030.ini');



  while not dmGeral.BUS_CD_X_SEF_FIN.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_FINCod_fin.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_cod_fin.AsInteger then
        cINI.WriteString('eDOC','cod_fin',dmgeral.BUS_CD_X_SEF_FINDesc_cod_fin.Text);
      dmGeral.BUS_CD_X_SEF_FIN.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_CTD.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_CTDcod_ctd.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_cod_ctd.AsInteger then
        cINI.WriteString('eDOC','cod_ctd',dmgeral.BUS_CD_X_SEF_CTDdesc_cod_ctd.Text);
      dmGeral.BUS_CD_X_SEF_CTD.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_ED.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_EDind_ed.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_ind_ed.AsInteger then
        cINI.WriteString('eDOC','ind_ed',dmgeral.BUS_CD_X_SEF_EDdesc_ind_ed.Text);
      dmGeral.BUS_CD_X_SEF_ED.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_ARQ.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_ARQind_arq.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_ind_arq.AsInteger then
        cINI.WriteString('eDOC','ind_arq',dmgeral.BUS_CD_X_SEF_ARQdesc_ind_arq.Text);
      dmGeral.BUS_CD_X_SEF_ARQ.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_PRF_ISS.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_PRF_ISSprf_iss.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_prf_iss.AsInteger then
        cINI.WriteString('eDOC','prf_iss',dmgeral.BUS_CD_X_SEF_PRF_ISSdesc_prf_iss.Text);
      dmGeral.BUS_CD_X_SEF_PRF_ISS.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_PRF_ICMS.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_PRF_ICMSprf_icms.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_prf_icms.AsInteger then
        cINI.WriteString('eDOC','prf_icms',dmgeral.BUS_CD_X_SEF_PRF_ICMSdesc_prf_icms.Text);
      dmGeral.BUS_CD_X_SEF_PRF_ICMS.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_PRF_RIDF.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_PRF_RIDFprf_ridf.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_prf_ridf.AsInteger then
        cINI.WriteString('eDOC','prf_ridf',dmgeral.BUS_CD_X_SEF_PRF_RIDFdesc_prf_ridf.Text);
      dmGeral.BUS_CD_X_SEF_PRF_RIDF.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_PRF_RUDF.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_PRF_RUDFprf_rudf.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_prf_rudf.AsInteger then
        cINI.WriteString('eDOC','prf_rudf',dmgeral.BUS_CD_X_SEF_PRF_RUDFdesc_prf_rudf.Text);
      dmGeral.BUS_CD_X_SEF_PRF_RUDF.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_PRF_LMC.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_PRF_LMCprf_lmc.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_prf_lmc.AsInteger then
        cINI.WriteString('eDOC','prf_lmc',dmgeral.BUS_CD_X_SEF_PRF_LMCdesc_prf_lmc.Text);
      dmGeral.BUS_CD_X_SEF_PRF_LMC.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_PRF_RV.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_PRF_RVprf_rv.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_prf_rv.AsInteger then
        cINI.WriteString('eDOC','prf_rv',dmgeral.BUS_CD_X_SEF_PRF_RVdesc_prf_rv.Text);
      dmGeral.BUS_CD_X_SEF_PRF_RV.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_PRF_RI.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_PRF_RIprf_ri.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_prf_ri.AsInteger then
        cINI.WriteString('eDOC','prf_ri',dmgeral.BUS_CD_X_SEF_PRF_RIdesc_prf_ri.Text);
      dmGeral.BUS_CD_X_SEF_PRF_RI.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_EC.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_ECind_ec.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_ind_ec.AsInteger then
        cINI.WriteString('eDOC','ind_ec',dmgeral.BUS_CD_X_SEF_ECdesc_ind_ec.Text);
      dmGeral.BUS_CD_X_SEF_EC.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_ISS.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_ISSind_iss.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_ind_iss.AsInteger then
        cINI.WriteString('eDOC','ind_iss',dmgeral.BUS_CD_X_SEF_ISSdesc_ind_iss.Text);
      dmGeral.BUS_CD_X_SEF_ISS.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_RT.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_RTind_rt.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_ind_rt.AsInteger then
        cINI.WriteString('eDOC','ind_rt',dmgeral.BUS_CD_X_SEF_RTdesc_ind_rt.Text);
      dmGeral.BUS_CD_X_SEF_RT.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_ICMS.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_ICMSind_icms.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_ind_icms.AsInteger then
        cINI.WriteString('eDOC','ind_icms',dmgeral.BUS_CD_X_SEF_ICMSdesc_ind_icms.Text);
      dmGeral.BUS_CD_X_SEF_ICMS.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_ST.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_STind_st.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_ind_st.AsInteger then
        cINI.WriteString('eDOC','ind_st',dmgeral.BUS_CD_X_SEF_STdesc_ind_st.Text);
      dmGeral.BUS_CD_X_SEF_ST.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_AT.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_ATind_at.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_ind_at.AsInteger then
        cINI.WriteString('eDOC','ind_at',dmgeral.BUS_CD_X_SEF_ATdesc_ind_at.Text);
      dmGeral.BUS_CD_X_SEF_AT.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_IPI.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_IPIind_ipi.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_ind_ipi.AsInteger then
        cINI.WriteString('eDOC','ind_ipi',dmgeral.BUS_CD_X_SEF_IPIdesc_ind_ipi.Text);
      dmGeral.BUS_CD_X_SEF_IPI.Next;
    end;

  while not dmGeral.BUS_CD_X_SEF_RI.eof do
    begin
      if dmGeral.BUS_CD_X_SEF_RIind_ri.AsInteger = dmGeral.BUS_CD_C_PAR_CTRsef_ind_ri.AsInteger then
        cINI.WriteString('eDOC','ind_ri',dmgeral.BUS_CD_X_SEF_RIdesc_ind_ri.Text);
      dmGeral.BUS_CD_X_SEF_RI.Next;
    end;
end;

function TFAT_FM_M_GAM.Isenta(cds: TClientDataSet; campo: string): integer;
begin
  result := -1;
   if trim(cds.FieldByName(campo).AsString)='' then
    begin
      {if campo = 'id_st_icm' then
        result:= 40;
      if (campo = 'id_st_pis') or (campo = 'id_st_cof') then
        result := 7;}
    end
  else
    result:= StrToInt(Trim(cds.FieldByName(campo).AsString));
end;

function TFAT_FM_M_GAM.RemoveCaracter(Str: String;
  Caracter: array of String): String;
  var
  I: integer;
begin
  Result := Str;
  for I := 0 to High(Caracter) do
    begin
      while Pos(Caracter[I],Result) > 0 do
        delete (Result, Pos(caracter[i],Result),1);
    end;
end;

procedure TFAT_FM_M_GAM.SpedFiscal_0;
var
Data, cItens : string;
z,x: integer;
begin
  ACBrSPEDFiscal1.DT_INI := dtaInicial.Date;
  ACBrSPEDFiscal1.DT_FIN := dtaFinal.Date;

  Data := dtaInventario.Text;

  FAT_CD_X_GAM_150.EmptyDataSet;
  FAT_CD_X_GAM_H30_190.EmptyDataSet;
  FAT_CD_X_GAM_H30_200.EmptyDataSet;

  with ACBrSPEDFiscal1.Bloco_0 do
  begin
    // Dados da Empresa
    with Registro0000New do
    begin
      case dmgeral.BUS_CD_C_PAR_CTReff_layout.AsInteger of
        1: COD_VER := ACBrEFDBlocos.vlVersao100;  // Código 001 - Versão 100 Ato COTEPE 01/01/2008
        2: COD_VER := ACBrEFDBlocos.vlVersao101;  // Código 002 - Versão 101 Ato COTEPE 01/01/2009
        3: COD_VER := ACBrEFDBlocos.vlVersao102;  // Código 003 - Versão 102 Ato COTEPE 01/01/2010
        4: COD_VER := ACBrEFDBlocos.vlVersao103;  // Código 004 - Versão 103 Ato COTEPE 01/01/2011
        5: COD_VER := ACBrEFDBlocos.vlVersao104;  // Código 005 - Versão 104 Ato COTEPE 01/07/2012
        6: COD_VER := ACBrEFDBlocos.vlVersao105;  // Código 006 - Versão 105 Ato COTEPE 01/07/2012
        7: COD_VER := ACBrEFDBlocos.vlVersao106;  // Código 007 - Versão 106 Ato COTEPE 01/07/2013
        8: COD_VER := ACBrEFDBlocos.vlVersao107;  // Código 008 - Versão 107 Ato COTEPE 01/07/2014
        9: COD_VER := ACBrEFDBlocos.vlVersao108;  // Código 009 - Versão 108 Ato COTEPE 01/07/2015
       10: COD_VER := ACBrEFDBlocos.vlVersao109;  // Código 010 - Versão 109 Ato COTEPE 01/07/2016
       11: COD_VER := ACBrEFDBlocos.vlVersao110;  // Código 011 - Versão 110 Ato COTEPE 01/01/2017
       12: COD_VER := ACBrEFDBlocos.vlVersao111;  // Código 012 - Versão 111 Ato COTEPE 01/01/2018
       else Showmessage('Layout invalido!');
      end;

      case dmgeral.BUS_CD_C_PAR_CTReff_finalidade.AsInteger of
       0: COD_FIN := ACBrEFDBlocos.raOriginal;
       1: COD_FIN := ACBrEFDBlocos.raSubstituto;
      end;

      NOME := dmgeral.BUS_CD_C_PARemp_razao.AsString;
      CNPJ := RemoveCaracter(dmgeral.BUS_CD_C_PARemp_cnpj.AsString,['/','.','-']);
      CPF := '';
      UF := dmgeral.BUS_CD_C_PARint_uf.AsString;

      if (UpperCase(dmgeral.BUS_CD_C_PARemp_ie.AsString) = 'ISENTO') or (dmgeral.BUS_CD_C_PARemp_ie.AsString = '') then
          IE := ''
        else
          IE := RemoveCaracter(Trim(dmgeral.BUS_CD_C_PARemp_ie.AsString),['-','.','/']);

      COD_MUN := StrToInt(trim(dmgeral.BUS_CD_C_PARid_cidade.AsString));

      if dmgeral.BUS_CD_C_PARemp_im.AsString = 'ISENTO' then
          IM := ''
        else
          IM := dmgeral.BUS_CD_C_PARemp_im.AsString;

      SUFRAMA := dmgeral.BUS_CD_C_PARemp_suframa.AsString;

      case dmgeral.BUS_CD_C_PAR_CTReff_perfil.AsInteger of
        0: IND_PERFIL := pfPerfilA;
        1: IND_PERFIL := pfPerfilB;
        2: IND_PERFIL := pfPerfilC;
      end;

      case dmgeral.BUS_CD_C_PAR_CTReff_atividade.AsInteger of
        0: IND_ATIV := atIndustrial;
        1: IND_ATIV := atOutros;
      end;
    end;

    with Registro0001New do
      IND_MOV := ACBrEFDBlocos.imComDados;

      // FILHO - Dados complementares da Empresa
      with Registro0005New do
      begin
        FANTASIA := dmgeral.BUS_CD_C_PARemp_razao.AsString;
        CEP := dmgeral.BUS_CD_C_PARemp_cep.AsString;
        ENDERECO := trim(dmgeral.BUS_CD_C_PARemp_endereco.AsString);
        NUM := dmgeral.BUS_CD_C_PARemp_numero.AsString;
        COMPL := Trim(dmgeral.BUS_CD_C_PARemp_complemento.AsString);
        BAIRRO := dmgeral.BUS_CD_C_PARemp_bairro.AsString;
        FONE := RemoveCaracter(dmgeral.BUS_CD_C_PARemp_telefone.AsString,['(',')','-']);
        FAX := RemoveCaracter(dmgeral.BUS_CD_C_PARemp_fax.AsString,['(',')','-']);
        EMAIL := dmgeral.BUS_CD_C_PARemp_email.AsString;
      end;

      // FILHO - Dados do contador.
      with Registro0100New do
      begin
        NOME := dmgeral.BUS_CD_C_PARcnt_nome.AsString;
        CPF := dmgeral.BUS_CD_C_PARcnt_cpf.AsString;
        CRC := dmgeral.BUS_CD_C_PARcnt_crc.AsString;
        CNPJ := dmgeral.BUS_CD_C_PARcnt_cnpj.AsString;
        CEP := dmgeral.BUS_CD_C_PARcnt_cep.AsString;
        ENDERECO := dmgeral.BUS_CD_C_PARcnt_endereco.AsString;
        NUM := dmgeral.BUS_CD_C_PARcnt_numero.AsString;
        COMPL := dmgeral.BUS_CD_C_PARcnt_complemento.AsString;
        BAIRRO := dmgeral.BUS_CD_C_PARcnt_bairro.AsString;
        FONE := trim(dmgeral.BUS_CD_C_PARcnt_telefone.AsString);
        FAX := trim(dmgeral.BUS_CD_C_PARcnt_fax.AsString);
        EMAIL := dmgeral.BUS_CD_C_PARcnt_email.AsString;
        COD_MUN := Vazio(dmgeral.BUS_CD_C_PAR,'cnt_id_cidade');
      end;

      // FILHO
      FAT_PR_X_GAM_150('''01'',''07'',''08'',''8B'',''09'',''10'',''11'',''26'',''27'',''57'',''04'',''1B'',''55'',''2D'',''59''');

      while not FAT_CD_X_GAM_150.Eof do
        begin
          with Registro0150New do
          begin
            COD_PART := RemoveCaracter(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString,['/','.','-']);
            NOME := FAT_CD_X_GAM_150nome.AsString;
            COD_PAIS := FAT_CD_X_GAM_150cod_pais.AsString;

             if length(RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-'])) = 14 then   // cnpj
                begin
                  CNPJ := RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-']);
                  CPF  := '';
                end
               else
                begin
                  if length(RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-'])) = 11 then  // cpf
                    begin
                      CNPJ := '';
                      CPF  := RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-']);
                    end
                  else
                    begin
                      if length(RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-'])) > 0 then
                      begin
                        if length(RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-'])) > 11 then   // cnpj invalido
                          begin
                            CNPJ := RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-']);
                            CPF  := '';
                          end
                        else    // cpf invalido
                          begin
                            CNPJ := '';
                            CPF  := RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-']);
                          end;
                      end;
                    end;
                end;

            if (UpperCase(FAT_CD_X_GAM_150ie.AsString) = 'ISENTO') or (FAT_CD_X_GAM_150ie.AsString = '') then
              IE := ''
            else
              IE := trim(RemoveCaracter(Trim(FAT_CD_X_GAM_150ie.AsString),['/','.','-']));

            COD_MUN := Vazio(FAT_CD_X_GAM_150,'id_cidade');
            SUFRAMA := FAT_CD_X_GAM_150suframa.AsString;
            ENDERECO := trim(FAT_CD_X_GAM_150endereco.AsString);
            NUM := FAT_CD_X_GAM_150numero.AsString;
            COMPL := trim(FAT_CD_X_GAM_150end_complemento.AsString);
            BAIRRO := trim(FAT_CD_X_GAM_150bairro.AsString);
          end;
          FAT_CD_X_GAM_150.Next;
        end;

      // 0190 - Identificação das Unidades de Medida + Inventario
      if Data <> '  /  /    ' then
        begin
          Data := '  /  /    ';
          FAT_PR_X_GAM_H30_190;
          while not FAT_CD_X_GAM_H30_190.Eof do
          begin
            with Registro0190New do
            begin
              UNID  := FAT_CD_X_GAM_H30_190id_unidade.AsString;
              DESCR := FAT_CD_X_GAM_H30_190descricao.AsString;
            end;
            FAT_CD_X_GAM_H30_190.Next;
          end;
        end
      else
        begin
          // 0190 - Identificação das Unidades de Medida
          cdsUnidade.EmptyDataSet;
          cdsUnidade.IndexFieldNames:='Unid';

          FAT_CD_R_GAM_190.First;
          while not FAT_CD_R_GAM_190.Eof do
          begin
            IF not cdsUnidade.Locate('UNID',trim(AnsiUpperCase(FAT_CD_R_GAM_190.FieldByName('ID_UNIDADE').Text)),[loCaseInsensitive]) Then
                 begin
                   cdsUnidade.Insert;
                   cdsUnidade.FieldByName('UNID').AsString :=trim(AnsiUpperCase(FAT_CD_R_GAM_190.fieldByName('ID_UNIDADE').AsString));
                   cdsUnidade.FieldByName('DESC').AsString :=trim(AnsiLowerCase(FAT_CD_R_GAM_190.fieldByName('DESCRICAO').AsString))+'.';
                   cdsUnidade.Post;
                 end;
          FAT_CD_R_GAM_190.Next
          end;

          cdsUnidade.First;
          while not cdsUnidade.Eof do
          begin
            with Registro0190New do
              begin
                 UNID  := cdsUnidadeunid.AsString;
                 DESCR := cdsUnidadedesc.AsString;
              end;
            cdsUnidade.Next;
          end;
        end;

        // 0200- Inventario
        {Data := dtaInventario.Text;
        if Data <> '  /  /    ' then
          begin
            Data := '  /  /    ';}



              // código novo para 0200
              cdsItens.EmptyDataSet;

//--------------------------Codigo de mariel

             {
              x:=FAT_CD_R_GAM_H30.RecordCount;
              FAT_CD_R_GAM_H30.First;
              while not FAT_CD_R_GAM_H30.Eof do
                  begin
                   if not cdsItens.Locate('id_item',trim(FAT_CD_R_GAM_H30.FieldByName('id_item').AsString),[]) then
                      begin

                        cdsItens.Insert;
                        cdsItens.FieldByName('id_item').AsInteger  :=  FAT_CD_R_GAM_H30id_item.AsInteger;
                        cdsItens.FieldByName('DESCRICAO').AsString :=FAT_CD_R_GAM_H30int_nomeite.AsString;
                        cdsItens.FieldByName('cod_barra').AsString :=FAT_CD_R_GAM_H30cod_barra.AsString;
                        cdsItens.FieldByName('und_compra').AsString :=FAT_CD_R_GAM_H30id_und_compra.AsString;
                        cdsItens.FieldByName('tipo_item').AsString :=FAT_CD_R_GAM_H30tipo_item.AsString;
                        cdsItens.FieldByName('cod_ncm').AsString := FAT_CD_R_GAM_H30id_ncm.AsString;
                        cdsItens.Post;
                      end;
                    FAT_CD_R_GAM_H30.Next;
                  end;

              FAT_CD_R_GAM_C20.First;
              while not FAT_CD_R_GAM_C20.Eof do
                  begin
                    if not ((FAT_CD_R_GAM_C20ind_emitente.AsInteger = 0) and // se perfil for A ou B, e o emitente "proprio" não mostra C170
                           ((dmgeral.BUS_CD_C_PAR_CTReff_perfil.AsInteger = 1) or
                            (dmgeral.BUS_CD_C_PAR_CTReff_perfil.AsInteger = 0))) then
                            begin
                                FAT_CD_R_GAM_C300.Close;
                                  FAT_CD_R_GAM_C300.Data :=
                                    FAT_CD_R_GAM_C300.DataRequest(
                                       VarArrayOf([FAT_CD_R_GAM_C20id_fiscal.Text]));
                                FAT_CD_R_GAM_C300.First;
                                while not (FAT_CD_R_GAM_C300.eof) do
                                   begin
                                     if not cdsItens.Locate('id_item',trim(FAT_CD_R_GAM_C300.FieldByName('id_item').AsString),[]) then
                                        begin

                                          cdsItens.Insert;
                                          cdsItens.FieldByName('id_item').AsInteger  :=FAT_CD_R_GAM_C300id_item.AsInteger;
                                          cdsItens.FieldByName('DESCRICAO').AsString :=FAT_CD_R_GAM_C300desc_item.AsString;
                                          cdsItens.FieldByName('cod_barra').AsString :=FAT_CD_R_GAM_C300cod_barra.AsString;
                                          cdsItens.FieldByName('und_compra').AsString:=FAT_CD_R_GAM_C300id_und_compra.AsString;
                                          cdsItens.FieldByName('tipo_item').AsString :=FAT_CD_R_GAM_C300tipo_item.AsString;
                                          cdsItens.FieldByName('cod_ncm').AsString   :=FAT_CD_R_GAM_C300id_ncm.AsString;
                                          cdsItens.Post;
                                        end;
                                     FAT_CD_R_GAM_C300.Next;
                                   end;
                            end;
                    FAT_CD_R_GAM_C20.Next;
                  end;




               FAT_CD_R_GAM_C400.First;
               while not FAT_CD_R_GAM_C400.Eof do
                    begin
                      FAT_CD_R_GAM_C405.Close;
                      FAT_CD_R_GAM_C405.Data :=
                        FAT_CD_R_GAM_C405.DataRequest(
                          VarArrayOf([FAT_CD_R_GAM_C400ecf_serial_impressora.Text,rDtaIni, rDtaFin]));
                      if not FAT_CD_R_GAM_C405.IsEmpty then
                         begin
                           while not (FAT_CD_R_GAM_C405.Eof) do
                              begin
                                FAT_CD_R_GAM_C420.Close;
                                FAT_CD_R_GAM_C420.Data :=
                                  FAT_CD_R_GAM_C420.DataRequest(
                                    VarArrayOf([FAT_CD_R_GAM_C400ecf_serial_impressora.Text,FAT_CD_R_GAM_C405data_movimento.AsDateTime]));

                                FAT_CD_R_GAM_C420.First;

                                while not FAT_CD_R_GAM_C420.eof do
                                    begin
                                      if dmgeral.BUS_CD_C_PAR_CTReff_perfil.AsInteger = 1 then // pfPerfilB
                                         begin
                                            FAT_CD_R_GAM_C425.Close;
                                            FAT_CD_R_GAM_C425.Data :=
                                             FAT_CD_R_GAM_C425.DataRequest(
                                                  VarArrayOf([FAT_CD_R_GAM_C400ecf_serial_impressora.Text,
                                                              FAT_CD_R_GAM_C420data_movimento.AsDateTime,
                                                              FAT_CD_R_GAM_C420totalizador.AsString]));

                                            FAT_CD_R_GAM_C425.First;
                                            while not FAT_CD_R_GAM_C425.eof  do
                                                begin
                                                   if not cdsItens.Locate('id_item',trim(FAT_CD_R_GAM_C425.FieldByName('id_item').AsString),[]) then
                                                      begin

                                                        cdsItens.Insert;
                                                        cdsItens.FieldByName('id_item').AsInteger  :=FAT_CD_R_GAM_C425id_item.AsInteger;
                                                        cdsItens.FieldByName('DESCRICAO').AsString :=FAT_CD_R_GAM_C425descricao.AsString;
                                                        cdsItens.FieldByName('cod_barra').AsString :=FAT_CD_R_GAM_C425cod_barra.AsString;
                                                        cdsItens.FieldByName('und_compra').AsString:=FAT_CD_R_GAM_C425id_und_compra.AsString;
                                                        cdsItens.FieldByName('tipo_item').AsString :=FAT_CD_R_GAM_C425tipo_item.AsString;
                                                        cdsItens.FieldByName('cod_ncm').AsString   :=FAT_CD_R_GAM_C425id_ncm.AsString;
                                                        cdsItens.Post;
                                                      end;
                                                   FAT_CD_R_GAM_C425.Next;
                                                end;
                                         end;
                                      FAT_CD_R_GAM_C420.Next;
                                    end;
                                FAT_CD_R_GAM_C405.Next;
                              end;
                         end;
                      FAT_CD_R_GAM_C400.Next;
                    end;




              cdsItens.First;
              while not cdsItens.Eof do
                  begin
                        with Registro0200New do
                            begin
                               COD_ITEM   := cdsItens.FieldByName('id_item').AsString;
                               DESCR_ITEM := cdsItens.FieldByName('DESCRICAO').AsString;
                               COD_BARRA := cdsItens.FieldByName('cod_barra').AsString;
                               UNID_INV  := cdsItens.FieldByName('und_compra').AsString;

                                Case cdsItens.FieldByName('tipo_item').Asinteger of
                                  00: TIPO_ITEM := ACBrEFDBlocos.tiMercadoriaRevenda;
                                  01: TIPO_ITEM := ACBrEFDBlocos.tiMateriaPrima;
                                  02: TIPO_ITEM := ACBrEFDBlocos.tiEmbalagem;
                                  03: TIPO_ITEM := ACBrEFDBlocos.tiProdutoProcesso;
                                  04: TIPO_ITEM := ACBrEFDBlocos.tiProdutoAcabado;
                                  05: TIPO_ITEM := ACBrEFDBlocos.tiSubproduto;
                                  06: TIPO_ITEM := ACBrEFDBlocos.tiProdutoIntermediario;
                                  07: TIPO_ITEM := ACBrEFDBlocos.tiMaterialConsumo;
                                  08: TIPO_ITEM := ACBrEFDBlocos.tiAtivoImobilizado;
                                  09: TIPO_ITEM := ACBrEFDBlocos.tiServicos;
                                  10: TIPO_ITEM := ACBrEFDBlocos.tiOutrosInsumos;
                                  99: TIPO_ITEM := ACBrEFDBlocos.tiOutras;
                                end;

                                COD_NCM         := cdsItens.FieldByName('cod_ncm').AsString;
                                COD_GEN         := cdsItens.FieldByName('cod_gen').AsString;
                                ALIQ_ICMS       := cdsItens.FieldByName('aliq_icms').AsInteger;
                                CEST            := '';
                            end;
                    cdsItens.Next;
                  end;
                        }




//------------------------------Fim do codigo de mariel


              FAT_CD_R_GAM_H30.First;
              while not FAT_CD_R_GAM_H30.Eof do
                  begin
                   if not cdsItens.Locate('id_item',trim(FAT_CD_R_GAM_H30.FieldByName('id_item').AsString),[]) then
                      begin
                        cdsItens.Insert;
                        cdsItensid_item.AsInteger :=  FAT_CD_R_GAM_H30id_item.AsInteger;
                        cdsItens.Post;
                        with Registro0200New do
                            begin
                               COD_ITEM   := FAT_CD_R_GAM_H30id_item.AsString;
                               DESCR_ITEM := trim(FAT_CD_R_GAM_H30int_nomeite.AsString);
                               COD_BARRA := FAT_CD_R_GAM_H30cod_barra.AsString;
                               UNID_INV  := FAT_CD_R_GAM_H30id_und_compra.AsString;

                                Case FAT_CD_R_GAM_H30tipo_item.AsInteger of
                                  00: TIPO_ITEM := ACBrEFDBlocos.tiMercadoriaRevenda;
                                  01: TIPO_ITEM := ACBrEFDBlocos.tiMateriaPrima;
                                  02: TIPO_ITEM := ACBrEFDBlocos.tiEmbalagem;
                                  03: TIPO_ITEM := ACBrEFDBlocos.tiProdutoProcesso;
                                  04: TIPO_ITEM := ACBrEFDBlocos.tiProdutoAcabado;
                                  05: TIPO_ITEM := ACBrEFDBlocos.tiSubproduto;
                                  06: TIPO_ITEM := ACBrEFDBlocos.tiProdutoIntermediario;
                                  07: TIPO_ITEM := ACBrEFDBlocos.tiMaterialConsumo;
                                  08: TIPO_ITEM := ACBrEFDBlocos.tiAtivoImobilizado;
                                  09: TIPO_ITEM := ACBrEFDBlocos.tiServicos;
                                  10: TIPO_ITEM := ACBrEFDBlocos.tiOutrosInsumos;
                                  99: TIPO_ITEM := ACBrEFDBlocos.tiOutras;
                                end;

                                COD_NCM         := FAT_CD_R_GAM_H30id_ncm.AsString;
                                COD_GEN         := FAT_CD_R_GAM_H30cod_gen.AsString;
                                ALIQ_ICMS       := FAT_CD_R_GAM_H30aliq_icms.AsInteger;
                                CEST            := FAT_CD_R_GAM_H30cest.AsString;
                            end;
                      end;
                    FAT_CD_R_GAM_H30.Next;
                  end;



              FAT_CD_R_GAM_C20.First;
              while not FAT_CD_R_GAM_C20.Eof do
                  begin
                    if not ((FAT_CD_R_GAM_C20ind_emitente.AsInteger = 0) and // se perfil for A ou B, e o emitente "proprio" não mostra C170
                           ((dmgeral.BUS_CD_C_PAR_CTReff_perfil.AsInteger = 1) or
                            (dmgeral.BUS_CD_C_PAR_CTReff_perfil.AsInteger = 0))) then
                            begin
                                FAT_CD_R_GAM_C300.Close;
                                  FAT_CD_R_GAM_C300.Data :=
                                    FAT_CD_R_GAM_C300.DataRequest(
                                       VarArrayOf([FAT_CD_R_GAM_C20id_fiscal.Text]));

                                FAT_CD_R_GAM_C300.First;
                                while not (FAT_CD_R_GAM_C300.eof) do
                                   begin
                                     if not cdsItens.Locate('id_item',trim(FAT_CD_R_GAM_C300.FieldByName('id_item').AsString),[]) then
                                        begin
                                           cdsItens.Insert;
                                           cdsItensid_item.AsInteger :=  FAT_CD_R_GAM_C300id_item.AsInteger;
                                           cdsItens.Post;
                                           with Registro0200New do
                                                begin
                                                  COD_ITEM   := FAT_CD_R_GAM_C300id_item.AsString;
                                                  DESCR_ITEM := trim(FAT_CD_R_GAM_C300desc_item.AsString);
                                                  COD_BARRA := FAT_CD_R_GAM_C300cod_barra.AsString;
                                                  UNID_INV  := FAT_CD_R_GAM_C300id_und_compra.AsString;

                                                  Case FAT_CD_R_GAM_C300tipo_item.AsInteger of
                                                    00: TIPO_ITEM := ACBrEFDBlocos.tiMercadoriaRevenda;
                                                    01: TIPO_ITEM := ACBrEFDBlocos.tiMateriaPrima;
                                                    02: TIPO_ITEM := ACBrEFDBlocos.tiEmbalagem;
                                                    03: TIPO_ITEM := ACBrEFDBlocos.tiProdutoProcesso;
                                                    04: TIPO_ITEM := ACBrEFDBlocos.tiProdutoAcabado;
                                                    05: TIPO_ITEM := ACBrEFDBlocos.tiSubproduto;
                                                    06: TIPO_ITEM := ACBrEFDBlocos.tiProdutoIntermediario;
                                                    07: TIPO_ITEM := ACBrEFDBlocos.tiMaterialConsumo;
                                                    08: TIPO_ITEM := ACBrEFDBlocos.tiAtivoImobilizado;
                                                    09: TIPO_ITEM := ACBrEFDBlocos.tiServicos;
                                                    10: TIPO_ITEM := ACBrEFDBlocos.tiOutrosInsumos;
                                                    99: TIPO_ITEM := ACBrEFDBlocos.tiOutras;
                                                  end;

                                                  COD_NCM         := FAT_CD_R_GAM_C300id_ncm.AsString;
                                                  COD_GEN         := FAT_CD_R_GAM_C300cod_gen.AsString;
                                                  ALIQ_ICMS       := FAT_CD_R_GAM_C300aliq_icms.AsInteger;
                                                  CEST            := FAT_CD_R_GAM_C300cest.AsString;
                                                end;
                                        end;
                                     FAT_CD_R_GAM_C300.Next;
                                   end;
                            end;
                    FAT_CD_R_GAM_C20.Next;
                  end;

               FAT_CD_R_GAM_C400.First;
               while not FAT_CD_R_GAM_C400.Eof do
                    begin
                      FAT_CD_R_GAM_C405.Close;
                      FAT_CD_R_GAM_C405.Data :=
                        FAT_CD_R_GAM_C405.DataRequest(
                          VarArrayOf([FAT_CD_R_GAM_C400ecf_serial_impressora.Text,rDtaIni, rDtaFin]));
                      if not FAT_CD_R_GAM_C405.IsEmpty then
                         begin
                           while not (FAT_CD_R_GAM_C405.Eof) do
                              begin
                                FAT_CD_R_GAM_C420.Close;
                                FAT_CD_R_GAM_C420.Data :=
                                  FAT_CD_R_GAM_C420.DataRequest(
                                    VarArrayOf([FAT_CD_R_GAM_C400ecf_serial_impressora.Text,FAT_CD_R_GAM_C405data_movimento.AsDateTime]));

                                FAT_CD_R_GAM_C420.First;

                                while not FAT_CD_R_GAM_C420.eof do
                                    begin
                                      if dmgeral.BUS_CD_C_PAR_CTReff_perfil.AsInteger = 1 then // pfPerfilB
                                         begin
                                            FAT_CD_R_GAM_C425.Close;
                                            FAT_CD_R_GAM_C425.Data :=
                                             FAT_CD_R_GAM_C425.DataRequest(
                                                  VarArrayOf([FAT_CD_R_GAM_C400ecf_serial_impressora.Text,
                                                              FAT_CD_R_GAM_C420data_movimento.AsDateTime,
                                                              FAT_CD_R_GAM_C420totalizador.AsString]));

                                            FAT_CD_R_GAM_C425.First;
                                            while not FAT_CD_R_GAM_C425.eof  do
                                                begin
                                                   if not cdsItens.Locate('id_item',trim(FAT_CD_R_GAM_C425.FieldByName('id_item').AsString),[]) then
                                                      begin
                                                         cdsItens.Insert;
                                                         cdsItensid_item.AsInteger :=  FAT_CD_R_GAM_C425id_item.AsInteger;
                                                         cdsItens.Post;
                                                         with Registro0200New do
                                                              begin
                                                                COD_ITEM   := FAT_CD_R_GAM_C425id_item.AsString;
                                                                DESCR_ITEM := trim(FAT_CD_R_GAM_C425descricao.AsString);
                                                                COD_BARRA := FAT_CD_R_GAM_C425cod_barra.AsString;
                                                                UNID_INV  := FAT_CD_R_GAM_C425id_und_compra.AsString;

                                                                Case FAT_CD_R_GAM_C425tipo_item.AsInteger of
                                                                  00: TIPO_ITEM := ACBrEFDBlocos.tiMercadoriaRevenda;
                                                                  01: TIPO_ITEM := ACBrEFDBlocos.tiMateriaPrima;
                                                                  02: TIPO_ITEM := ACBrEFDBlocos.tiEmbalagem;
                                                                  03: TIPO_ITEM := ACBrEFDBlocos.tiProdutoProcesso;
                                                                  04: TIPO_ITEM := ACBrEFDBlocos.tiProdutoAcabado;
                                                                  05: TIPO_ITEM := ACBrEFDBlocos.tiSubproduto;
                                                                  06: TIPO_ITEM := ACBrEFDBlocos.tiProdutoIntermediario;
                                                                  07: TIPO_ITEM := ACBrEFDBlocos.tiMaterialConsumo;
                                                                  08: TIPO_ITEM := ACBrEFDBlocos.tiAtivoImobilizado;
                                                                  09: TIPO_ITEM := ACBrEFDBlocos.tiServicos;
                                                                  10: TIPO_ITEM := ACBrEFDBlocos.tiOutrosInsumos;
                                                                  99: TIPO_ITEM := ACBrEFDBlocos.tiOutras;
                                                                end;

                                                                COD_NCM         := FAT_CD_R_GAM_C425id_ncm.AsString;
                                                                COD_GEN         := FAT_CD_R_GAM_C425cod_gen.AsString;
                                                                ALIQ_ICMS       := FAT_CD_R_GAM_C425aliq_icms.AsInteger;
                                                                CEST            := FAT_CD_R_GAM_C425cest.AsString;
                                                              end;
                                                      end;
                                                   FAT_CD_R_GAM_C425.Next;
                                                end;
                                         end;
                                      FAT_CD_R_GAM_C420.Next;
                                    end;
                                FAT_CD_R_GAM_C405.Next;
                              end;
                         end;
                      FAT_CD_R_GAM_C400.Next;
                    end;

              FAT_CD_R_GAM_H30.First;
              FAT_CD_R_GAM_C20.First;
              FAT_CD_R_GAM_C400.First;


            {FAT_PR_X_GAM_H30_200;                     // Puxa somente itens do itens do inventário
            while not FAT_CD_X_GAM_H30_200.Eof do
                begin
                  with Registro0200New do
                      begin
                        COD_ITEM   := FAT_CD_X_GAM_H30_200id_item.AsString;
                        DESCR_ITEM := FAT_CD_X_GAM_H30_200descricao.AsString;
                        COD_BARRA := FAT_CD_X_GAM_H30_200cod_barra.AsString;
                        UNID_INV  := FAT_CD_X_GAM_H30_200id_und_compra.AsString;

                        Case FAT_CD_X_GAM_H30_200tipo_item.AsInteger of
                          00: TIPO_ITEM := ACBrEFDBlocos.tiMercadoriaRevenda;
                          01: TIPO_ITEM := ACBrEFDBlocos.tiMateriaPrima;
                          02: TIPO_ITEM := ACBrEFDBlocos.tiEmbalagem;
                          03: TIPO_ITEM := ACBrEFDBlocos.tiProdutoProcesso;
                          04: TIPO_ITEM := ACBrEFDBlocos.tiProdutoAcabado;
                          05: TIPO_ITEM := ACBrEFDBlocos.tiSubproduto;
                          06: TIPO_ITEM := ACBrEFDBlocos.tiProdutoIntermediario;
                          07: TIPO_ITEM := ACBrEFDBlocos.tiMaterialConsumo;
                          08: TIPO_ITEM := ACBrEFDBlocos.tiAtivoImobilizado;
                          09: TIPO_ITEM := ACBrEFDBlocos.tiServicos;
                          10: TIPO_ITEM := ACBrEFDBlocos.tiOutrosInsumos;
                          99: TIPO_ITEM := ACBrEFDBlocos.tiOutras;
                        end;

                        COD_NCM         := FAT_CD_X_GAM_H30_200id_ncm.AsString;
                        COD_GEN         := FAT_CD_X_GAM_H30_200cod_gen.AsString;
                        ALIQ_ICMS       := FAT_CD_X_GAM_H30_200aliq_icms.AsInteger;
                        CEST            := FAT_CD_X_GAM_H30_200cest.AsString;
                      end;
                 FAT_CD_X_GAM_H30_200.Next;
                end;
          end
        else
          begin
            FAT_CD_R_GAM_200.First;
            while not FAT_CD_R_GAM_200.Eof do
            begin
              with Registro0200New do
              begin
                COD_ITEM   := FAT_CD_R_GAM_200id_item.AsString;
                DESCR_ITEM := FAT_CD_R_GAM_200descricao.AsString;
                COD_BARRA := FAT_CD_R_GAM_200cod_barra.AsString;
                UNID_INV  := FAT_CD_R_GAM_200id_und_compra.AsString;

                Case FAT_CD_R_GAM_200tipo_item.AsInteger of
                  00: TIPO_ITEM := ACBrEFDBlocos.tiMercadoriaRevenda;
                  01: TIPO_ITEM := ACBrEFDBlocos.tiMateriaPrima;
                  02: TIPO_ITEM := ACBrEFDBlocos.tiEmbalagem;
                  03: TIPO_ITEM := ACBrEFDBlocos.tiProdutoProcesso;
                  04: TIPO_ITEM := ACBrEFDBlocos.tiProdutoAcabado;
                  05: TIPO_ITEM := ACBrEFDBlocos.tiSubproduto;
                  06: TIPO_ITEM := ACBrEFDBlocos.tiProdutoIntermediario;
                  07: TIPO_ITEM := ACBrEFDBlocos.tiMaterialConsumo;
                  08: TIPO_ITEM := ACBrEFDBlocos.tiAtivoImobilizado;
                  09: TIPO_ITEM := ACBrEFDBlocos.tiServicos;
                  10: TIPO_ITEM := ACBrEFDBlocos.tiOutrosInsumos;
                  99: TIPO_ITEM := ACBrEFDBlocos.tiOutras;
                end;

                COD_NCM         := FAT_CD_R_GAM_200id_ncm.AsString;
                COD_GEN         :=  FAT_CD_R_GAM_200tipo_item.AsString;
                ALIQ_ICMS       := FAT_CD_R_GAM_200aliq_icms.AsInteger;
                CEST            := FAT_CD_R_GAM_200cest.AsString;
              end;
              FAT_CD_R_GAM_200.Next;
            end;
          end;




        // 0400 - Tabela de Natureza da Operação/Prestação (Produtos e Serviços)
       { FAT_CD_R_GAM_400.First;
        while not FAT_CD_R_GAM_400.Eof do
        begin
          with Registro0400New do
          begin
            COD_NAT := FAT_CD_R_GAM_400codigo.AsString;
            DESCR_NAT := FAT_CD_R_GAM_400descricao.AsString;
          end;
        FAT_CD_R_GAM_400.Next;
        end;  }

        // 0450 - Tabela de Informação complementar
        {FAT_CD_R_GAM_450.First;
        while not FAT_CD_R_GAM_450.Eof do
        begin
          with Registro0450New do
          begin
            COD_INF := FAT_CD_R_GAM_450codigo.AsString;
            TXT := FAT_CD_R_GAM_450descricao.AsString;
          end;
        FAT_CD_R_GAM_450.Next;
        end;}
  end;
end;

procedure TFAT_FM_M_GAM.SpedFiscal_C;
var
Cont_Num_Item,teste: integer;
 i: integer;

begin
    Cont_Num_Item:= 0;
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco C.
  with ACBrSPEDFiscal1.Bloco_C do
  begin
    with RegistroC001New do
        begin
          IND_MOV := ACBrEFDBlocos.imComDados;

          FAT_CD_R_GAM_C20.First;
          while not FAT_CD_R_GAM_C20.Eof do
              begin
                with RegistroC100New do
                    begin
                      case FAT_CD_R_GAM_C20situacao_lancto.AsInteger of
                        0: COD_SIT := ACBrEFDBlocos.sdRegular;
                        1: COD_SIT := ACBrEFDBlocos.sdExtempRegular;
                        2: COD_SIT := ACBrEFDBlocos.sdCancelado;
                        3: COD_SIT := ACBrEFDBlocos.sdCanceladoExtemp;
                        4: COD_SIT := ACBrEFDBlocos.sdDoctoDenegado;
                        5: COD_SIT := ACBrEFDBlocos.sdDoctoNumInutilizada;
                        6: COD_SIT := ACBrEFDBlocos.sdFiscalCompl;
                        7: COD_SIT := ACBrEFDBlocos.sdExtempCompl;
                        8: COD_SIT := ACBrEFDBlocos.sdRegimeEspecNEsp;
                      end;

                      case FAT_CD_R_GAM_C20ind_operacao.AsInteger of
                        0: IND_OPER := ACBrEFDBlocos.tpEntradaAquisicao;
                        1: IND_OPER := ACBrEFDBlocos.tpSaidaPrestacao;
                      end;

                      COD_MOD := FAT_CD_R_GAM_C20modelo.AsString;
                      NUM_DOC := FAT_CD_R_GAM_C20numero.AsString;

                      if not(FAT_CD_R_GAM_C20situacao_lancto.AsInteger = 5) then
                         begin
                            if FAT_CD_R_GAM_C20nfe_chave.AsString = '' then // gerador de chave NFE, CHV;
                              begin
                                CHV_NFE :=  MontaCheveNfe(copy( dmgeral.BUS_CD_C_PARid_cidade.AsString,1,2),
                                            FAT_CD_R_GAM_C20dta_emissao.Value,dmgeral.BUS_CD_C_PARemp_cnpj.AsString,trim(FAT_CD_R_GAM_C20modelo.AsString),trim(FAT_CD_R_GAM_C20serie.AsString),
                                            strtoint(trim(FAT_CD_R_GAM_C20numero.AsString)),strtoint(trim(FAT_CD_R_GAM_C20numero.AsString)),'1');
                              end
                            else
                              begin
                                CHV_NFE := FAT_CD_R_GAM_C20nfe_chave.AsString; //+ StringofChar('0', 44 - Length(FAT_CD_R_GAM_C20nfe_chave.text));
                              end;

                          SER := FAT_CD_R_GAM_C20serie.AsString;

                          case FAT_CD_R_GAM_C20ind_emitente.AsInteger  of
                            0: IND_EMIT := ACBrEFDBlocos.edEmissaoPropria;
                            1: IND_EMIT := ACBrEFDBlocos.edTerceiros;
                          end;


                          //if RemoveCaracter(FAT_CD_R_GAM_C20cpf_cnpj.AsString,['/','.','-']) = '01145106000227' then
                          //   showmessage('oi');

                          if FAT_CD_R_GAM_C20situacao_lancto.AsInteger = 2 then
                             begin
                                COD_PART := '';
                                {DT_DOC := '';
                                DT_E_S := '';

                                VL_DOC := '';
                                IND_PGTO := '';
                                VL_DESC := '';
                                VL_ABAT_NT := '';
                                VL_MERC := '';
                                IND_FRT := '';

                                VL_SEG        := '';
                                VL_OUT_DA     := '';
                                VL_BC_ICMS    := '';
                                VL_ICMS       := '';
                                VL_BC_ICMS_ST := '';
                                VL_ICMS_ST    := '';
                                VL_IPI        := '';
                                VL_PIS        := '';
                                VL_COFINS     := '';
                                VL_PIS_ST     := '';
                                VL_COFINS_ST  := '';    }
                             end
                          else
                             begin
                                if not( (FAT_CD_R_GAM_C20situacao_lancto.AsInteger = 2) or
                                         (FAT_CD_R_GAM_C20situacao_lancto.AsInteger = 3) or
                                         (FAT_CD_R_GAM_C20situacao_lancto.AsInteger = 4) ) then
                                  begin

                                     { case FAT_CD_R_GAM_C20ind_emitente.AsInteger  of
                                        0: IND_EMIT := ACBrEFDBlocos.edEmissaoPropria;
                                        1: IND_EMIT := ACBrEFDBlocos.edTerceiros;
                                      end;}

                                      //if RemoveCaracter(FAT_CD_R_GAM_C20cpf_cnpj.AsString =  then


                                      COD_PART := RemoveCaracter(FAT_CD_R_GAM_C20cpf_cnpj.AsString,['/','.','-']); //Baseado no registro 0150


                                      DT_DOC := FAT_CD_R_GAM_C20dta_emissao.AsDateTime;
                                      DT_E_S := FAT_CD_R_GAM_C20dta_documento.AsDateTime;

                                      VL_DOC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_contabil.AsCurrency));

                                      case FAT_CD_R_GAM_C20ind_pagamento.AsInteger of
                                        0: IND_PGTO := ACBrEFDBlocos.tpVista;
                                        1: IND_PGTO := ACBrEFDBlocos.tpPrazo;
                                        2: IND_PGTO := ACBrEFDBlocos.tpOutros;
                                        9: IND_PGTO := ACBrEFDBlocos.tpSemPagamento;
                                      else IND_PGTO := ACBrEFDBlocos.tpNenhum;
                                      end;

                                      VL_DESC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_desconto.AsCurrency));
                                      VL_ABAT_NT := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_aba_nt.AsCurrency));
                                      VL_MERC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_mercadoria.AsCurrency));
                                      case FAT_CD_R_GAM_C20ind_frete.AsInteger of
                                        0: IND_FRT := ACBrEFDBlocos.tfPorContaEmitente;
                                        1: IND_FRT := ACBrEFDBlocos.tfPorContaDestinatario;
                                        2: IND_FRT := ACBrEFDBlocos.tfPorContaTerceiros;
                                        9: IND_FRT := ACBrEFDBlocos.tfSemCobrancaFrete;
                                      else IND_FRT := ACBrEFDBlocos.TACBrIndFrt.tfNenhum;
                                      end;

                                      VL_SEG        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_seguro.AsCurrency));
                                      VL_OUT_DA     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_outras.AsCurrency));
                                      VL_BC_ICMS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_base_icms.AsCurrency));
                                      VL_ICMS       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_icms.AsCurrency));
                                      VL_BC_ICMS_ST := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_base_icms_subst.AsCurrency));
                                      VL_ICMS_ST    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_icms_subst.AsCurrency));
                                      VL_IPI        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_ipi.AsCurrency));
                                      VL_PIS        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20pis_valor.AsCurrency));
                                      VL_COFINS     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20cof_valor.AsCurrency));
                                      VL_PIS_ST     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20pis_valor_st.AsCurrency));
                                      VL_COFINS_ST  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20cof_valor_st.AsCurrency));


                                      if not ((FAT_CD_R_GAM_C20ind_emitente.AsInteger = 0) and // se perfil for A ou B, e o emitente "proprio" não mostra C170
                                              ((dmgeral.BUS_CD_C_PAR_CTReff_perfil.AsInteger = 1) or
                                              (dmgeral.BUS_CD_C_PAR_CTReff_perfil.AsInteger = 0))

                                             ) then
                                         begin
                                          // FILHO
                                            FAT_CD_R_GAM_C300.Close;
                                                FAT_CD_R_GAM_C300.Data :=
                                                  FAT_CD_R_GAM_C300.DataRequest(
                                                    VarArrayOf([FAT_CD_R_GAM_C20id_fiscal.Text]));

                                            Cont_Num_Item := 0;

                                            FAT_CD_R_GAM_C300.first;
                                            while not FAT_CD_R_GAM_C300.Eof do
                                                  begin
                                                    if FAT_CD_R_GAM_C300id_fiscal.AsInteger = FAT_CD_R_GAM_C20id_fiscal.AsInteger then
                                                       begin
                                                          with RegistroC170New do // Inicio Adicionar os Itens:
                                                                begin

                                                                  Cont_Num_Item := Cont_Num_Item + 1;

                                                                  NUM_ITEM :=  IntToStr(Cont_Num_Item);

                                                                  COD_ITEM := FAT_CD_R_GAM_C300id_item.AsString;
                                                                  DESCR_COMPL := FAT_CD_R_GAM_C300desc_item.AsString;
                                                                  QTD :=  strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300qtde.AsCurrency));
                                                                  UNID := FAT_CD_R_GAM_C300id_und_compra.AsString;
                                                                  VL_ITEM := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300vlr_liquido.AsCurrency));

                                                                

                                                                  VL_DESC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300vlr_desconto.AsCurrency));

                                                                  Case FAT_CD_R_GAM_C300ind_mov.AsInteger of
                                                                    0: IND_MOV := ACBrEFDBlocos.mfSim;
                                                                    1: IND_MOV := ACBrEFDBlocos.mfNao;
                                                                  end;

                                                                  CST_ICMS := FAT_CD_R_GAM_C300id_st_icm.AsString;
                                                                  CFOP := FAT_CD_R_GAM_C300id_cfo.AsString;
                                                                //  COD_NAT := FAT_CD_R_GAM_C300cod_nat.AsString;
                                                                  VL_BC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300icm_n_base.AsCurrency));
                                                                  ALIQ_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300aliq_icms_i.AsCurrency));
                                                                  VL_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300icm_n_valor.AsCurrency));
                                                                  VL_BC_ICMS_ST := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300icm_s_base.AsCurrency));
                                                                  ALIQ_ST := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300aliq_st.AsCurrency));
                                                                  VL_ICMS_ST := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300icm_s_valor.AsCurrency));

                                                                  case FAT_CD_R_GAM_C300ind_apur.AsInteger of
                                                                    0: IND_APUR := ACBrEFDBlocos.iaMensal;
                                                                    1: IND_APUR := ACBrEFDBlocos.iaDecendial;
                                                                  else IND_APUR := ACBrEFDBlocos.iaNenhum;
                                                                  end;

                                                                  if ((copy(FAT_CD_R_GAM_C300id_cfo.AsString,1,1)='1') or
                                                                      (copy(FAT_CD_R_GAM_C300id_cfo.AsString,1,1)='2') or
                                                                      (copy(FAT_CD_R_GAM_C300id_cfo.AsString,1,1)='3')) and
                                                                      (FAT_CD_R_GAM_C300id_st_ipi.AsString = '99') then
                                                                    begin
                                                                      CST_IPI := '49';
                                                                    end
                                                                  else
                                                                    begin
                                                                      CST_IPI := FAT_CD_R_GAM_C300id_st_ipi.AsString;
                                                                    end;

                                                                  COD_ENQ := FAT_CD_R_GAM_C300cod_enq.AsString;
                                                                  VL_BC_IPI := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300ipi_base.AsCurrency));
                                                                  ALIQ_IPI := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300ipi_aliquota.AsCurrency));
                                                                  VL_IPI := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300ipi_valor.AsCurrency));

                                                                  if FAT_CD_R_GAM_C300id_st_pis.AsInteger >= 10 then
                                                                    CST_PIS := FAT_CD_R_GAM_C300id_st_pis.AsString
                                                                  else
                                                                    CST_PIS := IntToStr(FAT_CD_R_GAM_C300id_st_pis.AsInteger) + '0';

                                                                  VL_BC_PIS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300pis_base.AsCurrency));
                                                                  ALIQ_PIS_PERC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300aliq_pis.AsCurrency));

                                                                  if FAT_CD_R_GAM_C300quant_bc_pis.AsString = '' then
                                                                  QUANT_BC_PIS := 0
                                                                  else
                                                                  QUANT_BC_PIS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300quant_bc_pis.AsCurrency));

                                                                  ALIQ_PIS_R := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300pis_aliquota.AsCurrency));
                                                                  VL_PIS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300pis_valor.AsCurrency));

                                                                  if FAT_CD_R_GAM_C300id_st_cof.AsInteger >= 10 then
                                                                    CST_COFINS := FAT_CD_R_GAM_C300id_st_cof.AsString
                                                                  else
                                                                    CST_COFINS := IntToStr(FAT_CD_R_GAM_C300id_st_cof.AsInteger) + '0';

                                                                  VL_BC_COFINS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300cof_base.AsCurrency));
                                                                  ALIQ_COFINS_PERC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300aliq_cof.AsCurrency));

                                                                  if FAT_CD_R_GAM_C300quant_bc_cof.AsString = '' then
                                                                  QUANT_BC_COFINS := 0
                                                                  else
                                                                  QUANT_BC_COFINS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300quant_bc_cof.AsCurrency));

                                                                  ALIQ_COFINS_R := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300cof_aliquota.AsCurrency));
                                                                  VL_COFINS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300cof_valor.AsCurrency));
                                                                  COD_CTA := FAT_CD_R_GAM_C300cod_cta.AsString;
                                                                end;
                                                        end;
                                                      FAT_CD_R_GAM_C300.Next;
                                                  end; // Fim dos Itens;
                                          end; // Fim da condição de emissão propria;

                                      // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55).

                                        FAT_CD_R_GAM_C190.Close;
                                          FAT_CD_R_GAM_C190.Data :=
                                            FAT_CD_R_GAM_C190.DataRequest(
                                              VarArrayOf([FAT_CD_R_GAM_C20id_fiscal.Text]));

                                        //if FAT_CD_R_GAM_C20id_fiscal.AsInteger = 2891 then
                                        //  teste := FAT_CD_R_GAM_C20id_fiscal.AsInteger;



                                        FAT_CD_R_GAM_C190.First;
                                        while not FAT_CD_R_GAM_C190.Eof do
                                            begin
                                              with RegistroC190New do
                                                  begin
                                                    CST_ICMS := FAT_CD_R_GAM_C190id_st_icm.AsString;
                                                    CFOP := FAT_CD_R_GAM_C190id_cfo.AsString;
                                                    ALIQ_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C190icm_n_aliquota.AsCurrency));
                                                    VL_OPR := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C190vlr_operacao.AsCurrency));
                                                    VL_BC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C190vlr_bc_icms.AsCurrency));
                                                    VL_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C190vlr_icms.AsCurrency));
                                                    VL_BC_ICMS_ST := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C190vlr_base_icms_sub.AsCurrency));
                                                    VL_ICMS_ST := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C190vlr_icms_sub.AsCurrency));
                                                    VL_RED_BC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C190vlr_base_reduzida.AsCurrency));
                                                    VL_IPI := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C190vlr_ipi.AsCurrency));
                                                    COD_OBS := '';

                                                    // somatorio do E110
                                                    if (copy(FAT_CD_R_GAM_C190id_cfo.AsString,1,1)='5')
                                                      or (copy(FAT_CD_R_GAM_C190id_cfo.AsString,1,1)='6')
                                                      or (copy(FAT_CD_R_GAM_C190id_cfo.AsString,1,1)='7')
                                                      or (FAT_CD_R_GAM_C190id_cfo.AsString = '1605') then
                                                      begin
                                                        rValor_tot_deb_E110 := rValor_tot_deb_E110 +
                                                        strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C190vlr_icms.AsCurrency));
                                                      end;

                                                    if ((copy(FAT_CD_R_GAM_C190id_cfo.AsString,1,1)='1')
                                                      and (FAT_CD_R_GAM_C190id_cfo.AsString <> '1605'))
                                                      or (copy(FAT_CD_R_GAM_C190id_cfo.AsString,1,1)='2')
                                                      or (copy(FAT_CD_R_GAM_C190id_cfo.AsString,1,1)='3')
                                                      or (FAT_CD_R_GAM_C190id_cfo.AsString = '5605') then
                                                      begin
                                                        rValor_tot_cre_E110 := rValor_tot_cre_E110 +
                                                        strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C190vlr_icms.AsCurrency));
                                                      end;

                                                  end; // Fim dos Itens;
                                              FAT_CD_R_GAM_C190.Next;
                                            end;  // fim c190;
                                  end; // fim da seleção das notas canceladas
                             end; // fim do else
                         end; // fim da seleção de notas inutilizadas
                    end;
                FAT_CD_R_GAM_C20.Next;
              end;
        end;

      //REGISTRO C400 - EQUIPAMENTO ECF (CÓDIGO 02 e 2D).
      FAT_CD_R_GAM_C400.First;
      while not FAT_CD_R_GAM_C400.Eof do
          begin

            FAT_CD_R_GAM_C405.Close;
            FAT_CD_R_GAM_C405.Data :=
              FAT_CD_R_GAM_C405.DataRequest(
                VarArrayOf([FAT_CD_R_GAM_C400ecf_serial_impressora.Text,rDtaIni, rDtaFin]));
            i := 0;
            if  not FAT_CD_R_GAM_C405.IsEmpty then
                begin
                  inc(i);
                  //btnSef.Refresh;
                  //btnSef.caption := inttostr(i);
                   With RegistroC400New do
                        begin
                          COD_MOD := '2D';
                          ECF_MOD := FAT_CD_R_GAM_C400ecf_modelo_impressora.AsString;
                          ECF_FAB := FAT_CD_R_GAM_C400ecf_serial_impressora.AsString;
                          ECF_CX := FAT_CD_R_GAM_C400ecf_caixa.AsString;
                        end;

                  while not (FAT_CD_R_GAM_C405.Eof) do
                     begin

                              //Esaú: Ver com Sangia pois para cada reducao z diaria era para ter um resgistro C405,
                              //mas pelo codigo abaixo é gerado só um por ecf cadastrada;

                              With RegistroC405New do
                                  begin
                                    DT_DOC := FAT_CD_R_GAM_C405data_movimento.AsDateTime;
                                    CRO := Vazio(FAT_CD_R_GAM_C405,'cro');
                                    CRZ := Vazio(FAT_CD_R_GAM_C405,'crz');
                                    NUM_COO_FIN := Vazio(FAT_CD_R_GAM_C405,'num_coo_fin');

                                    if trim(FAT_CD_R_GAM_C405gt_fin.AsString) <> '' then
                                       GT_FIN := strtocurr(formatcurr('#####0.00',strtocurr(AjusteMonetario(FAT_CD_R_GAM_C405gt_fin.AsString))));
                                       //GT_FIN := strtocurr(formatcurr('#####0.00',strtocurr(StringReplace(FAT_CD_R_GAM_C405gt_fin.AsString,'.',',',[]))));

                                    if trim(FAT_CD_R_GAM_C405vl_brt.AsString) <> '' then
                                       VL_BRT := strtocurr(formatcurr('#####0.00',strtocurr(StringReplace(FAT_CD_R_GAM_C405vl_brt.AsString,'.','',[]))));


                                      FAT_CD_R_GAM_C420.Close;
                                      FAT_CD_R_GAM_C420.Data :=
                                        FAT_CD_R_GAM_C420.DataRequest(
                                          VarArrayOf([FAT_CD_R_GAM_C400ecf_serial_impressora.Text,FAT_CD_R_GAM_C405data_movimento.AsDateTime]));
                                          //VarArrayOf([FAT_CD_R_GAM_C400ecf_serial_impressora.Text,rDtaIni, rDtaFin]));

                                      FAT_CD_R_GAM_C420.First;

                                      while not FAT_CD_R_GAM_C420.eof do
                                         begin
                                            With RegistroC420New do
                                                begin
                                                  COD_TOT_PAR := FAT_CD_R_GAM_C420totalizador.AsString;

                                                  if trim(FAT_CD_R_GAM_C420vlr_acum.AsString) <> '' then

                                                    VLR_ACUM_TOT := strtocurr(formatcurr('#####0.00',strtocurr(
                                                                         StringReplace(StringReplace(FAT_CD_R_GAM_C420vlr_acum.AsString,'.','',[]),'.',',',[])  )));

                                                  if trim(FAT_CD_R_GAM_C420num_totalizador.AsString) <> '' then
                                                     NR_TOT := 0;
                                                    //NR_TOT := FAT_CD_R_GAM_C420num_totalizador.AsInteger;

                                                  DESCR_NR_TOT := '';
                                                  //DESCR_NR_TOT := FAT_CD_R_GAM_C420descricao.AsString;

                                                  { Gera este registro somente para empresas do pergil B de apresentação }
                                                  if Bloco_0.Registro0000.IND_PERFIL = pfPerfilB then
                                                     begin
                                                        FAT_CD_R_GAM_C425.Close;
                                                        FAT_CD_R_GAM_C425.Data :=
                                                         FAT_CD_R_GAM_C425.DataRequest(
                                                              VarArrayOf([FAT_CD_R_GAM_C400ecf_serial_impressora.Text,
                                                                          FAT_CD_R_GAM_C420data_movimento.AsDateTime,
                                                                          FAT_CD_R_GAM_C420totalizador.AsString]));

                                                        FAT_CD_R_GAM_C425.First;
                                                        while not FAT_CD_R_GAM_C425.eof  do
                                                           begin
                                                              With RegistroC425New do
                                                                  begin
                                                                    COD_ITEM := FAT_CD_R_GAM_C425id_item.AsString;
                                                                    QTD := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C425quantidade.AsCurrency));
                                                                    UNID := FAT_CD_R_GAM_C425id_und_compra.AsString;
                                                                    VL_ITEM := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C425vlr_total.AsCurrency));
                                                                    VL_PIS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C425vlr_pis.AsCurrency));
                                                                    VL_COFINS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C425vlr_cofins.AsCurrency));
                                                                  end;

                                                              FAT_CD_R_GAM_C425.Next;
                                                           end;
                                                     end;
                                                end; // C420
                                            FAT_CD_R_GAM_C420.Next;
                                          end;

                                      if  Bloco_0.Registro0000.IND_PERFIL <> pfPerfilB then   //Falta o select
                                          begin
                                              FAT_CD_R_GAM_C460.First;
                                              while not FAT_CD_R_GAM_C460.Eof do
                                                  begin
                                                    with REgistroC460New do
                                                    begin
                                                      COD_MOD := FAT_CD_R_GAM_C460modelo.AsString;

                                                      case FAT_CD_R_GAM_C460nfe_cod_sit.AsInteger of
                                                        0: COD_SIT := ACBrEFDBlocos.sdRegular;
                                                        1: COD_SIT := ACBrEFDBlocos.sdExtempRegular;
                                                        2: COD_SIT := ACBrEFDBlocos.sdCancelado;
                                                        3: COD_SIT := ACBrEFDBlocos.sdCanceladoExtemp;
                                                        4: COD_SIT := ACBrEFDBlocos.sdDoctoDenegado;
                                                        5: COD_SIT := ACBrEFDBlocos.sdDoctoNumInutilizada;
                                                        6: COD_SIT := ACBrEFDBlocos.sdFiscalCompl;
                                                        7: COD_SIT := ACBrEFDBlocos.sdExtempCompl;
                                                        8: COD_SIT := ACBrEFDBlocos.sdRegimeEspecNEsp;
                                                      end;

                                                      NUM_DOC := FAT_CD_R_GAM_C460numero.AsString;
                                                      DT_DOC := FAT_CD_R_GAM_C460dta_emissao.AsDateTime;
                                                      VL_DOC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C460vlr_contabil.AsCurrency));
                                                      VL_PIS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C460pis_valor.AsCurrency));
                                                      VL_COFINS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C460cof_valor.AsCurrency));
                                                      CPF_CNPJ := FAT_CD_R_GAM_C460cpf_cnpj.AsString;
                                                      NOM_ADQ := FAT_CD_R_GAM_C460nome_adq.AsString;

                                                      FAT_CD_R_GAM_C470.Close;
                                                      FAT_CD_R_GAM_C470.Data :=
                                                        FAT_CD_R_GAM_C470.DataRequest(
                                                          VarArrayOf([FAT_CD_R_GAM_C460id_fiscal.Text]));

                                                      with RegistroC470New do //Falta o Select
                                                          begin
                                                            COD_ITEM := FAT_CD_R_GAM_C470id_item.AsString;
                                                            QTD := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C470qtde.AsCurrency));
                                                            QTD_CANC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C470qtde_canc.AsCurrency));
                                                            UNID := FAT_CD_R_GAM_C470id_und_venda.AsString;
                                                            VL_ITEM := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C470vlr_unitario.AsCurrency));
                                                            CST_ICMS := FAT_CD_R_GAM_C470id_st_icm.AsString;
                                                            CFOP := FAT_CD_R_GAM_C470id_cfo.AsString;
                                                            ALIQ_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C470aliq_icms.AsCurrency));
                                                            VL_PIS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C470pis_valor.AsCurrency));
                                                            VL_COFINS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C470cof_valor.AsCurrency));
                                                          end;
                                                    end;
                                                    FAT_CD_R_GAM_C460.Next
                                                  end;
                                          end;


                                      FAT_CD_R_GAM_C490.Close;
                                      FAT_CD_R_GAM_C490.Data :=
                                        FAT_CD_R_GAM_C490.DataRequest(
                                          VarArrayOf([FAT_CD_R_GAM_C400ecf_serial_impressora.Text,FAT_CD_R_GAM_C405data_movimento.AsDateTime]));

                                      while not FAT_CD_R_GAM_C490.eof do
                                          begin
                                            with RegistroC490New do
                                                begin
                                                  CST_ICMS := FAT_CD_R_GAM_C490id_st_icm.AsString;
                                                  CFOP := FAT_CD_R_GAM_C490id_cfo.AsString;
                                                  ALIQ_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C490icm_n_aliquota.AsCurrency));
                                                  VL_OPR := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C490vlr_operacao.AsCurrency));
                                                  VL_BC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C490vlr_base_icm.AsCurrency));
                                                  VL_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C490vlr_icm.AsCurrency));
                                                  COD_OBS := '';
                                                  // Retirado a pedido de Mariel, por Maxsuel em 27/01/2018
                                                 {
                                                  // somatorio do E110
                                                  if (copy(FAT_CD_R_GAM_C490id_cfo.AsString,1,1)='5')
                                                    or (copy(FAT_CD_R_GAM_C490id_cfo.AsString,1,1)='6')
                                                    or (copy(FAT_CD_R_GAM_C490id_cfo.AsString,1,1)='7')
                                                    or (FAT_CD_R_GAM_C490id_cfo.AsString = '1605') then
                                                    begin
                                                      rValor_tot_deb_E110 := rValor_tot_deb_E110 +
                                                      strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C490vlr_icm.AsCurrency));
                                                    end;

                                                  if ((copy(FAT_CD_R_GAM_C490id_cfo.AsString,1,1)='1')
                                                    and (FAT_CD_R_GAM_C490id_cfo.AsString <> '1605'))
                                                    or (copy(FAT_CD_R_GAM_C490id_cfo.AsString,1,1)='2')
                                                    or (copy(FAT_CD_R_GAM_C490id_cfo.AsString,1,1)='3')
                                                    or (FAT_CD_R_GAM_C490id_cfo.AsString = '5605') then
                                                    begin
                                                      rValor_tot_cre_E110 := rValor_tot_cre_E110 +
                                                      strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C490vlr_icm.AsCurrency));
                                                    end;
                                                    }
                                                end;
                                             FAT_CD_R_GAM_C490.Next;
                                          end;
                                  end;

                        FAT_CD_R_GAM_C405.Next;
                     end;
                end; // fim do if 405 vazio
            FAT_CD_R_GAM_C400.Next;
          end;

      FAT_CD_R_GAM_C500.First;
      while not FAT_CD_R_GAM_C500.Eof do
        begin
          with RegistroC500new do
          begin
            case FAT_CD_R_GAM_C500ind_operacao.AsInteger of
              0: IND_OPER    := ACBrEFDBlocos.tpEntradaAquisicao;
              1: IND_OPER    := ACBrEFDBlocos.tpSaidaPrestacao;
            end;

            case FAT_CD_R_GAM_C500ind_emitente.AsInteger of
              0: IND_EMIT    := ACBrEFDBlocos.edEmissaoPropria;
              1: IND_EMIT    := ACBrEFDBlocos.edTerceiros;
            end;

            COD_PART         := FAT_CD_R_GAM_C500cpf_cnpj.AsString;
            COD_MOD          := FAT_CD_R_GAM_C500modelo.AsString;

            case FAT_CD_R_GAM_C500cod_sit.AsInteger of
              0: COD_SIT     := ACBrEFDBlocos.sdRegular;
              1: COD_SIT     := ACBrEFDBlocos.sdExtempRegular;
              2: COD_SIT     := ACBrEFDBlocos.sdCancelado;
              3: COD_SIT     := ACBrEFDBlocos.sdCanceladoExtemp;
              4: COD_SIT     := ACBrEFDBlocos.sdDoctoDenegado;
              5: COD_SIT     := ACBrEFDBlocos.sdDoctoNumInutilizada;
              6: COD_SIT     := ACBrEFDBlocos.sdFiscalCompl;
              7: COD_SIT     := ACBrEFDBlocos.sdExtempCompl;
              8: COD_SIT     := ACBrEFDBlocos.sdRegimeEspecNEsp;
            end;

            SER              := FAT_CD_R_GAM_C500serie.AsString;
            COD_CONS         := '';
            NUM_DOC          := FAT_CD_R_GAM_C500numero.AsString;
            DT_DOC           := FAT_CD_R_GAM_C500dta_emissao.AsDateTime;
            DT_E_S           := FAT_CD_R_GAM_C500dta_documento.AsDateTime;
            VL_DOC           := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_doc.AsCurrency));
            VL_DESC          := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_desconto.AsCurrency));
            VL_FORN          := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_forn.AsCurrency));
            VL_SERV_NT       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_serv_nt.AsCurrency));
            VL_TERC          := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_terc.AsCurrency));
            VL_DA            := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_da.AsCurrency));
            VL_BC_ICMS       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_base_icms.AsCurrency));
            VL_ICMS          := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_icms.AsCurrency));
            VL_BC_ICMS_ST    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_base_icms_subst.AsCurrency));
            VL_ICMS_ST       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_icms_subst.AsCurrency));
            COD_INF          := '';
            VL_PIS           := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_pis.AsCurrency));
            VL_COFINS        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_cof.AsCurrency));
            TP_LIGACAO       := tlNenhum;
            COD_GRUPO_TENSAO := gtNenhum;

            Cont_Num_Item := 0;

            FAT_CD_R_GAM_C510.Close;
              FAT_CD_R_GAM_C510.Data :=
                FAT_CD_R_GAM_C510.DataRequest(
                  VarArrayOf([FAT_CD_R_GAM_C500id_fiscal.Text]));

            with RegistroC510New do
            begin
              Cont_Num_Item := Cont_Num_Item + 1;

              NUM_ITEM           := IntToStr(Cont_Num_Item);
              COD_ITEM           := FAT_CD_R_GAM_C510id_item.AsString;
              COD_CLASS          := FAT_CD_R_GAM_C510cod_class.AsString;
              QTD                := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C510qtde.AsCurrency));
              UNID               := FAT_CD_R_GAM_C510id_und_venda.AsString;
              VL_ITEM            := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C510vlr_unitario.AsCurrency));
              VL_DESC            := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C510vlr_desconto.AsCurrency));
              CST_ICMS           := FAT_CD_R_GAM_C510id_st_icm.AsString;
              CFOP               := FAT_CD_R_GAM_C510id_cfo.AsString;
              VL_BC_ICMS         := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C510icm_n_base.AsCurrency));
              ALIQ_ICMS          := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C510aliq_icms.AsCurrency));
              VL_BC_ICMS_ST      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C510icm_s_base.AsCurrency));
              ALIQ_ST            := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C510aliq_icms.AsCurrency));
              VL_ICMS_ST         := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C510icm_s_valor.AsCurrency));

              case FAT_CD_R_GAM_C510ind_rec.AsInteger of
                0: IND_REC       := trPropria;
                1: IND_REC       := trTerceiro;
              end;

              COD_PART           := FAT_CD_R_GAM_C500cpf_cnpj.AsString;
              VL_PIS             := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C510pis_valor.AsCurrency));
              VL_COFINS          := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C510cof_valor.AsCurrency));
              COD_CTA            := FAT_CD_R_GAM_C510cod_cta.AsString;

            end;

            FAT_CD_R_GAM_C590.Close;
              FAT_CD_R_GAM_C590.Data :=
                FAT_CD_R_GAM_C590.DataRequest(
                  VarArrayOf([FAT_CD_R_GAM_C500id_fiscal.Text]));

            with RegistroC590new do
            begin
              CST_ICMS      := FAT_CD_R_GAM_C510id_st_icm.AsString;
              CFOP          := FAT_CD_R_GAM_C590id_cfo.AsString;
              ALIQ_ICMS     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C590aliq_icms.AsCurrency));
              VL_OPR        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C590vlr_operacao.AsCurrency));
              VL_BC_ICMS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C590vlr_base_icms.AsCurrency));
              VL_ICMS       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C590vlr_icms.AsCurrency));
              VL_BC_ICMS_ST := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C590vlr_base_icms_subst.AsCurrency));
              VL_ICMS_ST    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C590vlr_icms_subst.AsCurrency));
              VL_RED_BC     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C590vlr_base_reduzida.AsCurrency));
              COD_OBS       := '';

               // somatorio do E110
                if (copy(FAT_CD_R_GAM_C590id_cfo.AsString,1,1)='5')
                  or (copy(FAT_CD_R_GAM_C590id_cfo.AsString,1,1)='6')
                  or (copy(FAT_CD_R_GAM_C590id_cfo.AsString,1,1)='7')
                  or (FAT_CD_R_GAM_C590id_cfo.AsString = '1605') then
                  begin
                    rValor_tot_deb_E110 := rValor_tot_deb_E110 +
                    strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C590vlr_icms.AsCurrency));
                  end;

                if ((copy(FAT_CD_R_GAM_C590id_cfo.AsString,1,1)='1')
                  and (FAT_CD_R_GAM_C590id_cfo.AsString <> '1605'))
                  or (copy(FAT_CD_R_GAM_C590id_cfo.AsString,1,1)='2')
                  or (copy(FAT_CD_R_GAM_C590id_cfo.AsString,1,1)='3')
                  or (FAT_CD_R_GAM_C590id_cfo.AsString = '5605') then
                  begin
                    rValor_tot_cre_E110 := rValor_tot_cre_E110 +
                    strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C590vlr_icms.AsCurrency));
                  end;
            end;
          end;
          FAT_CD_R_GAM_C500.Next;
        end;
  end;
end;

procedure TFAT_FM_M_GAM.SpedFiscal_D;
var
Cont_Num_Ite: integer;
begin
  Cont_Num_Ite := 0;
// Alimenta o componente com informações para gerar todos os registros do Bloco D.
  with ACBrSPEDFiscal1.Bloco_D do
  begin
    with RegistroD001New do
    begin
      if not FAT_CD_R_GAM_D100.IsEmpty then
        IND_MOV := ACBrEFDBlocos.imComDados
      else
        IND_MOV := ACBrEFDBlocos.imSemDados;

      FAT_CD_R_GAM_D100.First;
      while not FAT_CD_R_GAM_D100.Eof do
            begin
              with RegistroD100New do
              begin

                Case FAT_CD_R_GAM_D100ind_operacao.AsInteger of
                  0: IND_OPER := ACBrEFDBlocos.TACBrIndOper.tpEntradaAquisicao;
                  1: IND_OPER := ACBrEFDBlocos.TACBrIndOper.tpSaidaPrestacao;
                End;

                Case FAT_CD_R_GAM_D100ind_emitente.AsInteger of
                  0: IND_EMIT := ACBrEFDBlocos.edEmissaoPropria;
                  1: IND_EMIT := ACBrEFDBlocos.edTerceiros;
                End;

                COD_PART := FAT_CD_R_GAM_D100cpf_cnpj.AsString;
                COD_MOD := FAT_CD_R_GAM_D100modelo.AsString;

                Case FAT_CD_R_GAM_D100cod_sit.AsInteger of
                  0: COD_SIT := ACBrEFDBlocos.sdRegular;
                  1: COD_SIT := ACBrEFDBlocos.sdExtempRegular;
                  2: COD_SIT := ACBrEFDBlocos.sdCancelado;
                  3: COD_SIT := ACBrEFDBlocos.sdCanceladoExtemp;
                  4: COD_SIT := ACBrEFDBlocos.sdDoctoDenegado;
                  5: COD_SIT := ACBrEFDBlocos.sdDoctoNumInutilizada;
                  6: COD_SIT := ACBrEFDBlocos.sdFiscalCompl;
                  7: COD_SIT := ACBrEFDBlocos.sdExtempCompl;
                  8: COD_SIT := ACBrEFDBlocos.sdRegimeEspecNEsp;
                End;

                SER := FAT_CD_R_GAM_D100serie.AsString;
                NUM_DOC := FAT_CD_R_GAM_D100numero.AsString;

                // Comentado a pedido de Mariel, por Maxsuel Victor  em  27/01/2018
                {if FAT_CD_R_GAM_C20nfe_chave.AsString = '' then // gerador de chave NFE, CHV;
                  begin
                    CHV_CTE :=  MontaCheveNfe(copy( dmgeral.BUS_CD_C_PARid_cidade.AsString,1,2),
                                FAT_CD_R_GAM_D100dta_emissao.Value,dmgeral.BUS_CD_C_PARemp_cnpj.AsString,trim(FAT_CD_R_GAM_D100modelo.AsString),trim(FAT_CD_R_GAM_D100serie.AsString),
                                strtoint(trim(FAT_CD_R_GAM_D100numero.AsString)),strtoint(trim(FAT_CD_R_GAM_D100numero.AsString)),'1');
                  end
                else
                  begin}
                    CHV_CTE := FAT_CD_R_GAM_D100nfe_chave.AsString;
                //  end;

                DT_DOC := FAT_CD_R_GAM_D100dta_emissao.AsDateTime;
                DT_A_P := FAT_CD_R_GAM_D100dta_documento.AsDateTime;
                TP_CT_e := FAT_CD_R_GAM_D100tp_ct_e.AsString;
                VL_DOC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D100vlr_doc.AsCurrency));
                VL_DESC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D100vlr_desconto.AsCurrency));

                Case FAT_CD_R_GAM_D100ind_frete.AsInteger of
                  0: IND_FRT := ACBrEFDBlocos.tfPorContaEmitente;
                  1: IND_FRT := ACBrEFDBlocos.tfPorContaDestinatario;
                  2: IND_FRT := ACBrEFDBlocos.tfPorContaTerceiros;
                  3: IND_FRT := ACBrEFDBlocos.tfSemCobrancaFrete;
                else IND_FRT := ACBrEFDBlocos.tfNenhum;
                End;

                VL_SERV := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D100vlr_serv.AsCurrency));
                VL_BC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D100vlr_base_icms.AsCurrency));
                VL_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D100vlr_icms.AsCurrency));
                VL_NT := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D100vl_nt.AsCurrency));
                COD_INF := '';
                COD_CTA := FAT_CD_R_GAM_D100cod_cta.AsString;
              end;


             FAT_CD_R_GAM_D_190.Close;
               FAT_CD_R_GAM_D_190.Data :=
                 FAT_CD_R_GAM_D_190.DataRequest(
                     VarArrayOf([FAT_CD_R_GAM_D100id_fiscal.AsString]));

             FAT_CD_R_GAM_D_190.First;
             while not FAT_CD_R_GAM_D_190.Eof do
                begin
                   with RegistroD190New do
                        begin
                          CST_ICMS := '0'+FAT_CD_R_GAM_D_190id_st_icm.AsString;
                          CFOP := FAT_CD_R_GAM_D_190id_cfo.AsString;
                          ALIQ_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D_190icm_n_aliquota.AsCurrency));
                          VL_OPR := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D_190vlr_operacao.AsCurrency));
                          VL_BC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D_190vlr_bc_icms.AsCurrency));
                          VL_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D_190vlr_icms.AsCurrency));
                          VL_RED_BC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D_190vlr_base_reduzida.AsCurrency));
                          COD_OBS := '';


                          // Insertido a pedido de mariel , por Maxsuel em 27/01/2018
                          // somatorio do E110
                          if (copy(FAT_CD_R_GAM_D_190id_cfo.AsString,1,1)='5')
                            or (copy(FAT_CD_R_GAM_D_190id_cfo.AsString,1,1)='6')
                            or (copy(FAT_CD_R_GAM_D_190id_cfo.AsString,1,1)='7')
                            or (FAT_CD_R_GAM_D_190id_cfo.AsString = '1605') then
                            begin
                              rValor_tot_deb_E110 := rValor_tot_deb_E110 +
                              strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D_190vlr_icms.AsCurrency));
                            end;

                          if ((copy(FAT_CD_R_GAM_D_190id_cfo.AsString,1,1)='1')
                            and (FAT_CD_R_GAM_D_190id_cfo.AsString <> '1605'))
                            or (copy(FAT_CD_R_GAM_D_190id_cfo.AsString,1,1)='2')
                            or (copy(FAT_CD_R_GAM_D_190id_cfo.AsString,1,1)='3')
                            or (FAT_CD_R_GAM_D_190id_cfo.AsString = '5605') then
                            begin
                              rValor_tot_cre_E110 := rValor_tot_cre_E110 +
                              strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D_190vlr_icms.AsCurrency));
                            end;



                        end;
                   FAT_CD_R_GAM_D_190.Next;
                end;
            FAT_CD_R_GAM_D100.Next;
            end;



      FAT_CD_R_GAM_D500.First;

      while not FAT_CD_R_GAM_D500.Eof do
      begin
        with RegistroD500new do
        begin

          Case FAT_CD_R_GAM_D500ind_operacao.AsInteger of
            0: IND_OPER := ACBrEFDBlocos.tpEntradaAquisicao;
            1: IND_OPER := ACBrEFDBlocos.tpSaidaPrestacao;
          End;

          Case FAT_CD_R_GAM_D500ind_emitente.AsInteger of
            0: IND_EMIT := ACBrEFDBlocos.edEmissaoPropria;
            1: IND_EMIT := ACBrEFDBlocos.edTerceiros;
          End;

          COD_PART := FAT_CD_R_GAM_D500cpf_cnpj.AsString;
          COD_MOD := FAT_CD_R_GAM_D500modelo.AsString;

          Case FAT_CD_R_GAM_D500cod_sit.AsInteger of
            0: COD_SIT := ACBrEFDBlocos.sdRegular;
            1: COD_SIT := ACBrEFDBlocos.sdExtempRegular;
            2: COD_SIT := ACBrEFDBlocos.sdCancelado;
            3: COD_SIT := ACBrEFDBlocos.sdCanceladoExtemp;
            4: COD_SIT := ACBrEFDBlocos.sdDoctoDenegado;
            5: COD_SIT := ACBrEFDBlocos.sdDoctoNumInutilizada;
            6: COD_SIT := ACBrEFDBlocos.sdFiscalCompl;
            7: COD_SIT := ACBrEFDBlocos.sdExtempCompl;
            8: COD_SIT := ACBrEFDBlocos.sdRegimeEspecNEsp;
          End;

          SER := FAT_CD_R_GAM_D500serie.AsString;
          SUB := FAT_CD_R_GAM_D500sub_serie.AsString;
          NUM_DOC := FAT_CD_R_GAM_D500numero.AsString;
          DT_DOC := FAT_CD_R_GAM_D500dta_emissao.AsDateTime;
          DT_A_P := FAT_CD_R_GAM_D500dta_documento.AsDateTime;
          VL_DOC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_doc.AsCurrency));
          VL_DESC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_desconto.AsCurrency));
          VL_SERV := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_serv.AsCurrency));
          VL_SERV_NT := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_serv_nt.AsCurrency));
          VL_TERC := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_terc.AsCurrency));
          VL_DA := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_da.AsCurrency));
          VL_BC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_base_icms.AsCurrency));
          VL_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_icms.AsCurrency));
          COD_INF := '';
          VL_PIS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500pis_valor.AsCurrency));
          VL_COFINS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500cof_valor.AsCurrency));
          COD_CTA := FAT_CD_R_GAM_D500cod_cta.AsString;

          if FAT_CD_R_GAM_D500tp_assinante.AsString = '' then
            begin
              TP_ASSINANTE := assNenhum;
            end
          else
            begin
              case FAT_CD_R_GAM_D500tp_assinante.AsInteger of
                1: TP_ASSINANTE := assComercialIndustrial;
                2: TP_ASSINANTE := assPodrPublico;
                3: TP_ASSINANTE := assResidencial;
                4: TP_ASSINANTE := assPublico;
                5: TP_ASSINANTE := assSemiPublico;
                6: TP_ASSINANTE := assOutros;
              else TP_ASSINANTE := assNenhum;
              end;
            end;

          FAT_CD_R_GAM_D510.Close;
              FAT_CD_R_GAM_D510.Data :=
                FAT_CD_R_GAM_D510.DataRequest(
                  VarArrayOf([FAT_CD_R_GAM_D500id_fiscal.Text]));

          with RegistroD510New do
          begin
            Cont_Num_Ite := Cont_Num_Ite + 1;

            NUM_ITEM      := IntToStr(Cont_Num_Ite);
            COD_ITEM      := FAT_CD_R_GAM_D510id_item.AsString;
            COD_CLASS     := FAT_CD_R_GAM_D510cod_class.AsString;
            QTD           := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D510qtde.AsCurrency));
            UNID          := FAT_CD_R_GAM_D510id_und_venda.AsString;
            VL_ITEM       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D510vlr_unitario.AsCurrency));
            VL_DESC       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D510vlr_desconto.AsCurrency));
            CST_ICMS      := FAT_CD_R_GAM_D510id_st_icm.AsString;
            CFOP          := FAT_CD_R_GAM_D510id_cfo.AsString;
            VL_BC_ICMS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D510icm_n_base.AsCurrency));
            ALIQ_ICMS     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D510aliq_icms.AsCurrency));
            VL_ICMS       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D510icm_s_valor.AsCurrency));
            VL_BC_ICMS_UF := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D510icm_s_base.AsCurrency));
            VL_ICMS_UF    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D510icm_s_valor.AsCurrency));

            case FAT_CD_R_GAM_D510ind_rec.AsInteger of
              0: IND_REC  := recServicoPrestado;
              1: IND_REC  := recCobrancaDebitos;
              2: IND_REC  := recVendaMerc;
              3: IND_REC  := recServicoPrePago;
              4: IND_REC  := recOutrasProprias;
              5: IND_REC  := recTerceiroCoFaturamento;
              9: IND_REC  := recTerceiroOutras;
            end;

            COD_PART      := FAT_CD_R_GAM_D510cod_part.AsString;
            VL_PIS        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D510pis_valor.AsCurrency));
            VL_COFINS     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D510cof_valor.AsCurrency));
            COD_CTA       := FAT_CD_R_GAM_D510cod_cta.AsString;
          end;

          FAT_CD_R_GAM_D590.Close;
              FAT_CD_R_GAM_D590.Data :=
                FAT_CD_R_GAM_D590.DataRequest(
                  VarArrayOf([FAT_CD_R_GAM_D500id_fiscal.Text]));

          with RegistroD590new do
          begin
            CST_ICMS      := FAT_CD_R_GAM_D510id_st_icm.AsString;
            CFOP          := FAT_CD_R_GAM_D590id_cfo.AsString;
            ALIQ_ICMS     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D590aliq_icms.AsCurrency));
            VL_OPR        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D590vlr_operacao.AsCurrency));
            VL_BC_ICMS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D590vlr_base_icms.AsCurrency));
            VL_ICMS       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D590vlr_icms.AsCurrency));
            VL_BC_ICMS_UF := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D590vlr_base_icms_subst.AsCurrency));
            VL_ICMS_UF    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D590vlr_icms_subst.AsCurrency));
            VL_RED_BC     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D590vlr_base_reduzida.AsCurrency));
            COD_OBS       := '';

            // somatorio do E110
                if (copy(FAT_CD_R_GAM_D590id_cfo.AsString,1,1)='5')
                  or (copy(FAT_CD_R_GAM_D590id_cfo.AsString,1,1)='6')
                  or (copy(FAT_CD_R_GAM_D590id_cfo.AsString,1,1)='7')
                  or (FAT_CD_R_GAM_D590id_cfo.AsString = '1605') then
                  begin
                    rValor_tot_deb_E110 := rValor_tot_deb_E110 +
                    strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D590vlr_icms.AsCurrency));
                  end;

                if ((copy(FAT_CD_R_GAM_D590id_cfo.AsString,1,1)='1')
                  and (FAT_CD_R_GAM_D590id_cfo.AsString <> '1605'))
                  or (copy(FAT_CD_R_GAM_D590id_cfo.AsString,1,1)='2')
                  or (copy(FAT_CD_R_GAM_D590id_cfo.AsString,1,1)='3')
                  or (FAT_CD_R_GAM_D590id_cfo.AsString = '5605') then
                  begin
                    rValor_tot_cre_E110 := rValor_tot_cre_E110 +
                    strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D590vlr_icms.AsCurrency));
                  end;
          end;
        end;
        FAT_CD_R_GAM_D500.Next;
      end;
    end;
  end;
end;

procedure TFAT_FM_M_GAM.SpedFiscal_E;
begin
  with ACBrSPEDFiscal1.Bloco_E do
  begin
    with RegistroE001New do
    begin
      IND_MOV := ACBrEFDBlocos.imComDados;
      with RegistroE100New do
        begin
          DT_INI := dtaInicial.Date;
          DT_FIN := dtaFinal.Date;

          with RegistroE110New do
            begin
              VL_TOT_DEBITOS := rValor_tot_deb_E110;
              VL_TOT_CREDITOS := rValor_tot_cre_E110;
              if rValor_tot_deb_E110 < rValor_tot_cre_E110 then
                begin
                  VL_SLD_CREDOR_TRANSPORTAR := rValor_tot_cre_E110 - rValor_tot_deb_E110;
                end
              else
                begin
                  VL_SLD_APURADO := rValor_tot_deb_E110 - rValor_tot_cre_E110;
                end;
              //VL_ICMS_RECOLHER := rValor_tot_deb_E110;
            end;
        end;
      {with RegistroE200New do
        begin
          UF := dmgeral.BUS_CD_C_PARint_uf.AsString;
          DT_INI := dtaInicial.Date;
          DT_FIN := dtaFinal.Date;
        end;}
    end;
  end;
end;

procedure TFAT_FM_M_GAM.SpedFiscal_H;
var
  xEmpresa: String;
  i: integer;
  valor: currency;
begin

  if not (TestarCamposInv) then
     exit;

  xEmpresa := '';
  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          //yEmpresa := trim(copy(ClbEmpresa.Items[I],1,1));
          if xEmpresa <> '' then
           begin
             xEmpresa :=
             xEmpresa + ',' +''''+trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
          if xEmpresa = '' then
           begin
             xEmpresa :=
             xEmpresa +''''+ trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
        end;
    end;


  FAT_CD_R_GAM_H20.Close;
  FAT_CD_R_GAM_H20.Data :=
    FAT_CD_R_GAM_H20.DataRequest(
      VarArrayOf([xEmpresa,dtaInventario.Text]));

  FAT_CD_R_GAM_H30.Close;
  FAT_CD_R_GAM_H30.Data :=
    FAT_CD_R_GAM_H30.DataRequest(
      VarArrayOf([xEmpresa,dtaInventario.Text]));


  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco H.
  with ACBrSPEDFiscal1.Bloco_H do
  begin
    with RegistroH001New do
    begin
      if not FAT_CD_R_GAM_H20.IsEmpty then
        begin
          valor := 0;
          IND_MOV := ACBrEFDBlocos.imComDados;
          FAT_CD_R_GAM_H20.First;
          while not FAT_CD_R_GAM_H20.Eof do
            begin
              with RegistroH005New do
              begin
                DT_INV := FAT_CD_R_GAM_H20dta_inventario.AsDateTime; //O valor informado no campo deve ser menor ou igual ao valor no campo DT_FIN do registro 0000
                VL_INV := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H20vlr_estoque.AsCurrency));

                case dmgeral.BUS_CD_C_PAR_CTReff_motivo_inv.AsInteger of
                  01: MOT_INV := miFinalPeriodo;
                  02: MOT_INV := miMudancaTributacao;
                  03: MOT_INV := miBaixaCadastral;
                  04: MOT_INV := miRegimePagamento;
                  05: MOT_INV := miDeterminacaoFiscos;
                end;

                  if FAT_CD_R_GAM_H20vlr_estoque.AsInteger > 0 then
                    begin
                      // FILHO
                      FAT_CD_R_GAM_H30.First;
                      while not FAT_CD_R_GAM_H30.Eof do
                        begin
                          with RegistroH010New do
                          begin
                            COD_ITEM := FAT_CD_R_GAM_H30id_item.AsString;
                            UNID := FAT_CD_R_GAM_H30id_und_compra.AsString;
                            QTD := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H30qtd.AsCurrency));

                            if FAT_CD_R_GAM_H30vlr_unit.AsCurrency < 0 then
                              VL_UNIT := 0
                            else
                              VL_UNIT := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H30vlr_unit.AsCurrency));

                              if FAT_CD_R_GAM_H30vlr_liquido.AsCurrency < 0 then
                                VL_ITEM := 0
                              else
                                 VL_ITEM := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H30vlr_liquido.AsCurrency));
                            Case FAT_CD_R_GAM_H30ind_posse.AsInteger of
                              0: IND_PROP := piInformante;
                              1: IND_PROP := piInformanteNoTerceiro;
                              2: IND_PROP := piTerceiroNoInformante;
                            end;

                            if FAT_CD_R_GAM_H30ind_posse.AsInteger <> 0 then
                              COD_PART := FAT_CD_R_GAM_H30emp_cnpj.AsString;

                            TXT_COMPL := FAT_CD_R_GAM_H30cod_observacao.AsString;
                            COD_CTA := FAT_CD_R_GAM_H30cod_cta.AsString;

                            FAT_FM_M_GAM.refresh;

                            {if dmgeral.BUS_CD_C_PAR_CTReff_motivo_inv.AsInteger > 2 then   // Não vai ser informado! (Mariel);
                            BEGIN
                              with RegistroH020New do
                              BEGIN
                               CST_ICMS := '';
                               BC_ICMS := '';
                               VL_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_H30vlr_icms.AsCurrency));
                              END;
                            END;}
                          end;
                          FAT_CD_R_GAM_H30.Next;
                        end;
                    end;
              end;

              FAT_CD_R_GAM_H20.Next;
            end;
        end
      else
        begin
          IND_MOV := ACBrEFDBlocos.imSemDados;
        end;
    end;
  end;
end;

procedure TFAT_FM_M_GAM.Spedfiscal_K;
begin
  with ACBrSPEDFiscal1.Bloco_K do
   begin
     with RegistroK001New do
      begin
        IND_MOV := ACBrEFDBlocos.imComDados;

        with RegistroK100New do
          begin
            DT_INI := dtaInicial.Date;
            DT_FIN := dtaFinal.Date;
          end;
      end;
   end;
end;

procedure TFAT_FM_M_GAM.SpedPisCofins_0;
Var
item_anterior,yEmpresa,xEmpresa:string;
I: integer;
begin

  FAT_CD_X_GAM_150.EmptyDataSet;

  xEmpresa := '';
  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          yEmpresa := trim(copy(ClbEmpresa.Items[I],1,1));
          if xEmpresa <> '' then
           begin
             xEmpresa :=
             xEmpresa + ',' +''''+trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
          if xEmpresa = '' then
           begin
             xEmpresa :=
             xEmpresa +''''+ trim(copy(ClbEmpresa.Items[I],1,1))+'''';
           end;
        end;
    end;

  item_anterior := '';
  with ACBrSPEDPisCofins1 do
   begin
     DT_INI := dtaInicial.Date;
     DT_FIN := dtaFinal.Date;
     IniciaGeracao;
   end;

   with ACBrSPEDPisCofins1.Bloco_0 do
   begin
      // Dados da Empresa
      with Registro0000New do
      begin
        COD_VER          := vlVersao201;

        case dmGeral.CAD_CD_C_PAR_CTRefc_tipo_escrituracao.AsInteger of
          0: TIPO_ESCRIT := tpEscrOriginal;
          1: TIPO_ESCRIT := tpEscrRetificadora;
        end;

        case dmGeral.CAD_CD_C_PAR_CTRefc_situa_especial.AsInteger of
          0: IND_SIT_ESP := indSitAbertura;
          1: IND_SIT_ESP := indSitCisao;
          2: IND_SIT_ESP := indSitFusao;
          3: IND_SIT_ESP := indSitIncorporacao;
          4: IND_SIT_ESP := indSitEncerramento;
        else IND_SIT_ESP := indNenhum
        end;

        NUM_REC_ANTERIOR := txtNumReciboEscrituracaoAnterior.Text;

        NOME             := dmgeral.CAD_CD_C_PARemp_razao.AsString;
        CNPJ             := RemoveCaracter(dmgeral.CAD_CD_C_PARemp_cnpj.AsString,['/','.','-']);
        UF               := dmgeral.CAD_CD_C_PARint_uf.AsString;
        COD_MUN          := StrToInt(trim(dmgeral.CAD_CD_C_PARid_cidade.AsString));
        SUFRAMA          := dmgeral.CAD_CD_C_PARemp_suframa.AsString;

        Case dmGeral.CAD_CD_C_PAR_CTRefc_ind_nat_pj.AsInteger of
           00: IND_NAT_PJ := indNatPJSocEmpresariaGeral;
           01: IND_NAT_PJ := indNatPJSocCooperativa;
           02: IND_NAT_PJ := indNatPJEntExclusivaFolhaSal;
           03: IND_NAT_PJ := indNatPJSocEmpresariaGeralSCP;
           04: IND_NAT_PJ := indNatPJSocCooperativaSCP;
           05: IND_NAT_PJ := indNatPJSocContaParticante;
        end;

        case dmGeral.CAD_CD_C_PAR_CTRefc_ind_ativ.AsInteger of
          0: IND_ATIV    := indAtivIndustrial;
          1: IND_ATIV    := indAtivPrestadorServico;
          2: IND_ATIV    := indAtivComercio;
          3: IND_ATIV    := indAtivoFincanceira;
          4: IND_ATIV    := indAtivoImobiliaria;
          9: IND_ATIV    := indAtivoOutros;
        end;

        with Registro0001New do
        begin
           IND_MOV := ACBrEPCBlocos.imComDados;

           // FILHO - Dados do contador.
           with Registro0100New do
           begin
              NOME       := dmgeral.CAD_CD_C_PARcnt_nome.AsString;
              CPF        := RemoveCaracter(dmgeral.CAD_CD_C_PARcnt_cpf.AsString,['/','.','-']); // Deve ser uma informação valida
              CRC        := dmgeral.CAD_CD_C_PARcnt_crc.AsString;
            //  CNPJ       := RemoveCaracter(dmgeral.CAD_CD_C_PARcnt_cnpj.AsString,['/','.','-']);
              CEP        := dmgeral.CAD_CD_C_PARcnt_cep.AsString;
              ENDERECO   := dmgeral.CAD_CD_C_PARcnt_endereco.AsString;
              NUM        := dmgeral.CAD_CD_C_PARcnt_numero.AsString;
              COMPL      := dmgeral.CAD_CD_C_PARcnt_complemento.AsString;
              BAIRRO     := dmgeral.CAD_CD_C_PARcnt_bairro.AsString;
              FONE       := dmgeral.CAD_CD_C_PARcnt_telefone.AsString;
              FAX        := dmgeral.CAD_CD_C_PARcnt_fax.AsString;
              EMAIL      := dmgeral.CAD_CD_C_PARcnt_email.AsString;
              COD_MUN    := StrToInt(trim(dmgeral.CAD_CD_C_PARid_cidade.AsString));
           end;

           // FILHO - Regime de Apuração
           with Registro0110New do
           begin
             case dmGeral.CAD_CD_C_PAR_CTRefc_cod_inc_trib.AsInteger of
               1: COD_INC_TRIB  := codEscrOpIncNaoCumulativo;
               2: COD_INC_TRIB  := codEscrOpIncCumulativo;
               3: COD_INC_TRIB  := codEscrOpIncAmbos;
             end;

              if not (COD_INC_TRIB = codEscrOpIncCumulativo) then
                begin
                  case dmGeral.CAD_CD_C_PAR_CTRefc_ind_apro_cred.AsInteger of
                    1: IND_APRO_CRED := indMetodoApropriacaoDireta;
                    2: IND_APRO_CRED := indMetodoDeRateioProporcional;
                  end;
                end;

              case dmGeral.CAD_CD_C_PAR_CTRefc_cod_tipo_cont.AsInteger of
                1: COD_TIPO_CONT := codIndTipoConExclAliqBasica;
                2: COD_TIPO_CONT := codIndTipoAliqEspecificas;
              end;

              if COD_INC_TRIB = codEscrOpIncCumulativo then  //Campo IND_REG_CUM apenas para Lucro Presumido e (COD_INC_TRIB = 2)
                IND_REG_CUM := codRegimeCompetEscritDetalhada;               //IND_REG_CUM := 0;

              if (COD_INC_TRIB = codEscrOpIncAmbos) then
                begin
                  with Registro0111 do
                    begin
                      REC_BRU_NCUM_TRIB_MI := StrToCurr(TXT_REC_BRU_NCUM_TRIB_MI.Text);
                      REC_BRU_NCUM_NT_MI   := StrToCurr(TXT_REC_BRU_NCUM_NT_MI.Text);
                      REC_BRU_NCUM_EXP     := StrToCurr(TXT_REC_BRU_NCUM_EXP.Text);
                      REC_BRU_CUM          := StrToCurr(TXT_REC_BRU_CUM.Text);
                      REC_BRU_TOTAL        := StrToCurr(TXT_REC_BRU_TOTAL.Text);
                    end;
                end;
           end;
           //0140 - Tabela de Cadastro de Estabelecimento
           // FILHO
              For I := 0 to clbEmpresa.Items.Count - 1 do
              begin
                if ClbEmpresa.Checked[I] then
                begin
                yEmpresa := trim(copy(ClbEmpresa.Items[I],1,1));

                dmGeral.BUS_CD_C_PAR.Close;
                dmGeral.BUS_CD_C_PAR.Data :=
                dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([0, yEmpresa]));

                with Registro0140New do // falta o select!
                begin
                   COD_EST := dmGeral.BUS_CD_C_PARid_empresa.AsString;
                   NOME    := dmGeral.BUS_CD_C_PARemp_razao.AsString;
                   CNPJ    := dmGeral.BUS_CD_C_PARemp_cnpj.AsString; // os oito primeiros dígitos do CNPJ devem bater...
                   UF      := dmGeral.BUS_CD_C_PARint_uf.AsString;

                   if (UpperCase(dmgeral.BUS_CD_C_PARemp_ie.AsString) = 'ISENTO') or (dmgeral.BUS_CD_C_PARemp_ie.AsString = '') then
                     IE := ''
                   else
                     IE := RemoveCaracter(Trim(dmGeral.BUS_CD_C_PARemp_ie.AsString),['/','.','-']);

                   COD_MUN := StrToInt(trim(dmGeral.BUS_CD_C_PARid_cidade.AsString));
                   IM      := dmGeral.BUS_CD_C_PARemp_im.AsString;
                   SUFRAMA := dmGeral.BUS_CD_C_PARemp_suframa.AsString;

                   //Se for o estabelecimento 2 geramos um registro 0145 que é necessário para o bloco P
                    { with Registro0145New do
                     begin
                       COD_INC_TRIB := '1';
                       VL_REC_TOT   := 3;
                       VL_REC_ATIV  := 2;
                       VL_REC_DEMAIS_ATIV := 1;

                       INFO_COMPL := '';
                     end;}

                      //0150 - Tabela de Cadastro do Participante

                      FAT_PR_X_GAM_150('''01'',''04'',''06'',''28'',''29'',''1B'',''55'',''2D'',''59'',''07'',''08'',''8B'',''09'',''10'',''11'',''21'',''22'',''26'',''27'',''57''');

                      while not FAT_CD_X_GAM_150.eof do
                      begin
                          with Registro0150New do
                          begin
                             COD_PART := RemoveCaracter(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString,['/','.','-']);
                             NOME     := FAT_CD_X_GAM_150nome.AsString;
                             COD_PAIS := FAT_CD_X_GAM_150cod_pais.AsString;

                             if length(RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-'])) = 14 then   // cnpj
                              begin
                                CNPJ := RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-']);
                                CPF  := '';
                              end
                             else
                              begin
                                if length(RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-'])) = 11 then  // cpf
                                  begin
                                    CNPJ := '';
                                    CPF  := RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-']);
                                  end
                                else
                                  begin
                                    if length(RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-'])) > 0 then
                                    begin
                                      if length(RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-'])) > 11 then   // cnpj invalido
                                        begin
                                          CNPJ := RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-']);
                                          CPF  := '';
                                        end
                                      else    // cpf invalido
                                        begin
                                          CNPJ := '';
                                          CPF  := RemoveCaracter(Trim(FAT_CD_X_GAM_150doc_cnpj_cpf.AsString),['/','.','-']);
                                        end;
                                    end;
                                  end;
                              end;

                             if (UpperCase(FAT_CD_X_GAM_150ie.AsString) = 'ISENTO') or (FAT_CD_X_GAM_150ie.AsString = '0') then
                               IE := ''
                             else
                               IE := RemoveCaracter(Trim(FAT_CD_X_GAM_150ie.AsString),['/','.','-']);

                             COD_MUN  := StrToInt(trim(FAT_CD_X_GAM_150id_cidade.AsString));
                             SUFRAMA  := FAT_CD_X_GAM_150suframa.AsString;
                             ENDERECO := FAT_CD_X_GAM_150endereco.AsString;
                             NUM      := FAT_CD_X_GAM_150numero.AsString;
                             COMPL    := FAT_CD_X_GAM_150end_complemento.AsString;
                             BAIRRO   := TRIM(FAT_CD_X_GAM_150bairro.AsString);
                          end;
                      FAT_CD_X_GAM_150.Next;
                      end;

                   // 0190 - Identificação das Unidades de Medida

                      cdsUnidade.EmptyDataSet;
                      cdsUnidade.IndexFieldNames:='Unid';

                      FAT_CD_R_GAM_190.First;
                      while not FAT_CD_R_GAM_190.Eof do
                      begin
                        IF not cdsUnidade.Locate('UNID',trim(AnsiUpperCase(FAT_CD_R_GAM_190.FieldByName('ID_UNIDADE').Text)),[loCaseInsensitive]) Then
                             begin
                               cdsUnidade.Insert;
                               cdsUnidade.FieldByName('UNID').AsString :=trim(AnsiUpperCase(FAT_CD_R_GAM_190.fieldByName('ID_UNIDADE').AsString));
                               cdsUnidade.FieldByName('DESC').AsString :=trim(AnsiLowerCase(FAT_CD_R_GAM_190.fieldByName('DESCRICAO').AsString));
                               cdsUnidade.Post;
                             end;
                      FAT_CD_R_GAM_190.Next
                      end;

                      cdsUnidade.First;
                      while not cdsUnidade.Eof do
                      begin
                        with Registro0190New do
                          begin
                             UNID  := cdsUnidadeunid.AsString;
                             DESCR := cdsUnidadedesc.AsString;
                          end;
                        cdsUnidade.Next;
                      end;
                      // 0200 - Tabela de Identificação do Item (Produtos e Serviços)

                      cdsItens.EmptyDataSet;
                      cdsItens.IndexFieldNames:='ID_ITEM';
                      FAT_CD_R_GAM_200.First;
                      while not FAT_CD_R_GAM_200.Eof do
                        begin
                          IF not cdsItens.Locate('ID_ITEM',FAT_CD_R_GAM_200.FieldByName('ID_ITEM').AsString,[]) Then
                             begin
                               cdsItens.Insert;
                               cdsItens.FieldByName('ID_ITEM').AsString   :=FAT_CD_R_GAM_200.fieldByName('ID_ITEM').AsString;
                               cdsItens.FieldByName('DESCRICAO').AsString :=FAT_CD_R_GAM_200.fieldByName('DESCRICAO').AsString;
                               cdsItens.FieldByName('COD_BARRA').AsString :=FAT_CD_R_GAM_200.fieldByName('COD_BARRA').AsString;
                               cdsItens.FieldByName('COD_ANT_ITEM').AsString := item_anterior;
                               cdsItens.FieldByName('UND_COMPRA').AsString := FAT_CD_R_GAM_200.fieldByName('ID_UND_COMPRA').AsString;
                               cdsItens.FieldByName('TIPO_ITEM').AsString := FAT_CD_R_GAM_200tipo_item.AsString;
                               cdsItens.FieldByName('COD_NCM').AsString := FAT_CD_R_GAM_200id_ncm.AsString;
                               cdsItens.FieldByName('EX_IPI').AsString := FAT_CD_R_GAM_200ex_ipi.AsString;
                               cdsItens.FieldByName('COD_GEN').AsString := FAT_CD_R_GAM_200cod_gen.AsString;
                               cdsItens.FieldByName('ALIQ_ICMS').AsInteger := FAT_CD_R_GAM_200aliq_icms.AsInteger;
                               item_anterior:= FAT_CD_R_GAM_200id_item.AsString;
                               cdsItens.Post;
                            end;
                          FAT_CD_R_GAM_200.Next;
                        end;

                     FAT_CD_R_GAM_C400.First;
                     while not FAT_CD_R_GAM_C400.Eof do
                     begin
                       FAT_CD_R_GAM_C405.Close;
                       FAT_CD_R_GAM_C405.Data :=
                         FAT_CD_R_GAM_C405.DataRequest(
                           VarArrayOf([FAT_CD_R_GAM_C400ecf_serial_impressora.Text,rDtaIni, rDtaFin]));

                       FAT_CD_R_GAM_C405.First;
                         while not FAT_CD_R_GAM_C405.Eof do
                         begin
                           FAT_CD_R_GAM_200P.Close;
                           FAT_CD_R_GAM_200P.Data :=
                             FAT_CD_R_GAM_200P.DataRequest(
                               VarArrayOf([xEmpresa,FAT_CD_R_GAM_C405data_movimento.Text]));

                           FAT_CD_R_GAM_200P.First;
                           while not FAT_CD_R_GAM_200P.Eof do
                           begin
                             IF not cdsItens.Locate('ID_ITEM',FAT_CD_R_GAM_200P.FieldByName('ID_ITEM').AsString,[]) Then
                             begin
                               cdsItens.Insert;
                               cdsItens.FieldByName('ID_ITEM').AsString   :=FAT_CD_R_GAM_200P.fieldByName('ID_ITEM').AsString;
                               cdsItens.FieldByName('DESCRICAO').AsString :=FAT_CD_R_GAM_200P.fieldByName('DESCRICAO').AsString;
                               cdsItens.FieldByName('COD_BARRA').AsString :=FAT_CD_R_GAM_200P.fieldByName('COD_BARRA').AsString;
                               cdsItens.FieldByName('COD_ANT_ITEM').AsString := item_anterior;
                               cdsItens.FieldByName('UND_COMPRA').AsString := FAT_CD_R_GAM_200P.fieldByName('ID_UND_COMPRA').AsString;
                               cdsItens.FieldByName('TIPO_ITEM').AsString := FAT_CD_R_GAM_200Ptipo_item.AsString;
                               cdsItens.FieldByName('COD_NCM').AsString := FAT_CD_R_GAM_200Pid_ncm.AsString;
                               cdsItens.FieldByName('EX_IPI').AsString := FAT_CD_R_GAM_200Pex_ipi.AsString;
                               cdsItens.FieldByName('COD_GEN').AsString := FAT_CD_R_GAM_200Pcod_gen.AsString;
                               cdsItens.FieldByName('ALIQ_ICMS').AsInteger := FAT_CD_R_GAM_200Paliq_icms.AsInteger;
                               item_anterior:= FAT_CD_R_GAM_200Pid_item.AsString;
                               cdsItens.Post;
                            end;
                             FAT_CD_R_GAM_200P.Next;
                           end;

                           FAT_CD_R_GAM_C405.Next;
                         end;
                       FAT_CD_R_GAM_C400.Next;
                     end;
                      item_anterior := '';
                      cdsItens.First;
                      while not cdsItens.Eof do
                      begin
                        with Registro0200New do
                        begin
                           COD_ITEM     := cdsItensid_item.AsString;
                           DESCR_ITEM   := cdsItensdescricao.AsString;
                           COD_BARRA    := cdsItenscod_barra.AsString;
                           //COD_ANT_ITEM := item_anterior;   chamado 2024
                           UNID_INV     := cdsItensund_compra.AsString;

                           case cdsItenstipo_item.AsInteger of
                             0: TIPO_ITEM    := tiMercadoriaRevenda;
                             1: TIPO_ITEM    := tiMateriaPrima;
                             2: TIPO_ITEM    := tiEmbalagem;
                             3: TIPO_ITEM    := tiProdutoProcesso;
                             4: TIPO_ITEM    := tiProdutoAcabado;
                             5: TIPO_ITEM    := tiSubproduto;
                             6: TIPO_ITEM    := tiProdutoIntermediario;
                             7: TIPO_ITEM    := tiMaterialConsumo;
                             8: TIPO_ITEM    := tiAtivoImobilizado;
                             9: TIPO_ITEM    := tiServicos;
                            10: TIPO_ITEM    := tiOutrosInsumos;
                            99: TIPO_ITEM    := tiOutras;
                           end;

                           COD_NCM      := cdsItenscod_ncm.AsString;
                           EX_IPI       := cdsItensex_ipi.AsString;
                           COD_GEN      := cdsItenscod_gen.AsString;
                           COD_LST      := ''; // ver com max o que mariel passou neste campo;
                           ALIQ_ICMS    := cdsItensaliq_icms.AsInteger;

                           item_anterior:= cdsItensid_item.AsString;
                        end;
                      cdsItens.Next;
                      end;     // fim do registro 0200 - itens

                      // 0400 - Tabela de Natureza da Operação/Prestação (Produtos e Serviços)
                      FAT_CD_R_GAM_400.First;
                      while not FAT_CD_R_GAM_400.Eof do
                      begin
                        with Registro0400New do
                        begin
                          COD_NAT := FAT_CD_R_GAM_400codigo.AsString;
                          DESCR_NAT := FAT_CD_R_GAM_400descricao.AsString;
                        end;
                      FAT_CD_R_GAM_400.Next;
                      end;

                      // 0450 - Tabela de Informação complementar
                      {FAT_CD_R_GAM_450.First;
                      while not FAT_CD_R_GAM_450.Eof do
                      begin
                        if not (FAT_CD_R_GAM_450codigo.AsString = '') then
                          begin
                            with Registro0450New do
                            begin
                              COD_INF := FAT_CD_R_GAM_450codigo.AsString;
                              TXT := FAT_CD_R_GAM_450descricao.AsString;
                            end;
                          end;
                      FAT_CD_R_GAM_450.Next;
                      end;}

                end;
                end;
              end; // fim do "For" por empresa selecionada;

           // FILHO - REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS

           BUS_CD_C_PCC.Close;
           BUS_CD_C_PCC.Data :=
              BUS_CD_C_PCC.DataRequest(
                VarArrayOf([1,'%']));

           while not BUS_CD_C_PCC.eof do
              begin
                 with Registro0500New do
                   begin
                     DT_ALT      := StrToDate('01/01/2009');
                     case StrToInt(trim(BUS_CD_C_PCC.FieldByName('cod_nat_cc').AsString)) of
                        01: COD_NAT_CC := ncgAtivo;
                        02: COD_NAT_CC := ncgPassivo;
                        03: COD_NAT_CC := ncgLiquido;
                        04: COD_NAT_CC := ncgResultado;
                        05: COD_NAT_CC := ncgCompensacao;
                     else
                        COD_NAT_CC := ncgOutras;
                     end;
                     if BUS_CD_C_PCC.FieldByName('ind_cta').AsString  = 'S' then
                        IND_CTA     := indCTASintetica;
                     if BUS_CD_C_PCC.FieldByName('ind_cta').AsString  = 'A' then
                        IND_CTA     :=  indCTAnalitica;    //A Analitica
                     //IND_CTA     := BUS_CD_C_PCC.FieldByName('ind_cta').AsString;  indCTASintetica;
                     NIVEL       := BUS_CD_C_PCC.FieldByName('nivel').AsString;
                     COD_CTA     := BUS_CD_C_PCC.FieldByName('cod_cta').AsString; //  '01234';
                     NOME_CTA    := BUS_CD_C_PCC.FieldByName('nome_cta').AsString; // 'NOME';
                     COD_CTA_REF := BUS_CD_C_PCC.FieldByName('cod_cta_ref').AsString; // '0123458';
                     CNPJ_EST    := RemoveCaracter(dmgeral.BUS_CD_C_PARemp_cnpj.AsString,['/','.','-']);
                   end;
                 BUS_CD_C_PCC.Next;
              end;
           BUS_CD_C_PCC.first;

           // FILHO - REGISTRO 0600: CENTRO DE CUSTO
           with Registro0600New do
           begin
             DT_ALT := StrToDate('01/08/2019');
             COD_CCUS := '01';
             CCUS:= 'Nome';
           end;
        end;
      end;
   end;
end;

procedure TFAT_FM_M_GAM.SpedPisCofins_A;
var
  Cont_item,I: integer;
  yEmpresa,xEmpresa: string;
  cstPis: string;
begin
  Cont_item := 0;

  with ACBrSPEDPisCofins1.Bloco_A do
   begin
      with RegistroA001New do
      begin
         IND_MOV := ACBrEPCBlocos.imComDados;
         //

         For I := 0 to clbEmpresa.Items.Count - 1 do
         begin
           if ClbEmpresa.Checked[I] then
           begin
           yEmpresa := trim(copy(ClbEmpresa.Items[I],1,1));
           xEmpresa := ''''+ trim(copy(ClbEmpresa.Items[I],1,1))+'''';

           dmGeral.BUS_CD_C_PAR.Close;
           dmGeral.BUS_CD_C_PAR.Data :=
           dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([0, yEmpresa]));

             with RegistroA010New do
             begin
               CNPJ := dmGeral.BUS_CD_C_PARemp_cnpj.AsString; //ou 33333333333328

               FAT_CD_R_GAM_A100.Close;
               FAT_CD_R_GAM_A100.Data :=
                 FAT_CD_R_GAM_A100.DataRequest(
                   VarArrayOf([xEmpresa,rDtaIni, rDtaFin]));

               FAT_CD_R_GAM_A100.First;
               while not FAT_CD_R_GAM_A100.Eof do
               begin
                  with RegistroA100New do
                  begin
                    case FAT_CD_R_GAM_A100ind_operacao.AsInteger of
                      0: IND_OPER  := itoContratado;
                      1: IND_OPER  := itoPrestado;
                    end;

                    case FAT_CD_R_GAM_A100ind_emitente.AsInteger of
                      0: IND_EMIT  := iedfProprio;
                      1: IND_EMIT  := iedfTerceiro;
                    end;

                     COD_PART      := FAT_CD_R_GAM_A100cpf_cnpj.AsString;

                     case FAT_CD_R_GAM_A100cod_sit.AsInteger of
                       0: COD_SIT  := sdfRegular;
                       2: COD_SIT  := sdfCancelado;
                     end;

                     SER           := FAT_CD_R_GAM_A100serie.AsString;
                     SUB           := FAT_CD_R_GAM_A100sub_serie.AsString;
                     NUM_DOC       := FAT_CD_R_GAM_A100numero.AsString;

                     if FAT_CD_R_GAM_C20nfe_chave.AsString = '' then // gerador de chave NFE, CHV;
                        begin
                          CHV_NFSE := MontaCheveNfe(copy( dmgeral.BUS_CD_C_PARid_cidade.AsString,1,2),
                                      FAT_CD_R_GAM_A100dta_emissao.Value,dmgeral.BUS_CD_C_PARemp_cnpj.AsString,trim(FAT_CD_R_GAM_A100modelo.AsString),trim(FAT_CD_R_GAM_A100serie.AsString),
                                      strtoint(trim(FAT_CD_R_GAM_A100numero.AsString)),strtoint(trim(FAT_CD_R_GAM_A100numero.AsString)),'1');
                        end
                      else
                        begin
                          CHV_NFSE := FAT_CD_R_GAM_A100nfe_chave.AsString;
                        end;

                     DT_DOC        := FAT_CD_R_GAM_A100dta_emissao.AsDateTime;
                     DT_EXE_SERV   := FAT_CD_R_GAM_A100dta_documento.AsDateTime;
                     VL_DOC        := formatfloat('#####0.00',FAT_CD_R_GAM_A100vlr_doc.AsFloat);

                     case FAT_CD_R_GAM_A100int_tipopgto.AsInteger of
                       0: IND_PGTO := tpVista;
                       1: IND_PGTO := tpPrazo;
                       9: IND_PGTO := tpSemPagamento;
                     else IND_PGTO := tpNenhum;
                     end;

                     VL_DESC       := formatfloat('#####0.00',FAT_CD_R_GAM_A100vlr_desconto.AsFloat);
                     VL_BC_PIS     := formatfloat('#####0.00',FAT_CD_R_GAM_A100pis_base.AsFloat);
                     VL_PIS        := formatfloat('#####0.00',FAT_CD_R_GAM_A100vlr_pis.AsFloat);
                     VL_BC_COFINS  := formatfloat('#####0.00',FAT_CD_R_GAM_A100cof_base.AsFloat);
                     VL_COFINS     := formatfloat('#####0.00',FAT_CD_R_GAM_A100vlr_cof.AsFloat);
                     VL_PIS_RET    := formatfloat('#####0.00',FAT_CD_R_GAM_A100vlr_pis_ret.AsFloat);
                     VL_COFINS_RET := formatfloat('#####0.00',FAT_CD_R_GAM_A100vlr_cof_ret.AsFloat);
                     VL_ISS        := formatfloat('#####0.00',FAT_CD_R_GAM_A100vlr_iss.AsFloat);

                     //A170

                     FAT_CD_R_GAM_A170.Close;
                     FAT_CD_R_GAM_A170.Data :=
                       FAT_CD_R_GAM_A170.DataRequest(
                         VarArrayOf([FAT_CD_R_GAM_A100id_fiscal.AsInteger]));

                     FAT_CD_R_GAM_A170.First;
                     while not FAT_CD_R_GAM_A170.Eof do
                     begin
                       with RegistroA170New do   //Inicio Adicionar os Itens:
                       begin
                          Cont_item := Cont_item + 1;
                          NUM_ITEM         := Cont_item;
                          COD_ITEM         := FAT_CD_R_GAM_A170id_item.AsString; //Código deve ser baseado no registro 0200
                          DESCR_COMPL      := FAT_CD_R_GAM_A170desc_item.AsString;
                          VL_ITEM          := formatfloat('#####0.00',FAT_CD_R_GAM_A170vlr_liquido.AsFloat);

                          { TODO -oMaxsuel  -cCriação : Criado em 29/01/2018 }
                          if FAT_CD_R_GAM_A100ind_operacao.AsInteger = 1 then // Para poder criar o registro M400
                             begin
                               cstPis := FAT_CD_R_GAM_A170id_st_pis.AsString;
                               if (pos(cstPis,'04-05-06-07-08-09') <> 0) then
                                  begin
                                    if cdsM400.Locate('CST_PIS;COD_CTA',VarArrayOf([cstPis,FAT_CD_R_GAM_A170cod_cta.AsString]),[]) then
                                       begin
                                         cdsM400.edit;
                                         cdsM400.FieldByName('VL_TOT_REC').AsCurrency :=
                                             cdsM400.FieldByName('VL_TOT_REC').AsCurrency +
                                                 FAT_CD_R_GAM_A170vlr_liquido.AsFloat;
                                         cdsM400.Post;
                                       end
                                    else
                                       begin
                                         cdsM400.Insert;
                                         cdsM400.FieldByName('CST_PIS').AsString :=
                                                 FAT_CD_R_GAM_A170id_st_pis.AsString;
                                         cdsM400.FieldByName('COD_CTA').AsString :=
                                                 FAT_CD_R_GAM_A170cod_cta.AsString;
                                         cdsM400.FieldByName('VL_TOT_REC').AsCurrency :=
                                                 FAT_CD_R_GAM_A170vlr_liquido.AsCurrency;
                                         cdsM400.Post;
                                       end;

                                  //  if trim(FAT_CD_R_GAM_A170nat_rec.AsString) <> '' then
                                   //    begin
                                          if cdsM410.Locate('NAT_REC;COD_CTA',VarArrayOf([FAT_CD_R_GAM_A170nat_rec.AsString,FAT_CD_R_GAM_A170cod_cta.AsString]),[]) then
                                             begin
                                               cdsM410.edit;
                                               cdsM410.FieldByName('VL_REC').AsCurrency :=
                                                   cdsM410.FieldByName('VL_REC').AsCurrency +
                                                       FAT_CD_R_GAM_A170vlr_liquido.AsFloat;
                                               cdsM410.Post;
                                             end
                                          else
                                             begin
                                               cdsM410.Insert;
                                               cdsM410.FieldByName('NAT_REC').AsString :=
                                                       FAT_CD_R_GAM_A170nat_rec.AsString;
                                               cdsM410.FieldByName('COD_CTA').AsString :=
                                                       FAT_CD_R_GAM_A170cod_cta.AsString;
                                               cdsM410.FieldByName('VL_REC').AsCurrency :=
                                                       FAT_CD_R_GAM_A170vlr_liquido.AsCurrency;
                                               cdsM410.Post;
                                             end;
                                     //  end;
                                  end;
                             end;


                          VL_DESC          := formatfloat('#####0.00',FAT_CD_R_GAM_A170vlr_desconto.AsFloat);

                          case FAT_CD_R_GAM_A170nat_bc_cred.AsInteger of
                            01: NAT_BC_CRED := bccAqBensRevenda;
                            02: NAT_BC_CRED := bccAqBensUtiComoInsumo;
                            03: NAT_BC_CRED := bccAqServUtiComoInsumo;
                            04: NAT_BC_CRED := bccEnergiaEletricaTermica;
                            05: NAT_BC_CRED := bccAluguelPredios;
                            06: NAT_BC_CRED := bccAluguelMaqEquipamentos;
                            07: NAT_BC_CRED := bccArmazenagemMercadoria;
                            08: NAT_BC_CRED := bccConArrendamentoMercantil;
                            09: NAT_BC_CRED := bccMaqCredDepreciacao;
                            10: NAT_BC_CRED := bccMaqCredAquisicao;
                            11: NAT_BC_CRED := bccAmortizacaoDepreciacaoImoveis;
                            12: NAT_BC_CRED := bccDevolucaoSujeita;
                            13: NAT_BC_CRED := bccOutrasOpeComDirCredito;
                            14: NAT_BC_CRED := bccAtTransporteSubcontratacao;
                            15: NAT_BC_CRED := bccAtImobCustoIncorrido;
                            16: NAT_BC_CRED := bccAtImobCustoOrcado;
                            17: NAT_BC_CRED := bccAtPresServ;
                            18: NAT_BC_CRED := bccEstoqueAberturaBens;
                          else  NAT_BC_CRED := bccVazio;
                          end;

                          case FAT_CD_R_GAM_A170ind_orig_cred.AsInteger of
                            0: IND_ORIG_CRED := opcMercadoInterno;
                            1: IND_ORIG_CRED := opcImportacao;
                          else IND_ORIG_CRED := opcVazio;
                          end;

                          case FAT_CD_R_GAM_A170id_st_pis.AsInteger of
                            1: CST_PIS     := stpisValorAliquotaNormal;
                            2: CST_PIS     := stpisValorAliquotaDiferenciada;
                            3: CST_PIS     := stpisQtdeAliquotaUnidade;
                            4: CST_PIS     := stpisMonofaticaAliquotaZero;
                            5: CST_PIS     := stpisValorAliquotaPorST;
                            6: CST_PIS     := stpisAliquotaZero;
                            7: CST_PIS     := stpisIsentaContribuicao;
                            8: CST_PIS     := stpisSemIncidenciaContribuicao;
                            9: CST_PIS     := stpisSuspensaoContribuicao;
                           49: CST_PIS     := stpisOutrasOperacoesSaida;
                           50: CST_PIS     := stpisOperCredExcRecTribMercInt;
                           51: CST_PIS     := stpisOperCredExcRecNaoTribMercInt;
                           52: CST_PIS     := stpisOperCredExcRecExportacao;
                           53: CST_PIS     := stpisOperCredRecTribNaoTribMercInt;
                           54: CST_PIS     := stpisOperCredRecTribMercIntEExportacao;
                           55: CST_PIS     := stpisOperCredRecNaoTribMercIntEExportacao;
                           56: CST_PIS     := stpisOperCredRecTribENaoTribMercIntEExportacao;
                           60: CST_PIS     := stpisCredPresAquiExcRecTribMercInt;
                           61: CST_PIS     := stpisCredPresAquiExcRecNaoTribMercInt;
                           62: CST_PIS     := stpisCredPresAquiExcExcRecExportacao;
                           63: CST_PIS     := stpisCredPresAquiRecTribNaoTribMercInt;
                           64: CST_PIS     := stpisCredPresAquiRecTribMercIntEExportacao;
                           65: CST_PIS     := stpisCredPresAquiRecNaoTribMercIntEExportacao;
                           66: CST_PIS     := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;
                           67: CST_PIS     := stpisOutrasOperacoes_CredPresumido;
                           70: CST_PIS     := stpisOperAquiSemDirCredito;
                           71: CST_PIS     := stpisOperAquiComIsensao;
                           72: CST_PIS     := stpisOperAquiComSuspensao;
                           73: CST_PIS     := stpisOperAquiAliquotaZero;
                           74: CST_PIS     := stpisOperAqui_SemIncidenciaContribuicao;
                           75: CST_PIS     := stpisOperAquiPorST;
                           98: CST_PIS     := stpisOutrasOperacoesEntrada;
                           99: CST_PIS     := stpisOutrasOperacoes;
                          else CST_PIS     := stpisNenhum;
                          end;

                          VL_BC_PIS        := formatfloat('#####0.00',FAT_CD_R_GAM_A170pis_base.AsFloat);
                          ALIQ_PIS         := formatfloat('#####0.00',FAT_CD_R_GAM_A170pis_aliquota.AsFloat);
                          VL_PIS           := formatfloat('#####0.00',FAT_CD_R_GAM_A170pis_valor.AsFloat);

                          case FAT_CD_R_GAM_A170id_st_cof.AsInteger of
                            1: CST_COFINS  := stcofinsValorAliquotaNormal;
                            2: CST_COFINS  := stcofinsValorAliquotaDiferenciada;
                            3: CST_COFINS  := stcofinsQtdeAliquotaUnidade;
                            4: CST_COFINS  := stcofinsMonofaticaAliquotaZero;
                            5: CST_COFINS  := stcofinsValorAliquotaPorST;
                            6: CST_COFINS  := stcofinsAliquotaZero;
                            7: CST_COFINS  := stcofinsIsentaContribuicao;
                            8: CST_COFINS  := stcofinsSemIncidenciaContribuicao;
                            9: CST_COFINS  := stcofinsSuspensaoContribuicao;
                           49: CST_COFINS  := stcofinsOutrasOperacoesSaida;
                           50: CST_COFINS  := stcofinsOperCredExcRecTribMercInt;
                           51: CST_COFINS  := stcofinsOperCredExcRecNaoTribMercInt;
                           52: CST_COFINS  := stcofinsOperCredExcRecExportacao;
                           53: CST_COFINS  := stcofinsOperCredRecTribNaoTribMercInt;
                           54: CST_COFINS  := stcofinsOperCredRecTribMercIntEExportacao;
                           55: CST_COFINS  := stcofinsOperCredRecNaoTribMercIntEExportacao;
                           56: CST_COFINS  := stcofinsOperCredRecTribENaoTribMercIntEExportacao;
                           60: CST_COFINS  := stcofinsCredPresAquiExcRecTribMercInt;
                           61: CST_COFINS  := stcofinsCredPresAquiExcRecNaoTribMercInt;
                           62: CST_COFINS  := stcofinsCredPresAquiExcExcRecExportacao;
                           63: CST_COFINS  := stcofinsCredPresAquiRecTribNaoTribMercInt;
                           64: CST_COFINS  := stcofinsCredPresAquiRecTribMercIntEExportacao;
                           65: CST_COFINS  := stcofinsCredPresAquiRecNaoTribMercIntEExportacao;
                           66: CST_COFINS  := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao;
                           67: CST_COFINS  := stcofinsOutrasOperacoes_CredPresumido;
                           70: CST_COFINS  := stcofinsOperAquiSemDirCredito;
                           71: CST_COFINS  := stcofinsOperAquiComIsensao;
                           72: CST_COFINS  := stcofinsOperAquiComSuspensao;
                           73: CST_COFINS  := stcofinsOperAquiAliquotaZero;
                           74: CST_COFINS  := stcofinsOperAqui_SemIncidenciaContribuicao;
                           75: CST_COFINS  := stcofinsOperAquiPorST;
                           98: CST_COFINS  := stcofinsOutrasOperacoesEntrada;
                           99: CST_COFINS  := stcofinsOutrasOperacoes;
                          else CST_COFINS  := stcofinsNenhum;
                          end;

                          VL_BC_COFINS     := formatfloat('#####0.00',FAT_CD_R_GAM_A170cof_base.AsFloat);
                          ALIQ_COFINS      := formatfloat('#####0.00',FAT_CD_R_GAM_A170pis_aliquota.AsFloat);
                          VL_COFINS        := formatfloat('#####0.00',FAT_CD_R_GAM_A170cof_valor.AsFloat);
                          COD_CTA          := FAT_CD_R_GAM_A170cod_cta.AsString;
                          COD_CCUS         := FAT_CD_R_GAM_A170cod_ccus.AsString;  //Para usar o COD_CCUS é necessário gerar, primeiro, um registro 0600 correspondente.
                        end; //Fim dos Itens;
                     FAT_CD_R_GAM_A170.Next;
                     end;
                  end;
               FAT_CD_R_GAM_A100.Next;
               end;
             end;
           end;
         end; // fim do "for" por empresa selecionada;
      end;
   end;
end;

procedure TFAT_FM_M_GAM.SpedPisCofins_C;
var
  Cont_item,I : integer;
  yEmpresa,xEmpresa,teste2: string;
  teste : currency;
  indEscri: integer;
  cstPis: String;
begin
  Cont_item := 0;
  with ACBrSPEDPisCofins1.Bloco_C do
   begin
      with RegistroC001New do
      begin
         IND_MOV := ACBrEPCBlocos.imComDados;

         For I := 0 to clbEmpresa.Items.Count - 1 do
         begin
           if ClbEmpresa.Checked[I] then
           begin
           yEmpresa := trim(copy(ClbEmpresa.Items[I],1,1));
           xEmpresa := ''''+ trim(copy(ClbEmpresa.Items[I],1,1))+'''';

           dmGeral.BUS_CD_C_PAR.Close;
           dmGeral.BUS_CD_C_PAR.Data :=
           dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([0, yEmpresa]));


           //C010 - Identificação do Estabelecimento
           with RegistroC010New do //Falta criar o Select 0140;
           begin
             CNPJ := dmGeral.BUS_CD_C_PARemp_cnpj.AsString;
             case Vazio(dmGeral.CAD_CD_C_PAR_CTR,'efc_ind_reg_cum') of
              1:
                begin
                  IND_ESCRI := IndEscriConsolidado;
                  indEscri  := 1;
                end;
              2:
                begin
                   IND_ESCRI := IndEscriIndividualizado;
                   indEscri  := 2;
                end;
             end;

             //Inserir Notas...
                //C100 - Documento - Nota Fiscal (código 01), Nota Fiscal Avulsa (código 1B), Nota
                // Fiscal de Produtor (código 04) e NF-e (código 55)

             FAT_CD_R_GAM_C20.Close;
             FAT_CD_R_GAM_C20.Data :=
              FAT_CD_R_GAM_C20.DataRequest(
                VarArrayOf([xEmpresa,rDtaIni, rDtaFin]));

             FAT_CD_R_GAM_C20.First;
             while not FAT_CD_R_GAM_C20.Eof do
             begin
                with RegistroC100New do
                begin
                  case Vazio(FAT_CD_R_GAM_C20,'situacao_lancto') of
                    0: COD_SIT  := sdRegular;
                    1: COD_SIT  := sdfExtRegular;
                    2: COD_SIT  := sdfCancelado;
                    3: COD_SIT  := sdfExtCancelado;
                    4: COD_SIT  := sdfDenegado;
                    5: COD_SIT  := sdfInutilizado;
                    6: COD_SIT  := sdfComplementar;
                    7: COD_SIT  := sdfExtComplementar;
                    8: COD_SIT  := sdfEspecial;
                  end;

                  case Vazio(FAT_CD_R_GAM_C20,'ind_operacao') of
                    0: IND_OPER := ACBrEPCBlocos.tpEntradaAquisicao;
                    1: IND_OPER := ACBrEPCBlocos.tpSaidaPrestacao;
                  end;

                  COD_MOD       := FAT_CD_R_GAM_C20modelo.AsString;

                  if FAT_CD_R_GAM_C20nfe_chave.AsString = '' then // gerador de chave NFE, CHV;
                    begin
                      CHV_NFE :=  MontaCheveNfe(copy( dmgeral.BUS_CD_C_PARid_cidade.AsString,1,2),
                                  FAT_CD_R_GAM_C20dta_emissao.Value,dmgeral.BUS_CD_C_PARemp_cnpj.AsString,trim(FAT_CD_R_GAM_C20modelo.AsString),trim(FAT_CD_R_GAM_C20serie.AsString),
                                  strtoint(trim(FAT_CD_R_GAM_C20numero.AsString)),strtoint(trim(FAT_CD_R_GAM_C20numero.AsString)),'1');
                    end
                  else
                    begin
                      CHV_NFE := FAT_CD_R_GAM_C20nfe_chave.AsString;
                    end;
                  NUM_DOC       := FAT_CD_R_GAM_C20numero.AsString;
                  SER           := FAT_CD_R_GAM_C20serie.AsString;

                  case Vazio(FAT_CD_R_GAM_C20,'ind_emitente') of
                        0: IND_EMIT := ACBrEPCBlocos.edEmissaoPropria;
                        1: IND_EMIT := ACBrEPCBlocos.edTerceiros;
                      end;

                  if not( (FAT_CD_R_GAM_C20situacao_lancto.AsInteger = 2) or
                        (FAT_CD_R_GAM_C20situacao_lancto.AsInteger = 3) or
                        (FAT_CD_R_GAM_C20situacao_lancto.AsInteger = 4) or
                        (FAT_CD_R_GAM_C20situacao_lancto.AsInteger = 5)) then
                    begin

                      COD_PART      := RemoveCaracter(FAT_CD_R_GAM_C20cpf_cnpj.AsString,['/','.','-']); //Baseado no registro 0200
                      DT_DOC        := FAT_CD_R_GAM_C20dta_emissao.AsDateTime;
                      DT_E_S        := FAT_CD_R_GAM_C20dta_documento.AsDateTime;
                      VL_DOC        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_contabil.AsCurrency));

                      case Vazio(FAT_CD_R_GAM_C20,'ind_pagamento') of
                        0: IND_PGTO := tpVista;
                        1: IND_PGTO := tpPrazo;
                        2: IND_PGTO := tpSemPagamento;
                      else IND_PGTO := tpNenhum;
                      end;

                      VL_DESC       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_desconto.AsCurrency));
                      VL_ABAT_NT    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_aba_nt.AsCurrency));
                      VL_MERC       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_mercadoria.AsCurrency));

                      case Vazio(FAT_CD_R_GAM_C20,'ind_frete') of
                        0: IND_FRT  := tfPorContaEmitente;
                        1: IND_FRT  := tfPorContaDestinatario;
                        2: IND_FRT  := tfPorContaTerceiros;
                        9: IND_FRT  := tfSemCobrancaFrete;
                      else IND_FRT  := tfNenhum;
                      end;

                      VL_FRT        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20fre_valor.AsCurrency));
                      VL_SEG        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_seguro.AsCurrency));
                      VL_OUT_DA     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_outras.AsCurrency));
                      VL_BC_ICMS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_base_icms.AsCurrency));
                      VL_ICMS       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_icms.AsCurrency));
                      VL_BC_ICMS_ST := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_base_icms_subst.AsCurrency));
                      VL_ICMS_ST    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_icms_subst.AsCurrency));
                      VL_IPI        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20vlr_ipi.AsCurrency));
                      VL_PIS        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20pis_valor.AsCurrency));
                      VL_COFINS     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20cof_valor.AsCurrency));
                      VL_PIS_ST     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20pis_valor_st.AsCurrency));
                      VL_COFINS_ST  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C20cof_valor_st.AsCurrency));

                      //C170 - Complemento de Documento – Itens do Documento (códigos 01, 1B, 04 e 55)
                      FAT_CD_R_GAM_C300.Close;
                        FAT_CD_R_GAM_C300.Data :=
                          FAT_CD_R_GAM_C300.DataRequest(
                            VarArrayOf([FAT_CD_R_GAM_C20id_fiscal.Text]));



                      Cont_item := 0;

                      FAT_CD_R_GAM_C300.first;
                      while not FAT_CD_R_GAM_C300.Eof do
                      begin
                        with RegistroC170New do   //Inicio Adicionar os Itens:
                        begin
                          Cont_item := Cont_item + 1;
                           NUM_ITEM         := IntToStr(Cont_item);
                           COD_ITEM         := FAT_CD_R_GAM_C300id_item.AsString;
                           DESCR_COMPL      := FAT_CD_R_GAM_C300desc_item.AsString;
                           QTD              := formatfloat('#####0.00',FAT_CD_R_GAM_C300qtde.AsFloat); // O último dígito deve ser ignorado no arquivo
                           UNID             := FAT_CD_R_GAM_C300id_und_compra.AsString;
                           VL_ITEM          := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300vlr_liquido.AsCurrency));
                           VL_DESC          := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300vlr_desconto.AsCurrency));

                           { TODO -oMaxsuel  -cCriação : Criado em 29/01/2018 }
                           if (FAT_CD_R_GAM_C20ind_operacao.AsInteger = 1) then
                             begin
                               if
                                  (FAT_CD_R_GAM_C20modelo.AsString <> '55')
                                     or
                                  (
                                    (FAT_CD_R_GAM_C20modelo.AsString = '55')  and
                                    (indEscri = 1)
                                  )  then // Para poder criar o registro M400
                                  begin
                                    cstPis := FAT_CD_R_GAM_C300id_st_pis.AsString;
                                    if (pos(cstPis,'04-05-06-07-08-09') <> 0) then
                                        begin
                                          if cdsM400.Locate('CST_PIS;COD_CTA',VarArrayOf([cstPis,FAT_CD_R_GAM_C300cod_cta.AsString]),[]) then
                                             begin
                                               cdsM400.edit;
                                               cdsM400.FieldByName('VL_TOT_REC').AsCurrency :=
                                                   cdsM400.FieldByName('VL_TOT_REC').AsCurrency +
                                                       FAT_CD_R_GAM_C300vlr_liquido.AsCurrency;
                                               cdsM400.Post;
                                             end
                                          else
                                             begin
                                               cdsM400.Insert;
                                               cdsM400.FieldByName('CST_PIS').AsString :=
                                                       FAT_CD_R_GAM_C300id_st_pis.AsString;
                                               cdsM400.FieldByName('COD_CTA').AsString :=
                                                       FAT_CD_R_GAM_C300cod_cta.AsString;
                                               cdsM400.FieldByName('VL_TOT_REC').AsCurrency :=
                                                       FAT_CD_R_GAM_C300vlr_liquido.AsCurrency;
                                               cdsM400.Post;
                                             end;


                                         // if trim(FAT_CD_R_GAM_C300nat_rec.AsString) <> '' then
                                          //   begin
                                                if cdsM410.Locate('NAT_REC;COD_CTA',VarArrayOf([FAT_CD_R_GAM_C300nat_rec.AsString,FAT_CD_R_GAM_C300cod_cta.AsString]),[]) then
                                                   begin
                                                     cdsM410.edit;
                                                     cdsM410.FieldByName('VL_REC').AsCurrency :=
                                                         cdsM410.FieldByName('VL_REC').AsCurrency +
                                                             FAT_CD_R_GAM_C300vlr_liquido.AsFloat;
                                                     cdsM410.Post;
                                                   end
                                                else
                                                   begin
                                                     cdsM410.Insert;
                                                     cdsM410.FieldByName('NAT_REC').AsString :=
                                                             FAT_CD_R_GAM_C300nat_rec.AsString;
                                                     cdsM410.FieldByName('COD_CTA').AsString :=
                                                             FAT_CD_R_GAM_C300cod_cta.AsString;
                                                     cdsM410.FieldByName('VL_REC').AsCurrency :=
                                                             FAT_CD_R_GAM_C300vlr_liquido.AsCurrency;
                                                     cdsM410.Post;
                                                   end;
                                           //  end;
                                       end;
                                  end;
                             end;

                           case Vazio(FAT_CD_R_GAM_C300,'ind_mov') of
                             0: IND_MOV     := mfSim;
                             1: IND_MOV     := mfNao;
                           end;

                           case Isenta(FAT_CD_R_GAM_C300,'id_st_icm') of
                             0: CST_ICMS    := sticmsTributadaIntegralmente;
                            10: CST_ICMS    := sticmsTributadaComCobracaPorST;
                            20: CST_ICMS    := sticmsComReducao;
                            30: CST_ICMS    := sticmsIsentaComCobracaPorST;
                            40: CST_ICMS    := sticmsIsenta;
                            41: CST_ICMS    := sticmsNaoTributada;
                            50: CST_ICMS    := sticmsSuspensao;
                            51: CST_ICMS    := sticmsDiferimento;
                            60: CST_ICMS    := sticmsCobradoAnteriormentePorST;
                            70: CST_ICMS    := sticmsComReducaoPorST;
                            90: CST_ICMS    := sticmsOutros;
                           100: CST_ICMS    := sticmsEstrangeiraImportacaoDiretaTributadaIntegralmente;
                           110: CST_ICMS    := sticmsEstrangeiraImportacaoDiretaTributadaComCobracaPorST;
                           120: CST_ICMS    := sticmsEstrangeiraImportacaoDiretaComReducao;
                           130: CST_ICMS    := sticmsEstrangeiraImportacaoDiretaIsentaComCobracaPorST;
                           140: CST_ICMS    := sticmsEstrangeiraImportacaoDiretaIsenta;
                           141: CST_ICMS    := sticmsEstrangeiraImportacaoDiretaNaoTributada;
                           150: CST_ICMS    := sticmsEstrangeiraImportacaoDiretaSuspensao;
                           151: CST_ICMS    := sticmsEstrangeiraImportacaoDiretaDiferimento;
                           160: CST_ICMS    := sticmsEstrangeiraImportacaoDiretaCobradoAnteriormentePorST;
                           170: CST_ICMS    := sticmsEstrangeiraImportacaoDiretaComReducaoPorST;
                           190: CST_ICMS    := sticmsEstrangeiraImportacaoDiretaOutros;
                           200: CST_ICMS    := sticmsEstrangeiraAdqMercIntTributadaIntegralmente;
                           210: CST_ICMS    := sticmsEstrangeiraAdqMercIntTributadaComCobracaPorST;
                           220: CST_ICMS    := sticmsEstrangeiraAdqMercIntComReducao;
                           230: CST_ICMS    := sticmsEstrangeiraAdqMercIntIsentaComCobracaPorST;
                           240: CST_ICMS    := sticmsEstrangeiraAdqMercIntIsenta;
                           241: CST_ICMS    := sticmsEstrangeiraAdqMercIntNaoTributada;
                           250: CST_ICMS    := sticmsEstrangeiraAdqMercIntSuspensao;
                           251: CST_ICMS    := sticmsEstrangeiraAdqMercIntDiferimento;
                           260: CST_ICMS    := sticmsEstrangeiraAdqMercIntCobradoAnteriormentePorST;
                           270: CST_ICMS    := sticmsEstrangeiraAdqMercIntComReducaoPorST;
                           290: CST_ICMS    := sticmsEstrangeiraAdqMercIntOutros;
                           300: CST_ICMS    := csticms300;
                           310: CST_ICMS    := csticms310;
                           320: CST_ICMS    := csticms320;
                           330: CST_ICMS    := csticms330;
                           340: CST_ICMS    := csticms340;
                           341: CST_ICMS    := csticms341;
                           350: CST_ICMS    := csticms350;
                           351: CST_ICMS    := csticms351;
                           360: CST_ICMS    := csticms360;
                           370: CST_ICMS    := csticms370;
                           390: CST_ICMS    := csticms390;
                           400: CST_ICMS    := csticms400;
                           410: CST_ICMS    := csticms410;
                           420: CST_ICMS    := csticms420;
                           430: CST_ICMS    := csticms430;
                           440: CST_ICMS    := csticms440;
                           441: CST_ICMS    := csticms441;
                           450: CST_ICMS    := csticms450;
                           451: CST_ICMS    := csticms451;
                           460: CST_ICMS    := csticms460;
                           470: CST_ICMS    := csticms470;
                           490: CST_ICMS    := csticms490;
                           500: CST_ICMS    := csticms500;
                           end;

                           CFOP             := FAT_CD_R_GAM_C300id_cfo.AsString;
                           COD_NAT          := FAT_CD_R_GAM_C300cod_nat.AsString; //Informar no 0400 antes de utilizá-lo
                           VL_BC_ICMS       := strtocurr(formatcurr('#####0.00', FAT_CD_R_GAM_C300icm_n_base.AsCurrency));
                           ALIQ_ICMS        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300aliq_icms_i.AsCurrency));
                           VL_ICMS          := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300icm_n_valor.AsCurrency));
                           VL_BC_ICMS_ST    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300icm_s_base.AsCurrency));
                           ALIQ_ST          := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300aliq_st.AsCurrency));
                           VL_ICMS_ST       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300icm_s_valor.AsCurrency));

                           case Vazio(FAT_CD_R_GAM_C300,'ind_apur') of
                             0: IND_APUR    := iaMensal;
                             1: IND_APUR    := iaDecendial;
                           else IND_APUR    := iaVazio;
                           end;

                           case Isenta(FAT_CD_R_GAM_C300,'id_st_ipi') of
                             0: CST_IPI     := stipiEntradaRecuperacaoCredito;
                             1: CST_IPI     := stipiEntradaTributradaZero;
                             2: CST_IPI     := stipiEntradaIsenta;
                             3: CST_IPI     := stipiEntradaNaoTributada;
                             4: CST_IPI     := stipiEntradaImune;
                             5: CST_IPI     := stipiEntradaComSuspensao;
                            49: CST_IPI     := stipiOutrasEntradas;
                            50: CST_IPI     := stipiSaidaTributada;
                            51: CST_IPI     := stipiSaidaTributadaZero;
                            52: CST_IPI     := stipiSaidaIsenta;
                            53: CST_IPI     := stipiSaidaNaoTributada;
                            54: CST_IPI     := stipiSaidaImune;
                            55: CST_IPI     := stipiSaidaComSuspensao;
                            90: CST_IPI     := stipiOutrasSaidas;
                           else CST_IPI     := stipiVazio;
                           end;

                           COD_ENQ          := FAT_CD_R_GAM_C300cod_enq.AsString;
                           VL_BC_IPI        := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300ipi_base.AsCurrency));
                           ALIQ_IPI         := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300ipi_aliquota.AsCurrency));
                           VL_IPI           := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C300ipi_valor.AsCurrency));


                           case Isenta(FAT_CD_R_GAM_C300,'id_st_pis') of
                              1: CST_PIS     := stpisValorAliquotaNormal;
                              2: CST_PIS     := stpisValorAliquotaDiferenciada;
                              3: CST_PIS     := stpisQtdeAliquotaUnidade;
                              4: CST_PIS     := stpisMonofaticaAliquotaZero;
                              5: CST_PIS     := stpisValorAliquotaPorST;
                              6: CST_PIS     := stpisAliquotaZero;
                              7: CST_PIS     := stpisIsentaContribuicao;
                              8: CST_PIS     := stpisSemIncidenciaContribuicao;
                              9: CST_PIS     := stpisSuspensaoContribuicao;
                             49: CST_PIS     := stpisOutrasOperacoesSaida;
                             50: CST_PIS     := stpisOperCredExcRecTribMercInt;
                             51: CST_PIS     := stpisOperCredExcRecNaoTribMercInt;
                             52: CST_PIS     := stpisOperCredExcRecExportacao;
                             53: CST_PIS     := stpisOperCredRecTribNaoTribMercInt;
                             54: CST_PIS     := stpisOperCredRecTribMercIntEExportacao;
                             55: CST_PIS     := stpisOperCredRecNaoTribMercIntEExportacao;
                             56: CST_PIS     := stpisOperCredRecTribENaoTribMercIntEExportacao;
                             60: CST_PIS     := stpisCredPresAquiExcRecTribMercInt;
                             61: CST_PIS     := stpisCredPresAquiExcRecNaoTribMercInt;
                             62: CST_PIS     := stpisCredPresAquiExcExcRecExportacao;
                             63: CST_PIS     := stpisCredPresAquiRecTribNaoTribMercInt;
                             64: CST_PIS     := stpisCredPresAquiRecTribMercIntEExportacao;
                             65: CST_PIS     := stpisCredPresAquiRecNaoTribMercIntEExportacao;
                             66: CST_PIS     := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;
                             67: CST_PIS     := stpisOutrasOperacoes_CredPresumido;
                             70: CST_PIS     := stpisOperAquiSemDirCredito;
                             71: CST_PIS     := stpisOperAquiComIsensao;
                             72: CST_PIS     := stpisOperAquiComSuspensao;
                             73: CST_PIS     := stpisOperAquiAliquotaZero;
                             74: CST_PIS     := stpisOperAqui_SemIncidenciaContribuicao;
                             75: CST_PIS     := stpisOperAquiPorST;
                             98: CST_PIS     := stpisOutrasOperacoesEntrada;
                             99: CST_PIS     := stpisOutrasOperacoes;
                            else CST_PIS     := stpisNenhum;
                            end;

                           VL_BC_PIS        := formatfloat('#####0.00',FAT_CD_R_GAM_C300pis_base.AsFloat);
                           ALIQ_PIS_PERC    := formatfloat('#####0.00', FAT_CD_R_GAM_C300pis_aliquota.AsFloat);

                      //     QUANT_BC_PIS     := '';

                      //     ALIQ_PIS_R       := Vazio(FAT_CD_R_GAM_C300,'aliq_pis');
                           VL_PIS           := formatfloat('#####0.00',FAT_CD_R_GAM_C300pis_valor.AsFloat);

                           case Isenta(FAT_CD_R_GAM_C300,'id_st_cof') of
                              1: CST_COFINS  := stcofinsValorAliquotaNormal;
                              2: CST_COFINS  := stcofinsValorAliquotaDiferenciada;
                              3: CST_COFINS  := stcofinsQtdeAliquotaUnidade;
                              4: CST_COFINS  := stcofinsMonofaticaAliquotaZero;
                              5: CST_COFINS  := stcofinsValorAliquotaPorST;
                              6: CST_COFINS  := stcofinsAliquotaZero;
                              7: CST_COFINS  := stcofinsIsentaContribuicao;
                              8: CST_COFINS  := stcofinsSemIncidenciaContribuicao;
                              9: CST_COFINS  := stcofinsSuspensaoContribuicao;
                             49: CST_COFINS  := stcofinsOutrasOperacoesSaida;
                             50: CST_COFINS  := stcofinsOperCredExcRecTribMercInt;
                             51: CST_COFINS  := stcofinsOperCredExcRecNaoTribMercInt;
                             52: CST_COFINS  := stcofinsOperCredExcRecExportacao;
                             53: CST_COFINS  := stcofinsOperCredRecTribNaoTribMercInt;
                             54: CST_COFINS  := stcofinsOperCredRecTribMercIntEExportacao;
                             55: CST_COFINS  := stcofinsOperCredRecNaoTribMercIntEExportacao;
                             56: CST_COFINS  := stcofinsOperCredRecTribENaoTribMercIntEExportacao;
                             60: CST_COFINS  := stcofinsCredPresAquiExcRecTribMercInt;
                             61: CST_COFINS  := stcofinsCredPresAquiExcRecNaoTribMercInt;
                             62: CST_COFINS  := stcofinsCredPresAquiExcExcRecExportacao;
                             63: CST_COFINS  := stcofinsCredPresAquiRecTribNaoTribMercInt;
                             64: CST_COFINS  := stcofinsCredPresAquiRecTribMercIntEExportacao;
                             65: CST_COFINS  := stcofinsCredPresAquiRecNaoTribMercIntEExportacao;
                             66: CST_COFINS  := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao;
                             67: CST_COFINS  := stcofinsOutrasOperacoes_CredPresumido;
                             70: CST_COFINS  := stcofinsOperAquiSemDirCredito;
                             71: CST_COFINS  := stcofinsOperAquiComIsensao;
                             72: CST_COFINS  := stcofinsOperAquiComSuspensao;
                             73: CST_COFINS  := stcofinsOperAquiAliquotaZero;
                             74: CST_COFINS  := stcofinsOperAqui_SemIncidenciaContribuicao;
                             75: CST_COFINS  := stcofinsOperAquiPorST;
                             98: CST_COFINS  := stcofinsOutrasOperacoesEntrada;
                             99: CST_COFINS  := stcofinsOutrasOperacoes;
                            else CST_COFINS  := stcofinsNenhum;
                            end;

                           VL_BC_COFINS     := formatfloat('#####0.00',FAT_CD_R_GAM_C300cof_base.AsFloat);
                           ALIQ_COFINS_PERC := formatfloat('#####0.00',FAT_CD_R_GAM_C300cof_aliquota.AsFloat);

                       //    QUANT_BC_COFINS  := '';

                      //     ALIQ_COFINS_R    := Vazio(FAT_CD_R_GAM_C300,'aliq_cof');
                           VL_COFINS        := formatfloat('#####0.00',FAT_CD_R_GAM_C300cof_valor.AsFloat);
                           COD_CTA          := FAT_CD_R_GAM_C300cod_cta.AsString; //Baseado no 0500
                        end;
                      FAT_CD_R_GAM_C300.Next;
                      end;
                    end;// fim da condição para notas canceladas;
                end;
             FAT_CD_R_GAM_C20.Next;
             end; //Fim do Registro;

             //RegistroC400New
             //REGISTROC400: EQUIPAMENTO ECF (CÓDIGOS 02 e 2D)

             FAT_CD_R_GAM_C400.First;
             while not FAT_CD_R_GAM_C400.Eof do
             begin
               FAT_CD_R_GAM_C405.Close;
                   FAT_CD_R_GAM_C405.Data :=
                     FAT_CD_R_GAM_C405.DataRequest(
                       VarArrayOf([FAT_CD_R_GAM_C400ecf_serial_impressora.Text,rDtaIni, rDtaFin]));

               if not FAT_CD_R_GAM_C405.IsEmpty then
               begin
                 with RegistroC400New  do
                 begin
                   COD_MOD := '2D';
                   ECF_MOD := FAT_CD_R_GAM_C400ecf_modelo_impressora.AsString;
                   ECF_FAB := FAT_CD_R_GAM_C400ecf_serial_impressora.AsString;
                   ECF_CX  := StrToInt(trim(FAT_CD_R_GAM_C400ecf_caixa.AsString));

                   //REGISTRO C405: REDUÇÃO Z (CÓDIGOS 02 e 2D)

                   FAT_CD_R_GAM_C405.First;
                   while not FAT_CD_R_GAM_C405.Eof do
                   begin
                     with RegistroC405New do
                     begin
                       DT_DOC := FAT_CD_R_GAM_C405data_movimento.AsDateTime;
                       CRO := Vazio(FAT_CD_R_GAM_C405,'cro');
                       CRZ := Vazio(FAT_CD_R_GAM_C405,'crz');
                       NUM_COO_FIN := Vazio(FAT_CD_R_GAM_C405,'num_coo_fin');

                       if not FAT_CD_R_GAM_C405gt_fin.AsString.IsEmpty then
                          GT_FIN := StrToCurr(AjusteMonetario(FAT_CD_R_GAM_C405gt_fin.AsString))
                       else
                          GT_FIN := 0;

                       if not FAT_CD_R_GAM_C405vl_brt.AsString.IsEmpty then
                          VL_BRT := StrToCurr(AjusteMonetario(FAT_CD_R_GAM_C405vl_brt.AsString))
                       else
                          VL_BRT := 0;

                       //REGISTRO C481: RESUMO DIÁRIO DE DOCUMENTOS EMITIDOS POR ECF – PIS/PASEP
                       // (CÓDIGOS 02 e 2D)
                       if FAT_CD_R_GAM_C405vl_brt.AsString <> '' then
                       begin

                         if FAT_CD_R_GAM_C405data_movimento.Text <> '' then
                         begin
                           FAT_CD_R_GAM_C481.Close;
                           FAT_CD_R_GAM_C481.Data :=
                             FAT_CD_R_GAM_C481.DataRequest(
                               VarArrayOf([xEmpresa,FAT_CD_R_GAM_C405data_movimento.Text]));

                           FAT_CD_R_GAM_C481.First;
                         end;

                         while not FAT_CD_R_GAM_C481.Eof do
                         begin
                           with RegistroC481New do
                           begin
                             //Exemplo com valores não nulos
                             case Vazio(FAT_CD_R_GAM_C481,'id_st_pis') of
                                1: CST_PIS := stpisValorAliquotaNormal;
                                2: CST_PIS := stpisValorAliquotaDiferenciada;
                                3: CST_PIS := stpisQtdeAliquotaUnidade;
                                4: CST_PIS := stpisMonofaticaAliquotaZero;
                                5: CST_PIS := stpisValorAliquotaPorST;
                                6: CST_PIS := stpisAliquotaZero;
                                7: CST_PIS := stpisIsentaContribuicao;
                                8: CST_PIS := stpisSemIncidenciaContribuicao;
                                9: CST_PIS := stpisSuspensaoContribuicao;
                               49: CST_PIS := stpisOutrasOperacoesSaida;
                               50: CST_PIS := stpisOperCredExcRecTribMercInt;
                               51: CST_PIS := stpisOperCredExcRecNaoTribMercInt;
                               52: CST_PIS := stpisOperCredExcRecExportacao;
                               53: CST_PIS := stpisOperCredRecTribNaoTribMercInt;
                               54: CST_PIS := stpisOperCredRecTribMercIntEExportacao;
                               55: CST_PIS := stpisOperCredRecNaoTribMercIntEExportacao;
                               56: CST_PIS := stpisOperCredRecTribENaoTribMercIntEExportacao;
                               60: CST_PIS := stpisCredPresAquiExcRecTribMercInt;
                               61: CST_PIS := stpisCredPresAquiExcRecNaoTribMercInt;
                               62: CST_PIS := stpisCredPresAquiExcExcRecExportacao;
                               63: CST_PIS := stpisCredPresAquiRecTribNaoTribMercInt;
                               64: CST_PIS := stpisCredPresAquiRecTribMercIntEExportacao;
                               65: CST_PIS := stpisCredPresAquiRecNaoTribMercIntEExportacao;
                               66: CST_PIS := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;
                               67: CST_PIS := stpisOutrasOperacoes_CredPresumido;
                               70: CST_PIS := stpisOperAquiSemDirCredito;
                               71: CST_PIS := stpisOperAquiComIsensao;
                               72: CST_PIS := stpisOperAquiComSuspensao;
                               73: CST_PIS := stpisOperAquiAliquotaZero;
                               74: CST_PIS := stpisOperAqui_SemIncidenciaContribuicao;
                               75: CST_PIS := stpisOperAquiPorST;
                               98: CST_PIS := stpisOutrasOperacoesEntrada;
                               99: CST_PIS := stpisOutrasOperacoes;
                             else  CST_PIS := stpisNenhum
                             end;

                             VL_ITEM := strtocurr(formatfloat('#####0.00',FAT_CD_R_GAM_C481vlr_item.AsFloat));
                             VL_BC_PIS := formatfloat('#####0.00',FAT_CD_R_GAM_C481vlr_pis_base.AsFloat);
                             ALIQ_PIS  := formatfloat('#####0.00',FAT_CD_R_GAM_C481pis_aliquota.AsFloat);
                             //QUANT_BC_PIS   := 0;
                             //ALIQ_PIS_QUANT := 0;
                             //VL_PIS := formatfloat('#####0.00',FAT_CD_R_GAM_C481vlr_pis.AsFloat);
                             VL_PIS := formatfloat('#####0.00',FAT_CD_R_GAM_C481vlr_pis_base.AsFloat*FAT_CD_R_GAM_C481pis_aliquota.AsFloat/100);
                             COD_ITEM := FAT_CD_R_GAM_C481id_item.AsString;
                             COD_CTA := '01234';
                           end;
                           FAT_CD_R_GAM_C481.Next;
                         end;
                         //REGISTRO C485: RESUMO DIÁRIO DE DOCUMENTOS EMITIDOS POR ECF – COFINS
                         // (CÓDIGOS 02 e 2D)
                         if FAT_CD_R_GAM_C405data_movimento.Text <> '' then
                         begin
                           FAT_CD_R_GAM_C485.Close;
                           FAT_CD_R_GAM_C485.Data :=
                             FAT_CD_R_GAM_C485.DataRequest(
                               VarArrayOf([xEmpresa,FAT_CD_R_GAM_C405data_movimento.Text]));

                           FAT_CD_R_GAM_C485.First;
                         end;
                         while not FAT_CD_R_GAM_C485.Eof do
                         begin
                           with RegistroC485New do
                           begin
                             //Exemplo com valores não nulos
                             case Vazio(FAT_CD_R_GAM_C485,'id_st_cof') of
                                1: CST_COFINS := stcofinsValorAliquotaNormal;
                                2: CST_COFINS := stcofinsValorAliquotaDiferenciada;
                                3: CST_COFINS := stcofinsQtdeAliquotaUnidade;
                                4: CST_COFINS := stcofinsMonofaticaAliquotaZero;
                                5: CST_COFINS := stcofinsValorAliquotaPorST;
                                6: CST_COFINS := stcofinsAliquotaZero;
                                7: CST_COFINS := stcofinsIsentaContribuicao;
                                8: CST_COFINS := stcofinsSemIncidenciaContribuicao;
                                9: CST_COFINS := stcofinsSuspensaoContribuicao;
                               49: CST_COFINS := stcofinsOutrasOperacoesSaida;
                               50: CST_COFINS := stcofinsOperCredExcRecTribMercInt;
                               51: CST_COFINS := stcofinsOperCredExcRecNaoTribMercInt;
                               52: CST_COFINS := stcofinsOperCredExcRecExportacao;
                               53: CST_COFINS := stcofinsOperCredRecTribNaoTribMercInt;
                               54: CST_COFINS := stcofinsOperCredRecTribMercIntEExportacao;
                               55: CST_COFINS := stcofinsOperCredRecNaoTribMercIntEExportacao;
                               56: CST_COFINS := stcofinsOperCredRecTribENaoTribMercIntEExportacao;
                               60: CST_COFINS := stcofinsCredPresAquiExcRecTribMercInt;
                               61: CST_COFINS := stcofinsCredPresAquiExcRecNaoTribMercInt;
                               62: CST_COFINS := stcofinsCredPresAquiExcExcRecExportacao;
                               63: CST_COFINS := stcofinsCredPresAquiRecTribNaoTribMercInt;
                               64: CST_COFINS := stcofinsCredPresAquiRecTribMercIntEExportacao;
                               65: CST_COFINS := stcofinsCredPresAquiRecNaoTribMercIntEExportacao;
                               66: CST_COFINS := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao;
                               67: CST_COFINS := stcofinsOutrasOperacoes_CredPresumido;
                               70: CST_COFINS := stcofinsOperAquiSemDirCredito;
                               71: CST_COFINS := stcofinsOperAquiComIsensao;
                               72: CST_COFINS := stcofinsOperAquiComSuspensao;
                               73: CST_COFINS := stcofinsOperAquiAliquotaZero;
                               74: CST_COFINS := stcofinsOperAqui_SemIncidenciaContribuicao;
                               75: CST_COFINS := stcofinsOperAquiPorST;
                               98: CST_COFINS := stcofinsOutrasOperacoesEntrada;
                               99: CST_COFINS := stcofinsOutrasOperacoes;
                             else  CST_COFINS := stcofinsNenhum
                             end;

                             VL_ITEM := strtocurr(formatfloat('#####0.00',FAT_CD_R_GAM_C485vlr_item.AsFloat));
                             VL_BC_COFINS := formatfloat('#####0.00',FAT_CD_R_GAM_C485vlr_cof_base.AsFloat);
                             ALIQ_COFINS  := formatfloat('#####0.00',FAT_CD_R_GAM_C485cof_aliquota.AsFloat);
                            // QUANT_BC_COFINS   := 0;
                            // ALIQ_COFINS_QUANT := 0;
                             //VL_COFINS := formatfloat('#####0.00',FAT_CD_R_GAM_C485vlr_cofins.AsFloat);

                             VL_COFINS := formatfloat('#####0.00',FAT_CD_R_GAM_C485vlr_cof_base.AsFloat * FAT_CD_R_GAM_C485cof_aliquota.AsFloat/100);

                             COD_ITEM := FAT_CD_R_GAM_C485id_item.AsString;
                             COD_CTA := '01234';
                           end;
                           FAT_CD_R_GAM_C485.Next;
                         end;
                       end;
                     end;
                     FAT_CD_R_GAM_C405.Next;
                   end;
                 end;
               end;
             FAT_CD_R_GAM_C400.Next;
             end;
           end; //C10
           end;
         end; // fechamento do "for" por empresa selecionada;

      FAT_CD_R_GAM_C500.First;
      while not FAT_CD_R_GAM_C500.Eof do
      begin

        with RegistroC500new do
          begin
            COD_PART  :=  FAT_CD_R_GAM_C500cpf_cnpj.AsString;
            COD_MOD   :=  FAT_CD_R_GAM_C500modelo.AsString;

            case  FAT_CD_R_GAM_C500cod_sit.AsInteger of
              0: COD_SIT   := sdfRegular;
              1: COD_SIT   := sdfExtRegular;
              2: COD_SIT   := sdfCancelado;
              3: COD_SIT   := sdfExtCancelado;
              4: COD_SIT   := sdfDenegado;
              5: COD_SIT   := sdfInutilizado;
              6: COD_SIT   := sdfComplementar;
              7: COD_SIT   := sdfExtComplementar;
              8: COD_SIT   := sdfEspecial;
            end;

            SER       := FAT_CD_R_GAM_C500serie.AsString;

            if trim(FAT_CD_R_GAM_C500sub_serie.AsString) <> '' then
              SUB     := StrToInT(trim(FAT_CD_R_GAM_C500sub_serie.AsString));

            NUM_DOC   := FAT_CD_R_GAM_C500numero.AsInteger;
            DT_DOC    := FAT_CD_R_GAM_C500dta_emissao.AsDateTime;
            DT_ENT    := FAT_CD_R_GAM_C500dta_documento.AsDateTime;
            VL_DOC    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_doc.AsCurrency));
            VL_ICMS   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_icms.AsCurrency));
            COD_INF   := FAT_CD_R_GAM_C500cod_inf.AsString;
            VL_PIS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_pis.AsCurrency));
            VL_COFINS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C500vlr_cof.AsCurrency));

            with RegistroC501new do
            begin
              case Vazio(FAT_CD_R_GAM_C501,'id_st_pis') of
                1: CST_PIS :=stpisValorAliquotaNormal;
                2: CST_PIS :=stpisValorAliquotaDiferenciada;
                3: CST_PIS :=stpisQtdeAliquotaUnidade;
                4: CST_PIS :=stpisMonofaticaAliquotaZero;
                5: CST_PIS :=stpisValorAliquotaPorST;
                6: CST_PIS :=stpisAliquotaZero;
                7: CST_PIS :=stpisIsentaContribuicao;
                8: CST_PIS :=stpisSemIncidenciaContribuicao;
                9: CST_PIS :=stpisSuspensaoContribuicao;
               49: CST_PIS :=stpisOutrasOperacoesSaida;
               50: CST_PIS :=stpisOperCredExcRecTribMercInt;
               51: CST_PIS :=stpisOperCredExcRecNaoTribMercInt;
               52: CST_PIS :=stpisOperCredExcRecExportacao;
               53: CST_PIS :=stpisOperCredRecTribNaoTribMercInt;
               54: CST_PIS :=stpisOperCredRecTribMercIntEExportacao;
               55: CST_PIS :=stpisOperCredRecNaoTribMercIntEExportacao;
               56: CST_PIS :=stpisOperCredRecTribENaoTribMercIntEExportacao;
               60: CST_PIS :=stpisCredPresAquiExcRecTribMercInt;
               61: CST_PIS :=stpisCredPresAquiExcRecNaoTribMercInt;
               62: CST_PIS :=stpisCredPresAquiExcExcRecExportacao;
               63: CST_PIS :=stpisCredPresAquiRecTribNaoTribMercInt;
               64: CST_PIS :=stpisCredPresAquiRecTribMercIntEExportacao;
               65: CST_PIS :=stpisCredPresAquiRecNaoTribMercIntEExportacao;
               66: CST_PIS :=stpisCredPresAquiRecTribENaoTribMercIntEExportacao;
               67: CST_PIS :=stpisOutrasOperacoes_CredPresumido;
               70: CST_PIS :=stpisOperAquiSemDirCredito;
               71: CST_PIS :=stpisOperAquiComIsensao;
               72: CST_PIS :=stpisOperAquiComSuspensao;
               73: CST_PIS :=stpisOperAquiAliquotaZero;
               74: CST_PIS :=stpisOperAqui_SemIncidenciaContribuicao;
               75: CST_PIS :=stpisOperAquiPorST;
               98: CST_PIS :=stpisOutrasOperacoesEntrada;
               99: CST_PIS :=stpisOutrasOperacoes;
              else CST_PIS :=stpisNenhum;
              end;

              // VL_ITEM     := FAT_CD_R_GAM_C501; //RADOKEN: Max,Mariel

              {case FAT_CD_R_GAM_C501 of
                1: NAT_BC_CRED :=bccAqBensRevenda;
                2: NAT_BC_CRED :=bccAqBensUtiComoInsumo;
                3: NAT_BC_CRED :=bccAqServUtiComoInsumo;
                4: NAT_BC_CRED :=bccEnergiaEletricaTermica;
                5: NAT_BC_CRED :=bccAluguelPredios;
                6: NAT_BC_CRED :=bccAluguelMaqEquipamentos;
                7: NAT_BC_CRED :=bccArmazenagemMercadoria;
                8: NAT_BC_CRED :=bccConArrendamentoMercantil;
                9: NAT_BC_CRED :=bccMaqCredDepreciacao;
               10: NAT_BC_CRED :=bccMaqCredAquisicao;
               11: NAT_BC_CRED :=bccAmortizacaoDepreciacaoImoveis;
               12: NAT_BC_CRED :=bccDevolucaoSujeita;
               13: NAT_BC_CRED :=bccOutrasOpeComDirCredito;
               14: NAT_BC_CRED :=bccAtTransporteSubcontratacao;
               15: NAT_BC_CRED :=bccAtImobCustoIncorrido;
               16: NAT_BC_CRED :=bccAtImobCustoOrcado;
               17: NAT_BC_CRED :=bccAtPresServ;
               18: NAT_BC_CRED :=bccEstoqueAberturaBens;
              else NAT_BC_CRED :=bccVazio;
              end;}

              VL_BC_PIS   := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C501vlr_base_pis.AsCurrency));
              ALIQ_PIS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C501aliq_pis.AsCurrency));
              VL_PIS      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C501vlr_pis.AsCurrency));
              COD_CTA     := FAT_CD_R_GAM_C501cod_cta.AsString;
            end;
            with RegistroC505new do
            begin

              case Vazio(FAT_CD_R_GAM_C505,'id_st_cof') of
                1: CST_COFINS := stcofinsValorAliquotaNormal;
                2: CST_COFINS := stcofinsValorAliquotaDiferenciada;
                3: CST_COFINS := stcofinsQtdeAliquotaUnidade;
                4: CST_COFINS := stcofinsMonofaticaAliquotaZero;
                5: CST_COFINS := stcofinsValorAliquotaPorST;
                6: CST_COFINS := stcofinsAliquotaZero;
                7: CST_COFINS := stcofinsIsentaContribuicao;
                8: CST_COFINS := stcofinsSemIncidenciaContribuicao;
                9: CST_COFINS := stcofinsSuspensaoContribuicao;
               49: CST_COFINS := stcofinsOutrasOperacoesSaida;
               50: CST_COFINS := stcofinsOperCredExcRecTribMercInt;
               51: CST_COFINS := stcofinsOperCredExcRecNaoTribMercInt;
               52: CST_COFINS := stcofinsOperCredExcRecExportacao;
               53: CST_COFINS := stcofinsOperCredRecTribNaoTribMercInt;
               54: CST_COFINS := stcofinsOperCredRecTribMercIntEExportacao;
               55: CST_COFINS := stcofinsOperCredRecNaoTribMercIntEExportacao;
               56: CST_COFINS := stcofinsOperCredRecTribENaoTribMercIntEExportacao;
               60: CST_COFINS := stcofinsCredPresAquiExcRecTribMercInt;
               61: CST_COFINS := stcofinsCredPresAquiExcRecNaoTribMercInt;
               62: CST_COFINS := stcofinsCredPresAquiExcExcRecExportacao;
               63: CST_COFINS := stcofinsCredPresAquiRecTribNaoTribMercInt;
               64: CST_COFINS := stcofinsCredPresAquiRecTribMercIntEExportacao;
               65: CST_COFINS := stcofinsCredPresAquiRecNaoTribMercIntEExportacao;
               66: CST_COFINS := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao;
               67: CST_COFINS := stcofinsOutrasOperacoes_CredPresumido;
               70: CST_COFINS := stcofinsOperAquiSemDirCredito;
               71: CST_COFINS := stcofinsOperAquiComIsensao;
               72: CST_COFINS := stcofinsOperAquiComSuspensao;
               73: CST_COFINS := stcofinsOperAquiAliquotaZero;
               74: CST_COFINS := stcofinsOperAqui_SemIncidenciaContribuicao;
               75: CST_COFINS := stcofinsOperAquiPorST;
               98: CST_COFINS := stcofinsOutrasOperacoesEntrada;
               99: CST_COFINS := stcofinsOutrasOperacoes;
              else CST_COFINS := stcofinsNenhum;
              end;

              //VL_ITEM      := FAT_CD_R_GAM_C505; //RADOKEN: Max,Mariel

              {case FAT_CD_R_GAM_C505 of
                1: NAT_BC_CRED :=bccAqBensRevenda;
                2: NAT_BC_CRED :=bccAqBensUtiComoInsumo;
                3: NAT_BC_CRED :=bccAqServUtiComoInsumo;
                4: NAT_BC_CRED :=bccEnergiaEletricaTermica;
                5: NAT_BC_CRED :=bccAluguelPredios;
                6: NAT_BC_CRED :=bccAluguelMaqEquipamentos;
                7: NAT_BC_CRED :=bccArmazenagemMercadoria;
                8: NAT_BC_CRED :=bccConArrendamentoMercantil;
                9: NAT_BC_CRED :=bccMaqCredDepreciacao;
               10: NAT_BC_CRED :=bccMaqCredAquisicao;
               11: NAT_BC_CRED :=bccAmortizacaoDepreciacaoImoveis;
               12: NAT_BC_CRED :=bccDevolucaoSujeita;
               13: NAT_BC_CRED :=bccOutrasOpeComDirCredito;
               14: NAT_BC_CRED :=bccAtTransporteSubcontratacao;
               15: NAT_BC_CRED :=bccAtImobCustoIncorrido;
               16: NAT_BC_CRED :=bccAtImobCustoOrcado;
               17: NAT_BC_CRED :=bccAtPresServ;
               18: NAT_BC_CRED :=bccEstoqueAberturaBens;
              else NAT_BC_CRED :=bccVazio;
              end;}

              VL_BC_COFINS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C505vlr_base_cof.AsCurrency));
              ALIQ_COFINS  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C505aliq_cof.AsCurrency));
              VL_COFINS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_C505vlr_cof.AsCurrency));
              COD_CTA      := FAT_CD_R_GAM_C505cod_cta.AsString;
            end;
          end;
      FAT_CD_R_GAM_C500.Next;
      end;
      end;
   end;
end;

procedure TFAT_FM_M_GAM.SpedPisCofins_D;
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco D.
   with ACBrSPEDPisCofins1.Bloco_D do
   begin

        with RegistroD001New do
        begin
          IND_MOV := ACBrEPCBlocos.imComDados;
          //Estabelecimento
          with RegistroD010New do
          begin
            CNPJ := dmGeral.CAD_CD_C_PARemp_cnpj.AsString;

            FAT_CD_R_GAM_D100.First;
            while not FAT_CD_R_GAM_D100.Eof do
            begin
            with RegistroD100New do
              begin
                IND_OPER    :=  FAT_CD_R_GAM_D100ind_operacao.AsString;

                case FAT_CD_R_GAM_D100ind_emitente.AsInteger of
                  0: IND_EMIT := iedfProprio;
                  1: IND_EMIT := iedfTerceiro;
                end;

                COD_PART    := FAT_CD_R_GAM_D100cpf_cnpj.AsString;
                COD_MOD     := FAT_CD_R_GAM_D100modelo.AsString;

                case FAT_CD_R_GAM_D100cod_sit.AsInteger of
                  0: COD_SIT := sdfRegular;
                  1: COD_SIT := sdfExtRegular;
                  2: COD_SIT := sdfCancelado;
                  3: COD_SIT := sdfExtCancelado;
                  4: COD_SIT := sdfDenegado;
                  5: COD_SIT := sdfInutilizado;
                  6: COD_SIT := sdfComplementar;
                  7: COD_SIT := sdfExtComplementar;
                  8: COD_SIT := sdfEspecial;
                end;

                SER         := FAT_CD_R_GAM_D100serie.AsString;
                SUB         := FAT_CD_R_GAM_D100sub_serie.AsString;
                NUM_DOC     := FAT_CD_R_GAM_D100numero.AsString;

                if FAT_CD_R_GAM_C20nfe_chave.AsString = '' then // gerador de chave NFE, CHV;
                  begin
                    CHV_CTE :=  MontaCheveNfe(copy( dmgeral.BUS_CD_C_PARid_cidade.AsString,1,2),
                                FAT_CD_R_GAM_D100dta_emissao.Value,dmgeral.BUS_CD_C_PARemp_cnpj.AsString,trim(FAT_CD_R_GAM_D100modelo.AsString),trim(FAT_CD_R_GAM_D100serie.AsString),
                                strtoint(trim(FAT_CD_R_GAM_D100numero.AsString)),strtoint(trim(FAT_CD_R_GAM_D100numero.AsString)),'1');
                  end
                else
                  begin
                    CHV_CTE := FAT_CD_R_GAM_D100nfe_chave.AsString;
                  end;

                DT_DOC      := FAT_CD_R_GAM_D100dta_emissao.AsDateTime;
                DT_A_P      := FAT_CD_R_GAM_D100dta_documento.AsDateTime;
                TP_CT_E     := FAT_CD_R_GAM_D100tp_ct_e.AsString;
               //CHV_CTE_REF := FAT_CD_R_GAM_D100; //RADOKEN: Max,Mariel
                VL_DOC      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D100vlr_doc.AsCurrency));
                VL_DESC     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D100vlr_desconto.AsCurrency));

                case FAT_CD_R_GAM_D100ind_frete.AsInteger of
                  0: IND_FRT     := tfPorContaEmitente;
                  1: IND_FRT     := tfPorContaDestinatario;
                  2: IND_FRT     := tfPorContaTerceiros;
                  9: IND_FRT     := tfSemCobrancaFrete;
                else IND_FRT     := tfNenhum;
                end;

                VL_SERV     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D100vlr_serv.AsCurrency));
                VL_BC_ICMS  := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D100vlr_base_icms.AsCurrency));
                VL_ICMS     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D100vlr_icms.AsCurrency));
                VL_NT       := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D100vl_nt.AsCurrency));
                COD_INF     := FAT_CD_R_GAM_D100cod_inf.AsString;
                COD_CTA     := FAT_CD_R_GAM_D100cod_cta.AsString;
              end;
              FAT_CD_R_GAM_D100.Next;
            end;

            FAT_CD_R_GAM_D500.First;
            while not FAT_CD_R_GAM_D500.Eof do
            begin
              with RegistroD500new do
              begin

                case FAT_CD_R_GAM_D500ind_operacao.AsInteger of
                  0: IND_OPER := itoContratado;
                  1: IND_OPER := itoPrestado;
                end;

                case FAT_CD_R_GAM_D500ind_emitente.AsInteger of
                  0: IND_EMIT := iedfProprio;
                  1: IND_EMIT := iedfTerceiro;
                end;

                COD_PART   := FAT_CD_R_GAM_D500cpf_cnpj.AsString;
                COD_MOD    := FAT_CD_R_GAM_D500modelo.AsString;

                case FAT_CD_R_GAM_D500cod_sit.AsInteger of
                  0: COD_SIT := sdfRegular;
                  1: COD_SIT := sdfExtRegular;
                  2: COD_SIT := sdfCancelado;
                  3: COD_SIT := sdfExtCancelado;
                  4: COD_SIT := sdfDenegado;
                  5: COD_SIT := sdfInutilizado;
                  6: COD_SIT := sdfComplementar;
                  7: COD_SIT := sdfExtComplementar;
                  8: COD_SIT := sdfEspecial;
                end;

                SER        := FAT_CD_R_GAM_D500serie.AsString;

                if trim(FAT_CD_R_GAM_D500sub_serie.AsString) <> '' then
                  SUB      := StrToInT(trim(FAT_CD_R_GAM_D500sub_serie.AsString));

                NUM_DOC    := FAT_CD_R_GAM_D500numero.AsInteger;
                DT_DOC     := FAT_CD_R_GAM_D500dta_emissao.AsDateTime;
                DT_A_P     := FAT_CD_R_GAM_D500dta_documento.AsDateTime;
                VL_DOC     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_doc.AsCurrency));
                VL_DESC    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_desconto.AsCurrency));
                VL_SERV    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_serv.AsCurrency));
                VL_SERV_NT := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_serv_nt.AsCurrency));
                VL_TERC    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_terc.AsCurrency));
                VL_DA      := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_da.AsCurrency));
                VL_BC_ICMS := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_base_icms.AsCurrency));
                VL_ICMS    := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500vlr_icms.AsCurrency));
                COD_INF    := FAT_CD_R_GAM_D500cod_inf.AsString;
                VL_PIS     := strtocurr(formatcurr('#####0.00',FAT_CD_R_GAM_D500pis_valor.AsCurrency));
              end;
              FAT_CD_R_GAM_D500.Next;
            end;
          end;
        end;
   end;
end;

procedure TFAT_FM_M_GAM.SpedPisCofins_M;
var
  xIND_MOV,xCST_PIS: integer;
  lCod_Cta: String;
begin



  xIND_MOV := 0; // para Teste;

  with ACBrSPEDPisCofins1.Bloco_M do
  begin
    with RegistroM001New do
    begin
      case xIND_MOV of
        0: IND_MOV := ACBrEPCBlocos.imComDados;
      else IND_MOV := ACBrEPCBlocos.imSemDados;
      end;

      with RegistroM200New do
      begin
        VL_TOT_CONT_NC_PER   := strtocurr(formatcurr('#####0.00',0));
        VL_TOT_CRED_DESC     := strtocurr(formatcurr('#####0.00',0));
        VL_TOT_CRED_DESC_ANT := strtocurr(formatcurr('#####0.00',0));
        VL_TOT_CONT_NC_DEV   := strtocurr(formatcurr('#####0.00',0));
        VL_RET_NC            := strtocurr(formatcurr('#####0.00',0));
        VL_OUT_DED_NC        := strtocurr(formatcurr('#####0.00',0));
        VL_CONT_NC_REC       := strtocurr(formatcurr('#####0.00',0));
        VL_TOT_CONT_CUM_PER  := strtocurr(formatcurr('#####0.00',0));
        VL_RET_CUM           := strtocurr(formatcurr('#####0.00',0));
        VL_OUT_DED_CUM       := strtocurr(formatcurr('#####0.00',0));
        VL_CONT_CUM_REC      := strtocurr(formatcurr('#####0.00',0));
        VL_TOT_CONT_REC      := strtocurr(formatcurr('#####0.00',0));
      end;

      lCod_Cta := '0';
      cdsM400.First;
      cdsM400.IndexFieldNames :=  'COD_CTA';
      while not (cdsM400.eof) do
         begin
            if lCod_Cta <> cdsM400.FieldByName('COD_CTA').AsString then
               begin
                  if lCod_Cta = '0' then
                     lCod_Cta := cdsM400.FieldByName('COD_CTA').AsString
                  else
                     begin
                        cdsM410.First;
                        cdsM410.Filtered := true;
                        if trim(lCod_Cta) = '' then
                           cdsM410.Filter := ' COD_CTA = '''' '
                        else
                           cdsM410.Filter := ' COD_CTA = ' + lCod_Cta;
                        while not (cdsM410.eof) do
                           begin
                              with RegistroM410New do
                                 begin
                                   NAT_REC     := cdsM410.FieldByName('NAT_REC').AsString;
                                   VL_REC      := cdsM410.FieldByName('VL_REC').AsCurrency;
                                   COD_CTA     := cdsM410.FieldByName('COD_CTA').AsString;
                                   DESC_COMPL  := '';
                                 end;
                              cdsM410.Next;
                           end;
                        lCod_Cta := cdsM400.FieldByName('COD_CTA').AsString;
                     end;
               end;

            with RegistroM400New do
               begin
                // CST_PIS := ;
                 VL_TOT_REC := strtocurr(formatcurr('#####0.00',cdsM400.FieldByName('VL_TOT_REC').AsCurrency));
                 COD_CTA    := cdsM400.FieldByName('COD_CTA').AsString;;
                 DESC_COMPL := '';
                 case cdsM400.FieldByName('CST_PIS').AsInteger of
                      1:  CST_PIS := stpisValorAliquotaNormal;                            // '01' // Operação Tributável com Alíquota Básica   // valor da operação alíquota normal (cumulativo/não cumulativo)).
                      2:  CST_PIS := stpisValorAliquotaDiferenciada;                      // '02' // Operação Tributável com Alíquota Diferenciada // valor da operação (alíquota diferenciada)).
                      3:  CST_PIS := stpisQtdeAliquotaUnidade;                            // '03' // Operação Tributável com Alíquota por Unidade de Medida de Produto // quantidade vendida x alíquota por unidade de produto).
                      4:  CST_PIS := stpisMonofaticaAliquotaZero;                         // '04' // Operação Tributável Monofásica - Revenda a Alíquota Zero
                      5:  CST_PIS := stpisValorAliquotaPorST;                             // '05' // Operação Tributável por Substituição Tributária
                      6:  CST_PIS := stpisAliquotaZero;                                   // '06' // Operação Tributável a Alíquota Zero
                      7:  CST_PIS := stpisIsentaContribuicao;                             // '07' // Operação Isenta da Contribuição
                      8:  CST_PIS := stpisSemIncidenciaContribuicao;                      // '08' // Operação sem Incidência da Contribuição
                      9:  CST_PIS := stpisSuspensaoContribuicao;                          // '09' // Operação com Suspensão da Contribuição
                      49: CST_PIS := stpisOutrasOperacoesSaida;                           // '49' // Outras Operações de Saída
                      50: CST_PIS := stpisOperCredExcRecTribMercInt;                      // '50' // Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno
                      51: CST_PIS := stpisOperCredExcRecNaoTribMercInt;                   // '51' // Operação com Direito a Crédito – Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno
                      52: CST_PIS := stpisOperCredExcRecExportacao;                       // '52' // Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação
                      53: CST_PIS := stpisOperCredRecTribNaoTribMercInt;                  // '53' // Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
                      54: CST_PIS := stpisOperCredRecTribMercIntEExportacao;              // '54' // Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
                      55: CST_PIS := stpisOperCredRecNaoTribMercIntEExportacao;           // '55' // Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
                      56: CST_PIS := stpisOperCredRecTribENaoTribMercIntEExportacao;      // '56' // Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação
                      60: CST_PIS := stpisCredPresAquiExcRecTribMercInt;                  // '60' // Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno
                      61: CST_PIS := stpisCredPresAquiExcRecNaoTribMercInt;               // '61' // Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno
                      62: CST_PIS := stpisCredPresAquiExcExcRecExportacao;                // '62' // Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação
                      63: CST_PIS := stpisCredPresAquiRecTribNaoTribMercInt;              // '63' // Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
                      64: CST_PIS := stpisCredPresAquiRecTribMercIntEExportacao;          // '64' // Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
                      65: CST_PIS := stpisCredPresAquiRecNaoTribMercIntEExportacao;       // '65' // Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
                      66: CST_PIS := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;  // '66' // Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação
                      67: CST_PIS := stpisOutrasOperacoes_CredPresumido;                  // '67' // Crédito Presumido - Outras Operações
                      70: CST_PIS := stpisOperAquiSemDirCredito;                          // '70' // Operação de Aquisição sem Direito a Crédito
                      71: CST_PIS := stpisOperAquiComIsensao;                             // '71' // Operação de Aquisição com Isenção
                      72: CST_PIS := stpisOperAquiComSuspensao;                           // '72' // Operação de Aquisição com Suspensão
                      73: CST_PIS := stpisOperAquiAliquotaZero;                           // '73' // Operação de Aquisição a Alíquota Zero
                      74: CST_PIS := stpisOperAqui_SemIncidenciaContribuicao;             // '74' // Operação de Aquisição sem Incidência da Contribuição
                      75: CST_PIS := stpisOperAquiPorST;                                  // '75' // Operação de Aquisição por Substituição Tributária
                      98: CST_PIS := stpisOutrasOperacoesEntrada;                         // '98' // Outras Operações de Entrada
                      99: CST_PIS := stpisOutrasOperacoes;                                // '99' // Outras Operações
                  else CST_PIS := stpisNenhum;                                            // '00' // Nenhum
                  end;
               end; // Fim Registro M400;
            cdsM400.Next;
         end;

      // Esse código é para poder pegar os registro que tem o último grupo do lCod_Cta
      // pois ele sai do while do 400, sem completar todo o M410
      cdsM410.First;
      cdsM410.Filtered := true;
      if trim(lCod_Cta) = '' then
         cdsM410.Filter := ' COD_CTA = '''' '
      else
         cdsM410.Filter := ' COD_CTA = ' + lCod_Cta;
      while not (cdsM410.eof) do
         begin
            with RegistroM410New do
               begin
                 NAT_REC     := cdsM410.FieldByName('NAT_REC').AsString;
                 VL_REC      := cdsM410.FieldByName('VL_REC').AsCurrency;
                 COD_CTA     := cdsM410.FieldByName('COD_CTA').AsString;
                 DESC_COMPL  := '';
               end;
            cdsM410.Next;
         end;

      cdsM410.Filtered := true;


      with RegistroM600New do
      begin
        VL_TOT_CONT_NC_PER   := strtocurr(formatcurr('#####0.00',0));
        VL_TOT_CRED_DESC     := strtocurr(formatcurr('#####0.00',0));
        VL_TOT_CRED_DESC_ANT := strtocurr(formatcurr('#####0.00',0));
        VL_TOT_CONT_NC_DEV   := strtocurr(formatcurr('#####0.00',0));
        VL_RET_NC            := strtocurr(formatcurr('#####0.00',0));
        VL_OUT_DED_NC        := strtocurr(formatcurr('#####0.00',0));
        VL_CONT_NC_REC       := strtocurr(formatcurr('#####0.00',0));
        VL_TOT_CONT_CUM_PER  := strtocurr(formatcurr('#####0.00',0));
        VL_RET_CUM           := strtocurr(formatcurr('#####0.00',0));
        VL_OUT_DED_CUM       := strtocurr(formatcurr('#####0.00',0));
        VL_CONT_CUM_REC      := strtocurr(formatcurr('#####0.00',0));
        VL_TOT_CONT_REC      := strtocurr(formatcurr('#####0.00',0));
      end;
    end; // Fim registro M001
  end; // Fim bloco M;
end;

function TFAT_FM_M_GAM.TestarCampos: Boolean;
var
  mens: String;
  I,T,ano,ano1,Anobi:integer;
begin
  T := 0;

  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          T := T + 1;
        end;
    end;



  if ((dtaInicial.Text = '  /  /    ') or (dtaFinal.Text = '  /  /    ')) then
      begin
        mens := mens +  '.O período deve ser preenchido.' + #13;
      end
  else
    begin
      if (dtaInicial.Date >  dtaFinal.Date) then
        begin
          mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
        end;
    end;


  if T = 0 then
    mens := mens +  '.Empresa deve ser preenchida.' + #13;

  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end
  else
    Result := true;
end;

function TFAT_FM_M_GAM.TestarCamposInv: Boolean;
var
  mens: String;
  I,T,ano,ano1,Anobi:integer;
begin
  T := 0;

  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          T := T + 1;
        end;
    end;

  if T = 0 then
    mens := mens +  '.Empresa deve ser preenchida.' + #13;

   if dtaInventario.Text = '  /  /    ' then
     begin
       mens := mens +  '.A data do inventário deve ser preenchido.' + #13;
     end;

  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end
  else
    Result := true;
end;

procedure TFAT_FM_M_GAM.TestarData;
var
mens: string;
iano,imes,idia,fano,fmes,fdia : word;
ano,ano1,Anobi:integer;
begin
  mens := '';
  DecodeDate(dtaInicial.Date,iano,imes,idia);
  DecodeDate(dtaFinal.Date,fano,fmes,fdia);

  ano  := fano;

  if (idia <> 01) then
    mens := mens +  '.Data inicial deve ser o "primeiro" dia do mês.' + #13;

  if (ano mod 4 = 0) and ((ano mod 100 <>0) or (ano mod 400 = 0)) then
    anobi := 1
  else
    anobi := 0;

  case fmes of
    01: if fdia <> 31 then
          mens := mens +  '.Data final deve ser o "ultimo" dia do mês.' + #13;
    02: if ((anobi = 1) and (fdia <> 29)) or ((anobi = 0) and (fdia <> 28)) then
          mens := mens +  '.Data final deve ser o "ultimo" dia do mês.' + #13;
    03: if fdia <> 31 then
          mens := mens +  '.Data final deve ser o "ultimo" dia do mês.' + #13;
    04: if fdia <> 30 then
          mens := mens +  '.Data final deve ser o "ultimo" dia do mês.' + #13;
    05: if fdia <> 31 then
          mens := mens +  '.Data final deve ser o "ultimo" dia do mês.' + #13;
    06: if fdia <> 30 then
          mens := mens +  '.Data final deve ser o "ultimo" dia do mês.' + #13;
    07: if fdia <> 31 then
          mens := mens +  '.Data final deve ser o "ultimo" dia do mês.' + #13;
    08: if fdia <> 31 then
          mens := mens +  '.Data final deve ser o "ultimo" dia do mês.' + #13;
    09: if fdia <> 30 then
          mens := mens +  '.Data final deve ser o "ultimo" dia do mês.' + #13;
    10: if fdia <> 31 then
          mens := mens +  '.Data final deve ser o "ultimo" dia do mês.' + #13;
    11: if fdia <> 30 then
          mens := mens +  '.Data final deve ser o "ultimo" dia do mês.' + #13;
    12: if fdia <> 31 then
          mens := mens +  '.Data final deve ser o "ultimo" dia do mês.' + #13;
  end;
  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      abort;
    end;
end;

procedure TFAT_FM_M_GAM.TestarParametros(tipo: string);
begin
  if tipo = 'Sef' then
    begin
      if (dmgeral.CAD_CD_C_PAR_CTRsef_cod_fin.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_cod_ctd.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_ind_ed.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_ind_arq.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_prf_iss.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_prf_icms.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_prf_ridf.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_prf_rudf.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_prf_lmc.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_prf_rv.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_prf_ri.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_ind_ec.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_ind_iss.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_ind_rt.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_ind_icms.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_ind_st.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_ind_icms.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_ind_st.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_ind_at.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_ind_ipi.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRsef_ind_ri.AsString = '') then
        begin
          ShowMessage('O Perfil do "SEF" não foi preenchido na tela de Parametros!');
          abort;
        end;
    end;

  if tipo = 'eDOC' then
    begin
      if (dmgeral.CAD_CD_C_PAR_CTRdoc_cod_fin.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_cod_ctd.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_ind_ed.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_ind_arq.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_prf_iss.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_prf_icms.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_prf_ridf.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_prf_rudf.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_prf_lmc.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_prf_rv.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_prf_ri.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_ind_ec.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_ind_iss.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_ind_rt.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_ind_icms.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_ind_st.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_ind_icms.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_ind_st.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_ind_at.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_ind_ipi.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRdoc_ind_ri.AsString = '') then
        begin
          ShowMessage('O Perfil do "eDOC" não foi preenchido na tela de Parametros!');
          abort;
        end;
    end;

  if tipo = 'Sped Fiscal' then
    begin
      if  (dmgeral.CAD_CD_C_PAR_CTReff_finalidade.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTReff_perfil.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTReff_atividade.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTReff_motivo_inv.AsString = '') then
        begin
          ShowMessage('O Perfil do "Sped Fiscal" não foi preenchido na tela de Parametros!');
          abort;
        end;
    end;

  if tipo = 'Sped Contribuições' then
    begin
      if (dmgeral.CAD_CD_C_PAR_CTRefc_layout.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRefc_tipo_escrituracao.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRefc_situa_especial.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRefc_ind_nat_pj.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRefc_ind_ativ.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRefc_ind_apro_cred.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRefc_cod_tipo_cont.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRefc_ind_reg_cum.AsString = '') or
          (dmgeral.CAD_CD_C_PAR_CTRefc_cod_inc_trib.AsString = '') then
        begin
          ShowMessage('O Perfil do "Sped Contribuições" não foi preenchido na tela de Parametros!');
          abort;
        end;
    end;
end;

procedure TFAT_FM_M_GAM.tsNotaFiscalShow(Sender: TObject);
begin
dtaInicial.SetFocus;
end;

function TFAT_FM_M_GAM.Vazio(cds:TClientDataSet;campo:string): integer;
begin
  if trim(cds.FieldByName(campo).AsString)='' then
    result:= 0
  else
    result:= StrToInt(Trim(cds.FieldByName(campo).AsString));
end;

end.
