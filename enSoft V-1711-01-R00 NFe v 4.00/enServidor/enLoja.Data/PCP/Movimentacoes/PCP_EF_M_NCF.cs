using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_NCF")]
    public class PCP_EF_M_NCF : NotifyingObject
    {
        [Key]
        public int ID_NCF { get; set; }
        public int ID_SETOR_ORIGEM { get; set; }
        public string TEXTO_NAO_CONFORMIDADE { get; set; }
        public int ID_ITEM_MOTIVO { get; set; }
        public int ID_COR { get; set; }
        public int ID_TAMANHO { get; set; }
        public string MOTIVO { get; set; }
        public double QTDE_TOTAL_LOTE { get; set; }
        public double QTDE_NAO_CONFORME { get; set; }
        public double PERC_NAO_CONFORME { get; set; }
        public double QTDE_TROCA_DEV { get; set; }
        public int ID_RESPONSAVEL { get; set; }
        public System.DateTime DTA_EMISSAO { get; set; }
        public bool RE_SATISFATORIA { get; set; }
        public string RE_ESPECIFICACAO { get; set; }
        public string RE_ID_RESPONSAVEL { get; set; }
        public int ANA_PRAZO_EFICAZ { get; set; }
        public int ANA_DISP_EFICAZ { get; set; }
        public int ANA_RACP { get; set; }
        public int ANA_FUNC_INFORMADOS { get; set; }
        public int ANA_FUNC_TREINAMENTO { get; set; }
        public string ANA_COMENTARIOS { get; set; }
        public int ANA_ID_RESPONSAVEL { get; set; }
        public int ANA_ID_RESP_DIRETORIA { get; set; }
        
        //FKs
        public virtual ICollection<PCP_EF_M_NCF_DIS> PCP_EF_M_NCF_DIS { get; set; }

    }
}
