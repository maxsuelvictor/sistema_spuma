using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Validações;

namespace enLoja.Model.Financeiro
{
    [Table("FIN_TB_M_RBX")]
    public class FIN_EF_M_RBX : NotifyingObject
    {
        [Key]
        [Display(Name = "Nº Baixa")]
        public int ID_BAIXA
        {
            get { return GetValue(() => ID_BAIXA); }
            set { SetValue(() => ID_BAIXA, value); }
        }

        [ForeignKey("ID_BAIXA")]
        public virtual ICollection<FIN_EF_M_RBX_GER> FIN_EF_M_RBX_GER
        {
            get { return GetValue(() => FIN_EF_M_RBX_GER); }
            set { SetValue(() => FIN_EF_M_RBX_GER, value); }
        }

        [ForeignKey("ID_BAIXA")]
        public virtual ICollection<FIN_EF_M_RBX_TIT> FIN_EF_M_RBX_TIT
        {
            get { return GetValue(() => FIN_EF_M_RBX_TIT); }
            set { SetValue(() => FIN_EF_M_RBX_TIT, value); }
        }



        [Display(Name = "Empresa")]
        public int ID_EMPRESA
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        [Display(Name = "Data Baixa")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data da baixa deve ser Informada!")]
        public DateTime DTA_BAIXA 
        {
            get { return GetValue(() => DTA_BAIXA); }
            set { SetValue(() => DTA_BAIXA, value); }
        }  

        [Display(Name = "Vlr.Baixa")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_BAIXA 
        {
            get { return GetValue(() => VLR_BAIXA); }
            set { SetValue(() => VLR_BAIXA, value); }
        }

        [Display(Name = "Observação")]
        [StringLength(100)]
        [Required(ErrorMessage = "Observação deve ser Informado!")]
        public string OBSERVACAO 
        {
            get { return GetValue(() => OBSERVACAO); }
            set { SetValue(() => OBSERVACAO, value); }
        }

        [Display(Name = "Forma pagmto")]
        [Required(ErrorMessage = "Forma de pagamento deve ser informado!")]
        public int ID_FORMA_PAG 
        {
            get { return GetValue(() => ID_FORMA_PAG); }
            set { SetValue(() => ID_FORMA_PAG, value); }
        }

        [Display(Name = "Nº Abertura Caixa")]
        public int ID_ABERTURA 
        {
            get { return GetValue(() => ID_ABERTURA); }
            set { SetValue(() => ID_ABERTURA, value); }
        }

        [Display(Name = "Vlr.Crédito")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal VLR_CRED_UTILIZADO 
        {
            get { return GetValue(() => VLR_CRED_UTILIZADO); }
            set { SetValue(() => VLR_CRED_UTILIZADO, value); }
        }

        [Display(Name = "Cliente")]
        [Required(ErrorMessage = "Cliente deve ser informado!")]
        public int ID_CLIENTE
        {
            get { return GetValue(() => ID_CLIENTE); }
            set { SetValue(() => ID_CLIENTE, value); }
        }  
    }
}
