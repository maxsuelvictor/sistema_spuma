using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Cadastros
{
    /*
      PCP : Tabela de Disposição 
      Mariel : 09/10/2013
     */
    [Table("PCP_TB_C_DIS")]
    public class PCP_EF_C_DIS : NotifyingObject
    {        
        [Key]
        [Display(Name = "Código")]
        public int ID_DIS
        {
            get { return GetValue(() => ID_DIS); }
            set { SetValue(() => ID_DIS, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }
    }
}
