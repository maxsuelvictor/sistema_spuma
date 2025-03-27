using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Faturamento
{
    [Table("FAT_TB_M_NFE_TIT")]
    public class FAT_EF_M_NFE_TIT : NotifyingObject
    {

        [Key, Column(Order = 1)]
        [Display(Name = "Nº Fiscal")]
        public int ID_FISCAL
        {
            get { return GetValue(() => ID_FISCAL); }
            set { SetValue(() => ID_FISCAL, value); }
        }

        [ForeignKey("ID_FISCAL")]
        public virtual FAT_EF_M_NFE FAT_EF_M_NFE
        {
            get { return GetValue(() => FAT_EF_M_NFE); }
            set { SetValue(() => FAT_EF_M_NFE, value); }
        }

        [Display(Name = "Forma Pagmto")]
        [Required(ErrorMessage = "Forma de pagamento deve ser informado!")]
        public int ID_FORMA_PAG
        {
            get { return GetValue(() => ID_FORMA_PAG); }
            set { SetValue(() => ID_FORMA_PAG, value); }
        }

        [Display(Name = "Nº Parcela")]
        [Required(ErrorMessage = "Parcela deve ser informado!")]
        public string NUM_PARCELA 
        {
            get { return GetValue(() => NUM_PARCELA); }
            set { SetValue(() => NUM_PARCELA, value); }
        }

        [Display(Name = "Dias")]
        [Required(ErrorMessage = "Qtde de dias deve ser informado!")]
        public int DIAS
        {
            get { return GetValue(() => DIAS); }
            set { SetValue(() => DIAS, value); }
        }

        [Display(Name = "Data Vencimento")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data do vencimento deve ser Informada!")]
        public System.DateTime DTA_VENCIMENTO
        {
            get { return GetValue(() => DTA_VENCIMENTO); }
            set { SetValue(() => DTA_VENCIMENTO, value); }
        }

        [Display(Name = "Vlr.Titulo")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_TITULO
        {
            get { return GetValue(() => VLR_TITULO); }
            set { SetValue(() => VLR_TITULO, value); }
        }

        [Display(Name = "Plano de Contas")]
        [StringLength(11)]
        public string ID_PLANO
        {
            get { return GetValue(() => ID_PLANO); }
            set { SetValue(() => ID_PLANO, value); }
        }

        [Display(Name = "Centro de Custo")]
        [Required(ErrorMessage = "Centro de Custo deve ser informado!")]
        [NotZero(ErrorMessage = "Centro de Custo não deve ser 0 (zero)!")]
        public int ID_CCUSTO
        {
            get { return GetValue(() => ID_CCUSTO); }
            set { SetValue(() => ID_CCUSTO, value); }
        }


        [Display(Name = "Banco")]
        [Column(TypeName = "CHAR")]
        [StringLength(10)]
        public string CHE_BANCO { get; set; }

        [Display(Name = "Agência")]
        [Column(TypeName = "CHAR")]
        [StringLength(10)]
        public string CHE_AGENCIA { get; set; }

        [Display(Name = "Conta Corrente")]
        public int CHE_CONTA { get; set; }

        [Display(Name = "Numero do Cheque")]
        public int CHE_NUMERO { get; set; }

        [Display(Name = "Nome do Emitente")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        public string CHE_EMITENTE { get; set; }

        [Display(Name = "Nosso Numero")]
        public int BOL_NOSSO_NUMERO { get; set; }



    }
}
