using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_ORS")]
    public class PCP_EF_M_ORS : NotifyingObject
    {
        [Key]
        public int ID_ORS { get; set; }
        public int ID_EMPRESA { get; set; }
        public DateTime DTA_EMISSAO { get; set; }
        public int ID_RESPONSAVEL { get; set; }
        public string OBSERVACAO { get; set; }

        //FKs
        public virtual ICollection<PCP_EF_M_ORS_ITE> PCP_EF_M_ORS_ITE { get; set; }
        public virtual ICollection<PCP_EF_M_ORS_TIT> PCP_EF_M_ORS_TIT { get; set; }


    }
}
