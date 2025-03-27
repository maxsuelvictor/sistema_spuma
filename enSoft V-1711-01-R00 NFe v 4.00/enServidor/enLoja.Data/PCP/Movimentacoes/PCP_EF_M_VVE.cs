using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Cadastros;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_VVE")]
    public class PCP_EF_M_VVE : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("CAD_EF_C_VEI")]
        public int ID_VEICULO { get; set; }

        [Key, Column(Order = 1)]
        public string ID_VVE { get; set; }
        
        public System.DateTime DTA_CADASTRO { get; set; }
        
        public bool SITUACAO_LIMPEZA { get; set; }
        
        public bool SITUACAO_REVESTIMENTO { get; set; }
        
        public bool SITUACAO_MADEIRAMENTO { get; set; }
        
        public bool SITUACAO_BAU { get; set; }
        
        public int ID_RESPONSAVEL { get; set; }
        
        public string TEXTO_NAO_CONFORMIDADE { get; set; }

        //FKs
        public virtual CAD_EF_C_VEI CAD_EF_C_VEI { get; set; }

    }
}
