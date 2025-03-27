using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Cadastros;

namespace enLoja.Model.Compras
{
    [Table("CMP_TB_M_PED_ITE")]
    public class CMP_EF_M_PED_ITE : NotifyingObject
    {
        [Key, Column(Order = 1)]
        public int ID_PEDIDO 
        {
            get { return GetValue(() => ID_PEDIDO); }
            set { SetValue(() => ID_PEDIDO, value); }
        }

        [Key, Column(Order = 2)]
        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }


        [Display(Name = "Qtde")]
        [NotZero(ErrorMessage = "Quantidade não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Quantidade deve ser informado!")]
        public double QTDE 
        {
            get { return GetValue(() => QTDE); }
            set { SetValue(() => QTDE, value); }
        }

        [Display(Name = "Vlr.Unitário")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_UNITARIO 
        {
            get { return GetValue(() => VLR_UNITARIO); }
            set { SetValue(() => VLR_UNITARIO, value); }
        }

        [Display(Name = "% Desconto")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        [Range(0, 100, ErrorMessage = "Percentual deve ser entre 0 e 100%!")]
        public double PER_DESCONTO 
        {
            get { return GetValue(() => PER_DESCONTO); }
            set { SetValue(() => PER_DESCONTO, value); }
        }

        [Display(Name = "Vlr.Desconto")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_DESCONTO 
        {
            get { return GetValue(() => VLR_DESCONTO); }
            set { SetValue(() => VLR_DESCONTO, value); }
        }

        [Display(Name = "% IPI")]
        [Range(0, 100, ErrorMessage = "Percentual deve ser entre 0 e 100%!")]
        public Nullable<double> PER_IPI 
        {
            get { return GetValue(() => PER_IPI); }
            set { SetValue(() => PER_IPI, value); }
        }

        [Display(Name = "Vlr.IPI")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal VLR_IPI 
        {
            get { return GetValue(() => VLR_IPI); }
            set { SetValue(() => VLR_IPI, value); }
        }

        [Display(Name = "Vlr.Bruto")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_BRUTO 
        {
            get { return GetValue(() => VLR_BRUTO); }
            set { SetValue(() => VLR_BRUTO, value); }
        }

        [Display(Name = "Vlr.Liquido")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_LIQUIDO 
        {
            get { return GetValue(() => VLR_LIQUIDO); }
            set { SetValue(() => VLR_LIQUIDO, value); }
        }

        [Display(Name = "Quantidade Baixada na entrada")]
        public Nullable<double> QTDE_BAIXADA 
        {
            get { return GetValue(() => QTDE_BAIXADA); }
            set { SetValue(() => QTDE_BAIXADA, value); }
        }

        [Display(Name = "Status da entrada")]
        public int ENTRE_STATUS 
        {
            get { return GetValue(() => ENTRE_STATUS); }
            set { SetValue(() => ENTRE_STATUS, value); }
        }

        [Display(Name = "Prazo medio na entrada")]
        public Nullable<int> ENTRE_PRAZO 
        {
            get { return GetValue(() => ENTRE_PRAZO); }
            set { SetValue(() => ENTRE_PRAZO, value); }
        }

        [Display(Name = "% Frete")]
        [Range(0, 100, ErrorMessage = "Percentual deve ser entre 0 e 100%!")]
        public double PER_FRETE 
        {
            get { return GetValue(() => PER_FRETE); }
            set { SetValue(() => PER_FRETE, value); }
        }

        [Display(Name = "Vlr.Frete")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal VLR_FRETE
        {
            get { return GetValue(() => VLR_FRETE); }
            set { SetValue(() => VLR_FRETE, value); }
        }

        //FKs

        [ForeignKey("ID_PEDIDO")]
        public virtual CMP_EF_M_PED CMP_EF_M_PED
        {
            get { return GetValue(() => CMP_EF_M_PED); }
            set { SetValue(() => CMP_EF_M_PED, value); }
        }

    }
}
