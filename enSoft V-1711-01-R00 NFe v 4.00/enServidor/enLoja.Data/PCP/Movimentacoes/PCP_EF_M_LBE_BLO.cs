using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_LBE_BLO")]
    public class PCP_EF_M_LBE_BLO : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_LBE")]
        public int ID_LBE { get; set; }
        
        [Key, Column(Order = 1)]
        public int ID_LBE_BLO { get; set; }

        public string NUM_LOTE { get; set; }
        public double QTDE { get; set; }
        public int ID_OPB { get; set; }
        public int ID_OPB_OPE { get; set; }

        //FKs
        public virtual PCP_EF_M_LBE PCP_EF_M_LBE { get; set; }


    }
}
