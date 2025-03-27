using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_CTC")]
    public class CAD_EF_C_CTC : NotifyingObject
    {
        [Key]
        [Display(Name = "Conta")]
        public int ID_CONTA
        {
            get { return GetValue(() => ID_CONTA); }
            set { SetValue(() => ID_CONTA, value); }
        }

        [Display(Name = "Banco")]
        [Required(ErrorMessage = "Banco deve ser informado!")]
        public int BANCO 
        {
            get { return GetValue(() => BANCO); }
            set { SetValue(() => BANCO, value); }
        }

        [Display(Name = "Agência")]
        [Column(TypeName = "CHAR"), StringLength(10)]
        [Required(ErrorMessage = "Agência deve ser informado!")]
        public string AGENCIA
        {
            get { return GetValue(() => AGENCIA); }
            set { SetValue(() => AGENCIA, value); }
        }

        [Display(Name = "Código do Cedente")]
        [Column(TypeName = "VARCHAR"), StringLength(20)]
        public string CEDENTE_COD 
        {
            get { return GetValue(() => CEDENTE_COD); }
            set { SetValue(() => CEDENTE_COD, value); }
        }

        [Display(Name = "Nome do Cedente")]
        [Column(TypeName = "VARCHAR"), StringLength(50)]
        public string CEDENTE_NOM 
        {
            get { return GetValue(() => CEDENTE_NOM); }
            set { SetValue(() => CEDENTE_NOM, value); }
        }

        [Display(Name = "e-mail do Cedente")]
        [Column(TypeName = "VARCHAR"), StringLength(60)]
        public string CEDENTE_MAIL
        {
            get { return GetValue(() => CEDENTE_MAIL); }
            set { SetValue(() => CEDENTE_MAIL, value); }
        }
       

    }
}
