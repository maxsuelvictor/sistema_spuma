using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{
    /*
      PCP : Cadastro de Instrumentos 
            Conforme Planilha: P 7.6-01 (Controle de Instrumentos de Medição)
      Mariel : 09/10/2013
     */

    [Table("PCP_TB_C_CIN_LNS")]
    public class PCP_EF_C_CIN_LNS : NotifyingObject
    {
        [Key, Column(Order = 1), ForeignKey("PCP_EF_C_CIN")]
        [Display(Name = "Código")]
        public int ID_CIN { get; set; }

        [Key, Column(Order = 2)]
        [Display(Name = "Código")]
        public int ID_CIN_LNS { get; set; }

        public DateTime DTA_CADASTRO { get; set; }

        public int ID_SETOR { get; set; }

        [Display(Name = "Tolerancia")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        public string TOLERANCIA_PROCESSO { get; set; }

        [Display(Name = "Frequencia")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(15)]
        public string FREQUENCIA { get; set; }

        public int ID_RESPONSAVEL { get; set; }

        //FKs
        public virtual PCP_EF_C_CIN PCP_EF_C_CIN { get; set; }

    }
}
