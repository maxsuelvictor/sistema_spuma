using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Reflection.Emit;
using System.Text;
using enLoja.Model.Validações;
using enLoja.Model.Enums;
using System.Linq;
using enLoja.Model.Validações.Faturamento;

namespace enLoja.Model.Faturamento
{

    [Table("FAT_TB_M_NFE_IQM")]
    public class FAT_EF_M_NFE_IQM : NotifyingObject
    {
        [Key, Column(Order = 1)]
        [Display(Name = "Nº Fiscal")]
        public int ID_FISCAL
        {
            get { return GetValue(() => ID_FISCAL); }
            set { SetValue(() => ID_FISCAL, value); }
        }

        [Key, Column(Order = 2)]
        [Display(Name = "Sequencia")]
        public int ID_SEQUENCIA
        {
            get { return GetValue(() => ID_SEQUENCIA); }
            set { SetValue(() => ID_SEQUENCIA, value); }
        }

        public int ID_ITEM { get; set; }
        public string NRO_LOTE_FABRIC_PRODUTO { get; set; }
        public string LOTE_INTERNO { get; set; }
        public Nullable<System.DateTime> CERT_DATA { get; set; }
        public string CERT_NUMERO { get; set; }
        public int ID_RESPONSAVEL { get; set; }
        public int CND_COMERCIAL { get; set; }
        public int QTD_PC_NF { get; set; }
        public int PRES_PRODUTO { get; set; }
        public int CERT_QUALIDADE { get; set; }
        public int RESULTADO { get; set; }
        public int DEMERITO { get; set; }
        public Nullable<int> ORIGEM { get; set; }
        public Nullable<double> QTD_NC { get; set; }
        public Nullable<double> PER_LOT_REC { get; set; }
        public string SITUACAO { get; set; }
        public Nullable<int> DISPOSICAO { get; set; }
        public Nullable<int> APRO_GERENTE { get; set; }
        public Nullable<System.DateTime> APRO_DATA { get; set; }
        public Nullable<int> EXEC_POR { get; set; }
        public Nullable<System.DateTime> DTA_FINALISADO { get; set; }
        public Nullable<int> PLANO_ACAO_FORN { get; set; }
        public string COMENTARIOS { get; set; }
        public int QUALIDADE { get; set; }
        public System.DateTime DTA_INSPECAO { get; set; }
        public string ESPECIFICADO { get; set; }
        public string ENCONTRADO { get; set; }
        public string NUMERO_LAUDO { get; set; }
        public Nullable<System.DateTime> DATA_CERTIF_QUALIDADE { get; set; }

        //public virtual CNF_TB_C_FUN CNF_TB_C_FUN { get; set; }
        //public virtual EST_TB_C_PRO EST_TB_C_PRO { get; set; }
        //public virtual ICollection<EST_TB_M_NFE_A> EST_TB_M_NFE_A { get; set; }
        //public virtual EST_TB_M_NFE_I EST_TB_M_NFE_I { get; set; }
    }
}
