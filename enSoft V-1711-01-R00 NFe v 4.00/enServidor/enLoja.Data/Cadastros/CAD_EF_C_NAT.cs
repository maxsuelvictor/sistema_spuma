using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_NAT")]
    public class CAD_EF_C_NAT : NotifyingObject
    {

        [Key]
        [Display(Name = "Classe")]
        [Column(TypeName = "CHAR")]
        [StringLength(4)]
        [Required(ErrorMessage = "Classe deve ser informado!")]
        public string CLASSE
        {
            get { return GetValue(() => CLASSE); }
            set { SetValue(() => CLASSE, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50, MinimumLength = 3, ErrorMessage = "Descrição tem que estar entre 3 e 100 caracteres")]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID
        {
            get { return GetValue(() => ID); }
            set { SetValue(() => ID, value); }
        }
       

    }
}
