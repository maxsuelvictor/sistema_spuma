using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_NCF_DIS")]
    public class PCP_EF_M_NCF_DIS : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_NCF")]
        public int ID_NCF { get; set; }

        [Key, Column(Order = 1)]
        public int ID_NCF_DIS { get; set; }
        
        public int ID_DIS { get; set; }
        
        public int ID_RESPONSAVEL { get; set; }

        public int PRAZO { get; set; }
        public int EFETIVO { get; set; }

        //FKs
        public virtual PCP_EF_M_NCF PCP_EF_M_NCF { get; set; }

    }
}
