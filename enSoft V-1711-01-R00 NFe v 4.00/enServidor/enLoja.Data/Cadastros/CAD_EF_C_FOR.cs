using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_FOR")]
    public class CAD_EF_C_FOR : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_FORNECEDOR
        {
            get { return GetValue(() => ID_FORNECEDOR); }
            set { SetValue(() => ID_FORNECEDOR, value); }
        }


        [Display(Name = "Grupo de Foirnecedor")]
        public int ID_GFO
        {
            get { return GetValue(() => ID_GFO); }
            set { SetValue(() => ID_GFO, value); }
        }


        [Display(Name = "Razão Social")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Razão social deve ser informado.!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [Display(Name = "Nome Fantasia")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Nome Fantasia deve ser informado.!")]
        public string FANTASIA
        {
            get { return GetValue(() => FANTASIA); }
            set { SetValue(() => FANTASIA, value); }
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

        [Display(Name = "Complemento")]
        [StringLength(30)]
        [Column(TypeName = "VARCHAR")]
        public string END_COMPLEMENTO
        {
            get { return GetValue(() => END_COMPLEMENTO); }
            set { SetValue(() => END_COMPLEMENTO, value); }
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
        [Column(TypeName = "VARCHAR")]
        [StringLength(10)]
        [Required(ErrorMessage = "Número deve ser informado!")]
        public string NUMERO
        {
            get { return GetValue(() => NUMERO); }
            set { SetValue(() => NUMERO, value); }
        }

        [Display(Name = "Caixa Postal")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(10)]
        public string CP
        {
            get { return GetValue(() => CP); }
            set { SetValue(() => CP, value); }
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

        [Display(Name = "FAX")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
        public string FAX
        {
            get { return GetValue(() => FAX); }
            set { SetValue(() => FAX, value); }
        }

        [Display(Name = "CNPJ")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
        [ValidCpfCnpj(false, ErrorMessage = "CNPJ inválido!")]
        [UniqueCnpj(ErrorMessage = "CNPJ já cadastrado para outro cliente")]
        public string DOC_CNPJ
        {
            get { return GetValue(() => DOC_CNPJ); }
            set { SetValue(() => DOC_CNPJ, value); }
        }

        [Display(Name = "CPF")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(11)]
        [ValidCpfCnpj(true, ErrorMessage = "CPF inválido!")]
        [UniqueCpf(ErrorMessage = "CPF já cadastrado para outro cliente")]
        public string DOC_CPF
        {
            get { return GetValue(() => DOC_CPF); }
            set { SetValue(() => DOC_CPF, value); }
        }

        [Display(Name = "Insc. Estadual")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(20)]
        public string DOC_IE
        {
            get { return GetValue(() => DOC_IE); }
            set { SetValue(() => DOC_IE, value); }
        }

        [Display(Name = "Insc. Municipal")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(20)]
        public string DOC_IM
        {
            get { return GetValue(() => DOC_IM); }
            set { SetValue(() => DOC_IM, value); }
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
        [Required(ErrorMessage = "Código deve ser informado!")]
        [ValidIdCidade(ErrorMessage = "Código da cidade deve estar entre 7 a 10 caracteres!")]
        public string ID_CIDADE
        {
            get { return GetValue(() => ID_CIDADE); }
            set { SetValue(() => ID_CIDADE, value); }
        }

        [Display(Name = "Ativo")]
        public bool ATIVO
        {
            get { return GetValue(() => ATIVO); }
            set { SetValue(() => ATIVO, value); }
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

        [Display(Name = "Limite")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal LIM_VALOR
        {
            get { return GetValue(() => LIM_VALOR); }
            set { SetValue(() => LIM_VALOR, value); }
        }

        [Display(Name = "Fundação")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data de fundação deve ser Informada!")]
        public DateTime DTA_FUNDACAO
        {
            get { return GetValue(() => DTA_FUNDACAO); }
            set { SetValue(() => DTA_FUNDACAO, value); }
        }

        [Display(Name = "Data Cadastro")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DTA_CADASTRO
        {
            get { return GetValue(() => DTA_CADASTRO); }
            set { SetValue(() => DTA_CADASTRO, value); }
        }

        [Display(Name = "Senha Cotação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30, MinimumLength = 3, ErrorMessage = "Senha tem que estar entre 3 e 30 caracteres")]
        public string SENHA_COTACAO
        {
            get { return GetValue(() => SENHA_COTACAO); }
            set { SetValue(() => SENHA_COTACAO, value); }
        }

        [Display(Name = "Conta Corrente")]
        public Nullable<int> FIN_CONTA 
        {
            get { return GetValue(() => FIN_CONTA); }
            set { SetValue(() => FIN_CONTA, value); }
        }

        [Display(Name = "Agencia")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(10)]
        public string FIN_AGENCIA
        {
            get { return GetValue(() => FIN_AGENCIA); }
            set { SetValue(() => FIN_AGENCIA, value); }
        }


        [Display(Name = "Banco")]
        public Nullable<int> FIN_BANCO 
        {
            get { return GetValue(() => FIN_BANCO); }
            set { SetValue(() => FIN_BANCO, value); }
        }

        [Display(Name = "Favorecido")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        public string FIN_FAVOR 
        {
            get { return GetValue(() => FIN_FAVOR); }
            set { SetValue(() => FIN_FAVOR, value); }
        }


        [Display(Name = "Norma Aplicavel")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(60)]
        public string METODO1_NORMA_APLICAVEL
        {
            get { return GetValue(() => METODO1_NORMA_APLICAVEL); }
            set { SetValue(() => METODO1_NORMA_APLICAVEL, value); }
        }

        [Display(Name = "Data Validade")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> METODO1_DATA_VALIDADE
        {
            get { return GetValue(() => METODO1_DATA_VALIDADE); }
            set { SetValue(() => METODO1_DATA_VALIDADE, value); }
        }

        [Display(Name = "Data Recebimento")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> METODO2_DATA_RECEBIMENTO
        {
            get { return GetValue(() => METODO2_DATA_RECEBIMENTO); }
            set { SetValue(() => METODO2_DATA_RECEBIMENTO, value); }
        }

        [Display(Name = "Situação")]
        public Nullable<int> METODO2_SITUACAO 
        {
            get { return GetValue(() => METODO2_SITUACAO); }
            set { SetValue(() => METODO2_SITUACAO, value); }
        }

        [Display(Name = "Qualificação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        public string METODO2_PROC_QUALIFICACAO
        {
            get { return GetValue(() => METODO2_PROC_QUALIFICACAO); }
            set { SetValue(() => METODO2_PROC_QUALIFICACAO, value); }
        }

        [Display(Name = "Medtodo")]
        public Nullable<int> METODO3_METODO 
        {
            get { return GetValue(() => METODO3_METODO); }
            set { SetValue(() => METODO3_METODO, value); }
        }

        [Display(Name = "Data Metodo")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<System.DateTime> METODO3_DATA 
        {
            get { return GetValue(() => METODO3_DATA); }
            set { SetValue(() => METODO3_DATA, value); }
        }

        [Display(Name = "Numero NF")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        public string METODO3_NUMERO_NF 
        {
            get { return GetValue(() => METODO3_NUMERO_NF); }
            set { SetValue(() => METODO3_NUMERO_NF, value); }
        }

        [Display(Name = "É uma transportadora")]   
        public bool TRANSPORTADORA 
        {
            get { return GetValue(() => TRANSPORTADORA); }
            set { SetValue(() => TRANSPORTADORA, value); }
        }

        //FKs

        [ForeignKey("ID_FORNECEDOR")]
        public virtual ICollection<CAD_EF_C_FOR_REP> CAD_EF_C_FOR_REP
        {
            get { return GetValue(() => CAD_EF_C_FOR_REP); }
            set { SetValue(() => CAD_EF_C_FOR_REP, value); }
        }   

        [ForeignKey("ID_CIDADE")]
        public virtual CAD_EF_C_CID CAD_EF_C_CID { get; set; }

    }
}
