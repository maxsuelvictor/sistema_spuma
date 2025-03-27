using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_ROM")]
    public class PCP_EF_M_ROM : NotifyingObject
    {
        [Key]
        public int ID_ROM { get; set; }
        public int ID_EMPRESA { get; set; }
        public DateTime DTA_EMISSAO { get; set; }
        public int ID_RESPONSAVEL { get; set; }
        public int ID_MOTORISTA { get; set; }
        public string OBSERVACAO { get; set; }

        //FKs
        public virtual ICollection<PCP_EF_M_ROM_LOT> PCP_EF_M_ROM_LOT { get; set; }
        public virtual ICollection<PCP_EF_M_ROM_ORS> PCP_EF_M_ROM_ORS { get; set; }

    }
}
