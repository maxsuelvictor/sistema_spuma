using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_OPB_OPR")]
    public class PCP_EF_M_OPB_OPR : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_OPB")]
        public int ID_OPB { get; set; }
        [Key, Column(Order = 1)]
        public int ID_OPR { get; set; }

        //FKs
        public virtual PCP_EF_M_OPB PCP_EF_M_OPB { get; set; }

    }
}
