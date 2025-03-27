using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_ACR_ITE_PDT")]
    public class PCP_EF_M_ACR_ITE_PDT : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_ACR_ITE")]
        public int ID_ACR
        {
            get { return GetValue(() => ID_ACR); }
            set { SetValue(() => ID_ACR, value); }
        }

        [Key, Column(Order = 1), ForeignKey("PCP_EF_M_ACR_ITE")]
        public int ID_ACR_P
        {
            get { return GetValue(() => ID_ACR_P); }
            set { SetValue(() => ID_ACR_P, value); }
        }

        [Key, Column(Order = 2)]
        public int ID_CONFORMIDADE
        {
            get { return GetValue(() => ID_CONFORMIDADE); }
            set { SetValue(() => ID_CONFORMIDADE, value); }
        }

        //FKs
        public virtual PCP_EF_M_ACR_ITE PCP_EF_M_ACR_ITE { get; set; }

    }
}
