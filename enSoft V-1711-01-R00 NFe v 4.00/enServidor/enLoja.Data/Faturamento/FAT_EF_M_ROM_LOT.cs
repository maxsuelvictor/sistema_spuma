using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Faturamento
{
    [Table("FAT_TB_M_ROM_LOT")]
    public class FAT_EF_M_ROM_LOT : NotifyingObject
    {
        [Display(Name = "Romaneio")]
        [Key, Column(Order = 1)]
        public int ID_ROMANEIO { get; set; }

        [Display(Name = "Lote")]
        [Key, Column(Order = 2)]
        public int ID_LOTE_CAMINHAO { get; set; }

        [Display(Name = "Qtde")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Quantidade não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Quantidade deve ser informado!")]
        public double QTDE { get; set; }

        [Display(Name = "Observação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(100)]
        public string OBSERVACAO { get; set; }

    }
}
