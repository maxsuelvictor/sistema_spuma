using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_CNE")]
    public class CAD_EF_C_CNE : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        [Column(TypeName = "CHAR")]
        [StringLength(14)]
        [Required(ErrorMessage = "CNAE deve ser informado!")]
        [UniqueCNAE(ErrorMessage = "CNAE já cadastrado")]
        public string ID_CNAE
        {
            get { return GetValue(() => ID_CNAE); }
            set { SetValue(() => ID_CNAE, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR"), StringLength(300)]
        [Required(ErrorMessage = "Descrição deve ser informada!")]        
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID
        {
            get { return GetValue(() => ID); }
            set {SetValue(() => ID, value);}
        }
    }
}
