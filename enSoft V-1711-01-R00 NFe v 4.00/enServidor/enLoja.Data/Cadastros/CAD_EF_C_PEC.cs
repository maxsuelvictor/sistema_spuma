using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Valida��es;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_PEC")]
    public class CAD_EF_C_PEC : NotifyingObject
    {
        [Key]
        [Display(Name = "C�digo")]
        public int ID_PERFIL_CLI
        {
            get { return GetValue(() => ID_PERFIL_CLI); }
            set { SetValue(() => ID_PERFIL_CLI, value); }
        }

        [Display(Name = "Descri��o")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Descri��o deve ser informado!")]
        public string DESCRICAO 
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [Display(Name = "% Desc.Concedido")]
        public double PER_DESCONTO
        {
            get { return GetValue(() => PER_DESCONTO); }
            set { SetValue(() => PER_DESCONTO, value); }
        }



    }
}
