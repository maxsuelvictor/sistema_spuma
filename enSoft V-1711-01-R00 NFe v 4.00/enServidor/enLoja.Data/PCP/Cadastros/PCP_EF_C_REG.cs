using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{
    /*
      PCP : Região   
      Mariel : 09/10/2013
     */

    [Table("PCP_TB_C_REG")]
    public class PCP_EF_C_REG : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_REGIAO
        {
            get { return GetValue(() => ID_REGIAO); }
            set { SetValue(() => ID_REGIAO, value); }
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

        [Display(Name = "Rota")]
        [Required(ErrorMessage = "Campo deve ser informado!")]          
        public int ID_ROTA 
        {
            get { return GetValue(() => ID_ROTA); }
            set { SetValue(() => ID_ROTA, value); }
        }        

        //Fk's
        [ForeignKey("ID_ROTA")]
        public virtual PCP_EF_C_ROT PCP_EF_C_ROT { get; set; }


    }
}
