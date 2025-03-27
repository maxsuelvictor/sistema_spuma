using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{

    [Table("PCP_TB_C_CIN")]
    public class PCP_EF_C_CIN : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_CIN { get; set; }

        public int ID_INS { get; set; }

        public int ID_NUM_SEQ { get; set; }

        public int TIPO_MEI { get; set; }

        public string REQUER_CALIBRACAO { get; set; }
        public int SITUACAO_INSTRUMENTO { get; set; }
        public string CERT_ERRO_ADMISSIVEL { get; set; }
        public string CERT_NUM { get; set; }
        public string CERT_ID_FORNECEDOR { get; set; }
        public string CERT_ID_RESP_INSPECAO { get; set; }
        public System.DateTime CERT_DTA_VERIFICACAO { get; set; }
        public int NUM_SEQ { get; set; }        public int TR_SIT_ENCOSTO { get; set; }
        public int TR_SIT_FUNCIONAMENTO { get; set; }
        public int TR_SIT_ESCALA { get; set; }
        public int TR_SIT_ASPECTO_GERAL { get; set; }
        public int TR_SIT_ESCALA_PADRAO { get; set; }
        public int TR_RESULTADO { get; set; }
        public int TR_SIT_INSPECAO { get; set; }
        public string TR_ID_RESP_INSPECAO { get; set; }
        public System.DateTime TR_DTA_VERIFICACAO { get; set; }
        public string TR_REG_ACAO_TOMADA { get; set; }
        public string CAL_EFET_FREQUENCIA { get; set; }
        public string CAL_EFET_PROXIMA { get; set; }
        public int NUMERO_NFE { get; set; }
        public string HISTORICO_INSTRUMENTO { get; set; }

        //FKs
        public virtual ICollection<PCP_EF_C_CIN_LNS> PCP_EF_C_CIN_LNS { get; set; }



    }
}
