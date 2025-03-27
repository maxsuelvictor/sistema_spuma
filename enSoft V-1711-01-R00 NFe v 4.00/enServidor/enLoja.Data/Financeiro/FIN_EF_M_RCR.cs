using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Validações;

namespace enLoja.Model.Financeiro
{
    //Tabela de Credito de Cliente
    [Table("FIN_TB_M_RCR")]
    public class FIN_EF_M_RCR : NotifyingObject
    {
        [Key]
        [Display(Name = "Nº Controle")]
        public int ID_CREDITO
        {
            get { return GetValue(() => ID_CREDITO); }
            set { SetValue(() => ID_CREDITO, value); }
        }

        [Display(Name = "Empresa")]
        public int ID_EMPRESA
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        [Display(Name = "Origem")]
        [Required(ErrorMessage = "Status deve ser informado!")]
        public CREDITO_ORIGEM_ENUM ORIGEM
        {
            get { return GetValue(() => ORIGEM); }
            set { SetValue(() => ORIGEM, value); }
        }

        [Display(Name = "Nº Documento")]
        [StringLength(20)]
        [Required(ErrorMessage = "Documento deve ser informado!(Numero-xx/nn)")]
        public string NUM_DOCUMENTO
        {
            get { return GetValue(() => NUM_DOCUMENTO); }
            set { SetValue(() => NUM_DOCUMENTO, value); }
        }

        [Display(Name = "Vlr.Crédito")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_CREDITO
        {
            get { return GetValue(() => VLR_CREDITO); }
            set { SetValue(() => VLR_CREDITO, value); }
        }

        [Display(Name = "Vlr.Saldo")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_SALDO
        {
            get { return GetValue(() => VLR_SALDO); }
            set { SetValue(() => VLR_SALDO, value); }
        }

        [Display(Name = "Data do Crédito")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data do Credito deve ser Informada!")]
        public DateTime DTA_CREDITO
        {
            get { return GetValue(() => DTA_CREDITO); }
            set { SetValue(() => DTA_CREDITO, value); }
        }
        
        [Display(Name = "Status do lançamento")]
        [Required(ErrorMessage = "Status deve ser informado!")]
        public STATUS_ENUM STATUS
        {
            get { return GetValue(() => STATUS); }
            set { SetValue(() => STATUS, value); }
        }

        [Display(Name = "Natureza da conta")]
        [Required(ErrorMessage = "Natureza deve ser informado.")]
        public DEB_CRE_ENUM DEB_CRE
        {
            get { return GetValue(() => DEB_CRE); }
            set { SetValue(() => DEB_CRE, value); }
        }

        [Display(Name = "Cliente")]
        [Required(ErrorMessage = "Cliente deve ser informado!")]
        public int ID_CLIENTE
        {
            get { return GetValue(() => ID_CLIENTE); }
            set { SetValue(() => ID_CLIENTE, value); }
        }        
        
        [Display(Name = "Histórico")]
        [StringLength(100)]
        [Required(ErrorMessage = "Histórico deve ser Informado!")]
        public string HISTORICO 
        {
            get { return GetValue(() => HISTORICO); }
            set { SetValue(() => HISTORICO, value); }
        }

        [Display(Name = "Forma Pagamento")]
        public int ID_FORMA_PAG 
        {
            get { return GetValue(() => ID_FORMA_PAG); }
            set { SetValue(() => ID_FORMA_PAG, value); }
        }

        [Display(Name = "Data Vencimento")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data de vencimento deve ser Informada!")]
        public DateTime DTA_VENCIMENTO
        {
            get { return GetValue(() => DTA_VENCIMENTO); }
            set { SetValue(() => DTA_VENCIMENTO, value); }
        }

        [Display(Name = "Conta Corrente")]
        public Nullable<int> PRE_CONTA
        {
            get { return GetValue(() => PRE_CONTA); }
            set { SetValue(() => PRE_CONTA, value); }
        }

        [Display(Name = "Nº do Cheque")]
        public Nullable<int> PRE_CHEQUE
        {
            get { return GetValue(() => PRE_CHEQUE); }
            set { SetValue(() => PRE_CHEQUE, value); }
        }

        [Display(Name = "Banco")]
        [StringLength(10)]
        public string PRE_BANCO
        {
            get { return GetValue(() => PRE_BANCO); }
            set { SetValue(() => PRE_BANCO, value); }
        }

        [Display(Name = "Emitente")]
        [StringLength(50)]
        public string PRE_EMITENTE
        {
            get { return GetValue(() => PRE_EMITENTE); }
            set { SetValue(() => PRE_EMITENTE, value); }
        }

        [Display(Name = "Agência")]
        [StringLength(10)]
        public string PRE_AGENCIA
        {
            get { return GetValue(() => PRE_AGENCIA); }
            set { SetValue(() => PRE_AGENCIA, value); }
        }
    }
}
