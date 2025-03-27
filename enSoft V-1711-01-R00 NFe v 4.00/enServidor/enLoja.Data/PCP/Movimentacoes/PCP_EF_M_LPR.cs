using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_LPR")]
    public class PCP_EF_M_LPR : NotifyingObject
    {
        [Key]
        public int ID_LPR { get; set; }
        public System.DateTime DTA_PRESENCA { get; set; }
        public System.TimeSpan HORA { get; set; }
        public int ID_RESPONSAVEL { get; set; }
        public int ID_RESP_REUNIAO { get; set; }
        public string MOTIVO_REUNIAO { get; set; }
        public string CONTEUDO_REUNIAO { get; set; }
        public string OBSERVACAO { get; set; }
        public int ID_EMPRESA { get; set; }

        //FKs
        public virtual ICollection<PCP_EF_M_LPR_FUN> PCP_EF_M_LPR_FUN { get; set; }

    }
}
