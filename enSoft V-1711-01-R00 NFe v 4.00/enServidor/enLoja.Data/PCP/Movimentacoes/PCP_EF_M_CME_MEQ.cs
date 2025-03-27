using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_CME_MEQ")]
    public class PCP_EF_M_CME_MEQ : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_CME")]
        public int ID_CME { get; set; }

        [Key, Column(Order = 1)]
        public int ID_CME_MEQ { get; set; }
        public int ID_MEQ { get; set; }
        
        public int ID_SETOR { get; set; }

        public int NRO_SEMANA { get; set; }
        public int MES { get; set; }
        public int ANO { get; set; }
        public int TIPO_CONTROLE { get; set; }
        public int TIPO_MANUTENCAO { get; set; }
        public int FREQUENCIA { get; set; }

        //FKs
        public virtual PCP_EF_M_CME PCP_EF_M_CME { get; set; }

    }
}
