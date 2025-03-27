using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_ITE_COM")]
    public class CAD_EF_C_ITE_COM : NotifyingObject
    {
        [Display(Name = "Código")]
        [Key, Column(Order = 1)]
        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }

        [Key, Column(Order = 2)]
        [Display(Name = "Matéria Prima")]
        public int ID_MATERIA_PRIMA
        {
            get { return GetValue(() => ID_MATERIA_PRIMA); }
            set { SetValue(() => ID_MATERIA_PRIMA, value); }
        }

        [Display(Name = "Qauntidade")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public double QTDE
        {
            get { return GetValue(() => QTDE); }
            set { SetValue(() => QTDE, value); }
        }

        //FKs

        [ForeignKey("ID_ITEM")]
        public virtual CAD_EF_C_ITE CAD_EF_C_ITE
        {
            get { return GetValue(() => CAD_EF_C_ITE); }
            set { SetValue(() => CAD_EF_C_ITE, value); }
        }
    }
}
