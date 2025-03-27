using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_RVC_ITE_SET")]
    public class PCP_EF_M_RVC_ITE_SET : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_RVC_ITE")]
        public int ID_RVC { get; set; }

        [Key, Column(Order = 1), ForeignKey("PCP_EF_M_RVC_ITE")]
        public int ID_RVC_ITE { get; set; }

        [Key, Column(Order = 2)]
        public int ID_SETOR { get; set; }


        //FKs
        public virtual PCP_EF_M_RVC_ITE PCP_EF_M_RVC_ITE { get; set; }
        public virtual ICollection<PCP_EF_M_RVC_ITE_SET_DEF> PCP_EF_M_RVC_ITE_SET_DEF { get; set; }

    }
}
