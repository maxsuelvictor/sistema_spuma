using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_CAC_PLA")]
    public class PCP_EF_M_CAC_PLA : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_CAC")]
        public int ID_CAC { get; set; }

        [Key, Column(Order = 1)]
        public int ID_CAC_PLA { get; set; }

        public string ACAO { get; set; }
        
        public int ID_RESPONSAVEL { get; set; }
        
        public System.DateTime DTA_PRAZO { get; set; }
        
        public System.DateTime DTA_EFETIVO { get; set; }

        //FKs
        public virtual PCP_EF_M_CAC PCP_EF_M_CAC { get; set; }

    }
}
