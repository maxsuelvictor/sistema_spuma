using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Faturamento
{
    [Table("FAT_TB_M_ROM_PED_ITE")]
    public class FAT_EF_M_ROM_PED_ITE : NotifyingObject
    {
        [Display(Name = "Romaneio")]
        [Key, Column(Order = 1)]
        public int ID_ROMANEIO { get; set; }

        [Display(Name = "Pedido")]
        [Key, Column(Order = 2)]
        public int ID_PEDIDO { get; set; }

        [Display(Name = "Produto")]
        [Key, Column(Order = 3)]
        public int ID_ITEM { get; set; }

        [Display(Name = "Qtde")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Quantidade não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Quantidade deve ser informado!")]
        public double QTDE { get; set; }

    }
}
