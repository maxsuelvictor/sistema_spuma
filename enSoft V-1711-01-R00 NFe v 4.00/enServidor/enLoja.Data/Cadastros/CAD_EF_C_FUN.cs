using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_FUN")]
    public class CAD_EF_C_FUN : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_FUNCIONARIO
        {
            get { return GetValue(() => ID_FUNCIONARIO); }
            set { SetValue(() => ID_FUNCIONARIO, value); }
        }

        [Display(Name = "Ativo")]
        public bool ATIVO
        {
            get { return GetValue(() => ATIVO); }
            set { SetValue(() => ATIVO, value); }
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

        [Display(Name = "Endereço")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Endereço deve ser informado!")]
        public string ENDERECO
        {
            get { return GetValue(() => ENDERECO); }
            set { SetValue(() => ENDERECO, value); }
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

        [Display(Name = "Número")]
        [Column(TypeName = "CHAR")]
        [StringLength(10)]
        [Required(ErrorMessage = "Número deve ser informado!")]
        public string NUMERO
        {
            get { return GetValue(() => NUMERO); }
            set { SetValue(() => NUMERO, value); }
        }

        [Display(Name = "Telefone Fixo")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
        public string TEL_FIXO
        {
            get { return GetValue(() => TEL_FIXO); }
            set { SetValue(() => TEL_FIXO, value); }
        }

        [Display(Name = "Telefone Móvel")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
        public string TEL_MOVEL
        {
            get { return GetValue(() => TEL_MOVEL); }
            set { SetValue(() => TEL_MOVEL, value); }
        }

        [Display(Name = "CPF")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(11)]
        [ValidCpfCnpj(true, ErrorMessage = "CPF inválido!")]
        public string DOC_CPF
        {
            get { return GetValue(() => DOC_CPF); }
            set { SetValue(() => DOC_CPF, value); }
        }

        [Display(Name = "Identidade")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(11)]
        public string DOC_IDENTIDADE
        {
            get { return GetValue(() => DOC_IDENTIDADE); }
            set { SetValue(() => DOC_IDENTIDADE, value); }
        }

        [Display(Name = "Bairro")]
        [Column(TypeName = "VARCHAR")]
        [Required(ErrorMessage = "Bairro deve ser informado!")]
        [StringLength(40)]
        public string BAIRRO
        {
            get { return GetValue(() => BAIRRO); }
            set { SetValue(() => BAIRRO, value); }
        }

        [Display(Name = "Cidade")]
        [Column(TypeName = "CHAR")]
        [StringLength(10)]
        public string ID_CIDADE
        {
            get { return GetValue(() => ID_CIDADE); }
            set { SetValue(() => ID_CIDADE, value); }
        }

        [Display(Name = "Estado")]
        [Column(TypeName = "CHAR")]
        [StringLength(2)]
        public string ESTADO
        {
            get { return GetValue(() => ESTADO); }
            set { SetValue(() => ESTADO, value); }
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

        public byte[] FOTO
        {
            get { return GetValue(() => FOTO); }
            set { SetValue(() => FOTO, value); }
        }

        [Display(Name = "Sexo")]
        public SEXO_ENUM SEXO
        {
            get { return GetValue(() => SEXO); }
            set { SetValue(() => SEXO, value); }
        }

        [Display(Name = "Aniversário")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data de Nascimento deve ser Informada!")]
        public DateTime DTA_NASCIMENTO
        {
            get { return GetValue(() => DTA_NASCIMENTO); }
            set { SetValue(() => DTA_NASCIMENTO, value); }
        }

        [Display(Name = "Data Cadastro")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DTA_CADASTRO
        {
            get { return GetValue(() => DTA_CADASTRO); }
            set { SetValue(() => DTA_CADASTRO, value); }
        }

        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        public string LOGIN 
        {
            get { return GetValue(() => LOGIN ); }
            set { SetValue(() => LOGIN , value); }
        }

        [Column(TypeName = "VARCHAR")]
        [StringLength(100)]
        public string SENHA
        {
            get { return GetValue(() => SENHA); }
            set { SetValue(() => SENHA, value); }
        }

        [Display(Name = "Data Expiração")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DTA_SENHA_EXPIRA
        {
            get { return GetValue(() => DTA_SENHA_EXPIRA); }
            set { SetValue(() => DTA_SENHA_EXPIRA, value); }
        }

        [Display(Name = "Perfil de Segurança")]
        public int ID_PERFIL_SEG
        {
            get { return GetValue(() => ID_PERFIL_SEG); }
            set { SetValue(() => ID_PERFIL_SEG, value); }
        }

        [Display(Name = "Altera limite do cliente")]
        public bool SEG_ALT_LIM_CLI 
        {
            get { return GetValue(() => SEG_ALT_LIM_CLI); }
            set { SetValue(() => SEG_ALT_LIM_CLI, value); }
        }

        [Display(Name = "Altera Situação do cliente")]
        public bool SEG_ALT_SIT_CLI 
        {
            get { return GetValue(() => SEG_ALT_SIT_CLI); }
            set { SetValue(() => SEG_ALT_SIT_CLI, value); }
        }

        [Display(Name = "Altera preço do produto")]
        public bool SEG_ALT_PRE_PRO         
        {
            get { return GetValue(() => SEG_ALT_PRE_PRO); }
            set { SetValue(() => SEG_ALT_PRE_PRO, value); }
        }

        [Display(Name = "Altera habilita o botão de exclusão do sistema")]
        public bool SEG_HAB_BOT_EXC
        {
            get { return GetValue(() => SEG_HAB_BOT_EXC); }
            set { SetValue(() => SEG_HAB_BOT_EXC, value); }
        }

        [Display(Name = "Cargo do Funcionario")]
        public int ID_CARGO 
        {
            get { return GetValue(() => ID_CARGO); }
            set { SetValue(() => ID_CARGO, value); }
        }


        //FKs

        [ForeignKey("ID_CIDADE")]
        public virtual CAD_EF_C_CID CAD_EF_C_CID { get; set; }

        [ForeignKey("ID_PERFIL_SEG")]
        public virtual CAD_EF_C_PES CAD_EF_C_PES { get; set; }


    }
}
