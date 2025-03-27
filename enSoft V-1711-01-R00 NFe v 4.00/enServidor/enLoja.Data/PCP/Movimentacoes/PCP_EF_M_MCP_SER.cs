using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_MCP_SER")]
    public class PCP_EF_M_MCP_SER : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_MCP")]
        public int ID_MCP { get; set; }

        [Key, Column(Order = 1)]
        public int ID_MCP_SER { get; set; }
        public int ID_ITEM { get; set; }

        //FKs
        public virtual PCP_EF_M_MCP PCP_EF_M_MCP { get; set; }

    }
}
