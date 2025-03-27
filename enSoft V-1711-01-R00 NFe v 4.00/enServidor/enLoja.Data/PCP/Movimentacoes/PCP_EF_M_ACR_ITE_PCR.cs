using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_ACR_ITE_PCR")]
    public class PCP_EF_M_ACR_ITE_PCR : NotifyingObject
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
        public int ID_ACR_PH
        {
            get { return GetValue(() => ID_ACR_PH); }
            set { SetValue(() => ID_ACR_PH, value); }
        }

        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }

        public System.DateTime DTA_ENTRADA
        {
            get { return GetValue(() => DTA_ENTRADA); }
            set { SetValue(() => DTA_ENTRADA, value); }
        }

        [Display(Name = "Observação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(60)]
        public string OBSERVACAO
        {
            get { return GetValue(() => OBSERVACAO); }
            set { SetValue(() => OBSERVACAO, value); }
        }

        public int ID_RESPONSAVEL
        {
            get { return GetValue(() => ID_RESPONSAVEL); }
            set { SetValue(() => ID_RESPONSAVEL, value); }
        }


        //FKs
        public virtual PCP_EF_M_ACR_ITE PCP_EF_M_ACR_ITE { get; set; }

    }
}
