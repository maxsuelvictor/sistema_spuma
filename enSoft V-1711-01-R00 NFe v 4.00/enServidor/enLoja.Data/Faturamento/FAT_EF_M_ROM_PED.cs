using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Faturamento
{
    [Table("FAT_TB_M_ROM_PED")]
    public class FAT_EF_M_ROM_PED : NotifyingObject
    {
        [Display(Name = "Romaneio")]
        [Key, Column(Order = 1)]
        public int ID_ROMANEIO { get; set; }

        [Display(Name = "Pedido")]
        [Key, Column(Order = 2)]
        public int ID_PEDIDO { get; set; }

    }
}
