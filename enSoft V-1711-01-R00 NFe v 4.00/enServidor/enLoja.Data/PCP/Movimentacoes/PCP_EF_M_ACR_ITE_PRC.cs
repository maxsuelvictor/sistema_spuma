using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_ACR_ITE_PRC")]
    public class PCP_EF_M_ACR_ITE_PRC : NotifyingObject
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

        [Key, Column(Order = 3)]
        public int ID_ACR_PR
        {
            get { return GetValue(() => ID_ACR_PR); }
            set { SetValue(() => ID_ACR_PR, value); }
        }

        [Display(Name = "Reg.Ação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(200)]
        public string EVENTO_OCORRIDO_REG_ACAO
        {
            get { return GetValue(() => EVENTO_OCORRIDO_REG_ACAO); }
            set { SetValue(() => EVENTO_OCORRIDO_REG_ACAO, value); }
        }

        public int ID_RESP_REG_ACAO
        {
            get { return GetValue(() => ID_RESP_REG_ACAO); }
            set { SetValue(() => ID_RESP_REG_ACAO, value); }
        }

        public int SITUACAO
        {
            get { return GetValue(() => SITUACAO); }
            set { SetValue(() => SITUACAO, value); }
        }

        public DateTime DATA_REG_ACAO
        {
            get { return GetValue(() => DATA_REG_ACAO); }
            set { SetValue(() => DATA_REG_ACAO, value); }
        }

        //FKs
        public virtual PCP_EF_M_ACR_ITE PCP_EF_M_ACR_ITE { get; set; }    

    }
}
