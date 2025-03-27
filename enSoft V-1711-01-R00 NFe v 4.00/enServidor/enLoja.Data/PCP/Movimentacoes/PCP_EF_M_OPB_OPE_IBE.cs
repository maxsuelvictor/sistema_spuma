using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_OPB_OPE_IBE")]
    public class PCP_EF_M_OPB_OPE_IBE : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_OPB_OPE")]
        public int ID_OPB { get; set; }

        [Key, Column(Order = 1), ForeignKey("PCP_EF_M_OPB_OPE")]
        public int ID_OPB_OPE { get; set; }
        
        [Key, Column(Order = 2)]
        public int ID_OPB_IBE { get; set; }
        
        
        public int ID_ITEM { get; set; }
        public int ID_COR { get; set; }
        public int ID_TAMANHO { get; set; }
        public double QTDE { get; set; }
        public string NUM_LOTE_CRP { get; set; }
        public string NUM_LOTE_ITEM { get; set; }
        public int ID_CRP { get; set; }

        //FKs
        public virtual PCP_EF_M_OPB_OPE PCP_EF_M_OPB_OPE { get; set; }

    }
}
