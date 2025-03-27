using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;
using enLoja.Model.Cadastros;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_ACR")]
    public class PCP_EF_M_ACR : NotifyingObject
    {
        [Key]
        public int ID_ACR 
        {
            get { return GetValue(() => ID_ACR); }
            set { SetValue(() => ID_ACR, value); }
        }

        public int ID_EMPRESA
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        [Display(Name = "Data do Atendimento")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DATA_ATENDIMENTO 
        {
            get { return GetValue(() => DATA_ATENDIMENTO); }
            set { SetValue(() => DATA_ATENDIMENTO, value); }
        }

        [Display(Name = "Hora do Atendimento")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public System.DateTime HORA_ATENDIMENTO
        {
            get { return GetValue(() => HORA_ATENDIMENTO); }
            set { SetValue(() => HORA_ATENDIMENTO, value); }
        }

        [Display(Name = "Codigo do Documento")]
        //Este código irá receber o valores do campo COD_DOC_PCP_ACR, da tabela PCP_TB_C_CDI.
        [Column(TypeName = "VARCHAR")]
        [Required(ErrorMessage = "Codigo deve ser informado!")]
        [StringLength(20)]
        public string COD_DOCUMENTACAO
        {
            get { return GetValue(() => COD_DOCUMENTACAO); }
            set { SetValue(() => COD_DOCUMENTACAO, value); }
        }

        [Display(Name = "Codigo Revisão do Documento")]
        //Este código irá receber o valores do campo COD_DOC_REV_PCP_ACR, da tabela CNF_TB_C_CDI.
        [Column(TypeName = "VARCHAR")]
        [Required(ErrorMessage = "Codigo deve ser informado!")]
        [StringLength(5)]
        public string COD_DOCUMENTACAO_REV
        {
            get { return GetValue(() => COD_DOCUMENTACAO_REV); }
            set { SetValue(() => COD_DOCUMENTACAO_REV, value); }
        }


        [Display(Name = "Nº do Protocolo")]
        [Column(TypeName = "VARCHAR")]
        [Required(ErrorMessage = "Codigo deve ser informado!")]
        [StringLength(25)]
        public string NRO_PROTOCOLO
        {
            get { return GetValue(() => NRO_PROTOCOLO); }
            set { SetValue(() => NRO_PROTOCOLO, value); }
        }

        [Display(Name = "Tipo do CLiente")]
        //Neste campo é informado qual o tipo de cliente que ligou fazendo a reclamação.
        //0 - Distribuidor / Logista
        //1 - Consumidor
        //2 - Representante
        [Required(ErrorMessage = "Codigo deve ser informado!")]
        public PCP_TIPO_CLIENTE_ENUM TIPO_CLIENTE
        {
            get { return GetValue(() => TIPO_CLIENTE); }
            set { SetValue(() => TIPO_CLIENTE, value); }
        }

        [Display(Name = "Pessoa")]
        public PESSOA_ENUM PESSOA
        {
            get { return GetValue(() => PESSOA); }
            set { SetValue(() => PESSOA, value); }
        }

        [Display(Name = "Cliente")]
        //Este campo só é preenchido se o campo TIPO_CLIENTE for 0 - Distribuidor / Logista.
        public Nullable<int> ID_CLIENTE
        {
            get { return GetValue(() => ID_CLIENTE); }
            set { SetValue(() => ID_CLIENTE, value); }
        }

        [Display(Name = "Representante")]
        //Este campo só é preenchido se o campo TIPO_CLIENTE for 2 - Representante.
        public Nullable<int> ID_REPRESENTANTE
        {
            get { return GetValue(() => ID_REPRESENTANTE); }
            set { SetValue(() => ID_REPRESENTANTE, value); }
        }

        [Display(Name = "Nome do Consumidor")]
        [Column(TypeName = "VARCHAR")]
        [Required(ErrorMessage = "Campo deve ser informado!")]
        [StringLength(50)]
        public string NOME_CONSUMIDOR
        {
            get { return GetValue(() => NOME_CONSUMIDOR); }
            set { SetValue(() => NOME_CONSUMIDOR, value); }
        }

        [Display(Name = "CNPJ/CPF do COnsumidor")]
        [Column(TypeName = "VARCHAR")]
        [Required(ErrorMessage = "Campo deve ser informado!")]
        [StringLength(14)]
        public string CNPJ_CPF_CONSUMIDOR
        {
            get { return GetValue(() => CNPJ_CPF_CONSUMIDOR); }
            set { SetValue(() => CNPJ_CPF_CONSUMIDOR, value); }
        }


        [Display(Name = "Bairro")]
        [Column(TypeName = "VARCHAR")]
        [Required(ErrorMessage = "Bairro deve ser informado!")]
        [StringLength(40)]
        public string BAIRRO_CONSUMIDOR
        {
            get { return GetValue(() => BAIRRO_CONSUMIDOR); }
            set { SetValue(() => BAIRRO_CONSUMIDOR, value); }
        }

        [Display(Name = "Endereço")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Endereço deve ser informado!")]
        public string ENDERECO_CONSUMIDOR
        {
            get { return GetValue(() => BAIRRO_CONSUMIDOR); }
            set { SetValue(() => BAIRRO_CONSUMIDOR, value); }
        }

        [Display(Name = "CEP")]
        [Column(TypeName = "CHAR")]
        [StringLength(9)]
        [Required(ErrorMessage = "CEP deve ser informado!")]
        [RegularExpression(@"^\d{5}\-?\d{3}$", ErrorMessage = "CEP inválido.")]
        public string CEP_CONSUMIDOR
        {
            get { return GetValue(() => CEP_CONSUMIDOR); }
            set { SetValue(() => CEP_CONSUMIDOR, value); }
        }

        [Display(Name = "Telefone")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
        public string FONE_CONSUMIDOR
        {
            get { return GetValue(() => FONE_CONSUMIDOR); }
            set { SetValue(() => FONE_CONSUMIDOR, value); }
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

        [Display(Name = "Atendente")]
        [Required(ErrorMessage = "Atendente deve ser informado!")]
        [NotZero(ErrorMessage = "Atendente não deve ser 0 (zero)!")]
        [ExistVendedor]
        public int ID_ATENDENTE
        {
            get { return GetValue(() => ID_ATENDENTE); }
            set { SetValue(() => ID_ATENDENTE, value); }
        }

        [Display(Name = "Nº da Nota Fiscal")]
        [Required(ErrorMessage = "Atendente deve ser informado!")]
        public int NUMERO_NF
        {
            get { return GetValue(() => NUMERO_NF); }
            set { SetValue(() => NUMERO_NF, value); }
        }

        [Display(Name = "Obs.")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(200)]
        public string OBSERVACAO
        {
            get { return GetValue(() => OBSERVACAO); }
            set { SetValue(() => OBSERVACAO, value); }
        }

        [Display(Name = "Número")]
        [Column(TypeName = "CHAR")]
        [StringLength(10)]
        [Required(ErrorMessage = "Número deve ser informado!")]
        public string NRO_END_CONSUMIDOR
        {
            get { return GetValue(() => NRO_END_CONSUMIDOR); }
            set { SetValue(() => NRO_END_CONSUMIDOR, value); }
        }

        //FKs

        public virtual ICollection<PCP_EF_M_ACR_ITE> PCP_EF_M_ACR_ITE { get; set; }

        [ForeignKey("ID_CIDADE")]
        public virtual CAD_EF_C_CID CAD_EF_C_CID { get; set; }


    }
}
