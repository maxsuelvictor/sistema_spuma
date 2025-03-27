using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Cadastros;
using enLoja.Model.Enums;

namespace enLoja.Model.Faturamento
{
    //Notas que compoe o conhecimento de frete
    [Table("FAT_TB_M_NFE_NFF")]
    public class FAT_EF_M_NFE_NFF : NotifyingObject
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

        [Key, Column(Order = 2)]
        [Display(Name = "Fornecedor")]
        public int ID_FORNECEDOR
        {
            get { return GetValue(() => ID_FORNECEDOR); }
            set { SetValue(() => ID_FORNECEDOR, value); }
        }

        [Key, Column(Order = 3)]
        [Display(Name = "Nota do Frete")]
        public int NOTA_FRETE
        {
            get { return GetValue(() => NOTA_FRETE); }
            set { SetValue(() => NOTA_FRETE, value); }
        }

        [Display(Name = "Vlr.Nota")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_NOTA
        {
            get { return GetValue(() => VLR_NOTA); }
            set { SetValue(() => VLR_NOTA, value); }
        }

        [Display(Name = "Vlr.Frete")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_FRETE
        {
            get { return GetValue(() => VLR_FRETE); }
            set { SetValue(() => VLR_FRETE, value); }
        }

    }
}
