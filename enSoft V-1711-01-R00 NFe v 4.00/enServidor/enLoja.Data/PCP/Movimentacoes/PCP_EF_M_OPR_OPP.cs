using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_OPR_OPP")]
    public class PCP_EF_M_OPR_OPP : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_OPR")]
        public int ID_OPR { get; set; }

        [Key, Column(Order = 1)]
        public int ID_OPR_OPP { get; set; }

        public int ID_ITEM { get; set; }

        public int ID_COR { get; set; }

        public int ID_TAMANHO { get; set; }

        public double QTDE_A_PRODUZIR { get; set; }

        public double QTDE_PRODUZIDA { get; set; }

        //FKs
        public virtual PCP_EF_M_OPR PCP_EF_M_OPR { get; set; }


    }
}
