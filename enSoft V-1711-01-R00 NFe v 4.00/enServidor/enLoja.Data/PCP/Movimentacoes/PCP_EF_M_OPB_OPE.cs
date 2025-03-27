using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_OPB_OPE")]
    public class PCP_EF_M_OPB_OPE : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_OPB")]
        public int ID_OPB { get; set; }
        
        [Key, Column(Order = 1)]
        public int ID_OPB_OPE { get; set; }

        public int ID_ITEM_SEMI { get; set; }
        public int ID_COR { get; set; }
        public int ID_TAMANHO { get; set; }
        public System.DateTime DTA_PRODUCAO { get; set; }
        public System.TimeSpan HORA_PRODUCAO { get; set; }
        public string NUM_LOTE { get; set; }

        //FKs
        public virtual PCP_EF_M_OPB PCP_EF_M_OPB { get; set; }

        public virtual ICollection<PCP_EF_M_OPB_OPE_IBE> PCP_EF_M_OPB_OPE_IBE { get; set; }
    }
}
