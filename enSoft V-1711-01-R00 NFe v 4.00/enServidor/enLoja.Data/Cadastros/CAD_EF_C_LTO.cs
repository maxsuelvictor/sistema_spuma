using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Valida��es;

namespace enLoja.Model.Cadastros
{

    [Table("CAD_TB_C_LTO")]
    public class CAD_EF_C_LTO : NotifyingObject
    {
        [Key]
        [Display(Name = "C�digo")]
        public int ID_LOCAL_TITULO
        {
            get { return GetValue(() => ID_LOCAL_TITULO); }
            set { SetValue(() => ID_LOCAL_TITULO, value); }
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
