using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_CFO")]
    public class CAD_EF_C_CFO : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        [Column(TypeName = "CHAR")]
        [StringLength(5)]
        [Required(ErrorMessage = "Código deve ser informado!")]
        [RegularExpression(@"^[0-9''-'\s]{1,40}$", ErrorMessage = "Só é permitido numeros.")]
        public string ID_CFO
        {
            get { return GetValue(() => ID_CFO); }
            set { SetValue(() => ID_CFO, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(100, MinimumLength = 3, ErrorMessage = "Descrição tem que estar entre 3 e 100 caracteres")]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [Display(Name = "Descrição Reduzida")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        public string DESC_REDUZIDA
        {
            get { return GetValue(() => DESC_REDUZIDA); }
            set { SetValue(() => DESC_REDUZIDA, value); }
        }

        [Display(Name = "Classe")]
        [Column(TypeName = "CHAR")]
        [StringLength(4)]
        [Required(ErrorMessage = "Classe deve ser informado!")]
        public string CLASSE
        {
            get { return GetValue(() => CLASSE); }
            set { SetValue(() => CLASSE, value); }
        }

        [Display(Name = "Tipo")]
        [Column(TypeName = "CHAR")]
        [StringLength(1)]
        [Required(ErrorMessage = "Tipo deve ser informado!")]
        public string TIPO
        {
            get { return GetValue(() => TIPO); }
            set { SetValue(() => TIPO, value); }
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID
        {
            get { return GetValue(() => ID); }
            set { SetValue(() => ID, value); }
        }

        //FKs

        [ForeignKey("CLASSE")]
        public virtual CAD_EF_C_NAT CAD_EF_C_NAT { get; set; }


    }
}
