using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Validações;

namespace enLoja.Model.Financeiro
{
    [Table("FIN_TB_M_REC")]  //Contas a Receber - Lançamento
    public class FIN_EF_M_REC : NotifyingObject
    {

        [Key]
        [Display(Name = "Nº Titulo")]
        public int ID_TITULO 
        {
            get { return GetValue(() => ID_TITULO); }
            set { SetValue(() => ID_TITULO, value); }
        }

        [ForeignKey("ID_TITULO")]
        public virtual ICollection<FIN_EF_M_REC_PAG> FIN_EF_M_REC_PAG
        {
            get { return GetValue(() => FIN_EF_M_REC_PAG); }
            set { SetValue(() => FIN_EF_M_REC_PAG, value); }
        }

        [Display(Name = "Empresa")]
        public int ID_EMPRESA 
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        [Display(Name = "Cliente")]
        [Required(ErrorMessage = "Cliente deve ser informado!")]
        public int ID_CLIENTE
        {
            get { return GetValue(() => ID_CLIENTE); }
            set { SetValue(() => ID_CLIENTE, value); }
        }


        [Display(Name = "Parcela")]
        [StringLength(20)]
        [Required(ErrorMessage = "Parcela deve ser informado!(Numero-xx/nn)")]  
        public string NUM_PARCELA 
        {
            get { return GetValue(() => NUM_PARCELA); }
            set { SetValue(() => NUM_PARCELA, value); }
        }

        [Display(Name = "Data Emissão")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data de emissão deve ser Informada!")]
        public DateTime DTA_EMISSAO 
        {
            get { return GetValue(() => DTA_EMISSAO); }
            set { SetValue(() => DTA_EMISSAO, value); }
        }

        [Display(Name = "Histórico")]
        [StringLength(100)]
        [Required(ErrorMessage = "Histórico deve ser Informado!")]
        public string HISTORICO 
        {
            get { return GetValue(() => HISTORICO); }
            set { SetValue(() => HISTORICO, value); }
        }

        [Display(Name = "Vlr.Parcela")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_PARCELA 
        {
            get { return GetValue(() => VLR_PARCELA); }
            set { SetValue(() => VLR_PARCELA, value); }
        }

        [Display(Name = "Vlr.Original")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_ORIGINAL 
        {
            get { return GetValue(() => VLR_ORIGINAL); }
            set { SetValue(() => VLR_ORIGINAL, value); }
        }

        [Display(Name = "Data Vencimento")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data de vencimento deve ser Informada!")]
        public DateTime DTA_VENCIMENTO 
        {
            get { return GetValue(() => DTA_VENCIMENTO); }
            set { SetValue(() => DTA_VENCIMENTO, value); }
        }

        [Display(Name = "Data Original")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data de original deve ser Informada!")]
        public DateTime DTA_ORIGINAL 
        {
            get { return GetValue(() => DTA_ORIGINAL); }
            set { SetValue(() => DTA_ORIGINAL, value); }
        }

        [Display(Name = "Vlr.Saldo")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_SALDO 
        {
            get { return GetValue(() => VLR_SALDO); }
            set { SetValue(() => VLR_SALDO, value); }
        }

        public int ID_FISCAL 
        {
            get { return GetValue(() => ID_FISCAL); }
            set { SetValue(() => ID_FISCAL, value); }
        }

        [Display(Name = "Origem do lançamento")]
        [Required(ErrorMessage = "Origem deve ser informado!")]
        public ORIGEM_ENUM ORIGEM
        {
            get { return GetValue(() => ORIGEM); }
            set { SetValue(() => ORIGEM, value); }
        }


        [Display(Name = "Forma pagmto")]
        [Required(ErrorMessage = "Forma de pagamento deve ser informado!")]
        public int ID_FORMA_PAG 
        {
            get { return GetValue(() => ID_FORMA_PAG); }
            set { SetValue(() => ID_FORMA_PAG, value); }
        }

        [Display(Name = "Conta Corrente")]
        public int PRE_CONTA 
        {
            get { return GetValue(() => PRE_CONTA); }
            set { SetValue(() => PRE_CONTA, value); }
        }
        
        [Display(Name = "Nº do Cheque")]
        public int PRE_CHEQUE 
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

        [Display(Name = "Tipo Lançamento")]
        public int TIPO_LANCAMENTO 
        {
            get { return GetValue(() => TIPO_LANCAMENTO); }
            set { SetValue(() => TIPO_LANCAMENTO, value); }
        }

        [Display(Name = "Local do Titulo")]
        [Required(ErrorMessage = "Local do titulo deve ser informado!")]
        public int ID_LOCAL_TITULO 
        {
            get { return GetValue(() => ID_LOCAL_TITULO); }
            set { SetValue(() => ID_LOCAL_TITULO, value); }
        }

        [Display(Name = "Plano de Contas")]
        [Required(ErrorMessage = "Plano de contas deve ser informado!")]
        [StringLength(11)]
        public string ID_PLANO 
        {
            get { return GetValue(() => ID_PLANO); }
            set { SetValue(() => ID_PLANO, value); }
        }   
    }
}
