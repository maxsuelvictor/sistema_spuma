using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{
    /*
      PCP : Cadastro de modelo de equipamentos e instrumentos
      Mariel : 09/10/2013
     */

    [Table("PCP_TB_C_MDE")]
    public class PCP_EF_C_MDE : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_MDE
        {
            get { return GetValue(() => ID_MDE); }
            set { SetValue(() => ID_MDE, value); }
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
