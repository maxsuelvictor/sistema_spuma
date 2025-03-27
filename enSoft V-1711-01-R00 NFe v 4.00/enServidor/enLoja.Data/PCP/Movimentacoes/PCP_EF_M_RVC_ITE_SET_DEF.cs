using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_RVC_ITE_SET_DEF")]
    public class PCP_EF_M_RVC_ITE_SET_DEF : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_RVC_ITE_SET")]
        public int ID_RVC { get; set; }

        [Key, Column(Order = 1), ForeignKey("PCP_EF_M_RVC_ITE_SET")]
        public int ID_RVC_ITE { get; set; }

        [Key, Column(Order = 2), ForeignKey("PCP_EF_M_RVC_ITE_SET")]
        public int ID_SETOR { get; set; }

        [Key, Column(Order = 3)]
        public int ID_TDF { get; set; }

        //FKs
        public virtual PCP_EF_M_RVC_ITE_SET PCP_EF_M_RVC_ITE_SET { get; set; }

    }
}
