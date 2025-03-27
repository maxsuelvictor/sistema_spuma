using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_CRP_ITE")]
    public class PCP_EF_M_CRP_ITE : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_CRP")]
        public int ID_CRP { get; set; }
        
        [Key, Column(Order = 1)]
        public int ID_ITEM { get; set; }

        [Key, Column(Order = 2)]
        public int ID_COR { get; set; }

        [Key, Column(Order = 3)]
        public int ID_TAMANHO { get; set; }
        
        public string NUM_LOTE { get; set; }
        
        public double QTDE { get; set; }
        
        public double QTDE_BAIXADA { get; set; }

        //FKs
        public virtual PCP_EF_M_CRP PCP_EF_M_CRP { get; set; }

        public virtual ICollection<PCP_EF_M_CRP_ITE_BXI> PCP_EF_M_CRP_ITE_BXI { get; set; }

    }
}
