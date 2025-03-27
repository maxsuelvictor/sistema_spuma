using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{
    /*
      PCP : Setores do Tipo de Programação
             
      Mariel : 09/10/2013
     */

    [Table("PCP_TB_C_TPP_SET")]
    public class PCP_EF_C_TPP_SET : NotifyingObject
    {
        [Key, Column(Order = 1)]
        [Display(Name = "Código")]
        public int ID_TPP
        {
            get { return GetValue(() => ID_TPP); }
            set { SetValue(() => ID_TPP, value); }
        }

        [Key, Column(Order = 2)]
        public int ID_SETOR
        {
            get { return GetValue(() => ID_SETOR); }
            set { SetValue(() => ID_SETOR, value); }
        }

        public bool GERA_ESTOQUE { get; set; }
        public bool GRAVA_NRO_LOTE { get; set; }
        public bool GERA_NRO_LOTE { get; set; }
        public bool EXECUTA_SERVICO { get; set; }

        //Fk
        [ForeignKey("ID_TPP")]
        public virtual PCP_EF_C_TPP PCP_EF_C_TPP { get; set; }


    }
}
