using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_OPB")]
    public class PCP_EF_M_OPB : NotifyingObject
    {
        [Key]
        public int ID_OPB { get; set; }
        public int ID_RESPONSAVEL { get; set; }
        public int ID_EMPRESA { get; set; }
        public DateTime DTA_EMISSAO { get; set; }
        public string OBS_ADMINISTRATIVA { get; set; }
        public string OBS_PRODUCAO { get; set; }
        public double CUB_PRODUZIR { get; set; }

        //FKs
        public virtual ICollection<PCP_EF_M_OPB_OPE> PCP_EF_M_OPB_OPE { get; set; }
        public virtual ICollection<PCP_EF_M_OPB_OPR> PCP_EF_M_OPB_OPR { get; set; }




    }
}
