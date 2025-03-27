using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_CRQ")]
    public class PCP_EF_M_CRQ : NotifyingObject
    {
        [Key]
        public int ID_CRQ { get; set; }
        public int ID_EMPRESA { get; set; }
        public int ID_RESPONSAVEL { get; set; }
        public System.DateTime DTA_CRIACAO { get; set; }
        public System.DateTime DTA_ATUALIZACAO { get; set; }
        public string OBSERVACAO { get; set; }

        //FKs
        public virtual ICollection<PCP_EF_M_CRQ_REG> PCP_EF_M_CRQ_REG { get; set; }


    }
}
