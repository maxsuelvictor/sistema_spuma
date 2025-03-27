using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_MCP_IVE")]
    public class PCP_EF_M_MCP_IVE : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_MCP")]
        public int ID_MCP { get; set; }

        [Key, Column(Order = 1)]
        public int ID_MCP_IVE { get; set; }
        public string TEXTO_VERIFICADO { get; set; }
        public bool VERIFICADO { get; set; }
        public bool SUBSTITUIDO { get; set; }
        public bool LUBRIFICADO { get; set; }
        public bool AJUSTADO { get; set; }
        public bool COMPLETADO { get; set; }
        public bool TROCADO { get; set; }
        public bool LIMPADO { get; set; }
        public bool REPARADO { get; set; }
        public bool OUTROS { get; set; }
        public string TEXTO_OUTROS { get; set; }
        public string OBSERVACAO { get; set; }

        //FKs
        public virtual PCP_EF_M_MCP PCP_EF_M_MCP { get; set; }



    }
}
