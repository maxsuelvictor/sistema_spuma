using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using enLoja.Model.Cadastros;
using enLoja.Model.Validações;

namespace enLoja.Model.Faturamento
{
    [Table("FAT_TB_M_PED_TIT")]
    public class FAT_EF_M_PED_TIT : NotifyingObject
    {        
        [Key, Column(Order = 1)]
        [Display(Name = "Nº Pedido")]
        public int ID_PEDIDO 
        {
            get { return GetValue(() => ID_PEDIDO); }
            set { SetValue(() => ID_PEDIDO, value); }
        }

        [ForeignKey("ID_PEDIDO")]
        public virtual FAT_EF_M_PED FAT_EF_M_PED
        {
            get { return GetValue(() => FAT_EF_M_PED); }
            set
            {
                SetValue(() => FAT_EF_M_PED, value);
                if(VLR_TITULO == 0)
                {
                    VLR_TITULO = FAT_EF_M_PED.VLR_LIQUIDO - FAT_EF_M_PED.FAT_EF_M_PED_TIT.Sum(x => x.VLR_TITULO);
                    FAT_EF_M_PED.RaisePropertyChangedVLR_LIQUIDO();
                }
            }
        }

        [Key, Column(Order = 2)]
        [Display(Name = "Nº Titulo")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID_TITULO 
        {
            get { return GetValue(() => ID_TITULO); }
            set { SetValue(() => ID_TITULO, value); }
        }

        [Display(Name = "Forma Pagmto")]
        [Required(ErrorMessage = "Forma de pagamento deve ser informado!")]
        public int ID_FORMA_PAG
        {
            get { return GetValue(() => ID_FORMA_PAG); }
            set { SetValue(() => ID_FORMA_PAG, value); }
        }

        [ForeignKey("ID_FORMA_PAG")]        
        public virtual CAD_EF_C_CPG CAD_EF_C_CPG
        {
            get { return GetValue(() => CAD_EF_C_CPG); }
            set { SetValue(() => CAD_EF_C_CPG, value); }
        }
        
        [Display(Name = "Dias")]        
        public int DIAS
        {
            get
            { return GetValue(() => DIAS); }
            set
            {                                    
                SetValue(() => DIAS, value);
                if(FAT_EF_M_PED != null)
                {
                    if (FAT_EF_M_PED.DTA_PEDIDO.AddDays(DIAS) != DTA_VENCIMENTO)
                        DTA_VENCIMENTO = FAT_EF_M_PED.DTA_PEDIDO.AddDays(DIAS);
                }
            }
        }

        [Display(Name = "Data Vencimento")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data do vencimento deve ser Informada!")]
        [ValidaVencimentoTítulosPedidoAttribute]
        public System.DateTime DTA_VENCIMENTO 
        {
            get { return GetValue(() => DTA_VENCIMENTO); }
            set
            {
                SetValue(() => DTA_VENCIMENTO, value);
                if(FAT_EF_M_PED != null)
                    DIAS = (DTA_VENCIMENTO - FAT_EF_M_PED.DTA_PEDIDO).Days;
            }
        }


        [Display(Name = "Vlr.Titulo")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_TITULO 
        {
            get { return GetValue(() => VLR_TITULO); }
            set
            {
                SetValue(() => VLR_TITULO, value);
                if(FAT_EF_M_PED != null)
                    FAT_EF_M_PED.RaisePropertyChangedVLR_LIQUIDO();
            }
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
