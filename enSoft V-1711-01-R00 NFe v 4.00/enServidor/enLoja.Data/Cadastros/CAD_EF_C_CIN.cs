using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_CIN")]
    public class CAD_EF_C_CIN : NotifyingObject
    {
        [Key]                
        public int ID_CLI_INFORMA
        {
            get { return GetValue(() => ID_CLI_INFORMA); }
            set { SetValue(() => ID_CLI_INFORMA, value); }
        }

        [Display(Name = "Informação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Descrição deve ser informada!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

    }
}
