using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Cadastros
{
    /*
      PCP : Tipos de lista mestre
      Mariel : 09/10/2013
     */
    [Table("PCP_TB_C_TLM")]
    public class PCP_EF_C_TLM : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_TLM
        {
            get { return GetValue(() => ID_TLM); }
            set { SetValue(() => ID_TLM, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

    }
}
