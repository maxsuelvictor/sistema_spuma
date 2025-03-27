using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Cadastros
{
    /*   
      PCP : Almoxarifado  
      Mariel : 08/10/2013
     */
    [Table("CAD_TB_C_ALM")]
    public class CAD_EF_C_ALM : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_ALMOXARIFADO 
        {
            get { return GetValue(() => ID_ALMOXARIFADO); }
            set { SetValue(() => ID_ALMOXARIFADO, value); }
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
