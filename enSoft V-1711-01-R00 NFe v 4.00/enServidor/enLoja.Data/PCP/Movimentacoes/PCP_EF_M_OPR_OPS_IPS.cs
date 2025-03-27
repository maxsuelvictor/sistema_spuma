using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_OPR_OPS_IPS")]
    public class PCP_EF_M_OPR_OPS_IPS : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_OPR_OPS")]
        public int ID_OPR { get; set; }

        [Key, Column(Order = 1), ForeignKey("PCP_EF_M_OPR_OPS")]
        public int ID_OPR_OPS { get; set; }

        [Key, Column(Order = 2)]
        public int ID_OPR_OPS_IPS { get; set; }
        public int ID_ITEM { get; set; }
        public int ID_COR { get; set; }
        public int ID_TAMANHO { get; set; }
        public double QTDE { get; set; }
        public string NUM_LOTE { get; set; }

        //FKs
        public virtual PCP_EF_M_OPR_OPS PCP_EF_M_OPR_OPS { get; set; }


    }
}
