using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_TRI_REG")]
    public partial class CAD_EF_C_TRI_REG : NotifyingObject
    {
        [Key, Column(Order = 1)]
        public int ID_TRIBUTO
        {
            get { return GetValue(() => ID_TRIBUTO); }
            set { SetValue(() => ID_TRIBUTO, value); }
        }

        [Key, Column(Order = 2)]
        [Display(Name = "Tipo de Estoque")]
        public int ID_TIPO_MOV_ESTOQUE
        {
            get { return GetValue(() => ID_TIPO_MOV_ESTOQUE); }
            set { SetValue(() => ID_TIPO_MOV_ESTOQUE, value); }
        }

        [Key, Column(Order = 3)]
        [Display(Name = "Estado")]
        public string UF
        {
            get { return GetValue(() => UF); }
            set { SetValue(() => UF, value); }
        }


        [Display(Name = "CST Contribuinte Interno")]
        [Column(TypeName = "CHAR")]
        [StringLength(3)]
        public string INT_CNT_ID_ST_ICM
        {
            get { return GetValue(() => INT_CNT_ID_ST_ICM); }
            set { SetValue(() => INT_CNT_ID_ST_ICM, value); }
        }

        [Display(Name = "% Redução Contribuinte Interno")]
        public double INT_CNT_REDUCAO
        {
            get { return GetValue(() => INT_CNT_REDUCAO); }
            set { SetValue(() => INT_CNT_REDUCAO, value); }
        }

        [Display(Name = "Aliquota Contribuinte Interno")]
        public double INT_CNT_ALIQUOTA 
        {
            get { return GetValue(() => INT_CNT_ALIQUOTA); }
            set { SetValue(() => INT_CNT_ALIQUOTA, value); }
        }

        [Display(Name = "CST Não-Contribuinte Interno")]
        [Column(TypeName = "CHAR")]
        [StringLength(3)]
        public string INT_NCT_ID_ST_ICM
        {
            get { return GetValue(() => INT_NCT_ID_ST_ICM); }
            set { SetValue(() => INT_NCT_ID_ST_ICM, value); }
        }

        [Display(Name = "% Redução Não-Contribuinte Interno")]
        public double INT_NCT_REDUCAO 
        {
            get { return GetValue(() => INT_NCT_REDUCAO); }
            set { SetValue(() => INT_NCT_REDUCAO, value); }
        }

        [Display(Name = "Aliquota Não-Contribuinte Interno")]
        public double INT_NCT_ALIQUOTA 
        {
            get { return GetValue(() => INT_NCT_ALIQUOTA); }
            set { SetValue(() => INT_NCT_ALIQUOTA, value); }
        }


        [Display(Name = "CST Contribuinte Externo")]
        [Column(TypeName = "CHAR")]
        [StringLength(3)]
        public string EXT_CNT_ID_ST_ICM
        {
            get { return GetValue(() => EXT_CNT_ID_ST_ICM); }
            set { SetValue(() => EXT_CNT_ID_ST_ICM, value); }
        }

        [Display(Name = "% Redução Contribuinte Externo")]
        public double EXT_CNT_REDUCAO 
        {
            get { return GetValue(() => EXT_CNT_REDUCAO); }
            set { SetValue(() => EXT_CNT_REDUCAO, value); }
        }

        [Display(Name = "Aliquota Contribuinte Externo")]
        public double EXT_CNT_ALIQUOTA 
        {
            get { return GetValue(() => EXT_CNT_ALIQUOTA); }
            set { SetValue(() => EXT_CNT_ALIQUOTA, value); }
        }

        [Display(Name = "CST Não-Contribuinte Externo")]
        [Column(TypeName = "CHAR")]
        [StringLength(3)]
        public string EXT_NCT_ID_ST_ICM
        {
            get { return GetValue(() => EXT_NCT_ID_ST_ICM); }
            set { SetValue(() => EXT_NCT_ID_ST_ICM, value); }
        }

        [Display(Name = "% Redução Não-Contribuinte Externo")]
        public double EXT_NCT_REDUCAO 
        {
            get { return GetValue(() => EXT_NCT_REDUCAO); }
            set { SetValue(() => EXT_NCT_REDUCAO, value); }
        }

        [Display(Name = "Aliquota Não-Contribuinte Externo")]
        public double EXT_NCT_ALIQUOTA 
        {
            get { return GetValue(() => EXT_NCT_ALIQUOTA); }
            set { SetValue(() => EXT_NCT_ALIQUOTA, value); }
        }

        [Display(Name = "Informações do Fisco - Interno")]
        public int INT_ID_INF
        {
            get { return GetValue(() => INT_ID_INF); }
            set { SetValue(() => INT_ID_INF, value); }
        }

        [Display(Name = "Informações do Fisco - Externo")]
        public int EXT_ID_INF
        {
            get { return GetValue(() => EXT_ID_INF); }
            set { SetValue(() => EXT_ID_INF, value); }
        }

        //FKs
        [ForeignKey("ID_TRIBUTO")]
        public virtual CAD_EF_C_TRI CAD_EF_C_TRI
        {
            get { return GetValue(() => CAD_EF_C_TRI); }
            set { SetValue(() => CAD_EF_C_TRI, value); }
        }

        [ForeignKey("ID_TIPO_MOV_ESTOQUE")]
        public virtual CAD_EF_C_TME CAD_EF_C_TME { get; set; }

    

    }
}
