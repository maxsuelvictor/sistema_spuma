using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Faturamento
{
    [Table("FAT_TB_M_POS")]
    public class FAT_EF_M_POS : NotifyingObject
    {
        [Display(Name = "Controle")]
        [Key]
        public int ID_POSVENDA { get; set; }

        [Display(Name = "Empresa")]
        public int ID_EMPRESA { get; set; }

        public DateTime DTA_POSVENDA { get; set; }

        [Display(Name = "Cliente")]
        [Required(ErrorMessage = "Cliente deve ser Informado!")]
        [NotZero(ErrorMessage = "Cliente não deve ser 0 (zero)!")]
        [ExistCliente]
        public int ID_CLIENTE { get; set; }
 


    }
}
