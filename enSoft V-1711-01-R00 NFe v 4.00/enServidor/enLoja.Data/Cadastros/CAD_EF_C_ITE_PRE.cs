using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_ITE_PRE")]
    public class CAD_EF_C_ITE_PRE : NotifyingObject
    {

        [Key, Column(Order = 1)]
        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }

        [Key, Column(Order = 2)]
        public int ID_PERFIL_CLI
        {
            get { return GetValue(() => ID_PERFIL_CLI); }
            set { SetValue(() => ID_PERFIL_CLI, value); }
        }

        [Display(Name = "Preço Base")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]  
        public decimal PRECO_BASE
        {
            get { return GetValue(() => PRECO_BASE); }
            set { SetValue(() => PRECO_BASE, value); }
        }

        [Display(Name = "Preço de Fábrica")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        public decimal PRE_FABRICA
        {
            get { return GetValue(() => PRE_FABRICA); }
            set { SetValue(() => PRE_FABRICA, value); }
        }

        public System.DateTime DTA_PRECO
        {
            get { return GetValue(() => DTA_PRECO); }
            set { SetValue(() => DTA_PRECO, value); }
        }


        //FKs
        [ForeignKey("ID_ITEM")]
        public virtual CAD_EF_C_ITE CAD_EF_C_ITE
        {
            get { return GetValue(() => CAD_EF_C_ITE); }
            set { SetValue(() => CAD_EF_C_ITE, value); }
        }

        [ForeignKey("ID_PERFIL_CLI")]
        public virtual CAD_EF_C_PEC CAD_EF_C_PEC { get; set; }


    }
}
