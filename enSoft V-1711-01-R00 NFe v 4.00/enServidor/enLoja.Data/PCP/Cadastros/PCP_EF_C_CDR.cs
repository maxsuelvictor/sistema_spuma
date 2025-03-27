using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Cadastros;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{

    /*
      PCP : Tabela Para Uso de Cadarço   
      Mariel : 08/10/2013
     */

    [Table("PCP_TB_C_CDR")]
    public class PCP_EF_C_CDR : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_CDR
        {
            get { return GetValue(() => ID_CDR); }
            set { SetValue(() => ID_CDR, value); }
        }


        [Display(Name = "Grupo")]
        [Column(TypeName = "CHAR")]
        [StringLength(11)]
        [Required(ErrorMessage = "Código do Grupo deve ser informado!")]                
        public string ID_GRUPO 
        {
            get { return GetValue(() => ID_GRUPO); }
            set { SetValue(() => ID_GRUPO, value); }
        }

        [Display(Name = "Cor do Grupo")]
        [Required(ErrorMessage = "Campo deve ser informado!")]  
        public int ID_COR_GRUPO
        {
            get { return GetValue(() => ID_COR_GRUPO); }
            set { SetValue(() => ID_COR_GRUPO, value); }
        }


        [Display(Name = "Tipo Cadarco")]
        /*
         Tipo Cadarco
         1 - 18 mm
         2 - 35 mm
         3 - 40 mm
        */
        [Required(ErrorMessage = "Campo deve ser informado!")]
        public PCP_TIPO_CADARCO_ENUM TIPO_CADARCO 
        {
            get { return GetValue(() => TIPO_CADARCO); }
            set { SetValue(() => TIPO_CADARCO, value); }
        }

        [Display(Name = "Cor Cadarco")]
        [Required(ErrorMessage = "Campo deve ser informado!")]
        public int ID_COR_CADARCO 
        {
            get { return GetValue(() => ID_COR_CADARCO); }
            set { SetValue(() => ID_COR_CADARCO, value); }
        }

        //Fk's
        [ForeignKey("ID_GRUPO")]
        public virtual CAD_EF_C_GRU CAD_EF_C_GRU { get; set; }

        [ForeignKey("ID_COR_CADARCO")]
        public virtual CAD_EF_C_COR CAD_EF_C_COR { get; set; }




    }
}




