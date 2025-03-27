using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_LPR_FUN")]
    public class PCP_EF_M_LPR_FUN : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_LPR")]
        public int ID_LPR { get; set; }
        
        [Key, Column(Order = 1)]
        public int ID_FUNCIONARIO { get; set; }

        //FKs
        public virtual PCP_EF_M_LPR PCP_EF_M_LPR { get; set; }

    }
}
