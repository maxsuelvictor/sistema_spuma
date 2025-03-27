using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_GFO")]
    public class CAD_EF_C_GFO : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_GFO
        {
            get { return GetValue(() => ID_GFO); }
            set { SetValue(() => ID_GFO, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

    }
}