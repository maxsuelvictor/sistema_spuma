using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Valida��es;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_CCU")]
    public class CAD_EF_C_CCU : NotifyingObject
    {
        [Key]
        [Display(Name = "C�digo")]
        public int ID_CCUSTO 
        {
            get { return GetValue(() => ID_CCUSTO); }
            set { SetValue(() => ID_CCUSTO, value); }
        }

        [Display(Name = "Descri��o")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        [Required(ErrorMessage = "Descri��o deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

    }
}
