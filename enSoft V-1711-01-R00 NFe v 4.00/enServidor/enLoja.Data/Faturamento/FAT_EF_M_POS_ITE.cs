using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Faturamento
{
    [Table("FAT_TB_M_POS_ITE")]
    public class FAT_EF_M_POS_ITE : NotifyingObject
    {
        [Display(Name = "Controle")]
        [Key, Column(Order = 1)]
        public int ID_POSVENDA { get; set; }

        [Display(Name = "Nº Fiscal")]
        [Key, Column(Order = 2)]
        public int ID_FISCAL
        {
            get { return GetValue(() => ID_FISCAL); }
            set { SetValue(() => ID_FISCAL, value); }
        }

        [Display(Name = "Reclamação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(800)]
        public string RECLAMACAO { get; set; }

        [Display(Name = "Solução")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(800)]
        public string SOLUCAO { get; set; }

        [Display(Name = "Avaliação")]
        /*
        0 - Bom
        1 - Regular
        2 - Ruim
        3 - Ótimo
        */
        public int AVALIACAO { get; set; }




    }
}
