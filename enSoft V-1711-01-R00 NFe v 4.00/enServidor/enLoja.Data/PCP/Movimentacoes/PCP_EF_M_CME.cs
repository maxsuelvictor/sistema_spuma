using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_CME")]
    public class PCP_EF_M_CME : NotifyingObject
    {
        [Key]
        public int ID_CME { get; set; }
        public int ID_RESPONSAVEL { get; set; }
        public System.DateTime DTA_LANCTO { get; set; }

        //FKs
        public virtual ICollection<PCP_EF_M_CME_MEQ> PCP_EF_M_CME_MEQ { get; set; }

    }
}
