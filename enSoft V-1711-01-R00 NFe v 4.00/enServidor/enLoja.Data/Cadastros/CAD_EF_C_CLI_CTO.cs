using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_CLI_CTO")]
    public class CAD_EF_C_CLI_CTO : NotifyingObject
    {
        [Key, Column(Order = 1)]
        public int ID_CLIENTE
        {
            get { return GetValue(() => ID_CLIENTE); }
            set { SetValue(() => ID_CLIENTE, value); }
        }

        [Key, Column(Order = 2)]
        [NotZero(ErrorMessage = "Tipo de Informação deve ser selecionado!")]
        public int ID_CONTATO
        {
            get { return GetValue(() => ID_CONTATO); }
            set { SetValue(() => ID_CONTATO, value); }
        }

        [Display(Name = "Nome")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Nome deve ser informado!")]  
        public string NOME
        {
            get { return GetValue(() => NOME); }
            set { SetValue(() => NOME, value); }
        }

        [Display(Name = "Telefone")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
        public string TELEFONE
        {
            get { return GetValue(() => TELEFONE); }
            set { SetValue(() => TELEFONE, value); }
        }

        [Display(Name = "Email")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(60)]
        [RegularExpression(@"[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}", ErrorMessage = "Entre um e-mail válido.")]
        public string EMAIL
        {
            get { return GetValue(() => EMAIL); }
            set { SetValue(() => EMAIL, value); }
        }

        [Display(Name = "Aniversário")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data de Nascimento deve ser Informada!")]
        [ValidaNascimento(ErrorMessage = "Data de Nascimento inválida!")]
        public DateTime DTA_NASCIMENTO
        {
            get { return GetValue(() => DTA_NASCIMENTO); }
            set { SetValue(() => DTA_NASCIMENTO, value); }
        }


        //FKs
        [ForeignKey("ID_CLIENTE")]
        public virtual CAD_EF_C_CLI CAD_EF_C_CLI
        {
            get { return GetValue(() => CAD_EF_C_CLI); }
            set { SetValue(() => CAD_EF_C_CLI, value); }
        }


    }
}
