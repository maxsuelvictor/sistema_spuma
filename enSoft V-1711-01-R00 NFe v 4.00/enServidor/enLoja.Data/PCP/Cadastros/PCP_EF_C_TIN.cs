using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{

    [Table("PCP_TB_C_TIN")]
    public class PCP_EF_C_TIN : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_TIN
        {
            get { return GetValue(() => ID_TIN); }
            set { SetValue(() => ID_TIN, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }
    }
}
