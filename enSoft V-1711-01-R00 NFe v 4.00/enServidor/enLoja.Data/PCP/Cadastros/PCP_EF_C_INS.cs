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

    [Table("PCP_TB_C_INS")]
    public class PCP_EF_C_INS : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_INS { get; set; }
        public string SIGLA { get; set; }
        public string DESCRICAO { get; set; }
        public int ID_MDE { get; set; }
        public int ID_FABRICANTE { get; set; }
        public string NRO_SERIE { get; set; }
        public DateTime DTA_CADASTRO { get; set; }
        public string RESOLUCAO_MENOR_DIVISAO { get; set; }
        public int ID_TIN { get; set; }
        public string SCALA { get; set; }
        public string GARANTIA { get; set; }
     
        


    }
}
