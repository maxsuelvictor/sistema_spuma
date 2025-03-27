using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Cadastros
{
    /*   
      CAD : Tipos de defeitos X Setores
      Mariel : 08/10/2013
     */
    [Table("CAD_TB_C_SET_TDS")]
    public class CAD_EF_C_SET_TDS : NotifyingObject
    {

        [Key, Column(Order = 1)]
        [Display(Name = "Setor")]
        public int ID_SETOR { get; set; }

        
        [Key, Column(Order = 2)]
        [Display(Name = "Tipo de Defeito")]
        public int ID_TDF { get; set; }

        //Fk
        [ForeignKey("ID_SETOR")]
        public virtual CAD_EF_C_SET CAD_EF_C_SET { get; set; }


    }
}
