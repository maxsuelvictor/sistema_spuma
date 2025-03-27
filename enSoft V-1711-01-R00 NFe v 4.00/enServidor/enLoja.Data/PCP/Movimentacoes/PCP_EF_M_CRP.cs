using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_CRP")]
    public class PCP_EF_M_CRP : NotifyingObject
    {
        [Key]
        public int ID_CRP { get; set; }
        public int ID_EMPRESA { get; set; }
        public System.DateTime DTA_EMISSAO { get; set; }
        public string NUM_LOTE_CRP { get; set; }
        public int ID_RPT { get; set; }
        public int ID_RESPONSAVEL { get; set; }
        public int ID_ALMOXARIFADO { get; set; }

        //FKs
        public virtual ICollection<PCP_EF_M_CRP_ITE> PCP_EF_M_CRP_ITE { get; set; }

    }
}
