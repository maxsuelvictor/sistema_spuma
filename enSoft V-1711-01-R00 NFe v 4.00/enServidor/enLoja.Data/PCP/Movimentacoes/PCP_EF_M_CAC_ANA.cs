using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_CAC_ANA")]
    public class PCP_EF_M_CAC_ANA : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_CAC")]
        public int ID_CAC { get; set; }

        [Key, Column(Order = 1)]
        public int ID_CAC_ANA { get; set; }

        public int TIPO_CAUSA { get; set; }
        
        public string SUBCAUSA { get; set; }
        
        public string MOTIVO { get; set; }
        
        public string CAUSA_RAIZ { get; set; }
        
        public int ID_RESPONSAVEL { get; set; }

        //FKs
        public virtual PCP_EF_M_CAC PCP_EF_M_CAC { get; set; }


    }
}
