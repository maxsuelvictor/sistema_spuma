using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_OPR_IPA")]
    public class PCP_EF_M_OPR_IPA : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_OPR")]
        public int ID_OPR { get; set; }

        [Key, Column(Order = 1)]
        public int ID_OPR_OPP { get; set; }

        [Key, Column(Order = 2)]
        public int ID_OPR_IPA { get; set; }

        public int ID_ITEM { get; set; }

        public int ID_COR { get; set; }

        public int ID_TAMANHO { get; set; }

        public double QTDE { get; set; }

        //FKs
        public virtual PCP_EF_M_OPR PCP_EF_M_OPR { get; set; }


    }
}
