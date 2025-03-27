using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_RVC_ITE")]
    public class PCP_EF_M_RVC_ITE : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_RVC")]
        public int ID_RVC { get; set; }

        [Key, Column(Order = 1)]
        public int ID_RVC_ITE { get; set; }
        public int ID_ITEM { get; set; }
        public int ID_COR { get; set; }
        public int ID_TAMANHO { get; set; }
        public int ID_RESPONSAVEL { get; set; }
        public string OBSERVACAO { get; set; }


        //FKs
        public virtual PCP_EF_M_RVC PCP_EF_M_RVC { get; set; }

        public virtual ICollection<PCP_EF_M_RVC_ITE_SET> PCP_EF_M_RVC_ITE_SET { get; set; }

    }
}
