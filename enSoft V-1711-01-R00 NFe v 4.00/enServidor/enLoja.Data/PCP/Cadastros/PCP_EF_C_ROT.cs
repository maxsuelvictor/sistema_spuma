using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{

    /*
      PCP : Rota   
      Mariel : 09/10/2013
     */
    [Table("PCP_TB_C_ROT")]
    public class PCP_EF_C_ROT : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_ROTA
        {
            get { return GetValue(() => ID_ROTA); }
            set { SetValue(() => ID_ROTA, value); }
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

        [Display(Name = "Distância Inicial")]
        [Required(ErrorMessage = "Distância deve ser informado!")]          
        public double DIS_INICIAL
        {
            get { return GetValue(() => DIS_INICIAL); }
            set { SetValue(() => DIS_INICIAL, value); }
        }      

        [Display(Name = "Distância Final")]
        [Required(ErrorMessage = "Distância deve ser informado!")]          
        public double DIS_FINAL
        {
            get { return GetValue(() => DIS_FINAL); }
            set { SetValue(() => DIS_FINAL, value); }
        }      

    }
}
