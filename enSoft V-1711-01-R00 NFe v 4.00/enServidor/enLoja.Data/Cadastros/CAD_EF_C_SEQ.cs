using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_SEQ")]
    public class CAD_EF_C_SEQ : NotifyingObject
    {
        [Key]
        [Display(Name = "Tabela")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(20)]
        [Required(ErrorMessage = "Tabela deve ser informado!")]
        public string ID_TABELA { get; set; }

        [Display(Name = "Sequencia")]
        [Required(ErrorMessage = "Sequencia deve ser informado!")]
        public int SEQUENCIA { get; set; }
    }
}
