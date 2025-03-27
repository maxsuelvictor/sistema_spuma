using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_ORS_TIT")]
    public class PCP_EF_M_ORS_TIT : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_ORS")]
        public int ID_ORS { get; set; }

        [Key, Column(Order = 1)]
        public int ID_ORS_TIT { get; set; }

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

        //FKs
        public virtual PCP_EF_M_ORS PCP_EF_M_ORS { get; set; }


    }
}
