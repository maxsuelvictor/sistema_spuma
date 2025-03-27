using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Cadastros;
using enLoja.Model.Enums;

namespace enLoja.Model.Faturamento
{
    [Table("FAT_TB_M_NFE_ITE")]
    public class FAT_EF_M_NFE_ITE : NotifyingObject
    {
        [Key, Column(Order = 1)]
        [Display(Name = "Nº Fiscal")]
        public int ID_FISCAL
        {
            get { return GetValue(() => ID_FISCAL); }
            set { SetValue(() => ID_FISCAL, value); }
        }

        [Key, Column(Order = 2)]
        [Display(Name = "sequencia")]
        public int ID_SEQUENCIA
        {
            get { return GetValue(() => ID_SEQUENCIA); }
            set { SetValue(() => ID_SEQUENCIA, value); }
        }

        [Key, Column(Order = 3)]
        [Display(Name = "Item")]
        [NotZero(ErrorMessage = "Código do Item não deve ser 0 (zero)!")]
        [ExistItem]           
        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }

        [Display(Name = "Informações do Fisco")]
        [Required(ErrorMessage = "Informação do fisaaco deve ser informado!")]
        public int ID_INF_FISCO
        {
            get { return GetValue(() => ID_INF_FISCO); }
            set { SetValue(() => ID_INF_FISCO, value); }
        }

        [Display(Name = "CFOP")]
        [StringLength(5)]
        [Required(ErrorMessage = "CFOP deve ser informado!")]
        [RegularExpression(@"^[0-9''-'\s]{1,40}$", ErrorMessage = "Só é permitido numeros.")]
        public string ID_CFO
        {
            get { return GetValue(() => ID_CFO); }
            set { SetValue(() => ID_CFO, value); }
        }

        [Display(Name = "Tributo")]
        [Required(ErrorMessage = "Tributo deve ser informado!")]
        public int ID_TRIBUTO
        {
            get { return GetValue(() => ID_TRIBUTO); }
            set { SetValue(() => ID_TRIBUTO, value); }
        }

        [Display(Name = "CST PIS")]
        [StringLength(3)]
        [Required(ErrorMessage = "CST PIS deve ser informado!")]
        public string ID_ST_PIS
        {
            get { return GetValue(() => ID_ST_PIS); }
            set { SetValue(() => ID_ST_PIS, value); }
        }

        [Display(Name = "CST COFINS")]
        [StringLength(3)]
        [Required(ErrorMessage = "CST COFINS deve ser informado!")]
        public string ID_ST_COF
        {
            get { return GetValue(() => ID_ST_COF); }
            set { SetValue(() => ID_ST_COF, value); }
        }

        [Display(Name = "CST IPI")]
        [StringLength(3)]
        [Required(ErrorMessage = "CST IPI deve ser informado!")]
        public string ID_ST_IPI
        {
            get { return GetValue(() => ID_ST_IPI); }
            set { SetValue(() => ID_ST_IPI, value); }
        }

        [Display(Name = "CST ICMS")]
        [StringLength(3)]
        public string ID_ST_ICM
        {
            get { return GetValue(() => ID_ST_ICM); }
            set { SetValue(() => ID_ST_ICM, value); }
        }

        [Display(Name = "Qtde")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Quantidade não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Quantidade deve ser informado!")]
        public double QTDE
        {
            get { return GetValue(() => QTDE); }
            set { SetValue(() => QTDE, value); }
        }

        [Display(Name = "Qtde Devolvida")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public double QTDE_DEVOLVIDA
        {
            get { return GetValue(() => QTDE_DEVOLVIDA); }
            set { SetValue(() => QTDE_DEVOLVIDA, value); }
        }


        [Display(Name = "Vlr.Unitário")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_UNITARIO
        {
            get { return GetValue(() => VLR_UNITARIO); }
            set { SetValue(() => VLR_UNITARIO, value); }
        }

        [Display(Name = "Vlr.Mercadoria")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_MERCADORIA
        {
            get { return GetValue(() => VLR_MERCADORIA); }
            set { SetValue(() => VLR_MERCADORIA, value); }
        }

        [Display(Name = "% Desconto")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public double PER_DESCONTO
        {
            get { return GetValue(() => PER_DESCONTO); }
            set { SetValue(() => PER_DESCONTO, value); }
        }

        [Display(Name = "Vlr.Desconto")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_DESCONTO
        {
            get { return GetValue(() => VLR_DESCONTO); }
            set { SetValue(() => VLR_DESCONTO, value); }
        }

        [Display(Name = "Vlr.Custo Compra")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal VLR_CUSTO_COMPRA
        {
            get { return GetValue(() => VLR_CUSTO_COMPRA); }
            set { SetValue(() => VLR_CUSTO_COMPRA, value); }
        }

        [Display(Name = "Vlr.Liquido")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_LIQUIDO
        {
            get { return GetValue(() => VLR_LIQUIDO); }
            set { SetValue(() => VLR_LIQUIDO, value); }
        }

        [Display(Name = "Vlr.Outras")]
        public Nullable<decimal> VLR_OUTRAS
        {
            get { return GetValue(() => VLR_OUTRAS); }
            set { SetValue(() => VLR_OUTRAS, value); }
        }

        [Display(Name = "Vlr.Isenta")]
        public Nullable<decimal> VLR_ISENTA
        {
            get { return GetValue(() => VLR_ISENTA); }
            set { SetValue(() => VLR_ISENTA, value); }
        }

        [Display(Name = "Vlr. Seguro")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> VLR_SEGURO
        {
            get { return GetValue(() => VLR_SEGURO); }
            set { SetValue(() => VLR_SEGURO, value); }
        }

        public Nullable<decimal> VLR_ANTECIPACAO
        {
            get { return GetValue(() => VLR_ANTECIPACAO); }
            set { SetValue(() => VLR_ANTECIPACAO, value); }
        }


        [Display(Name = "% ICMS Normal")]
        public Nullable<double> ICM_N_ALIQUOTA 
        {
            get { return GetValue(() => ICM_N_ALIQUOTA); }
            set { SetValue(() => ICM_N_ALIQUOTA, value); }
        }

        [Display(Name = "% Redução")]
        public Nullable<double> ICM_PER_REDUCAO
        {
            get { return GetValue(() => ICM_PER_REDUCAO); }
            set { SetValue(() => ICM_PER_REDUCAO, value); }
        }

        [Display(Name = "Vlr.Base ICMS")]
        public Nullable<decimal> ICM_N_BASE
        {
            get { return GetValue(() => ICM_N_BASE); }
            set { SetValue(() => ICM_N_BASE, value); }
        }

        [Display(Name = "Vlr.ICMS")]
        public Nullable<decimal> ICM_N_VALOR
        {
            get { return GetValue(() => ICM_N_VALOR); }
            set { SetValue(() => ICM_N_VALOR, value); }
        }

        [Display(Name = "Vlr.Base ICMS Subs.")]
        public Nullable<decimal> ICM_S_BASE
        {
            get { return GetValue(() => ICM_S_BASE); }
            set { SetValue(() => ICM_S_BASE, value); }
        }

        [Display(Name = "Vlr.ICMS Subs.")]
        public Nullable<decimal> ICM_S_VALOR
        {
            get { return GetValue(() => ICM_S_VALOR); }
            set { SetValue(() => ICM_S_VALOR, value); }
        }

        [Display(Name = "Vlr.Base IPI")]
        public Nullable<decimal> IPI_BASE
        {
            get { return GetValue(() => IPI_BASE); }
            set { SetValue(() => IPI_BASE, value); }
        }
        
        [Display(Name = "% IPI")]
        public Nullable<double> IPI_ALIQUOTA 
        {
            get { return GetValue(() => IPI_ALIQUOTA); }
            set { SetValue(() => IPI_ALIQUOTA, value); }
        }
        
        [Display(Name = "Vlr.IPI")]
        public Nullable<decimal> IPI_VALOR
        {
            get { return GetValue(() => IPI_VALOR); }
            set { SetValue(() => IPI_VALOR, value); }
        }

        [Display(Name = "Vlr.Base ISS")]
        public Nullable<decimal> ISS_BASE
        {
            get { return GetValue(() => ISS_BASE); }
            set { SetValue(() => ISS_BASE, value); }
        }

        [Display(Name = "% ISS")]
        public Nullable<double> ISS_ALIQUOTA
        {
            get { return GetValue(() => ISS_ALIQUOTA); }
            set { SetValue(() => ISS_ALIQUOTA, value); }
        }
        
        [Display(Name = "Vlr.ISS")]
        public Nullable<decimal> ISS_VALOR
        {
            get { return GetValue(() => ISS_VALOR); }
            set { SetValue(() => ISS_VALOR, value); }
        }

        [Display(Name = "Vlr.Base Frete")]
        public Nullable<decimal> FRE_BASE
        {
            get { return GetValue(() => FRE_BASE); }
            set { SetValue(() => FRE_BASE, value); }
        }

        [Display(Name = "% Frete")]
        public Nullable<double> FRE_PERCENTUAL
        {
            get { return GetValue(() => FRE_PERCENTUAL); }
            set { SetValue(() => FRE_PERCENTUAL, value); }
        }

        [Display(Name = "Vlr. Frete")]
        public Nullable<decimal> FRE_VALOR
        {
            get { return GetValue(() => FRE_VALOR); }
            set { SetValue(() => FRE_VALOR, value); }
        }

        [Display(Name = "Vlr.Base PIS")]
        public Nullable<decimal> PIS_BASE
        {
            get { return GetValue(() => PIS_BASE); }
            set { SetValue(() => PIS_BASE, value); }
        }

        [Display(Name = "% PIS")]
        public Nullable<double> PIS_ALIQUOTA
        {
            get { return GetValue(() => PIS_ALIQUOTA); }
            set { SetValue(() => PIS_ALIQUOTA, value); }
        }

        [Display(Name = "Vlr.PIS")]
        public Nullable<decimal> PIS_VALOR
        {
            get { return GetValue(() => PIS_VALOR); }
            set { SetValue(() => PIS_VALOR, value); }
        }


        [Display(Name = "Vlr.Base Cofins")]
        public Nullable<decimal> COF_BASE
        {
            get { return GetValue(() => COF_BASE); }
            set { SetValue(() => COF_BASE, value); }
        }

        [Display(Name = "% Cofins")]
        public Nullable<double> COF_ALIQUOTA
        {
            get { return GetValue(() => COF_ALIQUOTA); }
            set { SetValue(() => COF_ALIQUOTA, value); }
        }

        [Display(Name = "Vlr.Cofins")]
        public Nullable<decimal> COF_VALOR
        {
            get { return GetValue(() => COF_VALOR); }
            set { SetValue(() => COF_VALOR, value); }
        }

        [Display(Name = "Peso Liquido")]
        public double PESO_LIQUIDO
        {
            get { return GetValue(() => PESO_LIQUIDO); }
            set { SetValue(() => PESO_LIQUIDO, value); }
        }

        [Display(Name = "Peso Bruto")]
        public double PESO_BRUTO
        {
            get { return GetValue(() => PESO_BRUTO); }
            set { SetValue(() => PESO_BRUTO, value); }
        }

        public Nullable<int> NRO_PEDIDO
        {
            get { return GetValue(() => NRO_PEDIDO); }
            set { SetValue(() => NRO_PEDIDO, value); }
        }

        [Display(Name = "Vlr. Isenta")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> VLR_ISENTAS
        {
            get { return GetValue(() => VLR_ISENTAS); }
            set { SetValue(() => VLR_ISENTAS, value); }
        }

        public Nullable<decimal> COF_VALOR_ST
        {
            get { return GetValue(() => COF_VALOR_ST); }
            set { SetValue(() => COF_VALOR_ST, value); }
        }

        public Nullable<decimal> IMP_VALOR
        {
            get { return GetValue(() => IMP_VALOR); }
            set { SetValue(() => IMP_VALOR, value); }
        }

        public Nullable<decimal> VLR_ICM_SER_NAO_INCIDE
        {
            get { return GetValue(() => VLR_ICM_SER_NAO_INCIDE); }
            set { SetValue(() => VLR_ICM_SER_NAO_INCIDE, value); }
        }

        public Nullable<decimal> VLR_OUTRAS_DESP_ACESS
        {
            get { return GetValue(() => VLR_OUTRAS_DESP_ACESS); }
            set { SetValue(() => VLR_OUTRAS_DESP_ACESS, value); }
        }

        public Nullable<decimal> VLR_OUTRAS_DESP
        {
            get { return GetValue(() => VLR_OUTRAS_DESP); }
            set { SetValue(() => VLR_OUTRAS_DESP, value); }
        }




        [Display(Name = "NCM")]
        [Column(TypeName = "CHAR")]
        [StringLength(10)]
        public string ID_NCM
        {
            get { return GetValue(() => ID_NCM); }
            set { SetValue(() => ID_NCM, value); }
        }

        [Display(Name = "Lote Interno")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(15)]
        public string LOTE_INTERNO
        {
            get { return GetValue(() => LOTE_INTERNO); }
            set { SetValue(() => LOTE_INTERNO, value); }
        }


        [Display(Name = "Vlr.PIS Substituição")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> PIS_VALOR_ST
        {
            get { return GetValue(() => PIS_VALOR_ST); }
            set { SetValue(() => PIS_VALOR_ST, value); }
        }

        public Nullable<decimal> ICM_N_DIF_ALIQ
        {
            get { return GetValue(() => ICM_N_DIF_ALIQ); }
            set { SetValue(() => ICM_N_DIF_ALIQ, value); }
        }

        public Nullable<decimal> ICM_N_VLR_DIF_ALIQ
        {
            get { return GetValue(() => ICM_N_VLR_DIF_ALIQ); }
            set { SetValue(() => ICM_N_VLR_DIF_ALIQ, value); }
        }

        public Nullable<int> PARA_ANALISE_RAA
        {
            get { return GetValue(() => PARA_ANALISE_RAA); }
            set { SetValue(() => PARA_ANALISE_RAA, value); }
        }

        public Nullable<decimal> FRE_DIF_ALIQ_ICM
        {
            get { return GetValue(() => FRE_DIF_ALIQ_ICM); }
            set { SetValue(() => FRE_DIF_ALIQ_ICM, value); }
        }

        [Display(Name = "Vlr.Diferença ICMS")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> FRE_VLR_DIF_ICM
        {
            get { return GetValue(() => FRE_VLR_DIF_ICM); }
            set { SetValue(() => FRE_VLR_DIF_ICM, value); }
        }

        [Display(Name = "Vlr.Frete Custo")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> FRE_CUSTO
        {
            get { return GetValue(() => FRE_CUSTO); }
            set { SetValue(() => FRE_CUSTO, value); }
        }

        [Display(Name = "Origem da Mercadoria")]
        [Column(TypeName = "CHAR")]
        [StringLength(1)]
        [Required(ErrorMessage = "Origem deve ser informado!")]
        public string ORIGEM_MERCADORIA
        {
            get { return GetValue(() => ORIGEM_MERCADORIA); }
            set { SetValue(() => ORIGEM_MERCADORIA, value); }
        }

        [Display(Name = "MVA")]
        public int MVA
        {
            get { return GetValue(() => MVA); }
            set { SetValue(() => MVA, value); }
        }


        //FKs

        [ForeignKey("ID_FISCAL")]
        public virtual FAT_EF_M_NFE FAT_EF_M_NFE
        {
            get { return GetValue(() => FAT_EF_M_NFE); }
            set { SetValue(() => FAT_EF_M_NFE, value); }
        }

        [ForeignKey("ID_ITEM")]
        public virtual CAD_EF_C_ITE CAD_EF_C_ITE { get; set; }

        [ForeignKey("ID_CFO")]
        public virtual CAD_EF_C_CFO CAD_EF_C_CFO { get; set; }

        [ForeignKey("ID_TRIBUTO")]
        public virtual CAD_EF_C_TRI CAD_EF_C_TRI { get; set; }

        [ForeignKey("ID_NCM")]
        public virtual CAD_EF_C_NCM CAD_EF_C_NCM { get; set; }

    }
}
