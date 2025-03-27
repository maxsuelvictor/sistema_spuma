using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_ROM_LOT")]
    public class PCP_EF_M_ROM_LOT : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_ROM")]
        public int ID_ROM { get; set; }
        
        [Key, Column(Order = 1)]
        public int NRO_LOTE_CAMINHAO { get; set; }
        
        public float QTDE { get; set; }
        
        public string OBSERVACAO { get; set; }

        //FKs
        public virtual PCP_EF_M_ROM PCP_EF_M_ROM { get; set; }

    }
}
