using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Faturamento
{
    [Table("FAT_TB_M_ROM")]
    public class FAT_EF_M_ROM : NotifyingObject
    {
        [Display(Name = "Romaneio")]
        [Key]
        public int ID_ROMANEIO { get; set; }

        [Display(Name = "Empresa")]
        public int ID_EMPRESA { get; set; }
        
        public DateTime DTA_EMISSAO { get; set; }

        [Display(Name = "Responsável")]
        public int ID_RESPONSAVEL { get; set; }

        [Display(Name = "Motorista")]
        public int ID_MOTORISTA { get; set; }

        [Display(Name = "Observação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(100)]
        public string OBS_1 { get; set; }

        [Display(Name = "Observação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(100)]
        public string OBS_2 { get; set; }


    }
}
