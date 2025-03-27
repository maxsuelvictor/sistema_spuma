using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_CRQ_REG")]
    public class PCP_EF_M_CRQ_REG : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_CRQ")]
        public int ID_CRQ { get; set; }
        
        [Key, Column(Order = 1)]
        public int ID_LME_D { get; set; }

        public int ID_SETOR { get; set; }
        
        public int FORMA { get; set; }
        
        public int INDEXACAO { get; set; }
        
        public int METODO_RECUPERACAO { get; set; }
        
        public int TEMPO_RETENCAO { get; set; }
        
        public int DISPOSICAO_TEMPO { get; set; }
        
        public System.DateTime DTA_CADASTRO { get; set; }

        //FKs
        public virtual PCP_EF_M_CRQ PCP_EF_M_CRQ { get; set; }

    }
}
