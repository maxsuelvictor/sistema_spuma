using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{    
    [Table("CAD_TB_C_CID")]    
    public class CAD_EF_C_CID : NotifyingObject
    {        
        [Key]
        [Display(Name = "Código")]
        [Column(TypeName = "CHAR")]
        [StringLength(10)]
        [Required(ErrorMessage = "Código deve ser informado!")]     
        [ValidIdCidade(ErrorMessage = "Código da cidade deve estar entre 7 a 10 caracteres!")]
        [UniqueCidade(ErrorMessage = "Cidade já cadastrada!")]
        public string ID_CIDADE
        {
            get { return GetValue(() => ID_CIDADE); }
            set { SetValue(() => ID_CIDADE, value); }
        }

        [Display(Name = "Nome")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(60)]
        [Required(ErrorMessage = "Nome da cidade deve ser informado!")]
        public string NOME
        {
            get { return GetValue(() => NOME); }
            set { SetValue(() => NOME, value); }
        }

        [Display(Name = "UF")]
        [Column(TypeName = "CHAR")]
        [StringLength(2, ErrorMessage = "Código do Estado deve ter apenas 2 caracteres!")]
        [Required(ErrorMessage = "Estado deve ser informado!")]        
        public string UF
        {
            get { return GetValue(() => UF); }
            set { SetValue(() => UF, value); }
        }

        [Display(Name = "CEP")]
        [Column(TypeName = "CHAR")]
        [StringLength(9)]
        [Required(ErrorMessage = "CEP deve ser informado!")]
        [RegularExpression(@"^\d{5}\-?\d{3}$", ErrorMessage = "CEP inválido.")]
        public string CEP
        {
            get { return GetValue(() => CEP); }
            set { SetValue(() => CEP, value); }
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID
        {
            get { return GetValue(() => ID); }
            set { SetValue(() => ID, value); }
        }

    }
}
