using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_REC")]
    public class PCP_EF_M_REC : NotifyingObject
    {
        [Key]
        public int ID_PROTOCOLO 
        {
            get { return GetValue(() => ID_PROTOCOLO ); }
            set { SetValue(() => ID_PROTOCOLO, value); }
        }

        public int ID_EMPRESA 
        {
            get { return GetValue(() => ID_EMPRESA ); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        public DateTime DTA_RECLAMACAO 
        {
            get { return GetValue(() => DTA_RECLAMACAO ); }
            set { SetValue(() => DTA_RECLAMACAO, value); }
        }

        public int ID_CLIENTE
        {
            get { return GetValue(() => ID_CLIENTE); }
            set { SetValue(() => ID_CLIENTE, value); }
        }

        //FKs
        public virtual ICollection<PCP_EF_M_REC_IPP> PCP_EF_M_REC_IPP { get; set; }

    }
}
