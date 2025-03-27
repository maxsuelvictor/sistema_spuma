using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_ROM_ORS_ITE")]
    public class PCP_EF_M_ROM_ORS_ITE : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_ROM_ORS")]
        public int ID_ROM { get; set; }

        [Key, Column(Order = 1), ForeignKey("PCP_EF_M_ROM_ORS")]
        public int ID_ORS { get; set; }

        [Key, Column(Order = 2)]
        public int ID_ORS_ITE { get; set; }

        public int ID_ITEM { get; set; }

        public int ID_COR { get; set; }

        public int ID_TAMANHO { get; set; }

        public float QTDE { get; set; }

        //FKs
        public virtual PCP_EF_M_ROM_ORS PCP_EF_M_ROM_ORS { get; set; }

    }
}
