using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_MCP")]
    public class PCP_EF_M_MCP : NotifyingObject
    {
        [Key]
        public int ID_MCP { get; set; }
        public int ID_EMPRESA { get; set; }
        public string PROBLEMA { get; set; }
        public int ID_SETOR { get; set; }
        public int ID_MEQ { get; set; }
        public int ID_CME_MEQ { get; set; }        
        public decimal TOTAL_PECAS { get; set; }
        public decimal TOTAL_MOBRA { get; set; }
        public decimal TOTAL_PECAS_GARANTIA { get; set; }
        public decimal TOTAL_SERVICOS_GARANTIA { get; set; }
        public decimal TOTAL_GARANTIA { get; set; }
        public decimal TOTAL_PECAS_MOBRA { get; set; }
        public int ID_RESPONSAVEL { get; set; }
        public int ID_RESP_AUTORIZOU { get; set; }
        public System.DateTime DTA_AUTORIZACAO { get; set; }
        public System.DateTime DTA_INICIO_ATEND { get; set; }
        public System.TimeSpan HORA_INICIO_ATEND { get; set; }
        public System.DateTime DTA_TERMINO_ATEND { get; set; }
        public System.TimeSpan HORA_TERMINO_ATEND { get; set; }
        public int TIPO_ACAO { get; set; }

        //FKs
        public virtual ICollection<PCP_EF_M_MCP_SER> PCP_EF_M_MCP_SER { get; set; }
        public virtual ICollection<PCP_EF_M_MCP_IVE> PCP_EF_M_MCP_IVE { get; set; }
        //public virtual PCP_EF_C_MEQ PCP_EF_C_MEQ { get; set; }

    }
}
