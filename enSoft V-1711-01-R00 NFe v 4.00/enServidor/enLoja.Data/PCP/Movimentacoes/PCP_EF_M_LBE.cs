using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_LBE")]
    public class PCP_EF_M_LBE : NotifyingObject
    {
        [Key]
        public int ID_LBE { get; set; }
        public int ID_EMPRESA { get; set; }
        public string TIPO { get; set; }
        public System.DateTime DTA_LAMINACAO { get; set; }
        public double QTDE { get; set; }
        public int ID_SETOR { get; set; }
        public int ID_ITEM_ACABADO { get; set; }
        public int ID_ITEM_LAMINA { get; set; }

        //FKs
        public virtual ICollection<PCP_EF_M_LBE_BLO> PCP_EF_M_LBE_BLO { get; set; }

    }
}
