using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Validações;

namespace enLoja.Model.Financeiro
{
    [Table("FIN_TB_M_RBX_GER")]
    public class FIN_EF_M_RBX_GER : NotifyingObject
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
        public int ID_CONTROLE
        {
            get { return GetValue(() => ID_CONTROLE); }
            set { SetValue(() => ID_CONTROLE, value); }
        }

        [Display(Name = "Vlr.Lançamento")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_PAGAMENTO
        {
            get { return GetValue(() => VLR_PAGAMENTO); }
            set { SetValue(() => VLR_PAGAMENTO, value); }
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


    }
}
