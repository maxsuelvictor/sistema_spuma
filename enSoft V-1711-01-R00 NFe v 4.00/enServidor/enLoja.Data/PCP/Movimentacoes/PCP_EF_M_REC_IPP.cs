using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_REC_IPP")]
    public class PCP_EF_M_REC_IPP : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_REC")]
        public int ID_PROTOCOLO 
        {
            get { return GetValue(() => ID_PROTOCOLO ); }
            set { SetValue(() => ID_PROTOCOLO, value); }
        }

        [Key, Column(Order = 1)]
        public int ID_SEQUENCIA 
        {
            get { return GetValue(() => ID_SEQUENCIA ); }
            set { SetValue(() => ID_SEQUENCIA, value); }
        }

        public int ID_PEDIDO 
        {
            get { return GetValue(() => ID_PEDIDO ); }
            set { SetValue(() => ID_PEDIDO, value); }
        }

        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }

        //FKs
        public virtual PCP_EF_M_REC PCP_EF_M_REC { get; set; }
    }
}
