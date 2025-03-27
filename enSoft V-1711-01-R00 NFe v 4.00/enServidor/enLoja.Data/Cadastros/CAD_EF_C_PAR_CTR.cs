using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Valida��es;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_PAR_CTR")]
    public class CAD_EF_C_PAR_CTR : NotifyingObject
    {
        [Key, ForeignKey("CAD_EF_C_PAR")]
        [Display(Name = "C�digo")]
        public int ID_EMPRESA
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }
        
        public virtual CAD_EF_C_PAR CAD_EF_C_PAR
        {
            get { return GetValue(() => CAD_EF_C_PAR); }
            set { SetValue(() => CAD_EF_C_PAR, value); }
        }

        [Display(Name = "Ativa Prou��o")]
        public bool ATIVA_PRODUCAO
        {
            get { return GetValue(() => ATIVA_PRODUCAO); }
            set { SetValue(() => ATIVA_PRODUCAO, value); }
        }

        [Display(Name = "Ativa Titulos em pedido de venda")]
        public bool PED_ATIVA_TITULOS
        {
            get { return GetValue(() => PED_ATIVA_TITULOS); }
            set { SetValue(() => PED_ATIVA_TITULOS, value); }
        }


        [Display(Name = "C�digo do cliente para pedido � vista ou card�pio")]
        [Required(ErrorMessage = "Cliente deve ser informado!")]
        public int PED_CLIENTE 
        {
            get { return GetValue(() => PED_CLIENTE); }
            set { SetValue(() => PED_CLIENTE, value); }
        }

        [Display(Name = "Taxa de Juros Mensal")]
        [Required(ErrorMessage = "Taxa de juros deve ser informado!")]
        public double TAX_JUROS_MENSAL 
        {
            get { return GetValue(() => TAX_JUROS_MENSAL); }
            set { SetValue(() => TAX_JUROS_MENSAL, value); }
        }

        [Display(Name = "% COFINS")]
        [Required(ErrorMessage = "Percentual do COFINS deve ser informado!")]
        public double PER_COFINS 
        {
            get { return GetValue(() => PER_COFINS); }
            set { SetValue(() => PER_COFINS, value); }
        }

        [Display(Name = "% PIS")]
        [Required(ErrorMessage = "Percentual do PIS deve ser informado!")]
        public double PER_PIS 
        {
            get { return GetValue(() => PER_PIS); }
            set { SetValue(() => PER_PIS, value); }
        }

        [Display(Name = "Dias para protesto de um t�tulo vencido.")]
        [Required(ErrorMessage = "Dias para protesto deve ser informado!")]
        public int DIA_PROTESTO 
        {
            get { return GetValue(() => DIA_PROTESTO); }
            set { SetValue(() => DIA_PROTESTO, value); }
        }

        [Display(Name = "% Imposto de Renda PJ.")]
        [Required(ErrorMessage = "Percentual do IR deve ser informado!")]
        public double PER_IR 
        {
            get { return GetValue(() => PER_IR); }
            set { SetValue(() => PER_IR, value); }
        }

        [Display(Name = "% Contribui��o Social Sobre o Lucro")]
        [Required(ErrorMessage = "Percentual do CSSL deve ser informado!")]
        public double PER_CSSL 
        {
            get { return GetValue(() => PER_CSSL); }
            set { SetValue(() => PER_CSSL, value); }
        }

        [Display(Name = "% Desconto Permitido no Pedido de Cliente")]
        [Required(ErrorMessage = "Percentual de desconto deve ser informado!")]   
        public double PER_DESCONTO 
        {
            get { return GetValue(() => PER_DESCONTO); }
            set { SetValue(() => PER_DESCONTO, value); }
        }




        [Display(Name = "Limite m�ximo permitido para um cliente")]
        [Required(ErrorMessage = "Valor maximo do limite deve ser informado!")]  
        public decimal VLR_LIM_MAXIMO 
        {
            get { return GetValue(() => VLR_LIM_MAXIMO); }
            set { SetValue(() => VLR_LIM_MAXIMO, value); }
        }

        [Display(Name = "Meses para validade do limite.")]
        [Required(ErrorMessage = "Meses deve ser informado!")]
        public int MES_LIMITE
        {
            get { return GetValue(() => MES_LIMITE); }
            set { SetValue(() => MES_LIMITE, value); }
        }


        [Display(Name = "% ISS")]
        [Required(ErrorMessage = "Percentual do ISS deve ser informado!")]
        public double PER_ISS 
        {
            get { return GetValue(() => PER_ISS); }
            set { SetValue(() => PER_ISS, value); }
        }

        [Display(Name = "Verifica se aceita estoque negative no pedido de venda")]
        public bool PED_ACEITA_EST_NEGATIVO 
        {
            get { return GetValue(() => PED_ACEITA_EST_NEGATIVO); }
            set { SetValue(() => PED_ACEITA_EST_NEGATIVO, value); }
        }

        [Display(Name = "Forma de Pagamento")]
        [Required(ErrorMessage = "Forma de pagamento deve ser informado!")]  
        public int PDE_ID_FORMA_PAG 
        {
            get { return GetValue(() => PDE_ID_FORMA_PAG); }
            set { SetValue(() => PDE_ID_FORMA_PAG, value); }
        }

        [Display(Name = "Fornecedor")]
        [Required(ErrorMessage = "Fornecedor deve ser informado!")]  
        public int PDE_ID_FORNECDOR 
        {
            get { return GetValue(() => PDE_ID_FORNECDOR); }
            set { SetValue(() => PDE_ID_FORNECDOR, value); }
        }

        [Display(Name = "Centro de Custo")]
        [Required(ErrorMessage = "Centro de custo deve ser informado!")]  
        public int PDE_ID_CCUSTO 
        {
            get { return GetValue(() => PDE_ID_CCUSTO); }
            set { SetValue(() => PDE_ID_CCUSTO, value); }
        }

        [Display(Name = "Local do Titulo")]
        [Required(ErrorMessage = "Local do titulo deve ser informado!")]  
        public int PDE_ID_LOCAL_TITULO 
        {
            get { return GetValue(() => PDE_ID_LOCAL_TITULO); }
            set { SetValue(() => PDE_ID_LOCAL_TITULO, value); }
        }

        [Display(Name = "Altera Pre�o do Produto no pedido")]
        public bool PED_ALTERA_PRECO 
        {
            get { return GetValue(() => PED_ALTERA_PRECO); }
            set { SetValue(() => PED_ALTERA_PRECO, value); }
        }

        [Display(Name = "Mensagem para Cot��o de Pre�os")]
        [StringLength(8000)]
        public string MSG_EMAIL_COTACAO 
        {
            get { return GetValue(() => MSG_EMAIL_COTACAO); }
            set { SetValue(() => MSG_EMAIL_COTACAO, value); }
        }



        [Display(Name = "Modelo para Nota Fiscal Eletr�nica")]
        [Required(ErrorMessage = "Modelo da nota fiscal deve ser informado!")]
        public string NFE_MODELO
        {
            get { return GetValue(() => NFE_MODELO); }
            set { SetValue(() => NFE_MODELO, value); }
        }


        [Display(Name = "Modelo Cupom Fiscal")]
        [Required(ErrorMessage = "Modelo do cupom fiscal deve ser informado!")]
        public string ECF_MODELO 
        {
            get { return GetValue(() => ECF_MODELO); }
            set { SetValue(() => ECF_MODELO, value); }
        }

        [Display(Name = "Serie Cupom Fiscal")]
        [Required(ErrorMessage = "S�rie da nota fiscal deve ser informado!")]
        public string ECF_SERIE 
        {
            get { return GetValue(() => ECF_SERIE); }
            set { SetValue(() => ECF_SERIE, value); }
        }

        [Display(Name = "Tipo Financeiro")]
        [Required(ErrorMessage = "Tipo financeiro deve ser informado!")]
        public int PDE_ID_TIPO_FINANCEIRO 
        {
            get { return GetValue(() => PDE_ID_TIPO_FINANCEIRO); }
            set { SetValue(() => PDE_ID_TIPO_FINANCEIRO, value); }
        }

 
        //EFD Fiscal
        [Display(Name = "Layout SPED Fiscal")]
        [StringLength(3, MinimumLength = 3, ErrorMessage = "Layout n�o pode ser menor que 3 caracteres")]
        [Required(ErrorMessage = "Layout deve ser informado!")]
        [RegularExpression(@"^[0-9''-'\s]{1,40}$", ErrorMessage = "S� � permitido numeros.")]
        public string EFF_LAYOUT 
        {
            get { return GetValue(() => EFF_LAYOUT); }
            set { SetValue(() => EFF_LAYOUT, value); }
        }

        [Display(Name = "Finalidade do Arquivo")]
        [StringLength(1)]
        [Required(ErrorMessage = "Finalidade deve ser informado!")]
        public string EFF_FINALIDADE 
        {
            get { return GetValue(() => EFF_FINALIDADE); }
            set { SetValue(() => EFF_FINALIDADE, value); }
        }

        [Display(Name = "Perfil da Empresa")]
        [StringLength(1)]
        [Required(ErrorMessage = "Perfil deve ser informado!")]
        public string EFF_PERFIL 
        {
            get { return GetValue(() => EFF_PERFIL); }
            set { SetValue(() => EFF_PERFIL, value); }
        }

        [Display(Name = "Atividade da Empresa")]
        [StringLength(1)]
        [Required(ErrorMessage = "Atividade deve ser informado!")]
        public string EFF_ATIVIDADE 
        {
            get { return GetValue(() => EFF_ATIVIDADE); }
            set { SetValue(() => EFF_ATIVIDADE, value); }
        }


        //EFD Contribui��es
        [Display(Name = "Layout SPED Fiscal")]
        [StringLength(3, MinimumLength = 3, ErrorMessage = "Layout n�o pode ser menor que 3 caracteres")]
        [Required(ErrorMessage = "Layout deve ser informado!")]
        [RegularExpression(@"^[0-9''-'\s]{1,40}$", ErrorMessage = "S� � permitido numeros.")]
        public string EFC_LAYOUT 
        {
            get { return GetValue(() => EFC_LAYOUT); }
            set { SetValue(() => EFC_LAYOUT, value); }
        }

        [Display(Name = "Tipo de Escritura��o")]
        [StringLength(1)]
        [Required(ErrorMessage = "Tipo de Escritura��o deve ser informado!")]
        public string EFC_TIPO_ESCRITURACAO 
        {
            get { return GetValue(() => EFC_TIPO_ESCRITURACAO); }
            set { SetValue(() => EFC_TIPO_ESCRITURACAO, value); }
        }

        [Display(Name = "Tipo de Escritura��o")]
        [StringLength(1)]
        [Required(ErrorMessage = "Tipo de Escritura��o deve ser informado!")]
        public string EFC_IND_REG_CUM
        {
            get { return GetValue(() => EFC_IND_REG_CUM); }
            set { SetValue(() => EFC_IND_REG_CUM, value); }
        }





        [Display(Name = "Situa��o Especial")]
        [StringLength(1)]
        [Required(ErrorMessage = "Situa��o Especial deve ser informado!")]
        public string EFC_SITUA_ESPECIAL 
        {
            get { return GetValue(() => EFC_SITUA_ESPECIAL); }
            set { SetValue(() => EFC_SITUA_ESPECIAL, value); }
        }

        [Display(Name = "Indicador da natureza da pessoa jur�dica")]
        [StringLength(2, MinimumLength = 2, ErrorMessage = "Layout n�o pode ser menor que 3 caracteres")]
        [Required(ErrorMessage = "Indicador deve ser informado!")]
        public string EFC_IND_NAT_PJ 
        {
            get { return GetValue(() => EFC_IND_NAT_PJ); }
            set { SetValue(() => EFC_IND_NAT_PJ, value); }
        }

        [Display(Name = "Indicador de tipo de atividade preponderante")]
        [StringLength(1)]
        [Required(ErrorMessage = "Indicador deve ser informado!")]
        public string EFC_IND_ATIV 
        {
            get { return GetValue(() => EFC_IND_ATIV); }
            set { SetValue(() => EFC_IND_ATIV, value); }
        }

        [Display(Name = "C�digo indicador de m�todo de apropria��o de cr�ditos comuns")]
        [StringLength(1)]
        [Required(ErrorMessage = "C�digo indicador deve ser informado!")]
        public string EFC_IND_APRO_CRED
        {
            get { return GetValue(() => EFC_IND_APRO_CRED); }
            set { SetValue(() => EFC_IND_APRO_CRED, value); }
        }

        [Display(Name = "C�digo indicador do Tipo de Contribui��o Apurada no Per�odo")]
        [StringLength(1)]
        [Required(ErrorMessage = "C�digo indicador deve ser informado!")]
        public string EFC_COD_TIPO_CONT
        {
            get { return GetValue(() => EFC_COD_TIPO_CONT); }
            set { SetValue(() => EFC_COD_TIPO_CONT, value); }
        }

        [Display(Name = "C�digo indicador da incid�ncia tribut�ria no per�odo")]
        [StringLength(1)]
        [Required(ErrorMessage = "C�digo indicador deve ser informado!")]
        public string EFC_COD_INC_TRIB
        {
            get { return GetValue(() => EFC_COD_INC_TRIB); }
            set { SetValue(() => EFC_COD_INC_TRIB, value); }
        }   


        //SEF / E-Doc
        [Display(Name = "Layout SEF")]
        [StringLength(4, MinimumLength = 4, ErrorMessage = "Layout n�o pode ser menor que 4 caracteres")]
        [Required(ErrorMessage = "Layout deve ser informado!")]
        [RegularExpression(@"^[0-9''-'\s]{1,40}$", ErrorMessage = "S� � permitido numeros.")]
        public string SEF_LAYOUT
        {
            get { return GetValue(() => SEF_LAYOUT); }
            set { SetValue(() => SEF_LAYOUT, value); }
        }

        [Display(Name = "Finalidade")]
        [StringLength(1)]
        public string SEF_COD_FIN
        {
            get { return GetValue(() => SEF_COD_FIN); }
            set { SetValue(() => SEF_COD_FIN, value); }
        }

        [Display(Name = "C�digo do conte�do do arquivo")]
        [StringLength(2, MinimumLength = 2, ErrorMessage = "C�digo do conte�do do arquivo n�o pode ser menor que 2 caracteres")]
        public string SEF_COD_CTD
        {
            get { return GetValue(() => SEF_COD_CTD); }
            set { SetValue(() => SEF_COD_CTD, value); }
        }

        [Display(Name = "Indicador de entrada de dados")]
        [StringLength(1)]
        public string SEF_IND_ED 
        {
            get { return GetValue(() => SEF_IND_ED); }
            set { SetValue(() => SEF_IND_ED, value); }
        }

        [Display(Name = "Indicador do documento contido no arquivo")]
        [StringLength(1)]
        public string SEF_IND_ARQ 
        {
            get { return GetValue(() => SEF_IND_ARQ); }
            set { SetValue(() => SEF_IND_ARQ, value); }
        }

        [Display(Name = "Indicador de exigibilidade da escritura��o do ISS")]
        [StringLength(1)]
        public string SEF_PRF_ISS 
        {
            get { return GetValue(() => SEF_PRF_ISS); }
            set { SetValue(() => SEF_PRF_ISS, value); }
        }

        [Display(Name = "Indicador de exigibilidade da escritura��o do ICMS")]
        [StringLength(1)]
        public string SEF_PRF_ICMS 
        {
            get { return GetValue(() => SEF_PRF_ICMS); }
            set { SetValue(() => SEF_PRF_ICMS, value); }
        }

        [Display(Name = "Indicador de exigibilidade do Registro de Impress�o de Documentos Fiscais")]
        [StringLength(1)]
        public string SEF_PRF_RIDF 
        {
            get { return GetValue(() => SEF_PRF_RIDF); }
            set { SetValue(() => SEF_PRF_RIDF, value); }
        }

        [Display(Name = "Indicador de exigibilidade do Registro de Utiliza��o de Documentos Fiscais")]
        [StringLength(1)]
        public string SEF_PRF_RUDF 
        {
            get { return GetValue(() => SEF_PRF_RUDF); }
            set { SetValue(() => SEF_PRF_RUDF, value); }
        }

        [Display(Name = "Indicador de exigibilidade do Livro de Movimenta��o de Combust�veis")]
        [StringLength(1)]
        public string SEF_PRF_LMC 
        {
            get { return GetValue(() => SEF_PRF_LMC); }
            set { SetValue(() => SEF_PRF_LMC, value); }
        }

        [Display(Name = "Indicador de exigibilidade do Registro de Ve�culos")]
        [StringLength(1)]
        public string SEF_PRF_RV 
        {
            get { return GetValue(() => SEF_PRF_RV); }
            set { SetValue(() => SEF_PRF_RV, value); }
        }

        [Display(Name = "Indicador de exigibilidade anual do Registro de Invent�rio")]
        [StringLength(1)]
        public string SEF_PRF_RI 
        {
            get { return GetValue(() => SEF_PRF_RI); }
            set { SetValue(() => SEF_PRF_RI, value); }
        }

        [Display(Name = "Indicador de apresenta��o da escritura��o cont�bil")]
        [StringLength(1)]
        public string SEF_IND_EC 
        {
            get { return GetValue(() => SEF_IND_EC); }
            set { SetValue(() => SEF_IND_EC, value); }
        }

        [Display(Name = "Indicador de opera��es sujeitas ao ISS")]
        [StringLength(1)]
        public string SEF_IND_ISS 
        {
            get { return GetValue(() => SEF_IND_ISS); }
            set { SetValue(() => SEF_IND_ISS, value); }
        }

        [Display(Name = "Indicador de opera��es sujeitas � reten��o tribut�ria do ISS, na condi��o de contribuinte-subs.")]
        [StringLength(1)]
        public string SEF_IND_RT 
        {
            get { return GetValue(() => SEF_IND_RT); }
            set { SetValue(() => SEF_IND_RT, value); }
        }

        [Display(Name = "Indicador de opera��es sujeitas ao ICMS")]
        [StringLength(1)]
        public string SEF_IND_ICMS 
        {
            get { return GetValue(() => SEF_IND_ICMS); }
            set { SetValue(() => SEF_IND_ICMS, value); }
        }

        [Display(Name = "Indicador de opera��es sujeitas � substitui��o tribut�ria do ICMS, na condi��o de contribuinte-substituto")]
        [StringLength(1)]
        public string SEF_IND_ST 
        {
            get { return GetValue(() => SEF_IND_ST); }
            set { SetValue(() => SEF_IND_ST, value); }
        }


        [Display(Name = "Indicador de opera��es sujeitas � antecipa��o tribut�ria do ICMS, nas entradas")]
        [StringLength(1)]
        public string SEF_IND_AT 
        {
            get { return GetValue(() => SEF_IND_AT); }
            set { SetValue(() => SEF_IND_AT, value); }
        }

        [Display(Name = "Indicador de opera��es sujeitas ao IPI")]
        [StringLength(1)]
        public string SEF_IND_IPI 
        {   
            get { return GetValue(() => SEF_IND_IPI); }
            set { SetValue(() => SEF_IND_IPI, value); }
        }

        [Display(Name = "Indicador de apresenta��o avulsa do Registro de Invent�rio")]
        [StringLength(1)]
        public string SEF_IND_RI 
        {
            get { return GetValue(() => SEF_IND_RI); }
            set { SetValue(() => SEF_IND_RI, value); }
        }


        [Display(Name = "Tipo de emiss�o da NFe.")] //1-Normal, 2 Contigencia,3-Scan....
        [StringLength(1)]
        public string NFE_TIPO_EMISSAO
        {
            get { return GetValue(() => NFE_TIPO_EMISSAO); }
            set { SetValue(() => NFE_TIPO_EMISSAO, value); }
        }

        [Display(Name = "Tipo ambiente que foi emitido a NFe.")]  //1-Produ��o, 2 Homologa��o
        [StringLength(1)]
        public string NFE_TIPO_AMBIENTE
        {
            get { return GetValue(() => NFE_TIPO_AMBIENTE); }
            set { SetValue(() => NFE_TIPO_AMBIENTE, value); }
        }

        [Display(Name = "Aliquota Interna.")]
        [Required(ErrorMessage = "Aliquota deve ser informado!")]
        public int ALIQ_INTERNA_ICMS
        {
            get { return GetValue(() => ALIQ_INTERNA_ICMS); }
            set { SetValue(() => ALIQ_INTERNA_ICMS, value); }
        }

        [Display(Name = "Data p/ Saldo Inicial")]
        public DateTime? DTA_SALDO_INICIAL
        {
            get { return GetValue(() => DTA_SALDO_INICIAL); }
            set { SetValue(() => DTA_SALDO_INICIAL, value); }
        }

        [Display(Name = "Ano Corrente")]
        [Required(ErrorMessage = "Ano corrente deve ser informado")]
        public int ANO_CORRENTE
        {
            get { return GetValue(() => ANO_CORRENTE); }
            set { SetValue(() => ANO_CORRENTE, value); }
        }

        [Display(Name = "M�s Corrente")]
        [Required(ErrorMessage = "M�s corrente deve ser informado")]
        public int MES_CORRENTE
        {
            get { return GetValue(() => MES_CORRENTE); }
            set { SetValue(() => MES_CORRENTE, value); }
        }

        
        #region PCP : Campo especifico do sistema de produ��o de colch�es

        [Display(Name = "PCP:C�digo da lista mestre que a empresa utiliza.")]
        [Required(ErrorMessage = "C�digo deve ser informado!")]
        public int ID_LME
        {
            get { return GetValue(() => ID_LME); }
            set { SetValue(() => ID_LME, value); }
        }


        [Display(Name = "PCP: Utiliza Almoxarifado no sistema")]
        public bool UTILIZA_ALMOXARIFADO
        {
            get { return GetValue(() => UTILIZA_ALMOXARIFADO); }
            set { SetValue(() => UTILIZA_ALMOXARIFADO, value); }
        }

        [Display(Name = "PCP: Campo utilizado pela rotina EST_FM_M_NFE.")]
        public bool UTILIZA_LOTE_NA_ENTRADA
        {
            get { return GetValue(() => UTILIZA_LOTE_NA_ENTRADA); }
            set { SetValue(() => UTILIZA_LOTE_NA_ENTRADA, value); }
        }

        // 0 - Desconto no total, 1 - Desconto por produto
        [Display(Name = "PCP:Tipo de Desconto.")]
        [Required(ErrorMessage = "Tipo deve ser informado!")]
        public int TIPO_DESCONTO_CMP_PED
        {
            get { return GetValue(() => TIPO_DESCONTO_CMP_PED); }
            set { SetValue(() => TIPO_DESCONTO_CMP_PED, value); }
        }

        //Calcula automaticamente a dif. de aliquota de ICMS e FRETE, na nota fiscal de entrada.
        [Display(Name = "PCP: Calcula automatico a diferen�a de aliquota na entrada")]
        public bool CALCULA_AUTOM_DIF_ALQ
        {
            get { return GetValue(() => CALCULA_AUTOM_DIF_ALQ); }
            set { SetValue(() => CALCULA_AUTOM_DIF_ALQ, value); }
        }

        #endregion



    }
}
