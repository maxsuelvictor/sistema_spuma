using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_ROM_ORS")]
    public class PCP_EF_M_ROM_ORS : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_ROM")]
        public int ID_ROM { get; set; }
       
        [Key, Column(Order = 1)]
        public int ID_ORS { get; set; }

        //FKs
        public virtual PCP_EF_M_ROM PCP_EF_M_ROM { get; set; }

        public virtual ICollection<PCP_EF_M_ROM_ORS_ITE> PCP_EF_M_ROM_ORS_ITE { get; set; }

    }
}
