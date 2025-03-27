using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Helpers;
using enLoja.Model.Validações;
using enLoja.Model.PCP.Cadastros;


namespace enLoja.Model.Cadastros
{    
    [System.ComponentModel.DataAnnotations.Schema.Table("CAD_TB_C_CLI")]    
    public class CAD_EF_C_CLI : NotifyingObject
    {
        [NotMapped]
        public decimal LimiteMáximo { get; set; }        
     
        [Key]
        [Display(Name = "Código")]       
        public int ID_CLIENTE
        {
            get { return GetValue(() => ID_CLIENTE); }
            set { SetValue(() => ID_CLIENTE, value); }
        }

        [Display(Name = "Pessoa")]        
        public PESSOA_ENUM PESSOA
        {
            get { return GetValue(() => PESSOA); }
            set { SetValue(() => PESSOA, value); }
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

        [Display(Name = "Complemento")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
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
        [Column(TypeName = "CHAR")]
        [StringLength(10)]
        [Required(ErrorMessage = "Número deve ser informado!")]
        public string NUMERO
        {
            get { return GetValue(() => NUMERO); }
            set { SetValue(() => NUMERO, value); }
        }

        [Display(Name = "Caixa Postal")]
        [Column(TypeName = "CHAR")]
        [StringLength(10)]
        public string CP
        {
            get { return GetValue(() => CP); }
            set { SetValue(() => CP, value); }
        }

        [Display(Name = "Telefone")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
        public string TEL_FIXO
        {
            get { return GetValue(() => TEL_FIXO); }
            set { SetValue(() => TEL_FIXO, value); }
        }

        [Display(Name = "Celular")]
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

        [Display(Name = "CNPJ/CPF")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
//        [ValidCpfCnpj(false, ErrorMessage = "CNPJ inválido!")]
//        [UniqueCnpj(ErrorMessage = "CNPJ já cadastrado para outro cliente")]
        public string DOC_CNPJ_CPF
        {
            get { return GetValue(() => DOC_CNPJ_CPF); }
            set { SetValue(() => DOC_CNPJ_CPF, value); }
        }

        [Display(Name = "Insc. Estadual/Identidade")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(20)]
        public string DOC_IE_IDENTIDADE
        {
            get { return GetValue(() => DOC_IE_IDENTIDADE); }
            set { SetValue(() => DOC_IE_IDENTIDADE, value); }
        }

        [Display(Name = "Insc. Produtor")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(20)]
        public string DOC_IP
        {
            get { return GetValue(() => DOC_IP); }
            set { SetValue(() => DOC_IP, value); }
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
        [ExistCidade(ErrorMessage = "Cidade não cadastrada")]
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
        [LimiteMáximo]
        public decimal LIM_VALOR
        {
            get { return GetValue(() => LIM_VALOR); }
            set
            {
                SetValue(() => LIM_VALOR, value);
                if (value >= 0)
                    LIM_SALDO = LimiteCrédito.Calcular(ID_CLIENTE, value);
                OnPropertyChanged("LIM_SALDO");                                
            }
        }

        [Display(Name = "Saldo")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]               
        public decimal LIM_SALDO
        {
            get { return GetValue(() => LIM_SALDO); }
            set { SetValue(() => LIM_SALDO, value); }
        }

        [Display(Name = "Validade Limite")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime LIM_VALIDADE
        {
            get { return GetValue(() => LIM_VALIDADE); }
            set { SetValue(() => LIM_VALIDADE, value); }
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

        [Display(Name = "Situação")]
        public CLI_SITUACAO_ENUM SITUACAO
        {
            get { return GetValue(() => SITUACAO); }
            set { SetValue(() => SITUACAO, value); }
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

        [Display(Name = "Data Cadastro")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DTA_CADASTRO
        {
            get { return GetValue(() => DTA_CADASTRO); }
            set { SetValue(() => DTA_CADASTRO, value); }
        }

        [Display(Name = "Tipo Cliente")]
        public TIPO_CLIENTE_ENUM TIPO_CLIENTE
        {
            get { return GetValue(() => TIPO_CLIENTE); }
            set { SetValue(() => TIPO_CLIENTE, value); }
        }

        [Display(Name = "Endereço de Cobrança")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        public string COB_ENDERECO
        {
            get { return GetValue(() => COB_ENDERECO); }
            set { SetValue(() => COB_ENDERECO, value); }
        }

        [Display(Name = "Bairro")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(40)]
        public string COB_BAIRRO
        {
            get { return GetValue(() => COB_BAIRRO); }
            set { SetValue(() => COB_BAIRRO, value); }
        }

        [Display(Name = "Cidade")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(40)]
        public string COB_CIDADE
        {
            get { return GetValue(() => COB_CIDADE); }
            set { SetValue(() => COB_CIDADE, value); }
        }

        [Display(Name = "Estado")]
        [Column(TypeName = "CHAR")]
        [StringLength(2)]
        public string COB_ESTADO
        {
            get { return GetValue(() => COB_ESTADO); }
            set { SetValue(() => COB_ESTADO, value); }
        }

        [Display(Name = "CEP Cobrança")]
        [Column(TypeName = "CHAR")]
        [StringLength(8)]
        public string COB_CEP
        {
            get { return GetValue(() => COB_CEP); }
            set { SetValue(() => COB_CEP, value); }
        }

        [Display(Name = "Última Compra")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DTA_ULT_COMPRA
        {
            get { return GetValue(() => DTA_ULT_COMPRA); }
            set { SetValue(() => DTA_ULT_COMPRA, value); }
        }

        [Display(Name = "Primeira Compra")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DTA_PRI_COMPRA
        {
            get { return GetValue(() => DTA_PRI_COMPRA); }
            set { SetValue(() => DTA_PRI_COMPRA, value); }
        }

        [Display(Name = "Filiação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        public string FILIACAO
        {
            get { return GetValue(() => FILIACAO); }
            set { SetValue(() => FILIACAO, value); }
        }

        [Display(Name = "Suframa")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(20)]
        public string COD_SUFRANA
        {
            get { return GetValue(() => COD_SUFRANA); }
            set { SetValue(() => COD_SUFRANA, value); }
        }

        [Display(Name = "Pais")]
        [Column(TypeName = "CHAR")]
        [StringLength(5)]
        public string COD_PAIS
        {
            get { return GetValue(() => COD_PAIS); }
            set { SetValue(() => COD_PAIS, value); }
        }

        [Display(Name = "Perfil do Cliente")]
        public int ID_PERFIL_CLI
        {
            get { return GetValue(() => ID_PERFIL_CLI); }
            set { SetValue(() => ID_PERFIL_CLI, value); }
        }

        [Display(Name = "Rota")]
        public int ID_ROTA
        {
            get { return GetValue(() => ID_ROTA); }
            set { SetValue(() => ID_ROTA, value); }
        }

        //FKs

        [ForeignKey("ID_CLIENTE")]
        public virtual ICollection<CAD_EF_C_CLI_INF> CAD_EF_C_CLI_INF
        {
            get { return GetValue(() => CAD_EF_C_CLI_INF); }
            set { SetValue(() => CAD_EF_C_CLI_INF, value); }
        }

        [ForeignKey("ID_CLIENTE")]
        public virtual ICollection<CAD_EF_C_CLI_CTO> CAD_EF_C_CLI_CTO
        {
            get { return GetValue(() => CAD_EF_C_CLI_CTO); }
            set { SetValue(() => CAD_EF_C_CLI_CTO, value); }
        }

        [ForeignKey("ID_CLIENTE")]
        public virtual ICollection<CAD_EF_C_CLI_REC> CAD_EF_C_CLI_REC
        {
            get { return GetValue(() => CAD_EF_C_CLI_REC); }
            set { SetValue(() => CAD_EF_C_CLI_REC, value); }
        }

        [ForeignKey("ID_CLIENTE")]
        public virtual ICollection<CAD_EF_C_CLI_BCO> CAD_EF_C_CLI_BCO
        {
            get { return GetValue(() => CAD_EF_C_CLI_BCO); }
            set { SetValue(() => CAD_EF_C_CLI_BCO, value); }
        }

        [ForeignKey("ID_PERFIL_CLI")]
        public virtual CAD_EF_C_PEC CAD_EF_C_PEC { get; set; }

        [ForeignKey("ID_CIDADE")]
        public virtual CAD_EF_C_CID CAD_EF_C_CID { get; set; }

        [ForeignKey("ID_ROTA")]
        public virtual PCP_EF_C_ROT PCP_EF_C_ROT { get; set; }

    }    
}
