using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_OPR_PED")]
    public class PCP_EF_M_OPR_PED : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_OPR")]
        public int ID_OPR { get; set; }
        
        [Key, Column(Order = 1)]
        public int ID_PEDIDO { get; set; }

        //FKs
        public virtual PCP_EF_M_OPR PCP_EF_M_OPR { get; set; }

    }
}
