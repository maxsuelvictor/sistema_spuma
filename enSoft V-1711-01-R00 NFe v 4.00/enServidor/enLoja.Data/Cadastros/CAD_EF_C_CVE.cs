using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Cadastros
{
    /*   
      CAD : Cor de Veiculo 
      Mariel : 08/10/2013
     */
    [Table("CAD_TB_C_CVE")]
    public class CAD_EF_C_CVE : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_CVE { get; set; }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        public string DESCRICAO { get; set; }
    }
}
