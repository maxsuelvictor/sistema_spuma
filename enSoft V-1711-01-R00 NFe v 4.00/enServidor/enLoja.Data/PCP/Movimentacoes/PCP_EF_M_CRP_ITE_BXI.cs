using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_CRP_ITE_BXI")]
    public class PCP_EF_M_CRP_ITE_BXI : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_CRP_ITE")]
        public int ID_CRP { get; set; }

        [Key, Column(Order = 1), ForeignKey("PCP_EF_M_CRP_ITE")]
        public int ID_ITEM { get; set; }
        
        [Key, Column(Order = 2), ForeignKey("PCP_EF_M_CRP_ITE")]
        public int ID_COR { get; set; }

        [Key, Column(Order = 3), ForeignKey("PCP_EF_M_CRP_ITE")]
        public int ID_TAMANHO { get; set; }

        [Key, Column(Order = 4)]
        public int ID_CRP_BXI { get; set; }
        
        public string NUM_LOTE { get; set; }
        
        public double QTDE { get; set; }
        
        public int ID_OPB { get; set; }
        
        public int ID_OPB_OPE { get; set; }
        
        public int ID_OPB_IBE { get; set; }

        //FKs
        public virtual PCP_EF_M_CRP_ITE PCP_EF_M_CRP_ITE { get; set; }


    }
}
