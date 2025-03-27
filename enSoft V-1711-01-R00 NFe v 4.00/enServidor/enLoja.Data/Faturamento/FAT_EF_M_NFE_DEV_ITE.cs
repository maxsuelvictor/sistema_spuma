using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Cadastros;
using enLoja.Model.Enums;

namespace enLoja.Model.Faturamento
{
    [Table("FAT_TB_M_NFE_DEV_ITE")]
    public class FAT_EF_M_NFE_DEV_ITE : NotifyingObject
    {
        [Key, Column(Order = 1)]
        [Display(Name = "Nº Fiscal")]
        public int ID_FISCAL
        {
            get { return GetValue(() => ID_FISCAL); }
            set { SetValue(() => ID_FISCAL, value); }
        }

        [Key, Column(Order = 2)]
        [Display(Name = "Item")]
        [NotZero(ErrorMessage = "Código do Item não deve ser 0 (zero)!")]
        [ExistItem]
        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }

        [Display(Name = "Qtde")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Quantidade não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Quantidade deve ser informado!")]
        public double QTDE
        {
            get { return GetValue(() => QTDE); }
            set { SetValue(() => QTDE, value); }
        }


    }
}
