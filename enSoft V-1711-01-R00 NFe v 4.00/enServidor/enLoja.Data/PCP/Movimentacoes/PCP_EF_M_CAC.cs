using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_CAC")]
    public class PCP_EF_M_CAC : NotifyingObject
    {
        [Key]
        public int ID_CAC { get; set; }
   
        public int ID_EMPRESA { get; set; }
        public System.DateTime DTA_ENTRADA { get; set; }
        public int ID_SETOR_ORIGEM { get; set; }
        public int ID_ORI { get; set; }
        public int ID_RESPONSAVEL { get; set; }
        public string TEXTO_NAO_CONFORMIDADE { get; set; }
        public System.DateTime FEC_DTA_EFICACIA_APOS { get; set; }
        public System.DateTime FEC_DTA_VERIFICADO { get; set; }
        public int FEC_SITUACAO_N_CONF { get; set; }
        public bool FEC_FUNC_INFORMADOS { get; set; }
        public bool FEC_FUNC_TREINAMENTO { get; set; }
        public string FEC_COMENTARIOS { get; set; }
        public int FEC_ID_RESPONSAVEL { get; set; }
        public int FEC_ID_RESP_DIRETORIA { get; set; }


        //FKs
        public virtual ICollection<PCP_EF_M_CAC_ANA> PCP_EF_M_CAC_ANA { get; set; }
        public virtual ICollection<PCP_EF_M_CAC_PLA> PCP_EF_M_CAC_PLA { get; set; }



    }
}
