using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_PSC_PRT")]
    public class PCP_EF_M_PSC_PRT : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_PSC")]
        public int ID_PSC 
        {
            get { return GetValue(() => ID_PSC ); }
            set { SetValue(() => ID_PSC, value); }
        }

        [Key, Column(Order = 1)]
        public int ID_PESQUISA 
        {
            get { return GetValue(() => ID_PESQUISA ); }
            set { SetValue(() => ID_PESQUISA, value); }
        }

        [Key, Column(Order = 2)]
        public int ID_PERGUNTA 
        {
            get { return GetValue(() => ID_PERGUNTA ); }
            set { SetValue(() => ID_PERGUNTA, value); }
        }

        public int INDICADOR 
        {
            get { return GetValue(() => INDICADOR ); }
            set { SetValue(() => INDICADOR, value); }
        }

        public string RESPOSTA_CLIENTE
        {
            get { return GetValue(() => RESPOSTA_CLIENTE); }
            set { SetValue(() => RESPOSTA_CLIENTE, value); }
        }

        //FKs
        public virtual PCP_EF_M_PSC PCP_EF_M_PSC { get; set; }


    }
}
