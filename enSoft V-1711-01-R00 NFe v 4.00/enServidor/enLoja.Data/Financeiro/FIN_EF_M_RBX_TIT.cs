using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Validações;

namespace enLoja.Model.Financeiro
{
    [Table("FIN_TB_M_RBX_TIT")]
    public class FIN_EF_M_RBX_TIT : NotifyingObject
    {
        [Key, Column(Order = 1)]
        [Display(Name = "Nº Baixa")]
        public int ID_BAIXA 
        {
            get { return GetValue(() => ID_BAIXA); }
            set { SetValue(() => ID_BAIXA, value); }
        }

        [ForeignKey("ID_BAIXA")]
        public virtual FIN_EF_M_RBX FIN_EF_M_RBX
        {
            get { return GetValue(() => FIN_EF_M_RBX); }
            set { SetValue(() => FIN_EF_M_RBX, value); }
        }

        [Key, Column(Order = 2)]
        [Display(Name = "Nº Titulo")]
        public int ID_TITULO 
        {
            get { return GetValue(() => ID_TITULO); }
            set { SetValue(() => ID_TITULO, value); }
        }

        [Display(Name = "Vlr.Pagamento")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_PAGAMENTO 
        {
            get { return GetValue(() => VLR_PAGAMENTO); }
            set { SetValue(() => VLR_PAGAMENTO, value); }
        }

        [Display(Name = "Vlr.Juros")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal VLR_JUROS 
        {
            get { return GetValue(() => VLR_JUROS); }
            set { SetValue(() => VLR_JUROS, value); }
        }

        [Display(Name = "Vlr.Desconto")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal VLR_DESCONTO 
        {
            get { return GetValue(() => VLR_DESCONTO); }
            set { SetValue(() => VLR_DESCONTO, value); }
        }
        
        [Display(Name = "Vlr.Crédito")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal VLR_CRED_UTILIZADO
        {
            get { return GetValue(() => VLR_CRED_UTILIZADO); }
            set { SetValue(() => VLR_CRED_UTILIZADO, value); }
        }   

    }
}
