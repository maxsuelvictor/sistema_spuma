using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_RVC")]
    public class PCP_EF_M_RVC : NotifyingObject
    {
        [Key]
        public int ID_RVC { get; set; }
        public System.DateTime DTA_REVISAO { get; set; }
        public int ID_EMPRESA { get; set; }
        public decimal COL_TOT_ITE_REV { get; set; }
        public decimal COL_TOT_DEF_IDE { get; set; }
        public decimal COL_TOT_COL { get; set; }
        public decimal COL_NUM_MAIOR_DEF { get; set; }
        public decimal DEF_MAIOR_NRO_OCOR { get; set; }
        public decimal INDICE_DEFEITOS { get; set; }

        //FKs
        public virtual ICollection<PCP_EF_M_RVC_ITE> PCP_EF_M_RVC_ITE { get; set; }


    }
}
