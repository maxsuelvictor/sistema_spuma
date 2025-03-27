using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_COR")]
    public class CAD_EF_C_COR : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_COR
        {
            get { return GetValue(() => ID_COR); }
            set { SetValue(() => ID_COR, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR"), StringLength(40)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }
    }
}
