using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{
    /*
      PCP : Classificação do produto  
      Mariel : 08/10/2013
    */
    [Table("PCP_TB_C_CLA")]
    public class PCP_EF_C_CLA : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_CLA 
        {
            get { return GetValue(() => ID_CLA); }
            set { SetValue(() => ID_CLA, value); }
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
