using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Cadastros
{
    /*
      PCP : Conformidade  
      Mariel : 08/10/2013
    */

    [Table("PCP_TB_C_CNF")]
    public class PCP_EF_C_CNF : NotifyingObject
    {
        [Key]
        public int ID_CONFORMIDADE
        {
            get { return GetValue(() => ID_CONFORMIDADE); }
            set { SetValue(() => ID_CONFORMIDADE, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

    }
}
